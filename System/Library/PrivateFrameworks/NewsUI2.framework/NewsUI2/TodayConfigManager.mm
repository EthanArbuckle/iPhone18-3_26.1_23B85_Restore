@interface TodayConfigManager
+ (void)prewarmTodayConfigWithContext:(id)context;
@end

@implementation TodayConfigManager

+ (void)prewarmTodayConfigWithContext:(id)context
{
  contextCopy = context;
  _s7NewsUI218TodayConfigManagerC07prewarmcD07contextySo14FCCloudContextC_tFZ_0(contextCopy);
}

@end