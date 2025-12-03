@interface WBSAnalyticsLogger(SettingsAnalyticsLogger)
- (void)_performNewTabBehaviorReport;
- (void)_settingsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime;
- (void)schedulePeriodicSettingsReport;
@end

@implementation WBSAnalyticsLogger(SettingsAnalyticsLogger)

- (void)_settingsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"LastPeriodicSettingsReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performNewTabBehaviorReport
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v1 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29088]];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  v4 = mEMORY[0x277D499B8];
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  [mEMORY[0x277D499B8] reportNewTabBehavior:v3];
}

- (void)schedulePeriodicSettingsReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WBSAnalyticsLogger_SettingsAnalyticsLogger__schedulePeriodicSettingsReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end