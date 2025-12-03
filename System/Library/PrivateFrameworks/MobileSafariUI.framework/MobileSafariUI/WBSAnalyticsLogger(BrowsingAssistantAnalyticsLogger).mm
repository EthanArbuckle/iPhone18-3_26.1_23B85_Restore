@interface WBSAnalyticsLogger(BrowsingAssistantAnalyticsLogger)
- (void)_performScribbleReport;
- (void)_performUserConsentReport;
- (void)scheduleBrowsingAssistantReport;
@end

@implementation WBSAnalyticsLogger(BrowsingAssistantAnalyticsLogger)

- (void)_performUserConsentReport
{
  if ([MEMORY[0x277D49E58] isAvailableInCurrentLocale])
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [MEMORY[0x277D49E58] userConsentState];
    v0 = WBSBrowsingAssistantConsentStateName();
    [mEMORY[0x277D499B8] reportUserConsentStateSBA:v0];
  }
}

- (void)_performScribbleReport
{
  v1 = +[Application sharedApplication];
  userDefinedContentBlockerManager = [v1 userDefinedContentBlockerManager];
  [userDefinedContentBlockerManager getNumberOfContentBlockersThatContainActionsWithCompletionHandler:&__block_literal_global_72];
}

- (void)scheduleBrowsingAssistantReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WBSAnalyticsLogger_BrowsingAssistantAnalyticsLogger__scheduleBrowsingAssistantReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end