@interface WBSAnalyticsLogger(PrivateBrowsingAnalyticsLogger)
- (void)_performAdvancedPrivacyProtectionPreferenceReport;
- (void)_performPrivateBrowsingReport;
- (void)schedulePeriodicPrivateBrowsingReport;
@end

@implementation WBSAnalyticsLogger(PrivateBrowsingAnalyticsLogger)

- (void)_performPrivateBrowsingReport
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v0 = +[Application sharedApplication];
  browserControllers = [v0 browserControllers];

  v2 = [browserControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(browserControllers);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isPrivateBrowsingEnabled])
        {
          scene = [v7 scene];

          if (scene)
          {

            v9 = 0;
            goto LABEL_16;
          }

          v4 = 1;
        }
      }

      v3 = [browserControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    if (v4)
    {
      v9 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v9 = 2;
LABEL_16:
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] _sf_reportPrivateWindowStatus:v9];
}

- (void)_performAdvancedPrivacyProtectionPreferenceReport
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportAdvancedPrivacyProtectionPreference];
}

- (void)schedulePeriodicPrivateBrowsingReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__WBSAnalyticsLogger_PrivateBrowsingAnalyticsLogger__schedulePeriodicPrivateBrowsingReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end