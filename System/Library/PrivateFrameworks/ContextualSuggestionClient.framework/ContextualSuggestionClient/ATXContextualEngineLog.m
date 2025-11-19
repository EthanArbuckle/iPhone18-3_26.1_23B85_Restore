@interface ATXContextualEngineLog
+ (OS_os_log)oslog;
- (ATXContextualEngineLog)init;
@end

@implementation ATXContextualEngineLog

+ (OS_os_log)oslog
{
  if (qword_280F95150 != -1)
  {
    swift_once();
  }

  v3 = qword_280F95158;

  return v3;
}

- (ATXContextualEngineLog)init
{
  result = sub_2441D908C();
  __break(1u);
  return result;
}

@end