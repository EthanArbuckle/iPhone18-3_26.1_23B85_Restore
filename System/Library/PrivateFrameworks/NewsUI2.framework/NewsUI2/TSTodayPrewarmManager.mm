@interface TSTodayPrewarmManager
+ (void)prewarmTodayWithContext:(id)context;
- (TSTodayPrewarmManager)init;
@end

@implementation TSTodayPrewarmManager

+ (void)prewarmTodayWithContext:(id)context
{
  contextCopy = context;
  _s7NewsUI219TodayPrewarmManagerC07prewarmC07contextySo14FCCloudContextC_tFZ_0(contextCopy);
}

- (TSTodayPrewarmManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TSTodayPrewarmManager *)&v3 init];
}

@end