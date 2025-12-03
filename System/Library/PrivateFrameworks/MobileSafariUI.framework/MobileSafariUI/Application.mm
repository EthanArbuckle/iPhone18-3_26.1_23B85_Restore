@interface Application
+ (BOOL)prepareTestControllerWithType:(id)type suiteURL:(id)l bundleNames:(id)names outputURL:(id)rL;
+ (CKContextClient)contextClient;
+ (id)browserControllerUIDelegateProvider;
+ (unint64_t)systemMemorySize;
+ (void)commandLineTestOption:(int)option arg:(const char *)arg;
+ (void)initialize;
+ (void)postTestNotificationName:(id)name object:(id)object userInfo:(id)info;
+ (void)setBrowserControllerUIDelegateProvider:(id)provider;
- (AutomationController)automationController;
- (BOOL)_hasLockablePrivateTabsOpenInAnyWindow;
- (BOOL)_hasPrivateBrowserControllerActiveInAnyWindow;
- (BOOL)_mediaIsPlayingInPrivateBrowsing;
- (BOOL)_resetHistoryWithCompressedDatabaseAtURL:(id)l error:(id *)error;
- (BOOL)_startResizeTestWithName:(id)name;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)browsing;
- (BOOL)hasAnyInstalledExtensionsInAnyProfile;
- (BOOL)hasPointerDevice;
- (BOOL)isNoteTakingControllerSupportedInPrivateBrowsing:(id)browsing;
- (BOOL)isRunningPPT;
- (BOOL)overrideBrowserStateForTestNamed:(id)named browserController:(id)controller;
- (BOOL)prefersSingleWindow;
- (BOOL)prepareBookmarksTest;
- (BOOL)privateBrowsingRequiresAuthentication;
- (BOOL)runMemoryOrIOTestWithType:(unint64_t)type;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)shouldRestoreStateForPPT;
- (BOOL)startCanvasTest:(id)test;
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
- (id)_allTabsWithExtensionContentLoadedForBrowserController:(id)controller extensionHost:(id)host composedIdentifier:(id)identifier;
- (id)_browserControllerForApplicationTesting;
- (id)_browserControllerForTabWithUUID:(id)d;
- (id)_extendLaunchTest;
- (id)_generateMemoryFootprintResults:(id)results;
- (id)_numberOption:(id)option;
- (id)_recentsStoreForDefaultProfile;
- (id)_scrollViewForTestNamed:(id)named;
- (id)_sortedBrowserControllers;
- (id)_tabCompletionProvider;
- (id)_userContentControllerForProfileServerID:(id)d;
- (id)allContentBlockerManagers;
- (id)allWebExtensionsControllers;
- (id)contentBlockerManagerForProfileServerID:(id)d;
- (id)createBookmarkWithTitle:(id)title url:(id)url;
- (id)createNewWindowWithRequestIdentifier:(id)identifier isPrivate:(BOOL)private;
- (id)createRecommendationMediatorOrReuseExistingOneIfPossible;
- (id)processPoolForProfileIdentifier:(id)identifier;
- (id)recentsStoreForProfileWithIdentifier:(id)identifier;
- (id)sceneForTabGroupWithUUIDString:(id)string;
- (id)searchParametersWithCFEnabled:(BOOL)enabled;
- (id)sectionManagerForProfileWithIdentifier:(id)identifier;
- (id)sfWebExtensionsController:(id)controller navigationIntentUUIDForWindow:(id)window;
- (id)sfWebExtensionsController:(id)controller reusableTabWithID:(double)d;
- (id)sfWebExtensionsController:(id)controller tabForWebView:(id)view;
- (id)sfWebExtensionsController:(id)controller tabWithID:(double)d;
- (id)sfWebExtensionsController:(id)controller windowForWebView:(id)view extension:(id)extension;
- (id)sfWebExtensionsController:(id)controller windowWithID:(double)d;
- (id)sfWebExtensionsControllerAllWindows:(id)windows;
- (id)sfWebExtensionsControllerDomainForDefaultSearchProvider:(id)provider;
- (id)sfWebExtensionsControllerLastFocusedWindow:(id)window;
- (id)suggestionsManagerForProfileIdentifier:(id)identifier;
- (id)tabCollectionConfiguration;
- (id)tabEntityWithUUID:(id)d;
- (id)tabInfosForBrowserTabCompletionProvider:(id)provider;
- (id)webExtensionsControllerForProfileServerID:(id)d;
- (id)webExtensionsControllerForTabWithPrivateBrowsingEnabled:(BOOL)enabled profile:(id)profile;
- (id)windowEntityWithIdentifier:(id)identifier;
- (uint64_t)_showSearchEngineAlertIfNeeded;
- (unint64_t)_numberOfTabsForPrivateBrowsing:(BOOL)browsing;
- (unint64_t)maximumTabCountAllowingMoreTabs:(BOOL)tabs;
- (void)_addDefaultsObserver;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillResignActive:(id)active;
- (void)_clearInvalidCertificateBypassesOlderThanOneWeek;
- (void)_connectToCyclerIfNecessary;
- (void)_createExtensionControllersIfNeededForProfileServerID:(id)d;
- (void)_deleteExtensionControllersForProfileServerID:(id)d;
- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)handler;
- (void)_didEnableCustomizationSync;
- (void)_doSearchTestOnCVC:(id)c WithTestStrings:(id)strings andDispatchGroup:(id)group;
- (void)_downloadDidStartNotification:(id)notification;
- (void)_downloadDidStopNotification:(id)notification;
- (void)_export30DaysWorthOfHistoryAfterUpgrade;
- (void)_frequentlyVisitedSitesWereChanged:(id)changed;
- (void)_getBookmarksDataClassEnabledWithCompletionHandler:(id)handler;
- (void)_handleHIDEvent:(__IOHIDEvent *)event;
- (void)_historyHostnamesWereRemoved:(id)removed;
- (void)_historyItemsWereRemoved:(id)removed;
- (void)_historyWasCleared:(id)cleared;
- (void)_initializeProcessPoolForProfileIdentifier:(id)identifier;
- (void)_loadAlternateHTMLString:(id)string completionHandler:(id)handler;
- (void)_loadExtensionsInProfile:(id)profile;
- (void)_loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view completion:(id)completion;
- (void)_observeNotificationOnce:(id)once handler:(id)handler;
- (void)_performBookmarksDatabaseTasksInBackground;
- (void)_pollCanvasTest:(id)test;
- (void)_populateInMemoryBookmarksDBForTestNamed:(id)named;
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
- (void)_runFormTypingTextWithSetupScript:(id)script;
- (void)_runSidebarTest;
- (void)_runTabBarSwitchTabTest;
- (void)_runTabOverviewOpenNewTabTest;
- (void)_runTabOverviewPresentingAndDismissalTest;
- (void)_runTabOverviewScrollPerfTest;
- (void)_saveFrequentlyVisitedListsToDatabaseIfNeeded;
- (void)_scrollContentWithTestName:(id)name scrollingBounds:(CGRect)bounds amplitude:(double)amplitude;
- (void)_setUpSuggestionManagersIfNeeded;
- (void)_setWKWebsiteDataStoreDelegate;
- (void)_showExtensionPermissionBannerIfNecessary;
- (void)_showSearchEngineAlertIfNeeded;
- (void)_suspendOrResumeWallpaperAnimationIfNeeded;
- (void)_switchToBookmarksCollectionForTestNamed:(id)named;
- (void)_tabGroupFocusConfigurationChanged;
- (void)_typeTextInForm:(id)form completionHandler:(id)handler;
- (void)_updateCloudFeatureAvailability;
- (void)_updateKeyboardCorrectionLearningAllowed;
- (void)_updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory;
- (void)_webBookmarksDidReload;
- (void)applicationWillSuspend;
- (void)applicationWillTerminate;
- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
- (void)checkExtendedLaunchPageLoad:(id)load forTabDocument:(id)document;
- (void)closeWindowsWithIdentifiers:(id)identifiers;
- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock;
- (void)deleteBookmarksWithUUIDs:(id)ds;
- (void)deleteTabGroupsWithUUIDs:(id)ds;
- (void)didReceiveMemoryWarning;
- (void)downloadDidFail:(id)fail;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidReceiveResponse:(id)response;
- (void)downloadDidStart:(id)start;
- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler;
- (void)enumerateContentBlockerManagersUsingBlock:(id)block;
- (void)extensionsController:(id)controller closeOpenExtensionTabsInPrivateBrowsingWithBaseURI:(id)i composedIdentifier:(id)identifier;
- (void)extensionsController:(id)controller closeOpenExtensionTabsWithBaseURI:(id)i composedIdentifier:(id)identifier;
- (void)failedPurpleTestWithError:(id)error;
- (void)finishedBookmarksTest;
- (void)finishedCanvasTestWithURL:(id)l forTabDocument:(id)document;
- (void)finishedPurpleTest:(id)test;
- (void)getSavedAccountContextForGlobalFrameIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleKeyUIEvent:(id)event;
- (void)loadBlankPageforKeyboardTests;
- (void)loadExtensionsInProfileIfNecessary:(id)necessary;
- (void)loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view;
- (void)loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view completion:(id)completion;
- (void)lockPrivateBrowsing;
- (void)mousePointerDevicesDidConnect:(id)connect;
- (void)mousePointerDevicesDidDisconnect:(id)disconnect;
- (void)moveTabsWithUUIDs:(id)ds toTabGroupWithUUID:(id)d;
- (void)moveTabsWithUUIDs:(id)ds toWindowWithIdentifier:(id)identifier;
- (void)navigateTabWithUUID:(id)d toURL:(id)l;
- (void)noteTakingController:(id)controller addHighlightForUserActivity:(id)activity completion:(id)completion;
- (void)notifyAddedLinkPreviewMetadata:(id)metadata toUserActivity:(id)activity webView:(id)view;
- (void)notifyExtensionControllersThatSettingsWereUpdatedExternallyFromSettingsApp;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageLoadTestRunnerFinished:(id)finished;
- (void)pdfDataForTabWithUUID:(id)d completionHandler:(id)handler;
- (void)prepareTabViewBringUpTest;
- (void)prepareTabViewCloseTest;
- (void)prepareTabViewOpenTest;
- (void)prepareTabViewRotationTest;
- (void)prepareTabViewScrollTest;
- (void)prepareTabViewSelectTest;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
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
- (void)sceneForTabWithUUID:(id)d completionHandler:(id)handler;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)setNeedsFocusProfileUpdate:(BOOL)update;
- (void)setNeedsFocusedTabGroupUpdate:(BOOL)update;
- (void)setObject:(id)object forInjectedBundleParameter:(id)parameter;
- (void)setPrivateBrowsingRequiresAuthentication:(BOOL)authentication;
- (void)sfWebExtensionsController:(id)controller createNewTabInWindow:(id)window tabIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler;
- (void)sfWebExtensionsController:(id)controller pinTab:(id)tab;
- (void)sfWebExtensionsController:(id)controller relateParentTab:(id)tab toTab:(id)toTab;
- (void)sfWebExtensionsController:(id)controller showPopupOrPerSitePermissionsForExtension:(id)extension forTab:(id)tab completionHandler:(id)handler;
- (void)sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:(id)banner;
- (void)showWindowWithIdentifier:(id)identifier;
- (void)startBookmarksTest;
- (void)startCommandLineTest;
- (void)startKeyboardBringupTest;
- (void)startKeyboardRotationTest;
- (void)startKeyboardSplitAndMergeTest;
- (void)startSearchPerformanceDetailedTestWithCF:(BOOL)f;
- (void)startSearchPerformanceTestWithTestStrings:(id)strings perQuery:(BOOL)query withCF:(BOOL)f;
- (void)startSearchPerformanceUnifiedFieldKeyTimeTest;
- (void)startTabViewBringUpTest;
- (void)startTabViewCloseTest;
- (void)startTabViewOpenTest;
- (void)startTabViewRotationTest;
- (void)startTabViewScrollTest;
- (void)startTabViewSelectTest;
- (void)startedPurpleTest;
- (void)tabEntitiesMatchingQuery:(id)query completionHandler:(id)handler;
- (void)tabGroupManager:(id)manager didInsertProfileWithIdentifier:(id)identifier;
- (void)tabGroupManager:(id)manager didRemoveProfileWithIdentifier:(id)identifier;
- (void)tabGroupManagerDidUpdateProfiles:(id)profiles;
- (void)tabSnapshotCacheStressTestRunnerDidFinish:(id)finish;
- (void)unlockPrivateBrowsing;
- (void)updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing;
- (void)updateLockedPrivateBrowsingState;
- (void)updateShouldLockPrivateBrowsingWithTimerIfNecessary;
- (void)userDefaultsDidChange:(id)change;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)webClipCacheDidChange:(id)change;
- (void)websiteDataStore:(id)store domain:(id)domain didOpenDomainViaWindowOpen:(id)open withProperty:(int64_t)property directly:(BOOL)directly;
- (void)websiteDataStore:(id)store openWindow:(id)window fromServiceWorkerOrigin:(id)origin completionHandler:(id)handler;
@end

@implementation Application

+ (void)initialize
{
  if (objc_opt_class() == self)
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
    tabCollectionConfiguration = [(Application *)self tabCollectionConfiguration];
    v6 = [v4 initWithConfiguration:tabCollectionConfiguration openDatabase:1];

    v7 = [objc_alloc(MEMORY[0x277D7B580]) initWithCollection:v6];
    v8 = self->_tabGroupManager;
    self->_tabGroupManager = v7;

    v9 = self->_tabGroupManager;
    mEMORY[0x277D7B588] = [MEMORY[0x277D7B588] sharedProxy];
    [(WBTabGroupManager *)v9 addTabGroupObserver:mEMORY[0x277D7B588]];

    [(WBTabGroupManager *)self->_tabGroupManager addTabGroupObserver:self];
    mEMORY[0x277D7B588]2 = [MEMORY[0x277D7B588] sharedProxy];
    [(WBTabGroupManager *)self->_tabGroupManager setSyncAgentProxy:mEMORY[0x277D7B588]2];

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
  isRunningPPT = [(Application *)self isRunningPPT];
  if (isRunningPPT)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"shouldRestoreStateForPPT"];

    LOBYTE(isRunningPPT) = v4;
  }

  return isRunningPPT;
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
  safari_allPersistentDataStores = [MEMORY[0x277CE3868] safari_allPersistentDataStores];
  v4 = [safari_allPersistentDataStores countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(safari_allPersistentDataStores);
        }

        [*(*(&v8 + 1) + 8 * v7++) set_delegate:self];
      }

      while (v5 != v7);
      v5 = [safari_allPersistentDataStores countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_readFocusConfigurationKeys
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults stringForKey:*MEMORY[0x277D49D98]];
  focusedTabGroupUUIDString = self->_focusedTabGroupUUIDString;
  self->_focusedTabGroupUUIDString = v4;

  safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  self->_needsFocusedTabGroupUpdate = [safari_browserDefaults2 BOOLForKey:*MEMORY[0x277D49C30]];

  if ([(NSString *)self->_focusedTabGroupUUIDString length])
  {
    tabGroupManager = [(Application *)self tabGroupManager];
    v8 = [tabGroupManager tabGroupWithUUID:self->_focusedTabGroupUUIDString];
    isInDefaultProfile = [v8 isInDefaultProfile];

    if ((isInDefaultProfile & 1) == 0)
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

  safari_browserDefaults3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v14 = [safari_browserDefaults3 stringForKey:*MEMORY[0x277D49CF8]];

  if (!self->_focusProfileIdentifier || v14)
  {
    objc_storeStrong(&self->_focusProfileIdentifier, v14);
    safari_browserDefaults4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    self->_needsFocusProfileUpdate = [safari_browserDefaults4 BOOLForKey:*MEMORY[0x277D49C28]];

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
    mEMORY[0x277D4A0C8] = [MEMORY[0x277D4A0C8] sharedStore];
    v6 = [v4 initWithDataStore:mEMORY[0x277D4A0C8]];
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
    automationController = [(Application *)self automationController];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    v5 = *MEMORY[0x277CDB980];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__Application__prewarmAutomationControllerIfEnabled__block_invoke;
    v8[3] = &unk_2781D4E28;
    v8[4] = self;
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:0 usingBlock:v8];
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

    userDefinedContentBlockerManager = [(Application *)self userDefinedContentBlockerManager];
    [(WBSPrivateBrowsingUserDefinedContentBlockerManager *)self->_userDefinedContentBlockerManagerForPrivateBrowsing setNormalBrowsingUserDefinedContentBlockerManager:userDefinedContentBlockerManager];

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
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults objectForKey:*MEMORY[0x277D4A2F0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D4A348]];
  }

  return v4;
}

- (void)_pruneExpiredBrowserScenes
{
  openSessions = [(Application *)self openSessions];
  v4 = [openSessions safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_320];

  [(BrowserWindowController *)self->_browserWindowController removeWindowsNotMatchingSceneIDs:v4 supportsMultipleScenes:[(Application *)self supportsMultipleScenes]];
}

- (void)_clearInvalidCertificateBypassesOlderThanOneWeek
{
  mEMORY[0x277D49EA8] = [MEMORY[0x277D49EA8] sharedManager];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  [mEMORY[0x277D49EA8] clearCertificateBypassesCreatedBeforeDate:v2];
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
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = *MEMORY[0x277D28FF8];
  v4 = [safari_browserDefaults stringForKey:*MEMORY[0x277D28FF8]];
  v5 = MGCopyAnswer();
  [safari_browserDefaults setObject:v5 forKey:v3];
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

      _showSearchEngineAlertIfNeeded = [Application _showSearchEngineAlertIfNeeded];
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(_showSearchEngineAlertIfNeeded);
    }

LABEL_15:
    searchEngineSettingAlert = [MEMORY[0x277D28D70] searchEngineSettingAlert];
    [searchEngineSettingAlert scheduleWithCompletionBlock:&__block_literal_global_294];
  }

LABEL_16:
}

- (void)prewarmAndRemoveOrphanedProfileDataStores
{
  v23 = *MEMORY[0x277D85DE8];
  tabGroupManager = [(Application *)self tabGroupManager];
  allNamedProfileIdentifiers = [tabGroupManager allNamedProfileIdentifiers];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [allNamedProfileIdentifiers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v10 = [MEMORY[0x277CE3868] safari_dataStoreForProfileWithIdentifier:*(*(&v18 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CE3868];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__Application_prewarmAndRemoveOrphanedProfileDataStores__block_invoke;
  v16[3] = &unk_2781D4FA0;
  v17 = allNamedProfileIdentifiers;
  v12 = allNamedProfileIdentifiers;
  [v11 _fetchAllIdentifiers:v16];
  v13 = MEMORY[0x277D4A7C0];
  tabGroupManager2 = [(Application *)self tabGroupManager];
  allProfileIdentifiers = [tabGroupManager2 allProfileIdentifiers];
  [v13 clearCachedDataForProfilesWithIdentifiersNotInSet:allProfileIdentifiers];
}

- (void)_updateCloudFeatureAvailability
{
  v3 = +[FeatureManager sharedFeatureManager];
  isCloudSyncAvailable = [v3 isCloudSyncAvailable];

  if (isCloudSyncAvailable)
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
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

        [standardUserDefaults addObserver:self forKeyPath:*(*(&v46 + 1) + 8 * v24++) options:3 context:userDefaultsObserverContext];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v22);
  }

  safari_browserSharedDefaults = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
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

        [safari_browserSharedDefaults addObserver:self forKeyPath:*(*(&v42 + 1) + 8 * v31++) options:3 context:userDefaultsObserverContext];
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v29);
  }

  webui_defaults = [MEMORY[0x277CBEBD0] webui_defaults];
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

        [webui_defaults addObserver:self forKeyPath:*(*(&v38 + 1) + 8 * v37++) options:3 context:userDefaultsObserverContext];
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v35);
  }
}

- (void)_reportLaunchAnalyticsSoon
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  settings = [MEMORY[0x277D28F08] settings];
  hasPrivateBrowsingWindow = [settings hasPrivateBrowsingWindow];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__Application__reportLaunchAnalyticsSoon__block_invoke;
  v7[3] = &unk_2781D5060;
  v9 = hasPrivateBrowsingWindow;
  v7[4] = self;
  v8 = mEMORY[0x277D499B8];
  v6 = mEMORY[0x277D499B8];
  [v6 performOnAnalyticsQueueWithDelay:5 block:v7];
}

- (void)_connectToCyclerIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  countOfEnabledCyclers = [MEMORY[0x277D49F00] countOfEnabledCyclers];
  if (countOfEnabledCyclers != 1)
  {
    if (!countOfEnabledCyclers)
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
    tabGroupManager = [(Application *)self tabGroupManager];
    v8 = [v6 initWithTabGroupManager:tabGroupManager];
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
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v12 = [(CyclerCommandHandler *)v10 initWithBookmarkCollection:mainBookmarkCollection];

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
  composedIdentifiersOfExtensionsWithAutomaticallyGrantedPermissions = [v3 composedIdentifiersOfExtensionsWithAutomaticallyGrantedPermissions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__Application__showExtensionPermissionBannerIfNecessary__block_invoke;
  v9[3] = &unk_2781D5480;
  v10 = v3;
  v5 = v3;
  v6 = [composedIdentifiersOfExtensionsWithAutomaticallyGrantedPermissions safari_mapAndFilterObjectsUsingBlock:v9];

  if ([v6 count])
  {
    browserControllers = [(Application *)self browserControllers];
    firstObject = [browserControllers firstObject];
    [firstObject showExtensionPermissionBannerForExtensions:v6];
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
    bookmarkImagesDirectoryPath = [MEMORY[0x277D7B5A8] bookmarkImagesDirectoryPath];
    v7 = [v5 fileURLWithPath:bookmarkImagesDirectoryPath isDirectory:1];
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
  tabGroupManager = [(Application *)self tabGroupManager];
  namedProfiles = [tabGroupManager namedProfiles];

  v5 = [namedProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(namedProfiles);
        }

        identifierForExtensions = [*(*(&v12 + 1) + 8 * v8) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:identifierForExtensions];

        ++v8;
      }

      while (v6 != v8);
      v6 = [namedProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allValues = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers allValues];

  return allValues;
}

- (BOOL)usesLoweredSearchBar
{
  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  v3 = [mEMORY[0x277D28C70] preferredCapsuleLayoutStyle] != 2;

  return v3;
}

- (void)updateShouldLockPrivateBrowsingWithTimerIfNecessary
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v15 = [safari_browserDefaults objectForKey:*MEMORY[0x277D4A0E0]];

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

      safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [safari_browserDefaults2 safari_doubleForKey:*MEMORY[0x277D4A1A8] defaultValue:30.0];
      v10 = v9;

      v11 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_lockPrivateBrowsing selector:0 userInfo:0 repeats:v10];
      v12 = self->_lockPrivateBrowsingInBackgroundTimer;
      self->_lockPrivateBrowsingInBackgroundTimer = v11;

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [currentRunLoop addTimer:self->_lockPrivateBrowsingInBackgroundTimer forMode:*MEMORY[0x277CBE640]];
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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(browserControllers);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isShowingPrivateTabs] && (objc_msgSend(v6, "activeWindowIsForeground") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [browserControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        tabController = [v7 tabController];
        privateTabDocuments = [tabController privateTabDocuments];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = privateTabDocuments;
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

              tabDocumentPlayingPIPVideo = [v7 tabDocumentPlayingPIPVideo];

              if (v15 == tabDocumentPlayingPIPVideo)
              {
                goto LABEL_22;
              }

              webView = [v15 webView];
              if ([webView cameraCaptureState] == 1)
              {

LABEL_22:
                v19 = 1;
                goto LABEL_23;
              }

              microphoneCaptureState = [webView microphoneCaptureState];

              if (microphoneCaptureState == 1)
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

      v4 = [browserControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  browserControllers = [(Application *)self browserControllers];
  firstObject = [browserControllers firstObject];

  return firstObject;
}

- (id)allContentBlockerManagers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tabGroupManager = [(Application *)self tabGroupManager];
  namedProfiles = [tabGroupManager namedProfiles];

  v5 = [namedProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(namedProfiles);
        }

        identifierForExtensions = [*(*(&v12 + 1) + 8 * v8) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:identifierForExtensions];

        ++v8;
      }

      while (v6 != v8);
      v6 = [namedProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allValues = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers allValues];

  return allValues;
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = *MEMORY[0x277D7B638];
  v5 = standardUserDefaults;
  if ([standardUserDefaults BOOLForKey:*MEMORY[0x277D7B638]])
  {
    [v5 removeObjectForKey:v4];
    [(WBSCloudHistoryServiceProtocol *)self->_cloudHistory resetForAccountChangeWithCompletionHandler:&__block_literal_global_350];
  }
}

- (void)_suspendOrResumeWallpaperAnimationIfNeeded
{
  isSuspended = [(Application *)self isSuspended];
  wallpaperSuspensionAssertion = self->_wallpaperSuspensionAssertion;
  if (isSuspended)
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    profileIdentifiersToSuggestionsManagers = self->_profileIdentifiersToSuggestionsManagers;
    self->_profileIdentifiersToSuggestionsManagers = dictionary;

    v5 = objc_alloc(MEMORY[0x277D4A848]);
    highlightManager = [(Application *)self highlightManager];
    v6 = [v5 initWithSuggestionsProvider:highlightManager];
    highlightManagerSuggestionsProviderBroadcaster = self->_highlightManagerSuggestionsProviderBroadcaster;
    self->_highlightManagerSuggestionsProviderBroadcaster = v6;
  }
}

- (void)_didEnableCustomizationSync
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D49BE8]];

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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isPrivateBrowsingEnabled] & 1) != 0 || (objc_msgSend(v7, "isControlledByAutomation"))
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [browserControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(browserControllers);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPrivateBrowsingEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [browserControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        tabController = [*(*(&v22 + 1) + 8 * i) tabController];
        pinnedTabsManager = [tabController pinnedTabsManager];
        privatePinnedTabs = [pinnedTabsManager privatePinnedTabs];
        v10 = [privatePinnedTabs count];

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
        privateTabs = [tabController privateTabs];
        v12 = [privateTabs countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(privateTabs);
              }

              if (![*(*(&v18 + 1) + 8 * j) isBlank])
              {

                goto LABEL_19;
              }
            }

            v13 = [privateTabs countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [browserControllers countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (void)setPrivateBrowsingRequiresAuthentication:(BOOL)authentication
{
  if (authentication)
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

- (void)authenticateToUnlockPrivateBrowsingWithCompletionHandler:(id)handler
{
  v27[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!self->_lockedPrivateBrowsingAuthenticationCompletionHandlers)
  {
    array = [MEMORY[0x277CBEB18] array];
    lockedPrivateBrowsingAuthenticationCompletionHandlers = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
    self->_lockedPrivateBrowsingAuthenticationCompletionHandlers = array;
  }

  if (handlerCopy)
  {
    v7 = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
    v8 = _Block_copy(handlerCopy);
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
      firstObject = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

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
      [(LAContext *)v20 evaluatePolicy:2 options:firstObject reply:v24];
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

      firstObject = [(NSMutableArray *)self->_lockedPrivateBrowsingAuthenticationCompletionHandlers firstObject];
      v22 = self->_lockedPrivateBrowsingAuthenticationCompletionHandlers;
      self->_lockedPrivateBrowsingAuthenticationCompletionHandlers = 0;

      v23 = self->_lockedPrivateBrowsingAuthenticationContext;
      self->_lockedPrivateBrowsingAuthenticationContext = 0;

      if (firstObject)
      {
        firstObject[2](firstObject, 0);
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
  standardStore = [MEMORY[0x277D49EF0] standardStore];
  [standardStore closeDatabase];
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
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers safari_firstObjectPassingTest:&__block_literal_global_64];
  v4 = v3 == 0;

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setCorrectionLearningAllowed:v4];
}

uint64_t __55__Application__updateKeyboardCorrectionLearningAllowed__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 configuration];
  v3 = [v2 allowsKeyboardCorrectionLearning];

  return v3 ^ 1u;
}

- (void)_applicationWillResignActive:(id)active
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
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [mEMORY[0x277D28F58] setSuspended:1];
  }
}

- (void)_applicationDidBecomeActive:(id)active
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

    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [mEMORY[0x277D28F58] setSuspended:0];

    v6 = MEMORY[0x277D49FC8];
    settings = [MEMORY[0x277D28F08] settings];
    +[WBSParsecDSession sendLaunchFeedbackWithEvent:isPrivate:usesLoweredSearchBar:](v6, 26, [settings hasPrivateBrowsingWindow], -[Application usesLoweredSearchBar](self, "usesLoweredSearchBar"));

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    browserControllers = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    v9 = [browserControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(browserControllers);
          }

          scene = [*(*(&v26 + 1) + 8 * i) scene];

          if (scene)
          {
            ++v11;
          }
        }

        v10 = [browserControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = [(Application *)self _numberOfTabsForPrivateBrowsing:0];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportNumberOfWindows:v11];
    [mEMORY[0x277D499B8] reportNumberOfTabs:v15];
    if (v11)
    {
      v17 = (v15 / v11);
    }

    else
    {
      v17 = 0;
    }

    [mEMORY[0x277D499B8] reportNumberOfTabsPerWindow:v17];
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v19 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D49BE8]];

    if (v19)
    {
      v20 = 1;
    }

    else
    {
      safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v20 = [safari_browserDefaults2 BOOLForKey:*MEMORY[0x277D49BF8]];
    }

    mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
    currentPlaybackState = [mEMORY[0x277D28D48] currentPlaybackState];

    if (currentPlaybackState)
    {
      mEMORY[0x277D28D48]2 = [MEMORY[0x277D28D48] sharedPlaybackController];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __43__Application__applicationDidBecomeActive___block_invoke;
      v25[3] = &unk_2781D4D18;
      v25[4] = self;
      [mEMORY[0x277D28D48]2 updateContentIdentifierOnQueue:MEMORY[0x277D85CD0] completion:v25];
    }

    [mEMORY[0x277D499B8] reportCustomizationSyncEnablement:v20];
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

- (void)_applicationWillEnterForeground:(id)foreground
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Application will enter foreground", buf, 2u);
  }

  settings = [MEMORY[0x277D28F08] settings];
  hasPrivateBrowsingWindow = [settings hasPrivateBrowsingWindow];

  [(WBSParsecDSession *)MEMORY[0x277D49FC8] sendLaunchFeedbackWithEvent:hasPrivateBrowsingWindow isPrivate:[(Application *)self usesLoweredSearchBar] usesLoweredSearchBar:?];
  mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
  [mEMORY[0x277D49B18] setUsesOpportunisticPushTopic:0];

  [(BrowserWindowController *)self->_browserWindowController updateCloudTabsForEnteringForeground];
  if ([MEMORY[0x277D49E28] shouldCloseTabsAutomaticallyWhenEnteringForeground])
  {
    [MEMORY[0x277D49E28] clearMostDistantLastViewedTime];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    browserControllers = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    v9 = [browserControllers countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(browserControllers);
          }

          tabController = [*(*(&v18 + 1) + 8 * v12) tabController];
          [tabController closeTabsAutomaticallyIfNecessary];

          ++v12;
        }

        while (v10 != v12);
        v10 = [browserControllers countByEnumeratingWithState:&v18 objects:v23 count:16];
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

  tabGroupManager = [(Application *)self tabGroupManager];
  [tabGroupManager enableDevicePresenceReporting];
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

- (void)_applicationDidEnterBackground:(id)background
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
  mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
  [mEMORY[0x277D49B18] setUsesOpportunisticPushTopic:1];

  v6 = MEMORY[0x277D49FC8];
  settings = [MEMORY[0x277D28F08] settings];
  +[WBSParsecDSession sendSuspendFeedbackWithEvent:isPrivate:](v6, 23, [settings hasPrivateBrowsingWindow]);

  [(BrowserWindowController *)self->_browserWindowController updateCloudTabsForEnteringBackground];
  [(Application *)self _suspendOrResumeWallpaperAnimationIfNeeded];
  mEMORY[0x277CDB8F8] = [MEMORY[0x277CDB8F8] sharedController];
  [mEMORY[0x277CDB8F8] savePendingChanges];

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
        mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
        v18 = [mEMORY[0x277CDB7A8] shouldExcludeDownloadFromList:v16];

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
  allWebExtensionsControllers = [(Application *)self allWebExtensionsControllers];
  v20 = [allWebExtensionsControllers countByEnumeratingWithState:&v26 objects:v35 count:16];
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
          objc_enumerationMutation(allWebExtensionsControllers);
        }

        [*(*(&v26 + 1) + 8 * v23++) didDeactivateWindow];
      }

      while (v21 != v23);
      v21 = [allWebExtensionsControllers countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v21);
  }

  tabGroupManager = [(Application *)self tabGroupManager];
  [tabGroupManager disableDevicePresenceReporting];

  mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
  [mEMORY[0x277D4A060] donatePendingTabDataNowWithCompletionHandler:0];
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
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = mainBookmarkCollection;
  if (self->_bookmarksDatabaseBackgroundTaskIdentifier == *MEMORY[0x277D767B0] && mainBookmarkCollection != 0)
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
    mainBookmarkCollection2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    hasInMemoryChanges = [mainBookmarkCollection2 hasInMemoryChanges];

    v12 = 0.0;
    if (hasInMemoryChanges)
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didEnterBackgroundWithBookmarksInMemory];

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

- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__Application_databaseLockAcquisitor_acquiredLock___block_invoke;
  aBlock[3] = &unk_2781D4D40;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v8 = mainBookmarkCollection;
  if (lock)
  {
    [mainBookmarkCollection applyInMemoryChangesToDatabase];

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

- (void)_frequentlyVisitedSitesWereChanged:(id)changed
{
  object = [changed object];
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

    [(NSMutableSet *)pendingFrequentlyVisitedSites addObject:object];
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

    tabGroupManager = [(Application *)self tabGroupManager];
    [tabGroupManager disableSuddenTerminationForPendingChanges];

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

- (void)handleKeyUIEvent:(id)event
{
  eventCopy = event;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if ((useUIResponderMethodsForModifierFlags_flag & 1) == 0)
  {
    self->_currentKeyboardModifierFlags = [eventCopy _modifierFlags];
  }

  v5.receiver = self;
  v5.super_class = Application;
  [(Application *)&v5 handleKeyUIEvent:eventCopy];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (useUIResponderMethodsForModifierFlags_onceToken != -1)
  {
    [Application handleKeyUIEvent:];
  }

  if (useUIResponderMethodsForModifierFlags_flag == 1)
  {
    self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  }

  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = Application;
  [(Application *)&v11 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  mainSystem = [MEMORY[0x277D75730] mainSystem];

  if (system == mainSystem)
  {
    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
    firstObject = [_sortedBrowserControllers firstObject];
    rootViewController = [firstObject rootViewController];
    [mEMORY[0x277D28BF0] setAlwaysAllowWebInterception:{objc_msgSend(rootViewController, "isInYttriumMode")}];

    [mEMORY[0x277D28BF0] setMenusForSafariWithBuilder:builderCopy];
  }
}

- (void)userDefaultsDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = Application;
  [(Application *)&v4 userDefaultsDidChange:change];
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
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  [mEMORY[0x277CDB8A8] reloadSearchEngines];
}

void __52__Application__managedProfileConfigurationDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateJavaScriptPreferences];
  [v2 fraudWarningsToggled];
  [v2 updatePrivateBrowsingAvailabilityWithCompletionHandler:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (userDefaultsObserverContext == context)
  {
    v12 = *MEMORY[0x277CCA300];
    changeCopy = change;
    changeCopy2 = [changeCopy objectForKeyedSubscript:v12];
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    if (changeCopy2 | v14 && ([changeCopy2 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __62__Application_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_2781D4C88;
      v16 = pathCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = Application;
    changeCopy2 = change;
    [(Application *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy2 context:context];
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

- (unint64_t)_numberOfTabsForPrivateBrowsing:(BOOL)browsing
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
  browsingCopy = browsing;
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

- (unint64_t)maximumTabCountAllowingMoreTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"DebugOverrideTabCapacity"];

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
        integerValue = 200;
      }

      else
      {
        mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
        if (([mEMORY[0x277D28C70] allowsUnlimitedTabs] & tabsCopy) != 0)
        {
          integerValue = 5000;
        }

        else
        {
          integerValue = 500;
        }
      }
    }

    else
    {
      integerValue = 36;
    }
  }

  else if ([v5 integerValue] == -1)
  {
    integerValue = -1;
  }

  else
  {
    integerValue = [v5 integerValue];
  }

  return integerValue;
}

- (BOOL)canAddNewTabForPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  if (browsing)
  {
    primaryBrowserController = [(Application *)self primaryBrowserController];
    isPrivateBrowsingAvailable = [primaryBrowserController isPrivateBrowsingAvailable];

    if (!isPrivateBrowsingAvailable)
    {
      return 0;
    }
  }

  v7 = [(Application *)self _numberOfTabsForPrivateBrowsing:browsingCopy];
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

- (void)_handleHIDEvent:(__IOHIDEvent *)event
{
  v8.receiver = self;
  v8.super_class = Application;
  [(Application *)&v8 _handleHIDEvent:?];
  automationSession = [(AutomationController *)self->_automationController automationSession];

  if (automationSession)
  {
    nSClassFromString(@"_WKTouchEventGenerator") = [NSClassFromString(@"_WKTouchEventGenerator") sharedTouchEventGenerator];
    v7 = nSClassFromString(@"_WKTouchEventGenerator");
    if (nSClassFromString(@"_WKTouchEventGenerator"))
    {
      [nSClassFromString(@"_WKTouchEventGenerator") receivedHIDEvent:event];
    }
  }
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v143 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v6 = WBS_LOG_CHANNEL_PREFIXSignposts();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LaunchToFirstLoad", "", buf, 2u);
  }

  supportsMultipleScenes = [*MEMORY[0x277D76620] supportsMultipleScenes];
  [MEMORY[0x277D28F00] setShouldMergeAllWindowsIfNeeded:supportsMultipleScenes ^ 1u];
  +[WebBookmarkCollection observeDatabaseVacuumNotification];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [MEMORY[0x277D4A010] overrideSystemProxiesIfNeeded:safari_browserDefaults];
  mEMORY[0x277D4A0A0] = [MEMORY[0x277D4A0A0] shared];
  [mEMORY[0x277D4A0A0] performDelayedLaunchOperations];

  v10 = objc_alloc(MEMORY[0x277D28F58]);
  safari_safariInjectedBundleURL = [MEMORY[0x277CCA8D8] safari_safariInjectedBundleURL];
  v12 = MEMORY[0x277CBEBC0];
  v13 = _SFSafariIconImageCacheDirectoryPath();
  v14 = [v12 fileURLWithPath:v13 isDirectory:1];
  v125 = [v10 initWithInjectedBundleURL:safari_safariInjectedBundleURL imageCacheDirectoryURL:v14 cacheIsReadOnly:0 metadataType:383];

  [MEMORY[0x277D28F58] setSharedSiteMetadataManager:v125];
  mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [mEMORY[0x277CBAB38] webui_applySafariCookieAcceptPolicy];

  [MEMORY[0x277CDB8A8] loadSystemLanguageProperties];
  v16 = +[FeatureManager sharedFeatureManager];
  v17 = MEMORY[0x277D49B68];
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  [v17 setUpSharedObserverWithSearchProviderContext:mEMORY[0x277CDB8A8]];

  v19 = *MEMORY[0x277D49BD8];
  v120 = [(Application *)self webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];
  v20 = objc_alloc(MEMORY[0x277CDB850]);
  tabGroupManager = [(Application *)self tabGroupManager];
  v121 = [v20 initWithExtensionsController:v120 profileProvider:tabGroupManager];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v23 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49BE8]];
  [defaultCenter addObserver:self selector:sel__didEnableCustomizationSync name:v23 object:0];

  tabGroupManager2 = [(Application *)self tabGroupManager];
  defaultProfile = [tabGroupManager2 defaultProfile];
  [(Application *)self _loadExtensionsInProfile:defaultProfile];

  v26 = [(Application *)self webExtensionsControllerForProfileServerID:v19];
  mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0] setWebExtensionsController:v26];

  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  mEMORY[0x277D28BF0]2 = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0]2 setBookmarkCollection:mainBookmarkCollection];

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  mEMORY[0x277D28BF0]3 = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0]3 setSiteMetadataManager:mEMORY[0x277D28F58]];

  v32 = objc_alloc_init(HistoryListMenuProvider);
  mEMORY[0x277D28BF0]4 = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0]4 setHistoryListProvider:v32];

  v34 = objc_alloc_init(RecentlyClosedTabsMenuProvider);
  mEMORY[0x277D28BF0]5 = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0]5 setRecentlyClosedTabsProvider:v34];

  v36 = objc_alloc_init(OpenNewDocumentMenuProvider);
  mEMORY[0x277D28BF0]6 = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0]6 setOpenNewDocumentProvider:v36];

  tabGroupManager3 = [(Application *)self tabGroupManager];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  namedProfiles = [tabGroupManager3 namedProfiles];
  v39 = [namedProfiles countByEnumeratingWithState:&v136 objects:v142 count:16];
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
          objc_enumerationMutation(namedProfiles);
        }

        identifierForExtensions = [*(*(&v136 + 1) + 8 * v41) identifierForExtensions];
        [(Application *)self _createExtensionControllersIfNeededForProfileServerID:identifierForExtensions];

        ++v41;
      }

      while (v39 != v41);
      v39 = [namedProfiles countByEnumeratingWithState:&v136 objects:v142 count:16];
    }

    while (v39);
  }

  [(Application *)self _setWKWebsiteDataStoreDelegate];
  v43 = MEMORY[0x277D28D40];
  proxy = [(Application *)self proxy];
  [v43 setApplicationProxy:proxy];

  [(Application *)self _readFocusConfigurationKeys];
  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v46 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49CF8]];
  [defaultCenter2 addObserver:self selector:sel__profileFocusConfigurationChanged name:v46 object:0];

  defaultCenter3 = [MEMORY[0x277CCA9A0] defaultCenter];
  v48 = [MEMORY[0x277CBEBD0] safari_notificationNameForUserDefaultsKey:*MEMORY[0x277D49D98]];
  [defaultCenter3 addObserver:self selector:sel__tabGroupFocusConfigurationChanged name:v48 object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, deviceDidLock, @"com.apple.springboard.lockcomplete", 0, 1024);
  [(Application *)self updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing];
  if (([tabGroupManager3 hasCompletedMigration] & 1) == 0 && objc_msgSend(tabGroupManager3, "isPersistent"))
  {
    +[SharedDataMigration migrateTabDatabaseIfNeeded];
  }

  browserState = [tabGroupManager3 browserState];
  v50 = [PinnedTabsManager alloc];
  tabCollection = [tabGroupManager3 tabCollection];
  v119 = [(PinnedTabsManager *)v50 initWithBrowserState:browserState tabCollection:tabCollection];

  v52 = [BrowserWindowController alloc];
  supportsMultipleScenes2 = [(Application *)self supportsMultipleScenes];
  browserControllerUIDelegateProvider = [objc_opt_class() browserControllerUIDelegateProvider];
  v55 = [(BrowserWindowController *)v52 initWithTabGroupManager:tabGroupManager3 browserState:browserState pinnedTabsManager:v119 perSitePreferencesVendor:v121 shouldMergeAllWindowsIfNeeded:supportsMultipleScenes2 ^ 1u browserControllerUIDelegateProvider:browserControllerUIDelegateProvider];
  browserWindowController = self->_browserWindowController;
  self->_browserWindowController = v55;

  [(Application *)self _pruneExpiredBrowserScenes];
  browserControllers = [(BrowserWindowController *)self->_browserWindowController browserControllers];
  v58 = [browserControllers count];

  if (v58)
  {
    browserControllers2 = [(BrowserWindowController *)self->_browserWindowController browserControllers];
    firstObject = [browserControllers2 firstObject];
    processPool = [firstObject processPool];
    [processPool _warmInitialProcess];
  }

  v62 = *MEMORY[0x277D29208];
  v122 = [safari_browserDefaults objectForKey:*MEMORY[0x277D29208]];
  if (v122)
  {
    if (([v122 BOOLValue] & 1) == 0)
    {
      sharedUserMediaPermissionController = [v121 sharedUserMediaPermissionController];
      cameraMediaCapturePreference = [sharedUserMediaPermissionController cameraMediaCapturePreference];
      [sharedUserMediaPermissionController setDefaultValue:&unk_2827FBEA8 ofPreference:cameraMediaCapturePreference completionHandler:0];

      microphoneMediaCapturePreference = [sharedUserMediaPermissionController microphoneMediaCapturePreference];
      [sharedUserMediaPermissionController setDefaultValue:&unk_2827FBEA8 ofPreference:microphoneMediaCapturePreference completionHandler:0];

      [MEMORY[0x277CCA9A0] _sf_postPerSitePreferencesDidChangeDistributedNotification];
    }

    [safari_browserDefaults removeObjectForKey:v62];
  }

  [(Application *)self _prewarmAutomationControllerIfEnabled];
  mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
  [mEMORY[0x277D49B18] setUsesOpportunisticPushTopic:0];

  if (([safari_browserDefaults BOOLForKey:@"didMigrateHistoryToCoreSpotlightAfterUpgrade"] & 1) == 0)
  {
    [(Application *)self performSelector:sel__export30DaysWorthOfHistoryAfterUpgrade withObject:0 afterDelay:60.0];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x277D262A0] registerObserver:self];
  }

  else
  {
    [mEMORY[0x277D262A0] addObserver:self];
  }

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:self];
  [defaultCenter4 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:self];
  [defaultCenter4 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:self];
  [defaultCenter4 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:self];
  [defaultCenter4 addObserver:self selector:sel__updateKeyboardCorrectionLearningAllowed name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter4 addObserver:self selector:sel__historyHostnamesWereRemoved_ name:*MEMORY[0x277D4A218] object:0];
  [defaultCenter4 addObserver:self selector:sel__historyWasCleared_ name:*MEMORY[0x277D4A240] object:0];
  [defaultCenter4 addObserver:self selector:sel__historyItemsWereRemoved_ name:*MEMORY[0x277D4A230] object:0];
  [defaultCenter4 addObserver:self selector:sel__frequentlyVisitedSitesWereChanged_ name:*MEMORY[0x277D4A8F0] object:0];
  [(Application *)self _clearInvalidCertificateBypassesOlderThanOneWeek];
  v68 = *MEMORY[0x277D291F0];
  if (([safari_browserDefaults BOOLForKey:*MEMORY[0x277D291F0]] & 1) == 0)
  {
    [MEMORY[0x277CDB838] clearOldCertificateBypasses];
    [safari_browserDefaults setBool:1 forKey:v68];
  }

  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v70 = *MEMORY[0x277D77320];
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke;
  v135[3] = &unk_2781D4E28;
  v135[4] = self;
  v71 = [defaultCenter4 addObserverForName:v70 object:self queue:mainQueue usingBlock:v135];
  v72 = [defaultCenter4 addObserverForName:*MEMORY[0x277D4A118] object:0 queue:0 usingBlock:&__block_literal_global_189_0];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _localeChanged, *MEMORY[0x277CBEEB0], 0, 1025);
  v74 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v74, self, _carrierBundledChanged, *MEMORY[0x277CC3B48], 0, 1024);
  [defaultCenter4 addObserver:self selector:sel__appleKeyboardsChanged_ name:@"AppleKeyboardsPreferencesChangedNotification" object:0];
  CFNotificationCenterAddObserver(v74, self, _autoFillStateChanged, @"com.apple.mobilesafari.AutoFillStateChanged", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, _quickWebsiteSearchProvidersChanged, @"com.apple.mobilesafari.QuickWebsiteSearchProvidersDidChange", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, _webFilterSettingsDidChange, *MEMORY[0x277D7B5E0], 0, 1024);
  CFNotificationCenterAddObserver(v74, self, siriSuggestionsStateDidChange, @"com.apple.suggestions.settingsChanged", 0, 1024);
  CFNotificationCenterAddObserver(v74, self, screenTimeRestrictionsStateDidChange, screenTimeManagementStateDidChangeNotification, 0, 1024);
  CFNotificationCenterAddObserver(v74, self, screenTimeRestrictionsStateDidChange, screenTimePasscodeStateDidChangeNotification, 0, 1024);
  CFNotificationCenterAddObserver(v74, self, safariSettingsChangedExtensionSettings, @"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings", 0, 1024);
  v75 = *MEMORY[0x277D4A9B0];
  v76 = [defaultCenter4 addObserverForName:*MEMORY[0x277D4A9B0] object:0 queue:mainQueue usingBlock:&__block_literal_global_198];
  v77 = [defaultCenter4 addObserverForName:v75 object:0 queue:mainQueue usingBlock:&__block_literal_global_200];
  v78 = [defaultCenter4 addObserverForName:*MEMORY[0x277D4A1F0] object:0 queue:mainQueue usingBlock:&__block_literal_global_200];
  v79 = [defaultCenter4 addObserverForName:*MEMORY[0x277D4A1F8] object:0 queue:mainQueue usingBlock:&__block_literal_global_200];
  v80 = [defaultCenter4 addObserverForName:*MEMORY[0x277D4A200] object:0 queue:mainQueue usingBlock:&__block_literal_global_200];
  v81 = *MEMORY[0x277D4A3A0];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __57__Application_application_didFinishLaunchingWithOptions___block_invoke_8;
  v134[3] = &unk_2781D4E28;
  v134[4] = self;
  v82 = [defaultCenter4 addObserverForName:v81 object:0 queue:mainQueue usingBlock:v134];
  defaultCenter5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__updateCloudFeatureAvailability name:*MEMORY[0x277D7B5F0] object:0];

  [(Application *)self _updateCloudFeatureAvailability];
  CFNotificationCenterAddObserver(v74, self, contentBlockerDidChange, *MEMORY[0x277CDB920], 0, 1028);
  v84 = CFLocaleCopyCurrent();
  [History localeChanged:v84];
  CFRelease(v84);
  [MEMORY[0x277D7B7F0] scheduleEmptyDatabaseRemoval];
  [(Application *)self _readDefaults];
  [(Application *)self setReceivesMemoryWarnings:1];
  mEMORY[0x277D28D60] = [MEMORY[0x277D28D60] sharedTracker];
  [mEMORY[0x277D28D60] load];

  mEMORY[0x277D28C90] = [MEMORY[0x277D28C90] sharedTracker];
  [mEMORY[0x277D28C90] load];

  [MEMORY[0x277D4A820] warmUp];
  tabGroupManager = self->_tabGroupManager;
  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  [(WBTabGroupManager *)tabGroupManager addTabGroupObserver:defaultManager];

  [(Application *)self _showSearchEngineAlertIfNeeded];
  if (SFDeviceSupportsPointerInteractions())
  {
    v89 = [MEMORY[0x277CBEB58] set];
    pointerDevices = self->_pointerDevices;
    self->_pointerDevices = v89;

    self->_pointerDeviceLock._os_unfair_lock_opaque = 0;
    mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
    v92 = [mEMORY[0x277CF0720] addPointerDeviceObserver:self];
    pointerDeviceObserverToken = self->_pointerDeviceObserverToken;
    self->_pointerDeviceObserverToken = v92;
  }

  self->_finishedLaunching = 1;
  tabGroupManager4 = [(Application *)self tabGroupManager];
  [tabGroupManager4 addTabGroupObserver:self];

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
  tabGroupIconProvider = [v125 tabGroupIconProvider];
  [(WBTabGroupManager *)v97 addTabGroupObserver:tabGroupIconProvider];

  [(Application *)self _reportLaunchAnalyticsSoon];
  if ([MEMORY[0x277D49A08] hasInternalContent])
  {
    [(Application *)self _connectToCyclerIfNecessary];
  }

  [defaultCenter4 addObserver:self selector:sel__webBookmarksDidReload name:*MEMORY[0x277D7B608] object:0];
  [defaultCenter4 addObserver:self selector:sel__webBookmarksDidReload name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
  mEMORY[0x277D7B588] = [MEMORY[0x277D7B588] sharedProxy];
  [mEMORY[0x277D7B588] scheduleSyncIfNeeded];

  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  [mEMORY[0x277CDB7A8] setExtraDownloadDelegate:self];

  [defaultCenter4 addObserver:self selector:sel__downloadDidStartNotification_ name:*MEMORY[0x277CDB998] object:0];
  [defaultCenter4 addObserver:self selector:sel__downloadDidStopNotification_ name:*MEMORY[0x277CDB9A0] object:0];
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
  v104 = safari_browserDefaults;
  v128 = v104;
  [v103 doAfterUIBecomesActive:v127];

  [(Application *)self lockPrivateBrowsing];
  v105 = objc_alloc_init(MEMORY[0x277D4A718]);
  backgroundImageAssetController = self->_backgroundImageAssetController;
  self->_backgroundImageAssetController = v105;

  [(WBSBackgroundImageAssetController *)self->_backgroundImageAssetController setDelegate:self];
  safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v108 = [safari_browserDefaults2 BOOLForKey:*MEMORY[0x277D4A1E8]];

  if (v108)
  {
    v109 = [(WBSCompletionListVendorForHistoryService *)[CompletionListVendorForHistoryService alloc] initWithDataSource:self];
    completionListVendorForHistoryService = self->_completionListVendorForHistoryService;
    self->_completionListVendorForHistoryService = v109;
  }

  defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  [defaultSearchableIndex setIndexDelegate:self];

  [(Application *)self _showExtensionPermissionBannerIfNecessary];
  [defaultCenter4 addObserver:self selector:sel_reloadContentBlockers name:*MEMORY[0x277D49C20] object:0];
  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    currentNotificationCenter = [MEMORY[0x277CE2028] currentNotificationCenter];
    [currentNotificationCenter setDelegate:self];
  }

  if ([MEMORY[0x277D49A08] isWAPEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [MEMORY[0x277CE3868] _setWebPushActionHandler:&__block_literal_global_247];
  }

  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel_webClipCacheDidChange_ name:*MEMORY[0x277CDB970] object:0];

    [(Application *)self webClipCacheDidChange:0];
  }

  standardStore = [MEMORY[0x277D49F50] standardStore];
  [standardStore removeObsoleteDatabase];

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

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20E8]];

  if (v10)
  {
    v11 = [MEMORY[0x277CE38C0] _webPushActionWithNotificationResponse:responseCopy];
    if (objc_opt_respondsToSelector())
    {
      webClipIdentifier = [v11 webClipIdentifier];
      if (!webClipIdentifier)
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

      notification = [responseCopy notification];
      sourceIdentifier = [notification sourceIdentifier];
      v15 = [sourceIdentifier hasPrefix:@"com.apple.WebKit.PushBundle."];

      if (!v15)
      {
        goto LABEL_11;
      }

      notification2 = [responseCopy notification];
      sourceIdentifier2 = [notification2 sourceIdentifier];
      v18 = [sourceIdentifier2 substringFromIndex:28];

      v28 = MEMORY[0x277CCACA8];
      v27 = [v18 substringWithRange:{0, 8}];
      v19 = [v18 substringWithRange:{8, 4}];
      v20 = [v18 substringWithRange:{12, 4}];
      v21 = [v18 substringWithRange:{16, 4}];
      v22 = [v18 substringWithRange:{20, 12}];
      v23 = [v28 stringWithFormat:@"%@-%@-%@-%@-%@", v27, v19, v20, v21, v22];

      webClipIdentifier = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
      if (!webClipIdentifier)
      {
        goto LABEL_11;
      }
    }

    v24 = WBS_LOG_CHANNEL_PREFIXWebClips();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v30 = webClipIdentifier;
      v31 = 2117;
      v32 = responseCopy;
      _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "Activating clip with identifier %{public}@ in response to notification response %{sensitive}@", buf, 0x16u);
    }

    _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
    firstObject = [_sortedBrowserControllers firstObject];

    [firstObject activateWebClipWithID:webClipIdentifier];
    goto LABEL_11;
  }

LABEL_12:
  [MEMORY[0x277CE3868] handleNotificationResponse:responseCopy];
  handlerCopy[2](handlerCopy);
}

- (void)webClipCacheDidChange:(id)change
{
  mEMORY[0x277CDB748] = [MEMORY[0x277CDB748] sharedWebClipCache];
  webClipURLs = [mEMORY[0x277CDB748] webClipURLs];

  if (webClipURLs)
  {
    safari_defaultDataStore = [MEMORY[0x277CE3868] safari_defaultDataStore];
    [safari_defaultDataStore _setPersistedSites:webClipURLs];
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

- (void)tabGroupManager:(id)manager didInsertProfileWithIdentifier:(id)identifier
{
  [(Application *)self prewarmAndRemoveOrphanedProfileDataStores:manager];

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

- (void)_initializeProcessPoolForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_processPools objectForKeyedSubscript:identifierCopy];

  v5 = identifierCopy;
  if (!v4)
  {
    if (!self->_processPools)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      processPools = self->_processPools;
      self->_processPools = dictionary;
    }

    v8 = +[BrowserController newProcessPool];
    [(NSMutableDictionary *)self->_processPools setObject:v8 forKeyedSubscript:identifierCopy];
    if (self->_objectsForProcessPoolBundleParameters)
    {
      [(WKProcessPool *)v8 _setObjectsForBundleParametersWithDictionary:?];
    }

    v5 = identifierCopy;
  }
}

- (id)processPoolForProfileIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    [(Application *)self _initializeProcessPoolForProfileIdentifier:identifierCopy];
    v5 = [(NSMutableDictionary *)self->_processPools objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setObject:(id)object forInjectedBundleParameter:(id)parameter
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  parameterCopy = parameter;
  if (!self->_objectsForProcessPoolBundleParameters)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objectsForProcessPoolBundleParameters = self->_objectsForProcessPoolBundleParameters;
    self->_objectsForProcessPoolBundleParameters = dictionary;
  }

  v10 = [objectCopy copy];
  [(NSMutableDictionary *)self->_objectsForProcessPoolBundleParameters setObject:v10 forKeyedSubscript:parameterCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allProcessPools = [(Application *)self allProcessPools];
  v12 = [allProcessPools countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allProcessPools);
        }

        [*(*(&v16 + 1) + 8 * v15++) _setObject:objectCopy forBundleParameter:parameterCopy];
      }

      while (v13 != v15);
      v13 = [allProcessPools countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  allWebExtensionsControllers = [(Application *)self allWebExtensionsControllers];
  v3 = [allWebExtensionsControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allWebExtensionsControllers);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasAnyEnabledExtensions])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allWebExtensionsControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (id)_userContentControllerForProfileServerID:(id)d
{
  dCopy = d;
  profileServerIDToUserContentController = self->_profileServerIDToUserContentController;
  if (!profileServerIDToUserContentController)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_profileServerIDToUserContentController;
    self->_profileServerIDToUserContentController = dictionary;

    profileServerIDToUserContentController = self->_profileServerIDToUserContentController;
  }

  safari_userContentController = [(NSMutableDictionary *)profileServerIDToUserContentController objectForKeyedSubscript:dCopy];
  if (!safari_userContentController)
  {
    if ([dCopy isEqualToString:*MEMORY[0x277D49BD8]])
    {
      safari_userContentController = [MEMORY[0x277CE3830] safari_userContentController];
    }

    else
    {
      safari_userContentController = objc_alloc_init(MEMORY[0x277CE3830]);
      if ([MEMORY[0x277D4A708] isAutoFillDrivenByUIProcess])
      {
        mEMORY[0x277D4A708] = [MEMORY[0x277D4A708] sharedController];
        [mEMORY[0x277D4A708] setUpScriptInjectionWithUserContentController:safari_userContentController];
      }
    }

    [(NSMutableDictionary *)self->_profileServerIDToUserContentController setObject:safari_userContentController forKeyedSubscript:dCopy];
  }

  v10 = safari_userContentController;

  return v10;
}

- (void)_createExtensionControllersIfNeededForProfileServerID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:dCopy];
  if (v5)
  {
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      v7 = [MEMORY[0x277D4A8B0] isProfileServerIDForDefaultProfile:dCopy];
      v8 = [(Application *)self _userContentControllerForProfileServerID:dCopy];
      v9 = [objc_alloc(MEMORY[0x277D28EE8]) initWithProfileServerID:dCopy userContentController:v8];
      [v9 setDelegate:self];
      [v9 setProfileDelegate:self];
      v19 = [(Application *)self processPoolForProfileIdentifier:dCopy];
      [v9 setProcessPool:?];
      v10 = _SFApplicationNameForUserAgent();
      [v9 setApplicationNameForUserAgent:v10];

      [v9 setNavigationIntentHandler:self];
      [v9 initializeWebKitControllerIfNeededFromSettings:0];
      mEMORY[0x277D4A720] = [MEMORY[0x277D4A720] sharedManager];
      [mEMORY[0x277D4A720] addProvider:v9];

      v12 = [objc_alloc(MEMORY[0x277CDB6D8]) initWithUserContentController:v8 webExtensionsController:v9];
      [v12 setWebExtensionsController:v9];
      [v12 setDelegate:self];
      mEMORY[0x277D4A720]2 = [MEMORY[0x277D4A720] sharedManager];
      [mEMORY[0x277D4A720]2 addProvider:v12];

      if ((v7 & 1) == 0)
      {
        contentBlockerStore = [MEMORY[0x277CDB6D8] contentBlockerStore];
        v20 = v8;
        WBSLoadBuiltInContentBlockersWithStore();
      }

      if (!self->_profileServerIDToWebExtensionsControllers)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        profileServerIDToWebExtensionsControllers = self->_profileServerIDToWebExtensionsControllers;
        self->_profileServerIDToWebExtensionsControllers = dictionary;
      }

      if (!self->_profileServerIDToContentBlockerManagers)
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        profileServerIDToContentBlockerManagers = self->_profileServerIDToContentBlockerManagers;
        self->_profileServerIDToContentBlockerManagers = dictionary2;
      }

      [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers setObject:v9 forKeyedSubscript:dCopy];
      [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers setObject:v12 forKeyedSubscript:dCopy];
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

- (void)_deleteExtensionControllersForProfileServerID:(id)d
{
  dCopy = d;
  v7 = [(Application *)self webExtensionsControllerForProfileServerID:dCopy];
  v5 = [(Application *)self contentBlockerManagerForProfileServerID:dCopy];
  [v7 unloadAndDeleteStateForAllExtensions];
  [v5 unloadAndDeleteStateForAllExtensions];
  mEMORY[0x277D4A720] = [MEMORY[0x277D4A720] sharedManager];
  [mEMORY[0x277D4A720] removeProvider:v7];
  [mEMORY[0x277D4A720] removeProvider:v5];
  [mEMORY[0x277D4A720] localExtensionStateDidChange];
  [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers setObject:0 forKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers setObject:0 forKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_profileServerIDToUserContentController setObject:0 forKeyedSubscript:dCopy];
}

- (id)webExtensionsControllerForTabWithPrivateBrowsingEnabled:(BOOL)enabled profile:(id)profile
{
  enabledCopy = enabled;
  profileCopy = profile;
  v7 = profileCopy;
  if (!enabledCopy)
  {
    if (profileCopy)
    {
      identifierForExtensions = [profileCopy identifierForExtensions];
      v9 = [(Application *)self webExtensionsControllerForProfileServerID:identifierForExtensions];

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

- (id)webExtensionsControllerForProfileServerID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:dCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [(Application *)self _createExtensionControllersIfNeededForProfileServerID:dCopy];
      v7 = [(NSMutableDictionary *)self->_profileServerIDToWebExtensionsControllers objectForKeyedSubscript:dCopy];
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

- (id)contentBlockerManagerForProfileServerID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:dCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [(Application *)self _createExtensionControllersIfNeededForProfileServerID:dCopy];
      v7 = [(NSMutableDictionary *)self->_profileServerIDToContentBlockerManagers objectForKeyedSubscript:dCopy];
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

- (void)loadExtensionsInProfileIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  identifierForExtensions = [necessaryCopy identifierForExtensions];
  v5 = [(Application *)self webExtensionsControllerForProfileServerID:identifierForExtensions];
  loadEnabledExtensionsWasCalled = [v5 loadEnabledExtensionsWasCalled];

  if ((loadEnabledExtensionsWasCalled & 1) == 0)
  {
    [(Application *)self _loadExtensionsInProfile:necessaryCopy];
  }
}

- (void)_loadExtensionsInProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 138477827;
    v20 = profileCopy;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Loading extensions in profile %{private}@", &v19, 0xCu);
  }

  identifierForExtensions = [profileCopy identifierForExtensions];
  v7 = [(Application *)self webExtensionsControllerForProfileServerID:identifierForExtensions];

  v8 = MEMORY[0x277D4A8A0];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v8 migrateStorageToPerProfileFormatIfNecessaryWithDefaults:safari_browserDefaults];

  v10 = objc_alloc(MEMORY[0x277D4A8A8]);
  safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v14 = [v10 initWithUserDefaults:safari_browserDefaults2 safariContainerSettingsDirectoryURL:safari_settingsDirectoryURL];

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

  identifierForExtensions2 = [profileCopy identifierForExtensions];
  v17 = [(Application *)self contentBlockerManagerForProfileServerID:identifierForExtensions2];

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
  allContentBlockerManagers = [(Application *)self allContentBlockerManagers];
  v5 = [allContentBlockerManagers countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(allContentBlockerManagers);
        }

        [*(*(&v11 + 1) + 8 * v8++) reloadUserContentControllerReadingStateFromDisk:1];
      }

      while (v6 != v8);
      v6 = [allContentBlockerManagers countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  perSitePreferencesVendor = [(BrowserWindowController *)self->_browserWindowController perSitePreferencesVendor];
  contentBlockersPreferenceManager = [perSitePreferencesVendor contentBlockersPreferenceManager];
  [contentBlockersPreferenceManager checkForContentBlockers];
}

- (void)notifyExtensionControllersThatSettingsWereUpdatedExternallyFromSettingsApp
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allWebExtensionsControllers = [(Application *)self allWebExtensionsControllers];
  v3 = [allWebExtensionsControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(allWebExtensionsControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) extensionSettingsWereUpdatedExternallyFromSettingsApp:1];
      }

      while (v4 != v6);
      v4 = [allWebExtensionsControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__Application__determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler___block_invoke;
  block[3] = &unk_2781D4D90;
  v7 = handlerCopy;
  v5 = handlerCopy;
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
  mEMORY[0x277D4A028] = [MEMORY[0x277D4A028] sharedController];
  [mEMORY[0x277D4A028] savePendingChangesBeforeTermination];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x277D262A0] unregisterObserver:self];
  }

  else
  {
    [mEMORY[0x277D262A0] removeObserver:self];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"AppleKeyboardsPreferencesChangedNotification" object:0];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277CBEEB0], 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3B48], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobilesafari.AutoFillStateChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobilesafari.QuickWebsiteSearchProvidersDidChange", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CDB920], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimeManagementStateDidChangeNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimePasscodeStateDidChangeNotification, 0);
  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  +[WebBookmarkCollection stopObservingDatabaseVacuumNotification];
  standardStore = [MEMORY[0x277D49F50] standardStore];
  [standardStore closeDatabase];

  v10 = MEMORY[0x277D49FC8];
  settings = [MEMORY[0x277D28F08] settings];
  +[WBSParsecDSession sendSuspendFeedbackWithEvent:isPrivate:](v10, 1, [settings hasPrivateBrowsingWindow]);

  mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
  [mEMORY[0x277D49B18] setUsesOpportunisticPushTopic:1];

  [(WBSBackgroundImageAssetController *)self->_backgroundImageAssetController savePendingChangesBeforeTermination];
  standardStore2 = [MEMORY[0x277D49EF0] standardStore];
  [standardStore2 closeDatabase];

  mEMORY[0x277CDB8F8] = [MEMORY[0x277CDB8F8] sharedController];
  [mEMORY[0x277CDB8F8] savePendingChangesBeforeTermination];

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [mEMORY[0x277D28F58] savePendingProviderChangesBeforeTermination];

  mEMORY[0x277D7B830] = [MEMORY[0x277D7B830] sharedCreditCardDataController];
  [mEMORY[0x277D7B830] savePendingChangesBeforeTermination];

  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  [mEMORY[0x277CDB7A8] savePendingChangesBeforeTermination];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allContentBlockerManagers = [(Application *)self allContentBlockerManagers];
  v19 = [allContentBlockerManagers countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(allContentBlockerManagers);
        }

        [*(*(&v25 + 1) + 8 * v22++) savePendingChangesBeforeTermination];
      }

      while (v20 != v22);
      v20 = [allContentBlockerManagers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  mEMORY[0x277D49EA8] = [MEMORY[0x277D49EA8] sharedManager];
  [mEMORY[0x277D49EA8] savePendingChangesBeforeTermination];

  mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
  [mEMORY[0x277D49B58] savePendingChangesBeforeTermination];
}

- (void)_export30DaysWorthOfHistoryAfterUpgrade
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults integerForKey:@"numberOfHistoryDonationAttempts"];
  if (v4 < 4)
  {
    [safari_browserDefaults setInteger:v4 + 1 forKey:@"numberOfHistoryDonationAttempts"];
    v6 = dispatch_get_global_queue(9, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__Application__export30DaysWorthOfHistoryAfterUpgrade__block_invoke;
    v7[3] = &unk_2781D4C88;
    v7[4] = self;
    v8 = safari_browserDefaults;
    dispatch_async(v6, v7);
  }

  else
  {
    [safari_browserDefaults setBool:1 forKey:@"didMigrateHistoryToCoreSpotlightAfterUpgrade"];
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

- (void)_downloadDidStartNotification:(id)notification
{
  object = [notification object];
  activeDownloads = self->_activeDownloads;
  v8 = object;
  if (activeDownloads)
  {
    [(NSMutableArray *)activeDownloads addObject:object];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:object];
    v7 = self->_activeDownloads;
    self->_activeDownloads = v6;
  }
}

- (void)_downloadDidStopNotification:(id)notification
{
  object = [notification object];
  [(NSMutableArray *)self->_activeDownloads removeObject:?];
  if (![(NSMutableArray *)self->_activeDownloads count])
  {
    activeDownloads = self->_activeDownloads;
    self->_activeDownloads = 0;
  }
}

- (void)getSavedAccountContextForGlobalFrameIdentifier:(id)identifier completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v18 = handlerCopy;
  v37 = v18;
  block = _Block_copy(aBlock);
  v7 = dispatch_group_create();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2810000000;
  v34[3] = "";
  v35 = 0;
  documentID = [identifierCopy documentID];
  if (documentID)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    browserControllers = [(Application *)self browserControllers];
    v10 = [browserControllers countByEnumeratingWithState:&v30 objects:v45 count:16];
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(browserControllers);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          dispatch_group_enter(v7);
          webView = [v13 webView];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_2;
          v25[3] = &unk_2781D50D0;
          v28 = v34;
          v29 = &v39;
          v26 = documentID;
          v27 = v13;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_3;
          v23[3] = &unk_2781D4D40;
          v24 = v7;
          [webView safari_enumerateAllFramesAsynchronously:v25 completionHandler:v23];
        }

        v10 = [browserControllers countByEnumeratingWithState:&v30 objects:v45 count:16];
      }

      while (v10);
    }

    dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);
  }

  else
  {
    browserControllers2 = [(Application *)self browserControllers];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__Application_getSavedAccountContextForGlobalFrameIdentifier_completionHandler___block_invoke_4;
    v21[3] = &unk_2781D4E70;
    v22 = identifierCopy;
    v16 = [browserControllers2 safari_firstObjectPassingTest:v21];
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
  existingForYouRecommendationMediator = [(Application *)self existingForYouRecommendationMediator];
  if (!existingForYouRecommendationMediator)
  {
    v4 = [ForYouRecommendationMediator alloc];
    v5 = +[Application contextClient];
    v6 = +[FeatureManager sharedFeatureManager];
    existingForYouRecommendationMediator = [(ForYouRecommendationMediator *)v4 initWithContextClient:v5 featureManager:v6 historyProvider:&__block_literal_global_329];

    [(Application *)self setExistingForYouRecommendationMediator:existingForYouRecommendationMediator];
  }

  v7 = existingForYouRecommendationMediator;

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
  allProfileIdentifiers = [(WBTabGroupManager *)self->_tabGroupManager allProfileIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__Application_historiesForProfiles__block_invoke;
  v6[3] = &unk_2781D5140;
  v6[4] = self;
  v4 = [allProfileIdentifiers safari_mapAndFilterObjectsUsingBlock:v6];

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

- (id)sectionManagerForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy isEqualToString:*MEMORY[0x277D49BD8]];
  v6 = objc_alloc(MEMORY[0x277D4A080]);
  if (v5)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v6 initWithStorage:standardUserDefaults];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D4A7E0]);
    standardUserDefaults = [(Application *)self tabGroupManager];
    v10 = [v9 initWithProfileIdentifier:identifierCopy tabGroupManager:standardUserDefaults];
    v8 = [v6 initWithStorage:v10];
  }

  return v8;
}

- (id)suggestionsManagerForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_profileIdentifiersToSuggestionsManagers objectForKeyedSubscript:identifierCopy];
    if (!v5)
    {
      [(Application *)self _setUpSuggestionManagersIfNeeded];
      v6 = objc_alloc(MEMORY[0x277D4A840]);
      v7 = [(Application *)self sectionManagerForProfileWithIdentifier:identifierCopy];
      v5 = [v6 initWithSectionManager:v7];

      [(NSMutableDictionary *)self->_profileIdentifiersToSuggestionsManagers setObject:v5 forKeyedSubscript:identifierCopy];
      historyController = [(Application *)self historyController];
      v9 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:identifierCopy loadIfNeeded:1];
      [v5 registerProvider:v9];

      createSuggestionProviderProxy = [(WBSStartPageSuggestionsProviderBroadcaster *)self->_highlightManagerSuggestionsProviderBroadcaster createSuggestionProviderProxy];
      [v5 registerProvider:createSuggestionProviderProxy];
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
    ephemeralTabGroupManager = [MEMORY[0x277D7B580] ephemeralTabGroupManager];
    v5 = self->_ephemeralTabGroupManager;
    self->_ephemeralTabGroupManager = ephemeralTabGroupManager;

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

- (void)downloadDidFinish:(id)finish
{
  finishCopy = finish;
  v4 = tabDocumentForDownload(finishCopy);
  [v4 downloadDidFinish:finishCopy];
}

- (void)downloadDidFail:(id)fail
{
  failCopy = fail;
  v4 = tabDocumentForDownload(failCopy);
  [v4 downloadDidFail:failCopy];
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
  v4 = tabDocumentForDownload(startCopy);
  [v4 downloadDidStart:startCopy];
}

- (void)downloadDidReceiveResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy explicitlySaved])
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    mimeType = [responseCopy mimeType];
    v5 = [responseCopy uti];
    [mEMORY[0x277D499B8] _sf_didBeginDownloadWithMIMEType:mimeType uti:v5 downloadType:1 promptType:0 browserPersona:0];
  }
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v6 = tabDocumentForDownload(responseCopy);
  v7 = v6;
  if (v6)
  {
    [v6 downloadShouldContinueAfterReceivingResponse:responseCopy decisionHandler:handlerCopy];
  }

  else
  {
    if (([responseCopy explicitlySaved] & 1) == 0)
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      mimeType = [responseCopy mimeType];
      v10 = [responseCopy uti];
      [mEMORY[0x277D499B8] _sf_didBeginDownloadWithMIMEType:mimeType uti:v10 downloadType:0 promptType:0 browserPersona:0];
    }

    handlerCopy[2](handlerCopy, 1);
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    tabGroupManager = [(Application *)self tabGroupManager];
    namedProfiles = [tabGroupManager namedProfiles];

    v6 = [namedProfiles countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(namedProfiles);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          bookmark = [v10 bookmark];
          serverID = [bookmark serverID];

          if (serverID)
          {
            identifier = [v10 identifier];
            [dictionary setObject:serverID forKeyedSubscript:identifier];
          }
        }

        v7 = [namedProfiles countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [(WBSCloudHistoryServiceProtocol *)self->_cloudHistory updateProfileLocalIdentifiersToServerIdentifiersMap:dictionary completionHandler:&__block_literal_global_352];
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

- (void)tabGroupManagerDidUpdateProfiles:(id)profiles
{
  [(Application *)self _updateProfileLocalIdentifiersToServerIdentifiersMapInCloudHistory];
  mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0] clearCachedMenuForPersona:0];
}

- (void)tabGroupManager:(id)manager didRemoveProfileWithIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v8 = [managerCopy profileWithIdentifier:identifierCopy];
  identifierForExtensions = [v8 identifierForExtensions];

  if (identifierForExtensions)
  {
    [(Application *)self _deleteExtensionControllersForProfileServerID:identifierForExtensions];
  }

  perSitePreferencesVendor = [(BrowserWindowController *)self->_browserWindowController perSitePreferencesVendor];
  profilePreferenceManager = [perSitePreferencesVendor profilePreferenceManager];

  if (profilePreferenceManager)
  {
    mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
    [mEMORY[0x277D49F90] removeIgnoredSiriSuggestedSitesInProfile:identifierCopy];

    profilePreference = [profilePreferenceManager profilePreference];
    v14 = [MEMORY[0x277CBEB58] set];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__Application_tabGroupManager_didRemoveProfileWithIdentifier___block_invoke;
    v17[3] = &unk_2781D5168;
    v18 = profilePreferenceManager;
    v19 = profilePreference;
    v20 = managerCopy;
    v21 = identifierCopy;
    v22 = v14;
    v15 = v14;
    v16 = profilePreference;
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
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v6 = [v4 initWithBrowserDefaults:safari_browserDefaults];
    v7 = self->_cachedLegacyTLSHostManager;
    self->_cachedLegacyTLSHostManager = v6;

    cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  }

  return cachedLegacyTLSHostManager;
}

- (void)_historyWasCleared:(id)cleared
{
  legacyTLSHostManager = [(Application *)self legacyTLSHostManager];
  [legacyTLSHostManager clearAllLegacyTLSHosts];
}

- (void)_historyItemsWereRemoved:(id)removed
{
  v25 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  userInfo = [removedCopy userInfo];
  v5 = *MEMORY[0x277D4A220];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4A220]];
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
        mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
        v15 = [mEMORY[0x277CDB8A8] userVisibleQueryFromSearchURL:v13 allowQueryThatLooksLikeURL:1];

        v16 = +[RecentWebSearchesController sharedController];
        [v16 clearRecentSearch:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  userInfo2 = [removedCopy userInfo];
  v19 = [userInfo2 objectForKeyedSubscript:v5];
  [mEMORY[0x277D28F00] historyItemsWereRemoved:v19];
}

- (void)_historyHostnamesWereRemoved:(id)removed
{
  removedCopy = removed;
  legacyTLSHostManager = [(Application *)self legacyTLSHostManager];
  v6 = MEMORY[0x277CBEB98];
  object = [removedCopy object];
  v8 = [v6 setWithArray:object];
  [legacyTLSHostManager clearLegacyTLSForHosts:v8];

  v9 = MEMORY[0x277D4A7C8];
  object2 = [removedCopy object];

  [v9 removeHostnames:object2];
}

- (void)_getBookmarksDataClassEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[FeatureManager sharedFeatureManager];
  isCloudSyncAvailable = [v4 isCloudSyncAvailable];

  if (isCloudSyncAvailable)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__Application__getBookmarksDataClassEnabledWithCompletionHandler___block_invoke;
    block[3] = &unk_2781D4D90;
    v8 = handlerCopy;
    dispatch_async(v6, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)extensionsController:(id)controller closeOpenExtensionTabsWithBaseURI:(id)i composedIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  host = [i host];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  browserControllers = [(Application *)self browserControllers];
  v10 = [browserControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(Application *)self _allTabsWithExtensionContentLoadedForBrowserController:v14 extensionHost:host composedIdentifier:identifierCopy];
        if ([v15 count])
        {
          tabController = [v14 tabController];
          [tabController closeTabs:v15 animated:1 allowAddingToRecentlyClosedTabs:0 showAutoCloseTabsAlert:0];
        }
      }

      v11 = [browserControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)_allTabsWithExtensionContentLoadedForBrowserController:(id)controller extensionHost:(id)host composedIdentifier:(id)identifier
{
  hostCopy = host;
  identifierCopy = identifier;
  tabController = [controller tabController];
  normalAndPrivateTabs = [tabController normalAndPrivateTabs];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__Application__allTabsWithExtensionContentLoadedForBrowserController_extensionHost_composedIdentifier___block_invoke;
  v15[3] = &unk_2781D5200;
  v16 = hostCopy;
  v17 = identifierCopy;
  v11 = identifierCopy;
  v12 = hostCopy;
  v13 = [normalAndPrivateTabs safari_filterObjectsUsingBlock:v15];

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

- (void)extensionsController:(id)controller closeOpenExtensionTabsInPrivateBrowsingWithBaseURI:(id)i composedIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  host = [i host];
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
        v14 = [(Application *)self _allTabsWithExtensionContentLoadedForBrowserController:v13 extensionHost:host composedIdentifier:identifierCopy];
        v15 = [v14 safari_filterObjectsUsingBlock:&__block_literal_global_373];

        if ([v15 count])
        {
          tabController = [v13 tabController];
          [tabController closeTabs:v15 animated:1 allowAddingToRecentlyClosedTabs:0 showAutoCloseTabsAlert:0];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)enumerateContentBlockerManagersUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allContentBlockerManagers = [(Application *)self allContentBlockerManagers];
  v6 = [allContentBlockerManagers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
        objc_enumerationMutation(allContentBlockerManagers);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allContentBlockerManagers countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)sfWebExtensionsController:(id)controller tabWithID:(double)d
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(Application *)self browserControllers:controller];
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

      tabController = [*(*(&v13 + 1) + 8 * v9) tabController];
      v11 = [tabController tabWithIDForWebExtensions:d];

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

- (id)sfWebExtensionsController:(id)controller reusableTabWithID:(double)d
{
  controllerCopy = controller;
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
  *&v9[5] = d;
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

- (id)sfWebExtensionsController:(id)controller tabForWebView:(id)view
{
  v4 = [TabDocument tabDocumentForWKWebView:view];
  v5 = v4;
  if (v4)
  {
    webExtensionWindow = [v4 webExtensionWindow];
    v7 = webExtensionWindow;
    if (webExtensionWindow)
    {
      webExtensionTabs = [webExtensionWindow webExtensionTabs];
      if ([webExtensionTabs containsObject:v5])
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

- (void)sfWebExtensionsController:(id)controller createNewTabInWindow:(id)window tabIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler
{
  if (window)
  {
    [window createNewTabAtIndex:index url:url makeActive:active completionHandler:handler];
  }

  else
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)sfWebExtensionsController:(id)controller pinTab:(id)tab
{
  tabCopy = tab;
  if ([tabCopy canSetPinned])
  {
    [tabCopy setPinned:1];
  }
}

- (void)sfWebExtensionsController:(id)controller relateParentTab:(id)tab toTab:(id)toTab
{
  tabCopy = tab;
  toTabCopy = toTab;
  v13 = tabCopy;
  browserController = [toTabCopy browserController];
  browserController2 = [v13 browserController];
  v10 = browserController2;
  if (browserController == browserController2)
  {
    isPrivate = [toTabCopy isPrivate];
    isPrivate2 = [v13 isPrivate];

    if (isPrivate == isPrivate2)
    {
      [toTabCopy updateAncestryWithParentTab:v13];
    }
  }

  else
  {
  }
}

- (id)sfWebExtensionsController:(id)controller windowWithID:(double)d
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(Application *)self browserControllers:controller];
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

        v10 = [*(*(&v13 + 1) + 8 * i) webExtensionWindowWithID:d];
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

- (id)sfWebExtensionsController:(id)controller windowForWebView:(id)view extension:(id)extension
{
  controllerCopy = controller;
  viewCopy = view;
  extensionCopy = extension;
  backgroundWebView = [extensionCopy backgroundWebView];
  v12 = [viewCopy isEqual:backgroundWebView];

  if (v12)
  {
    windowDisplayingPopupWebView = [(Application *)self sfWebExtensionsControllerLastFocusedWindow:controllerCopy];
  }

  else
  {
    toolbarItem = [extensionCopy toolbarItem];
    popupWebView = [toolbarItem popupWebView];
    v16 = [viewCopy isEqual:popupWebView];

    if (v16)
    {
      windowDisplayingPopupWebView = [toolbarItem windowDisplayingPopupWebView];
    }

    else
    {
      v17 = [TabDocument tabDocumentForWKWebView:viewCopy];
      windowDisplayingPopupWebView = [v17 webExtensionWindow];
    }
  }

  return windowDisplayingPopupWebView;
}

- (id)sfWebExtensionsController:(id)controller navigationIntentUUIDForWindow:(id)window
{
  browserController = [window browserController];
  uUID = [browserController UUID];

  return uUID;
}

- (id)sfWebExtensionsControllerAllWindows:(id)windows
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  browserControllers = [(Application *)self browserControllers];
  v6 = [browserControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        webExtensionWindows = [*(*(&v13 + 1) + 8 * i) webExtensionWindows];
        [array addObjectsFromArray:webExtensionWindows];
      }

      v7 = [browserControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

- (id)sfWebExtensionsControllerLastFocusedWindow:(id)window
{
  browserControllers = [(Application *)self browserControllers];
  v4 = [browserControllers safari_firstObjectPassingTest:&__block_literal_global_378];

  activeWebExtensionWindow = [v4 activeWebExtensionWindow];

  return activeWebExtensionWindow;
}

- (void)sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:(id)banner
{
  bannerCopy = banner;
  browserControllers = [(Application *)self browserControllers];
  v6 = [browserControllers objectAtIndexedSubscript:0];

  currentExtensionForPermissionBanner = [bannerCopy currentExtensionForPermissionBanner];

  if (currentExtensionForPermissionBanner)
  {
    v8 = [objc_alloc(MEMORY[0x277D28ED8]) initWithExtension:currentExtensionForPermissionBanner];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__Application_sfWebExtensionsControllerDidChangeExtensionForPermissionBanner___block_invoke;
    v15[3] = &unk_2781D5270;
    v9 = currentExtensionForPermissionBanner;
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

- (void)sfWebExtensionsController:(id)controller showPopupOrPerSitePermissionsForExtension:(id)extension forTab:(id)tab completionHandler:(id)handler
{
  extensionCopy = extension;
  tabCopy = tab;
  handlerCopy = handler;
  controllerCopy = controller;
  webExtensionWindow = [tabCopy webExtensionWindow];
  v14 = [(Application *)self sfWebExtensionsControllerLastFocusedWindow:controllerCopy];

  if (webExtensionWindow == v14)
  {
    browserController = [webExtensionWindow browserController];
    [browserController showPopupOrPerSitePermissionsForWebExtension:extensionCopy forTab:tabCopy];
  }

  handlerCopy[2](handlerCopy);
}

- (id)sfWebExtensionsControllerDomainForDefaultSearchProvider:(id)provider
{
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:0];
  v5 = [v4 searchURLForUserTypedString:@"a"];
  host = [v5 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  return safari_highLevelDomainFromHost;
}

+ (void)setBrowserControllerUIDelegateProvider:(id)provider
{
  v3 = [provider copy];
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

- (void)mousePointerDevicesDidConnect:(id)connect
{
  connectCopy = connect;
  os_unfair_lock_lock(&self->_pointerDeviceLock);
  [(NSMutableSet *)self->_pointerDevices unionSet:connectCopy];

  os_unfair_lock_unlock(&self->_pointerDeviceLock);
}

- (void)mousePointerDevicesDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  os_unfair_lock_lock(&self->_pointerDeviceLock);
  [(NSMutableSet *)self->_pointerDevices minusSet:disconnectCopy];

  os_unfair_lock_unlock(&self->_pointerDeviceLock);
}

- (void)noteTakingController:(id)controller addHighlightForUserActivity:(id)activity completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  activityCopy = activity;
  completionCopy = completion;
  v25 = activityCopy;
  userInfo = [activityCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"uniqueIdentifier"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = +[Application sharedApplication];
  browserControllers = [v11 browserControllers];

  v13 = [browserControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(browserControllers);
      }

      tabController = [*(*(&v28 + 1) + 8 * v16) tabController];
      activeTabDocument = [tabController activeTabDocument];

      userActivity = [activeTabDocument userActivity];
      _uniqueIdentifier = [userActivity _uniqueIdentifier];
      v21 = [_uniqueIdentifier isEqual:v10];

      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [browserControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!activeTabDocument)
    {
      goto LABEL_13;
    }

    v22 = controllerCopy;
    if ([controllerCopy isNoteTakingSupportedWithPrivateBrowsing:{objc_msgSend(activeTabDocument, "isPrivateBrowsingEnabled")}])
    {
      [activeTabDocument setLinkAddedToUserActivityCallback:completionCopy];
      [activeTabDocument addAppHighlightCreatingLink:0];

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
      completionCopy[2](completionCopy, v25, 0);
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v23 = v25;
    completionCopy[2](completionCopy, v25, 0);
    v22 = controllerCopy;
  }
}

- (void)notifyAddedLinkPreviewMetadata:(id)metadata toUserActivity:(id)activity webView:(id)view
{
  metadataCopy = metadata;
  activityCopy = activity;
  viewCopy = view;
  v10 = +[Application sharedApplication];
  browserControllers = [v10 browserControllers];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__Application_notifyAddedLinkPreviewMetadata_toUserActivity_webView___block_invoke;
  v18[3] = &unk_2781D4E70;
  v19 = viewCopy;
  v12 = viewCopy;
  v13 = [browserControllers safari_firstObjectPassingTest:v18];

  tabController = [v13 tabController];
  activeTabDocument = [tabController activeTabDocument];

  linkAddedToUserActivityCallback = [activeTabDocument linkAddedToUserActivityCallback];

  if (linkAddedToUserActivityCallback)
  {
    linkAddedToUserActivityCallback2 = [activeTabDocument linkAddedToUserActivityCallback];
    (linkAddedToUserActivityCallback2)[2](linkAddedToUserActivityCallback2, activityCopy, metadataCopy);

    [activeTabDocument setLinkAddedToUserActivityCallback:0];
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

- (BOOL)isNoteTakingControllerSupportedInPrivateBrowsing:(id)browsing
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D4A908]];

  return v4;
}

- (WBSUnifiedBarAnalyticsProviding)unifiedBarAnalyticsProvider
{
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers safari_filterObjectsUsingBlock:&__block_literal_global_393];
  firstObject = [v3 firstObject];

  return firstObject;
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
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v5 = self->_bookmarkCollection;
    self->_bookmarkCollection = mainBookmarkCollection;

    bookmarkCollection = self->_bookmarkCollection;
  }

  return bookmarkCollection;
}

- (void)_webBookmarksDidReload
{
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  bookmarkCollection = self->_bookmarkCollection;
  self->_bookmarkCollection = mainBookmarkCollection;
}

- (id)_sortedBrowserControllers
{
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers sortedArrayUsingComparator:&__block_literal_global_396];

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
  _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
  firstObject = [_sortedBrowserControllers firstObject];
  scene = [firstObject scene];

  return scene;
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

- (void)tabEntitiesMatchingQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  _tabCompletionProvider = [(Application *)self _tabCompletionProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__Application_tabEntitiesMatchingQuery_completionHandler___block_invoke;
  v10[3] = &unk_2781D52F8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [_tabCompletionProvider tabCompletionMatchesForQuery:queryCopy completionHandler:v10];
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
  _tabCompletionProvider = [(Application *)self _tabCompletionProvider];
  tabInfos = [_tabCompletionProvider tabInfos];
  v4 = [tabInfos safari_mapObjectsUsingBlock:&__block_literal_global_404];

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

- (id)tabEntityWithUUID:(id)d
{
  v3 = [(BrowserWindowController *)self->_browserWindowController tabWithUUID:d];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D4A850]);
    uuid = [v3 uuid];
    title = [v3 title];
    v7 = [v3 url];
    absoluteString = [v7 absoluteString];
    v9 = [v4 initWithUUID:uuid title:title address:absoluteString isPrivate:{objc_msgSend(v3, "isPrivateBrowsingEnabled")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pdfDataForTabWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [(BrowserWindowController *)self->_browserWindowController tabDocumentWithUUID:dCopy];
  if (v8)
  {
    objc_initWeak(&location, self);
    webView = [v8 webView];
    if ([webView _isDisplayingPDF])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke;
      v14[3] = &unk_2781D5340;
      objc_copyWeak(&v16, &location);
      v15 = handlerCopy;
      [webView _getMainResourceDataWithCompletionHandler:v14];

      objc_destroyWeak(&v16);
    }

    else
    {
      printController = [v8 printController];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__Application_pdfDataForTabWithUUID_completionHandler___block_invoke_406;
      v12[3] = &unk_2781D5368;
      v13 = handlerCopy;
      [printController getPDFDataForUsage:3 withCompletion:v12];
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

    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (id)_browserControllerForTabWithUUID:(id)d
{
  dCopy = d;
  browserControllers = [(Application *)self browserControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__Application__browserControllerForTabWithUUID___block_invoke;
  v9[3] = &unk_2781D4E70;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [browserControllers safari_firstObjectPassingTest:v9];

  return v7;
}

BOOL __48__Application__browserControllerForTabWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 tabWithUUID:*(a1 + 32)];
  v5 = v4 != 0;

  return v5;
}

- (void)sceneForTabWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(Application *)self _browserControllerForTabWithUUID:d];
  if (v7)
  {
    openSessions = [(Application *)self openSessions];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__Application_sceneForTabWithUUID_completionHandler___block_invoke;
    v13[3] = &unk_2781D5390;
    v9 = v7;
    v14 = v9;
    v10 = [openSessions safari_anyObjectPassingTest:v13];

    if ([(Application *)self supportsMultipleScenes]&& !v10)
    {
      handlerCopy[2](handlerCopy, 0);
LABEL_12:

      goto LABEL_13;
    }

    scene = [v9 scene];
    if (scene)
    {
      (handlerCopy)[2](handlerCopy, scene);
      if (![scene activationState])
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v9 setIntentSceneConfigurationCompletion:handlerCopy];
    }

    v12 = objc_alloc_init(MEMORY[0x277D75950]);
    [(Application *)self requestSceneSessionActivation:v10 userActivity:0 options:v12 errorHandler:&__block_literal_global_411];

LABEL_11:
    goto LABEL_12;
  }

  handlerCopy[2](handlerCopy, 0);
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

- (id)sceneForTabGroupWithUUIDString:(id)string
{
  stringCopy = string;
  _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__Application_sceneForTabGroupWithUUIDString___block_invoke;
  v10[3] = &unk_2781D4E70;
  v11 = stringCopy;
  v6 = stringCopy;
  v7 = [_sortedBrowserControllers safari_firstObjectPassingTest:v10];

  scene = [v7 scene];

  return scene;
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
  focusProfileIdentifier = [(Application *)self focusProfileIdentifier];
  if (focusProfileIdentifier)
  {
    v4 = +[Application sharedApplication];
    tabGroupManager = [v4 tabGroupManager];
    v6 = [tabGroupManager profileWithIdentifier:focusProfileIdentifier];

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
        tabController = [v8 tabController];
        [tabController dismissOpenTabGroupAlertIfNeeded];
        scene = [v8 scene];
        v11 = scene;
        if (scene && (![scene activationState] || objc_msgSend(v11, "activationState") == 1))
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
              windowState = [v8 windowState];
              uuid = [windowState uuid];
              v22 = v13->_focusProfileIdentifier;
              *buf = 138543618;
              v30 = uuid;
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
      _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
      firstObject = [_sortedBrowserControllers firstObject];
      tabController2 = [firstObject tabController];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__Application__profileFocusConfigurationChanged__block_invoke;
      v24[3] = &unk_2781D4B18;
      v24[4] = self;
      [tabController2 openFocusProfileWithCompletionHandler:v24];
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

- (void)setNeedsFocusProfileUpdate:(BOOL)update
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_needsFocusProfileUpdate != update)
  {
    updateCopy = update;
    self->_needsFocusProfileUpdate = update;
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setBool:updateCopy forKey:*MEMORY[0x277D49C28]];

    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = updateCopy;
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
        tabController = [v11 tabController];
        [tabController dismissOpenTabGroupAlertIfNeeded];
        scene = [v11 scene];
        v14 = scene;
        if (scene && (![scene activationState] || objc_msgSend(v14, "activationState") == 1))
        {
          activeTabGroup = [tabController activeTabGroup];
          v16 = WBSIsEqual();

          if (v16)
          {
            v17 = WBS_LOG_CHANNEL_PREFIXSiriLink();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              windowState = [v11 windowState];
              uuid = [windowState uuid];
              [v4 uuid];
              v22 = v21 = self;
              *buf = v27;
              v36 = uuid;
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
    firstObject = [v24 firstObject];
    tabController2 = [firstObject tabController];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__Application__tabGroupFocusConfigurationChanged__block_invoke;
    v30[3] = &unk_2781D4B18;
    v30[4] = self;
    [tabController2 openFocusedTabGroupWithCompletionHandler:v30];

    v4 = v23;
  }
}

- (BOOL)prefersSingleWindow
{
  openSessions = [(Application *)self openSessions];
  if ([openSessions count] == 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = _SFDeviceIsPad() ^ 1;
  }

  return v3;
}

- (void)setNeedsFocusedTabGroupUpdate:(BOOL)update
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_needsFocusedTabGroupUpdate != update)
  {
    updateCopy = update;
    self->_needsFocusedTabGroupUpdate = update;
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setBool:updateCopy forKey:*MEMORY[0x277D49C30]];

    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = updateCopy;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Updated needsFTGUpdate to %i", v6, 8u);
    }
  }
}

- (id)tabInfosForBrowserTabCompletionProvider:(id)provider
{
  v42 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB58] set];
  openSessions = [(Application *)self openSessions];
  v32 = [openSessions safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_413];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  _sortedBrowserControllers = [(Application *)self _sortedBrowserControllers];
  v7 = [_sortedBrowserControllers countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v30 = *v38;
    selfCopy = self;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(_sortedBrowserControllers);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (([v11 isPrivateBrowsingEnabled] & 1) == 0)
        {
          if (!-[Application supportsMultipleScenes](self, "supportsMultipleScenes") || ([v11 windowState], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "sceneID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v32, "containsObject:", v13), v13, v12, v14))
          {
            tabController = [v11 tabController];
            activeTabGroup = [tabController activeTabGroup];

            if (([v4 containsObject:activeTabGroup] & 1) == 0)
            {
              [v4 addObject:activeTabGroup];
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              uuid = [activeTabGroup uuid];
              v19 = [v17 initWithUUIDString:uuid];

              displayTitle = [activeTabGroup displayTitle];
              tabController2 = [v11 tabController];
              [tabController2 currentTabs];
              v22 = v8;
              v23 = _sortedBrowserControllers;
              v25 = v24 = v4;
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __55__Application_tabInfosForBrowserTabCompletionProvider___block_invoke_2;
              v33[3] = &unk_2781D53B8;
              v33[4] = v11;
              v34 = v19;
              v35 = displayTitle;
              v36 = array;
              v26 = displayTitle;
              v27 = v19;
              [v25 enumerateObjectsUsingBlock:v33];

              v4 = v24;
              _sortedBrowserControllers = v23;
              v8 = v22;

              self = selfCopy;
              v9 = v30;
            }
          }
        }
      }

      v8 = [_sortedBrowserControllers countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  return array;
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

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
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

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
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
  v14 = identifiersCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = identifiersCopy;
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

- (void)websiteDataStore:(id)store openWindow:(id)window fromServiceWorkerOrigin:(id)origin completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  windowCopy = window;
  originCopy = origin;
  handlerCopy = handler;
  v14 = WBS_LOG_CHANNEL_PREFIXPush();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v27 = "[Application websiteDataStore:openWindow:fromServiceWorkerOrigin:completionHandler:]";
    v28 = 2114;
    v29 = storeCopy;
    v30 = 2114;
    v31 = windowCopy;
    v32 = 2114;
    v33 = originCopy;
    _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s with ds=%{public}@ url=%{public}@ swOrigin=%{public}@", buf, 0x2Au);
  }

  v15 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
  v16 = [v15 navigationIntentWithServiceWorkerOpenURL:windowCopy];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __85__Application_websiteDataStore_openWindow_fromServiceWorkerOrigin_completionHandler___block_invoke;
  v23 = &unk_2781D54A8;
  v24 = v16;
  v25 = handlerCopy;
  v17 = handlerCopy;
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

- (void)websiteDataStore:(id)store domain:(id)domain didOpenDomainViaWindowOpen:(id)open withProperty:(int64_t)property directly:(BOOL)directly
{
  directlyCopy = directly;
  domainCopy = domain;
  openCopy = open;
  if ([store isPersistent])
  {
    mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
    [mEMORY[0x277D49E30] donateWindowProxyWithDomain:domainCopy openedDomain:openCopy windowProxyProperty:property accessedPropertyDirectly:directlyCopy];
  }
}

- (id)createBookmarkWithTitle:(id)title url:(id)url
{
  v5 = MEMORY[0x277D7B5A8];
  urlCopy = url;
  titleCopy = title;
  mainBookmarkCollection = [v5 mainBookmarkCollection];
  v9 = [objc_alloc(MEMORY[0x277CDB6C8]) initWithCollection:mainBookmarkCollection syntheticBookmarkProvider:0];
  v10 = objc_alloc(MEMORY[0x277D7B5A0]);
  absoluteString = [urlCopy absoluteString];

  configuration = [mainBookmarkCollection configuration];
  v13 = [v10 initWithTitle:titleCopy address:absoluteString collectionType:{objc_msgSend(configuration, "collectionType")}];

  rootBookmark = [mainBookmarkCollection rootBookmark];
  v15 = [v9 saveBookmark:v13 inFolder:rootBookmark];

  return v15;
}

- (void)deleteBookmarksWithUUIDs:(id)ds
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dsCopy;
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
        v12 = [mainBookmarkCollection bookmarkWithUUID:{v11, v15, v16}];
        if (v12)
        {
          if (([mainBookmarkCollection deleteBookmark:v12] & 1) == 0)
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

- (void)moveTabsWithUUIDs:(id)ds toTabGroupWithUUID:(id)d
{
  dCopy = d;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__Application_moveTabsWithUUIDs_toTabGroupWithUUID___block_invoke;
  v11[3] = &unk_2781D54D0;
  v11[4] = self;
  v7 = [ds safari_mapAndFilterObjectsUsingBlock:v11];
  if ([v7 count])
  {
    tabGroupManager = self->_tabGroupManager;
    uUIDString = [dCopy UUIDString];
    v10 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:uUIDString];

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

- (void)moveTabsWithUUIDs:(id)ds toWindowWithIdentifier:(id)identifier
{
  dsCopy = ds;
  v7 = browserControllerWithEntityIdentifier(identifier);
  v8 = v7;
  if (v7)
  {
    tabController = [v7 tabController];
    activeTabGroup = [tabController activeTabGroup];

    uuid = [activeTabGroup uuid];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__Application_moveTabsWithUUIDs_toWindowWithIdentifier___block_invoke;
    v17 = &unk_2781D54F8;
    selfCopy = self;
    v12 = uuid;
    v19 = v12;
    v13 = [dsCopy safari_mapAndFilterObjectsUsingBlock:&v14];
    if ([v13 count])
    {
      [(WBTabGroupManager *)self->_tabGroupManager moveTabs:v13 toTabGroup:activeTabGroup afterTab:0 withoutPersistingTabGroupsWithUUIDStrings:0];
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

- (void)navigateTabWithUUID:(id)d toURL:(id)l
{
  browserWindowController = self->_browserWindowController;
  lCopy = l;
  v7 = [(BrowserWindowController *)browserWindowController tabWithUUID:d];
  [v7 loadURL:lCopy title:&stru_2827BF158 skipSyncableTabUpdates:0];
}

- (void)deleteTabGroupsWithUUIDs:(id)ds
{
  v15 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v9 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:*(*(&v10 + 1) + 8 * i)];
        if (v9)
        {
          [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v9];
        }
      }

      v6 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSString)lastActiveProfileIdentifier
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults stringForKey:*MEMORY[0x277D29030]];

  return v3;
}

- (NSArray)allWindowEntities
{
  browserControllers = [(Application *)self browserControllers];
  v3 = [browserControllers safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_426];

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

- (id)windowEntityWithIdentifier:(id)identifier
{
  v3 = browserControllerWithEntityIdentifier(identifier);
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

- (id)createNewWindowWithRequestIdentifier:(id)identifier isPrivate:(BOOL)private
{
  privateCopy = private;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(Application *)self supportsMultipleScenes])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    browserControllers = [(Application *)self browserControllers];
    v8 = [browserControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(browserControllers);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          proxy = [v12 proxy];
          appIntentRequestIdentifier = [proxy appIntentRequestIdentifier];
          v15 = [appIntentRequestIdentifier isEqual:identifierCopy];

          if (v15)
          {
            [v12 setPrivateBrowsingEnabled:privateCopy];
            v16 = entityIdentifierForBrowserController(v12);
            goto LABEL_13;
          }
        }

        v9 = [browserControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)closeWindowsWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__Application_closeWindowsWithIdentifiers___block_invoke;
  v13[3] = &unk_2781D5540;
  v13[4] = self;
  v4 = [identifiers safari_mapAndFilterObjectsUsingBlock:v13];
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

- (void)showWindowWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  openSessions = [(Application *)self openSessions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__Application_showWindowWithIdentifier___block_invoke;
  v8[3] = &unk_2781D5390;
  v9 = identifierCopy;
  v6 = identifierCopy;
  v7 = [openSessions safari_anyObjectPassingTest:v8];

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

- (id)recentsStoreForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D49BD8]])
  {
    _recentsStoreForDefaultProfile = [(Application *)self _recentsStoreForDefaultProfile];
  }

  else
  {
    v6 = +[Application sharedApplication];
    tabGroupManager = [v6 tabGroupManager];

    v8 = [tabGroupManager profileWithIdentifier:identifierCopy];
    recentsStore = [v8 recentsStore];

    if (!recentsStore)
    {
      v10 = [objc_alloc(MEMORY[0x277D4A7E8]) initWithCloudTabDeviceProvider:tabGroupManager];
      [v10 setActiveProfileIdentifier:identifierCopy];
      v11 = objc_alloc(MEMORY[0x277D4A7F8]);
      mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v13 = [v11 initWithSiteMetadataManager:mEMORY[0x277D28F58]];

      [v13 registerProvider:v10];
      [v8 setRecentsStore:v13];
    }

    _recentsStoreForDefaultProfile = [v8 recentsStore];
  }

  return _recentsStoreForDefaultProfile;
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

  browserControllers = [(Application *)self browserControllers];
  firstObject = [browserControllers firstObject];

  return firstObject;
}

+ (void)commandLineTestOption:(int)option arg:(const char *)arg
{
  if (arg)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:arg encoding:4];
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

  if (option == 84 && v5)
  {
    [gTestOptions setObject:v5 forKey:@"testName"];
LABEL_15:
    v5 = v14;
    goto LABEL_16;
  }

  if (option == 85)
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

  if (option == 80)
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

+ (BOOL)prepareTestControllerWithType:(id)type suiteURL:(id)l bundleNames:(id)names outputURL:(id)rL
{
  v33 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  lCopy = l;
  namesCopy = names;
  rLCopy = rL;
  v13 = WBS_LOG_CHANNEL_PREFIXTest();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v32.st_dev = 138413058;
    *&v32.st_mode = typeCopy;
    WORD2(v32.st_ino) = 2112;
    *(&v32.st_ino + 6) = lCopy;
    HIWORD(v32.st_gid) = 2112;
    *&v32.st_rdev = namesCopy;
    LOWORD(v32.st_atimespec.tv_sec) = 2112;
    *(&v32.st_atimespec.tv_sec + 2) = rLCopy;
    _os_log_debug_impl(&dword_215819000, v13, OS_LOG_TYPE_DEBUG, "Preparing test controller: type = %@, suiteURL = %@, bundle names = %@, output URL = %@", &v32, 0x2Au);
  }

  if ([typeCopy isEqualToString:@"autofill"])
  {
    v14 = 0x277D49E20;
    v15 = namesCopy;
LABEL_7:
    gTestFileURLs = 1;
    v16 = [objc_alloc(*v14) initWithSuiteURL:lCopy bundleNames:v15];
    v17 = gTestController;
    gTestController = v16;

    memset(&v32, 0, sizeof(v32));
    if (!stat([rLCopy fileSystemRepresentation], &v32) && (v32.st_mode & 0x1000) != 0)
    {
      v31 = 0;
      v26 = [objc_alloc(MEMORY[0x277D49F48]) initWithFifoURL:rLCopy error:&v31];
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
      v18 = [objc_alloc(MEMORY[0x277D49E68]) initWithFileURL:rLCopy error:&v30];
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

  if ([typeCopy isEqualToString:@"bulk-classification"])
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

- (BOOL)overrideBrowserStateForTestNamed:(id)named browserController:(id)controller
{
  namedCopy = named;
  controllerCopy = controller;
  if (([namedCopy hasPrefix:@"TabOverview"] & 1) != 0 || (objc_msgSend(namedCopy, "hasPrefix:", @"SplitView") & 1) != 0 || (objc_msgSend(namedCopy, "hasPrefix:", @"TabBar") & 1) != 0 || objc_msgSend(namedCopy, "hasPrefix:", @"Memory"))
  {
    v7 = [namedCopy isEqualToString:@"TabOverviewOpenNewTab"];
    v8 = [namedCopy isEqualToString:@"TabBarSwitchTab"];
    if ([namedCopy isEqualToString:@"MemoryAndLiveTabs"])
    {
      goto LABEL_12;
    }

    v9 = 64;
    if (v7)
    {
      v9 = 8;
    }

    v10 = v8 ? 1 : v9;
    if ([namedCopy isEqualToString:@"IOAndLiveTabs"])
    {
LABEL_12:
      testPageURL = [gTabMemoryAndIOTestRunner testPageURL];
      v10 = 200;
    }

    else
    {
      testPageURL = 0;
    }

    array = [MEMORY[0x277CBEB18] array];
    do
    {
      v13 = objc_alloc(MEMORY[0x277D7B538]);
      tabController = [controllerCopy tabController];
      deviceIdentifier = [tabController deviceIdentifier];
      v16 = [v13 initWithTitle:0 url:testPageURL deviceIdentifier:deviceIdentifier];

      [array addObject:v16];
      --v10;
    }

    while (v10);
    v17 = [array copy];
    windowState = [controllerCopy windowState];
    localTabGroup = [windowState localTabGroup];
    [localTabGroup setTabs:v17];

    v20 = MEMORY[0x277D28F08];
    v21 = objc_alloc_init(PPTTestBrowserWindowSettings);
    [v20 setSharedSettings:v21];

    settings = [MEMORY[0x277D28F08] settings];
    uUID = [controllerCopy UUID];
    v24 = 1;
    [settings setIsShowingTabView:1 forWindowWithUUID:uUID];

    v25 = [PinnedTabsManager alloc];
    tabGroupManager = [controllerCopy tabGroupManager];
    tabCollection = [tabGroupManager tabCollection];
    v28 = [(PinnedTabsManager *)v25 initWithBrowserState:0 tabCollection:tabCollection];
    tabController2 = [controllerCopy tabController];
    [tabController2 setPinnedTabsManager:v28];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)checkExtendedLaunchPageLoad:(id)load forTabDocument:(id)document
{
  loadCopy = load;
  documentCopy = document;
  if (gExtendedLaunchPageLoad == -1)
  {
    v6 = *MEMORY[0x277D76620];
    _launchTestName = [*MEMORY[0x277D76620] _launchTestName];
    if ([v6 isRunningTest:_launchTestName])
    {
      absoluteString = [loadCopy absoluteString];
      v9 = [absoluteString isEqualToString:@"about:blank"];

      if ((v9 & 1) == 0)
      {
        v10 = [[PageLoadTestStatistics alloc] initWithInjectedBundle:1 withCallback:&__block_literal_global_162];
        [documentCopy setPageLoadStatistics:v10];
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

- (id)_numberOption:(id)option
{
  v3 = [gTestOptions objectForKey:option];
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

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  if (gRunner)
  {
    [gRunner finish];
  }

  gTestFileURLs = 1;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:optionsCopy];
  v10 = gTestOptions;
  gTestOptions = v9;

  [gTestOptions setObject:testCopy forKey:@"testName"];
  objc_storeStrong(&gCurrentTestName, test);
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  if ([testCopy hasPrefix:@"PLT"])
  {
    v12 = PurplePageLoadTestRunner;
LABEL_9:
    v13 = [[v12 alloc] initWithTestName:testCopy browserController:_browserControllerForApplicationTesting];
LABEL_10:
    v14 = v13;
    goto LABEL_11;
  }

  if ([testCopy hasPrefix:@"Alexa"])
  {
    v12 = AlexaTestRunner;
    goto LABEL_9;
  }

  if ([testCopy hasPrefix:@"WhiteTabs"])
  {
    v12 = WhiteTabsTestRunner;
    goto LABEL_9;
  }

  if ([testCopy hasPrefix:@"ZoomTest"])
  {
    v14 = [[ZoomTestProcessor alloc] initWithTestName:testCopy browserController:_browserControllerForApplicationTesting];
    v19 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v19 intValue]);

    v20 = [gTestOptions safari_stringForKey:@"stepsPerZoom"];
    -[ZoomTestProcessor setStepsPerZoom:](v14, "setStepsPerZoom:", [v20 intValue]);
LABEL_24:

    goto LABEL_11;
  }

  if ([testCopy hasPrefix:@"ZoomAnimationTest"])
  {
    v21 = ZoomAnimationTestProcessor;
LABEL_21:
    v14 = [[v21 alloc] initWithTestName:testCopy browserController:_browserControllerForApplicationTesting];
    v20 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v20 intValue]);
    goto LABEL_24;
  }

  if ([testCopy hasPrefix:@"ScrollTest"])
  {
    v14 = [[ScrollTestProcessor alloc] initWithTestName:testCopy browserController:_browserControllerForApplicationTesting];
    v22 = [gTestOptions safari_stringForKey:@"iterations"];
    -[ContentInteractionTestRunner setIterations:](v14, "setIterations:", [v22 intValue]);

    v20 = [gTestOptions safari_stringForKey:@"scrollDelta"];
    -[ZoomTestProcessor setScrollDelta:](v14, "setScrollDelta:", [v20 intValue]);
    goto LABEL_24;
  }

  if ([testCopy hasPrefix:@"ScrollDecelerationTest"])
  {
    v21 = ScrollDecelerationTestProcessor;
    goto LABEL_21;
  }

  if ([testCopy hasPrefix:@"ScrollColorBlockTest"])
  {
    v12 = ScrollColorBlockTestProcessor;
    goto LABEL_9;
  }

  if ([testCopy hasPrefix:@"RotationTest"])
  {
    v21 = RotationTestProcessor;
    goto LABEL_21;
  }

  if ([testCopy hasPrefix:@"ScrollPerf"])
  {
    v23 = ScrollPerfTestRunner;
LABEL_33:
    v13 = [[v23 alloc] initRenderTestWithName:testCopy browserController:_browserControllerForApplicationTesting showRenderTime:0 showFPS:1];
    goto LABEL_10;
  }

  if ([testCopy hasPrefix:@"PageLoadUsageofMemory"])
  {
    v12 = PurplePageMemoryTestRunner;
    goto LABEL_9;
  }

  if ([testCopy hasPrefix:@"FlowManagedPageLoadTest"])
  {
    v12 = PurpleFlowManagedPageLoadTestRunner;
    goto LABEL_9;
  }

  if ([testCopy hasPrefix:@"ContentAnimation"])
  {
    v23 = ContentAnimationTestRunner;
    goto LABEL_33;
  }

  if (![testCopy hasPrefix:@"ScaleTest:"])
  {
    if ([testCopy rangeOfString:@"ShowHideBookmarksTest"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([testCopy rangeOfString:@"CanvasTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [optionsCopy objectForKey:@"url"];
        if (!v17)
        {
          v30 = [optionsCopy objectForKey:@"URLs"];
          v17 = [v30 objectAtIndex:0];
        }

        v15 = [(Application *)self startCanvasTest:v17];
        goto LABEL_13;
      }

      if ([testCopy rangeOfString:@"TabViewBringUpTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewBringUpTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"TabViewRotateTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewRotationTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"TabViewOpenTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewOpenTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"TabViewSelectTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewSelectTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"TabViewCloseTest"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self prepareTabViewCloseTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"KeyboardSplitAndMerge"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardSplitAndMergeTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"KeyboardBringup"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardBringupTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"KeyboardRotation"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self startKeyboardRotationTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"LargeFormFocus"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runLargeFormFocusTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"LargeFormTyping"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runLargeFormTypingTest];
        goto LABEL_91;
      }

      if ([testCopy rangeOfString:@"GeneratePassword"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(Application *)self runGeneratePasswordTest];
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"TabOverview"])
      {
        [(Application *)self runTabOverviewTest];
LABEL_91:
        v15 = 1;
        goto LABEL_16;
      }

      if ([testCopy hasPrefix:@"TabSnapshotCacheStressTest"])
      {
        [(Application *)self runTabSnapshotCacheStressTest];
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"BookmarksView"])
      {
        [(Application *)self runBookmarksViewTest];
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"SplitView"])
      {
        v31 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [Application(ApplicationTesting) runTest:v31 options:?];
        }

        goto LABEL_15;
      }

      if ([testCopy hasPrefix:@"SearchPerformanceUnifiedFieldKeyTimeTest"])
      {
        [(Application *)self startSearchPerformanceUnifiedFieldKeyTimeTest];
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"SearchPerformanceDetailed"])
      {
        -[Application startSearchPerformanceDetailedTestWithCF:](self, "startSearchPerformanceDetailedTestWithCF:", [testCopy hasPrefix:@"SearchPerformanceDetailedWithCF"]);
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"SearchPerformance"])
      {
        [(Application *)self startSearchPerformanceTest];
        goto LABEL_91;
      }

      if ([testCopy hasPrefix:@"SidebarOpen"])
      {
        startSidebarTest = [(Application *)self startSidebarTest];
        goto LABEL_63;
      }

      if ([testCopy hasPrefix:@"TabBar"])
      {
        startSidebarTest = [(Application *)self startTabBarTest];
        goto LABEL_63;
      }

      if ([testCopy hasPrefix:@"History"])
      {
        startSidebarTest = [(Application *)self startHistoryTest];
        goto LABEL_63;
      }

      if ([testCopy hasPrefix:@"Memory"])
      {
        selfCopy2 = self;
        v33 = 0;
LABEL_102:
        startSidebarTest = [(Application *)selfCopy2 runMemoryOrIOTestWithType:v33];
        goto LABEL_63;
      }

      if ([testCopy hasPrefix:@"IO"])
      {
        selfCopy2 = self;
        v33 = 1;
        goto LABEL_102;
      }

      if ([testCopy hasPrefix:@"TabViewScroll"])
      {
        [(Application *)self prepareTabViewScrollTest];
        goto LABEL_91;
      }

      if ([testCopy isEqualToString:@"Resize"])
      {
        startSidebarTest = [(Application *)self _startResizeTestWithName:testCopy];
      }

      else
      {
        v34.receiver = self;
        v34.super_class = Application;
        startSidebarTest = [(Application *)&v34 runTest:testCopy options:optionsCopy];
      }
    }

    else
    {
      v28 = [optionsCopy objectForKey:@"iterations"];
      gShowBookmarksTestIterations = [v28 intValue];

      startSidebarTest = [(Application *)self prepareBookmarksTest];
    }

LABEL_63:
    v15 = startSidebarTest;
    goto LABEL_16;
  }

  v14 = [(PurplePageLoadTestRunner *)[ScaleTestProcessor alloc] initRenderTestWithName:testCopy browserController:_browserControllerForApplicationTesting showRenderTime:1 showFPS:0];
  v24 = [optionsCopy objectForKey:@"scale"];
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
    NSLog(@"Could not run test '%@'", testCopy);
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
  [(PageLoadTestRunner *)v17 setTestOptions:optionsCopy];
  [(PageLoadTestRunner *)v17 start];
LABEL_13:

LABEL_16:
  return v15;
}

- (void)_observeNotificationOnce:(id)once handler:(id)handler
{
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v6 = MEMORY[0x277CCAB98];
  onceCopy = once;
  defaultCenter = [v6 defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__Application_ApplicationTesting___observeNotificationOnce_handler___block_invoke;
  v13[3] = &unk_2781D57A8;
  v14 = handlerCopy;
  v15 = &v16;
  v10 = handlerCopy;
  v11 = [defaultCenter addObserverForName:onceCopy object:0 queue:mainQueue usingBlock:v13];

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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__Application_ApplicationTesting__startKeyboardSplitAndMergeTest__block_invoke;
  v7[3] = &unk_2781D4D40;
  v8 = _browserControllerForApplicationTesting;
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__Application_ApplicationTesting__startKeyboardBringupTest__block_invoke;
  v9[3] = &unk_2781D4D40;
  v10 = _browserControllerForApplicationTesting;
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__Application_ApplicationTesting__startKeyboardRotationTest__block_invoke;
  v8[3] = &unk_2781D4D40;
  v9 = _browserControllerForApplicationTesting;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__Application_ApplicationTesting__startKeyboardRotationTest__block_invoke_2;
  v5[3] = &unk_2781D4C88;
  v6 = v9;
  selfCopy = self;
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  [tabController closeAllOpenTabsAnimated:0];

  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v4 = [_browserControllerForApplicationTesting loadURLInNewTab:v3 inBackground:0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  [mainRunLoop runUntilDate:v6];
}

- (void)_loadAlternateHTMLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  [(Application *)self loadBlankPageforKeyboardTests];
  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__Application_ApplicationTesting___loadAlternateHTMLString_completionHandler___block_invoke;
  block[3] = &unk_2781D53E0;
  block[4] = self;
  v12 = stringCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = stringCopy;
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

- (void)_typeTextInForm:(id)form completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = gCurrentTestName;
  formCopy = form;
  [(Application *)self startedSubTest:@"TypeLetter" forTest:v7 withMetrics:&unk_2827FC3E8];
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  activeTabDocument = [tabController activeTabDocument];

  _responderForKeyEvents = [*MEMORY[0x277D76620] _responderForKeyEvents];
  [_responderForKeyEvents insertText:formCopy];

  webView = [activeTabDocument webView];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__Application_ApplicationTesting___typeTextInForm_completionHandler___block_invoke;
  v15[3] = &unk_2781D57D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [webView evaluateJavaScript:@"null;" completionHandler:v15];
}

uint64_t __69__Application_ApplicationTesting___typeTextInForm_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"TypeLetter" forTest:gCurrentTestName];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_runFormTypingTextWithSetupScript:(id)script
{
  scriptCopy = script;
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
  selfCopy = self;
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
  v7 = scriptCopy;
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

- (void)loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  v7 = MEMORY[0x277CBEBC0];
  v8 = _SFSafariTestContentDirectoryPath();
  v9 = [v8 stringByAppendingPathComponent:@"Apple.webarchive"];
  v10 = [v7 fileURLWithPath:v9 isDirectory:0];

  [tabController closeAllOpenTabsAnimated:1];
  for (; testing; --testing)
  {
    v11 = [_browserControllerForApplicationTesting loadURLInNewTab:v10 inBackground:0];
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
  [mainRunLoop runUntilDate:v13];

  tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

  if (view)
  {
    [tabThumbnailCollectionView presentAnimated:1];
  }

  else
  {
    [tabThumbnailCollectionView dismissAnimated:1];
  }
}

- (void)loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  [tabController closeAllOpenTabsAnimated:1];
  [(Application *)self _loadTabsForTesting:testing presentTabView:viewCopy completion:completionCopy];
}

- (void)_preparePageLoadTestControllerParameters
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  processPool = [_browserControllerForApplicationTesting processPool];
  [processPool _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"enablePageLoadMeasurementCollection"];
}

- (void)_loadTabsForTesting:(unint64_t)testing presentTabView:(BOOL)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  [(Application *)self _preparePageLoadTestControllerParameters];
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  if (testing)
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = _SFSafariTestContentDirectoryPath();
    v13 = [v12 stringByAppendingPathComponent:@"Apple.webarchive"];
    tabThumbnailCollectionView = [v11 fileURLWithPath:v13 isDirectory:0];

    [tabController insertNewBlankTabDocumentAnimated:0];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    activeTabDocument = [tabController activeTabDocument];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__Application_ApplicationTesting___loadTabsForTesting_presentTabView_completion___block_invoke;
    v20[3] = &unk_2781D58C0;
    v22 = v25;
    testingCopy = testing;
    v20[4] = self;
    v24 = viewCopy;
    v21 = completionCopy;
    [activeTabDocument loadTestURL:tabThumbnailCollectionView withInjectedBundle:1 withCallback:v20];

    activeTabDocument2 = [tabController activeTabDocument];
    pageLoadStatistics = [activeTabDocument2 pageLoadStatistics];
    [pageLoadStatistics setPageLoadingTimeoutInterval:5.0];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];
    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

    if (viewCopy)
    {
      [tabThumbnailCollectionView presentAnimated:1];
    }

    else
    {
      [tabThumbnailCollectionView dismissAnimated:1];
    }

    v19 = dispatch_time(0, 5000000000);
    dispatch_after(v19, MEMORY[0x277D85CD0], completionCopy);
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];

  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  [tabThumbnailCollectionView presentAnimated:1];
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];

  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  [tabThumbnailCollectionView presentAnimated:1];
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];

  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"TabViewSelectAnimationBeginSubTest" forTest:gCurrentTestName];
  _browserControllerForApplicationTesting2 = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting2 tabController];

  currentTabDocuments = [tabController currentTabDocuments];
  v8 = [currentTabDocuments objectAtIndexedSubscript:6];
  [tabController closeTabDocument:v8 animated:1];

  v9 = gCurrentTestName;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__Application_ApplicationTesting__startTabViewCloseTest__block_invoke;
  v11[3] = &unk_2781D4D40;
  v12 = tabCollectionViewProvider;
  v10 = tabCollectionViewProvider;
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
    selfCopy = self;
    v3 = &v6;
    selfCopy4 = self;
    v5 = 3;
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__Application_ApplicationTesting__startTabViewRotationTest__block_invoke;
    v14 = &unk_2781D4B18;
    selfCopy3 = self;
    v3 = &v11;
    selfCopy4 = self;
    v5 = 1;
  }

  [(Application *)selfCopy4 rotateIfNeeded:v5 completion:v3, v6, v7, v8, v9, selfCopy, v11, v12, v13, v14, selfCopy3];
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
    _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
    tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];

    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
    view = [tabThumbnailCollectionView view];
    window = [view window];

    [window bounds];
    v11 = CGRectInset(v10, 0.0, 100.0);
    [(Application *)self _scrollContentWithTestName:gCurrentTestName scrollingBounds:v11.origin.x amplitude:v11.origin.y, v11.size.width, v11.size.height, v11.size.height + v11.size.height];
  }

  else
  {
    v7 = gCurrentTestName;

    [(Application *)self failedTest:v7 withFailure:@"Recap not available"];
  }
}

- (void)_scrollContentWithTestName:(id)name scrollingBounds:(CGRect)bounds amplitude:(double)amplitude
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
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
  v14 = [v13 initWithTestName:gCurrentTestName scrollBounds:1 amplitude:0 direction:x completionHandler:{y, width, height, amplitude}];
  [getRPTTestRunnerClass() runTestWithParameters:v14];
}

- (BOOL)startSidebarTest
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:0 forKey:@"ShowSidebar"];

  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v6 = [_browserControllerForApplicationTesting loadURLInNewTab:v5 inBackground:0 animated:0];

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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  [(Application *)self _observeNotificationOnce:@"SidebarWillPresentNotification" handler:&__block_literal_global_362];
  [(Application *)self _observeNotificationOnce:@"SidebarDidPresentNotification" handler:&__block_literal_global_378_0];
  [(Application *)self startedTest:gCurrentTestName];
  [(Application *)self startedSubTest:@"Delay" forTest:gCurrentTestName withMetrics:&unk_2827FC418];
  sidebarUIProxy = [_browserControllerForApplicationTesting sidebarUIProxy];
  [sidebarUIProxy setShowingSidebar:1 completion:0];

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

- (void)finishedPurpleTest:(id)test
{
  testCopy = test;
  v4 = [gTestOptions objectForKey:@"testName"];
  if ([(Application *)self isRunningTest:v4])
  {
    [(Application *)self finishedTest:v4 extraResults:testCopy];
    gRunningPurpleTest = 0;
  }
}

- (void)failedPurpleTestWithError:(id)error
{
  errorCopy = error;
  v4 = [gTestOptions objectForKey:@"testName"];
  if ([(Application *)self isRunningTest:v4])
  {
    if (errorCopy)
    {
      NSLog(@"Failed test %@: %@", v4, errorCopy);
    }

    [(Application *)self failedTest:v4];
    gRunningPurpleTest = 0;
  }
}

- (BOOL)startCanvasTest:(id)test
{
  self->_isRunningCanvasTest = 1;
  v4 = MEMORY[0x277CBEBC0];
  testCopy = test;
  v6 = [[v4 alloc] initWithString:testCopy];

  [(Application *)self startedPurpleTest];
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  activeTabDocument = [tabController activeTabDocument];

  [activeTabDocument loadTestURL:v6 withInjectedBundle:1 withCallback:0];
  [(Application *)self performSelector:sel__pollCanvasTest_ withObject:0 afterDelay:5.0];

  return 1;
}

- (void)_pollCanvasTest:(id)test
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  activeTabDocument = [tabController activeTabDocument];

  v6 = [activeTabDocument URL];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [lastPathComponent isEqualToString:@"results.html"];

  if (v8)
  {
    [(Application *)self finishedCanvasTestWithURL:v6 forTabDocument:activeTabDocument];
  }

  else
  {
    [(Application *)self performSelector:sel__pollCanvasTest_ withObject:0 afterDelay:5.0];
  }
}

- (void)finishedCanvasTestWithURL:(id)l forTabDocument:(id)document
{
  v36 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  selfCopy = self;
  self->_isRunningCanvasTest = 0;
  fragment = [l fragment];
  stringByRemovingPercentEncoding = [fragment stringByRemovingPercentEncoding];

  v27 = stringByRemovingPercentEncoding;
  [stringByRemovingPercentEncoding dataUsingEncoding:4];
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

  [(Application *)selfCopy finishedPurpleTest:v9];
  _browserControllerForApplicationTesting = [(Application *)selfCopy _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  [tabController closeTabDocument:documentCopy animated:0];
  activeTabDocument = [tabController activeTabDocument];
  [tabController closeTabDocument:activeTabDocument animated:0];
}

- (BOOL)startTabBarTest
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  v6 = [gTestOptions objectForKeyedSubscript:@"testName"];
  _browserControllerForApplicationTesting2 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [(Application *)self overrideBrowserStateForTestNamed:v6 browserController:_browserControllerForApplicationTesting2];

  if (v8)
  {
    [tabController readState];
    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
    [tabThumbnailCollectionView dismissAnimated:0];
  }

  activeTabDocument = [tabController activeTabDocument];
  _syntheticHTMLString = [(Application *)self _syntheticHTMLString];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:{@"data:text/html, "}];
  [activeTabDocument loadAlternateHTMLString:_syntheticHTMLString baseURL:v12 forUnreachableURL:0];

  v13 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__Application_ApplicationTesting__startTabBarTest__block_invoke;
  block[3] = &unk_2781D58E8;
  v18 = tabController;
  selfCopy = self;
  v20 = v6;
  v14 = v6;
  v15 = tabController;
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  tabDocuments = [tabController tabDocuments];
  activeTabDocument = [tabController activeTabDocument];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__Application_ApplicationTesting___runTabBarSwitchTabTest__block_invoke;
  v13[3] = &unk_2781D4E28;
  v13[4] = self;
  [(Application *)self _observeNotificationOnce:@"TabBarDidSwitchTabNotification" handler:v13];
  [(Application *)self startedTest:gCurrentTestName];
  v7 = [tabDocuments indexOfObject:activeTabDocument];
  if (v7 + 1 == [tabDocuments count])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = [tabDocuments objectAtIndex:v8];
  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  tabBar = [tabCollectionViewProvider tabBar];
  tabBarItem = [v9 tabBarItem];
  [tabBar _activateItemIfNeeded:tabBarItem];
}

- (void)runTabOverviewTest
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  v6 = [gTestOptions objectForKeyedSubscript:@"testName"];
  _browserControllerForApplicationTesting2 = [(Application *)self _browserControllerForApplicationTesting];
  v8 = [(Application *)self overrideBrowserStateForTestNamed:v6 browserController:_browserControllerForApplicationTesting2];

  if (v8)
  {
    [tabController readState];
    settings = [MEMORY[0x277D28F08] settings];
    _browserControllerForApplicationTesting3 = [(Application *)self _browserControllerForApplicationTesting];
    uUID = [_browserControllerForApplicationTesting3 UUID];
    v12 = [settings isShowingTabViewForWindowWithUUID:uUID];

    if (v12)
    {
      tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
      [tabThumbnailCollectionView presentAnimated:0];
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  objc_initWeak(&location, tabThumbnailCollectionView);
  v8 = dispatch_time(0, 2000000000);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__Application_ApplicationTesting___runTabOverviewOpenNewTabTest__block_invoke;
  v13[3] = &unk_2781D5938;
  v14 = tabThumbnailCollectionView;
  v9 = tabThumbnailCollectionView;
  objc_copyWeak(&v18, &location);
  v15 = v3;
  v16 = tabCollectionViewProvider;
  v17 = tabController;
  v10 = tabController;
  v11 = tabCollectionViewProvider;
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
  intValue = [v4 intValue];

  if (intValue <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = intValue;
  }

  [*MEMORY[0x277D76620] startedTest:v3];
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];

  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  objc_initWeak(&location, tabThumbnailCollectionView);
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
  [TabCollectionViewBlockObserver beginObservingTabView:tabThumbnailCollectionView steadyStateBlock:&v13];
  tabSwitcherViewController = [tabCollectionViewProvider tabSwitcherViewController];
  [tabSwitcherViewController applyContentIfNeeded];

  [tabThumbnailCollectionView dismissAnimated:1];
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
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabCollectionViewProvider = [_browserControllerForApplicationTesting tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  view = [tabThumbnailCollectionView view];
  window = [view window];

  [window bounds];
  v11 = CGRectInset(v10, 0.0, 100.0);
  [(Application *)self _scrollContentWithTestName:v8 scrollingBounds:v11.origin.x amplitude:v11.origin.y, v11.size.width, v11.size.height, v11.size.height + v11.size.height];
}

- (BOOL)prepareBookmarksTest
{
  self->_isRunningShowBookmarksTest = 1;
  self->_startedBookmarksTest = 0;
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  if ([_browserControllerForApplicationTesting isPresentingModalBookmarksController])
  {
    [_browserControllerForApplicationTesting setPresentingModalBookmarksController:0 withExclusiveCollection:0 bookmarkUUIDString:0 animated:0];
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

  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  [_browserControllerForApplicationTesting performSelector:sel_toggleBookmarksPresentation withObject:0 afterDelay:0.0];
}

- (void)finishedBookmarksTest
{
  v2 = --gShowBookmarksTestIterations;
  if (self->_isRunningShowBookmarksTest)
  {
    if (v2)
    {
      _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
      [_browserControllerForApplicationTesting performSelector:sel_toggleBookmarksPresentation withObject:0 afterDelay:0.0];
    }

    else
    {
      v4 = +[Application sharedApplication];
      [v4 finishedPurpleTest:0];

      self->_isRunningShowBookmarksTest = 0;
    }
  }
}

- (void)_populateInMemoryBookmarksDBForTestNamed:(id)named
{
  namedCopy = named;
  +[WebBookmarkCollection test_overrideMainBookmarkCollection];
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  if ([namedCopy isEqualToString:@"BookmarksViewFavoritesScroll"])
  {
    favoritesFolder = [mainBookmarkCollection favoritesFolder];
    if (!favoritesFolder)
    {
      v5 = objc_alloc(MEMORY[0x277D7B5A0]);
      configuration = [mainBookmarkCollection configuration];
      favoritesFolder = [v5 initFolderWithParentID:0 collectionType:{objc_msgSend(configuration, "collectionType")}];

      [mainBookmarkCollection setFavoritesFolder:favoritesFolder localOnly:1];
      [mainBookmarkCollection saveBookmark:favoritesFolder];
    }

    array = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 250; ++i)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_Favorites_#%lu", i];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.apple.com/#%ld", i];
      v11 = objc_alloc(MEMORY[0x277D7B5A0]);
      configuration2 = [mainBookmarkCollection configuration];
      v13 = [v11 initWithTitle:v9 address:v10 collectionType:{objc_msgSend(configuration2, "collectionType")}];

      [mainBookmarkCollection moveBookmark:v13 toFolderWithID:{objc_msgSend(favoritesFolder, "identifier")}];
      [array addObject:v13];
    }

    [mainBookmarkCollection saveBookmarks:array postNotification:1];

    goto LABEL_7;
  }

  if (([namedCopy isEqualToString:@"BookmarksViewReadingListsScroll"] & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", @"SidebarOpenReadingList"))
  {
    for (j = 0; j != 150; ++j)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_ReadingList_#%lu", j];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.testfakereadinglist_favorites_bookmark_address.com/readinglist/id=#%ld", j];
      v17 = [MEMORY[0x277CBEBC0] safari_URLWithDataAsString:v16];
      [(WebBookmarkCollection *)mainBookmarkCollection saveReadingListBookmarkWithTitle:v15 address:v17 previewText:@"Lorem ipsum dolor sit amet thumbnailURL:pellentesque augue nonummy siteName:neque lacinia velit vulputate ipsum tabDocument:metus libero id pede didFetchPage:auctor felis metus." updateController:0 savedBookmarkID:@"testSite" shouldFetchMetadata:0, 1, 0, 0, 0];
    }
  }

  else if (([namedCopy isEqualToString:@"BookmarksViewBookmarksScroll"] & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", @"SidebarOpenBookmarks"))
  {
    favoritesFolder = [MEMORY[0x277CBEB18] array];
    for (k = 0; k != 250; ++k)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test_Bookmarks_#%lu", k];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://www.testfakereadinglist_favorites_bookmark_address.com/bookmarks/id=#%ld", k];
      v21 = objc_alloc(MEMORY[0x277D7B5A0]);
      configuration3 = [mainBookmarkCollection configuration];
      v23 = [v21 initWithTitle:v19 address:v20 collectionType:{objc_msgSend(configuration3, "collectionType")}];

      [favoritesFolder addObject:v23];
    }

    [mainBookmarkCollection saveBookmarks:favoritesFolder postNotification:0];
LABEL_7:
  }
}

- (id)_scrollViewForTestNamed:(id)named
{
  namedCopy = named;
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  bookmarksNavigationController = [_browserControllerForApplicationTesting bookmarksNavigationController];

  if ([namedCopy isEqualToString:@"BookmarksViewBookmarksScroll"])
  {
    topBookmarksTableViewController = [bookmarksNavigationController topBookmarksTableViewController];
LABEL_3:
    catalogViewController = topBookmarksTableViewController;
    tableView = [topBookmarksTableViewController tableView];
LABEL_6:

    goto LABEL_7;
  }

  if ([namedCopy isEqualToString:@"BookmarksViewFavoritesScroll"])
  {
    _browserControllerForApplicationTesting2 = [(Application *)self _browserControllerForApplicationTesting];
    rootViewController = [_browserControllerForApplicationTesting2 rootViewController];
    catalogViewController = [rootViewController catalogViewController];

    startPageViewController = [catalogViewController startPageViewController];
    tableView = [startPageViewController test_scrollView];

    goto LABEL_6;
  }

  if ([namedCopy isEqualToString:@"BookmarksViewReadingListsScroll"])
  {
    topBookmarksTableViewController = [bookmarksNavigationController topReadingListViewController];
    goto LABEL_3;
  }

  tableView = 0;
LABEL_7:

  return tableView;
}

- (void)_switchToBookmarksCollectionForTestNamed:(id)named
{
  namedCopy = named;
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  bookmarksNavigationController = [_browserControllerForApplicationTesting bookmarksNavigationController];

  if ([namedCopy isEqualToString:@"BookmarksViewBookmarksScroll"])
  {
    [bookmarksNavigationController setCurrentCollection:@"BookmarksCollection"];
  }

  else if ([namedCopy isEqualToString:@"BookmarksViewReadingListsScroll"])
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    [bookmarksNavigationController setCurrentCollection:@"ReadingListCollection"];
    [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
  }
}

- (void)runBookmarksViewTest
{
  v3 = [gTestOptions safari_stringForKey:@"testName"];
  [(Application *)self _populateInMemoryBookmarksDBForTestNamed:v3];
  v4 = [gTestOptions safari_stringForKey:@"iterations"];
  intValue = [v4 intValue];

  v6 = [v3 isEqualToString:@"BookmarksViewFavoritesScroll"];
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  v8 = _browserControllerForApplicationTesting;
  if (v6)
  {
    [_browserControllerForApplicationTesting setFavoritesState:4];
  }

  else
  {
    [_browserControllerForApplicationTesting showBookmarksPanelWithNonAnimatedTransitionWithCollection:@"BookmarkCollection"];

    [(Application *)self _switchToBookmarksCollectionForTestNamed:v3];
  }

  if (intValue <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = intValue;
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

- (id)searchParametersWithCFEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (enabledCopy)
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

- (void)startSearchPerformanceDetailedTestWithCF:(BOOL)f
{
  fCopy = f;
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

  [(Application *)self startSearchPerformanceTestWithTestStrings:&unk_2827FC478 perQuery:1 withCF:fCopy];
}

- (void)startSearchPerformanceTestWithTestStrings:(id)strings perQuery:(BOOL)query withCF:(BOOL)f
{
  stringsCopy = strings;
  [(Application *)self startedPurpleTest];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke;
  aBlock[3] = &unk_2781D59D8;
  queryCopy = query;
  aBlock[4] = self;
  v11 = strongToStrongObjectsMapTable;
  v45 = v11;
  v46 = dictionary;
  v12 = _Block_copy(aBlock);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__1;
  v42[4] = __Block_byref_object_dispose__1;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v43 = [defaultCenter addObserverForName:@"completionProviderDidStart" object:0 queue:mainQueue usingBlock:v12];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__1;
  v40[4] = __Block_byref_object_dispose__1;
  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  v41 = [defaultCenter addObserverForName:@"completionProviderDidFinish" object:0 queue:mainQueue2 usingBlock:v12];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__1;
  v38[4] = __Block_byref_object_dispose__1;
  mainQueue3 = [MEMORY[0x277CCABD8] mainQueue];
  v39 = [defaultCenter addObserverForName:@"catalogViewControllerDidStart" object:0 queue:mainQueue3 usingBlock:v12];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__1;
  v36[4] = __Block_byref_object_dispose__1;
  mainQueue4 = [MEMORY[0x277CCABD8] mainQueue];
  v37 = [defaultCenter addObserverForName:@"catalogViewControllerDidFinish" object:0 queue:mainQueue4 usingBlock:v12];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_2;
  block[3] = &unk_2781D5A00;
  v33 = v40;
  v34 = v38;
  v35 = v36;
  v29 = defaultCenter;
  selfCopy = self;
  v31 = dictionary;
  v32 = v42;
  v18 = defaultCenter;
  v19 = MEMORY[0x277D85CD0];
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__Application_ApplicationTesting__startSearchPerformanceTestWithTestStrings_perQuery_withCF___block_invoke_4;
  v23[3] = &unk_2781D5A28;
  queryCopy2 = query;
  fCopy = f;
  v23[4] = self;
  v24 = stringsCopy;
  v25 = v8;
  v20 = v8;
  v21 = stringsCopy;
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

- (void)_doSearchTestOnCVC:(id)c WithTestStrings:(id)strings andDispatchGroup:(id)group
{
  cCopy = c;
  stringsCopy = strings;
  groupCopy = group;
  v10 = dispatch_group_create();
  v11 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__Application_ApplicationTesting___doSearchTestOnCVC_WithTestStrings_andDispatchGroup___block_invoke;
  v16[3] = &unk_2781D5A50;
  v17 = stringsCopy;
  v18 = v10;
  v19 = cCopy;
  v20 = groupCopy;
  v12 = groupCopy;
  v13 = cCopy;
  v14 = v10;
  v15 = stringsCopy;
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

- (BOOL)_resetHistoryWithCompressedDatabaseAtURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v8 = [defaultManager safari_ensureDirectoryExists:safari_settingsDirectoryURL];
  gCurrentTestName = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db", gCurrentTestName];
  v10 = [v8 URLByAppendingPathComponent:gCurrentTestName isDirectory:0];

  safari_settingsDirectoryURL2 = [defaultManager safari_settingsDirectoryURL];
  gCurrentTestName2 = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db-wal", gCurrentTestName];
  v13 = [safari_settingsDirectoryURL2 URLByAppendingPathComponent:gCurrentTestName2 isDirectory:0];

  safari_settingsDirectoryURL3 = [defaultManager safari_settingsDirectoryURL];
  gCurrentTestName3 = [MEMORY[0x277CCACA8] stringWithFormat:@"History-%@.db-shm", gCurrentTestName];
  v16 = [safari_settingsDirectoryURL3 URLByAppendingPathComponent:gCurrentTestName3 isDirectory:0];

  [defaultManager removeItemAtURL:v10 error:0];
  [defaultManager removeItemAtURL:v13 error:0];
  [defaultManager removeItemAtURL:v16 error:0];
  v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:error];
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

  safari_dataByDecompressingData = [v17 safari_dataByDecompressingData];
  v20 = [safari_dataByDecompressingData writeToURL:v10 options:0 error:error];

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

  v38 = lCopy;
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
  if (error && (v25 & 1) == 0)
  {
    *error = *(v51 + 40);
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
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.01];
        [mainRunLoop runMode:v28 beforeDate:v30];
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
    lCopy = v38;
  }

  else
  {
    v34 = 0;
    lCopy = v38;
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
      startHistoryLoadTest = [(Application *)self startHistoryLoadTest];
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

      startHistoryLoadTest = 1;
    }
  }

  else
  {
    v18 = gCurrentTestName;
    v19 = [v16 description];
    [(Application *)self failedTest:v18 withFailure:v19];

    objc_autoreleasePoolPop(v13);
    startHistoryLoadTest = 0;
  }

  return startHistoryLoadTest;
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

- (id)_generateMemoryFootprintResults:(id)results
{
  resultsCopy = results;
  v4 = [objc_alloc(MEMORY[0x277D49A68]) initWithError:0];
  v5 = [gHistoryServiceConnection queryMemoryFootprintWithError:0];
  v6 = [gHistoryPushConnection queryMemoryFootprintWithError:0];
  v63 = resultsCopy;
  if (resultsCopy)
  {
    dictionary = [resultsCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;
  dirtySize = [gInitialSafariMemoryFootprint dirtySize];
  v10 = [gInitialHistoryServiceMemoryFootprint dirtySize] + dirtySize;
  v57 = v10 + [gInitialHistoryPushAgentMemoryFootprint dirtySize];
  dirtySize2 = [v4 dirtySize];
  dirtySize3 = [v5 dirtySize];
  v58 = dirtySize3 + [v6 dirtySize] + dirtySize2;
  residentSize = [gInitialSafariMemoryFootprint residentSize];
  v14 = [gInitialHistoryServiceMemoryFootprint residentSize] + residentSize;
  v59 = v14 + [gInitialHistoryPushAgentMemoryFootprint residentSize];
  residentSize2 = [v4 residentSize];
  residentSize3 = [v5 residentSize];
  v61 = residentSize3 + [v6 residentSize] + residentSize2;
  defaultMallocZone = [gInitialSafariMemoryFootprint defaultMallocZone];
  sizeInUse = [defaultMallocZone sizeInUse];
  [gInitialHistoryServiceMemoryFootprint defaultMallocZone];
  v19 = v5;
  v20 = v56 = v5;
  v21 = v6;
  v22 = [v20 sizeInUse] + sizeInUse;
  defaultMallocZone2 = [gInitialHistoryPushAgentMemoryFootprint defaultMallocZone];
  v62 = v22 + [defaultMallocZone2 sizeInUse];

  v24 = v4;
  defaultMallocZone3 = [v4 defaultMallocZone];
  sizeInUse2 = [defaultMallocZone3 sizeInUse];
  defaultMallocZone4 = [v19 defaultMallocZone];
  sizeInUse3 = [defaultMallocZone4 sizeInUse];
  v29 = v21;
  defaultMallocZone5 = [v21 defaultMallocZone];
  v60 = sizeInUse3 + [defaultMallocZone5 sizeInUse] + sizeInUse2;

  defaultMallocZone6 = [gInitialSafariMemoryFootprint defaultMallocZone];
  sizeAllocated = [defaultMallocZone6 sizeAllocated];
  defaultMallocZone7 = [gInitialHistoryServiceMemoryFootprint defaultMallocZone];
  v34 = [defaultMallocZone7 sizeAllocated] + sizeAllocated;
  defaultMallocZone8 = [gInitialHistoryPushAgentMemoryFootprint defaultMallocZone];
  v36 = v34 + [defaultMallocZone8 sizeAllocated];

  defaultMallocZone9 = [v24 defaultMallocZone];
  sizeAllocated2 = [defaultMallocZone9 sizeAllocated];
  defaultMallocZone10 = [v56 defaultMallocZone];
  sizeAllocated3 = [defaultMallocZone10 sizeAllocated];
  defaultMallocZone11 = [v29 defaultMallocZone];
  v42 = sizeAllocated3 + [defaultMallocZone11 sizeAllocated] + sizeAllocated2;

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

- (BOOL)runMemoryOrIOTestWithType:(unint64_t)type
{
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  tabController = [_browserControllerForApplicationTesting tabController];
  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  if ([(Application *)self overrideBrowserStateForTestNamed:gCurrentTestName browserController:_browserControllerForApplicationTesting])
  {
    [tabController readState];
    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
    [tabThumbnailCollectionView dismissAnimated:0];
  }

  [(Application *)self _preparePageLoadTestControllerParameters];
  [(Application *)self startedTest:gCurrentTestName];
  v9 = [MemoryAndIOTestRunner alloc];
  v10 = [(MemoryAndIOTestRunner *)v9 initWithTestName:gCurrentTestName browserController:_browserControllerForApplicationTesting type:type];
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

- (BOOL)_startResizeTestWithName:(id)name
{
  nameCopy = name;
  _browserControllerForApplicationTesting = [(Application *)self _browserControllerForApplicationTesting];
  webView = [_browserControllerForApplicationTesting webView];
  window = [webView window];

  if (window)
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
    v10 = [[v8 alloc] initWithTestName:nameCopy window:window completionHandler:0];
    [v10 setMinimumWindowSize:{300.0, 300.0}];
    [v10 setMaximumWindowSize:{750.0, 950.0}];
    [getRPTTestRunnerClass() runTestWithParameters:v10];
  }

  else
  {
    [(Application *)self failedTest:nameCopy withFailure:@"No window available"];
  }

  return window != 0;
}

- (void)pageLoadTestRunnerFinished:(id)finished
{
  v3 = gRunner;
  if (gRunner == finished)
  {
    gRunner = 0;

    gRunningPurpleTest = 0;
  }
}

+ (void)postTestNotificationName:(id)name object:(id)object userInfo:(id)info
{
  nameCopy = name;
  objectCopy = object;
  infoCopy = info;
  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:nameCopy object:objectCopy userInfo:infoCopy];
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
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  [gTabSnapshotCacheStressTestRunner setMaxIterations:integerValue];
  [gTabSnapshotCacheStressTestRunner setDelegate:self];
  [(Application *)self startedPurpleTest];
  [gTabSnapshotCacheStressTestRunner start];
}

- (void)tabSnapshotCacheStressTestRunnerDidFinish:(id)finish
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