@interface WBSAnalyticsLogger(TabGroupsAnalyticsLogger)
- (void)_performSyncSuccessesCountReport;
- (void)_performTabGroupsReport;
- (void)_performTabsForNonTabGroupUserReport;
- (void)_tabGroupsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime;
- (void)schedulePeriodicTabGroupsReport;
@end

@implementation WBSAnalyticsLogger(TabGroupsAnalyticsLogger)

- (void)_tabGroupsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"LastPeriodicTabGroupsReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performTabGroupsReport
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = +[Application sharedApplication];
  tabGroupManager = [v0 tabGroupManager];
  allNamedTabGroupsUnsorted = [tabGroupManager allNamedTabGroupsUnsorted];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  v4 = [allNamedTabGroupsUnsorted count];
  if (v4)
  {
    v5 = v4;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = allNamedTabGroupsUnsorted;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = mEMORY[0x277D499B8];
      v22 = allNamedTabGroupsUnsorted;
      v9 = 0;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          tabs = [v13 tabs];
          v15 = [tabs count];

          tabs2 = [v13 tabs];
          if ([tabs2 count] > v9)
          {
            tabs3 = [v13 tabs];
            v9 = [tabs3 count];
          }

          v10 += v15;
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
      v18 = v10;
      mEMORY[0x277D499B8] = v21;
      allNamedTabGroupsUnsorted = v22;
    }

    else
    {
      v9 = 0;
      v18 = 0.0;
    }

    [mEMORY[0x277D499B8] reportAverageNumberOfTabsPerTabGroup:llround(v18 / v5) andMaximum:v9];
    [mEMORY[0x277D499B8] reportNumberOfTabGroups:v5];
  }

  else
  {
    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]2 reportAverageNumberOfTabsPerTabGroup:0 andMaximum:0];

    mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]3 reportNumberOfTabGroups:0];
  }
}

- (void)_performTabsForNonTabGroupUserReport
{
  v40 = *MEMORY[0x277D85DE8];
  v0 = +[Application sharedApplication];
  tabGroupManager = [v0 tabGroupManager];
  allNamedTabGroupsUnsorted = [tabGroupManager allNamedTabGroupsUnsorted];

  if (![allNamedTabGroupsUnsorted count])
  {
    v3 = +[Application sharedApplication];
    browserControllers = [v3 browserControllers];

    v5 = [browserControllers count];
    date = [MEMORY[0x277CBEAA8] date];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = browserControllers;
    v29 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v29)
    {
      v25 = v5;
      v26 = allNamedTabGroupsUnsorted;
      v8 = 0;
      obj = v7;
      v28 = *v35;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(obj);
          }

          tabController = [*(*(&v34 + 1) + 8 * i) tabController];
          currentTabs = [tabController currentTabs];

          v13 = [currentTabs count];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = currentTabs;
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = MEMORY[0x277CBEAA8];
                [*(*(&v30 + 1) + 8 * j) lastActivationTime];
                v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
                [date timeIntervalSinceDate:v20];
                v9 = v9 + v21;
              }

              v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v16);
          }

          v8 += v13;
        }

        v7 = obj;
        v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v29);

      if (v8)
      {
        v22 = v8;
        v23 = llround(v9 / 60.0 / 60.0 / 24.0 / v8);
      }

      else
      {
        v23 = 0;
        v22 = 0.0;
      }

      v5 = v25;
      allNamedTabGroupsUnsorted = v26;
      if (!v25)
      {
        goto LABEL_23;
      }
    }

    else
    {

      v23 = 0;
      v22 = 0.0;
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    v22 = v22 / v5;
    v5 = llround(v22);
LABEL_23:
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportTabsForNonTabGroupUser:v23 andAverageNumber:v5];
  }
}

- (void)_performSyncSuccessesCountReport
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v1 = *MEMORY[0x277D4A338];
  v2 = [safari_browserDefaults safari_numberForKey:*MEMORY[0x277D4A338]];
  v5 = [v2 copy];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:0 forKey:v1];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportTabGroupSyncSuccessesWithCount:v5];
  }
}

- (void)schedulePeriodicTabGroupsReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WBSAnalyticsLogger_TabGroupsAnalyticsLogger__schedulePeriodicTabGroupsReport__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x277D85CD0], block);
}

@end