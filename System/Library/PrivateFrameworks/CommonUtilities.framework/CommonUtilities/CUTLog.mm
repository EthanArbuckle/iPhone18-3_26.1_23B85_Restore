@interface CUTLog
+ (OS_os_log)fileCopier;
+ (OS_os_log)network;
+ (OS_os_log)power;
+ (OS_os_log)utilities;
+ (OS_os_log)weakLink;
+ (OS_os_log)xpc;
@end

@implementation CUTLog

+ (OS_os_log)network
{
  if (qword_1ED4AE440 != -1)
  {
    sub_1B23312AC();
  }

  v3 = qword_1ED4AE448;

  return v3;
}

+ (OS_os_log)fileCopier
{
  if (qword_1EB7AAE68 != -1)
  {
    sub_1B2331284();
  }

  v3 = qword_1EB7AAE60;

  return v3;
}

+ (OS_os_log)power
{
  if (qword_1EB7AADE8 != -1)
  {
    sub_1B2331298();
  }

  v3 = qword_1EB7AADF0;

  return v3;
}

+ (OS_os_log)weakLink
{
  if (qword_1EB7AADD8 != -1)
  {
    sub_1B23312C0();
  }

  v3 = qword_1EB7AADE0;

  return v3;
}

+ (OS_os_log)xpc
{
  if (qword_1EB7AAE78 != -1)
  {
    sub_1B23312D4();
  }

  v3 = qword_1EB7AAE70;

  return v3;
}

+ (OS_os_log)utilities
{
  if (qword_1EB7AAE88 != -1)
  {
    sub_1B23312E8();
  }

  v3 = qword_1EB7AAE80;

  return v3;
}

@end