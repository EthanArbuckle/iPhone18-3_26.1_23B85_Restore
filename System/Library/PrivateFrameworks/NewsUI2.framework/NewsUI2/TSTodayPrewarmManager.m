@interface TSTodayPrewarmManager
+ (void)prewarmTodayWithContext:(id)a3;
- (TSTodayPrewarmManager)init;
@end

@implementation TSTodayPrewarmManager

+ (void)prewarmTodayWithContext:(id)a3
{
  v3 = a3;
  _s7NewsUI219TodayPrewarmManagerC07prewarmC07contextySo14FCCloudContextC_tFZ_0(v3);
}

- (TSTodayPrewarmManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TSTodayPrewarmManager *)&v3 init];
}

@end