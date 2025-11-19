@interface CSLPRFAppSwitcherDefaultApplications
+ (id)defaultApplicationList;
@end

@implementation CSLPRFAppSwitcherDefaultApplications

+ (id)defaultApplicationList
{
  v6[8] = *MEMORY[0x277D85DE8];
  if (_CSLDeviceIsVictory_onceToken != -1)
  {
    dispatch_once(&_CSLDeviceIsVictory_onceToken, &__block_literal_global_831);
  }

  if (_CSLDeviceIsVictory_isVictory != 1)
  {
    goto LABEL_5;
  }

  v6[0] = @"com.nike.nikeplus-gps.watchkitapp";
  v6[1] = @"com.apple.ActivityMonitorApp";
  v6[2] = @"com.apple.HeartRate";
  v6[3] = @"com.apple.SessionTrackerApp";
  v6[4] = @"com.apple.NanoMusic";
  v6[5] = @"com.apple.MobileSMS";
  v6[6] = @"com.apple.private.NanoTimer";
  v6[7] = @"com.apple.NanoCalendar";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  if (!v2)
  {
LABEL_5:
    v5[0] = @"com.apple.ActivityMonitorApp";
    v5[1] = @"com.apple.HeartRate";
    v5[2] = @"com.apple.SessionTrackerApp";
    v5[3] = @"com.apple.NanoMusic";
    v5[4] = @"com.apple.MobileSMS";
    v5[5] = @"com.apple.private.NanoTimer";
    v5[6] = @"com.apple.NanoCalendar";
    v5[7] = @"com.apple.NanoMaps";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end