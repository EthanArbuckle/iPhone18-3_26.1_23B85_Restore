@interface _DPLog
+ (id)daemon;
+ (id)framework;
+ (id)service;
+ (id)tool;
@end

@implementation _DPLog

+ (id)daemon
{
  if (daemon_onceToken != -1)
  {
    +[_DPLog daemon];
  }

  v3 = daemon__daemon;

  return v3;
}

+ (id)framework
{
  if (framework_onceToken != -1)
  {
    +[_DPLog framework];
  }

  v3 = framework__framework;

  return v3;
}

+ (id)tool
{
  if (tool_onceToken[0] != -1)
  {
    +[_DPLog tool];
  }

  v3 = tool__tool;

  return v3;
}

+ (id)service
{
  if (service_onceToken != -1)
  {
    +[_DPLog service];
  }

  v3 = service__service;

  return v3;
}

@end