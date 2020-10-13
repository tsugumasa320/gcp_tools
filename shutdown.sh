#!/bin/bash
# Reference site
# https://qiita.com/Gri_Gra/items/8789a921ad9e2ed8a171

CPU_LOAD=`cat /proc/loadavg | cut -d ' ' -f 1`
LOAD_TH=0.10

LIMIT=`echo "$CPU_LOAD <= $LOAD_TH" | bc`

if [ $LIMIT -eq 1 ] ; then
    echo "instance not working"
    sudo shutdown -h now
else
    echo "instance working"
fi