@interface HKHRAFibBurdenBridgeSettings
+ (id)hiddenSettings;
@end

@implementation HKHRAFibBurdenBridgeSettings

+ (id)hiddenSettings
{
  v2 = [[HKHRAFibBurdenBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end