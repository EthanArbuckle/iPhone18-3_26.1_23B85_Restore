@interface ATXAmbientLog
+ (OS_os_log)log;
- (ATXAmbientLog)init;
@end

@implementation ATXAmbientLog

+ (OS_os_log)log
{
  if (qword_280F95160 != -1)
  {
    swift_once();
  }

  v3 = qword_280F95168;

  return v3;
}

- (ATXAmbientLog)init
{
  result = sub_2441D908C();
  __break(1u);
  return result;
}

@end