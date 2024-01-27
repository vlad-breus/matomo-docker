#!/bin/sh
chown -R www-data:www-data /var/www/html
find /var/www/html/tmp -type f -exec chmod 644 {} \;
find /var/www/html/tmp -type d -exec chmod 755 {} \;
find /var/www/html/tmp/assets/ -type f -exec chmod 644 {} \;
find /var/www/html/tmp/assets/ -type d -exec chmod 755 {} \;
find /var/www/html/tmp/cache/ -type f -exec chmod 644 {} \;
find /var/www/html/tmp/cache/ -type d -exec chmod 755 {} \;
find /var/www/html/tmp/logs/ -type f -exec chmod 644 {} \;
find /var/www/html/tmp/logs/ -type d -exec chmod 755 {} \;
find /var/www/html/tmp/tcpdf/ -type f -exec chmod 644 {} \;
find /var/www/html/tmp/tcpdf/ -type d -exec chmod 755 {} \;
find /var/www/html/tmp/templates_c -type f -exec chmod 644 {} \;
find /var/www/html/tmp/templates_c -type d -exec chmod 755 {} \;

exec "$@"