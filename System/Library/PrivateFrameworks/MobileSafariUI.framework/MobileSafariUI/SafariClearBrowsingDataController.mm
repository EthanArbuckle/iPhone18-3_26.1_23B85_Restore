@interface SafariClearBrowsingDataController
- (SafariClearBrowsingDataController)init;
- (TabGroupProvider)tabGroupProvider;
- (int64_t)_analyticsClearBrowsingIntervalForDate:(id)date;
- (unint64_t)clearHistoryViewController:(id)controller numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers;
- (void)_clearAllScribbleEdits;
- (void)_clearBrowsingDataAddedAfterDate:(id)date profileIdentifiers:(id)identifiers closeAllTabs:(BOOL)tabs;
- (void)clearDataAddedAfterDate:(id)date beforeDate:(id)beforeDate profileIdentifier:(id)identifier clearAllProfiles:(BOOL)profiles closeTabs:(BOOL)tabs;
- (void)showClearHistoryMenuFromViewController:(id)controller;
- (void)showClearHistoryMenuFromViewController:(id)controller profileIdentifier:(id)identifier;
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

- (void)showClearHistoryMenuFromViewController:(id)controller
{
  v4 = MEMORY[0x277D28C20];
  controllerCopy = controller;
  v6 = [v4 alloc];
  v7 = +[Application sharedApplication];
  tabGroupManager = [v7 tabGroupManager];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  v12 = [v6 initWithTabGroupManager:tabGroupManager activeProfileIdentifier:activeProfileIdentifier];

  [v12 setDelegate:self];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

- (void)showClearHistoryMenuFromViewController:(id)controller profileIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    activeProfileIdentifier = identifierCopy;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
  }

  v10 = objc_alloc(MEMORY[0x277D28C20]);
  v11 = +[Application sharedApplication];
  tabGroupManager = [v11 tabGroupManager];
  v13 = [v10 initWithTabGroupManager:tabGroupManager activeProfileIdentifier:activeProfileIdentifier];

  [v13 setDelegate:self];
  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [controllerCopy presentViewController:v14 animated:1 completion:0];
}

- (int64_t)_analyticsClearBrowsingIntervalForDate:(id)date
{
  dateCopy = date;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];

  if (distantPast == dateCopy)
  {
    v7 = 3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] safari_dateOfMidnightNumberOfDaysAgo:1];

    if (v5 == dateCopy)
    {
      v7 = 2;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] safari_dateOfMidnightNumberOfDaysAgo:0];
      v7 = v6 == dateCopy;
    }
  }

  return v7;
}

- (void)_clearAllScribbleEdits
{
  v2 = +[Application sharedApplication];
  userDefinedContentBlockerManagerForPrivateBrowsing = [v2 userDefinedContentBlockerManagerForPrivateBrowsing];
  [userDefinedContentBlockerManagerForPrivateBrowsing deleteAllContentBlockersWithCompletionHandler:&__block_literal_global_56_1];

  v5 = +[Application sharedApplication];
  userDefinedContentBlockerManager = [v5 userDefinedContentBlockerManager];
  [userDefinedContentBlockerManager deleteAllContentBlockersWithCompletionHandler:&__block_literal_global_58_0];
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

- (void)clearDataAddedAfterDate:(id)date beforeDate:(id)beforeDate profileIdentifier:(id)identifier clearAllProfiles:(BOOL)profiles closeTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  profilesCopy = profiles;
  dateCopy = date;
  identifierCopy = identifier;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [dateCopy isEqual:distantPast];

  if (v14)
  {
    [(SafariClearBrowsingDataController *)self _clearAllScribbleEdits];
  }

  if (profilesCopy)
  {
    v15 = +[Application sharedApplication];
    tabGroupManager = [v15 tabGroupManager];
    allProfileIdentifiers = [tabGroupManager allProfileIdentifiers];
    v18 = [allProfileIdentifiers mutableCopy];

    v19 = MEMORY[0x277CE3868];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __117__SafariClearBrowsingDataController_clearDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke;
    v26 = &unk_2781D8D98;
    v27 = v18;
    selfCopy = self;
    v29 = dateCopy;
    v30 = tabsCopy;
    v20 = v18;
    [v19 _fetchAllIdentifiers:&v23];
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
    [(SafariClearBrowsingDataController *)self _clearBrowsingDataAddedAfterDate:dateCopy profileIdentifiers:v21 closeAllTabs:tabsCopy];
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didClearBrowsingDataFromInterval:-[SafariClearBrowsingDataController _analyticsClearBrowsingIntervalForDate:](self withMethod:{"_analyticsClearBrowsingIntervalForDate:", dateCopy), 0}];
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

- (void)_clearBrowsingDataAddedAfterDate:(id)date profileIdentifiers:(id)identifiers closeAllTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  v86 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifiersCopy = identifiers;
  date = [MEMORY[0x277CBEAA8] date];
  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  linkPresentationMetadataProvider = [mEMORY[0x277D28F58] linkPresentationMetadataProvider];
  [linkPresentationMetadataProvider emptyCaches];

  if (tabsCopy)
  {
    v11 = +[Application sharedApplication];
    tabGroupManager = [v11 tabGroupManager];
    [tabGroupManager closeAllTabsInProfilesWithIdentifiers:identifiersCopy];
  }

  v13 = +[Application sharedApplication];
  historyController = [v13 historyController];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = identifiersCopy;
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
        safari_allDataTypes = [MEMORY[0x277CE3868] safari_allDataTypes];
        [v18 removeDataOfTypes:safari_allDataTypes modifiedSince:dateCopy completionHandler:&__block_literal_global_69];

        v20 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:v17 loadIfNeeded:1];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __102__SafariClearBrowsingDataController__clearBrowsingDataAddedAfterDate_profileIdentifiers_closeAllTabs___block_invoke_2;
        aBlock[3] = &unk_2781D4D40;
        v21 = v20;
        v78 = v21;
        v22 = _Block_copy(aBlock);
        v23 = [historyController historyForProfileIdentifier:v17 loadIfNeeded:1];
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        v25 = [dateCopy isEqual:distantPast];

        if (v25)
        {
          [v23 clearHistoryWithCompletionHandler:v22];
          [MEMORY[0x277D49F28] deleteAllUsageHistoryWithProfileIdentifier:v17];
        }

        else
        {
          [v23 clearHistoryVisitsAddedAfterDate:dateCopy beforeDate:date completionHandler:v22];
          [MEMORY[0x277D49F28] deleteUsageHistoryFromDate:dateCopy toDate:date profileIdentifier:v17];
        }

        mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
        [mEMORY[0x277D28F00] clearRecentlyClosedTabsForProfileWithIdentifier:v17];

        mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
        [mEMORY[0x277D4A060] removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:v17];

        mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
        [mEMORY[0x277D49F90] removeIgnoredSiriSuggestedSitesInProfile:v17 afterDate:dateCopy];
      }

      v15 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v15);
  }

  [MEMORY[0x277D49FC8] clearAllParsecFeedbackAndEngagedCompletions];
  WBSContentBlockerStatisticsStoreClearStoresForProfilesWithIdentifiers();
  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  v30 = [dateCopy isEqual:distantPast2];

  v31 = +[RecentWebSearchesController sharedController];
  v32 = v31;
  if (v30)
  {
    [v31 clearRecentSearches];
  }

  else
  {
    [v31 clearRecentSearchesAddedAfterDate:dateCopy];
  }

  if ([obj containsObject:*MEMORY[0x277D49BD8]])
  {
    distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
    v34 = [dateCopy isEqual:distantPast3];

    mEMORY[0x277D75D80] = [MEMORY[0x277D75D80] sharedPolicyDecider];
    v36 = mEMORY[0x277D75D80];
    if (v34)
    {
      [mEMORY[0x277D75D80] clearCache];

      mEMORY[0x277D4A028] = [MEMORY[0x277D4A028] sharedController];
      [mEMORY[0x277D4A028] clearWithCompletionHandler:0];

      v76 = 0;
      if (!SecTrustFlushResponseCache())
      {
        v38 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [SafariClearBrowsingDataController _clearBrowsingDataAddedAfterDate:v38 profileIdentifiers:v76 closeAllTabs:?];
        }
      }

      mEMORY[0x277D28F58]2 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      linkPresentationIconCache = [mEMORY[0x277D28F58]2 linkPresentationIconCache];
      [linkPresentationIconCache emptyCaches];

      mEMORY[0x277CDB7E0] = [MEMORY[0x277CDB7E0] sharedManager];
      [mEMORY[0x277CDB7E0] removeAllTemporaryPermissions];
    }

    else
    {
      [mEMORY[0x277D75D80] clearAuthorizationsAddedBetween:dateCopy and:date];

      mEMORY[0x277D4A028]2 = [MEMORY[0x277D4A028] sharedController];
      [mEMORY[0x277D4A028]2 removeProvidersAddedAfterDate:dateCopy beforeDate:date];

      mEMORY[0x277CDB7E0] = [MEMORY[0x277CDB7E0] sharedManager];
      [mEMORY[0x277CDB7E0] removeTemporaryPermissionsAddedAfterDate:dateCopy completionHandler:0];
    }

    mEMORY[0x277D49EA8] = [MEMORY[0x277D49EA8] sharedManager];
    [mEMORY[0x277D49EA8] clearCertificateBypassesCreatedAfterDate:dateCopy];

    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8] removeDownloadsStartedAfterDate:dateCopy];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v45 = +[Application sharedApplication];
    browserControllers = [v45 browserControllers];

    v47 = [browserControllers countByEnumeratingWithState:&v72 objects:v84 count:16];
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
            objc_enumerationMutation(browserControllers);
          }

          v51 = *(*(&v72 + 1) + 8 * j);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          tabController = [v51 tabController];
          allTabDocuments = [tabController allTabDocuments];

          v54 = [allTabDocuments countByEnumeratingWithState:&v68 objects:v83 count:16];
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
                  objc_enumerationMutation(allTabDocuments);
                }

                [*(*(&v68 + 1) + 8 * k) clearBackForwardListKeepingCurrentItem];
              }

              v55 = [allTabDocuments countByEnumeratingWithState:&v68 objects:v83 count:16];
            }

            while (v55);
          }

          undoManager = [v51 undoManager];
          [undoManager removeAllActions];

          browserWindowController = [v51 browserWindowController];
          [browserWindowController saveCloudTabs];
        }

        v48 = [browserControllers countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v48);
    }

    mEMORY[0x277D49AD0] = [MEMORY[0x277D49AD0] sharedStore];
    [mEMORY[0x277D49AD0] synchronousyClearIdentifiersAddedAfterDate:dateCopy];

    mEMORY[0x277D49A40] = [MEMORY[0x277D49A40] sharedStore];
    [mEMORY[0x277D49A40] synchronouslyRemoveGeneratedPasswordsNewerThanDate:dateCopy];

    mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
    [mEMORY[0x277D49E30] clearEventsDonatedSinceDate:dateCopy];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:*MEMORY[0x277D29280]];
  }
}

- (unint64_t)clearHistoryViewController:(id)controller numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[Application sharedApplication];
  tabGroupManager = [v5 tabGroupManager];
  v7 = [tabGroupManager numberOfTabsToBeClosedForProfilesWithIdentifiers:identifiersCopy];

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