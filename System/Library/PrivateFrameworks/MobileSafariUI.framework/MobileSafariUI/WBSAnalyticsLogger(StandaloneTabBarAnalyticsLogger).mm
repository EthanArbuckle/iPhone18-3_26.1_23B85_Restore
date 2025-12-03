@interface WBSAnalyticsLogger(StandaloneTabBarAnalyticsLogger)
- (void)_performStandaloneTabBarReport;
- (void)_standaloneTabBarAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime;
- (void)schedulePeriodicStandaloneTabBarReport;
@end

@implementation WBSAnalyticsLogger(StandaloneTabBarAnalyticsLogger)

- (void)_standaloneTabBarAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"LastPeriodicStandaloneTabBarReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performStandaloneTabBarReport
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [mEMORY[0x277D499B8] reportShowStandaloneTabBarPreference:{objc_msgSend(safari_browserDefaults, "safari_enableStandaloneTabBar")}];
}

- (void)schedulePeriodicStandaloneTabBarReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__WBSAnalyticsLogger_StandaloneTabBarAnalyticsLogger__schedulePeriodicStandaloneTabBarReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end