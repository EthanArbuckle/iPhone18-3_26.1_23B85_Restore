@interface WBSAnalyticsLogger(StandaloneTabBarAnalyticsLogger)
- (void)_performStandaloneTabBarReport;
- (void)_standaloneTabBarAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime;
- (void)schedulePeriodicStandaloneTabBarReport;
@end

@implementation WBSAnalyticsLogger(StandaloneTabBarAnalyticsLogger)

- (void)_standaloneTabBarAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setDouble:@"LastPeriodicStandaloneTabBarReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performStandaloneTabBarReport
{
  v1 = [MEMORY[0x277D499B8] sharedLogger];
  v0 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v1 reportShowStandaloneTabBarPreference:{objc_msgSend(v0, "safari_enableStandaloneTabBar")}];
}

- (void)schedulePeriodicStandaloneTabBarReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__WBSAnalyticsLogger_StandaloneTabBarAnalyticsLogger__schedulePeriodicStandaloneTabBarReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = a1;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end