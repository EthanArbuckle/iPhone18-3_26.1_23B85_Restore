@interface HDAudioAnalyticsHeadphoneSettingsDeviceResult
+ (id)requiredSettingsWithSaveForEightDays:(BOOL)days;
@end

@implementation HDAudioAnalyticsHeadphoneSettingsDeviceResult

+ (id)requiredSettingsWithSaveForEightDays:(BOOL)days
{
  daysCopy = days;
  v4 = [self alloc];
  if (daysCopy)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v6 = [v4 initWithHAENRequired:1 hasHAENEnabled:0 hasMeasureLevelsEnabled:0 hasIncludeOtherHeadphonesEnabled:0 haeRetention:v5];

  return v6;
}

@end