#!/bin/bash

rsync -rvz -e 'ssh -p 2023' --progress /home/thabeos/python sysculi@192.168.56.127:/home/sysculi

# Sơ lược về lệnh trên:
# Lệnh rsync -rvz -e 'ssh -p 2023' --progress /home/thabeos/python sysculi@192.168.56.127:/home/sysculi 
# sẽ sao chép nội dung của thư mục /home/thabeos/python trên máy cục bộ của bạn sang thư mục /home/sysculi trên máy từ xa sysculi@192.168.56.127. 

# Trong đó: 
#   rsync: Tên của lệnh rsync.
#   -r: Tùy chọn đệ quy.
#   -v: Tùy chọn nhiều thông tin.
#   -z: Tùy chọn nén
#   -e: Tùy chọn bao bọc ssh.
#   'ssh -p 2023': Lệnh ssh để sử dụng để kết nối với máy từ xa.
#   --progress: Tùy chọn thanh tiến trình.
#   /home/thabeos/python: Thư mục nguồn trên máy cục bộ.
#   sysculi@192.168.56.127: Máy từ xa để kết nối.
#   /home/sysculi: Thư mục đích trên máy từ xa.

# Lưu ý:
#   Thư mục: /home/thabeos/python này bạn có thể thay thành thư mục mà bạn muốn sao chép qua server khác.
#   sysculi@192.168.56.127:/home/sysculi bạn nên thay thành user@ip-server:/path của bạn.