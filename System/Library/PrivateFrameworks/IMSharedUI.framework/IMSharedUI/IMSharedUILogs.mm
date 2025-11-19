@interface IMSharedUILogs
+ (OS_os_log)audio;
+ (OS_os_log)fsm;
+ (OS_os_log)transcript;
+ (OS_os_log)utilities;
@end

@implementation IMSharedUILogs

+ (OS_os_log)transcript
{
  if (qword_27F6117B8 != -1)
  {
    sub_25480585C();
  }

  v3 = qword_27F6117B0;

  return v3;
}

+ (OS_os_log)fsm
{
  if (qword_27F6117C8 != -1)
  {
    sub_254805870();
  }

  v3 = qword_27F6117C0;

  return v3;
}

+ (OS_os_log)audio
{
  if (qword_27F6117D8 != -1)
  {
    sub_254805884();
  }

  v3 = qword_27F6117D0;

  return v3;
}

+ (OS_os_log)utilities
{
  if (qword_27F6117E8 != -1)
  {
    sub_254805898();
  }

  v3 = qword_27F6117E0;

  return v3;
}

@end