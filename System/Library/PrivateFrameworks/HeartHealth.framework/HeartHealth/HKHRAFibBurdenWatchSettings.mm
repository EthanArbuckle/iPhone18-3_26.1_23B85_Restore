@interface HKHRAFibBurdenWatchSettings
+ (id)hiddenSettings;
@end

@implementation HKHRAFibBurdenWatchSettings

+ (id)hiddenSettings
{
  v2 = [HKHRAFibBurdenWatchSettings alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
  v4 = [(HKHRAFibBurdenWatchSettings *)v2 initWithSettingVisible:0 settingEnabled:0 statusText:v3 footer:0];

  return v4;
}

@end