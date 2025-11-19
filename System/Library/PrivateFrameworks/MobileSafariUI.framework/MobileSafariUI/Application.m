@interface Application
+ (BOOL)prepareTestControllerWithType:(id)a3 suiteURL:(id)a4 bundleNames:(id)a5 outputURL:(id)a6;
+ (CKContextClient)contextClient;
+ (id)browserControllerUIDelegateProvider;
+ (unint64_t)systemMemorySize;
+ (void)commandLineTestOption:(int)a3 arg:(const char *)a4;
+ (void)initialize;
+ (void)postTestNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5;
+ (void)setBrowserControllerUIDelegateProvider:(id)a3;
- (AutomationController)automationController;
- (BOOL)_hasLockablePrivateTabsOpenInAnyWindow;
- (BOOL)_hasPrivateBrowserControllerActiveInAnyWindow;
- (BOOL)_mediaIsPlayingInPrivateBrowsing;
- (BOOL)_resetHistoryWithCompressedDatabaseAtURL:(id)a3 error:(id *)a4;
- (BOOL)_startResizeTestWithName:(id)a3;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)a3;
- (BOOL)hasAnyInstalledExtensionsInAnyProfile;
- (BOOL)hasPointerDevice;
- (BOOL)isNoteTakingControllerSupportedInPrivateBrowsing:(id)a3;
- (BOOL)isRunningPPT;
- (BOOL)overrideBrowserStateForTestNamed:(id)a3 browserController:(id)a4;
- (BOOL)prefersSingleWindow;
- (BOOL)prepareBookmarksTest;
- (BOOL)privateBrowsingRequiresAuthentication;
- (BOOL)runMemoryOrIOTestWithType:(unint64_t)a3;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)shouldRestoreStateForPPT;
- (BOOL)startCanvasTest:(id)a3;
- (BOOL)startHistoryLoadTest;
- (BOOL)startHistoryTest;
- (BOOL)startSidebarTest;
- (BOOL)startTabBarTest;
- (BOOL)usesDefaultBrowsingModeInAllWindows;
- (BOOL)usesLoweredSearchBar;
- (BOOL)usesPrivateBrowsingModeInAnyWindow;
- (BrowserController)primaryBrowserController;
- (ForYouRecommendationMediator)existingForYouRecommendationMediator;
- (HighlightManager)highlightManager;
- (HistoryController)historyController;
- (NSArray)allTabEntities;
- (NSArray)allWindowEntities;
- (NSSet)historiesForProfiles;
- (NSString)lastActiveProfileIdentifier;
- (ReadingListLeadImageCache)readingListLeadImageCache;
- (SFWebExtensionsController)defaultWebExtensionsController;
- (SystemNoteTakingController)systemNoteTakingController;
- (UIScene)currentScene;
- (WBProfile)focusProfile;
- (WBSAllowedLegacyTLSHostManager)legacyTLSHostManager;
- (WBSForYouRecentParsecResultsManager)forYouRecentParsecResultsManager;
- (WBSPrivateBrowsingUserDefinedContentBlockerManager)userDefinedContentBlockerManagerForPrivateBrowsing;
- (WBSSafariScribbleFeedbackSyncEngine)scribbleFeedbackSyncEngine;
- (WBSSafariWebCompatibilityFeedbackSyncEngine)webCompatibilityFeedbackSyncEngine;
- (WBSScribbleQuirksManager)scribbleQuirksManager;
- (WBSUnifiedBarAnalyticsProviding)unifiedBarAnalyticsProvider;
- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager;
- (WBTabGroupManager)ephemeralTabGroupManager;
- (WBTabGroupManager)tabGroupManager;
- (WebBookmarkCollection)bookmarkCollection;
- (id)_allTabsWithExtensionContentLoadedForBrowserController:(id)a3 extensionHost:(id)a4 composedIdentifier:(id)a5;
- (id)_browserControllerForApplicationTesting;
- (id)_browserControllerForTabWithUUID:(id)a3;
- (id)_extendLaunchTest;
- (id)_generateMemoryFootprintResults:(id)a3;
- (id)_numberOption:(id)a3;
- (id)_recentsStoreForDefaultProfile;
- (id)_scrollViewForTestNamed:(id)a3;
- (id)_sortedBrowserControllers;
- (id)_tabCompletionProvider;
- (id)_userContentControllerForProfileServerID:(id)a3;
- (id)allContentBlockerManagers;
- (id)allWebExtensionsControllers;
- (id)contentBlockerManagerForProfileServerID:(id)a3;
- (id)createBookmarkWithTitle:(id)a3 url:(id)a4;
- (id)createNewWindowWithRequestIdentifier:(id)a3 isPrivate:(BOOL)a4;
- (id)createRecommendationMediatorOrReuseExistingOneIfPossible;
- (id)processPoolForProfileIdentifier:(id)a3;
- (id)recentsStoreForProfileWithIdentifier:(id)a3;
- (id)sceneForTabGroupWithUUIDString:(id)a3;
- (id)searchParametersWithCFEnabled:(BOOL)a3;
- (id)sectionManagerForProfileWithIdentifier:(id)a3;
- (id)sfWebExtensionsController:(id)a3 navigationIntentUUIDForWindow:(id)a4;
- (id)sfWebExtensionsController:(id)a3 reusableTabWithID:(double)a4;
- (id)sfWebExtensionsController:(id)a3 tabForWebView:(id)a4;
- (id)sfWebExtensionsController:(id)a3 tabWithID:(double)a4;
- (id)sfWebExtensionsController:(id)a3 windowForWebView:(id)a4 extension:(id)a5;
- (id)sfWebExtensionsController:(id)a3 windowWithID:(double)a4;
- (id)sfWebExtensionsControllerAllWindows:(id)a3;
- (id)sfWebExtensionsControllerDomainForDefaultSearchProvider:(id)a3;
- (id)sfWebExtensionsControllerLastFocusedWindow:(id)a3;
- (id)suggestionsManagerForProfileIdentifier:(id)a3;
- (id)tabCollectionConfiguration;
- (id)tabEntityWithUUID:(id)a3;
- (id)tabInfosForBrowserTabCompletionProvider:(id)a3;
- (id)webExtensionsControllerForProfileServerID:(id)a3;
- (id)webExtensionsControllerForTabWithPrivateBrowsingEnabled:(BOOL)a3 profile:(id)a4;
- (id)windowEntityWithIdentifier:(id)a3;
- (uint64_t)_showSearchEngineAlertIfNeeded;
- (unint64_t)_numberOfTabsForPrivateBrowsing:(BOOL)a3;
- (unint64_t)maximumTabCountAllowingMoreTabs:(BOOL)a3;
- (void)_addDefaultsObserver;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_clearInvalidCertificateBypassesOlderThanOneWeek;
- (void)_connectToCyclerIfNecessary;
- (void)_createExtensionControllersIfNeededForProfileServerID:(id)a3;
- (void)_deleteExtensionControllersForProfileServerID:(id)a3;
- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)a3;
- (void)_didEnableCustomizationSync;
- (void)_doSearchTestOnCVC:(id)a3 WithTestStrings:(id)a4 andDispatchGroup:(id)a5;
- (void)_downloadDidStartNotification:(id)a3;
- (void)_downloadDidStopNotification:(id)a3;
- (void)_export30DaysWorthOfHistoryAfterUpgrade;
- (void)_frequentlyVisitedSitesWereChanged:(id)a3;
- (void)_getBookmarksDataClassEnabledWithCompletionHandler:(id)a3;
- (void)_handleHIDEvent:(__IOHIDEvent *)a3;
- (void)_historyHostnamesWereRemoved:(id)a3;
- (void)_historyItemsWereRemoved:(id)a3;
- (void)_historyWasCleared:(id)a3;
- (void)_initializeProcessPoolForProfileIdentifier:(id)a3;
- (void)_loadAlternateHTMLString:(id)a3 completionHandler:(id)a4;
- (void)_loadExtensionsInProfile:(id)a3;
- (void)_loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4 completion:(id)a5;
- (void)_observeNotificationOnce:(id)a3 handler:(id)a4;
- (void)_performBookmarksDatabaseTasksInBackground;
- (void)_pollCanvasTest:(id)a3;
- (void)_populateInMemoryBookmarksDBForTestNamed:(id)a3;
- (void)_preparePageLoadTestControllerParameters;
- (void)_prepareTabViewBringUpTest;
- (void)_prepareTabViewCloseTest;
- (void)_prepareTabViewOpenTest;
- (void)_prepareTabViewRotationTest;
- (void)_prepareTabViewScrollTest;
- (void)_prepareTabViewSelectTest;
- (void)_prewarmAutomationControllerIfEnabled;
- (void)_profileFocusConfigurationChanged;
- (void)_pruneExpiredBrowserScenes;
- (void)_readDefaults;
- (void)_readFocusConfigurationKeys;
- (void)_reloadSearchEngines;
- (void)_reportBookmarksDatabaseHealth;
- (void)_reportLaunchAnalyticsSoon;
- (void)_resetCloudHistoryAccountIfNeeded;
- (void)_runFormTypingTextWithSetupScript:(id)a3;
- (void)_runSidebarTest;
- (void)_runTabBarSwitchTabTest;
- (void)_runTabOverviewOpenNewTabTest;
- (void)_runTabOverviewPresentingAndDismissalTest;
- (void)_runTabOverviewScrollPerfTest;
- (void)_saveFrequentlyVisitedListsToDatabaseIfNeeded;
- (void)_scrollContentWithTestName:(id)a3 scrollingBounds:(CGRect)a4 amplitude:(double)a5;
- (void)_setUpSuggestionManagersIfNeeded;
- (void)_setWKWebsiteDataStoreDelegate;
- (void)_showExtensionPermissionBannerIfNecessary;
- (void)_showSearchEngineAlertIfNeeded;
- (void)_suspendOrResumeWallpaperAnimationIfNeeded;
- (void)_switchToBookmarksCollectionForTestNamed:(id)a3;
- (void)_tabGroupFocusConfigurationChanged;
- (void)_typeTextInForm:(id)a3 completionHandler:(id)a4;
- (void)_updateCloudFeatureAvailability;
- (void)_updateKeyboardCorrectionLearningAllowed;
- (void)_updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory;
- (void)_webBookmarksDidReload;
- (void)applicationWillSuspend;
- (void)applicationWillTerminate;
- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)checkExtendedLaunchPageLoad:(id)a3 forTabDocument:(id)a4;
- (void)closeWindowsWithIdentifiers:(id)a3;
- (void)databaseLockAcquisitor:(id)a3 acquiredLock:(BOOL)a4;
- (void)deleteBookmarksWithUUIDs:(id)a3;
- (void)deleteTabGroupsWithUUIDs:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)downloadDidFail:(id)a3;
- (void)downloadDidFinish:(id)a3;
- (void)downloadDidReceiveResponse:(id)a3;
- (void)downloadDidStart:(id)a3;
- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4;
- (void)enumerateContentBlockerManagersUsingBlock:(id)a3;
- (void)extensionsController:(id)a3 closeOpenExtensionTabsInPrivateBrowsingWithBaseURI:(id)a4 composedIdentifier:(id)a5;
- (void)extensionsController:(id)a3 closeOpenExtensionTabsWithBaseURI:(id)a4 composedIdentifier:(id)a5;
- (void)failedPurpleTestWithError:(id)a3;
- (void)finishedBookmarksTest;
- (void)finishedCanvasTestWithURL:(id)a3 forTabDocument:(id)a4;
- (void)finishedPurpleTest:(id)a3;
- (void)getSavedAccountContextForGlobalFrameIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleKeyUIEvent:(id)a3;
- (void)loadBlankPageforKeyboardTests;
- (void)loadExtensionsInProfileIfNecessary:(id)a3;
- (void)loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4;
- (void)loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4 completion:(id)a5;
- (void)lockPrivateBrowsing;
- (void)mousePointerDevicesDidConnect:(id)a3;
- (void)mousePointerDevicesDidDisconnect:(id)a3;
- (void)moveTabsWithUUIDs:(id)a3 toTabGroupWithUUID:(id)a4;
- (void)moveTabsWithUUIDs:(id)a3 toWindowWithIdentifier:(id)a4;
- (void)navigateTabWithUUID:(id)a3 toURL:(id)a4;
- (void)noteTakingController:(id)a3 addHighlightForUserActivity:(id)a4 completion:(id)a5;
- (void)notifyAddedLinkPreviewMetadata:(id)a3 toUserActivity:(id)a4 webView:(id)a5;
- (void)notifyExtensionControllersThatSettingsWereUpdatedExternallyFromSettingsApp;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageLoadTestRunnerFinished:(id)a3;
- (void)pdfDataForTabWithUUID:(id)a3 completionHandler:(id)a4;
- (void)prepareTabViewBringUpTest;
- (void)prepareTabViewCloseTest;
- (void)prepareTabViewOpenTest;
- (void)prepareTabViewRotationTest;
- (void)prepareTabViewScrollTest;
- (void)prepareTabViewSelectTest;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)prewarmAndRemoveOrphanedProfileDataStores;
- (void)reloadContentBlockers;
- (void)reloadReadingListWidgetIfNeeded;
- (void)runBookmarksViewTest;
- (void)runGeneratePasswordTest;
- (void)runLargeFormFocusTest;
- (void)runLargeFormTypingTest;
- (void)runTabOverviewTest;
- (void)runTabSnapshotCacheStressTest;
- (void)saveChangesToCloudHistoryStore;
- (void)sceneForTabWithUUID:(id)a3 completionHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)setNeedsFocusProfileUpdate:(BOOL)a3;
- (void)setNeedsFocusedTabGroupUpdate:(BOOL)a3;
- (void)setObject:(id)a3 forInjectedBundleParameter:(id)a4;
- (void)setPrivateBrowsingRequiresAuthentication:(BOOL)a3;
- (void)sfWebExtensionsController:(id)a3 createNewTabInWindow:(id)a4 tabIndex:(id)a5 url:(id)a6 makeActive:(BOOL)a7 completionHandler:(id)a8;
- (void)sfWebExtensionsController:(id)a3 pinTab:(id)a4;
- (void)sfWebExtensionsController:(id)a3 relateParentTab:(id)a4 toTab:(id)a5;
- (void)sfWebExtensionsController:(id)a3 showPopupOrPerSitePermissionsForExtension:(id)a4 forTab:(id)a5 completionHandler:(id)a6;
- (void)sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:(id)a3;
- (void)showWindowWithIdentifier:(id)a3;
- (void)startBookmarksTest;
- (void)startCommandLineTest;
- (void)startKeyboardBringupTest;
- (void)startKeyboardRotationTest;
- (void)startKeyboardSplitAndMergeTest;
- (void)startSearchPerformanceDetailedTestWithCF:(BOOL)a3;
- (void)startSearchPerformanceTestWithTestStrings:(id)a3 perQuery:(BOOL)a4 withCF:(BOOL)a5;
- (void)startSearchPerformanceUnifiedFieldKeyTimeTest;
- (void)startTabViewBringUpTest;
- (void)startTabViewCloseTest;
- (void)startTabViewOpenTest;
- (void)startTabViewRotationTest;
- (void)startTabViewScrollTest;
- (void)startTabViewSelectTest;
- (void)startedPurpleTest;
- (void)tabEntitiesMatchingQuery:(id)a3 completionHandler:(id)a4;
- (void)tabGroupManager:(id)a3 didInsertProfileWithIdentifier:(id)a4;
- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4;
- (void)tabGroupManagerDidUpdateProfiles:(id)a3;
- (void)tabSnapshotCacheStressTestRunnerDidFinish:(id)a3;
- (void)unlockPrivateBrowsing;
- (void)updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing;
- (void)updateLockedPrivateBrowsingState;
- (void)updateShouldLockPrivateBrowsingWithTimerIfNecessary;
- (void)userDefaultsDidChange:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)webClipCacheDidChange:(id)a3;
- (void)websiteDataStore:(id)a3 domain:(id)a4 didOpenDomainViaWindowOpen:(id)a5 withProperty:(int64_t)a6 directly:(BOOL)a7;
- (void)websiteDataStore:(id)a3 openWindow:(id)a4 fromServiceWorkerOrigin:(id)a5 completionHandler:(id)a6;
@end

@implementation Application

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (MGGetBoolAnswer())
    {
      v2 = 1;
    }

    else
    {
      v2 = MGGetBoolAnswer();
    }

    highTabCapacityDevice = v2;
    screenTimeManagementStateDidChangeNotification = CFStringCreateWithCString(0, *MEMORY[0x277D4BC18], 0x600u);
    screenTimePasscodeStateDidChangeNotification = CFStringCreateWithCString(0, *MEMORY[0x277D4BCB8], 0x600u);
  }
}

- (WBTabGroupManager)tabGroupManager
{
  tabGroupManager = self->_tabGroupManager;
  if (!tabGroupManager)
  {
    v4 = objc_alloc(MEMORY[0x277D7B568]);
    v5 = [(Application *)self tabCollectionConfiguration];
    v6 = [v4 initWithConfiguration:v5 openDatabase:1];

    v7 = [objc_alloc(MEMORY[0x277D7B580]) initWithCollection:v6];
    v8 = self->_tabGroupManager;
    self->_tabGroupManager = v7;

    v9 = self->_tabGroupManager;
    v10 = [MEMORY[0x277D7B588] sharedProxy];
    [(WBTabGroupManager *)v9 addTabGroupObserver:v10];

    [(WBTabGroupManager *)self->_tabGroupManager addTabGroupObserver:self];
    v11 = [MEMORY[0x277D7B588] sharedProxy];
    [(WBTabGroupManager *)self->_tabGroupManager setSyncAgentProxy:v11];

    tabGroupManager = self->_tabGroupManager;
  }

  return tabGroupManager;
}

- (id)tabCollectionConfiguration
{
  if ([(Application *)self shouldRestoreStateForPPT])
  {
    [MEMORY[0x277D7B520] pptTabCollectionConfiguration];
  }

  else
  {
    [MEMORY[0x277D7B520] safariTabCollectionConfiguration];
  }
  v3 = ;
  [v3 setMaximumTabsPerTabGroup:{-[Application maximumTabCountAllowingMoreTabs:](self, "maximumTabCountAllowingMoreTabs:", 1)}];

  return v3;
}

- (BOOL)shouldRestoreStateForPPT
{
  v2 = [(Application *)self isRunningPPT];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"shouldRestoreStateForPPT"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)isRunningPPT
{
  if (([(Application *)self launchedToTest]& 1) != 0)
  {
    return 1;
  }

  return [(Application *)self isRunningTest];
}

- (void)_setWKWebsiteDataStoreDelegate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [MEMORY[0x277CE3868] safari_allPersistentDataStores];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) set_delegate:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_readFocusConfigurationKeys
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v3 stringForKey:*MEMORY[0x277D49D98]];
  focusedTabGroupUUIDString = self->_focusedTabGroupUUIDString;
  self->_focusedTabGroupUUIDString = v4;

  v6 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  self->_needsFocusedTabGroupUpdate = [v6 BOOLForKey:*MEMORY[0x277D49C30]];

  if ([(NSString *)self->_focusedTabGroupUUIDString length])
  {
    v7 = [(Application *)self tabGroupManager];
    v8 = [v7 tabGroupWithUUID:self->_focusedTabGroupUUIDString];
    v9 = [v8 isInDefaultProfile];

    if ((v9 & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring tab group for focus since the tab group is in a named profile.", v18, 2u);
      }

      v11 = self->_focusedTabGroupUUIDString;
      self->_focusedTabGroupUUIDString = 0;

      self->_needsFocusedTabGroupUpdate = 0;
    }
  }

  if (self->_needsFocusedTabGroupUpdate && !self->_focusedTabGroupUUIDString)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [Application _readFocusConfigurationKeys];
    }
  }

  v13 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v14 = [v13 stringForKey:*MEMORY[0x277D49CF8]];

  if (!self->_focusProfileIdentifier || v14)
  {
    objc_storeStrong(&self->_focusProfileIdentifier, v14);
    v15 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    self->_needsFocusProfileUpdate = [v15 BOOLForKey:*MEMORY[0x277D49C28]];

    if (self->_needsFocusProfileUpdate)
    {
      if (self->_focusProfileIdentifier)
      {
        goto LABEL_18;
      }

      v16 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [Application _readFocusConfigurationKeys];
      }

      if (self->_needsFocusProfileUpdate)
      {
LABEL_18:
        if (self->_needsFocusedTabGroupUpdate)
        {
          goto LABEL_21;
        }
      }
    }

    if (self->_focusProfileIdentifier && self->_focusedTabGroupUUIDString)
    {
LABEL_21:
      v17 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [Application _readFocusConfigurationKeys];
      }
    }
  }

  else
  {
    objc_storeStrong(&self->_focusProfileIdentifier, *MEMORY[0x277D49BD8]);
    [(Application *)self setNeedsFocusProfileUpdate:1];
    self->_focusProfileUpdateIsForInactiveFocusMode = 1;
  }
}

- (void)updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__Application_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke;
  v3[3] = &unk_2781D5018;
  objc_copyWeak(&v4, &location);
  [(Application *)self _determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

+ (id)browserControllerUIDelegateProvider
{
  if (browserControllerUIDelegateProvider)
  {
    v2 = browserControllerUIDelegateProvider;
  }

  else
  {
    v2 = &__block_literal_global_386;
  }

  v3 = _Block_copy(v2);

  return v3;
}

BrowserControllerDefaultUIDelegate *__50__Application_browserControllerUIDelegateProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BrowserControllerDefaultUIDelegate alloc] initWithBrowserController:v2];

  return v3;
}

void __91__Application_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__Application_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke_2;
    v9[3] = &unk_2781D4FF0;
    v10 = a2;
    v9[5] = a3;
    v9[6] = a4;
    v9[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager
{
  userDefinedContentBlockerManager = self->_userDefinedContentBlockerManager;
  if (!userDefinedContentBlockerManager)
  {
    v4 = objc_alloc(MEMORY[0x277D4A0C0]);
    v5 = [MEMORY[0x277D4A0C8] sharedStore];
    v6 = [v4 initWithDataStore:v5];
    v7 = self->_userDefinedContentBlockerManager;
    self->_userDefinedContentBlockerManager = v6;

    userDefinedContentBlockerManager = self->_userDefinedContentBlockerManager;
  }

  return userDefinedContentBlockerManager;
}

- (void)_prewarmAutomationControllerIfEnabled
{
  if ([MEMORY[0x277CDB740] isSystemRemoteAutomationEnabled])
  {
    v3 = [(Application *)self automationController];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    v5 = *MEMORY[0x277CDB980];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__Application__prewarmAutomationControllerIfEnabled__block_invoke;
    v8[3] = &unk_2781D4E28;
    v8[4] = self;
    v6 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v8];
    developerPreferencesDidChangeNotificationToken = self->_developerPreferencesDidChangeNotificationToken;
    self->_developerPreferencesDidChangeNotificationToken = v6;
  }
}

- (WBSPrivateBrowsingUserDefinedContentBlockerManager)userDefinedContentBlockerManagerForPrivateBrowsing
{
  userDefinedContentBlockerManagerForPrivateBrowsing = self->_userDefinedContentBlockerManagerForPrivateBrowsing;
  if (!userDefinedContentBlockerManagerForPrivateBrowsing)
  {
    v4 = objc_alloc(MEMORY[0x277D4A000]);
    v5 = [objc_alloc(MEMORY[0x277D4A0C8]) initWithDatabaseURL:0];
    v6 = [v4 initWithDataStore:v5];
    v7 = self->_userDefinedContentBlockerManagerForPrivateBrowsing;
    self->_userDefinedContentBlockerManagerForPrivateBrowsing = v6;

    v8 = [(Application *)self userDefinedContentBlockerManager];
    [(WBSPrivateBrowsingUserDefinedContentBlockerManager *)self->_userDefinedContentBlockerManagerForPrivateBrowsing setNormalBrowsingUserDefinedContentBlockerManager:v8];

    userDefinedContentBlockerManagerForPrivateBrowsing = self->_userDefinedContentBlockerManagerForPrivateBrowsing;
  }

  return userDefinedContentBlockerManagerForPrivateBrowsing;
}

- (void)updateLockedPrivateBrowsingState
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)privateBrowsingRequiresAuthentication
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D4A2F0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 BOOLForKey:*MEMORY[0x277D4A348]];
  }

  return v4;
}

- (void)_pruneExpiredBrowserScenes
{
  v3 = [(Application *)self openSessions];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_320];

  [(BrowserWindowController *)self->_browserWindowController removeWindowsNotMatchingSceneIDs:v4 supportsMultipleScenes:[(Application *)self supportsMultipleScenes]];
}

- (void)_clearInvalidCertificateBypassesOlderThanOneWeek
{
  v3 = [MEMORY[0x277D49EA8] sharedManager];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  [v3 clearCertificateBypassesCreatedBeforeDate:v2];
}

void __46__Application__updateCloudFeatureAvailability__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__Application__updateCloudFeatureAvailability__block_invoke_2;
  v2[3] = &unk_2781D51B8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)_showSearchEngineAlertIfNeeded
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = *MEMORY[0x277D28FF8];
  v4 = [v2 stringForKey:*MEMORY[0x277D28FF8]];
  v5 = MGCopyAnswer();
  [v2 setObject:v5 forKey:v3];
  if (_SFDeviceRegionCodeIsRussia() && ([v4 isEqualToString:v5] & 1) == 0)
  {
    if (!v4)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v6 = getDMGetUserDataDispositionSymbolLoc_ptr;
      v19 = getDMGetUserDataDispositionSymbolLoc_ptr;
      if (!getDMGetUserDataDispositionSymbolLoc_ptr)
      {
        v7 = DataMigrationLibrary();
        v17[3] = dlsym(v7, "DMGetUserDataDisposition");
        getDMGetUserDataDispositionSymbolLoc_ptr = v17[3];
        v6 = v17[3];
      }

      _Block_object_dispose(&v16, 8);
      if (v6)
      {
        v8 = v6();
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v9 = getDMGetPreviousBuildVersionSymbolLoc_ptr;
        v19 = getDMGetPreviousBuildVersionSymbolLoc_ptr;
        if (!getDMGetPreviousBuildVersionSymbolLoc_ptr)
        {
          v10 = DataMigrationLibrary();
          v17[3] = dlsym(v10, "DMGetPreviousBuildVersion");
          getDMGetPreviousBuildVersionSymbolLoc_ptr = v17[3];
          v9 = v17[3];
        }

        _Block_object_dispose(&v16, 8);
        if (v9)
        {
          v11 = v9();
          v12 = v11;
          if ((v8 & 2) != 0 && v11)
          {
            v13 = [v11 compare:@"18F0" options:64];

            if (v13 == -1)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          goto LABEL_15;
        }
      }

      else
      {
        [Application _showSearchEngineAlertIfNeeded];
      }

      v15 = [Application _showSearchEngineAlertIfNeeded];
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(v15);
    }

LABEL_15:
    v14 = [MEMORY[0x277D28D70] searchEngineSettingAlert];
    [v14 scheduleWithCompletionBlock:&__block_literal_global_294];
  }

LABEL_16:
}

- (void)prewarmAndRemoveOrphanedProfileDataStores
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(Application *)self tabGroupManager];
  v4 = [v3 allNamedProfileIdentifiers];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 allObjects];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CE3868] safari_dataStoreForProfileWithIdentifier:*(*(&v18 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CE3868];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke;
  v16[3] = &unk_2781D4FA0;
  v17 = v4;
  v12 = v4;
  [v11 _fetchAllIdentifiers:v16];
  v13 = MEMORY[0x277D4A7C0];
  v14 = [(Application *)self tabGroupManager];
  v15 = [v14 allProfileIdentifiers];
  [v13 clearCachedDataForProfilesWithIdentifiersNotInSet:v15];
}

- (void)_updateCloudFeatureAvailability
{
  v3 = +[FeatureManager sharedFeatureManager];
  v4 = [v3 isCloudSyncAvailable];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__Application__updateCloudFeatureAvailability__block_invoke;
    v5[3] = &unk_2781D4B18;
    v5[4] = self;
    [(Application *)self _getBookmarksDataClassEnabledWithCompletionHandler:v5];
  }
}

- (void)_readDefaults
{
  if (!self->_isReadingDefaults)
  {
    self->_isReadingDefaults = 1;
    [(BrowserWindowController *)self->_browserWindowController updateCloudTabUpdatesEnabled];
    self->_isReadingDefaults = 0;
  }
}

- (void)_addDefaultsObserver
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = *MEMORY[0x277D29000];
  v53 = *MEMORY[0x277D28F70];
  v54 = v4;
  v5 = *MEMORY[0x277D29040];
  v55 = *MEMORY[0x277D29018];
  v56 = v5;
  v6 = *MEMORY[0x277D29090];
  v57 = *MEMORY[0x277D29048];
  v58 = v6;
  v7 = *MEMORY[0x277D29148];
  v59 = *MEMORY[0x277D29140];
  v60 = v7;
  v8 = *MEMORY[0x277D29158];
  v61 = *MEMORY[0x277D29150];
  v62 = v8;
  v9 = *MEMORY[0x277D29168];
  v63 = *MEMORY[0x277D29160];
  v64 = v9;
  v10 = *MEMORY[0x277D29178];
  v65 = *MEMORY[0x277D29170];
  v66 = v10;
  v11 = *MEMORY[0x277D49DA8];
  v67 = *MEMORY[0x277D29180];
  v68 = v11;
  v12 = *MEMORY[0x277D29228];
  v69 = *MEMORY[0x277D291B0];
  v70 = v12;
  v13 = *MEMORY[0x277D292A8];
  v71 = *MEMORY[0x277D29230];
  v72 = v13;
  v14 = *MEMORY[0x277D29098];
  v73 = @"DebugBarCollapsingBehavior";
  v74 = v14;
  v15 = *MEMORY[0x277D290A0];
  v75 = @"SpeculativeLoading";
  v76 = v15;
  v16 = *MEMORY[0x277D4A348];
  v77 = *MEMORY[0x277D49BF8];
  v78 = v16;
  v17 = *MEMORY[0x277D28F78];
  v79 = *MEMORY[0x277D29190];
  v80 = v17;
  v18 = *MEMORY[0x277D29010];
  v81 = *MEMORY[0x277D29028];
  v82 = v18;
  v19 = *MEMORY[0x277D29080];
  v83 = *MEMORY[0x277D29008];
  v84 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:32];
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    do
    {
      v24 = 0;
      do
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v3 addObserver:self forKeyPath:*(*(&v46 + 1) + 8 * v24++) options:3 context:userDefaultsObserverContext];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v22);
  }

  v25 = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = *MEMORY[0x277D29278];
  v53 = *MEMORY[0x277D29290];
  v54 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:2];
  v28 = [v27 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v43;
    do
    {
      v31 = 0;
      do
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [v25 addObserver:self forKeyPath:*(*(&v42 + 1) + 8 * v31++) options:3 context:userDefaultsObserverContext];
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v29);
  }

  v32 = [MEMORY[0x277CBEBD0] webui_defaults];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v53 = *MEMORY[0x277D7B860];
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:{1, 0}];
  v34 = [v33 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v39;
    do
    {
      v37 = 0;
      do
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [v32 addObserver:self forKeyPath:*(*(&v38 + 1) + 8 * v37++) options:3 context:userDefaultsObserverContext];
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v35);
  }
}

- (void)_reportLaunchAnalyticsSoon
{
  v3 = [MEMORY[0x277D499B8] sharedLogger];
  v4 = [MEMORY[0x277D28F08] settings];
  v5 = [v4 hasPrivateBrowsingWindow];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__Application__reportLaunchAnalyticsSoon__block_invoke;
  v7[3] = &unk_2781D5060;
  v9 = v5;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v6 performOnAnalyticsQueueWithDelay:5 block:v7];
}

- (void)_connectToCyclerIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D49F00] countOfEnabledCyclers];
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Not opening cycler connection because cycler support is disabled", &v18, 2u);
      }

      return;
    }

    v5 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [Application _connectToCyclerIfNecessary];
    }
  }

  if ([MEMORY[0x277D49F00] isTabCyclerEnabled])
  {
    v6 = objc_alloc(MEMORY[0x277D7B570]);
    v7 = [(Application *)self tabGroupManager];
    v8 = [v6 initWithTabGroupManager:v7];
  }

  else
  {
    v8 = 0;
  }

  if ([MEMORY[0x277D49F00] isExtensionCyclerEnabled])
  {
    v9 = objc_alloc_init(MEMORY[0x277D49F40]);

    v8 = v9;
  }

  if ([MEMORY[0x277D49F00] isBookmarkCyclerEnabled])
  {
    v10 = [CyclerCommandHandler alloc];
    v11 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v12 = [(CyclerCommandHandler *)v10 initWithBookmarkCollection:v11];

    v8 = v12;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXCycler();
  v14 = v13;
  if (v8)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v18 = 138543362;
      v19 = objc_opt_class();
      _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Opening cycler connection with test target: %{public}@", &v18, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x277D49F00]) initWithTestTarget:v8];
    cyclerConnectionManager = self->_cyclerConnectionManager;
    self->_cyclerConnectionManager = v16;

    [(WBSCyclerConnectionManager *)self->_cyclerConnectionManager connect];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [Application _connectToCyclerIfNecessary];
  }
}

- (void)lockPrivateBrowsing
{
  if (!self->_privateBrowsingLocked)
  {
    self->_shouldPrivateBrowsingBeLockedIfPossible = 1;
    [(Application *)self updateLockedPrivateBrowsingState];
  }
}

- (void)_showExtensionPermissionBannerIfNecessary
{
  v3 = [(Application *)self webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];
  v4 = [v3 composedIdentifiersOfExtensionsWithAutomaticallyGrantedPermissions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__Application__showExtensionPermissionBannerIfNecessary__block_invoke;
  v9[3] = &unk_2781D5480;
  v10 = v3;
  v5 = v3;
  v6 = [v4 safari_mapAndFilterObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [(Application *)self browserControllers];
    v8 = [v7 firstObject];
    [v8 showExtensionPermissionBannerForExtensions:v6];
  }
}

void __29__Application_updateTabCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tabController];
  [v2 updateTabCount];
}

- (ReadingListLeadImageCache)readingListLeadImageCache
{
  readingListImageCache = self->_readingListImageCache;
  if (!readingListImageCache)
  {
    v4 = [ReadingListLeadImageCache alloc];
    v5 = MEMORY[0x277CBEBC0];
    v6 = [MEMORY[0x277D7B5A8] bookmarkImagesDirectoryPath];
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];
    v8 = [(ReadingListLeadImageCache *)v4 initWithDirectoryURL:v7];
    v9 = self->_readingListImageCache;
    self->_readingListImageCache = v8;

    readingListImageCache = self->_readingListImageCache;
  }

  return readingListImageCache;
}

- (id)_recentsStoreForDefaultProfile
{
  v2 = _recentsStoreForDefaultProfile_store;
  if (!_recentsStoreForDefaultProfile_store)
  {
    if (_recentsStoreForDefaultProfile_onceToken != -1)
    {
      [Application _recentsStoreForDefaultProfile];
    }

    v2 = _recentsStoreForDefaultProfile_store;
  }

  v3 = v2;

  return v3;
}

void __45__Application__recentsStoreForDefaultProfile__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D4A7E8]);
  v1 = +[CloudTabStore sharedCloudTabStore];
  v6 = [v0 initWithCloudTabDeviceProvider:v1];

  [v6 setActiveProfileIdentifier:*MEMORY[0x277D49BD8]];
  v2 = objc_alloc(MEMORY[0x277D4A7F8]);
  v3 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v4 = [v2 initWithSiteMetadataManager:v3];
  v5 = _recentsStoreForDefaultProfile_store;
  _recentsStoreForDefaultProfile_store = v4;

  [_recentsStoreForDefaultProfile_store registerProvider:v6];
}

- (HistoryController)historyController
{
  historyController = self->_historyController;
  if (!historyController)
  {
    v4 = +[HistoryController sharedController];
    v5 = self->_historyController;
    self->_historyController = v4;

    historyController = self->_historyController;
  }

  return historyController;
}

- (void)startCommandLineTest
{
  v11 = *MEMORY[0x277D85DE8];
  if (gTestOptions && [gTestOptions count])
  {
    v3 = gTestOptions;
    gTestOptions = 0;
    v4 = v3;

    v5 = [v4 objectForKey:@"testName"];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"PLT";
    }

    [(Application *)self runTest:v6 options:v4];
  }

  if (gTestController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [gTestController setDelegate:gTestController];
    }

    v7 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = 138543362;
      v10 = objc_opt_class();
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Running %{public}@", &v9, 0xCu);
    }

    [gTestController runTestsAndStoreResultsIn:gTestResults completionHandler:&__block_literal_global_1];
  }
}

- (id)allWebExtensionsControllers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(Application *)self tabGroupManager];
  v4 = [v3 namedProfiles];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers allValues];

  return v10;
}

- (BOOL)usesLoweredSearchBar
{
  v2 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v3 = [v2 preferredCapsuleLayoutStyle] != 2;

  return v3;
}

- (void)updateShouldLockPrivateBrowsingWithTimerIfNecessary
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v15 = [v3 objectForKey:*MEMORY[0x277D4A0E0]];

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v15 intValue] != 2;
  if ([(Application *)self _hasPrivateBrowserControllerActiveInAnyWindow]|| [(Application *)self isPrivateBrowsingLocked])
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(Application *)self _mediaIsPlayingInPrivateBrowsing];
  }

  v6 = v15;
  if (v4)
  {
    lockPrivateBrowsingInBackgroundTimer = self->_lockPrivateBrowsingInBackgroundTimer;
    if (v5)
    {
      if (lockPrivateBrowsingInBackgroundTimer)
      {
        goto LABEL_17;
      }

      v8 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [v8 safari_doubleForKey:*MEMORY[0x277D4A1A8] defaultValue:30.0];
      v10 = v9;

      v11 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_lockPrivateBrowsing selector:0 userInfo:0 repeats:v10];
      v12 = self->_lockPrivateBrowsingInBackgroundTimer;
      self->_lockPrivateBrowsingInBackgroundTimer = v11;

      v13 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v13 addTimer:self->_lockPrivateBrowsingInBackgroundTimer forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      if (!lockPrivateBrowsingInBackgroundTimer)
      {
        goto LABEL_17;
      }

      [(NSTimer *)lockPrivateBrowsingInBackgroundTimer invalidate];
      v14 = self->_lockPrivateBrowsingInBackgroundTimer;
      self->_lockPrivateBrowsingInBackgroundTimer = 0;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    [(Application *)self lockPrivateBrowsing];
  }

  v6 = v15;
LABEL_17:
}

- (BOOL)_hasPrivateBrowserControllerActiveInAnyWindow
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(Application *)self browserControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isShowingPrivateTabs] && (objc_msgSend(v6, "activeWindowIsForeground") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)_mediaIsPlayingInPrivateBrowsing
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [(Application *)self browserControllers];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    v21 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 tabController];
        v9 = [v8 privateTabDocuments];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              if ([v15 isAudible])
              {
                goto LABEL_22;
              }

              v16 = [v7 tabDocumentPlayingPIPVideo];

              if (v15 == v16)
              {
                goto LABEL_22;
              }

              v17 = [v15 webView];
              if ([v17 cameraCaptureState] == 1)
              {

LABEL_22:
                v19 = 1;
                goto LABEL_23;
              }

              v18 = [v17 microphoneCaptureState];

              if (v18 == 1)
              {
                goto LABEL_22;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            v5 = v21;
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v19 = 0;
    }

    while (v4);
  }

  else
  {
    v19 = 0;
  }

LABEL_23:

  return v19;
}

void __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138543362;
    v12 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v15 + 1) + 8 * v8) UUIDString];
        if (([*(a1 + 32) containsObject:v9] & 1) == 0)
        {
          v10 = WBS_LOG_CHANNEL_PREFIXOther();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = v12;
            v20 = v9;
            _os_log_fault_impl(&dword_215819000, v10, OS_LOG_TYPE_FAULT, "WKWebsiteDataStore with identifier %{public}@ does not correspond to any Safari profile, deleting", buf, 0xCu);
          }

          v11 = MEMORY[0x277CE3868];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke_263;
          v13[3] = &unk_2781D4F78;
          v14 = v9;
          [v11 safari_removeDataStoreForProfileWithIdentifier:v14 completionHandler:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)_extendLaunchTest
{
  if (gExtendedLaunchPageLoad == 1)
  {
    return @"pageLoad";
  }

  else
  {
    return 0;
  }
}

- (BrowserController)primaryBrowserController
{
  v2 = [(Application *)self browserControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)allContentBlockerManagers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(Application *)self tabGroupManager];
  v4 = [v3 namedProfiles];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers allValues];

  return v10;
}

void __91__Application_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v3 != 2)
  {
    [v2 setBool:v3 == 0 forKey:*MEMORY[0x277D4A0D8]];
    v2 = v4;
  }

  [v2 setBool:*(a1 + 56) forKey:*MEMORY[0x277D4A2F0]];
  [v4 setInteger:*(a1 + 48) forKey:*MEMORY[0x277D4A0E0]];
  [*(a1 + 32) updateLockedPrivateBrowsingState];
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_2(uint64_t a1)
{
  v2 = +[FeatureManager sharedFeatureManager];
  v3 = [v2 isCloudHistorySyncAvailable];

  v4 = *(a1 + 32);
  if (*(a1 + 40) != 1 || v3 == 0)
  {
    [v4 _resetCloudHistoryAccountIfNeeded];
    v6 = +[History sharedHistory];
    [v6 releaseCloudHistory:&__block_literal_global_360];

    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = 0;
  }

  else if (v4[66])
  {
    [v4 _resetCloudHistoryAccountIfNeeded];
  }

  else
  {
    v9 = +[History sharedHistory];
    v10 = +[CloudHistoryConfiguration sharedConfiguration];
    v11 = [v10 dictionaryRepresentation];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__Application__updateCloudFeatureAvailability__block_invoke_3;
    v14[3] = &unk_2781D5190;
    v14[4] = *(a1 + 32);
    [v9 initializeCloudHistoryWithConfiguration:v11 completionHandler:v14];
  }

  if (+[(WBUFeatureManager *)FeatureManager]== 2)
  {
    v12 = +[CloudTabStore sharedCloudTabStore];
    v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __46__Application__updateCloudFeatureAvailability__block_invoke_2_cold_1();
    }

    [v12 synchronizeCloudTabDevices];
  }
}

- (void)_resetCloudHistoryAccountIfNeeded
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = *MEMORY[0x277D7B638];
  v5 = v3;
  if ([v3 BOOLForKey:*MEMORY[0x277D7B638]])
  {
    [v5 removeObjectForKey:v4];
    [(WBSCloudHistoryServiceProtocol *)self->_cloudHistory resetForAccountChangeWithCompletionHandler:&__block_literal_global_350];
  }
}

- (void)_suspendOrResumeWallpaperAnimationIfNeeded
{
  v3 = [(Application *)self isSuspended];
  wallpaperSuspensionAssertion = self->_wallpaperSuspensionAssertion;
  if (v3)
  {
    self->_wallpaperSuspensionAssertion = 0;
  }

  else if (!wallpaperSuspensionAssertion)
  {
    SBSAcquireWallpaperAnimationSuspensionAssertion();
  }
}

- (HighlightManager)highlightManager
{
  highlightManager = self->_highlightManager;
  if (!highlightManager)
  {
    v4 = objc_alloc_init(HighlightManager);
    v5 = self->_highlightManager;
    self->_highlightManager = v4;

    highlightManager = self->_highlightManager;
  }

  return highlightManager;
}

- (void)_setUpSuggestionManagersIfNeeded
{
  if (!self->_profileIdentifiersToSuggestionsManagers)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    profileIdentifiersToSuggestionsManagers = self->_profileIdentifiersToSuggestionsManagers;
    self->_profileIdentifiersToSuggestionsManagers = v3;

    v5 = objc_alloc(MEMORY[0x277D4A848]);
    v8 = [(Application *)self highlightManager];
    v6 = [v5 initWithSuggestionsProvider:v8];
    highlightManagerSuggestionsProviderBroadcaster = self->_highlightManagerSuggestionsProviderBroadcaster;
    self->_highlightManagerSuggestionsProviderBroadcaster = v6;
  }
}

- (void)_didEnableCustomizationSync
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v3 BOOLForKey:*MEMORY[0x277D49BE8]];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CBEBD0] safari_browserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", *MEMORY[0x277D49BF8]), v5, v6))
  {
    if (self->_settingsSyncEngine)
    {
      return;
    }

    v7 = objc_alloc_init(SafariSettingsSyncEngine);
    settingsSyncEngine = self->_settingsSyncEngine;
    self->_settingsSyncEngine = v7;
  }

  else
  {
    settingsSyncEngine = self->_settingsSyncEngine;
    if (!settingsSyncEngine)
    {
      return;
    }

    self->_settingsSyncEngine = 0;
  }
}

- (SystemNoteTakingController)systemNoteTakingController
{
  systemNoteTakingController = self->_systemNoteTakingController;
  if (!systemNoteTakingController)
  {
    v4 = objc_alloc_init(SystemNoteTakingController);
    v5 = self->_systemNoteTakingController;
    self->_systemNoteTakingController = v4;

    [(WBSSystemNoteTakingController *)self->_systemNoteTakingController setDelegate:self];
    systemNoteTakingController = self->_systemNoteTakingController;
  }

  return systemNoteTakingController;
}

- (SFWebExtensionsController)defaultWebExtensionsController
{
  v2 = +[Application sharedApplication];
  v3 = [v2 webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];

  return v3;
}

- (BOOL)usesDefaultBrowsingModeInAllWindows
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(Application *)self browserControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isPrivateBrowsingEnabled] & 1) != 0 || (objc_msgSend(v7, "isControlledByAutomation"))
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_13:

  return v8;
}

- (BOOL)usesPrivateBrowsingModeInAnyWindow
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(Application *)self browserControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPrivateBrowsingEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_hasLockablePrivateTabsOpenInAnyWindow
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [(Application *)self browserControllers];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v22 + 1) + 8 * i) tabController];
        v8 = [v7 pinnedTabsManager];
        v9 = [v8 privatePinnedTabs];
        v10 = [v9 count];

        if (v10)
        {
LABEL_19:

          v16 = 1;
          goto LABEL_21;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v7 privateTabs];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (![*(*(&v18 + 1) + 8 * j) isBlank])
              {

                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v16 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (void)setPrivateBrowsingRequiresAuthentication:(BOOL)a3
{
  if (a3)
  {
    self->_shouldPrivateBrowsingBeLockedIfPossible = 1;
  }

  [(Application *)self updateLockedPrivateBrowsingState];
}

- (void)unlockPrivateBrowsing
{
  if (self->_privateBrowsingLocked)
  {
    self->_shouldPrivateBrowsingBeLockedIfPossible = 0;
    [(Application *)self updateLockedPrivateBrowsingState];
  }
}

- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_lockedPrivateBrowsingAuthenticationCompletionHandlers)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    lockedPrivateBrowsingAuthenticationCompletionHandlers = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
    self->_lockedPrivateBrowsingAuthenticationCompletionHandlers = v5;
  }

  if (v4)
  {
    v7 = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
    v8 = _Block_copy(v4);
    [(NSMutableArray *)v7 addObject:v8];
  }

  if (self->_lockedPrivateBrowsingAuthenticationContext)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPrivateBrowsing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [Application authenticateToUnlockPrivateBrowsingWithCompletionHandler:];
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CD4790]);
    lockedPrivateBrowsingAuthenticationContext = self->_lockedPrivateBrowsingAuthenticationContext;
    self->_lockedPrivateBrowsingAuthenticationContext = v10;

    v12 = self->_lockedPrivateBrowsingAuthenticationContext;
    v25 = 0;
    v13 = [(LAContext *)v12 canEvaluatePolicy:2 error:&v25];
    v14 = v25;
    v15 = v14;
    if (v13)
    {
      v26[0] = &unk_2827FBE78;
      v16 = _WBSLocalizedString();
      v26[1] = &unk_2827FBE90;
      v27[0] = v16;
      v17 = _WBSLocalizedString();
      v27[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

      v19 = WBS_LOG_CHANNEL_PREFIXPrivateBrowsing();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [Application authenticateToUnlockPrivateBrowsingWithCompletionHandler:];
      }

      v20 = self->_lockedPrivateBrowsingAuthenticationContext;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke;
      v24[3] = &unk_2781D4CB0;
      v24[4] = self;
      [(LAContext *)v20 evaluatePolicy:2 options:v18 reply:v24];
    }

    else
    {
      if (v14)
      {
        v21 = WBS_LOG_CHANNEL_PREFIXOther();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [Application authenticateToUnlockPrivateBrowsingWithCompletionHandler:v21];
        }
      }

      v18 = [(NSMutableArray *)self->_lockedPrivateBrowsingAuthenticationCompletionHandlers firstObject];
      v22 = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
      self->_lockedPrivateBrowsingAuthenticationCompletionHandlers = 0;

      v23 = self->_lockedPrivateBrowsingAuthenticationContext;
      self->_lockedPrivateBrowsingAuthenticationContext = 0;

      if (v18)
      {
        v18[2](v18, 0);
      }
    }
  }
}

void __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2781D4C88;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 736);
  v3 = *(a1 + 32);
  v4 = *(v3 + 736);
  *(v3 + 736) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 728);
  *(v5 + 728) = 0;

  v7 = (a1 + 40);
  if (*(a1 + 40))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke_2_cold_1(v7, v8);
    }
  }

  else
  {
    [*(a1 + 32) unlockPrivateBrowsing];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13), *v7 == 0);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)applicationWillSuspend
{
  v4.receiver = self;
  v4.super_class = Application;
  [(Application *)&v4 applicationWillSuspend];
  self->_shouldReadDefaultsOnResume = 0;
  self->_willEnterSuspendedState = 1;
  v3 = [MEMORY[0x277D49EF0] standardStore];
  [v3 closeDatabase];
}

- (void)saveChangesToCloudHistoryStore
{
  cloudHistory = self->_cloudHistory;
  v3 = +[(WBUFeatureManager *)FeatureManager]== 2;

  [(WBSCloudHistoryServiceProtocol *)cloudHistory saveChangesBypassingThrottler:v3 completionHandler:&__block_literal_global_0];
}

void __45__Application_saveChangesToCloudHistoryStore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__Application_saveChangesToCloudHistoryStore__block_invoke_cold_1(v3);
    }
  }
}

- (void)_updateKeyboardCorrectionLearningAllowed
{
  v2 = [(Application *)self browserControllers];
  v3 = [v2 safari_firstObjectPassingTest:&__block_literal_global_64];
  v4 = v3 == 0;

  v5 = [MEMORY[0x277D75658] activeKeyboard];
  [v5 setCorrectionLearningAllowed:v4];
}

uint64_t __55__Application__updateKeyboardCorrectionLearningAllowed__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 configuration];
  v3 = [v2 allowsKeyboardCorrectionLearning];

  return v3 ^ 1u;
}

- (void)_applicationWillResignActive:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Application will resign active", v6, 2u);
  }

  if (!self->_resigningActive)
  {
    self->_resigningActive = 1;
    [(Application *)self saveChangesToCloudHistoryStore];
    v5 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [v5 setSuspended:1];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Application did become active", buf, 2u);
  }

  [(Application *)self _suspendOrResumeWallpaperAnimationIfNeeded];
  if (self->_resigningActive)
  {
    self->_resigningActive = 0;
    self->_willEnterSuspendedState = 0;
    if (self->_shouldReadDefaultsOnResume)
    {
      [(Application *)self _readDefaults];
    }

    v5 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [v5 setSuspended:0];

    v6 = MEMORY[0x277D49FC8];
    v7 = [MEMORY[0x277D28F08] settings];
    +[WBSParsecDSession sendLaunchFeedbackWithEvent:isPrivate:usesLoweredSearchBar:](v6, 26, [v7 hasPrivateBrowsingWindow], -[Application usesLoweredSearchBar](self, "usesLoweredSearchBar"));

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v26 + 1) + 8 * i) scene];

          if (v14)
          {
            ++v11;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = [(Application *)self _numberOfTabsForPrivateBrowsing:0];
    v16 = [MEMORY[0x277D499B8] sharedLogger];
    [v16 reportNumberOfWindows:v11];
    [v16 reportNumberOfTabs:v15];
    if (v11)
    {
      v17 = (v15 / v11);
    }

    else
    {
      v17 = 0;
    }

    [v16 reportNumberOfTabsPerWindow:v17];
    v18 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v19 = [v18 BOOLForKey:*MEMORY[0x277D49BE8]];

    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v21 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v20 = [v21 BOOLForKey:*MEMORY[0x277D49BF8]];
    }

    v22 = [MEMORY[0x277D28D48] sharedPlaybackController];
    v23 = [v22 currentPlaybackState];

    if (v23)
    {
      v24 = [MEMORY[0x277D28D48] sharedPlaybackController];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __43__Application__applicationDidBecomeActive___block_invoke;
      v25[3] = &unk_2781D4D18;
      v25[4] = self;
      [v24 updateContentIdentifierOnQueue:MEMORY[0x277D85CD0] completion:v25];
    }

    [v16 reportCustomizationSyncEnablement:v20];
  }
}

void __43__Application__applicationDidBecomeActive___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D28D48] sharedPlaybackController];
  [v4 setNowPlayingContentIdentifier:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) browserControllers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) tabController];
        v11 = [v10 activeTabDocument];
        [v11 updateShowsSiriReaderPlayingIcon];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Application will enter foreground", buf, 2u);
  }

  v5 = [MEMORY[0x277D28F08] settings];
  v6 = [v5 hasPrivateBrowsingWindow];

  [(WBSParsecDSession *)MEMORY[0x277D49FC8] sendLaunchFeedbackWithEvent:v6 isPrivate:[(Application *)self usesLoweredSearchBar] usesLoweredSearchBar:?];
  v7 = [MEMORY[0x277D49B18] sharedProxy];
  [v7 setUsesOpportunisticPushTopic:0];

  [(BrowserWindowController *)self->_browserWindowController updateCloudTabsForEnteringForeground];
  if ([MEMORY[0x277D49E28] shouldCloseTabsAutomaticallyWhenEnteringForeground])
  {
    [MEMORY[0x277D49E28] clearMostDistantLastViewedTime];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) tabController];
          [v13 closeTabsAutomaticallyIfNecessary];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }
  }

  +[ApplicationShortcutController updateShortcutItemsIfNeeded];
  [(Application *)self updateShouldLockPrivateBrowsingWithTimerIfNecessary];
  v14 = +[LaunchStateController sharedController];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__Application__applicationWillEnterForeground___block_invoke;
  v17[3] = &unk_2781D4D40;
  v17[4] = self;
  [v14 doAfterUIBecomesActive:v17];

  v15 = +[AppStoreReviewController sharedController];
  [v15 applicationDidEnterForeground];

  v16 = [(Application *)self tabGroupManager];
  [v16 enableDevicePresenceReporting];
}

uint64_t __47__Application__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPrivateBrowsingLocked];
  if (result)
  {
    result = [*(a1 + 32) _hasPrivateBrowserControllerActiveInAnyWindow];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 authenticateToUnlockPrivateBrowsingWithCompletionHandler:0];
    }
  }

  return result;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Application did enter background", buf, 2u);
  }

  +[ApplicationShortcutController updateShortcutItemsIfNeeded];
  [(Application *)self _performBookmarksDatabaseTasksInBackground];
  [(Application *)self _reportBookmarksDatabaseHealth];
  v5 = [MEMORY[0x277D49B18] sharedProxy];
  [v5 setUsesOpportunisticPushTopic:1];

  v6 = MEMORY[0x277D49FC8];
  v7 = [MEMORY[0x277D28F08] settings];
  +[WBSParsecDSession sendSuspendFeedbackWithEvent:isPrivate:](v6, 23, [v7 hasPrivateBrowsingWindow]);

  [(BrowserWindowController *)self->_browserWindowController updateCloudTabsForEnteringBackground];
  [(Application *)self _suspendOrResumeWallpaperAnimationIfNeeded];
  v8 = [MEMORY[0x277CDB8F8] sharedController];
  [v8 savePendingChanges];

  [MEMORY[0x277D28C50] applicationDidEnterBackground];
  v9 = self->_activeDownloads;
  activeDownloads = self->_activeDownloads;
  self->_activeDownloads = 0;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v9;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        v17 = [MEMORY[0x277CDB7A8] sharedManager];
        v18 = [v17 shouldExcludeDownloadFromList:v16];

        if (v18)
        {
          [v16 cancel];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  [(Application *)self updateShouldLockPrivateBrowsingWithTimerIfNecessary];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = [(Application *)self allWebExtensionsControllers];
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v26 + 1) + 8 * v23++) didDeactivateWindow];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v21);
  }

  v24 = [(Application *)self tabGroupManager];
  [v24 disableDevicePresenceReporting];

  v25 = [MEMORY[0x277D4A060] sharedInstance];
  [v25 donatePendingTabDataNowWithCompletionHandler:0];
}

- (void)_reportBookmarksDatabaseHealth
{
  bookmarksDatabaseHealthReporter = self->_bookmarksDatabaseHealthReporter;
  if (!bookmarksDatabaseHealthReporter)
  {
    v4 = objc_alloc_init(BookmarksDatabaseHealthReporter);
    v5 = self->_bookmarksDatabaseHealthReporter;
    self->_bookmarksDatabaseHealthReporter = v4;

    bookmarksDatabaseHealthReporter = self->_bookmarksDatabaseHealthReporter;
  }

  [(BookmarksDatabaseHealthReporter *)bookmarksDatabaseHealthReporter reportDatabaseHealth];
}

- (void)_performBookmarksDatabaseTasksInBackground
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = v3;
  if (self->_bookmarksDatabaseBackgroundTaskIdentifier == *MEMORY[0x277D767B0] && v3 != 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Performing bookmarks database background tasks", buf, 2u);
    }

    v7 = [objc_alloc(MEMORY[0x277D7B528]) initWithWebBookmarkCollectionClass:objc_opt_class()];
    bookmarksDatabaseBackgroundTaskLockAcquisitor = self->_bookmarksDatabaseBackgroundTaskLockAcquisitor;
    self->_bookmarksDatabaseBackgroundTaskLockAcquisitor = v7;

    [(WBDatabaseLockAcquisitor *)self->_bookmarksDatabaseBackgroundTaskLockAcquisitor setDelegate:self];
    v9 = *MEMORY[0x277D76620];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__Application__performBookmarksDatabaseTasksInBackground__block_invoke;
    v15[3] = &unk_2781D4D40;
    v15[4] = self;
    self->_bookmarksDatabaseBackgroundTaskIdentifier = [v9 beginBackgroundTaskWithName:@"com.apple.mobilesafari.PerformBookmarksDatabaseTasks" expirationHandler:v15];
    v10 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v11 = [v10 hasInMemoryChanges];

    v12 = 0.0;
    if (v11)
    {
      v13 = [MEMORY[0x277D499B8] sharedLogger];
      [v13 didEnterBackgroundWithBookmarksInMemory];

      v12 = 10.0;
    }

    v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v12;
      _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Attempting to acquire bookmark lock to perform background tasks with timeout %f", buf, 0xCu);
    }

    [(WBDatabaseLockAcquisitor *)self->_bookmarksDatabaseBackgroundTaskLockAcquisitor acquireLockWithTimeout:v12];
    [(Application *)self _saveFrequentlyVisitedListsToDatabaseIfNeeded];
  }
}

uint64_t __57__Application__performBookmarksDatabaseTasksInBackground__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57__Application__performBookmarksDatabaseTasksInBackground__block_invoke_cold_1();
  }

  result = [*(*(a1 + 32) + 512) releaseLock];
  v4 = *MEMORY[0x277D767B0];
  if (*(*(a1 + 32) + 504) != *MEMORY[0x277D767B0])
  {
    result = [*MEMORY[0x277D76620] endBackgroundTask:?];
    *(*(a1 + 32) + 504) = v4;
  }

  return result;
}

- (void)databaseLockAcquisitor:(id)a3 acquiredLock:(BOOL)a4
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__Application_databaseLockAcquisitor_acquiredLock___block_invoke;
  aBlock[3] = &unk_2781D4D40;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v8 = v7;
  if (a4)
  {
    [v7 applyInMemoryChangesToDatabase];

    [(Application *)self reloadReadingListWidgetIfNeeded];
    v6[2](v6);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__Application_databaseLockAcquisitor_acquiredLock___block_invoke_2;
    v9[3] = &unk_2781D4D90;
    v10 = v6;
    [v8 persistChangesWithCompletion:v9];
  }
}

uint64_t __51__Application_databaseLockAcquisitor_acquiredLock___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 512) releaseLock];
  v3 = *MEMORY[0x277D767B0];
  if (*(*(a1 + 32) + 504) != *MEMORY[0x277D767B0])
  {
    result = [*MEMORY[0x277D76620] endBackgroundTask:?];
    *(*(a1 + 32) + 504) = v3;
  }

  return result;
}

uint64_t __51__Application_databaseLockAcquisitor_acquiredLock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D499B8] sharedLogger];
  [v2 didSaveInMemoryBookmarksToSideFile];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_frequentlyVisitedSitesWereChanged:(id)a3
{
  v7 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pendingFrequentlyVisitedSites = self->_pendingFrequentlyVisitedSites;
    if (!pendingFrequentlyVisitedSites)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = self->_pendingFrequentlyVisitedSites;
      self->_pendingFrequentlyVisitedSites = v5;

      pendingFrequentlyVisitedSites = self->_pendingFrequentlyVisitedSites;
    }

    [(NSMutableSet *)pendingFrequentlyVisitedSites addObject:v7];
  }
}

- (void)_saveFrequentlyVisitedListsToDatabaseIfNeeded
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_pendingFrequentlyVisitedSites)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v3 = *MEMORY[0x277D76620];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke;
    v20[3] = &unk_2781D4BD8;
    v20[4] = &v21;
    v4 = [v3 beginBackgroundTaskWithName:@"com.apple.mobilesafari.PerformFrequentlyVisitedSitesTasks" expirationHandler:v20];
    v22[3] = v4;
    v5 = dispatch_group_create();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_pendingFrequentlyVisitedSites;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke_97;
          v14[3] = &unk_2781D4D40;
          v15 = v5;
          [v10 saveFrequentlyVisitedSitesToBookmarksDBWithCompletion:v14];
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
      }

      while (v7);
    }

    v11 = [(Application *)self tabGroupManager];
    [v11 disableSuddenTerminationForPendingChanges];

    pendingFrequentlyVisitedSites = self->_pendingFrequentlyVisitedSites;
    self->_pendingFrequentlyVisitedSites = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke_2;
    block[3] = &unk_2781D4BD8;
    block[4] = &v21;
    dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(&v21, 8);
  }
}

void __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke_cold_1();
  }

  v3 = *MEMORY[0x277D767B0];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    [*MEMORY[0x277D76620] endBackgroundTask:?];
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }
}

uint64_t __60__Application__saveFrequentlyVisitedListsToDatabaseIfNeeded__block_invoke_2(uint64_t result)
{
  v1 = *MEMORY[0x277D767B0];
  if (*(*(*(result + 32) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    v2 = result;
    result = [*MEMORY[0x277D76620] endBackgroundTask:?];
    *(*(*(v2 + 32) + 8) + 24) = v1;
  }

  return result;
}

- (void)didReceiveMemoryWarning
{
  performBlockForBrowserControllers(&__block_literal_global_100);
  v3.receiver = self;
  v3.super_class = Application;
  [(Application *)&v3 didReceiveMemoryWarning];
}

+ (unint64_t)systemMemorySize
{
  if (systemMemorySize___once != -1)
  {
    +[Application systemMemorySize];
  }

  return systemMemorySize_systemPhysicalMemorySize;
}

void __31__Application_systemMemorySize__block_invoke()
{
  v6 = 0u;
  v7 = 0u;
  *host_info_out = 0u;
  v0 = MEMORY[0x216074D40]();
  host_info_outCnt = 12;
  v1 = host_info(v0, 1, host_info_out, &host_info_outCnt);
  mach_port_deallocate(*MEMORY[0x277D85F48], v0);
  if (v1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __31__Application_systemMemorySize__block_invoke_cold_1(v2, v1);
    }
  }

  v3 = log2(*(&v7 + 1));
  systemMemorySize_systemPhysicalMemorySize = exp2(ceil(v3));
}

- (void)handleKeyUIEvent:(id)a3
{
  v4 = a3;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if ((useUIResponderMethodsForModifierFlags_flag & 1) == 0)
  {
    self->_currentKeyboardModifierFlags = [v4 _modifierFlags];
  }

  v5.receiver = self;
  v5.super_class = Application;
  [(Application *)&v5 handleKeyUIEvent:v4];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [v7 modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesBegan:v6 withEvent:v7];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [v7 modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesChanged:v6 withEvent:v7];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [v7 modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesEnded:v6 withEvent:v7];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [v7 modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesCancelled:v6 withEvent:v7];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = Application;
  [(Application *)&v11 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = [MEMORY[0x277D75730] mainSystem];

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277D28BF0] sharedProvider];
    v8 = [(Application *)self _sortedBrowserControllers];
    v9 = [v8 firstObject];
    v10 = [v9 rootViewController];
    [v7 setAlwaysAllowWebInterception:{objc_msgSend(v10, "isInYttriumMode")}];

    [v7 setMenusForSafariWithBuilder:v4];
  }
}

- (void)userDefaultsDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = Application;
  [(Application *)&v4 userDefaultsDidChange:a3];
  if (self->_finishedLaunching)
  {
    if ([(Application *)self isSuspended])
    {
      self->_shouldReadDefaultsOnResume = 1;
    }

    else
    {
      [(Application *)self _readDefaults];
    }
  }
}

- (void)_reloadSearchEngines
{
  v2 = [MEMORY[0x277CDB8A8] sharedInstance];
  [v2 reloadSearchEngines];
}

void __52__Application__managedProfileConfigurationDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateJavaScriptPreferences];
  [v2 fraudWarningsToggled];
  [v2 updatePrivateBrowsingAvailabilityWithCompletionHandler:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (userDefaultsObserverContext == a6)
  {
    v12 = *MEMORY[0x277CCA300];
    v13 = a5;
    v11 = [v13 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    if (v11 | v14 && ([v11 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __62__Application_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_2781D4C88;
      v16 = v10;
      v17 = self;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = Application;
    v11 = a5;
    [(Application *)&v18 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

void __62__Application_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D49DA8]])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:*MEMORY[0x277D4A498] object:0];
LABEL_3:

    return;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D29290]] || objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x277D29278]))
  {
    v2 = *(a1 + 40);

    [v2 _reloadSearchEngines];
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:*MEMORY[0x277D49BF8]])
    {
      v4 = *MEMORY[0x277D4A348];
      if (![*(a1 + 32) isEqualToString:*MEMORY[0x277D4A348]])
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __62__Application_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v6[3] = &unk_2781D4DD8;
        v7 = *(a1 + 32);
        performBlockForBrowserControllers(v6);

        return;
      }

      v5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [*(a1 + 40) setPrivateBrowsingRequiresAuthentication:{objc_msgSend(v5, "BOOLForKey:", v4)}];
      goto LABEL_3;
    }

    v3 = *(a1 + 40);

    [v3 _didEnableCustomizationSync];
  }
}

- (unint64_t)_numberOfTabsForPrivateBrowsing:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__Application__numberOfTabsForPrivateBrowsing___block_invoke;
  v5[3] = &unk_2781D4E00;
  v5[4] = &v7;
  v6 = a3;
  performBlockForBrowserControllers(v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __47__Application__numberOfTabsForPrivateBrowsing___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v5 = v3;
  if (*(a1 + 40))
  {
    [v3 privateTabs];
  }

  else
  {
    [v3 normalTabs];
  }
  v4 = ;
  *(*(*(a1 + 32) + 8) + 24) += [v4 count];
}

- (unint64_t)maximumTabCountAllowingMoreTabs:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:@"DebugOverrideTabCapacity"];

  if ([MEMORY[0x277D49A08] hasInternalContent])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (highTabCapacityDevice)
    {
      if (+[(WBUFeatureManager *)FeatureManager]== 2)
      {
        v7 = 200;
      }

      else
      {
        v8 = [MEMORY[0x277D28C70] sharedFeatureManager];
        if (([v8 allowsUnlimitedTabs] & v3) != 0)
        {
          v7 = 5000;
        }

        else
        {
          v7 = 500;
        }
      }
    }

    else
    {
      v7 = 36;
    }
  }

  else if ([v5 integerValue] == -1)
  {
    v7 = -1;
  }

  else
  {
    v7 = [v5 integerValue];
  }

  return v7;
}

- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(Application *)self primaryBrowserController];
    v6 = [v5 isPrivateBrowsingAvailable];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(Application *)self _numberOfTabsForPrivateBrowsing:v3];
  return v7 < [(Application *)self maximumTabCount];
}

- (AutomationController)automationController
{
  automationController = self->_automationController;
  if (!automationController)
  {
    v4 = objc_alloc_init(AutomationController);
    v5 = self->_automationController;
    self->_automationController = v4;

    automationController = self->_automationController;
  }

  return automationController;
}

id __52__Application__prewarmAutomationControllerIfEnabled__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[88])
  {
    v3 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v3 removeObserver:*(*(a1 + 32) + 704) name:*MEMORY[0x277CDB980] object:0];

    v4 = *(a1 + 32);
    v5 = *(v4 + 704);
    *(v4 + 704) = 0;

    v2 = *(a1 + 32);
  }

  return [v2 automationController];
}

- (void)_handleHIDEvent:(__IOHIDEvent *)a3
{
  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 _handleHIDEvent:?];
  v5 = [(AutomationController *)self->_automationController automationSession];

  if (v5)
  {
    v6 = [NSClassFromString(@"_WKTouchEventGenerator") sharedTouchEventGenerator];
    v7 = v6;
    if (v6)
    {
      [v6 receivedHIDEvent:a3];
    }
  }
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v116 = a3;
  v118 = a4;
  objc_initWeak(&location, self);
  v6 = WBS_LOG_CHANNEL_PREFIXSignposts();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LaunchToFirstLoad", "", buf, 2u);
  }

  v7 = [*MEMORY[0x277D76620] supportsMultipleScenes];
  [MEMORY[0x277D28F00] setShouldMergeAllWindowsIfNeeded:v7 ^ 1u];
  +[WebBookmarkCollection observeDatabaseVacuumNotification];
  v8 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [MEMORY[0x277D4A010] overrideSystemProxiesIfNeeded:v8];
  v9 = [MEMORY[0x277D4A0A0] shared];
  [v9 performDelayedLaunchOperations];

  v10 = objc_alloc(MEMORY[0x277D28F58]);
  v11 = [MEMORY[0x277CCA8D8] safari_safariInjectedBundleURL];
  v12 = MEMORY[0x277CBEBC0];
  v13 = _SFSafariIconImageCacheDirectoryPath();
  v14 = [v12 fileURLWithPath:v13 isDirectory:1];
  v125 = [v10 initWithInjectedBundleURL:v11 imageCacheDirectoryURL:v14 cacheIsReadOnly:0 metadataType:383];

  [MEMORY[0x277D28F58] setSharedSiteMetadataManager:v125];
  v15 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [v15 webui_applySafariCookieAcceptPolicy];

  [MEMORY[0x277CDB8A8] loadSystemLanguageProperties];
  v16 = +[FeatureManager sharedFeatureManager];
  v17 = MEMORY[0x277D49B68];
  v18 = [MEMORY[0x277CDB8A8] sharedInstance];
  [v17 setUpSharedObserverWithSearchProviderContext:v18];

  v19 = *MEMORY[0x277D49BD8];
  v120 = [(Application *)self webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];
  v20 = objc_alloc(MEMORY[0x277CDB850]);
  v21 = [(Application *)self tabGroupManager];
  v121 = [v20 initWithExtensionsController:v120 profileProvider:v21];

  v22 = [MEMORY[0x277CCA9A0] defaultCenter];
  v23 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49BE8]];
  [v22 addObserver:self selector:sel__didEnableCustomizationSync name:v23 object:0];

  v24 = [(Application *)self tabGroupManager];
  v25 = [v24 defaultProfile];
  [(Application *)self _loadExtensionsInProfile:v25];

  v26 = [(Application *)self webExtensionsControllerForProfileServerID:v19];
  v27 = [MEMORY[0x277D28BF0] sharedProvider];
  [v27 setWebExtensionsController:v26];

  v28 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v29 = [MEMORY[0x277D28BF0] sharedProvider];
  [v29 setBookmarkCollection:v28];

  v30 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v31 = [MEMORY[0x277D28BF0] sharedProvider];
  [v31 setSiteMetadataManager:v30];

  v32 = objc_alloc_init(HistoryListMenuProvider);
  v33 = [MEMORY[0x277D28BF0] sharedProvider];
  [v33 setHistoryListProvider:v32];

  v34 = objc_alloc_init(RecentlyClosedTabsMenuProvider);
  v35 = [MEMORY[0x277D28BF0] sharedProvider];
  [v35 setRecentlyClosedTabsProvider:v34];

  v36 = objc_alloc_init(OpenNewDocumentMenuProvider);
  v37 = [MEMORY[0x277D28BF0] sharedProvider];
  [v37 setOpenNewDocumentProvider:v36];

  v126 = [(Application *)self tabGroupManager];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v38 = [v126 namedProfiles];
  v39 = [v38 countByEnumeratingWithState:&v136 objects:v142 count:16];
  if (v39)
  {
    v40 = *v137;
    do
    {
      v41 = 0;
      do
      {
        if (*v137 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = [*(*(&v136 + 1) + 8 * v41) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:v42];

        ++v41;
      }

      while (v39 != v41);
      v39 = [v38 countByEnumeratingWithState:&v136 objects:v142 count:16];
    }

    while (v39);
  }

  [(Application *)self _setWKWebsiteDataStoreDelegate];
  v43 = MEMORY[0x277D28D40];
  v44 = [(Application *)self proxy];
  [v43 setApplicationProxy:v44];

  [(Application *)self _readFocusConfigurationKeys];
  v45 = [MEMORY[0x277CCA9A0] defaultCenter];
  v46 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49CF8]];
  [v45 addObserver:self selector:sel__profileFocusConfigurationChanged name:v46 object:0];

  v47 = [MEMORY[0x277CCA9A0] defaultCenter];
  v48 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49D98]];
  [v47 addObserver:self selector:sel__tabGroupFocusConfigurationChanged name:v48 object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, deviceDidLock, @"com.apple.springboard.lockcomplete", 0, 1024);
  [(Application *)self updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing];
  if (([v126 hasCompletedMigration] & 1) == 0 && objc_msgSend(v126, "isPersistent"))
  {
    +[SharedDataMigration migrateTabDatabaseIfNeeded];
  }

  v124 = [v126 browserState];
  v50 = [PinnedTabsManager alloc];
  v51 = [v126 tabCollection];
  v119 = [(PinnedTabsManager *)v50 initWithBrowserState:v124 tabCollection:v51];

  v52 = [BrowserWindowController alloc];
  v53 = [(Application *)self supportsMultipleScenes];
  v54 = [objc_opt_class() browserControllerUIDelegateProvider];
  v55 = [(BrowserWindowController *)v52 initWithTabGroupManager:v126 browserState:v124 pinnedTabsManager:v119 perSitePreferencesVendor:v121 shouldMergeAllWindowsIfNeeded:v53 ^ 1u browserControllerUIDelegateProvider:v54];
  browserWindowController = self->_browserWindowController;
  self->_browserWindowController = v55;

  [(Application *)self _pruneExpiredBrowserScenes];
  v57 = [(BrowserWindowController *)self->_browserWindowController browserControllers];
  v58 = [v57 count];

  if (v58)
  {
    v59 = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    v60 = [v59 firstObject];
    v61 = [v60 processPool];
    [v61 _warmInitialProcess];
  }

  v62 = *MEMORY[0x277D29208];
  v122 = [v8 objectForKey:*MEMORY[0x277D29208]];
  if (v122)
  {
    if (([v122 BOOLValue] & 1) == 0)
    {
      v63 = [v121 sharedUserMediaPermissionController];
      v64 = [v63 cameraMediaCapturePreference];
      [v63 setDefaultValue:&unk_2827FBEA8 ofPreference:v64 completionHandler:0];

      v65 = [v63 microphoneMediaCapturePreference];
      [v63 setDefaultValue:&unk_2827FBEA8 ofPreference:v65 completionHandler:0];

      [MEMORY[0x277CCA9A0] _sf_postPerSitePreferencesDidChangeDistributedNotification];
    }

    [v8 removeObjectForKey:v62];
  }

  [(Application *)self _prewarmAutomationControllerIfEnabled];
  v66 = [MEMORY[0x277D49B18] sharedProxy];
  [v66 setUsesOpportunisticPushTopic:0];

  if (([v8 BOOLForKey:@"didMigrateHistoryToCoreSpotlightAfterUpgrade"] & 1) == 0)
  {
    [(Application *)self performSelector:sel__export30DaysWorthOfHistoryAfterUpgrade withObject:0 afterDelay:60.0];
  }

  v123 = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [v123 registerObserver:self];
  }

  else
  {
    [v123 addObserver:self];
  }

  v67 = [MEMORY[0x277CCAB98] defaultCenter];
  [v67 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:self];
  [v67 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:self];
  [v67 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:self];
  [v67 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:self];
  [v67 addObserver:self selector:sel__updateKeyboardCorrectionLearningAllowed name:*MEMORY[0x277D76BA8] object:0];
  [v67 addObserver:self selector:sel__historyHostnamesWereRemoved_ name:*MEMORY[0x277D4A218] object:0];
  [v67 addObserver:self selector:sel__historyWasCleared_ name:*MEMORY[0x277D4A240] object:0];
  [v67 addObserver:self selector:sel__historyItemsWereRemoved_ name:*MEMORY[0x277D4A230] object:0];
  [v67 addObserver:self selector:sel__frequentlyVisitedSitesWereChanged_ name:*MEMORY[0x277D4A8F0] object:0];
  [(Application *)self _clearInvalidCertificateBypassesOlderThanOneWeek];
  v68 = *MEMORY[0x277D291F0];
  if (([v8 BOOLForKey:*MEMORY[0x277D291F0]] & 1) == 0)
  {
    [MEMORY[0x277CDB838] clearOldCertificateBypasses];
    [v8 setBool:1 forKey:v68];
  }

  v69 = [MEMORY[0x277CCABD8] mainQueue];
  v70 = *MEMORY[0x277D77320];
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke;
  v135[3] = &unk_2781D4E28;
  v135[4] = self;
  v71 = [v67 addObserverForName:v70 object:self queue:v69 usingBlock:v135];
  v72 = [v67 addObserverForName:*MEMORY[0x277D4A118] object:0 queue:0 usingBlock:&__block_literal_global_189_0];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _localeChanged, *MEMORY[0x277CBEEB0], 0, 1025);
  v74 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v74, self, _carrierBundledChanged, *MEMORY[0x277CC3B48], 0, 1024);
  [v67 addObserver:self selector:sel__appleKeyboardsChanged_ name:@"AppleKeyboardsPreferencesChangedNotification" object:0];
  CFNotificationCenterAddObserver(v74, self, _autoFillStateChanged, @"com.apple.mobilesafari.AutoFillStateChanged", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, _quickWebsiteSearchProvidersChanged, @"com.apple.mobilesafari.QuickWebsiteSearchProvidersDidChange", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, _webFilterSettingsDidChange, *MEMORY[0x277D7B5E0], 0, 1024);
  CFNotificationCenterAddObserver(v74, self, siriSuggestionsStateDidChange, @"com.apple.suggestions.settingsChanged", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, screenTimeRestrictionsStateDidChange, screenTimeManagementStateDidChangeNotification, 0, 1024);
  CFNotificationCenterAddObserver(v74, self, screenTimeRestrictionsStateDidChange, screenTimePasscodeStateDidChangeNotification, 0, 1024);
  CFNotificationCenterAddObserver(v74, self, safariSettingsChangedExtensionSettings, @"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings", 0, 1024);
  v75 = *MEMORY[0x277D4A9B0];
  v76 = [v67 addObserverForName:*MEMORY[0x277D4A9B0] object:0 queue:v69 usingBlock:&__block_literal_global_198];
  v77 = [v67 addObserverForName:v75 object:0 queue:v69 usingBlock:&__block_literal_global_200];
  v78 = [v67 addObserverForName:*MEMORY[0x277D4A1F0] object:0 queue:v69 usingBlock:&__block_literal_global_200];
  v79 = [v67 addObserverForName:*MEMORY[0x277D4A1F8] object:0 queue:v69 usingBlock:&__block_literal_global_200];
  v80 = [v67 addObserverForName:*MEMORY[0x277D4A200] object:0 queue:v69 usingBlock:&__block_literal_global_200];
  v81 = *MEMORY[0x277D4A3A0];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_8;
  v134[3] = &unk_2781D4E28;
  v134[4] = self;
  v82 = [v67 addObserverForName:v81 object:0 queue:v69 usingBlock:v134];
  v83 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v83 addObserver:self selector:sel__updateCloudFeatureAvailability name:*MEMORY[0x277D7B5F0] object:0];

  [(Application *)self _updateCloudFeatureAvailability];
  CFNotificationCenterAddObserver(v74, self, contentBlockerDidChange, *MEMORY[0x277CDB920], 0, 1028);
  v84 = CFLocaleCopyCurrent();
  [History localeChanged:v84];
  CFRelease(v84);
  [MEMORY[0x277D7B7F0] scheduleEmptyDatabaseRemoval];
  [(Application *)self _readDefaults];
  [(Application *)self setReceivesMemoryWarnings:1];
  v85 = [MEMORY[0x277D28D60] sharedTracker];
  [v85 load];

  v86 = [MEMORY[0x277D28C90] sharedTracker];
  [v86 load];

  [MEMORY[0x277D4A820] warmUp];
  tabGroupManager = self->_tabGroupManager;
  v88 = [MEMORY[0x277D4A820] defaultManager];
  [(WBTabGroupManager *)tabGroupManager addTabGroupObserver:v88];

  [(Application *)self _showSearchEngineAlertIfNeeded];
  if (SFDeviceSupportsPointerInteractions())
  {
    v89 = [MEMORY[0x277CBEB58] set];
    pointerDevices = self->_pointerDevices;
    self->_pointerDevices = v89;

    self->_pointerDeviceLock._os_unfair_lock_opaque = 0;
    v91 = [MEMORY[0x277CF0720] sharedInstance];
    v92 = [v91 addPointerDeviceObserver:self];
    pointerDeviceObserverToken = self->_pointerDeviceObserverToken;
    self->_pointerDeviceObserverToken = v92;
  }

  self->_finishedLaunching = 1;
  v94 = [(Application *)self tabGroupManager];
  [v94 addTabGroupObserver:self];

  [(Application *)self prewarmAndRemoveOrphanedProfileDataStores];
  v95 = +[TabSnapshotCache defaultSnapshotCache];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_10;
  v132[3] = &unk_2781D4E98;
  objc_copyWeak(&v133, &location);
  [v95 setPersistentIdentifiersProvider:v132];
  v96 = +[FallbackTabSnapshotCacheProvider defaultProvider];
  [v96 setURLProviderWithTabGroupManager:self->_tabGroupManager];
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_12;
  v130[3] = &unk_2781D4EE8;
  objc_copyWeak(&v131, &location);
  [v96 setSizingProviders:v130];
  [v95 setFallbackProvider:v96];
  [(Application *)self _addDefaultsObserver];
  v97 = self->_tabGroupManager;
  v98 = [v125 tabGroupIconProvider];
  [(WBTabGroupManager *)v97 addTabGroupObserver:v98];

  [(Application *)self _reportLaunchAnalyticsSoon];
  if ([MEMORY[0x277D49A08] hasInternalContent])
  {
    [(Application *)self _connectToCyclerIfNecessary];
  }

  [v67 addObserver:self selector:sel__webBookmarksDidReload name:*MEMORY[0x277D7B608] object:0];
  [v67 addObserver:self selector:sel__webBookmarksDidReload name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
  v99 = [MEMORY[0x277D7B588] sharedProxy];
  [v99 scheduleSyncIfNeeded];

  v100 = [MEMORY[0x277CDB7A8] sharedManager];
  [v100 setExtraDownloadDelegate:self];

  [v67 addObserver:self selector:sel__downloadDidStartNotification_ name:*MEMORY[0x277CDB998] object:0];
  [v67 addObserver:self selector:sel__downloadDidStopNotification_ name:*MEMORY[0x277CDB9A0] object:0];
  [MEMORY[0x277D28F40] registerBookmarkCollectionFactory:&__block_literal_global_226];
  v101 = objc_alloc_init(MEMORY[0x277D49FB0]);
  offlineSearchSuggestionsModelUpdateManager = self->_offlineSearchSuggestionsModelUpdateManager;
  self->_offlineSearchSuggestionsModelUpdateManager = v101;

  v103 = +[LaunchStateController sharedController];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_15;
  v127[3] = &unk_2781D4F30;
  objc_copyWeak(&v129, &location);
  v104 = v8;
  v128 = v104;
  [v103 doAfterUIBecomesActive:v127];

  [(Application *)self lockPrivateBrowsing];
  v105 = objc_alloc_init(MEMORY[0x277D4A718]);
  backgroundImageAssetController = self->_backgroundImageAssetController;
  self->_backgroundImageAssetController = v105;

  [(WBSBackgroundImageAssetController *)self->_backgroundImageAssetController setDelegate:self];
  v107 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v108 = [v107 BOOLForKey:*MEMORY[0x277D4A1E8]];

  if (v108)
  {
    v109 = [(WBSCompletionListVendorForHistoryService *)[CompletionListVendorForHistoryService alloc] initWithDataSource:self];
    completionListVendorForHistoryService = self->_completionListVendorForHistoryService;
    self->_completionListVendorForHistoryService = v109;
  }

  v111 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  [v111 setIndexDelegate:self];

  [(Application *)self _showExtensionPermissionBannerIfNecessary];
  [v67 addObserver:self selector:sel_reloadContentBlockers name:*MEMORY[0x277D49C20] object:0];
  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    v112 = [MEMORY[0x277CE2028] currentNotificationCenter];
    [v112 setDelegate:self];
  }

  if ([MEMORY[0x277D49A08] isWAPEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [MEMORY[0x277CE3868] _setWebPushActionHandler:&__block_literal_global_247];
  }

  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    v113 = [MEMORY[0x277CCAB98] defaultCenter];
    [v113 addObserver:self selector:sel_webClipCacheDidChange_ name:*MEMORY[0x277CDB970] object:0];

    [(Application *)self webClipCacheDidChange:0];
  }

  v114 = [MEMORY[0x277D49F50] standardStore];
  [v114 removeObsoleteDatabase];

  objc_destroyWeak(&v129);
  objc_destroyWeak(&v131);

  objc_destroyWeak(&v133);
  objc_destroyWeak(&location);

  return 1;
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _systemNavigationAction];

  if (!v1)
  {

    performBlockForBrowserControllers(&__block_literal_global_187);
  }
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_4;
  block[3] = &unk_2781D4D40;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277D4A120]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = SafariHistoryCloudBackupIndicatorFileURL();
    if ([v5 BOOLValue])
    {
      v3 = [MEMORY[0x277CCAA00] defaultManager];
      [v3 removeItemAtURL:v2 error:0];
    }

    else
    {
      v4 = fopen([v2 fileSystemRepresentation], "w");
      fclose(v4);
    }
  }
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 safari_BOOLForKey:*MEMORY[0x277D4A9B8]];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 postNotificationName:*MEMORY[0x277D4A9F0] object:0];
  }
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 activeWebExtensionWindow];
  [v2 validateExtensionToolbarItemsInWindow:v3];
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 safari_stringForKey:*MEMORY[0x277D4A390]];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 safari_stringForKey:*MEMORY[0x277D4A398]];

    v8 = [*(a1 + 32) webExtensionsControllerForProfileServerID:v7];
    v9 = [v8 webExtensionForComposedIdentifier:v5];
    if (v9)
    {
      v10 = [*(a1 + 32) browserControllers];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_9;
      v12[3] = &unk_2781D4E70;
      v13 = v7;
      v11 = [v10 safari_firstObjectPassingTest:v12];

      if (v11)
      {
        [v11 webExtensionWasRemotelyEnabled:v9];
        [v8 remotelyEnabledExtensionBannerWasShownForComposedIdentifier:v5];
      }
    }
  }
}

uint64_t __57__Application_application_didFinishLaunchingWithOptions___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = [a2 activeProfile];
  v4 = [v3 identifierForExtensions];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __57__Application_application_didFinishLaunchingWithOptions___block_invoke_10(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_11;
    v15[3] = &unk_2781D4DD8;
    v3 = v2;
    v16 = v3;
    performBlockForBrowserControllers(v15);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [WeakRetained[75] allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) tabsUUIDSet];
          [v3 unionSet:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 tabCollectionViewProvider];
  v6 = [v5 allSnapshotIdentifiers];
  [v3 unionSet:v6];

  v7 = *(a1 + 32);
  v8 = [v4 windowState];
  v9 = [v8 localTabGroup];
  v10 = [v9 tabsUUIDSet];
  [v7 unionSet:v10];

  v11 = *(a1 + 32);
  v14 = [v4 windowState];

  v12 = [v14 privateTabGroup];
  v13 = [v12 tabsUUIDSet];
  [v11 unionSet:v13];
}

id __57__Application_application_didFinishLaunchingWithOptions___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_13;
    v10[3] = &unk_2781D4EC0;
    v11 = v3;
    v6 = v5;
    v12 = v6;
    performBlockForBrowserControllers(v10);
    v7 = v12;
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v9 = [(TabController *)v3 tabCollectionViewManager];

  v4 = [v9 snapshotPool];
  v5 = [v4 visibilityForIdentifier:*(a1 + 32)];
  v6 = [v5 tier];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 tabThumbnailCollectionView];
    [v7 addObject:v8];
  }
}

void __57__Application_application_didFinishLaunchingWithOptions___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    [WeakRetained _didEnableCustomizationSync];
    v3 = *MEMORY[0x277D49CD8];
    v4 = [*(a1 + 32) BOOLForKey:*MEMORY[0x277D49CD8]];
    v5 = [*(a1 + 32) BOOLForKey:*MEMORY[0x277D49BF8]];
    if ((v4 & 1) == 0 && v5 && v17[113])
    {
      [*(a1 + 32) setBool:1 forKey:v3];
      [v17[113] syncPerSiteSettingsUpWithCompletion:&__block_literal_global_229];
      [v17[113] syncPerSiteSettingsDownWithCompletion:&__block_literal_global_231];
    }

    v6 = +[SafariCloudBookmarksMigrationCoordinator migrationCoordinator];
    [v6 startCoordinatingMigration];

    [v17[96] checkForModelUpdatesOrRemoteDisablementIfNeeded];
    v7 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    [v7 fetchAvailableVoiceLanguages];

    v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v9 = [[BookmarkImporter alloc] initWithBookmarkCollection:v8];
    [(BookmarkImporter *)v9 importBuiltinBookmarks];
    v10 = [v8 bookmarksInFavoritesList];
    v11 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v12 = [v10 safari_prefixWithMaxLength:60];
    [v11 scheduleLowPriorityRequestForBookmarks:v12];

    v13 = [MEMORY[0x277D49B58] sharedStore];
    [v13 setShouldWarmDataStoreAfterReset:1];

    v14 = objc_alloc_init(SpotlightBookmarksDonationWriter);
    v15 = v17[98];
    v17[98] = v14;

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    LOBYTE(v12) = [v16 BOOLForKey:*MEMORY[0x277D4A1C0]];

    if ((v12 & 1) == 0)
    {
      [v17[98] donateAllBookmarks];
    }

    WeakRetained = v17;
  }
}

id __57__Application_application_didFinishLaunchingWithOptions___block_invoke_18(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXPush();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138739971;
    v7 = v2;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Handling web push action %{sensitive}@ with default data store", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CE3868] safari_defaultDataStore];

  return v4;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 actionIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CE20E8]];

  if (v10)
  {
    v11 = [MEMORY[0x277CE38C0] _webPushActionWithNotificationResponse:v7];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 webClipIdentifier];
      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_11;
      }

      v13 = [v7 notification];
      v14 = [v13 sourceIdentifier];
      v15 = [v14 hasPrefix:@"com.apple.WebKit.PushBundle."];

      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = [v7 notification];
      v17 = [v16 sourceIdentifier];
      v18 = [v17 substringFromIndex:28];

      v28 = MEMORY[0x277CCACA8];
      v27 = [v18 substringWithRange:{0, 8}];
      v19 = [v18 substringWithRange:{8, 4}];
      v20 = [v18 substringWithRange:{12, 4}];
      v21 = [v18 substringWithRange:{16, 4}];
      v22 = [v18 substringWithRange:{20, 12}];
      v23 = [v28 stringWithFormat:@"%@-%@-%@-%@-%@", v27, v19, v20, v21, v22];

      v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    v24 = WBS_LOG_CHANNEL_PREFIXWebClips();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v30 = v12;
      v31 = 2117;
      v32 = v7;
      _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "Activating clip with identifier %{public}@ in response to notification response %{sensitive}@", buf, 0x16u);
    }

    v25 = [(Application *)self _sortedBrowserControllers];
    v26 = [v25 firstObject];

    [v26 activateWebClipWithID:v12];
    goto LABEL_11;
  }

LABEL_12:
  [MEMORY[0x277CE3868] handleNotificationResponse:v7];
  v8[2](v8);
}

- (void)webClipCacheDidChange:(id)a3
{
  v4 = [MEMORY[0x277CDB748] sharedWebClipCache];
  v5 = [v4 webClipURLs];

  if (v5)
  {
    v6 = [MEMORY[0x277CE3868] safari_defaultDataStore];
    [v6 _setPersistedSites:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__Application_webClipCacheDidChange___block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__Application_webClipCacheDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) browserControllers];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) webClipCacheDidChange];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)tabGroupManager:(id)a3 didInsertProfileWithIdentifier:(id)a4
{
  [(Application *)self prewarmAndRemoveOrphanedProfileDataStores:a3];

  [(Application *)self _setWKWebsiteDataStoreDelegate];
}

void __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke_263(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke_263_cold_1(a1, v4);
    }
  }
}

- (void)_initializeProcessPoolForProfileIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(NSMutableDictionary *)self->_processPools objectForKeyedSubscript:v9];

  v5 = v9;
  if (!v4)
  {
    if (!self->_processPools)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      processPools = self->_processPools;
      self->_processPools = v6;
    }

    v8 = +[BrowserController newProcessPool];
    [(NSMutableDictionary *)self->_processPools setObject:v8 forKeyedSubscript:v9];
    if (self->_objectsForProcessPoolBundleParameters)
    {
      [(WKProcessPool *)v8 _setObjectsForBundleParametersWithDictionary:?];
    }

    v5 = v9;
  }
}

- (id)processPoolForProfileIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(Application *)self _initializeProcessPoolForProfileIdentifier:v4];
    v5 = [(NSMutableDictionary *)self->_processPools objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setObject:(id)a3 forInjectedBundleParameter:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_objectsForProcessPoolBundleParameters)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    objectsForProcessPoolBundleParameters = self->_objectsForProcessPoolBundleParameters;
    self->_objectsForProcessPoolBundleParameters = v8;
  }

  v10 = [v6 copy];
  [(NSMutableDictionary *)self->_objectsForProcessPoolBundleParameters setObject:v10 forKeyedSubscript:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(Application *)self allProcessPools];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) _setObject:v6 forBundleParameter:v7];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (BOOL)hasAnyInstalledExtensionsInAnyProfile
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(Application *)self allWebExtensionsControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasAnyEnabledExtensions])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_userContentControllerForProfileServerID:(id)a3
{
  v4 = a3;
  profileServerIDToUserContentController = self->_profileServerIDToUserContentController;
  if (!profileServerIDToUserContentController)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_profileServerIDToUserContentController;
    self->_profileServerIDToUserContentController = v6;

    profileServerIDToUserContentController = self->_profileServerIDToUserContentController;
  }

  v8 = [(NSMutableDictionary *)profileServerIDToUserContentController objectForKeyedSubscript:v4];
  if (!v8)
  {
    if ([v4 isEqualToString:*MEMORY[0x277D49BD8]])
    {
      v8 = [MEMORY[0x277CE3830] safari_userContentController];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CE3830]);
      if ([MEMORY[0x277D4A708] isAutoFillDrivenByUIProcess])
      {
        v9 = [MEMORY[0x277D4A708] sharedController];
        [v9 setUpScriptInjectionWithUserContentController:v8];
      }
    }

    [(NSMutableDictionary *)self->_profileServerIDToUserContentController setObject:v8 forKeyedSubscript:v4];
  }

  v10 = v8;

  return v10;
}

- (void)_createExtensionControllersIfNeededForProfileServerID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v4];
  if (v5)
  {
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [MEMORY[0x277D4A8B0] isProfileServerIDForDefaultProfile:v4];
      v8 = [(Application *)self _userContentControllerForProfileServerID:v4];
      v9 = [objc_alloc(MEMORY[0x277D28EE8]) initWithProfileServerID:v4 userContentController:v8];
      [v9 setDelegate:self];
      [v9 setProfileDelegate:self];
      v19 = [(Application *)self processPoolForProfileIdentifier:v4];
      [v9 setProcessPool:?];
      v10 = _SFApplicationNameForUserAgent();
      [v9 setApplicationNameForUserAgent:v10];

      [v9 setNavigationIntentHandler:self];
      [v9 initializeWebKitControllerIfNeededFromSettings:0];
      v11 = [MEMORY[0x277D4A720] sharedManager];
      [v11 addProvider:v9];

      v12 = [objc_alloc(MEMORY[0x277CDB6D8]) initWithUserContentController:v8 webExtensionsController:v9];
      [v12 setWebExtensionsController:v9];
      [v12 setDelegate:self];
      v13 = [MEMORY[0x277D4A720] sharedManager];
      [v13 addProvider:v12];

      if ((v7 & 1) == 0)
      {
        v14 = [MEMORY[0x277CDB6D8] contentBlockerStore];
        v20 = v8;
        WBSLoadBuiltInContentBlockersWithStore();
      }

      if (!self->_profileServerIDToWebExtensionsControllers)
      {
        v15 = [MEMORY[0x277CBEB38] dictionary];
        profileServerIDToWebExtensionsControllers = self->_profileServerIDToWebExtensionsControllers;
        self->_profileServerIDToWebExtensionsControllers = v15;
      }

      if (!self->_profileServerIDToContentBlockerManagers)
      {
        v17 = [MEMORY[0x277CBEB38] dictionary];
        profileServerIDToContentBlockerManagers = self->_profileServerIDToContentBlockerManagers;
        self->_profileServerIDToContentBlockerManagers = v17;
      }

      [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers setObject:v9 forKeyedSubscript:v4];
      [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers setObject:v12 forKeyedSubscript:v4];
      [v9 findExtensions];
    }
  }
}

uint64_t __69__Application__createExtensionControllersIfNeededForProfileServerID___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addContentRuleList:a2];
  }

  return result;
}

- (void)_deleteExtensionControllersForProfileServerID:(id)a3
{
  v4 = a3;
  v7 = [(Application *)self webExtensionsControllerForProfileServerID:v4];
  v5 = [(Application *)self contentBlockerManagerForProfileServerID:v4];
  [v7 unloadAndDeleteStateForAllExtensions];
  [v5 unloadAndDeleteStateForAllExtensions];
  v6 = [MEMORY[0x277D4A720] sharedManager];
  [v6 removeProvider:v7];
  [v6 removeProvider:v5];
  [v6 localExtensionStateDidChange];
  [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers setObject:0 forKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers setObject:0 forKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_profileServerIDToUserContentController setObject:0 forKeyedSubscript:v4];
}

- (id)webExtensionsControllerForTabWithPrivateBrowsingEnabled:(BOOL)a3 profile:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (!v4)
  {
    if (v6)
    {
      v8 = [v6 identifierForExtensions];
      v9 = [(Application *)self webExtensionsControllerForProfileServerID:v8];

      goto LABEL_7;
    }

    v10 = WBS_LOG_CHANNEL_PREFIXProfiles();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [Application webExtensionsControllerForTabWithPrivateBrowsingEnabled:profile:];
    }
  }

  v9 = [(Application *)self webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];
LABEL_7:

  return v9;
}

- (id)webExtensionsControllerForProfileServerID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [(Application *)self _createExtensionControllersIfNeededForProfileServerID:v4];
      v7 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v4];
    }

    v9 = v7;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXProfiles();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [Application webExtensionsControllerForProfileServerID:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)contentBlockerManagerForProfileServerID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [(Application *)self _createExtensionControllersIfNeededForProfileServerID:v4];
      v7 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:v4];
    }

    v9 = v7;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXProfiles();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [Application contentBlockerManagerForProfileServerID:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)loadExtensionsInProfileIfNecessary:(id)a3
{
  v7 = a3;
  v4 = [v7 identifierForExtensions];
  v5 = [(Application *)self webExtensionsControllerForProfileServerID:v4];
  v6 = [v5 loadEnabledExtensionsWasCalled];

  if ((v6 & 1) == 0)
  {
    [(Application *)self _loadExtensionsInProfile:v7];
  }
}

- (void)_loadExtensionsInProfile:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 138477827;
    v20 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Loading extensions in profile %{private}@", &v19, 0xCu);
  }

  v6 = [v4 identifierForExtensions];
  v7 = [(Application *)self webExtensionsControllerForProfileServerID:v6];

  v8 = MEMORY[0x277D4A8A0];
  v9 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v8 migrateStorageToPerProfileFormatIfNecessaryWithDefaults:v9];

  v10 = objc_alloc(MEMORY[0x277D4A8A8]);
  v11 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 safari_settingsDirectoryURL];
  v14 = [v10 initWithUserDefaults:v11 safariContainerSettingsDirectoryURL:v13];

  [v14 migrateSQLiteStorageToWebKitIfNecessary];
  [v7 loadEnabledExtensions];
  if ([v7 hasDiscoveredExtensions])
  {
    [v7 loadSuitableDiscoveredExtensions];
  }

  v15 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_INFO, "Creating SFContentBlockerManager", &v19, 2u);
  }

  v16 = [v4 identifierForExtensions];
  v17 = [(Application *)self contentBlockerManagerForProfileServerID:v16];

  v18 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = 138477827;
    v20 = v17;
    _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_INFO, "Calling reloadUserContentControllerReadingStateFromDisk on: %{private}@", &v19, 0xCu);
  }

  [v17 reloadUserContentControllerReadingStateFromDisk:0];
}

- (void)reloadContentBlockers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Reloading content blockers due to distributed notification", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(Application *)self allContentBlockerManagers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) reloadUserContentControllerReadingStateFromDisk:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(BrowserWindowController *)self->_browserWindowController perSitePreferencesVendor];
  v10 = [v9 contentBlockersPreferenceManager];
  [v10 checkForContentBlockers];
}

- (void)notifyExtensionControllersThatSettingsWereUpdatedExternallyFromSettingsApp
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(Application *)self allWebExtensionsControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) extensionSettingsWereUpdatedExternallyFromSettingsApp:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__Application__determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler___block_invoke;
  block[3] = &unk_2781D4D90;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __98__Application__determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CDB818] sharedObserver];
  v3 = [v2 doesUserHavePasscodeSet];

  v4 = [MEMORY[0x277CDB818] sharedObserver];
  [v4 biometryTypeCurrentlyAvailableForDevice];

  v5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v7 = [v5 objectForKey:*MEMORY[0x277D4A348]];

  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CDB818] sharedObserver];
      [v6 isUserEnrolledInBiometricAuthentication];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __45__Application__showSearchEngineAlertIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=SAFARI&path=SEARCH_ENGINE_SETTING"];
    v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v2 openSensitiveURL:v3 withOptions:0];
  }
}

void __41__Application__reportLaunchAnalyticsSoon__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  +[WBSParsecDSession sendLaunchFeedbackWithEvent:isPrivate:usesLoweredSearchBar:](MEMORY[0x277D49FC8], 7, *(a1 + 48), [*(a1 + 32) usesLoweredSearchBar]);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 safari_normalizedVersion];
  [v2 registerSafariVersion:v4 persona:3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__Application__reportLaunchAnalyticsSoon__block_invoke_2;
  block[3] = &unk_2781D4C88;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v45 = v5;
  v46 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = [v7 safari_isJavaScriptEnabled];
  v9 = [v7 BOOLForKey:*MEMORY[0x277D292A8]];
  v38 = v7;
  LODWORD(v7) = [v7 BOOLForKey:@"DisableWebsiteSpecificSearch"];
  v10 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  v11 = [v10 webui_safariCookieAcceptPolicyEnumValue];

  v39 = a1;
  [*(a1 + 40) reportUserPreferencesOnLaunchForJavaScriptEnabled:v8 safeBrowsingEnabled:v9 siteSpecificSearchEnabled:v7 ^ 1 trackingPolicy:v11];
  v12 = [&unk_2827FC2F8 mutableCopy];
  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [MEMORY[0x277CE3818] _experimentalFeatures];
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        v20 = [v19 key];
        v21 = [v12 objectForKeyedSubscript:v20];

        if (v21)
        {
          v22 = [MEMORY[0x277CBEBD0] safari_keyForWebKitFeature:v19];
          v23 = [v13 objectForKey:v22];
          v24 = [v19 key];
          [v12 setObject:v23 forKeyedSubscript:v24];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v16);
  }

  v37 = *(v39 + 40);
  v25 = [v12 objectForKeyedSubscript:@"WebXREnabled"];
  v26 = [v25 BOOLValue];
  v27 = [v12 objectForKeyedSubscript:@"WebXRGamepadsModuleEnabled"];
  v28 = [v27 BOOLValue];
  v29 = [v12 objectForKeyedSubscript:@"WebXRHandInputModuleEnabled"];
  v30 = [v29 BOOLValue];
  v31 = [v12 objectForKeyedSubscript:@"ModelElementEnabled"];
  [v37 reportExperimentalFeaturesOnLaunchForWebXREnabled:v26 webXRGamepadsModuleEnabled:v28 webXRHandInputModuleEnabled:v30 modelElementEnabled:{objc_msgSend(v31, "BOOLValue")}];

  v32 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v33 = [v32 preferredCapsuleLayoutStyle];

  v34 = [v38 BOOLForKey:*MEMORY[0x277D29000]];
  if ((_SFDeviceIsPad() & 1) == 0)
  {
    [*(v39 + 40) _sf_reportCapsuleLayoutStyle:v33 backgroundColorInTabBarEnabled:v34 ^ 1u];
  }

  v35 = *(v39 + 40);
  v36 = [*(v39 + 32) webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];
  [v35 _sf_performExtensionsReportIfNecessaryWithExtensionsController:v36];

  [*(v39 + 40) schedulePeriodicTabGroupsReport];
  [*(v39 + 40) schedulePeriodicPrivateBrowsingReport];
  [*(v39 + 40) schedulePeriodicSettingsReport];
  [*(v39 + 40) schedulePeriodicWebClipsReport];
  [*(v39 + 40) scheduleBrowsingAssistantReport];
  [*(v39 + 40) scheduleBookmarksAnalyticsReport];
  if (WBSIsiPad())
  {
    [*(v39 + 40) schedulePeriodicStandaloneTabBarReport];
  }
}

uint64_t __41__Application__reportLaunchAnalyticsSoon__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [MEMORY[0x277D49E28] automaticTabClosingInterval];
  v3 = WBSAutomaticTabClosingIntervalAnalyticsTitle();
  [v2 reportAutomaticTabClosingInterval:v3];

  v4 = objc_alloc_init(MEMORY[0x277D49B80]);
  v5 = *(a1 + 40);
  v6 = *(v5 + 696);
  *(v5 + 696) = v4;

  [*(*(a1 + 40) + 696) setDelegate:?];
  v7 = *(*(a1 + 40) + 696);

  return [v7 schedulePeriodicReport];
}

- (void)applicationWillTerminate
{
  v30 = *MEMORY[0x277D85DE8];
  [(BrowserWindowController *)self->_browserWindowController saveBrowserState];
  v3 = [MEMORY[0x277D4A028] sharedController];
  [v3 savePendingChangesBeforeTermination];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [v4 unregisterObserver:self];
  }

  else
  {
    [v4 removeObserver:self];
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"AppleKeyboardsPreferencesChangedNotification" object:0];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277CBEEB0], 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3B48], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobilesafari.AutoFillStateChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobilesafari.QuickWebsiteSearchProvidersDidChange", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CDB920], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimeManagementStateDidChangeNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimePasscodeStateDidChangeNotification, 0);
  v8 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v8 removeObserver:self];

  +[WebBookmarkCollection stopObservingDatabaseVacuumNotification];
  v9 = [MEMORY[0x277D49F50] standardStore];
  [v9 closeDatabase];

  v10 = MEMORY[0x277D49FC8];
  v11 = [MEMORY[0x277D28F08] settings];
  +[WBSParsecDSession sendSuspendFeedbackWithEvent:isPrivate:](v10, 1, [v11 hasPrivateBrowsingWindow]);

  v12 = [MEMORY[0x277D49B18] sharedProxy];
  [v12 setUsesOpportunisticPushTopic:1];

  [(WBSBackgroundImageAssetController *)self->_backgroundImageAssetController savePendingChangesBeforeTermination];
  v13 = [MEMORY[0x277D49EF0] standardStore];
  [v13 closeDatabase];

  v14 = [MEMORY[0x277CDB8F8] sharedController];
  [v14 savePendingChangesBeforeTermination];

  v15 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [v15 savePendingProviderChangesBeforeTermination];

  v16 = [MEMORY[0x277D7B830] sharedCreditCardDataController];
  [v16 savePendingChangesBeforeTermination];

  v17 = [MEMORY[0x277CDB7A8] sharedManager];
  [v17 savePendingChangesBeforeTermination];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(Application *)self allContentBlockerManagers];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * v22++) savePendingChangesBeforeTermination];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v23 = [MEMORY[0x277D49EA8] sharedManager];
  [v23 savePendingChangesBeforeTermination];

  v24 = [MEMORY[0x277D49B58] sharedStore];
  [v24 savePendingChangesBeforeTermination];
}

- (void)_export30DaysWorthOfHistoryAfterUpgrade
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v3 integerForKey:@"numberOfHistoryDonationAttempts"];
  if (v4 < 4)
  {
    [v3 setInteger:v4 + 1 forKey:@"numberOfHistoryDonationAttempts"];
    v6 = dispatch_get_global_queue(9, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__Application__export30DaysWorthOfHistoryAfterUpgrade__block_invoke;
    v7[3] = &unk_2781D4C88;
    v7[4] = self;
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    [v3 setBool:1 forKey:@"didMigrateHistoryToCoreSpotlightAfterUpgrade"];
    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [Application _export30DaysWorthOfHistoryAfterUpgrade];
    }
  }
}

void __54__Application__export30DaysWorthOfHistoryAfterUpgrade__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D4A060] sharedInstance];
  v3 = [*(a1 + 32) historiesForProfiles];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__Application__export30DaysWorthOfHistoryAfterUpgrade__block_invoke_2;
  v4[3] = &unk_2781D4B18;
  v5 = *(a1 + 40);
  [v2 export30DaysWorthOfHistoryToCoreSpotlightForProfiles:v3 completionHandler:v4];
}

uint64_t __54__Application__export30DaysWorthOfHistoryAfterUpgrade__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setBool:1 forKey:@"didMigrateHistoryToCoreSpotlightAfterUpgrade"];
  }

  return result;
}

- (void)_downloadDidStartNotification:(id)a3
{
  v4 = [a3 object];
  activeDownloads = self->_activeDownloads;
  v8 = v4;
  if (activeDownloads)
  {
    [(NSMutableArray *)activeDownloads addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
    v7 = self->_activeDownloads;
    self->_activeDownloads = v6;
  }
}

- (void)_downloadDidStopNotification:(id)a3
{
  v5 = [a3 object];
  [(NSMutableArray *)self->_activeDownloads removeObject:?];
  if (![(NSMutableArray *)self->_activeDownloads count])
  {
    activeDownloads = self->_activeDownloads;
    self->_activeDownloads = 0;
  }
}

- (void)getSavedAccountContextForGlobalFrameIdentifier:(id)a3 completionHandler:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v6 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D50A8;
  v38 = &v39;
  v18 = v6;
  v37 = v18;
  block = _Block_copy(aBlock);
  v7 = dispatch_group_create();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2810000000;
  v34[3] = "";
  v35 = 0;
  v8 = [v20 documentID];
  if (v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(Application *)self browserControllers];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v45 count:16];
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v14 = [v13 webView];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_2;
          v25[3] = &unk_2781D50D0;
          v28 = v34;
          v29 = &v39;
          v26 = v8;
          v27 = v13;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_3;
          v23[3] = &unk_2781D4D40;
          v24 = v7;
          [v14 safari_enumerateAllFramesAsynchronously:v25 completionHandler:v23];
        }

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v45 count:16];
      }

      while (v10);
    }

    dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v15 = [(Application *)self browserControllers];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_4;
    v21[3] = &unk_2781D4E70;
    v22 = v20;
    v16 = [v15 safari_firstObjectPassingTest:v21];
    v17 = v40[5];
    v40[5] = v16;

    block[2]();
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v39, 8);
}

void __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2 && ([v2 isInDefaultProfile] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = objc_alloc(MEMORY[0x277D49B30]);
    v7 = [*(*(*(a1 + 40) + 8) + 40) activeProfileIdentifier];
    v6 = [v5 initWithSafariProfileIdentifier:?];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v3 = *(a1 + 32);
    v7 = [MEMORY[0x277D49B30] defaultContext];
    (*(v3 + 16))(v3);
  }
}

void __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [v7 _documentIdentifier];
    v6 = [v5 isEqual:*(a1 + 32)];

    if (!v6)
    {
      goto LABEL_5;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  }

  *a3 = 1;
LABEL_5:
  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
}

BOOL __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 tabDocuments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_5;
  v8[3] = &unk_2781D50F8;
  v9 = *(a1 + 32);
  v5 = [v4 safari_firstObjectPassingTest:v8];
  v6 = v5 != 0;

  return v6;
}

BOOL __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 webPageID];
  v4 = [*(a1 + 32) webPageID];
  v5 = v3 == [v4 unsignedLongValue];

  return v5;
}

- (id)createRecommendationMediatorOrReuseExistingOneIfPossible
{
  v3 = [(Application *)self existingForYouRecommendationMediator];
  if (!v3)
  {
    v4 = [ForYouRecommendationMediator alloc];
    v5 = +[Application contextClient];
    v6 = +[FeatureManager sharedFeatureManager];
    v3 = [(ForYouRecommendationMediator *)v4 initWithContextClient:v5 featureManager:v6 historyProvider:&__block_literal_global_329];

    [(Application *)self setExistingForYouRecommendationMediator:v3];
  }

  v7 = v3;

  return v7;
}

- (WBSForYouRecentParsecResultsManager)forYouRecentParsecResultsManager
{
  forYouRecentParsecResultsManager = self->_forYouRecentParsecResultsManager;
  if (!forYouRecentParsecResultsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A760]);
    v5 = self->_forYouRecentParsecResultsManager;
    self->_forYouRecentParsecResultsManager = v4;

    forYouRecentParsecResultsManager = self->_forYouRecentParsecResultsManager;
  }

  return forYouRecentParsecResultsManager;
}

- (NSSet)historiesForProfiles
{
  v3 = [(WBTabGroupManager *)self->_tabGroupManager allProfileIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__Application_historiesForProfiles__block_invoke;
  v6[3] = &unk_2781D5140;
  v6[4] = self;
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v6];

  return v4;
}

id __35__Application_historiesForProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 historyController];
  v5 = [v4 historyForProfileIdentifier:v3 loadIfNeeded:1];

  return v5;
}

- (id)sectionManagerForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:*MEMORY[0x277D49BD8]];
  v6 = objc_alloc(MEMORY[0x277D4A080]);
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v6 initWithStorage:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D4A7E0]);
    v7 = [(Application *)self tabGroupManager];
    v10 = [v9 initWithProfileIdentifier:v4 tabGroupManager:v7];
    v8 = [v6 initWithStorage:v10];
  }

  return v8;
}

- (id)suggestionsManagerForProfileIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_profileIdentifiersToSuggestionsManagers objectForKeyedSubscript:v4];
    if (!v5)
    {
      [(Application *)self _setUpSuggestionManagersIfNeeded];
      v6 = objc_alloc(MEMORY[0x277D4A840]);
      v7 = [(Application *)self sectionManagerForProfileWithIdentifier:v4];
      v5 = [v6 initWithSectionManager:v7];

      [(NSMutableDictionary *)self->_profileIdentifiersToSuggestionsManagers setObject:v5 forKeyedSubscript:v4];
      v8 = [(Application *)self historyController];
      v9 = [v8 frequentlyVisitedSitesControllerForProfileIdentifier:v4 loadIfNeeded:1];
      [v5 registerProvider:v9];

      v10 = [(WBSStartPageSuggestionsProviderBroadcaster *)self->_highlightManagerSuggestionsProviderBroadcaster createSuggestionProviderProxy];
      [v5 registerProvider:v10];
    }

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WBSSafariScribbleFeedbackSyncEngine)scribbleFeedbackSyncEngine
{
  scribbleFeedbackSyncEngine = self->_scribbleFeedbackSyncEngine;
  if (!scribbleFeedbackSyncEngine)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A038]);
    v5 = self->_scribbleFeedbackSyncEngine;
    self->_scribbleFeedbackSyncEngine = v4;

    scribbleFeedbackSyncEngine = self->_scribbleFeedbackSyncEngine;
  }

  return scribbleFeedbackSyncEngine;
}

- (WBSSafariWebCompatibilityFeedbackSyncEngine)webCompatibilityFeedbackSyncEngine
{
  webCompatibilityFeedbackSyncEngine = self->_webCompatibilityFeedbackSyncEngine;
  if (!webCompatibilityFeedbackSyncEngine)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A040]);
    v5 = self->_webCompatibilityFeedbackSyncEngine;
    self->_webCompatibilityFeedbackSyncEngine = v4;

    webCompatibilityFeedbackSyncEngine = self->_webCompatibilityFeedbackSyncEngine;
  }

  return webCompatibilityFeedbackSyncEngine;
}

- (WBTabGroupManager)ephemeralTabGroupManager
{
  ephemeralTabGroupManager = self->_ephemeralTabGroupManager;
  if (!ephemeralTabGroupManager)
  {
    v4 = [MEMORY[0x277D7B580] ephemeralTabGroupManager];
    v5 = self->_ephemeralTabGroupManager;
    self->_ephemeralTabGroupManager = v4;

    ephemeralTabGroupManager = self->_ephemeralTabGroupManager;
  }

  return ephemeralTabGroupManager;
}

- (WBSScribbleQuirksManager)scribbleQuirksManager
{
  scribbleQuirksManager = self->_scribbleQuirksManager;
  if (!scribbleQuirksManager)
  {
    v4 = objc_opt_new();
    v5 = self->_scribbleQuirksManager;
    self->_scribbleQuirksManager = v4;

    scribbleQuirksManager = self->_scribbleQuirksManager;
  }

  return scribbleQuirksManager;
}

- (void)downloadDidFinish:(id)a3
{
  v3 = a3;
  v4 = tabDocumentForDownload(v3);
  [v4 downloadDidFinish:v3];
}

- (void)downloadDidFail:(id)a3
{
  v3 = a3;
  v4 = tabDocumentForDownload(v3);
  [v4 downloadDidFail:v3];
}

- (void)downloadDidStart:(id)a3
{
  v3 = a3;
  v4 = tabDocumentForDownload(v3);
  [v4 downloadDidStart:v3];
}

- (void)downloadDidReceiveResponse:(id)a3
{
  v6 = a3;
  if ([v6 explicitlySaved])
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    v4 = [v6 mimeType];
    v5 = [v6 uti];
    [v3 _sf_didBeginDownloadWithMIMEType:v4 uti:v5 downloadType:1 promptType:0 browserPersona:0];
  }
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = tabDocumentForDownload(v11);
  v7 = v6;
  if (v6)
  {
    [v6 downloadShouldContinueAfterReceivingResponse:v11 decisionHandler:v5];
  }

  else
  {
    if (([v11 explicitlySaved] & 1) == 0)
    {
      v8 = [MEMORY[0x277D499B8] sharedLogger];
      v9 = [v11 mimeType];
      v10 = [v11 uti];
      [v8 _sf_didBeginDownloadWithMIMEType:v9 uti:v10 downloadType:0 promptType:0 browserPersona:0];
    }

    v5[2](v5, 1);
  }
}

void __48__Application__resetCloudHistoryAccountIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__Application__resetCloudHistoryAccountIfNeeded__block_invoke_cold_1(v3);
    }
  }
}

- (void)_updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_cloudHistory)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(Application *)self tabGroupManager];
    v5 = [v4 namedProfiles];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 bookmark];
          v12 = [v11 serverID];

          if (v12)
          {
            v13 = [v10 identifier];
            [v3 setObject:v12 forKeyedSubscript:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [(WBSCloudHistoryServiceProtocol *)self->_cloudHistory updateProfileLocalIdentifiersToServerIdentifiersMap:v3 completionHandler:&__block_literal_global_352];
  }
}

void __81__Application__updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__Application__updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory__block_invoke_cold_1(v3);
    }
  }
}

- (void)tabGroupManagerDidUpdateProfiles:(id)a3
{
  [(Application *)self _updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory];
  v3 = [MEMORY[0x277D28BF0] sharedProvider];
  [v3 clearCachedMenuForPersona:0];
}

- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 profileWithIdentifier:v7];
  v9 = [v8 identifierForExtensions];

  if (v9)
  {
    [(Application *)self _deleteExtensionControllersForProfileServerID:v9];
  }

  v10 = [(BrowserWindowController *)self->_browserWindowController perSitePreferencesVendor];
  v11 = [v10 profilePreferenceManager];

  if (v11)
  {
    v12 = [MEMORY[0x277D49F90] sharedController];
    [v12 removeIgnoredSiriSuggestedSitesInProfile:v7];

    v13 = [v11 profilePreference];
    v14 = [MEMORY[0x277CBEB58] set];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__Application_tabGroupManager_didRemoveProfileWithIdentifier___block_invoke;
    v17[3] = &unk_2781D5168;
    v18 = v11;
    v19 = v13;
    v20 = v6;
    v21 = v7;
    v22 = v14;
    v15 = v14;
    v16 = v13;
    [v18 getAllDomainsConfiguredForPreference:v16 usingBlock:v17];
  }
}

void __62__Application_tabGroupManager_didRemoveProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [*(a1 + 32) valueOfPreference:*(a1 + 40) forDomain:v8];
        v10 = [*(a1 + 48) profileWithIdentifier:*(a1 + 56)];
        v11 = [v10 serverID];
        v12 = [v9 isEqualToString:v11];

        if (v12)
        {
          [*(a1 + 64) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) removePreferenceValuesForDomains:*(a1 + 64) fromPreference:*(a1 + 40) completionHandler:0];
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__Application__updateCloudFeatureAvailability__block_invoke_3_cold_1(v7);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__Application__updateCloudFeatureAvailability__block_invoke_356;
    v8[3] = &unk_2781D4C88;
    v8[4] = *(a1 + 32);
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __46__Application__updateCloudFeatureAvailability__block_invoke_356(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 528), *(a1 + 40));
  [*(a1 + 32) _updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory];
  v2 = *(a1 + 32);

  return [v2 _resetCloudHistoryAccountIfNeeded];
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_2_358(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__Application__updateCloudFeatureAvailability__block_invoke_2_358_cold_1(v3);
    }
  }
}

- (WBSAllowedLegacyTLSHostManager)legacyTLSHostManager
{
  cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  if (!cachedLegacyTLSHostManager)
  {
    v4 = objc_alloc(MEMORY[0x277D49E18]);
    v5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v6 = [v4 initWithBrowserDefaults:v5];
    v7 = self->_cachedLegacyTLSHostManager;
    self->_cachedLegacyTLSHostManager = v6;

    cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  }

  return cachedLegacyTLSHostManager;
}

- (void)_historyWasCleared:(id)a3
{
  v3 = [(Application *)self legacyTLSHostManager];
  [v3 clearAllLegacyTLSHosts];
}

- (void)_historyItemsWereRemoved:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x277D4A220];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D4A220]];
  v7 = [v6 safari_setByApplyingBlock:&__block_literal_global_365];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [MEMORY[0x277CDB8A8] sharedInstance];
        v15 = [v14 userVisibleQueryFromSearchURL:v13 allowQueryThatLooksLikeURL:1];

        v16 = +[RecentWebSearchesController sharedController];
        [v16 clearRecentSearch:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  v18 = [v3 userInfo];
  v19 = [v18 objectForKeyedSubscript:v5];
  [v17 historyItemsWereRemoved:v19];
}

- (void)_historyHostnamesWereRemoved:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self legacyTLSHostManager];
  v6 = MEMORY[0x277CBEB98];
  v7 = [v4 object];
  v8 = [v6 setWithArray:v7];
  [v5 clearLegacyTLSForHosts:v8];

  v9 = MEMORY[0x277D4A7C8];
  v10 = [v4 object];

  [v9 removeHostnames:v10];
}

- (void)_getBookmarksDataClassEnabledWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[FeatureManager sharedFeatureManager];
  v5 = [v4 isCloudSyncAvailable];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__Application__getBookmarksDataClassEnabledWithCompletionHandler___block_invoke;
    block[3] = &unk_2781D4D90;
    v8 = v3;
    dispatch_async(v6, block);
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void __66__Application__getBookmarksDataClassEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v2 = [v3 aa_primaryAppleAccountWithPreloadedDataclasses];
  [v2 isEnabledForDataclass:*MEMORY[0x277CB90D0]];
  (*(*(a1 + 32) + 16))();
}

+ (CKContextClient)contextClient
{
  if (contextClient_onceToken != -1)
  {
    +[Application contextClient];
  }

  v3 = contextClient_instance;

  return v3;
}

void __28__Application_contextClient__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getCKContextClientClass_softClass;
  v8 = getCKContextClientClass_softClass;
  if (!getCKContextClientClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getCKContextClientClass_block_invoke;
    v4[3] = &unk_2781D4BD8;
    v4[4] = &v5;
    __getCKContextClientClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 clientWithDefaultRequestType:1];
  v3 = contextClient_instance;
  contextClient_instance = v2;
}

- (void)extensionsController:(id)a3 closeOpenExtensionTabsWithBaseURI:(id)a4 composedIdentifier:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a4 host];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(Application *)self browserControllers];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(Application *)self _allTabsWithExtensionContentLoadedForBrowserController:v14 extensionHost:v8 composedIdentifier:v7];
        if ([v15 count])
        {
          v16 = [v14 tabController];
          [v16 closeTabs:v15 animated:1 allowAddingToRecentlyClosedTabs:0 showAutoCloseTabsAlert:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)_allTabsWithExtensionContentLoadedForBrowserController:(id)a3 extensionHost:(id)a4 composedIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 tabController];
  v10 = [v9 normalAndPrivateTabs];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__Application__allTabsWithExtensionContentLoadedForBrowserController_extensionHost_composedIdentifier___block_invoke;
  v15[3] = &unk_2781D5200;
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = [v10 safari_filterObjectsUsingBlock:v15];

  return v13;
}

uint64_t __103__Application__allTabsWithExtensionContentLoadedForBrowserController_extensionHost_composedIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 urlForExtensions];
  if ([v3 safari_isSafariWebExtensionURL])
  {
    v4 = [v3 host];
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:*(a1 + 40)];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)extensionsController:(id)a3 closeOpenExtensionTabsInPrivateBrowsingWithBaseURI:(id)a4 composedIdentifier:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a4 host];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(Application *)self browserControllers];
  v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(Application *)self _allTabsWithExtensionContentLoadedForBrowserController:v13 extensionHost:v8 composedIdentifier:v7];
        v15 = [v14 safari_filterObjectsUsingBlock:&__block_literal_global_373];

        if ([v15 count])
        {
          v16 = [v13 tabController];
          [v16 closeTabs:v15 animated:1 allowAddingToRecentlyClosedTabs:0 showAutoCloseTabsAlert:0];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)enumerateContentBlockerManagersUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(Application *)self allContentBlockerManagers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)sfWebExtensionsController:(id)a3 tabWithID:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(Application *)self browserControllers:a3];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v13 + 1) + 8 * v9) tabController];
      v11 = [v10 tabWithIDForWebExtensions:a4];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)sfWebExtensionsController:(id)a3 reusableTabWithID:(double)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v6 = +[(WBReusableTabManager *)ReusableTabManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__Application_sfWebExtensionsController_reusableTabWithID___block_invoke;
  v9[3] = &unk_2781D5248;
  *&v9[5] = a4;
  v9[4] = &v10;
  [v6 enumerateReusableTabDocuments:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __59__Application_sfWebExtensionsController_reusableTabWithID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  [v7 idForWebExtensions];
  if (v6 == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)sfWebExtensionsController:(id)a3 tabForWebView:(id)a4
{
  v4 = [TabDocument tabDocumentForWKWebView:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 webExtensionWindow];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 webExtensionTabs];
      if ([v8 containsObject:v5])
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sfWebExtensionsController:(id)a3 createNewTabInWindow:(id)a4 tabIndex:(id)a5 url:(id)a6 makeActive:(BOOL)a7 completionHandler:(id)a8
{
  if (a4)
  {
    [a4 createNewTabAtIndex:a5 url:a6 makeActive:a7 completionHandler:a8];
  }

  else
  {
    (*(a8 + 2))(a8, 0);
  }
}

- (void)sfWebExtensionsController:(id)a3 pinTab:(id)a4
{
  v4 = a4;
  if ([v4 canSetPinned])
  {
    [v4 setPinned:1];
  }
}

- (void)sfWebExtensionsController:(id)a3 relateParentTab:(id)a4 toTab:(id)a5
{
  v6 = a4;
  v7 = a5;
  v13 = v6;
  v8 = [v7 browserController];
  v9 = [v13 browserController];
  v10 = v9;
  if (v8 == v9)
  {
    v11 = [v7 isPrivate];
    v12 = [v13 isPrivate];

    if (v11 == v12)
    {
      [v7 updateAncestryWithParentTab:v13];
    }
  }

  else
  {
  }
}

- (id)sfWebExtensionsController:(id)a3 windowWithID:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(Application *)self browserControllers:a3];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) webExtensionWindowWithID:a4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)sfWebExtensionsController:(id)a3 windowForWebView:(id)a4 extension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 backgroundWebView];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [(Application *)self sfWebExtensionsControllerLastFocusedWindow:v8];
  }

  else
  {
    v14 = [v10 toolbarItem];
    v15 = [v14 popupWebView];
    v16 = [v9 isEqual:v15];

    if (v16)
    {
      v13 = [v14 windowDisplayingPopupWebView];
    }

    else
    {
      v17 = [TabDocument tabDocumentForWKWebView:v9];
      v13 = [v17 webExtensionWindow];
    }
  }

  return v13;
}

- (id)sfWebExtensionsController:(id)a3 navigationIntentUUIDForWindow:(id)a4
{
  v4 = [a4 browserController];
  v5 = [v4 UUID];

  return v5;
}

- (id)sfWebExtensionsControllerAllWindows:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(Application *)self browserControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) webExtensionWindows];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)sfWebExtensionsControllerLastFocusedWindow:(id)a3
{
  v3 = [(Application *)self browserControllers];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_378];

  v5 = [v4 activeWebExtensionWindow];

  return v5;
}

- (void)sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self browserControllers];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v4 currentExtensionForPermissionBanner];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D28ED8]) initWithExtension:v7];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__Application_sfWebExtensionsControllerDidChangeExtensionForPermissionBanner___block_invoke;
    v15[3] = &unk_2781D5270;
    v9 = v7;
    v16 = v9;
    [v8 setOpenActionHandler:v15];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __78__Application_sfWebExtensionsControllerDidChangeExtensionForPermissionBanner___block_invoke_2;
    v13 = &unk_2781D5270;
    v14 = v9;
    [v8 setDismissButtonHandler:&v10];
    [v6 showWebExtensionBanner:{v8, v10, v11, v12, v13}];
  }

  else
  {
    [v6 showWebExtensionBanner:0];
  }
}

- (void)sfWebExtensionsController:(id)a3 showPopupOrPerSitePermissionsForExtension:(id)a4 forTab:(id)a5 completionHandler:(id)a6
{
  v16 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v10 webExtensionWindow];
  v14 = [(Application *)self sfWebExtensionsControllerLastFocusedWindow:v12];

  if (v13 == v14)
  {
    v15 = [v13 browserController];
    [v15 showPopupOrPerSitePermissionsForWebExtension:v16 forTab:v10];
  }

  v11[2](v11);
}

- (id)sfWebExtensionsControllerDomainForDefaultSearchProvider:(id)a3
{
  v3 = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [v3 defaultSearchEngineForPrivateBrowsing:0];
  v5 = [v4 searchURLForUserTypedString:@"a"];
  v6 = [v5 host];
  v7 = [v6 safari_highLevelDomainFromHost];

  return v7;
}

+ (void)setBrowserControllerUIDelegateProvider:(id)a3
{
  v3 = [a3 copy];
  v4 = browserControllerUIDelegateProvider;
  browserControllerUIDelegateProvider = v3;
}

- (BOOL)hasPointerDevice
{
  if (!SFDeviceSupportsPointerInteractions())
  {
    return 0;
  }

  if ([MEMORY[0x277CD9628] isHoverActive])
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_pointerDeviceLock);
  v4 = self->_pointerDevices;
  os_unfair_lock_unlock(&self->_pointerDeviceLock);
  v3 = [(NSMutableSet *)v4 count]!= 0;

  return v3;
}

- (void)mousePointerDevicesDidConnect:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pointerDeviceLock);
  [(NSMutableSet *)self->_pointerDevices unionSet:v4];

  os_unfair_lock_unlock(&self->_pointerDeviceLock);
}

- (void)mousePointerDevicesDidDisconnect:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pointerDeviceLock);
  [(NSMutableSet *)self->_pointerDevices minusSet:v4];

  os_unfair_lock_unlock(&self->_pointerDeviceLock);
}

- (void)noteTakingController:(id)a3 addHighlightForUserActivity:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v7 = a4;
  v8 = a5;
  v25 = v7;
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"uniqueIdentifier"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = +[Application sharedApplication];
  v12 = [v11 browserControllers];

  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = [*(*(&v28 + 1) + 8 * v16) tabController];
      v18 = [v17 activeTabDocument];

      v19 = [v18 userActivity];
      v20 = [v19 _uniqueIdentifier];
      v21 = [v20 isEqual:v10];

      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!v18)
    {
      goto LABEL_13;
    }

    v22 = v26;
    if ([v26 isNoteTakingSupportedWithPrivateBrowsing:{objc_msgSend(v18, "isPrivateBrowsingEnabled")}])
    {
      [v18 setLinkAddedToUserActivityCallback:v8];
      [v18 addAppHighlightCreatingLink:0];

      v23 = v25;
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXSystemNoteTaking();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_INFO, "Not adding highlight to user activity because the tab is Private and Quick Note is disabled in Private Browsing", buf, 2u);
      }

      v23 = v25;
      v8[2](v8, v25, 0);
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v23 = v25;
    v8[2](v8, v25, 0);
    v22 = v26;
  }
}

- (void)notifyAddedLinkPreviewMetadata:(id)a3 toUserActivity:(id)a4 webView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[Application sharedApplication];
  v11 = [v10 browserControllers];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__Application_notifyAddedLinkPreviewMetadata_toUserActivity_webView___block_invoke;
  v18[3] = &unk_2781D4E70;
  v19 = v9;
  v12 = v9;
  v13 = [v11 safari_firstObjectPassingTest:v18];

  v14 = [v13 tabController];
  v15 = [v14 activeTabDocument];

  v16 = [v15 linkAddedToUserActivityCallback];

  if (v16)
  {
    v17 = [v15 linkAddedToUserActivityCallback];
    (v17)[2](v17, v8, v7);

    [v15 setLinkAddedToUserActivityCallback:0];
  }
}

BOOL __69__Application_notifyAddedLinkPreviewMetadata_toUserActivity_webView___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 activeTabDocument];

  v5 = [v4 webView];
  v6 = v5 == *(a1 + 32);

  return v6;
}

- (BOOL)isNoteTakingControllerSupportedInPrivateBrowsing:(id)a3
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v3 BOOLForKey:*MEMORY[0x277D4A908]];

  return v4;
}

- (WBSUnifiedBarAnalyticsProviding)unifiedBarAnalyticsProvider
{
  v2 = [(Application *)self browserControllers];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_393];
  v4 = [v3 firstObject];

  return v4;
}

uint64_t __42__Application_unifiedBarAnalyticsProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 scene];
  if ([v3 activationState])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 rootViewController];
    v4 = [v5 usingUnifiedBar];
  }

  return v4;
}

- (WebBookmarkCollection)bookmarkCollection
{
  bookmarkCollection = self->_bookmarkCollection;
  if (!bookmarkCollection)
  {
    v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v5 = self->_bookmarkCollection;
    self->_bookmarkCollection = v4;

    bookmarkCollection = self->_bookmarkCollection;
  }

  return bookmarkCollection;
}

- (void)_webBookmarksDidReload
{
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  bookmarkCollection = self->_bookmarkCollection;
  self->_bookmarkCollection = v3;
}

- (id)_sortedBrowserControllers
{
  v2 = [(Application *)self browserControllers];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_396];

  return v3;
}

uint64_t __40__Application__sortedBrowserControllers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 scene];
  v6 = [v4 scene];

  if (v5 && !v6)
  {
LABEL_3:
    v7 = -1;
    goto LABEL_17;
  }

  if (!v5 && v6)
  {
    goto LABEL_6;
  }

  if (!(v5 | v6))
  {
    v7 = 0;
    goto LABEL_17;
  }

  if ([v5 _isKeyWindowScene])
  {
    goto LABEL_3;
  }

  if ([v6 _isKeyWindowScene])
  {
LABEL_6:
    v7 = 1;
    goto LABEL_17;
  }

  v8 = [v5 activationState];
  v9 = [v6 activationState];
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v7 = v9 == 0;
  }

  else
  {
    v7 = v10;
  }

LABEL_17:

  return v7;
}

- (UIScene)currentScene
{
  v2 = [(Application *)self _sortedBrowserControllers];
  v3 = [v2 firstObject];
  v4 = [v3 scene];

  return v4;
}

- (id)_tabCompletionProvider
{
  tabCompletionProvider = self->_tabCompletionProvider;
  if (!tabCompletionProvider)
  {
    v4 = objc_alloc_init(MEMORY[0x277D49E50]);
    v5 = self->_tabCompletionProvider;
    self->_tabCompletionProvider = v4;

    [(WBSBrowserTabCompletionProvider *)self->_tabCompletionProvider setDataSource:self];
    tabCompletionProvider = self->_tabCompletionProvider;
  }

  return tabCompletionProvider;
}

- (void)tabEntitiesMatchingQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(Application *)self _tabCompletionProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__Application_tabEntitiesMatchingQuery_completionHandler___block_invoke;
  v10[3] = &unk_2781D52F8;
  v11 = v6;
  v9 = v6;
  [v8 tabCompletionMatchesForQuery:v7 completionHandler:v10];
}

void __58__Application_tabEntitiesMatchingQuery_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_400];
  (*(*(a1 + 32) + 16))();
}

id __58__Application_tabEntitiesMatchingQuery_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4A850];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 tabUUID];
  v6 = [v3 title];
  v7 = [v3 originalURLString];

  v8 = [v4 initWithUUID:v5 title:v6 address:v7 isPrivate:0];

  return v8;
}

- (NSArray)allTabEntities
{
  v2 = [(Application *)self _tabCompletionProvider];
  v3 = [v2 tabInfos];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_404];

  return v4;
}

id __29__Application_allTabEntities__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4A850];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];
  v6 = [v3 title];
  v7 = [v3 url];

  v8 = [v7 absoluteString];
  v9 = [v4 initWithUUID:v5 title:v6 address:v8 isPrivate:0];

  return v9;
}

- (id)tabEntityWithUUID:(id)a3
{
  v3 = [(BrowserWindowController *)self->_browserWindowController tabWithUUID:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D4A850]);
    v5 = [v3 uuid];
    v6 = [v3 title];
    v7 = [v3 url];
    v8 = [v7 absoluteString];
    v9 = [v4 initWithUUID:v5 title:v6 address:v8 isPrivate:{objc_msgSend(v3, "isPrivateBrowsingEnabled")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pdfDataForTabWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BrowserWindowController *)self->_browserWindowController tabDocumentWithUUID:v6];
  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [v8 webView];
    if ([v9 _isDisplayingPDF])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke;
      v14[3] = &unk_2781D5340;
      objc_copyWeak(&v16, &location);
      v15 = v7;
      [v9 _getMainResourceDataWithCompletionHandler:v14];

      objc_destroyWeak(&v16);
    }

    else
    {
      v11 = [v8 printController];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke_406;
      v12[3] = &unk_2781D5368;
      v13 = v7;
      [v11 getPDFDataForUsage:3 withCompletion:v12];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [Application pdfDataForTabWithUUID:completionHandler:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
LABEL_5:
    v10 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXSiriLink();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke_cold_1();
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
    v12 = 134217984;
    v13 = [v5 length];
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Webpage was already displaying a PDF, using existing PDF data of length %zu", &v12, 0xCu);
  }

  v10 = *(*(a1 + 32) + 16);
LABEL_9:
  v10();
}

void __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke_406(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke_406_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_browserControllerForTabWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self browserControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__Application__browserControllerForTabWithUUID___block_invoke;
  v9[3] = &unk_2781D4E70;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_firstObjectPassingTest:v9];

  return v7;
}

BOOL __48__Application__browserControllerForTabWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 tabWithUUID:*(a1 + 32)];
  v5 = v4 != 0;

  return v5;
}

- (void)sceneForTabWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(Application *)self _browserControllerForTabWithUUID:a3];
  if (v7)
  {
    v8 = [(Application *)self openSessions];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__Application_sceneForTabWithUUID_completionHandler___block_invoke;
    v13[3] = &unk_2781D5390;
    v9 = v7;
    v14 = v9;
    v10 = [v8 safari_anyObjectPassingTest:v13];

    if ([(Application *)self supportsMultipleScenes]&& !v10)
    {
      v6[2](v6, 0);
LABEL_12:

      goto LABEL_13;
    }

    v11 = [v9 scene];
    if (v11)
    {
      (v6)[2](v6, v11);
      if (![v11 activationState])
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v9 setIntentSceneConfigurationCompletion:v6];
    }

    v12 = objc_alloc_init(MEMORY[0x277D75950]);
    [(Application *)self requestSceneSessionActivation:v10 userActivity:0 options:v12 errorHandler:&__block_literal_global_411];

LABEL_11:
    goto LABEL_12;
  }

  v6[2](v6, 0);
LABEL_13:
}

uint64_t __53__Application_sceneForTabWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [*(a1 + 32) windowState];
  v5 = [v4 sceneID];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __53__Application_sceneForTabWithUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXSiriLink();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__Application_sceneForTabWithUUID_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (id)sceneForTabGroupWithUUIDString:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self _sortedBrowserControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__Application_sceneForTabGroupWithUUIDString___block_invoke;
  v10[3] = &unk_2781D4E70;
  v11 = v4;
  v6 = v4;
  v7 = [v5 safari_firstObjectPassingTest:v10];

  v8 = [v7 scene];

  return v8;
}

uint64_t __46__Application_sceneForTabGroupWithUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 activeTabGroup];
  v5 = [v4 uuid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (WBProfile)focusProfile
{
  v3 = [(Application *)self focusProfileIdentifier];
  if (v3)
  {
    v4 = +[Application sharedApplication];
    v5 = [v4 tabGroupManager];
    v6 = [v5 profileWithIdentifier:v3];

    if (!v6)
    {
      tabGroupManager = self->_tabGroupManager;
      v8 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (tabGroupManager)
      {
        if (v9)
        {
          [Application focusProfile];
        }
      }

      else if (v9)
      {
        [Application focusProfile];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_profileFocusConfigurationChanged
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXSiriLink();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Received profile focus change notification", buf, 2u);
  }

  [(Application *)self _readFocusConfigurationKeys];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(Application *)self browserControllers];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 tabController];
        [v9 dismissOpenTabGroupAlertIfNeeded];
        v10 = [v8 scene];
        v11 = v10;
        if (v10 && (![v10 activationState] || objc_msgSend(v11, "activationState") == 1))
        {
          focusProfileIdentifier = self->_focusProfileIdentifier;
          [v8 activeProfileIdentifier];
          v14 = v13 = self;
          LODWORD(focusProfileIdentifier) = [(NSString *)focusProfileIdentifier isEqualToString:v14];

          self = v13;
          if (focusProfileIdentifier)
          {
            v18 = WBS_LOG_CHANNEL_PREFIXSiriLink();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              v20 = [v8 windowState];
              v21 = [v20 uuid];
              v22 = v13->_focusProfileIdentifier;
              *buf = 138543618;
              v30 = v21;
              v31 = 2114;
              v32 = v22;
              _os_log_impl(&dword_215819000, v19, OS_LOG_TYPE_DEFAULT, "Foreground window %{public}@ already has focus profile %{public}@ open", buf, 0x16u);
            }

            [(Application *)v13 setNeedsFocusProfileUpdate:0];

            return;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([(Application *)self needsFocusProfileUpdate]&& [(Application *)self applicationState]!= 2)
  {
    if ([(Application *)self prefersSingleWindow])
    {
      v15 = [(Application *)self _sortedBrowserControllers];
      v16 = [v15 firstObject];
      v17 = [v16 tabController];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__Application__profileFocusConfigurationChanged__block_invoke;
      v24[3] = &unk_2781D4B18;
      v24[4] = self;
      [v17 openFocusProfileWithCompletionHandler:v24];
    }
  }
}

void __48__Application__profileFocusConfigurationChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsFocusProfileUpdate:0];
  v2 = *(a1 + 32);
  if (*(v2 + 859) == 1)
  {
    v3 = *(v2 + 928);
    *(v2 + 928) = 0;

    *(*(a1 + 32) + 859) = 0;
  }
}

- (void)setNeedsFocusProfileUpdate:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_needsFocusProfileUpdate != a3)
  {
    v3 = a3;
    self->_needsFocusProfileUpdate = a3;
    v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v4 setBool:v3 forKey:*MEMORY[0x277D49C28]];

    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Updated needsFocusProfileUpdate to %i", v6, 8u);
    }
  }
}

- (void)_tabGroupFocusConfigurationChanged
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXSiriLink();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Received focus change notification", buf, 2u);
  }

  [(Application *)self _readFocusConfigurationKeys];
  if (self->_focusedTabGroupUUIDString)
  {
    v4 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:?];
    if (v4)
    {
      goto LABEL_8;
    }

    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [Application _tabGroupFocusConfigurationChanged];
    }
  }

  v4 = 0;
LABEL_8:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(Application *)self browserControllers];
  v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v32;
    *&v7 = 138543618;
    v27 = v7;
    v28 = v4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 tabController];
        [v12 dismissOpenTabGroupAlertIfNeeded];
        v13 = [v11 scene];
        v14 = v13;
        if (v13 && (![v13 activationState] || objc_msgSend(v14, "activationState") == 1))
        {
          v15 = [v12 activeTabGroup];
          v16 = WBSIsEqual();

          if (v16)
          {
            v17 = WBS_LOG_CHANNEL_PREFIXSiriLink();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [v11 windowState];
              v20 = [v19 uuid];
              [v4 uuid];
              v22 = v21 = self;
              *buf = v27;
              v36 = v20;
              v37 = 2114;
              v38 = v22;
              _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Foreground window %{public}@ already has FTG %{public}@ open", buf, 0x16u);

              self = v21;
              v4 = v28;
            }

            [(Application *)self setNeedsFocusedTabGroupUpdate:0];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v8);
  }

  if ([(Application *)self needsFocusedTabGroupUpdate]&& [(Application *)self applicationState]!= 2 && [(Application *)self prefersSingleWindow])
  {
    [(Application *)self _sortedBrowserControllers];
    v24 = v23 = v4;
    v25 = [v24 firstObject];
    v26 = [v25 tabController];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__Application__tabGroupFocusConfigurationChanged__block_invoke;
    v30[3] = &unk_2781D4B18;
    v30[4] = self;
    [v26 openFocusedTabGroupWithCompletionHandler:v30];

    v4 = v23;
  }
}

- (BOOL)prefersSingleWindow
{
  v2 = [(Application *)self openSessions];
  if ([v2 count] == 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = _SFDeviceIsPad() ^ 1;
  }

  return v3;
}

- (void)setNeedsFocusedTabGroupUpdate:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_needsFocusedTabGroupUpdate != a3)
  {
    v3 = a3;
    self->_needsFocusedTabGroupUpdate = a3;
    v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v4 setBool:v3 forKey:*MEMORY[0x277D49C30]];

    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Updated needsFTGUpdate to %i", v6, 8u);
    }
  }
}

- (id)tabInfosForBrowserTabCompletionProvider:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(Application *)self openSessions];
  v32 = [v5 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_413];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(Application *)self _sortedBrowserControllers];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v30 = *v38;
    v29 = self;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (([v11 isPrivateBrowsingEnabled] & 1) == 0)
        {
          if (!-[Application supportsMultipleScenes](self, "supportsMultipleScenes") || ([v11 windowState], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "sceneID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v32, "containsObject:", v13), v13, v12, v14))
          {
            v15 = [v11 tabController];
            v16 = [v15 activeTabGroup];

            if (([v4 containsObject:v16] & 1) == 0)
            {
              [v4 addObject:v16];
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              v18 = [v16 uuid];
              v19 = [v17 initWithUUIDString:v18];

              v20 = [v16 displayTitle];
              v21 = [v11 tabController];
              [v21 currentTabs];
              v22 = v8;
              v23 = v6;
              v25 = v24 = v4;
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __55__Application_tabInfosForBrowserTabCompletionProvider___block_invoke_2;
              v33[3] = &unk_2781D53B8;
              v33[4] = v11;
              v34 = v19;
              v35 = v20;
              v36 = v31;
              v26 = v20;
              v27 = v19;
              [v25 enumerateObjectsUsingBlock:v33];

              v4 = v24;
              v6 = v23;
              v8 = v22;

              self = v29;
              v9 = v30;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  return v31;
}

void __55__Application_tabInfosForBrowserTabCompletionProvider___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 url];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D49E40]);
    v7 = [v13 uuid];
    v8 = [*(a1 + 32) UUID];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v13 title];
    v12 = [v6 initWithUUID:v7 windowUUID:v8 tabGroupUUID:v9 tabGroupTitle:v10 tabIndex:a3 url:v5 title:v11 pageStatus:{objc_msgSend(v13, "pageStatus")}];

    [*(a1 + 56) addObject:v12];
  }
}

- (void)reloadReadingListWidgetIfNeeded
{
  if (self->_readingListWidgetNeedsReloading)
  {
    self->_readingListWidgetNeedsReloading = 0;
    WBSReloadReadingListWidget();
  }
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Received request from CoreSpotlight to reindex all searchable items", buf, 2u);
  }

  bookmarksDonationWriter = self->_bookmarksDonationWriter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__Application_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke;
  v9[3] = &unk_2781D5408;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [(SpotlightBookmarksDonationWriter *)bookmarksDonationWriter getBookmarksToDonateWithCompletionHandler:v9];
}

void __83__Application_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__Application_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_2;
  block[3] = &unk_2781D53E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__Application_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277D4A060] sharedInstance];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) historiesForProfiles];
  [v4 reindexAllBookmarkAndHistoryItems:v2 historiesForProfiles:v3 withAcknowledgementHandler:*(a1 + 48)];
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Received request from CoreSpotlight to reindex searchable items with identifiers.", buf, 2u);
  }

  bookmarksDonationWriter = self->_bookmarksDonationWriter;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__Application_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke;
  v13[3] = &unk_2781D5458;
  v14 = v7;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  [(SpotlightBookmarksDonationWriter *)bookmarksDonationWriter getBookmarksToDonateWithCompletionHandler:v13];
}

void __92__Application_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__Application_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_2;
  v6[3] = &unk_2781D5430;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __92__Application_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277D4A060] sharedInstance];
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) historiesForProfiles];
  [v5 reindexBookmarkAndHistoryItemsWithIdentifiers:v2 allBookmarks:v3 historiesForProfiles:v4 withAcknowledgementHandler:*(a1 + 56)];
}

- (void)websiteDataStore:(id)a3 openWindow:(id)a4 fromServiceWorkerOrigin:(id)a5 completionHandler:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = WBS_LOG_CHANNEL_PREFIXPush();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v27 = "[Application websiteDataStore:openWindow:fromServiceWorkerOrigin:completionHandler:]";
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s with ds=%{public}@ url=%{public}@ swOrigin=%{public}@", buf, 0x2Au);
  }

  v15 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
  v16 = [v15 navigationIntentWithServiceWorkerOpenURL:v11];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __85__Application_websiteDataStore_openWindow_fromServiceWorkerOrigin_completionHandler___block_invoke;
  v23 = &unk_2781D54A8;
  v24 = v16;
  v25 = v13;
  v17 = v13;
  v18 = v16;
  v19 = _Block_copy(&v20);
  [(Application *)self handleNavigationIntent:v18 completion:v19, v20, v21, v22, v23];
}

void __85__Application_websiteDataStore_openWindow_fromServiceWorkerOrigin_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) usedTabDocument], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) usedTabDocument];
    v6 = [v4 webView];

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  (*(*(a1 + 40) + 16))();
}

- (void)websiteDataStore:(id)a3 domain:(id)a4 didOpenDomainViaWindowOpen:(id)a5 withProperty:(int64_t)a6 directly:(BOOL)a7
{
  v7 = a7;
  v13 = a4;
  v11 = a5;
  if ([a3 isPersistent])
  {
    v12 = [MEMORY[0x277D49E30] sharedManager];
    [v12 donateWindowProxyWithDomain:v13 openedDomain:v11 windowProxyProperty:a6 accessedPropertyDirectly:v7];
  }
}

- (id)createBookmarkWithTitle:(id)a3 url:(id)a4
{
  v5 = MEMORY[0x277D7B5A8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 mainBookmarkCollection];
  v9 = [objc_alloc(MEMORY[0x277CDB6C8]) initWithCollection:v8 syntheticBookmarkProvider:0];
  v10 = objc_alloc(MEMORY[0x277D7B5A0]);
  v11 = [v6 absoluteString];

  v12 = [v8 configuration];
  v13 = [v10 initWithTitle:v7 address:v11 collectionType:{objc_msgSend(v12, "collectionType")}];

  v14 = [v8 rootBookmark];
  v15 = [v9 saveBookmark:v13 inFolder:v14];

  return v15;
}

- (void)deleteBookmarksWithUUIDs:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138543362;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 bookmarkWithUUID:{v11, v15, v16}];
        if (v12)
        {
          if (([v4 deleteBookmark:v12] & 1) == 0)
          {
            v13 = WBS_LOG_CHANNEL_PREFIXSiriLink();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [(Application *)v20 deleteBookmarksWithUUIDs:v13, v12, &v21];
            }
          }
        }

        else
        {
          v14 = WBS_LOG_CHANNEL_PREFIXSiriLink();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v23 = v11;
            _os_log_error_impl(&dword_215819000, v14, OS_LOG_TYPE_ERROR, "Can't find bookmark %{public}@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)moveTabsWithUUIDs:(id)a3 toTabGroupWithUUID:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__Application_moveTabsWithUUIDs_toTabGroupWithUUID___block_invoke;
  v11[3] = &unk_2781D54D0;
  v11[4] = self;
  v7 = [a3 safari_mapAndFilterObjectsUsingBlock:v11];
  if ([v7 count])
  {
    tabGroupManager = self->_tabGroupManager;
    v9 = [v6 UUIDString];
    v10 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:v9];

    if (v10)
    {
      [(WBTabGroupManager *)self->_tabGroupManager moveTabs:v7 toTabGroup:v10 afterTab:0 withoutPersistingTabGroupsWithUUIDStrings:0];
    }
  }
}

id __52__Application_moveTabsWithUUIDs_toTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 600);
  v3 = [a2 UUIDString];
  v4 = [v2 tabWithUUID:v3];

  return v4;
}

- (void)moveTabsWithUUIDs:(id)a3 toWindowWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = browserControllerWithEntityIdentifier(a4);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 tabController];
    v10 = [v9 activeTabGroup];

    v11 = [v10 uuid];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__Application_moveTabsWithUUIDs_toWindowWithIdentifier___block_invoke;
    v17 = &unk_2781D54F8;
    v18 = self;
    v12 = v11;
    v19 = v12;
    v13 = [v6 safari_mapAndFilterObjectsUsingBlock:&v14];
    if ([v13 count])
    {
      [(WBTabGroupManager *)self->_tabGroupManager moveTabs:v13 toTabGroup:v10 afterTab:0 withoutPersistingTabGroupsWithUUIDStrings:0];
    }
  }
}

id __56__Application_moveTabsWithUUIDs_toWindowWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(*(a1 + 32) + 600);
  v4 = [a2 UUIDString];
  v5 = [v3 tabWithUUID:v4];

  v6 = [v5 tabGroupUUID];
  LOBYTE(v2) = [v6 safari_isCaseInsensitiveEqualToString:*(v2 + 40)];

  if (v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)navigateTabWithUUID:(id)a3 toURL:(id)a4
{
  browserWindowController = self->_browserWindowController;
  v6 = a4;
  v7 = [(BrowserWindowController *)browserWindowController tabWithUUID:a3];
  [v7 loadURL:v6 title:&stru_2827BF158 skipSyncableTabUpdates:0];
}

- (void)deleteTabGroupsWithUUIDs:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:*(*(&v10 + 1) + 8 * i)];
        if (v9)
        {
          [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSString)lastActiveProfileIdentifier
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 stringForKey:*MEMORY[0x277D29030]];

  return v3;
}

- (NSArray)allWindowEntities
{
  v2 = [(Application *)self browserControllers];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_426];

  return v3;
}

id __32__Application_allWindowEntities__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPrivateBrowsingEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = windowEntityForBrowserController(v2);
  }

  return v3;
}

- (id)windowEntityWithIdentifier:(id)a3
{
  v3 = browserControllerWithEntityIdentifier(a3);
  v4 = v3;
  if (v3)
  {
    v5 = windowEntityForBrowserController(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createNewWindowWithRequestIdentifier:(id)a3 isPrivate:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(Application *)self supportsMultipleScenes])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(Application *)self browserControllers];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 proxy];
          v14 = [v13 appIntentRequestIdentifier];
          v15 = [v14 isEqual:v6];

          if (v15)
          {
            [v12 setPrivateBrowsingEnabled:v4];
            v16 = entityIdentifierForBrowserController(v12);
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)closeWindowsWithIdentifiers:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__Application_closeWindowsWithIdentifiers___block_invoke;
  v13[3] = &unk_2781D5540;
  v13[4] = self;
  v4 = [a3 safari_mapAndFilterObjectsUsingBlock:v13];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(Application *)self requestSceneSessionDestruction:*(*(&v9 + 1) + 8 * v8++) options:0 errorHandler:&__block_literal_global_429];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

id __43__Application_closeWindowsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) openSessions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__Application_closeWindowsWithIdentifiers___block_invoke_2;
  v8[3] = &unk_2781D5390;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_anyObjectPassingTest:v8];

  return v6;
}

uint64_t __43__Application_closeWindowsWithIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __43__Application_closeWindowsWithIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__Application_closeWindowsWithIdentifiers___block_invoke_3_cold_1(v3);
  }
}

- (void)showWindowWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self openSessions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__Application_showWindowWithIdentifier___block_invoke;
  v8[3] = &unk_2781D5390;
  v9 = v4;
  v6 = v4;
  v7 = [v5 safari_anyObjectPassingTest:v8];

  if (v7)
  {
    [(Application *)self requestSceneSessionActivation:v7 userActivity:0 options:0 errorHandler:0];
  }
}

uint64_t __40__Application_showWindowWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recentsStoreForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v5 = [(Application *)self _recentsStoreForDefaultProfile];
  }

  else
  {
    v6 = +[Application sharedApplication];
    v7 = [v6 tabGroupManager];

    v8 = [v7 profileWithIdentifier:v4];
    v9 = [v8 recentsStore];

    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D4A7E8]) initWithCloudTabDeviceProvider:v7];
      [v10 setActiveProfileIdentifier:v4];
      v11 = objc_alloc(MEMORY[0x277D4A7F8]);
      v12 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v13 = [v11 initWithSiteMetadataManager:v12];

      [v13 registerProvider:v10];
      [v8 setRecentsStore:v13];
    }

    v5 = [v8 recentsStore];
  }

  return v5;
}

- (ForYouRecommendationMediator)existingForYouRecommendationMediator
{
  WeakRetained = objc_loadWeakRetained(&self->_existingForYouRecommendationMediator);

  return WeakRetained;
}

- (id)_browserControllerForApplicationTesting
{
  v3 = +[LaunchStateController sharedController];
  [v3 forceMarkUIBecomeActiveForTesting];

  v4 = [(Application *)self browserControllers];
  v5 = [v4 firstObject];

  return v5;
}

+ (void)commandLineTestOption:(int)a3 arg:(const char *)a4
{
  if (a4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;
  if (!gTestOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = gTestOptions;
    gTestOptions = v6;

    v5 = v14;
  }

  if (a3 == 84 && v5)
  {
    [gTestOptions setObject:v5 forKey:@"testName"];
LABEL_15:
    v5 = v14;
    goto LABEL_16;
  }

  if (a3 == 85)
  {
    v8 = [gTestOptions objectForKey:@"URLs"];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [gTestOptions setObject:v8 forKey:@"URLs"];
    }

    if (v14)
    {
      [v8 addObject:v14];
    }

    goto LABEL_15;
  }

  if (a3 == 80)
  {
    if (v5)
    {
      v9 = [v5 rangeOfString:@":"];
      v5 = v14;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v9;
        v11 = gTestOptions;
        v12 = [v14 substringFromIndex:v9 + 1];
        v13 = [v14 substringToIndex:v10];
        [v11 setObject:v12 forKey:v13];

        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

void __55__Application_ApplicationTesting__startCommandLineTest__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WBS_LOG_CHANNEL_PREFIXTest();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = v0;
    v3 = 138543362;
    v4 = objc_opt_class();
    _os_log_impl(&dword_215819000, v1, OS_LOG_TYPE_DEFAULT, "Completed %{public}@", &v3, 0xCu);
  }

  v2 = gTestController;
  gTestController = 0;
}

+ (BOOL)prepareTestControllerWithType:(id)a3 suiteURL:(id)a4 bundleNames:(id)a5 outputURL:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = WBS_LOG_CHANNEL_PREFIXTest();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v32.st_dev = 138413058;
    *&v32.st_mode = v9;
    WORD2(v32.st_ino) = 2112;
    *(&v32.st_ino + 6) = v10;
    HIWORD(v32.st_gid) = 2112;
    *&v32.st_rdev = v11;
    LOWORD(v32.st_atimespec.tv_sec) = 2112;
    *(&v32.st_atimespec.tv_sec + 2) = v12;
    _os_log_debug_impl(&dword_215819000, v13, OS_LOG_TYPE_DEBUG, "Preparing test controller: type = %@, suiteURL = %@, bundle names = %@, output URL = %@", &v32, 0x2Au);
  }

  if ([v9 isEqualToString:@"autofill"])
  {
    v14 = 0x277D49E20;
    v15 = v11;
LABEL_7:
    gTestFileURLs = 1;
    v16 = [objc_alloc(*v14) initWithSuiteURL:v10 bundleNames:v15];
    v17 = gTestController;
    gTestController = v16;

    memset(&v32, 0, sizeof(v32));
    if (!stat([v12 fileSystemRepresentation], &v32) && (v32.st_mode & 0x1000) != 0)
    {
      v31 = 0;
      v26 = [objc_alloc(MEMORY[0x277D49F48]) initWithFifoURL:v12 error:&v31];
      v19 = v31;
      v27 = gTestResults;
      gTestResults = v26;

      v28 = gTestResults;
      v29 = WBS_LOG_CHANNEL_PREFIXTest();
      if (v28 && !v19)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          +[Application(ApplicationTesting) prepareTestControllerWithType:suiteURL:bundleNames:outputURL:];
        }

        goto LABEL_13;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[Application(ApplicationTesting) prepareTestControllerWithType:suiteURL:bundleNames:outputURL:];
      }
    }

    else
    {
      v30 = 0;
      v18 = [objc_alloc(MEMORY[0x277D49E68]) initWithFileURL:v12 error:&v30];
      v19 = v30;
      v20 = gTestResults;
      gTestResults = v18;

      v21 = gTestResults;
      v22 = WBS_LOG_CHANNEL_PREFIXTest();
      if (v21 && !v19)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          +[Application(ApplicationTesting) prepareTestControllerWithType:suiteURL:bundleNames:outputURL:];
        }

LABEL_13:
        v23 = 1;
LABEL_17:

        goto LABEL_21;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[Application(ApplicationTesting) prepareTestControllerWithType:suiteURL:bundleNames:outputURL:];
      }
    }

    v23 = 0;
    goto LABEL_17;
  }

  if ([v9 isEqualToString:@"bulk-classification"])
  {
    v15 = 0;
    v14 = 0x277D49E60;
    goto LABEL_7;
  }

  v24 = WBS_LOG_CHANNEL_PREFIXTest();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    +[Application(ApplicationTesting) prepareTestControllerWithType:suiteURL:bundleNames:outputURL:];
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (BOOL)overrideBrowserStateForTestNamed:(id)a3 browserController:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 hasPrefix:@"TabOverview"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"SplitView") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"TabBar") & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"Memory"))
  {
    v7 = [v5 isEqualToString:@"TabOverviewOpenNewTab"];
    v8 = [v5 isEqualToString:@"TabBarSwitchTab"];
    if ([v5 isEqualToString:@"MemoryAndLiveTabs"])
    {
      goto LABEL_12;
    }

    v9 = 64;
    if (v7)
    {
      v9 = 8;
    }

    v10 = v8 ? 1 : v9;
    if ([v5 isEqualToString:@"IOAndLiveTabs"])
    {
LABEL_12:
      v11 = [gTabMemoryAndIOTestRunner testPageURL];
      v10 = 200;
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277CBEB18] array];
    do
    {
      v13 = objc_alloc(MEMORY[0x277D7B538]);
      v14 = [v6 tabController];
      v15 = [v14 deviceIdentifier];
      v16 = [v13 initWithTitle:0 url:v11 deviceIdentifier:v15];

      [v12 addObject:v16];
      --v10;
    }

    while (v10);
    v17 = [v12 copy];
    v18 = [v6 windowState];
    v19 = [v18 localTabGroup];
    [v19 setTabs:v17];

    v20 = MEMORY[0x277D28F08];
    v21 = objc_alloc_init(PPTTestBrowserWindowSettings);
    [v20 setSharedSettings:v21];

    v22 = [MEMORY[0x277D28F08] settings];
    v23 = [v6 UUID];
    v24 = 1;
    [v22 setIsShowingTabView:1 forWindowWithUUID:v23];

    v25 = [PinnedTabsManager alloc];
    v26 = [v6 tabGroupManager];
    v27 = [v26 tabCollection];
    v28 = [(PinnedTabsManager *)v25 initWithBrowserState:0 tabCollection:v27];
    v29 = [v6 tabController];
    [v29 setPinnedTabsManager:v28];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)checkExtendedLaunchPageLoad:(id)a3 forTabDocument:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (gExtendedLaunchPageLoad == -1)
  {
    v6 = *MEMORY[0x277D76620];
    v7 = [*MEMORY[0x277D76620] _launchTestName];
    if ([v6 isRunningTest:v7])
    {
      v8 = [v11 absoluteString];
      v9 = [v8 isEqualToString:@"about:blank"];

      if ((v9 & 1) == 0)
      {
        v10 = [[PageLoadTestStatistics alloc] initWithInjectedBundle:1 withCallback:&__block_literal_global_162];
        [v5 setPageLoadStatistics:v10];
        gExtendedLaunchPageLoad = 1;

        goto LABEL_7;
      }
    }

    else
    {
    }

    gExtendedLaunchPageLoad = 0;
  }

LABEL_7:
}

void __78__Application_ApplicationTesting__checkExtendedLaunchPageLoad_forTabDocument___block_invoke()
{
  v0 = *MEMORY[0x277D76620];
  v1 = [*MEMORY[0x277D76620] _launchTestName];
  [v0 finishedTest:v1];
}

- (id)_numberOption:(id)a3
{
  v3 = [gTestOptions objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = v3;
  if (![v5 compare:@"yes" options:1])
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = 1;
LABEL_12:
    v8 = [v9 numberWithBool:v10];
LABEL_13:
    v4 = v8;

    goto LABEL_16;
  }

  if (![v5 compare:@"no" options:1])
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = 0;
    goto LABEL_12;
  }

  if ([v5 length])
  {
    v6 = [v5 rangeOfString:@"."];
    v7 = MEMORY[0x277CCABB0];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue")}];
    }

    else
    {
      [v5 doubleValue];
      [v7 numberWithDouble:?];
    }
    v8 = ;
    goto LABEL_13;
  }

LABEL_15:
  v4 = 0;
LABEL_16:

  return v4;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (gRunner)
  {
    [gRunner finish];
  }

  gTestFileURLs = 1;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v8];
  v10 = gTestOptions;
  gTestOptions = v9;

  [gTestOptions setObject:v7 forKey:@"testName"];
  objc_storeStrong(&gCurrentTestName, a3);
  v11 = [(Application *)self _browserControllerForApplicationTesting];
  if ([v7 hasPrefix:@"PLT"])
  {
    v12 = PurplePageLoadTestRunner;
LABEL_9:
    v13 = [[v12 alloc] initWithTestName:v7 browserController:v11];
LABEL_10:
    v14 = v13;
    goto LABEL_11;
  }

  if ([v7 hasPrefix:@"Alexa"])
  {
    v12 = AlexaTestRunner;
    goto LABEL_9;
  }

  if ([v7 hasPrefix:@"WhiteTabs"])
  {
    v12 = WhiteTabsTestRunner;
    goto LABEL_9;
  }

  if ([v7 hasPrefix:@"ZoomTest"])
  {
    v14 = [[ZoomTestProcessor alloc] initWithTestName:v7 browserController:v11];
    v19 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v19 intValue]);

    v20 = [gTestOptions safari_stringForKey:@"stepsPerZoom"];
    -[ZoomTestProcessor setStepsPerZoom:](v14, "setStepsPerZoom:", [v20 intValue]);
LABEL_24:

    goto LABEL_11;
  }

  if ([v7 hasPrefix:@"ZoomAnimationTest"])
  {
    v21 = ZoomAnimationTestProcessor;
LABEL_21:
    v14 = [[v21 alloc] initWithTestName:v7 browserController:v11];
    v20 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v20 intValue]);
    goto LABEL_24;
  }

  if ([v7 hasPrefix:@"ScrollTest"])
  {
    v14 = [[ScrollTestProcessor alloc] initWithTestName:v7 browserController:v11];
    v22 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v22 intValue]);

    v20 = [gTestOptions safari_stringForKey:@"scrollDelta"];
    -[ZoomTestProcessor setScrollDelta:](v14, "setScrollDelta:", [v20 intValue]);
    goto LABEL_24;
  }

  if ([v7 hasPrefix:@"ScrollDecelerationTest"])
  {
    v21 = ScrollDecelerationTestProcessor;
    goto LABEL_21;
  }

  if ([v7 hasPrefix:@"ScrollColorBlockTest"])
  {
    v12 = ScrollColorBlockTestProcessor;
    goto LABEL_9;
  }

  if ([v7 hasPrefix:@"RotationTest"])
  {
    v21 = RotationTestProcessor;
    goto LABEL_21;
  }

  if ([v7 hasPrefix:@"ScrollPerf"])
  {
    v23 = ScrollPerfTestRunner;
LABEL_33:
    v13 = [[v23 alloc] initRenderTestWithName:v7 browserController:v11 showRenderTime:0 showFPS:1];
    goto LABEL_10;
  }

  if ([v7 hasPrefix:@"PageLoadUsageofMemory"])
  {
    v12 = PurplePageMemoryTestRunner;
    goto LABEL_9;
  }

  if ([v7 hasPrefix:@"FlowManagedPageLoadTest"])
  {
    v12 = PurpleFlowManagedPageLoadTestRunner;
    goto LABEL_9;
  }

  if ([v7 hasPrefix:@"ContentAnimation"])
  {
    v23 = ContentAnimationTestRunner;
    goto LABEL_33;
  }

  if (![v7 hasPrefix:@"ScaleTest:"])
  {
    if ([v7 rangeOfString:@"ShowHideBookmarksTest"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v7 rangeOfString:@"CanvasTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v8 objectForKey:@"url"];
        if (!v17)
        {
          v30 = [v8 objectForKey:@"URLs"];
          v17 = [v30 objectAtIndex:0];
        }

        v15 = [(Application *)self startCanvasTest:v17];
        goto LABEL_13;
      }

      if ([v7 rangeOfString:@"TabViewBringUpTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewBringUpTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"TabViewRotateTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewRotationTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"TabViewOpenTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewOpenTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"TabViewSelectTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewSelectTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"TabViewCloseTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewCloseTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"KeyboardSplitAndMerge"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardSplitAndMergeTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"KeyboardBringup"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardBringupTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"KeyboardRotation"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardRotationTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"LargeFormFocus"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runLargeFormFocusTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"LargeFormTyping"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runLargeFormTypingTest];
        goto LABEL_91;
      }

      if ([v7 rangeOfString:@"GeneratePassword"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runGeneratePasswordTest];
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"TabOverview"])
      {
        [(Application *)self runTabOverviewTest];
LABEL_91:
        v15 = 1;
        goto LABEL_16;
      }

      if ([v7 hasPrefix:@"TabSnapshotCacheStressTest"])
      {
        [(Application *)self runTabSnapshotCacheStressTest];
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"BookmarksView"])
      {
        [(Application *)self runBookmarksViewTest];
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"SplitView"])
      {
        v31 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [Application(ApplicationTesting) runTest:v31 options:?];
        }

        goto LABEL_15;
      }

      if ([v7 hasPrefix:@"SearchPerformanceUnifiedFieldKeyTimeTest"])
      {
        [(Application *)self startSearchPerformanceUnifiedFieldKeyTimeTest];
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"SearchPerformanceDetailed"])
      {
        -[Application startSearchPerformanceDetailedTestWithCF:](self, "startSearchPerformanceDetailedTestWithCF:", [v7 hasPrefix:@"SearchPerformanceDetailedWithCF"]);
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"SearchPerformance"])
      {
        [(Application *)self startSearchPerformanceTest];
        goto LABEL_91;
      }

      if ([v7 hasPrefix:@"SidebarOpen"])
      {
        v29 = [(Application *)self startSidebarTest];
        goto LABEL_63;
      }

      if ([v7 hasPrefix:@"TabBar"])
      {
        v29 = [(Application *)self startTabBarTest];
        goto LABEL_63;
      }

      if ([v7 hasPrefix:@"History"])
      {
        v29 = [(Application *)self startHistoryTest];
        goto LABEL_63;
      }

      if ([v7 hasPrefix:@"Memory"])
      {
        v32 = self;
        v33 = 0;
LABEL_102:
        v29 = [(Application *)v32 runMemoryOrIOTestWithType:v33];
        goto LABEL_63;
      }

      if ([v7 hasPrefix:@"IO"])
      {
        v32 = self;
        v33 = 1;
        goto LABEL_102;
      }

      if ([v7 hasPrefix:@"TabViewScroll"])
      {
        [(Application *)self prepareTabViewScrollTest];
        goto LABEL_91;
      }

      if ([v7 isEqualToString:@"Resize"])
      {
        v29 = [(Application *)self _startResizeTestWithName:v7];
      }

      else
      {
        v34.receiver = self;
        v34.super_class = Application;
        v29 = [(Application *)&v34 runTest:v7 options:v8];
      }
    }

    else
    {
      v28 = [v8 objectForKey:@"iterations"];
      gShowBookmarksTestIterations = [v28 intValue];

      v29 = [(Application *)self prepareBookmarksTest];
    }

LABEL_63:
    v15 = v29;
    goto LABEL_16;
  }

  v14 = [(PurplePageLoadTestRunner *)[ScaleTestProcessor alloc] initRenderTestWithName:v7 browserController:v11 showRenderTime:1 showFPS:0];
  v24 = [v8 objectForKey:@"scale"];
  v25 = v24;
  if (v24)
  {
    v27 = 0;
    if (([v24 isEqualToString:@"max"] & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @".5max") & 1) == 0)
    {
      [v25 floatValue];
      v27 = LODWORD(v26);
    }

    LODWORD(v26) = v27;
    [(ZoomTestProcessor *)v14 setZoomScale:v26];
  }

LABEL_11:
  if (!v14)
  {
    NSLog(@"Could not run test '%@'", v7);
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v15 = 1;
  gRunningPurpleTest = 1;
  v16 = gRunner;
  gRunner = v14;
  v17 = v14;

  [gRunner setDelegate:self];
  [(PageLoadTestRunner *)v17 setTestOptions:v8];
  [(PageLoadTestRunner *)v17 start];
LABEL_13:

LABEL_16:
  return v15;
}

- (void)_observeNotificationOnce:(id)a3 handler:(id)a4
{
  v5 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v8 = [v6 defaultCenter];
  v9 = [MEMORY[0x277CCABD8] mainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__Application_ApplicationTesting___observeNotificationOnce_handler___block_invoke;
  v13[3] = &unk_2781D57A8;
  v14 = v5;
  v15 = &v16;
  v10 = v5;
  v11 = [v8 addObserverForName:v7 object:0 queue:v9 usingBlock:v13];

  v12 = v17[5];
  v17[5] = v11;

  _Block_object_dispose(&v16, 8);
}

void __68__Application_ApplicationTesting___observeNotificationOnce_handler___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = MEMORY[0x277CCAB98];
    v7 = a2;
    v4 = [v3 defaultCenter];
    [v4 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    (*(*(a1 + 32) + 16))();
  }
}

- (void)startKeyboardSplitAndMergeTest
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__Application_ApplicationTesting__startKeyboardSplitAndMergeTest__block_invoke;
  v7[3] = &unk_2781D4D40;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__Application_ApplicationTesting__startKeyboardSplitAndMergeTest__block_invoke_2;
  v5[3] = &unk_2781D4D40;
  v6 = v8;
  v4 = v8;
  [(Application *)self runTestForKeyboardSplitAndMergeWithName:@"KeyboardSplitAndMerge" withShowKeyboardBlock:v7 withExtraResultsBlock:0 withCleanupBlock:v5];
}

- (void)startKeyboardBringupTest
{
  [(Application *)self loadBlankPageforKeyboardTests];
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__Application_ApplicationTesting__startKeyboardBringupTest__block_invoke;
  v9[3] = &unk_2781D4D40;
  v10 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__Application_ApplicationTesting__startKeyboardBringupTest__block_invoke_2;
  v7[3] = &unk_2781D4D40;
  v8 = v10;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__Application_ApplicationTesting__startKeyboardBringupTest__block_invoke_3;
  v5[3] = &unk_2781D4D40;
  v6 = v8;
  v4 = v8;
  [(Application *)self runTestForKeyboardBringupAndDismissalWithName:@"KeyboardBringup" withShowKeyboardBlock:v9 withHideKeyboardBlock:v7 withExtraResultsBlock:0 withCleanupBlock:v5];
}

void __59__Application_ApplicationTesting__startKeyboardBringupTest__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) tabController];
  [v1 closeAllOpenTabsAnimated:0];
}

- (void)startKeyboardRotationTest
{
  [(Application *)self loadBlankPageforKeyboardTests];
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__Application_ApplicationTesting__startKeyboardRotationTest__block_invoke;
  v8[3] = &unk_2781D4D40;
  v9 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__Application_ApplicationTesting__startKeyboardRotationTest__block_invoke_2;
  v5[3] = &unk_2781D4C88;
  v6 = v9;
  v7 = self;
  v4 = v9;
  [(Application *)self runTestForKeyboardRotationWithName:@"KeyboardRotation" fromOrientation:1 withShowKeyboardBlock:v8 withExtraResultsBlock:0 withCleanupBlock:v5];
}

void __60__Application_ApplicationTesting__startKeyboardRotationTest__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancelFavorites];
  [*(a1 + 40) rotateIfNeeded:1];
  v2 = [*(a1 + 32) tabController];
  [v2 closeAllOpenTabsAnimated:0];
}

- (void)loadBlankPageforKeyboardTests
{
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v2 = [v7 tabController];
  [v2 closeAllOpenTabsAnimated:0];

  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v4 = [v7 loadURLInNewTab:v3 inBackground:0];

  v5 = [MEMORY[0x277CBEB88] mainRunLoop];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  [v5 runUntilDate:v6];
}

- (void)_loadAlternateHTMLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(Application *)self loadBlankPageforKeyboardTests];
  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__Application_ApplicationTesting___loadAlternateHTMLString_completionHandler___block_invoke;
  block[3] = &unk_2781D53E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

void __78__Application_ApplicationTesting___loadAlternateHTMLString_completionHandler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v2 = [v8 tabController];
  v3 = [v2 activeTabDocument];

  [v3 setAllowsProgrammaticFocusToBeginInputSession:1];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  [v3 loadAlternateHTMLString:v4 baseURL:v5 forUnreachableURL:v6];

  v7 = dispatch_time(0, 4000000000);
  dispatch_after(v7, MEMORY[0x277D85CD0], *(a1 + 48));
}

- (void)runLargeFormFocusTest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__Application_ApplicationTesting__runLargeFormFocusTest__block_invoke;
  v2[3] = &unk_2781D4C88;
  v2[4] = self;
  v3 = @"document.getElementsByName(firstname 500)[0].focus();";
  [(Application *)self _loadLargeForm:v2];
}

void __56__Application_ApplicationTesting__runLargeFormFocusTest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__Application_ApplicationTesting__runLargeFormFocusTest__block_invoke_2;
  v7[3] = &unk_2781D4E28;
  v7[4] = v2;
  [v2 _observeNotificationOnce:@"WebFormElementDidFocusNotification" handler:v7];
  v3 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v4 = [v3 tabController];
  v5 = [v4 activeTabDocument];

  [*(a1 + 32) startedTest:gCurrentTestName];
  v6 = [v5 webView];
  [v6 evaluateJavaScript:*(a1 + 40) completionHandler:0];
}

- (void)_typeTextInForm:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = gCurrentTestName;
  v8 = a3;
  [(Application *)self startedSubTest:@"TypeLetter" forTest:v7 withMetrics:&unk_2827FC3E8];
  v9 = [(Application *)self _browserControllerForApplicationTesting];
  v10 = [v9 tabController];
  v11 = [v10 activeTabDocument];

  v12 = [*MEMORY[0x277D76620] _responderForKeyEvents];
  [v12 insertText:v8];

  v13 = [v11 webView];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__Application_ApplicationTesting___typeTextInForm_completionHandler___block_invoke;
  v15[3] = &unk_2781D57D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v13 evaluateJavaScript:@"null;" completionHandler:v15];
}

uint64_t __69__Application_ApplicationTesting___typeTextInForm_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"TypeLetter" forTest:gCurrentTestName];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_runFormTypingTextWithSetupScript:(id)a3
{
  v4 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__323;
  v20 = __Block_byref_object_dispose__324;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke;
  aBlock[3] = &unk_2781D5820;
  v12 = @"Hello World";
  v13 = self;
  v14 = v22;
  v15 = &v16;
  v5 = _Block_copy(aBlock);
  v6 = v17[5];
  v17[5] = v5;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke_3;
  v8[3] = &unk_2781D5870;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  v10 = &v16;
  [(Application *)self _loadLargeForm:v8];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
}

void __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 >= [*(a1 + 32) length])
  {
    [*(a1 + 40) finishedTest:gCurrentTestName];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    v3 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 48) + 8) + 24), 1}];
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke_2;
    v7[3] = &unk_2781D57F8;
    v8 = *(a1 + 48);
    [v4 _typeTextInForm:v3 completionHandler:v7];
  }
}

void __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v3 = [v2 tabController];
  v4 = [v3 activeTabDocument];

  v5 = [v4 webView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke_4;
  v8[3] = &unk_2781D5848;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v8[5] = v7;
  [v5 evaluateJavaScript:v6 completionHandler:v8];
}

void __69__Application_ApplicationTesting___runFormTypingTextWithSetupScript___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) startedTest:gCurrentTestName];
  v2 = dispatch_time(0, 1000000000);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v4, v3);
}

- (void)runLargeFormTypingTest
{
  if ([gCurrentTestName hasSuffix:@"Insert"])
  {
    v3 = @"var field=document.getElementsByName(firstname 500)[0];field.oninput=function() { var insertedElement=document.createElement('input');insertedElement.type='text';insertedElement.value='Hello World';field.parentNode.insertBefore(insertedElement,field);};field.focus();";
  }

  else if ([gCurrentTestName hasSuffix:@"Delete"])
  {
    v3 = @"var field=document.getElementsByName(firstname 500)[0];field.oninput=function(){field.parentNode.removeChild(field.previousSibling);};field.focus();";
  }

  else if ([gCurrentTestName hasSuffix:@"Reorder"])
  {
    v3 = @"var field=document.getElementsByName(firstname 500)[0];field.oninput=function(){field.parentNode.insertBefore(field.previousSibling, null);};field.focus();";
  }

  else
  {
    v3 = @"document.getElementsByName(firstname 500)[0].focus();";
  }

  [(Application *)self _runFormTypingTextWithSetupScript:v3];
}

- (void)runGeneratePasswordTest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__Application_ApplicationTesting__runGeneratePasswordTest__block_invoke;
  v2[3] = &unk_2781D4D40;
  v2[4] = self;
  [(Application *)self _loadAlternateHTMLString:@"<html><body>Username: <input type=text name=username><br>Password: <input type=password name=password><br>Confirm Password: <input type=password name=confirm_password></body></html>" completionHandler:v2];
}

void __58__Application_ApplicationTesting__runGeneratePasswordTest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277D76BA8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__Application_ApplicationTesting__runGeneratePasswordTest__block_invoke_2;
  v8[3] = &unk_2781D4E28;
  v8[4] = v2;
  [v2 _observeNotificationOnce:v3 handler:v8];
  v4 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v5 = [v4 tabController];
  v6 = [v5 activeTabDocument];

  [*(a1 + 32) startedTest:gCurrentTestName];
  v7 = [v6 webView];
  [v7 evaluateJavaScript:@"document.getElementsByName(\"password\"" completionHandler:0];
}

- (void)loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4
{
  v16 = [(Application *)self _browserControllerForApplicationTesting];
  v6 = [v16 tabController];
  v7 = MEMORY[0x277CBEBC0];
  v8 = _SFSafariTestContentDirectoryPath();
  v9 = [v8 stringByAppendingPathComponent:@"Apple.webarchive"];
  v10 = [v7 fileURLWithPath:v9 isDirectory:0];

  [v6 closeAllOpenTabsAnimated:1];
  for (; a3; --a3)
  {
    v11 = [v16 loadURLInNewTab:v10 inBackground:0];
  }

  v12 = [MEMORY[0x277CBEB88] mainRunLoop];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
  [v12 runUntilDate:v13];

  v14 = [v16 tabCollectionViewProvider];
  v15 = [v14 tabThumbnailCollectionView];

  if (a4)
  {
    [v15 presentAnimated:1];
  }

  else
  {
    [v15 dismissAnimated:1];
  }
}

- (void)loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v10 = [(Application *)self _browserControllerForApplicationTesting];
  v9 = [v10 tabController];
  [v9 closeAllOpenTabsAnimated:1];
  [(Application *)self _loadTabsForTesting:a3 presentTabView:v5 completion:v8];
}

- (void)_preparePageLoadTestControllerParameters
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v2 = [v3 processPool];
  [v2 _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"enablePageLoadMeasurementCollection"];
}

- (void)_loadTabsForTesting:(unint64_t)a3 presentTabView:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  [(Application *)self _preparePageLoadTestControllerParameters];
  v9 = [(Application *)self _browserControllerForApplicationTesting];
  v10 = [v9 tabController];
  if (a3)
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = _SFSafariTestContentDirectoryPath();
    v13 = [v12 stringByAppendingPathComponent:@"Apple.webarchive"];
    v14 = [v11 fileURLWithPath:v13 isDirectory:0];

    [v10 insertNewBlankTabDocumentAnimated:0];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v15 = [v10 activeTabDocument];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__Application_ApplicationTesting___loadTabsForTesting_presentTabView_completion___block_invoke;
    v20[3] = &unk_2781D58C0;
    v22 = v25;
    v23 = a3;
    v20[4] = self;
    v24 = v5;
    v21 = v8;
    [v15 loadTestURL:v14 withInjectedBundle:1 withCallback:v20];

    v16 = [v10 activeTabDocument];
    v17 = [v16 pageLoadStatistics];
    [v17 setPageLoadingTimeoutInterval:5.0];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v18 = [v9 tabCollectionViewProvider];
    v14 = [v18 tabThumbnailCollectionView];

    if (v5)
    {
      [v14 presentAnimated:1];
    }

    else
    {
      [v14 dismissAnimated:1];
    }

    v19 = dispatch_time(0, 5000000000);
    dispatch_after(v19, MEMORY[0x277D85CD0], v8);
  }
}

void __81__Application_ApplicationTesting___loadTabsForTesting_presentTabView_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = dispatch_time(0, 300000000);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__Application_ApplicationTesting___loadTabsForTesting_presentTabView_completion___block_invoke_2;
    v6[3] = &unk_2781D5898;
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v8 = v4;
    v9 = *(a1 + 64);
    v7 = v5;
    dispatch_after(v3, MEMORY[0x277D85CD0], v6);
  }
}

- (void)prepareTabViewBringUpTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__Application_ApplicationTesting__prepareTabViewBringUpTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewBringUpTest
{
  [(Application *)self loadTabsForTesting:8 presentTabView:0];
  v3 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__Application_ApplicationTesting___prepareTabViewBringUpTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __61__Application_ApplicationTesting___prepareTabViewBringUpTest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startTabViewBringUpTest];
  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 finishedSubTest:@"TabViewBringUpAnimationBeginSubTest" forTest:gCurrentTestName];
}

- (void)startTabViewBringUpTest
{
  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"TabViewBringUpAnimationBeginSubTest" forTest:gCurrentTestName];
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [v3 tabCollectionViewProvider];

  v4 = [v5 tabThumbnailCollectionView];
  [v4 presentAnimated:1];
}

- (void)prepareTabViewOpenTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__Application_ApplicationTesting__prepareTabViewOpenTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewOpenTest
{
  [(Application *)self loadTabsForTesting:8 presentTabView:1];
  v3 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__Application_ApplicationTesting___prepareTabViewOpenTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __58__Application_ApplicationTesting___prepareTabViewOpenTest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startTabViewOpenTest];
  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 finishedSubTest:@"TabViewOpenAnimationBeginSubTest" forTest:gCurrentTestName];
}

- (void)startTabViewOpenTest
{
  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"TabViewOpenAnimationBeginSubTest" forTest:gCurrentTestName];
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [v3 tabCollectionViewProvider];

  v4 = [v5 tabThumbnailCollectionView];
  [v4 presentAnimated:1];
}

- (void)prepareTabViewSelectTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__Application_ApplicationTesting__prepareTabViewSelectTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewSelectTest
{
  [(Application *)self loadTabsForTesting:8 presentTabView:1];
  v3 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__Application_ApplicationTesting___prepareTabViewSelectTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __60__Application_ApplicationTesting___prepareTabViewSelectTest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startTabViewSelectTest];
  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 finishedSubTest:@"TabViewSelectAnimationBeginSubTest" forTest:gCurrentTestName];
}

- (void)startTabViewSelectTest
{
  [(Application *)self startedTest:gCurrentTestName];
  v3 = gCurrentTestName;

  [(Application *)self startedSubTest:@"TabViewSelectAnimationBeginSubTest" forTest:v3];
}

- (void)prepareTabViewCloseTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__Application_ApplicationTesting__prepareTabViewCloseTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewCloseTest
{
  [(Application *)self loadTabsForTesting:8 presentTabView:1];
  v3 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__Application_ApplicationTesting___prepareTabViewCloseTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)startTabViewCloseTest
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v4 = [v3 tabCollectionViewProvider];

  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"TabViewSelectAnimationBeginSubTest" forTest:gCurrentTestName];
  v5 = [(Application *)self _browserControllerForApplicationTesting];
  v6 = [v5 tabController];

  v7 = [v6 currentTabDocuments];
  v8 = [v7 objectAtIndexedSubscript:6];
  [v6 closeTabDocument:v8 animated:1];

  v9 = gCurrentTestName;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__Application_ApplicationTesting__startTabViewCloseTest__block_invoke;
  v11[3] = &unk_2781D4D40;
  v12 = v4;
  v10 = v4;
  [(Application *)self finishedTest:v9 waitForCommit:1 extraResults:0 withTeardownBlock:v11];
}

void __56__Application_ApplicationTesting__startTabViewCloseTest__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__Application_ApplicationTesting__startTabViewCloseTest__block_invoke_2;
  block[3] = &unk_2781D4D40;
  v2 = *(a1 + 32);
  dispatch_after(1uLL, MEMORY[0x277D85CD0], block);
}

void __56__Application_ApplicationTesting__startTabViewCloseTest__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tabThumbnailCollectionView];
  [v1 dismissAnimated:1];
}

- (void)prepareTabViewRotationTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__Application_ApplicationTesting__prepareTabViewRotationTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewRotationTest
{
  [(Application *)self loadTabsForTesting:8 presentTabView:1];
  v3 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__Application_ApplicationTesting___prepareTabViewRotationTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)startTabViewRotationTest
{
  [(Application *)self startedTest:gCurrentTestName];
  if ([gCurrentTestName rangeOfString:@"Landscape"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __59__Application_ApplicationTesting__startTabViewRotationTest__block_invoke_2;
    v9 = &unk_2781D4B18;
    v10 = self;
    v3 = &v6;
    v4 = self;
    v5 = 3;
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__Application_ApplicationTesting__startTabViewRotationTest__block_invoke;
    v14 = &unk_2781D4B18;
    v15 = self;
    v3 = &v11;
    v4 = self;
    v5 = 1;
  }

  [(Application *)v4 rotateIfNeeded:v5 completion:v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15];
}

- (void)prepareTabViewScrollTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__Application_ApplicationTesting__prepareTabViewScrollTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_prepareTabViewScrollTest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__Application_ApplicationTesting___prepareTabViewScrollTest__block_invoke;
  v2[3] = &unk_2781D4D40;
  v2[4] = self;
  [(Application *)self loadTabsForTesting:20 presentTabView:1 completion:v2];
}

void __60__Application_ApplicationTesting___prepareTabViewScrollTest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v3 = [v2 tabCollectionViewProvider];

  v4 = [v3 tabThumbnailCollectionView];
  [v4 test_scrollToTopWithoutAnimation];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__Application_ApplicationTesting___prepareTabViewScrollTest__block_invoke_2;
  v6[3] = &unk_2781D4D40;
  v6[4] = v5;
  [v5 installCACommitCompletionBlock:v6];
}

- (void)startTabViewScrollTest
{
  if ([getRPTTestRunnerClass() isRecapAvailable])
  {
    v3 = [(Application *)self _browserControllerForApplicationTesting];
    v8 = [v3 tabCollectionViewProvider];

    v4 = [v8 tabThumbnailCollectionView];
    v5 = [v4 view];
    v6 = [v5 window];

    [v6 bounds];
    v11 = CGRectInset(v10, 0.0, 100.0);
    [(Application *)self _scrollContentWithTestName:gCurrentTestName scrollingBounds:v11.origin.x amplitude:v11.origin.y, v11.size.width, v11.size.height, v11.size.height + v11.size.height];
  }

  else
  {
    v7 = gCurrentTestName;

    [(Application *)self failedTest:v7 withFailure:@"Recap not available"];
  }
}

- (void)_scrollContentWithTestName:(id)a3 scrollingBounds:(CGRect)a4 amplitude:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v11 = getRPTScrollViewTestParametersClass_softClass;
  v19 = getRPTScrollViewTestParametersClass_softClass;
  if (!getRPTScrollViewTestParametersClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getRPTScrollViewTestParametersClass_block_invoke;
    v15[3] = &unk_2781D4BD8;
    v15[4] = &v16;
    __getRPTScrollViewTestParametersClass_block_invoke(v15);
    v11 = v17[3];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);
  v13 = [v11 alloc];
  v14 = [v13 initWithTestName:gCurrentTestName scrollBounds:1 amplitude:0 direction:x completionHandler:{y, width, height, a5}];
  [getRPTTestRunnerClass() runTestWithParameters:v14];
}

- (BOOL)startSidebarTest
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setBool:0 forKey:@"ShowSidebar"];

  v4 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v6 = [v4 loadURLInNewTab:v5 inBackground:0 animated:0];

  v7 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__Application_ApplicationTesting__startSidebarTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);

  return 1;
}

uint64_t __51__Application_ApplicationTesting__startSidebarTest__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__Application_ApplicationTesting__startSidebarTest__block_invoke_2;
  v3[3] = &unk_2781D4B18;
  v3[4] = v1;
  return [v1 rotateIfNeeded:3 completion:v3];
}

- (void)_runSidebarTest
{
  if ([gCurrentTestName isEqualToString:@"SidebarOpenBookmarks"])
  {
    v3 = kCollectionTypeBookmarks;
  }

  else
  {
    if (![gCurrentTestName isEqualToString:@"SidebarOpenReadingList"])
    {
      goto LABEL_6;
    }

    v3 = kCollectionTypeReadingList;
  }

  [BookmarksNavigationController test_setSavedStateCollection:*v3];
LABEL_6:
  [(Application *)self _populateInMemoryBookmarksDBForTestNamed:gCurrentTestName];
  v5 = [(Application *)self _browserControllerForApplicationTesting];
  [(Application *)self _observeNotificationOnce:@"SidebarWillPresentNotification" handler:&__block_literal_global_362];
  [(Application *)self _observeNotificationOnce:@"SidebarDidPresentNotification" handler:&__block_literal_global_378_0];
  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"Delay" forTest:gCurrentTestName withMetrics:&unk_2827FC418];
  v4 = [v5 sidebarUIProxy];
  [v4 setShowingSidebar:1 completion:0];

  [BookmarksNavigationController test_setSavedStateCollection:0];
}

void __50__Application_ApplicationTesting___runSidebarTest__block_invoke()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 installCACommitCompletionBlock:&__block_literal_global_364];
}

void __50__Application_ApplicationTesting___runSidebarTest__block_invoke_2()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 finishedSubTest:@"Delay" forTest:gCurrentTestName];

  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 startedSubTest:@"Animation" forTest:gCurrentTestName withMetrics:&unk_2827FC400];
}

void __50__Application_ApplicationTesting___runSidebarTest__block_invoke_3()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 finishedSubTest:@"Animation" forTest:gCurrentTestName];

  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 finishedTest:gCurrentTestName extraResults:0];
}

- (void)startedPurpleTest
{
  gRunningPurpleTest = 1;
  v3 = [gTestOptions objectForKey:@"testName"];
  [(Application *)self startedTest:v3];
}

- (void)finishedPurpleTest:(id)a3
{
  v5 = a3;
  v4 = [gTestOptions objectForKey:@"testName"];
  if ([(Application *)self isRunningTest:v4])
  {
    [(Application *)self finishedTest:v4 extraResults:v5];
    gRunningPurpleTest = 0;
  }
}

- (void)failedPurpleTestWithError:(id)a3
{
  v5 = a3;
  v4 = [gTestOptions objectForKey:@"testName"];
  if ([(Application *)self isRunningTest:v4])
  {
    if (v5)
    {
      NSLog(@"Failed test %@: %@", v4, v5);
    }

    [(Application *)self failedTest:v4];
    gRunningPurpleTest = 0;
  }
}

- (BOOL)startCanvasTest:(id)a3
{
  self->_isRunningCanvasTest = 1;
  v4 = MEMORY[0x277CBEBC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  [(Application *)self startedPurpleTest];
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [v7 tabController];
  v9 = [v8 activeTabDocument];

  [v9 loadTestURL:v6 withInjectedBundle:1 withCallback:0];
  [(Application *)self performSelector:sel__pollCanvasTest_ withObject:0 afterDelay:5.0];

  return 1;
}

- (void)_pollCanvasTest:(id)a3
{
  v4 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [v4 tabController];
  v9 = [v5 activeTabDocument];

  v6 = [v9 URL];
  v7 = [v6 lastPathComponent];
  v8 = [v7 isEqualToString:@"results.html"];

  if (v8)
  {
    [(Application *)self finishedCanvasTestWithURL:v6 forTabDocument:v9];
  }

  else
  {
    [(Application *)self performSelector:sel__pollCanvasTest_ withObject:0 afterDelay:5.0];
  }
}

- (void)finishedCanvasTestWithURL:(id)a3 forTabDocument:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v25 = self;
  self->_isRunningCanvasTest = 0;
  v6 = [a3 fragment];
  v7 = [v6 stringByRemovingPercentEncoding];

  v27 = v7;
  [v7 dataUsingEncoding:4];
  v26 = v34 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v24 = v34;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = MEMORY[0x277CBEA60];
        v15 = MEMORY[0x277CCABB0];
        v16 = [*(*(&v30 + 1) + 8 * v13) objectForKey:@"averageTestFPS"];
        [v16 floatValue];
        v17 = [v15 numberWithFloat:?];
        v18 = [v14 arrayWithObjects:{v17, @"fps", 0, v24}];

        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"averageTestFPS", @"averageTestFPSUnits", 0}];
        v20 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v18 forKeys:v19];
        [v9 addEntriesFromDictionary:v20];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  [(Application *)v25 finishedPurpleTest:v9];
  v21 = [(Application *)v25 _browserControllerForApplicationTesting];
  v22 = [v21 tabController];

  [v22 closeTabDocument:v28 animated:0];
  v23 = [v22 activeTabDocument];
  [v22 closeTabDocument:v23 animated:0];
}

- (BOOL)startTabBarTest
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v4 = [v3 tabController];

  v5 = [v4 tabCollectionViewProvider];
  v6 = [gTestOptions objectForKeyedSubscript:@"testName"];
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [(Application *)self overrideBrowserStateForTestNamed:v6 browserController:v7];

  if (v8)
  {
    [v4 readState];
    v9 = [v5 tabThumbnailCollectionView];
    [v9 dismissAnimated:0];
  }

  v10 = [v4 activeTabDocument];
  v11 = [(Application *)self _syntheticHTMLString];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:{@"data:text/html, "}];
  [v10 loadAlternateHTMLString:v11 baseURL:v12 forUnreachableURL:0];

  v13 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__Application_ApplicationTesting__startTabBarTest__block_invoke;
  block[3] = &unk_2781D58E8;
  v18 = v4;
  v19 = self;
  v20 = v6;
  v14 = v6;
  v15 = v4;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);

  return 1;
}

void __50__Application_ApplicationTesting__startTabBarTest__block_invoke(id *a1)
{
  v2 = 8;
  do
  {
    [a1[4] insertNewBlankTabDocumentAnimated:0];
    v3 = [a1[4] activeTabDocument];
    v4 = [a1[5] _syntheticHTMLString];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:{@"data:text/html, "}];
    [v3 loadAlternateHTMLString:v4 baseURL:v5 forUnreachableURL:0];

    --v2;
  }

  while (v2);
  v6 = [a1[5] _browserControllerForApplicationTesting];
  [v6 setFavoritesState:0];

  v7 = dispatch_time(0, 5000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__Application_ApplicationTesting__startTabBarTest__block_invoke_2;
  v10[3] = &unk_2781D4C88;
  v8 = a1[6];
  v9 = a1[5];
  v11 = v8;
  v12 = v9;
  dispatch_after(v7, MEMORY[0x277D85CD0], v10);
}

uint64_t __50__Application_ApplicationTesting__startTabBarTest__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"TabBarSwitchTab"];
  if (result)
  {
    IsPad = _SFDeviceIsPad();
    v4 = *(a1 + 40);
    if (IsPad)
    {

      return [v4 _runTabBarSwitchTabTest];
    }

    else
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __50__Application_ApplicationTesting__startTabBarTest__block_invoke_3;
      v5[3] = &unk_2781D4B18;
      v5[4] = v4;
      return [v4 rotateIfNeeded:3 completion:v5];
    }
  }

  return result;
}

- (void)_runTabBarSwitchTabTest
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v4 = [v3 tabController];

  v5 = [v4 tabDocuments];
  v6 = [v4 activeTabDocument];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__Application_ApplicationTesting___runTabBarSwitchTabTest__block_invoke;
  v13[3] = &unk_2781D4E28;
  v13[4] = self;
  [(Application *)self _observeNotificationOnce:@"TabBarDidSwitchTabNotification" handler:v13];
  [(Application *)self startedTest:gCurrentTestName];
  v7 = [v5 indexOfObject:v6];
  if (v7 + 1 == [v5 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = [v5 objectAtIndex:v8];
  v10 = [v4 tabCollectionViewProvider];
  v11 = [v10 tabBar];
  v12 = [v9 tabBarItem];
  [v11 _activateItemIfNeeded:v12];
}

- (void)runTabOverviewTest
{
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v4 = [v3 tabController];

  v5 = [v4 tabCollectionViewProvider];
  v6 = [gTestOptions objectForKeyedSubscript:@"testName"];
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [(Application *)self overrideBrowserStateForTestNamed:v6 browserController:v7];

  if (v8)
  {
    [v4 readState];
    v9 = [MEMORY[0x277D28F08] settings];
    v10 = [(Application *)self _browserControllerForApplicationTesting];
    v11 = [v10 UUID];
    v12 = [v9 isShowingTabViewForWindowWithUUID:v11];

    if (v12)
    {
      v13 = [v5 tabThumbnailCollectionView];
      [v13 presentAnimated:0];
    }
  }

  if ([v6 isEqualToString:@"TabOverviewScroll"])
  {
    [(Application *)self _runTabOverviewScrollPerfTest];
  }

  else if ([v6 isEqualToString:@"TabOverviewOpenClose"])
  {
    [(Application *)self _runTabOverviewPresentingAndDismissalTest];
  }

  else if ([v6 isEqualToString:@"TabOverviewOpenNewTab"])
  {
    if (_SFDeviceIsPad())
    {
      [(Application *)self _runTabOverviewOpenNewTabTest];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__Application_ApplicationTesting__runTabOverviewTest__block_invoke;
      v14[3] = &unk_2781D4B18;
      v14[4] = self;
      [(Application *)self rotateIfNeeded:3 completion:v14];
    }
  }
}

- (void)_runTabOverviewOpenNewTabTest
{
  v3 = [gTestOptions objectForKeyedSubscript:@"testName"];
  v4 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [v4 tabController];

  v6 = [v5 tabCollectionViewProvider];
  v7 = [v6 tabThumbnailCollectionView];
  objc_initWeak(&location, v7);
  v8 = dispatch_time(0, 2000000000);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke;
  v13[3] = &unk_2781D5938;
  v14 = v7;
  v9 = v7;
  objc_copyWeak(&v18, &location);
  v15 = v3;
  v16 = v6;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  v12 = v3;
  dispatch_after(v8, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke_2;
  v4[3] = &unk_2781D5910;
  objc_copyWeak(&v7, (a1 + 64));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [TabCollectionViewBlockObserver beginObservingTabView:v2 steadyStateBlock:v4];
  v3 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 40)];
  [*v3 startedSubTest:@"Delay" forTest:*(a1 + 40) withMetrics:&unk_2827FC430];
  [*(a1 + 56) openNewTabWithOptions:0 completionHandler:0];
  [*v3 startedSubTest:@"Animation" forTest:*(a1 + 40) withMetrics:&unk_2827FC448];

  objc_destroyWeak(&v7);
}

void __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke_2(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke_3;
  v5[3] = &unk_2781D5060;
  v8 = a2;
  v6 = a1[4];
  v7 = a1[5];
  [TabCollectionViewBlockObserver performIgnoringObservationForTabView:WeakRetained block:v5];
}

void __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) & 1) != 0 || ([*MEMORY[0x277D76620] finishedSubTest:@"Delay" forTest:*(a1 + 32)], (*(a1 + 48)))
  {
    v2 = [*(a1 + 40) tabThumbnailCollectionView];
    v3 = [v2 presentationState];

    if (!v3)
    {
      v4 = MEMORY[0x277D76620];
      [*MEMORY[0x277D76620] finishedSubTest:@"Animation" forTest:*(a1 + 32)];
      v5 = *v4;
      v6 = *(a1 + 32);

      [v5 finishedTest:v6 extraResults:0];
    }
  }
}

- (void)_runTabOverviewPresentingAndDismissalTest
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v3 = [gTestOptions objectForKeyedSubscript:@"testName"];
  v4 = [gTestOptions safari_stringForKey:@"iterations"];
  v5 = [v4 intValue];

  if (v5 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  [*MEMORY[0x277D76620] startedTest:v3];
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [v7 tabController];

  v9 = [v8 tabCollectionViewProvider];
  v10 = [v9 tabThumbnailCollectionView];
  objc_initWeak(&location, v10);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __76__Application_ApplicationTesting___runTabOverviewPresentingAndDismissalTest__block_invoke;
  v16 = &unk_2781D5988;
  objc_copyWeak(v20, &location);
  v18 = v22;
  v11 = v3;
  v17 = v11;
  v19 = v23;
  v20[1] = v6;
  [TabCollectionViewBlockObserver beginObservingTabView:v10 steadyStateBlock:&v13];
  v12 = [v9 tabSwitcherViewController];
  [v12 applyContentIfNeeded];

  [v10 dismissAnimated:1];
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
}

void __76__Application_ApplicationTesting___runTabOverviewPresentingAndDismissalTest__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__Application_ApplicationTesting___runTabOverviewPresentingAndDismissalTest__block_invoke_2;
  v10[3] = &unk_2781D5960;
  v16 = a2;
  v5 = *(a1 + 32);
  v13 = *(a1 + 40);
  v6 = v5;
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = WeakRetained;
  v8 = *(a1 + 64);
  v14 = v7;
  v15 = v8;
  v9 = WeakRetained;
  [TabCollectionViewBlockObserver performIgnoringObservationForTabView:v9 block:v10];
}

uint64_t __76__Application_ApplicationTesting___runTabOverviewPresentingAndDismissalTest__block_invoke_2(uint64_t result)
{
  v1 = result;
  v2 = *(*(*(result + 48) + 8) + 24);
  if (*(result + 72) == 1)
  {
    if (v2 >= 1)
    {
      [*MEMORY[0x277D76620] finishedSubTest:@"openClose" forTest:*(result + 32)];
    }

    v3 = v1[5];
    if (*(*(v1[7] + 8) + 24) == 1)
    {
      result = [v3 dismissAnimated:1];
    }

    else
    {
      result = [v3 presentAnimated:1];
    }

    *(*(v1[7] + 8) + 24) ^= 1u;
    v6 = *(v1[6] + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    if (v7 >= v1[8])
    {
      v8 = *MEMORY[0x277D76620];
      v9 = v1[4];

      return [v8 finishedTest:v9 extraResults:0];
    }
  }

  else if (v2 >= 1)
  {
    v4 = *MEMORY[0x277D76620];
    v5 = v1[4];

    return [v4 startedSubTest:@"openClose" forTest:v5];
  }

  return result;
}

- (void)_runTabOverviewScrollPerfTest
{
  v8 = [gTestOptions objectForKeyedSubscript:@"testName"];
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  v4 = [v3 tabCollectionViewProvider];
  v5 = [v4 tabThumbnailCollectionView];
  v6 = [v5 view];
  v7 = [v6 window];

  [v7 bounds];
  v11 = CGRectInset(v10, 0.0, 100.0);
  [(Application *)self _scrollContentWithTestName:v8 scrollingBounds:v11.origin.x amplitude:v11.origin.y, v11.size.width, v11.size.height, v11.size.height + v11.size.height];
}

- (BOOL)prepareBookmarksTest
{
  self->_isRunningShowBookmarksTest = 1;
  self->_startedBookmarksTest = 0;
  v3 = [(Application *)self _browserControllerForApplicationTesting];
  if ([v3 isPresentingModalBookmarksController])
  {
    [v3 setPresentingModalBookmarksController:0 withExclusiveCollection:0 bookmarkUUIDString:0 animated:0];
  }

  else
  {
    [(Application *)self startBookmarksTest];
  }

  return 1;
}

- (void)startBookmarksTest
{
  self->_startedBookmarksTest = 1;
  v3 = +[Application sharedApplication];
  [v3 startedPurpleTest];

  v4 = [(Application *)self _browserControllerForApplicationTesting];
  [v4 performSelector:sel_toggleBookmarksPresentation withObject:0 afterDelay:0.0];
}

- (void)finishedBookmarksTest
{
  v2 = --gShowBookmarksTestIterations;
  if (self->_isRunningShowBookmarksTest)
  {
    if (v2)
    {
      v5 = [(Application *)self _browserControllerForApplicationTesting];
      [v5 performSelector:sel_toggleBookmarksPresentation withObject:0 afterDelay:0.0];
    }

    else
    {
      v4 = +[Application sharedApplication];
      [v4 finishedPurpleTest:0];

      self->_isRunningShowBookmarksTest = 0;
    }
  }
}

- (void)_populateInMemoryBookmarksDBForTestNamed:(id)a3
{
  v24 = a3;
  +[WebBookmarkCollection test_overrideMainBookmarkCollection];
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  if ([v24 isEqualToString:@"BookmarksViewFavoritesScroll"])
  {
    v4 = [v3 favoritesFolder];
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x277D7B5A0]);
      v6 = [v3 configuration];
      v4 = [v5 initFolderWithParentID:0 collectionType:{objc_msgSend(v6, "collectionType")}];

      [v3 setFavoritesFolder:v4 localOnly:1];
      [v3 saveBookmark:v4];
    }

    v7 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 250; ++i)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_Favorites_#%lu", i];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.apple.com/#%ld", i];
      v11 = objc_alloc(MEMORY[0x277D7B5A0]);
      v12 = [v3 configuration];
      v13 = [v11 initWithTitle:v9 address:v10 collectionType:{objc_msgSend(v12, "collectionType")}];

      [v3 moveBookmark:v13 toFolderWithID:{objc_msgSend(v4, "identifier")}];
      [v7 addObject:v13];
    }

    [v3 saveBookmarks:v7 postNotification:1];

    goto LABEL_7;
  }

  if (([v24 isEqualToString:@"BookmarksViewReadingListsScroll"] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"SidebarOpenReadingList"))
  {
    for (j = 0; j != 150; ++j)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_ReadingList_#%lu", j];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.testfakereadinglist_favorites_bookmark_address.com/readinglist/id=#%ld", j];
      v17 = [MEMORY[0x277CBEBC0] safari_URLWithDataAsString:v16];
      [(WebBookmarkCollection *)v3 saveReadingListBookmarkWithTitle:v15 address:v17 previewText:@"Lorem ipsum dolor sit amet thumbnailURL:pellentesque augue nonummy siteName:neque lacinia velit vulputate ipsum tabDocument:metus libero id pede didFetchPage:auctor felis metus." updateController:0 savedBookmarkID:@"testSite" shouldFetchMetadata:0, 1, 0, 0, 0];
    }
  }

  else if (([v24 isEqualToString:@"BookmarksViewBookmarksScroll"] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"SidebarOpenBookmarks"))
  {
    v4 = [MEMORY[0x277CBEB18] array];
    for (k = 0; k != 250; ++k)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_Bookmarks_#%lu", k];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.testfakereadinglist_favorites_bookmark_address.com/bookmarks/id=#%ld", k];
      v21 = objc_alloc(MEMORY[0x277D7B5A0]);
      v22 = [v3 configuration];
      v23 = [v21 initWithTitle:v19 address:v20 collectionType:{objc_msgSend(v22, "collectionType")}];

      [v4 addObject:v23];
    }

    [v3 saveBookmarks:v4 postNotification:0];
LABEL_7:
  }
}

- (id)_scrollViewForTestNamed:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self _browserControllerForApplicationTesting];
  v6 = [v5 bookmarksNavigationController];

  if ([v4 isEqualToString:@"BookmarksViewBookmarksScroll"])
  {
    v7 = [v6 topBookmarksTableViewController];
LABEL_3:
    v8 = v7;
    v9 = [v7 tableView];
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"BookmarksViewFavoritesScroll"])
  {
    v10 = [(Application *)self _browserControllerForApplicationTesting];
    v11 = [v10 rootViewController];
    v8 = [v11 catalogViewController];

    v12 = [v8 startPageViewController];
    v9 = [v12 test_scrollView];

    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"BookmarksViewReadingListsScroll"])
  {
    v7 = [v6 topReadingListViewController];
    goto LABEL_3;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)_switchToBookmarksCollectionForTestNamed:(id)a3
{
  v7 = a3;
  v4 = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [v4 bookmarksNavigationController];

  if ([v7 isEqualToString:@"BookmarksViewBookmarksScroll"])
  {
    [v5 setCurrentCollection:@"BookmarksCollection"];
  }

  else if ([v7 isEqualToString:@"BookmarksViewReadingListsScroll"])
  {
    v6 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    [v5 setCurrentCollection:@"ReadingListCollection"];
    [MEMORY[0x277D75D18] setAnimationsEnabled:v6];
  }
}

- (void)runBookmarksViewTest
{
  v3 = [gTestOptions safari_stringForKey:@"testName"];
  [(Application *)self _populateInMemoryBookmarksDBForTestNamed:v3];
  v4 = [gTestOptions safari_stringForKey:@"iterations"];
  v5 = [v4 intValue];

  v6 = [v3 isEqualToString:@"BookmarksViewFavoritesScroll"];
  v7 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = v7;
  if (v6)
  {
    [v7 setFavoritesState:4];
  }

  else
  {
    [v7 showBookmarksPanelWithNonAnimatedTransitionWithCollection:@"BookmarkCollection"];

    [(Application *)self _switchToBookmarksCollectionForTestNamed:v3];
  }

  if (v5 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v5;
  }

  v10 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__Application_ApplicationTesting__runBookmarksViewTest__block_invoke;
  block[3] = &unk_2781D59B0;
  block[4] = self;
  v13 = v3;
  v14 = v9;
  v11 = v3;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

void __55__Application_ApplicationTesting__runBookmarksViewTest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _scrollViewForTestNamed:*(a1 + 40)];
  [v2 _performScrollTest:*(a1 + 40) iterations:*(a1 + 48) delta:10];
}

- (id)searchParametersWithCFEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277D4A0A8]);
    [v5 setIsCFSearch:1];
    [v5 setEnableCompletionListHistoryDeduplicationValue:0];
    [v5 setEnableCompletionListHistoryDeduplicationSwitchToTabValue:0];
    [v4 addObject:v5];
  }

  v6 = objc_alloc_init(MEMORY[0x277D4A0A8]);
  [v6 setIsCFSearch:0];
  [v6 setEnableCompletionListHistoryDeduplicationValue:1];
  [v6 setEnableCompletionListHistoryDeduplicationSwitchToTabValue:1];
  [v4 addObject:v6];

  return v4;
}

- (void)startSearchPerformanceDetailedTestWithCF:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D49F70]);
  v6 = gHistoryServiceConnection;
  gHistoryServiceConnection = v5;

  v7 = objc_alloc_init(MEMORY[0x277D49EB0]);
  v8 = gHistoryPushConnection;
  gHistoryPushConnection = v7;

  v9 = [gHistoryServiceConnection queryMemoryFootprintWithError:0];
  v10 = gInitialHistoryServiceMemoryFootprint;
  gInitialHistoryServiceMemoryFootprint = v9;

  v11 = [gHistoryPushConnection queryMemoryFootprintWithError:0];
  v12 = gInitialHistoryPushAgentMemoryFootprint;
  gInitialHistoryPushAgentMemoryFootprint = v11;

  v13 = [objc_alloc(MEMORY[0x277D49A68]) initWithError:0];
  v14 = gInitialSafariMemoryFootprint;
  gInitialSafariMemoryFootprint = v13;

  [(Application *)self startSearchPerformanceTestWithTestStrings:&unk_2827FC478 perQuery:1 withCF:v3];
}

- (void)startSearchPerformanceTestWithTestStrings:(id)a3 perQuery:(BOOL)a4 withCF:(BOOL)a5
{
  v7 = a3;
  [(Application *)self startedPurpleTest];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke;
  aBlock[3] = &unk_2781D59D8;
  v47 = a4;
  aBlock[4] = self;
  v11 = v10;
  v45 = v11;
  v46 = v9;
  v12 = _Block_copy(aBlock);
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__1;
  v42[4] = __Block_byref_object_dispose__1;
  v14 = [MEMORY[0x277CCABD8] mainQueue];
  v43 = [v13 addObserverForName:@"completionProviderDidStart" object:0 queue:v14 usingBlock:v12];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__1;
  v40[4] = __Block_byref_object_dispose__1;
  v15 = [MEMORY[0x277CCABD8] mainQueue];
  v41 = [v13 addObserverForName:@"completionProviderDidFinish" object:0 queue:v15 usingBlock:v12];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__1;
  v38[4] = __Block_byref_object_dispose__1;
  v16 = [MEMORY[0x277CCABD8] mainQueue];
  v39 = [v13 addObserverForName:@"catalogViewControllerDidStart" object:0 queue:v16 usingBlock:v12];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__1;
  v36[4] = __Block_byref_object_dispose__1;
  v17 = [MEMORY[0x277CCABD8] mainQueue];
  v37 = [v13 addObserverForName:@"catalogViewControllerDidFinish" object:0 queue:v17 usingBlock:v12];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_2;
  block[3] = &unk_2781D5A00;
  v33 = v40;
  v34 = v38;
  v35 = v36;
  v29 = v13;
  v30 = self;
  v31 = v9;
  v32 = v42;
  v18 = v13;
  v19 = MEMORY[0x277D85CD0];
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_4;
  v23[3] = &unk_2781D5A28;
  v26 = a4;
  v27 = a5;
  v23[4] = self;
  v24 = v7;
  v25 = v8;
  v20 = v8;
  v21 = v7;
  dispatch_async(v19, v23);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

void __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = [v44 name];
  if (([v3 isEqualToString:@"completionProviderDidStart"] & 1) == 0)
  {
    v4 = [v44 name];
    [v4 isEqualToString:@"completionProviderDidFinish"];
  }

  v5 = [v44 name];
  if ([v5 isEqualToString:@"completionProviderDidStart"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v44 name];
    v6 = [v7 isEqualToString:@"catalogViewControllerDidStart"];
  }

  v8 = [v44 object];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);

  v11 = [v44 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"query"];

  v13 = [v44 userInfo];
  v14 = [v13 objectForKeyedSubscript:@"time"];

  if (*(a1 + 56) == 1)
  {
    v15 = [*(a1 + 32) _browserControllerForApplicationTesting];
    v16 = [v15 rootViewController];
    [v16 catalogViewController];
    v42 = v10;
    v43 = a1;
    v18 = v17 = v12;
    [v18 completionList];
    v20 = v19 = v14;
    v21 = [v20 searchParametersList];
    [v21 firstObject];
    v23 = v22 = v6;
    v24 = [v23 isCFSearch];
    v25 = @"normal - ";
    if (v24)
    {
      v25 = @"cf - ";
    }

    v26 = v25;

    v6 = v22;
    v14 = v19;

    v12 = v17;
    v10 = v42;
    a1 = v43;
  }

  else
  {
    v26 = &stru_2827BF158;
  }

  v27 = [*(a1 + 40) objectForKey:v10];
  v28 = v27;
  if (v6)
  {
    if (!v27)
    {
      v28 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 40) setObject:v28 forKey:v10];
    }

    [v28 setObject:v14 forKeyedSubscript:v12];
  }

  else
  {
    v29 = [v27 objectForKeyedSubscript:v12];
    v30 = v29;
    if (v28 && v29)
    {
      v31 = MEMORY[0x277CCABB0];
      [v14 doubleValue];
      v33 = v32;
      [v30 doubleValue];
      v35 = [v31 numberWithDouble:v33 - v34];
      if (*(a1 + 56))
      {
        v36 = v10;
        v41 = v10;
        v37 = v12;
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@'%@' - %@ completion time", v26, v12, v41];
      }

      else
      {
        v38 = v10;
        v37 = v12;
        v36 = v38;
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ completion time", v26, v38, v40];
      }
      v39 = ;
      [*(a1 + 48) setObject:v35 forKeyedSubscript:v39];

      v12 = v37;
      v10 = v36;
    }

    else
    {
    }
  }
}

void __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_3;
  block[3] = &unk_2781D5A00;
  v5 = *(a1 + 32);
  v3 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v3;
  v6 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 32) removeObserver:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 32) removeObserver:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) removeObserver:*(*(*(a1 + 80) + 8) + 40)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  if (gInitialSafariMemoryFootprint)
  {
    v12 = [*(a1 + 40) _generateMemoryFootprintResults:v10];
    [v11 finishedPurpleTest:v12];
  }

  else
  {

    [v11 finishedPurpleTest:v10];
  }
}

void __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _browserControllerForApplicationTesting];
  [v2 setFavoritesFieldFocused:1 animated:1];

  v3 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v4 = [v3 rootViewController];
  v7 = [v4 catalogViewController];

  if (*(a1 + 56) == 1)
  {
    [v7 _ensureCompletionListAndParsecSession];
    v5 = [*(a1 + 32) searchParametersWithCFEnabled:*(a1 + 57)];
    v6 = [v7 completionList];
    [v6 setSearchParametersList:v5];
  }

  [*(a1 + 32) _doSearchTestOnCVC:v7 WithTestStrings:*(a1 + 40) andDispatchGroup:*(a1 + 48)];
}

- (void)startSearchPerformanceUnifiedFieldKeyTimeTest
{
  [(Application *)self startedPurpleTest];
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__Application_ApplicationTesting__startSearchPerformanceUnifiedFieldKeyTimeTest__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  v4 = MEMORY[0x277D85CD0];
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__Application_ApplicationTesting__startSearchPerformanceUnifiedFieldKeyTimeTest__block_invoke_3;
  v6[3] = &unk_2781D4C88;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __80__Application_ApplicationTesting__startSearchPerformanceUnifiedFieldKeyTimeTest__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__Application_ApplicationTesting__startSearchPerformanceUnifiedFieldKeyTimeTest__block_invoke_2;
  block[3] = &unk_2781D4D40;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __80__Application_ApplicationTesting__startSearchPerformanceUnifiedFieldKeyTimeTest__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _browserControllerForApplicationTesting];
  [v2 setFavoritesFieldFocused:1 animated:1];

  v14 = [&unk_2827FC490 mutableCopy];
  v3 = [*(a1 + 32) _browserControllerForApplicationTesting];
  v4 = [v3 rootViewController];
  v5 = [v4 catalogViewController];

  [v5 _ensureCompletionListAndParsecSession];
  v6 = [PPTUniversalCompletionProvider alloc];
  v7 = +[FrequentlyVisitedSitesController sharedController];
  v8 = [(UniversalSearchCompletionProvider *)v6 initWithFrequentlyVisitedSitesController:v7];

  v9 = [v5 completionList];
  [(CompletionProvider *)v8 setDelegate:v9];

  v10 = [v5 completionList];
  [v10 setUniversalSearchProvider:v8];

  v11 = [[PPTSearchSuggestionProvider alloc] initForPrivateBrowsing:0];
  v12 = [v5 completionList];
  [v11 setDelegate:v12];

  v13 = [v5 completionList];
  [v13 setSuggestionProvider:v11];

  [*(a1 + 32) _doSearchTestOnCVC:v5 WithTestStrings:v14 andDispatchGroup:*(a1 + 40)];
}

- (void)_doSearchTestOnCVC:(id)a3 WithTestStrings:(id)a4 andDispatchGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_group_create();
  v11 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__Application_ApplicationTesting___doSearchTestOnCVC_WithTestStrings_andDispatchGroup___block_invoke;
  v16[3] = &unk_2781D5A50;
  v17 = v8;
  v18 = v10;
  v19 = v7;
  v20 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  dispatch_async(v11, v16);
}

void __87__Application_ApplicationTesting___doSearchTestOnCVC_WithTestStrings_andDispatchGroup___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        dispatch_group_enter(*(a1 + 40));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __87__Application_ApplicationTesting___doSearchTestOnCVC_WithTestStrings_andDispatchGroup___block_invoke_2;
        block[3] = &unk_2781D58E8;
        v13 = *(a1 + 48);
        v14 = v8;
        v15 = *(a1 + 40);
        dispatch_async(v6, block);
        dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v9 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__Application_ApplicationTesting___doSearchTestOnCVC_WithTestStrings_andDispatchGroup___block_invoke_3;
  v10[3] = &unk_2781D4D40;
  v11 = *(a1 + 56);
  dispatch_after(v9, MEMORY[0x277D85CD0], v10);
}

- (BOOL)_resetHistoryWithCompressedDatabaseAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 safari_settingsDirectoryURL];
  v8 = [v6 safari_ensureDirectoryExists:v7];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db", gCurrentTestName];
  v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:0];

  v11 = [v6 safari_settingsDirectoryURL];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db-wal", gCurrentTestName];
  v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:0];

  v14 = [v6 safari_settingsDirectoryURL];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db-shm", gCurrentTestName];
  v16 = [v14 URLByAppendingPathComponent:v15 isDirectory:0];

  [v6 removeItemAtURL:v10 error:0];
  [v6 removeItemAtURL:v13 error:0];
  [v6 removeItemAtURL:v16 error:0];
  v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:a4];
  v18 = v17;
  if (!v17)
  {
    v35 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [Application(ApplicationTesting) _resetHistoryWithCompressedDatabaseAtURL:error:];
    }

    goto LABEL_15;
  }

  v19 = [v17 safari_dataByDecompressingData];
  v20 = [v19 writeToURL:v10 options:0 error:a4];

  if ((v20 & 1) == 0)
  {
    v36 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [Application(ApplicationTesting) _resetHistoryWithCompressedDatabaseAtURL:error:];
    }

LABEL_15:
    v34 = 0;
    goto LABEL_16;
  }

  v38 = v5;
  v21 = v10;
  v22 = dispatch_queue_create("rebaseHistoryVisitTimesOfDatabaseAt", 0);
  v23 = [objc_alloc(MEMORY[0x277D49B00]) initWithURL:v21 queue:v22];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  block = MEMORY[0x277D85DD0];
  p_block = 3221225472;
  v41 = __rebaseHistoryVisitTimesOfDatabaseAt_block_invoke;
  v42 = &unk_2781D5AE0;
  v44 = &v46;
  v24 = v23;
  v43 = v24;
  v45 = &v50;
  dispatch_sync(v22, &block);
  v25 = *(v47 + 24);
  if (a4 && (v25 & 1) == 0)
  {
    *a4 = *(v51 + 40);
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v46, 8);

  if (v25)
  {
    block = 0;
    p_block = &block;
    v41 = 0x3020000000;
    LOBYTE(v44) = 0;
    v26 = +[History sharedHistory];
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __waitUntilHistoryFinishLoading_block_invoke;
    v53 = &unk_2781D5B08;
    v27 = v26;
    v54 = v27;
    v55 = &block;
    [v27 performBlockAfterHistoryHasLoaded:&v50];
    if ((*(p_block + 40) & 1) == 0)
    {
      v28 = *MEMORY[0x277CBE640];
      do
      {
        v29 = [MEMORY[0x277CBEB88] mainRunLoop];
        v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.01];
        [v29 runMode:v28 beforeDate:v30];
      }

      while ((*(p_block + 40) & 1) == 0);
    }

    _Block_object_dispose(&block, 8);
    v31 = +[History sharedHistory];
    [v31 _unload];

    v32 = objc_opt_class();
    ClassMethod = class_getClassMethod(v32, sel_historyDatabaseURL);
    method_setImplementation(ClassMethod, pptHistoryOverride);
    objc_storeStrong(&pptHistoryURL, v10);
    v34 = 1;
    v5 = v38;
  }

  else
  {
    v34 = 0;
    v5 = v38;
  }

LABEL_16:

  return v34;
}

- (BOOL)startHistoryTest
{
  v3 = objc_alloc_init(MEMORY[0x277D49F70]);
  v4 = gHistoryServiceConnection;
  gHistoryServiceConnection = v3;

  v5 = objc_alloc_init(MEMORY[0x277D49EB0]);
  v6 = gHistoryPushConnection;
  gHistoryPushConnection = v5;

  v7 = [gHistoryServiceConnection queryMemoryFootprintWithError:0];
  v8 = gInitialHistoryServiceMemoryFootprint;
  gInitialHistoryServiceMemoryFootprint = v7;

  v9 = [gHistoryPushConnection queryMemoryFootprintWithError:0];
  v10 = gInitialHistoryPushAgentMemoryFootprint;
  gInitialHistoryPushAgentMemoryFootprint = v9;

  v11 = [objc_alloc(MEMORY[0x277D49A68]) initWithError:0];
  v12 = gInitialSafariMemoryFootprint;
  gInitialSafariMemoryFootprint = v11;

  v13 = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Safari/History-Large.db.z"];
  v23 = 0;
  v15 = [(Application *)self _resetHistoryWithCompressedDatabaseAtURL:v14 error:&v23];
  v16 = v23;

  if (v15)
  {
    objc_autoreleasePoolPop(v13);
    if ([gCurrentTestName isEqualToString:@"HistoryLoad"])
    {
      v17 = [(Application *)self startHistoryLoadTest];
    }

    else
    {
      v20 = +[History sharedHistory];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __51__Application_ApplicationTesting__startHistoryTest__block_invoke;
      v22[3] = &unk_2781D4D40;
      v22[4] = self;
      [v20 performBlockAfterHistoryHasLoaded:v22];

      v17 = 1;
    }
  }

  else
  {
    v18 = gCurrentTestName;
    v19 = [v16 description];
    [(Application *)self failedTest:v18 withFailure:v19];

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  return v17;
}

void __51__Application_ApplicationTesting__startHistoryTest__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__Application_ApplicationTesting__startHistoryTest__block_invoke_2;
  block[3] = &unk_2781D4D40;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__Application_ApplicationTesting__startHistoryTest__block_invoke_2(uint64_t a1)
{
  v2 = [gCurrentTestName isEqualToString:@"HistorySearchPerformance"];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 startSearchPerformanceTestWithTestStrings:&unk_2827FC4A8];
  }

  else
  {
    v5 = gCurrentTestName;

    return [v3 failedTest:v5 withFailure:@"Unknown test name"];
  }
}

- (id)_generateMemoryFootprintResults:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D49A68]) initWithError:0];
  v5 = [gHistoryServiceConnection queryMemoryFootprintWithError:0];
  v6 = [gHistoryPushConnection queryMemoryFootprintWithError:0];
  v63 = v3;
  if (v3)
  {
    v7 = [v3 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  v9 = [gInitialSafariMemoryFootprint dirtySize];
  v10 = [gInitialHistoryServiceMemoryFootprint dirtySize] + v9;
  v57 = v10 + [gInitialHistoryPushAgentMemoryFootprint dirtySize];
  v11 = [v4 dirtySize];
  v12 = [v5 dirtySize];
  v58 = v12 + [v6 dirtySize] + v11;
  v13 = [gInitialSafariMemoryFootprint residentSize];
  v14 = [gInitialHistoryServiceMemoryFootprint residentSize] + v13;
  v59 = v14 + [gInitialHistoryPushAgentMemoryFootprint residentSize];
  v15 = [v4 residentSize];
  v16 = [v5 residentSize];
  v61 = v16 + [v6 residentSize] + v15;
  v17 = [gInitialSafariMemoryFootprint defaultMallocZone];
  v18 = [v17 sizeInUse];
  [gInitialHistoryServiceMemoryFootprint defaultMallocZone];
  v19 = v5;
  v20 = v56 = v5;
  v21 = v6;
  v22 = [v20 sizeInUse] + v18;
  v23 = [gInitialHistoryPushAgentMemoryFootprint defaultMallocZone];
  v62 = v22 + [v23 sizeInUse];

  v24 = v4;
  v25 = [v4 defaultMallocZone];
  v26 = [v25 sizeInUse];
  v27 = [v19 defaultMallocZone];
  v28 = [v27 sizeInUse];
  v29 = v21;
  v30 = [v21 defaultMallocZone];
  v60 = v28 + [v30 sizeInUse] + v26;

  v31 = [gInitialSafariMemoryFootprint defaultMallocZone];
  v32 = [v31 sizeAllocated];
  v33 = [gInitialHistoryServiceMemoryFootprint defaultMallocZone];
  v34 = [v33 sizeAllocated] + v32;
  v35 = [gInitialHistoryPushAgentMemoryFootprint defaultMallocZone];
  v36 = v34 + [v35 sizeAllocated];

  v37 = [v24 defaultMallocZone];
  v38 = [v37 sizeAllocated];
  v39 = [v56 defaultMallocZone];
  v40 = [v39 sizeAllocated];
  v41 = [v29 defaultMallocZone];
  v42 = v40 + [v41 sizeAllocated] + v38;

  v43 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v57, 0x14uLL)}];
  [v8 setObject:v43 forKeyedSubscript:@"MemoryDirtyBegin"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryDirtyBeginUnits"];
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v58, 0x14uLL)}];
  [v8 setObject:v44 forKeyedSubscript:@"MemoryDirtyEnd"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryDirtyEndUnits"];
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:(v58 - v57) * 0.000000953674316];
  [v8 setObject:v45 forKeyedSubscript:@"MemoryDirtyDiff"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryDirtyDiffUnits"];
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v59, 0x14uLL)}];
  [v8 setObject:v46 forKeyedSubscript:@"MemoryResidentBegin"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryResidentBeginUnits"];
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v61, 0x14uLL)}];
  [v8 setObject:v47 forKeyedSubscript:@"MemoryResidentEnd"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryResidentEndUnits"];
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:(v61 - v59) * 0.000000953674316];
  [v8 setObject:v48 forKeyedSubscript:@"MemoryResidentDiff"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryResidentDiffUnits"];
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v62, 0x14uLL)}];
  [v8 setObject:v49 forKeyedSubscript:@"MemoryMallocUsedBegin"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocUsedBeginUnits"];
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v60, 0x14uLL)}];
  [v8 setObject:v50 forKeyedSubscript:@"MemoryMallocUsedEnd"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocUsedEndUnits"];
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:(v60 - v62) * 0.000000953674316];
  [v8 setObject:v51 forKeyedSubscript:@"MemoryMallocUsedDiff"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocUsedDiffUnits"];
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v36, 0x14uLL)}];
  [v8 setObject:v52 forKeyedSubscript:@"MemoryMallocAllocatedBegin"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocAllocatedBeginUnits"];
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v42, 0x14uLL)}];
  [v8 setObject:v53 forKeyedSubscript:@"MemoryMallocAllocatedEnd"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocAllocatedEndUnits"];
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:(v42 - v36) * 0.000000953674316];
  [v8 setObject:v54 forKeyedSubscript:@"MemoryMallocAllocatedDiff"];

  [v8 setObject:@"MB" forKeyedSubscript:@"MemoryMallocAllocatedDiffUnits"];

  return v8;
}

- (BOOL)startHistoryLoadTest
{
  [(Application *)self startedTest:gCurrentTestName];
  v3 = +[History sharedHistory];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__Application_ApplicationTesting__startHistoryLoadTest__block_invoke;
  v5[3] = &unk_2781D4D40;
  v5[4] = self;
  [v3 performBlockAfterHistoryHasLoaded:v5];

  return 1;
}

void __55__Application_ApplicationTesting__startHistoryLoadTest__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__Application_ApplicationTesting__startHistoryLoadTest__block_invoke_2;
  block[3] = &unk_2781D4D40;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__Application_ApplicationTesting__startHistoryLoadTest__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = gCurrentTestName;
  v3 = [v1 _generateMemoryFootprintResults:0];
  [v1 finishedTest:v2 extraResults:v3];
}

- (BOOL)runMemoryOrIOTestWithType:(unint64_t)a3
{
  v5 = [(Application *)self _browserControllerForApplicationTesting];
  v6 = [v5 tabController];
  v7 = [v6 tabCollectionViewProvider];
  if ([(Application *)self overrideBrowserStateForTestNamed:gCurrentTestName browserController:v5])
  {
    [v6 readState];
    v8 = [v7 tabThumbnailCollectionView];
    [v8 dismissAnimated:0];
  }

  [(Application *)self _preparePageLoadTestControllerParameters];
  [(Application *)self startedTest:gCurrentTestName];
  v9 = [MemoryAndIOTestRunner alloc];
  v10 = [(MemoryAndIOTestRunner *)v9 initWithTestName:gCurrentTestName browserController:v5 type:a3];
  v11 = gTabMemoryAndIOTestRunner;
  gTabMemoryAndIOTestRunner = v10;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__Application_ApplicationTesting__runMemoryOrIOTestWithType___block_invoke;
  v13[3] = &unk_2781D5A78;
  v13[4] = self;
  [gTabMemoryAndIOTestRunner runTestWithCompletion:v13];

  return 1;
}

- (BOOL)_startResizeTestWithName:(id)a3
{
  v4 = a3;
  v5 = [(Application *)self _browserControllerForApplicationTesting];
  v6 = [v5 webView];
  v7 = [v6 window];

  if (v7)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v8 = getRPTResizeTestParametersClass_softClass;
    v16 = getRPTResizeTestParametersClass_softClass;
    if (!getRPTResizeTestParametersClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getRPTResizeTestParametersClass_block_invoke;
      v12[3] = &unk_2781D4BD8;
      v12[4] = &v13;
      __getRPTResizeTestParametersClass_block_invoke(v12);
      v8 = v14[3];
    }

    v9 = v8;
    _Block_object_dispose(&v13, 8);
    v10 = [[v8 alloc] initWithTestName:v4 window:v7 completionHandler:0];
    [v10 setMinimumWindowSize:{300.0, 300.0}];
    [v10 setMaximumWindowSize:{750.0, 950.0}];
    [getRPTTestRunnerClass() runTestWithParameters:v10];
  }

  else
  {
    [(Application *)self failedTest:v4 withFailure:@"No window available"];
  }

  return v7 != 0;
}

- (void)pageLoadTestRunnerFinished:(id)a3
{
  v3 = gRunner;
  if (gRunner == a3)
  {
    gRunner = 0;

    gRunningPurpleTest = 0;
  }
}

+ (void)postTestNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:v10 object:v7 userInfo:v8];
  }
}

- (void)runTabSnapshotCacheStressTest
{
  v3 = objc_alloc_init(TabSnapshotCacheStressTestRunner);
  v4 = gTabSnapshotCacheStressTestRunner;
  gTabSnapshotCacheStressTestRunner = v3;

  v5 = [gTestOptions objectForKeyedSubscript:@"iterations"];
  v7 = v5;
  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 10;
  }

  [gTabSnapshotCacheStressTestRunner setMaxIterations:v6];
  [gTabSnapshotCacheStressTestRunner setDelegate:self];
  [(Application *)self startedPurpleTest];
  [gTabSnapshotCacheStressTestRunner start];
}

- (void)tabSnapshotCacheStressTestRunnerDidFinish:(id)a3
{
  v4 = gTabSnapshotCacheStressTestRunner;
  gTabSnapshotCacheStressTestRunner = 0;

  [(Application *)self finishedPurpleTest:0];
}

- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __72__Application_authenticateToUnlockPrivateBrowsingWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __45__Application_saveChangesToCloudHistoryStore__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __31__Application_systemMemorySize__block_invoke_cold_1(void *a1, mach_error_t a2)
{
  v3 = a1;
  mach_error_string(a2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke_263_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [OUTLINED_FUNCTION_4() localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)webExtensionsControllerForProfileServerID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_215819000, v0, OS_LOG_TYPE_FAULT, "Requested a profile web extensions controller with empty server ID %{public}@", v1, 0xCu);
}

- (void)contentBlockerManagerForProfileServerID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_215819000, v0, OS_LOG_TYPE_FAULT, "Requested a profile content blocker manager with empty server ID %{public}@", v1, 0xCu);
}

- (uint64_t)_showSearchEngineAlertIfNeeded
{
  dlerror();
  v0 = abort_report_np();
  return [(Application *)v0 _export30DaysWorthOfHistoryAfterUpgrade];
}

void __48__Application__resetCloudHistoryAccountIfNeeded__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __81__Application__updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_3_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __46__Application__updateCloudFeatureAvailability__block_invoke_2_358_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __53__Application_sceneForTabWithUUID_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)deleteBookmarksWithUUIDs:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_215819000, v7, OS_LOG_TYPE_ERROR, "Failed to delete bookmark %{public}@", a1, 0xCu);
}

void __43__Application_closeWindowsWithIdentifiers___block_invoke_3_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end