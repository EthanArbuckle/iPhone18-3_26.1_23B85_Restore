@interface SafariClearBrowsingDataController
- (SafariClearBrowsingDataController)init;
- (TabGroupProvider)tabGroupProvider;
- (int64_t)_analyticsClearBrowsingIntervalForDate:(id)a3;
- (unint64_t)clearHistoryViewController:(id)a3 numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a4;
- (void)_clearAllScribbleEdits;
- (void)_clearBrowsingDataAddedAfterDate:(id)a3 profileIdentifiers:(id)a4 closeAllTabs:(BOOL)a5;
- (void)clearDataAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifier:(id)a5 clearAllProfiles:(BOOL)a6 closeTabs:(BOOL)a7;
- (void)showClearHistoryMenuFromViewController:(id)a3;
- (void)showClearHistoryMenuFromViewController:(id)a3 profileIdentifier:(id)a4;
@end

@implementation SafariClearBrowsingDataController

- (SafariClearBrowsingDataController)init
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SafariClearBrowsingDataController;
  v2 = [(SafariClearBrowsingDataController *)&v19 init];
  if (v2)
  {
    v3 = [SafariClearBrowsingDataInterval alloc];
    v4 = _WBSLocalizedString();
    v5 = [(SafariClearBrowsingDataInterval *)v3 initWithDescription:v4 dateAfterWhichDataShouldBeClearedBlock:&__block_literal_global_40];

    v6 = [SafariClearBrowsingDataInterval alloc];
    v7 = _WBSLocalizedString();
    v8 = [(SafariClearBrowsingDataInterval *)v6 initWithDescription:v7 dateAfterWhichDataShouldBeClearedBlock:&__block_literal_global_39];

    v9 = [SafariClearBrowsingDataInterval alloc];
    v10 = _WBSLocalizedString();
    v11 = [(SafariClearBrowsingDataInterval *)v9 initWithDescription:v10 dateAfterWhichDataShouldBeClearedBlock:&__block_literal_global_44_0];

    v12 = [SafariClearBrowsingDataInterval alloc];
    v13 = _WBSLocalizedString();
    v14 = [(SafariClearBrowsingDataInterval *)v12 initWithDescription:v13 dateAfterWhichDataShouldBeClearedBlock:&__block_literal_global_49];

    [(SafariClearBrowsingDataInterval *)v5 setClearBrowsingDataInterval:0];
    [(SafariClearBrowsingDataInterval *)v8 setClearBrowsingDataInterval:1];
    [(SafariClearBrowsingDataInterval *)v11 setClearBrowsingDataInterval:2];
    [(SafariClearBrowsingDataInterval *)v14 setClearBrowsingDataInterval:3];
    v20[0] = v5;
    v20[1] = v8;
    v20[2] = v11;
    v20[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    availableIntervals = v2->_availableIntervals;
    v2->_availableIntervals = v15;

    v17 = v2;
  }

  return v2;
}

- (void)showClearHistoryMenuFromViewController:(id)a3
{
  v4 = MEMORY[0x277D28C20];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = +[Application sharedApplication];
  v8 = [v7 tabGroupManager];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  v10 = [WeakRetained activeProfileIdentifier];
  v12 = [v6 initWithTabGroupManager:v8 activeProfileIdentifier:v10];

  [v12 setDelegate:self];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
  [v5 presentViewController:v11 animated:1 completion:0];
}

- (void)showClearHistoryMenuFromViewController:(id)a3 profileIdentifier:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    v8 = [WeakRetained activeProfileIdentifier];
  }

  v10 = objc_alloc(MEMORY[0x277D28C20]);
  v11 = +[Application sharedApplication];
  v12 = [v11 tabGroupManager];
  v13 = [v10 initWithTabGroupManager:v12 activeProfileIdentifier:v8];

  [v13 setDelegate:self];
  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [v15 presentViewController:v14 animated:1 completion:0];
}

- (int64_t)_analyticsClearBrowsingIntervalForDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantPast];

  if (v4 == v3)
  {
    v7 = 3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] safari_dateOfMidnightNumberOfDaysAgo:1];

    if (v5 == v3)
    {
      v7 = 2;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] safari_dateOfMidnightNumberOfDaysAgo:0];
      v7 = v6 == v3;
    }
  }

  return v7;
}

- (void)_clearAllScribbleEdits
{
  v2 = +[Application sharedApplication];
  v3 = [v2 userDefinedContentBlockerManagerForPrivateBrowsing];
  [v3 deleteAllContentBlockersWithCompletionHandler:&__block_literal_global_56_1];

  v5 = +[Application sharedApplication];
  v4 = [v5 userDefinedContentBlockerManager];
  [v4 deleteAllContentBlockersWithCompletionHandler:&__block_literal_global_58_0];
}

void __59__SafariClearBrowsingDataController__clearAllScribbleEdits__block_invoke_2()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v0 = +[Application sharedApplication];
  v1 = [v0 browserControllers];

  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * v5) tabController];
        v7 = [v6 activeTabDocument];
        v8 = [v7 sfScribbleControllerIfLoaded];
        [v8 reloadData];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)clearDataAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifier:(id)a5 clearAllProfiles:(BOOL)a6 closeTabs:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v13 = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    [(SafariClearBrowsingDataController *)self _clearAllScribbleEdits];
  }

  if (v8)
  {
    v15 = +[Application sharedApplication];
    v16 = [v15 tabGroupManager];
    v17 = [v16 allProfileIdentifiers];
    v18 = [v17 mutableCopy];

    v19 = MEMORY[0x277CE3868];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __117__SafariClearBrowsingDataController_clearDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke;
    v26 = &unk_2781D8D98;
    v27 = v18;
    v28 = self;
    v29 = v11;
    v30 = v7;
    v20 = v18;
    [v19 _fetchAllIdentifiers:&v23];
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] setWithObject:v12];
    [(SafariClearBrowsingDataController *)self _clearBrowsingDataAddedAfterDate:v11 profileIdentifiers:v21 closeAllTabs:v7];
  }

  v22 = [MEMORY[0x277D499B8] sharedLogger];
  [v22 didClearBrowsingDataFromInterval:-[SafariClearBrowsingDataController _analyticsClearBrowsingIntervalForDate:](self withMethod:{"_analyticsClearBrowsingIntervalForDate:", v11), 0}];
}

uint64_t __117__SafariClearBrowsingDataController_clearDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_62];
  [v3 addObjectsFromArray:v4];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);

  return [v5 _clearBrowsingDataAddedAfterDate:v6 profileIdentifiers:v7 closeAllTabs:v8];
}

- (void)_clearBrowsingDataAddedAfterDate:(id)a3 profileIdentifiers:(id)a4 closeAllTabs:(BOOL)a5
{
  v5 = a5;
  v86 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v64 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v10 = [v9 linkPresentationMetadataProvider];
  [v10 emptyCaches];

  if (v5)
  {
    v11 = +[Application sharedApplication];
    v12 = [v11 tabGroupManager];
    [v12 closeAllTabsInProfilesWithIdentifiers:v8];
  }

  v13 = +[Application sharedApplication];
  v67 = [v13 historyController];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v14)
  {
    v15 = v14;
    v66 = *v80;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v80 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v79 + 1) + 8 * i);
        v18 = [MEMORY[0x277CE3868] safari_dataStoreForProfileWithIdentifierIfExists:v17];
        v19 = [MEMORY[0x277CE3868] safari_allDataTypes];
        [v18 removeDataOfTypes:v19 modifiedSince:v7 completionHandler:&__block_literal_global_69];

        v20 = [v67 frequentlyVisitedSitesControllerForProfileIdentifier:v17 loadIfNeeded:1];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __102__SafariClearBrowsingDataController__clearBrowsingDataAddedAfterDate_profileIdentifiers_closeAllTabs___block_invoke_2;
        aBlock[3] = &unk_2781D4D40;
        v21 = v20;
        v78 = v21;
        v22 = _Block_copy(aBlock);
        v23 = [v67 historyForProfileIdentifier:v17 loadIfNeeded:1];
        v24 = [MEMORY[0x277CBEAA8] distantPast];
        v25 = [v7 isEqual:v24];

        if (v25)
        {
          [v23 clearHistoryWithCompletionHandler:v22];
          [MEMORY[0x277D49F28] deleteAllUsageHistoryWithProfileIdentifier:v17];
        }

        else
        {
          [v23 clearHistoryVisitsAddedAfterDate:v7 beforeDate:v64 completionHandler:v22];
          [MEMORY[0x277D49F28] deleteUsageHistoryFromDate:v7 toDate:v64 profileIdentifier:v17];
        }

        v26 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
        [v26 clearRecentlyClosedTabsForProfileWithIdentifier:v17];

        v27 = [MEMORY[0x277D4A060] sharedInstance];
        [v27 removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:v17];

        v28 = [MEMORY[0x277D49F90] sharedController];
        [v28 removeIgnoredSiriSuggestedSitesInProfile:v17 afterDate:v7];
      }

      v15 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v15);
  }

  [MEMORY[0x277D49FC8] clearAllParsecFeedbackAndEngagedCompletions];
  WBSContentBlockerStatisticsStoreClearStoresForProfilesWithIdentifiers();
  v29 = [MEMORY[0x277CBEAA8] distantPast];
  v30 = [v7 isEqual:v29];

  v31 = +[RecentWebSearchesController sharedController];
  v32 = v31;
  if (v30)
  {
    [v31 clearRecentSearches];
  }

  else
  {
    [v31 clearRecentSearchesAddedAfterDate:v7];
  }

  if ([obj containsObject:*MEMORY[0x277D49BD8]])
  {
    v33 = [MEMORY[0x277CBEAA8] distantPast];
    v34 = [v7 isEqual:v33];

    v35 = [MEMORY[0x277D75D80] sharedPolicyDecider];
    v36 = v35;
    if (v34)
    {
      [v35 clearCache];

      v37 = [MEMORY[0x277D4A028] sharedController];
      [v37 clearWithCompletionHandler:0];

      v76 = 0;
      if (!SecTrustFlushResponseCache())
      {
        v38 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [SafariClearBrowsingDataController _clearBrowsingDataAddedAfterDate:v38 profileIdentifiers:v76 closeAllTabs:?];
        }
      }

      v39 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v40 = [v39 linkPresentationIconCache];
      [v40 emptyCaches];

      v41 = [MEMORY[0x277CDB7E0] sharedManager];
      [v41 removeAllTemporaryPermissions];
    }

    else
    {
      [v35 clearAuthorizationsAddedBetween:v7 and:v64];

      v42 = [MEMORY[0x277D4A028] sharedController];
      [v42 removeProvidersAddedAfterDate:v7 beforeDate:v64];

      v41 = [MEMORY[0x277CDB7E0] sharedManager];
      [v41 removeTemporaryPermissionsAddedAfterDate:v7 completionHandler:0];
    }

    v43 = [MEMORY[0x277D49EA8] sharedManager];
    [v43 clearCertificateBypassesCreatedAfterDate:v7];

    v44 = [MEMORY[0x277CDB7A8] sharedManager];
    [v44 removeDownloadsStartedAfterDate:v7];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v45 = +[Application sharedApplication];
    v46 = [v45 browserControllers];

    v47 = [v46 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v73;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v73 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v72 + 1) + 8 * j);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v52 = [v51 tabController];
          v53 = [v52 allTabDocuments];

          v54 = [v53 countByEnumeratingWithState:&v68 objects:v83 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v69;
            do
            {
              for (k = 0; k != v55; ++k)
              {
                if (*v69 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                [*(*(&v68 + 1) + 8 * k) clearBackForwardListKeepingCurrentItem];
              }

              v55 = [v53 countByEnumeratingWithState:&v68 objects:v83 count:16];
            }

            while (v55);
          }

          v58 = [v51 undoManager];
          [v58 removeAllActions];

          v59 = [v51 browserWindowController];
          [v59 saveCloudTabs];
        }

        v48 = [v46 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v48);
    }

    v60 = [MEMORY[0x277D49AD0] sharedStore];
    [v60 synchronousyClearIdentifiersAddedAfterDate:v7];

    v61 = [MEMORY[0x277D49A40] sharedStore];
    [v61 synchronouslyRemoveGeneratedPasswordsNewerThanDate:v7];

    v62 = [MEMORY[0x277D49E30] sharedManager];
    [v62 clearEventsDonatedSinceDate:v7];

    v63 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v63 removeObjectForKey:*MEMORY[0x277D29280]];
  }
}

- (unint64_t)clearHistoryViewController:(id)a3 numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a4
{
  v4 = a4;
  v5 = +[Application sharedApplication];
  v6 = [v5 tabGroupManager];
  v7 = [v6 numberOfTabsToBeClosedForProfilesWithIdentifiers:v4];

  return v7;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

- (void)_clearBrowsingDataAddedAfterDate:(void *)a1 profileIdentifiers:(void *)a2 closeAllTabs:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Clearing OCSP cache failed with error: %{public}@", &v5, 0xCu);
}

@end