#! /bin/bash
gcc -o client client.c `pkg-config --libs --cflags gtk+-2.0`
gcc -o mainserver mainserver.c -lpthread
xterm -hold -e "./mainserver 5 50000" &
xterm -hold -e "./client localhost 50000 localhost 50001 alice" &
xterm -hold -e "./client localhost 50000 localhost 50002 bob" &
xterm -hold -e "./client localhost 50000 localhost 50003 john" &
xterm -hold -e "./client localhost 50000 localhost 50004 jack" &
xterm -hold -e "./client localhost 50000 localhost 50005 bill" &
