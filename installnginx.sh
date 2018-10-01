yum install epel-release -y
yum install nginx -y
sed -i "/        <title>Test Page for the Nginx HTTP Server on EPEL<\/title>/c\<title>Test Page for the Nginx HTTP Server on EPEL - ${HOSTNAME}<\/title>" /usr/share/nginx/html/index.html
sed -i "/        <h1>Welcome to <strong>nginx<\/strong> on EPEL\!<\/h1>/c\        <h1>Welcome to <strong>nginx<\/strong> on EPEL\! ${HOSTNAME}<\/h1>" /usr/share/nginx/html/index.html
chkconfig nginx on
/etc/init.d/nginx start