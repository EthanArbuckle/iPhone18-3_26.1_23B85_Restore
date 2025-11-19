@interface HKHRCardioFitnessWatchSettings
+ (id)hiddenSettings;
@end

@implementation HKHRCardioFitnessWatchSettings

+ (id)hiddenSettings
{
  v2 = [HKHRCardioFitnessWatchSettings alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessUnavailableDetailText];
  v4 = [(HKHRCardioFitnessWatchSettings *)v2 initWithSettingVisible:0 settingEnabled:0 statusText:v3 footer:0];

  return v4;
}

@end