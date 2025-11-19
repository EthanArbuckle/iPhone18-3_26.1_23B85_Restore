@interface ENLog
+ (OS_os_log)groupContext;
+ (OS_os_log)groupContextCache;
+ (OS_os_log)groupContextDataSource;
+ (OS_os_log)groupID;
+ (OS_os_log)utilities;
@end

@implementation ENLog

+ (OS_os_log)groupContext
{
  if (qword_27EF31C18 != -1)
  {
    sub_24A0596B0();
  }

  v3 = qword_27EF31C10;

  return v3;
}

+ (OS_os_log)groupContextCache
{
  if (qword_27EF31C28 != -1)
  {
    sub_24A0596C4();
  }

  v3 = qword_27EF31C20;

  return v3;
}

+ (OS_os_log)groupContextDataSource
{
  if (qword_27EF31C38 != -1)
  {
    sub_24A0596D8();
  }

  v3 = qword_27EF31C30;

  return v3;
}

+ (OS_os_log)utilities
{
  if (qword_27EF31C48 != -1)
  {
    sub_24A0596EC();
  }

  v3 = qword_27EF31C40;

  return v3;
}

+ (OS_os_log)groupID
{
  if (qword_27EF31C58 != -1)
  {
    sub_24A059700();
  }

  v3 = qword_27EF31C50;

  return v3;
}

@end