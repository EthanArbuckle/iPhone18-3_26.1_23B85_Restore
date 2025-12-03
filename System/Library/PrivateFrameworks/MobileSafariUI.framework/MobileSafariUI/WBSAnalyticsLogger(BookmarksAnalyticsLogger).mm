@interface WBSAnalyticsLogger(BookmarksAnalyticsLogger)
- (void)_performFolderOnTopModeReport;
- (void)_updateBookmarksAnalyticsLastReportTime;
- (void)scheduleBookmarksAnalyticsReport;
@end

@implementation WBSAnalyticsLogger(BookmarksAnalyticsLogger)

- (void)_updateBookmarksAnalyticsLastReportTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"LastPeriodicBookmarksAnalyticsReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performFolderOnTopModeReport
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v1 = [safari_browserDefaults integerForKey:*MEMORY[0x277D28F88]] == 1;

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportFolderOnTopModePreference:v1];
}

- (void)scheduleBookmarksAnalyticsReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WBSAnalyticsLogger_BookmarksAnalyticsLogger__scheduleBookmarksAnalyticsReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end