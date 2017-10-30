#!/bin/bash
# 사용법 : lshead.bash
$check =0
while [ check != 5 ] 
do

echo "--------------------------------------------"
echo "      나의 메뉴에 오신 것을 환영합니다.     "
echo "--------------------------------------------"

echo "1. 디렉터리 리스트"
echo "2. 파일 삭제 " 
echo "3. 메일 보내기 " 
echo "4. 시스템 정보"
echo "5. 종료 " 
echo "--------------------------------------------"
echo "5. 종료 " 
echo "--------------------------------------------"
echo "원하는 번호 "

read num

case $num in
        1) echo "-----------------------------------"                
		echo "    디렉터리[....] 내의 파ㅣㅇㄹ 리스트 " 
                echo "----------------------------------"
                read dir
                ls $dir
                ;;      

        2)echo " 삭제할 파일명 : "
                read filename
                ;;
                rm $filename
        3)echo " 보내는 사람 이메일 :"
                read email
                echo " 제목"
                read title
                echo " 내용"
                read contents
                mail -s "$title" "$email" < $contents
                ;;
        4)      date
                who
                uptime
                ;;
        5)break
        *) echo "error"
                break
                ;;      
esac

$check = $num

done

