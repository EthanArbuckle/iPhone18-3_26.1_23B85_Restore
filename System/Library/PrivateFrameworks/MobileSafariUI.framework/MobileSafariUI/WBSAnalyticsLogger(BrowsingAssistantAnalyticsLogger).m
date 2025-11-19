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
    v1 = [MEMORY[0x277D499B8] sharedLogger];
    [MEMORY[0x277D49E58] userConsentState];
    v0 = WBSBrowsingAssistantConsentStateName();
    [v1 reportUserConsentStateSBA:v0];
  }
}

- (void)_performScribbleReport
{
  v1 = +[Application sharedApplication];
  v0 = [v1 userDefinedContentBlockerManager];
  [v0 getNumberOfContentBlockersThatContainActionsWithCompletionHandler:&__block_literal_global_72];
}

- (void)scheduleBrowsingAssistantReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WBSAnalyticsLogger_BrowsingAssistantAnalyticsLogger__scheduleBrowsingAssistantReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = a1;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end