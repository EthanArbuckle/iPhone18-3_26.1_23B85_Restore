@interface HKHRCardioFitnessBridgeSettings
+ (id)hiddenSettings;
@end

@implementation HKHRCardioFitnessBridgeSettings

+ (id)hiddenSettings
{
  v2 = [[HKHRCardioFitnessBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end