HOST=abcotd-tok-deployment-02.apps.na1.openshift.opentlc.com

while true
do 
    curl -s http://${HOST}/item.php | grep "data/images" | awk '{print $5}'
    sleep 1
done
