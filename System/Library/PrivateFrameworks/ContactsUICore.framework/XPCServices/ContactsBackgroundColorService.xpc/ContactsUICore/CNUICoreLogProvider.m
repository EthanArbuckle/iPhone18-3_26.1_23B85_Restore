@interface CNUICoreLogProvider
+ (OS_os_log)actions_os_log;
+ (OS_os_log)color_os_log;
+ (OS_os_log)contact_card_os_log;
+ (OS_os_log)corerecents_os_log;
+ (OS_os_log)likenesses_os_log;
+ (OS_os_log)memoji_os_log;
+ (OS_os_log)photos_os_log;
+ (OS_os_log)posters_os_log;
+ (OS_os_log)static_identity_os_log;
@end

@implementation CNUICoreLogProvider

+ (OS_os_log)actions_os_log
{
  if (qword_10000CE08 != -1)
  {
    sub_1000037EC();
  }

  v3 = qword_10000CE10;

  return v3;
}

+ (OS_os_log)likenesses_os_log
{
  if (qword_10000CE18 != -1)
  {
    sub_100003800();
  }

  v3 = qword_10000CE20;

  return v3;
}

+ (OS_os_log)corerecents_os_log
{
  if (qword_10000CE28 != -1)
  {
    sub_100003814();
  }

  v3 = qword_10000CE30;

  return v3;
}

+ (OS_os_log)static_identity_os_log
{
  if (qword_10000CE38 != -1)
  {
    sub_100003828();
  }

  v3 = qword_10000CE40;

  return v3;
}

+ (OS_os_log)color_os_log
{
  if (qword_10000CE48 != -1)
  {
    sub_10000383C();
  }

  v3 = qword_10000CE50;

  return v3;
}

+ (OS_os_log)contact_card_os_log
{
  if (qword_10000CE58 != -1)
  {
    sub_100003850();
  }

  v3 = qword_10000CE60;

  return v3;
}

+ (OS_os_log)posters_os_log
{
  if (qword_10000CE68 != -1)
  {
    sub_100003864();
  }

  v3 = qword_10000CE70;

  return v3;
}

+ (OS_os_log)photos_os_log
{
  if (qword_10000CE78 != -1)
  {
    sub_100003878();
  }

  v3 = qword_10000CE80;

  return v3;
}

+ (OS_os_log)memoji_os_log
{
  if (qword_10000CE88 != -1)
  {
    sub_10000388C();
  }

  v3 = qword_10000CE90;

  return v3;
}

@end