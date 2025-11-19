@interface _DPCoreAnalyticsCollector
+ (id)sharedInstance;
@end

@implementation _DPCoreAnalyticsCollector

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_DPCoreAnalyticsCollector sharedInstance];
  }

  v3 = sharedInstance_reporter;

  return v3;
}

@end