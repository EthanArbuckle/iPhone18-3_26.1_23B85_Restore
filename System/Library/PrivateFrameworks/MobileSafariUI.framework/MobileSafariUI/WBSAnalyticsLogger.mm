@interface WBSAnalyticsLogger
@end

@implementation WBSAnalyticsLogger

uint64_t __79__WBSAnalyticsLogger_TabGroupsAnalyticsLogger__schedulePeriodicTabGroupsReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performTabGroupsReport];
  [*(a1 + 32) _performTabsForNonTabGroupUserReport];
  [*(a1 + 32) _performSyncSuccessesCountReport];
  [*(a1 + 32) _tabGroupsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime];
  v2 = *(a1 + 32);

  return [v2 schedulePeriodicTabGroupsReport];
}

uint64_t __80__WBSAnalyticsLogger_BookmarksAnalyticsLogger__scheduleBookmarksAnalyticsReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performFolderOnTopModeReport];
  [*(a1 + 32) _updateBookmarksAnalyticsLastReportTime];
  v2 = *(a1 + 32);

  return [v2 scheduleBookmarksAnalyticsReport];
}

uint64_t __77__WBSAnalyticsLogger_SettingsAnalyticsLogger__schedulePeriodicSettingsReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performNewTabBehaviorReport];
  [*(a1 + 32) _settingsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime];
  v2 = *(a1 + 32);

  return [v2 schedulePeriodicSettingsReport];
}

uint64_t __91__WBSAnalyticsLogger_PrivateBrowsingAnalyticsLogger__schedulePeriodicPrivateBrowsingReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performPrivateBrowsingReport];
  [*(a1 + 32) _performAdvancedPrivacyProtectionPreferenceReport];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setDouble:@"LastPeriodicPrivateBrowsingReportTime" forKey:CFAbsoluteTimeGetCurrent()];

  v3 = *(a1 + 32);

  return [v3 schedulePeriodicPrivateBrowsingReport];
}

void __78__WBSAnalyticsLogger_BrowsingAssistantAnalyticsLogger___performScribbleReport__block_invoke(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x277D499B8] sharedLogger];
  [v3 reportNumberOfWebsitesWithScribbleActive:a2];
}

uint64_t __87__WBSAnalyticsLogger_BrowsingAssistantAnalyticsLogger__scheduleBrowsingAssistantReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performUserConsentReport];
  [*(a1 + 32) _performScribbleReport];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setDouble:@"LastPeriodicBrowsingAssistantReportTime" forKey:CFAbsoluteTimeGetCurrent()];

  v3 = *(a1 + 32);

  return [v3 scheduleBrowsingAssistantReport];
}

uint64_t __93__WBSAnalyticsLogger_StandaloneTabBarAnalyticsLogger__schedulePeriodicStandaloneTabBarReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performStandaloneTabBarReport];
  [*(a1 + 32) _standaloneTabBarAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime];
  v2 = *(a1 + 32);

  return [v2 schedulePeriodicStandaloneTabBarReport];
}

@end