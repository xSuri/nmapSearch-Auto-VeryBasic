#!/bin/bash

echo "Starting... \n"

echo "Ip? \n"
read IPs

echo "Ip ""$IPs"" is correct? (y/n)"
read correct

yes="y"
no="n"

if [ "$correct" = "$yes" ];
    then

    touch log.txt
    chmod 755 log.txt

    sudo nmap -sV -sC -sS -vv "$IPs" >> log.txt
    


fi

if [ "$correct" = "$no" ];
    then

    echo "Program stopped... (Start again and write correct IP)"

fi

echo "Program stopped... Your result in file log.txt"
