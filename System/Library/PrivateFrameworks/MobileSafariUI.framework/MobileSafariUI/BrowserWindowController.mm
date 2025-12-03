@interface BrowserWindowController
+ (id)_printWindowToSceneMapping;
- (BrowserWindowController)initWithBrowserSavedState:(id)state perSitePreferencesVendor:(id)vendor browserControllerUIDelegateProvider:(id)provider;
- (BrowserWindowController)initWithTabGroupManager:(id)manager browserState:(id)state pinnedTabsManager:(id)tabsManager perSitePreferencesVendor:(id)vendor shouldMergeAllWindowsIfNeeded:(BOOL)needed browserControllerUIDelegateProvider:(id)provider;
- (BrowserWindowController)initWithTabGroupManager:(id)manager pinnedTabsManager:(id)tabsManager;
- (NSArray)tabsWithSound;
- (_SFPageZoomPreferenceManager)privateBrowsingPageZoomManager;
- (id)_allNormalLocalTabs;
- (id)_browserWindowsToPersist;
- (id)_mergeAndSaveWindowStates:(id)states intoWindowState:(id)state;
- (id)_mergeWindowStates:(id)states intoWindowState:(id)state;
- (id)_newAutomationWindowWithSceneID:(id)d;
- (id)_printWindowToSceneMapping;
- (id)_sceneIDToLocalGroupTabs;
- (id)browserControllerWithUUID:(id)d;
- (id)oldestTabsWithLimit:(unint64_t)limit inPrivateBrowsing:(BOOL)browsing;
- (id)tabDocumentWithUUID:(id)d;
- (id)tabWithUUID:(id)d;
- (id)tabsInPrivateBrowsing:(BOOL)browsing;
- (id)tabsOlderThan:(id)than inPrivateBrowsing:(BOOL)browsing;
- (id)uiDelegateForBrowserController:(id)controller;
- (id)windowForSceneID:(id)d options:(id)options;
- (int64_t)modeForNewWindowUserActivity:(id)activity;
- (unint64_t)numberOfTabsInPrivateBrowsing:(BOOL)browsing;
- (void)_createCloudTabsStore;
- (void)_destroyCloudTabsStore;
- (void)_mergeTabsFromCloudTabsForDeviceRestoration:(id)restoration;
- (void)_mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:(BOOL)syncing;
- (void)_restoreWindowsFromBrowserSavedState:(id)state;
- (void)_restoreWindowsWithState:(id)state shouldMergeAllWindowsIfNeeded:(BOOL)needed;
- (void)_windowDidClose:(id)close;
- (void)closeAllWindowsFromWindow:(id)window;
- (void)cloudTabStore:(id)store didReceiveTabCloseRequest:(id)request;
- (void)cloudTabStore:(id)store didUpdateDevicesFromCloudKitWithError:(id)error;
- (void)cloudTabStoreDidGetCachedDevicesFromCloudKit:(id)kit;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)intent;
- (void)handleNavigationIntent:(id)intent completion:(id)completion;
- (void)mergeAllWindowsIntoWindow:(id)window;
- (void)openNewWindowInProfile:(id)profile withPrivateBrowsingEnabled:(BOOL)enabled fromWindow:(id)window;
- (void)openNewWindowWithPrivateBrowsingEnabled:(BOOL)enabled fromWindow:(id)window;
- (void)removeWindowsNotMatchingSceneIDs:(id)ds supportsMultipleScenes:(BOOL)scenes;
- (void)restoreEducationDeviceCloudTabs:(id)tabs animated:(BOOL)animated;
- (void)restoreEducationDeviceTabs;
- (void)saveBrowserState;
- (void)saveCloudTabs;
- (void)saveCloudTabsUsingCloudTabStore:(id)store;
- (void)setCloudTabsEnabled:(BOOL)enabled;
- (void)setUpAutomationWindowWithCompletionHandler:(id)handler;
- (void)tearDownAutomationWindow;
- (void)updateCloudTabUpdatesEnabled;
- (void)updateCloudTabsForEnteringBackground;
- (void)updateCloudTabsForEnteringForeground;
@end

@implementation BrowserWindowController

- (void)updateCloudTabUpdatesEnabled
{
  v3 = +[FeatureManager sharedFeatureManager];
  isCloudTabsAvailable = [v3 isCloudTabsAvailable];

  if (isCloudTabsAvailable)
  {
    cloudTabStore = self->_cloudTabStore;
    if (!cloudTabStore)
    {
      [(BrowserWindowController *)self _createCloudTabsStore];
      cloudTabStore = self->_cloudTabStore;
    }

    cloudTabsAreEnabled = [(CloudTabStore *)cloudTabStore cloudTabsAreEnabled];
  }

  else
  {
    [(BrowserWindowController *)self _destroyCloudTabsStore];
    cloudTabsAreEnabled = 0;
  }

  [(BrowserWindowController *)self setCloudTabsEnabled:cloudTabsAreEnabled];
}

- (void)_createCloudTabsStore
{
  v3 = +[CloudTabStore sharedCloudTabStore];
  cloudTabStore = self->_cloudTabStore;
  self->_cloudTabStore = v3;

  [(CloudTabStore *)self->_cloudTabStore setDelegate:self];
  v5 = self->_cloudTabStore;

  [(CloudTabStore *)v5 startObservingTabStoreStateChanges];
}

- (void)updateCloudTabsForEnteringForeground
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BrowserWindowController *)v3 updateCloudTabsForEnteringForeground];
  }

  [(CloudTabStore *)self->_cloudTabStore fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:5];
}

- (NSArray)tabsWithSound
{
  array = [MEMORY[0x277CBEB18] array];
  browserControllers = self->_browserControllers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__BrowserWindowController_tabsWithSound__block_invoke;
  v8[3] = &unk_2781D88F0;
  v9 = array;
  v5 = array;
  [(NSArray *)browserControllers enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __40__BrowserWindowController_tabsWithSound__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 tabController];
  v5 = [v4 tabDocumentsForAllTabGroups];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BrowserWindowController_tabsWithSound__block_invoke_2;
  v7[3] = &unk_2781D50F8;
  v8 = *(a1 + 32);
  v6 = [v5 safari_filterObjectsUsingBlock:v7];
  [v3 addObjectsFromArray:v6];
}

uint64_t __40__BrowserWindowController_tabsWithSound__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPlayingAudio])
  {
    v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BrowserWindowController)initWithBrowserSavedState:(id)state perSitePreferencesVendor:(id)vendor browserControllerUIDelegateProvider:(id)provider
{
  stateCopy = state;
  vendorCopy = vendor;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = BrowserWindowController;
  v11 = [(BrowserWindowController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_perSitePreferencesVendor, vendor);
    v13 = [providerCopy copy];
    browserControllerUIDelegateProvider = v12->_browserControllerUIDelegateProvider;
    v12->_browserControllerUIDelegateProvider = v13;

    v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    UIDelegatesByBrowserController = v12->_UIDelegatesByBrowserController;
    v12->_UIDelegatesByBrowserController = v15;

    browserControllers = v12->_browserControllers;
    v12->_browserControllers = MEMORY[0x277CBEBF8];

    [(BrowserWindowController *)v12 _restoreWindowsFromBrowserSavedState:stateCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D7B858];
    v20 = +[FeatureManager sharedFeatureManager];
    [defaultCenter addObserver:v12 selector:sel__cloudTabFeatureAvailabilityDidChange_ name:v19 object:v20];

    [(BrowserWindowController *)v12 updateCloudTabUpdatesEnabled];
    array = [MEMORY[0x277CBEB18] array];
    cloudTabRestorationLogs = v12->_cloudTabRestorationLogs;
    v12->_cloudTabRestorationLogs = array;

    v23 = v12;
  }

  return v12;
}

- (BrowserWindowController)initWithTabGroupManager:(id)manager pinnedTabsManager:(id)tabsManager
{
  tabsManagerCopy = tabsManager;
  managerCopy = manager;
  browserState = [managerCopy browserState];
  v9 = [(BrowserWindowController *)self initWithTabGroupManager:managerCopy browserState:browserState pinnedTabsManager:tabsManagerCopy perSitePreferencesVendor:0 shouldMergeAllWindowsIfNeeded:0 browserControllerUIDelegateProvider:0];

  return v9;
}

- (BrowserWindowController)initWithTabGroupManager:(id)manager browserState:(id)state pinnedTabsManager:(id)tabsManager perSitePreferencesVendor:(id)vendor shouldMergeAllWindowsIfNeeded:(BOOL)needed browserControllerUIDelegateProvider:(id)provider
{
  neededCopy = needed;
  managerCopy = manager;
  stateCopy = state;
  tabsManagerCopy = tabsManager;
  vendorCopy = vendor;
  providerCopy = provider;
  v36.receiver = self;
  v36.super_class = BrowserWindowController;
  v19 = [(BrowserWindowController *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tabGroupManager, manager);
    objc_storeStrong(&v20->_perSitePreferencesVendor, vendor);
    v21 = [providerCopy copy];
    browserControllerUIDelegateProvider = v20->_browserControllerUIDelegateProvider;
    v20->_browserControllerUIDelegateProvider = v21;

    v23 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    UIDelegatesByBrowserController = v20->_UIDelegatesByBrowserController;
    v20->_UIDelegatesByBrowserController = v23;

    objc_storeStrong(&v20->_pinnedTabsManager, tabsManager);
    windowStates = [stateCopy windowStates];
    v26 = [windowStates safari_mapObjectsUsingBlock:&__block_literal_global_31];

    settings = [MEMORY[0x277D28F08] settings];
    [settings validateWindowSettingsWithUUIDs:v26];

    [(BrowserWindowController *)v20 _restoreWindowsWithState:stateCopy shouldMergeAllWindowsIfNeeded:neededCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = *MEMORY[0x277D7B858];
    v30 = +[FeatureManager sharedFeatureManager];
    [defaultCenter addObserver:v20 selector:sel__cloudTabFeatureAvailabilityDidChange_ name:v29 object:v30];

    [(BrowserWindowController *)v20 updateCloudTabUpdatesEnabled];
    array = [MEMORY[0x277CBEB18] array];
    cloudTabRestorationLogs = v20->_cloudTabRestorationLogs;
    v20->_cloudTabRestorationLogs = array;

    v33 = v20;
  }

  return v20;
}

id __173__BrowserWindowController_initWithTabGroupManager_browserState_pinnedTabsManager_perSitePreferencesVendor_shouldMergeAllWindowsIfNeeded_browserControllerUIDelegateProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

- (void)dealloc
{
  [(BrowserWindowController *)self _destroyCloudTabsStore];
  v3.receiver = self;
  v3.super_class = BrowserWindowController;
  [(BrowserWindowController *)&v3 dealloc];
}

- (id)uiDelegateForBrowserController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NSMapTable *)self->_UIDelegatesByBrowserController objectForKey:controllerCopy];
  if (!v5)
  {
    browserControllerUIDelegateProvider = self->_browserControllerUIDelegateProvider;
    if (browserControllerUIDelegateProvider)
    {
      v5 = browserControllerUIDelegateProvider[2](browserControllerUIDelegateProvider, controllerCopy);
      if (v5)
      {
        [(NSMapTable *)self->_UIDelegatesByBrowserController setObject:v5 forKey:controllerCopy];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tabsInPrivateBrowsing:(BOOL)browsing
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_browserControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        tabController = [*(*(&v16 + 1) + 8 * i) tabController];
        v12 = tabController;
        if (browsing)
        {
          [tabController privateUnpinnedTabs];
        }

        else
        {
          [tabController normalUnpinnedTabs];
        }
        v13 = ;
        [array addObjectsFromArray:v13];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [array copy];

  return v14;
}

- (unint64_t)numberOfTabsInPrivateBrowsing:(BOOL)browsing
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_browserControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        tabController = [*(*(&v14 + 1) + 8 * i) tabController];
        v11 = tabController;
        if (browsing)
        {
          [tabController privateUnpinnedTabs];
        }

        else
        {
          [tabController normalUnpinnedTabs];
        }
        v12 = ;
        v7 += [v12 count];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tabsOlderThan:(id)than inPrivateBrowsing:(BOOL)browsing
{
  v41 = *MEMORY[0x277D85DE8];
  thanCopy = than;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v28 = thanCopy;
  v8 = [currentCalendar dateByAddingComponents:thanCopy toDate:date options:0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_browserControllers;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        tabController = [*(*(&v35 + 1) + 8 * i) tabController];
        v17 = tabController;
        if (browsing)
        {
          [tabController privateUnpinnedTabs];
        }

        else
        {
          [tabController normalUnpinnedTabs];
        }
        v18 = ;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * j);
              [v24 lastActivationTime];
              if (v25 <= v10)
              {
                [array addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v21);
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v26 = [array copy];

  return v26;
}

- (id)oldestTabsWithLimit:(unint64_t)limit inPrivateBrowsing:(BOOL)browsing
{
  v5 = [(BrowserWindowController *)self tabsInPrivateBrowsing:browsing];
  v6 = [v5 mutableCopy];

  [v6 sortUsingComparator:&__block_literal_global_14];
  if ([v6 count] <= limit)
  {
    limit = [v6 count];
  }

  v7 = [v6 subarrayWithRange:{0, limit}];

  return v7;
}

uint64_t __65__BrowserWindowController_oldestTabsWithLimit_inPrivateBrowsing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  [a2 lastActivationTime];
  v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = MEMORY[0x277CBEAA8];
  [v5 lastActivationTime];
  v9 = v8;

  v10 = [v7 dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)browserControllerWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_browserControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)tabDocumentWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_browserControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v11 = [tabController tabDocumentWithUUID:dCopy];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)tabWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_browserControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v11 = [tabController tabWithUUID:dCopy];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (_SFPageZoomPreferenceManager)privateBrowsingPageZoomManager
{
  privateBrowsingPageZoomManager = self->_privateBrowsingPageZoomManager;
  if (!privateBrowsingPageZoomManager)
  {
    v4 = [objc_alloc(MEMORY[0x277D49FF0]) initWithDatabaseURL:0];
    mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
    [v4 setSyncProxy:mEMORY[0x277D49B18]];

    v6 = [objc_alloc(MEMORY[0x277CDB840]) initWithPerSitePreferencesStore:v4];
    v7 = self->_privateBrowsingPageZoomManager;
    self->_privateBrowsingPageZoomManager = v6;

    perSitePreferencesVendor = [(BrowserWindowController *)self perSitePreferencesVendor];
    pageZoomPreferenceManager = [perSitePreferencesVendor pageZoomPreferenceManager];
    [(_SFPageZoomPreferenceManager *)self->_privateBrowsingPageZoomManager setFallbackPreferenceManager:pageZoomPreferenceManager];

    privateBrowsingPageZoomManager = self->_privateBrowsingPageZoomManager;
  }

  return privateBrowsingPageZoomManager;
}

- (id)_allNormalLocalTabs
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_browserControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        tabController = [*(*(&v15 + 1) + 8 * i) tabController];
        activeTabGroup = [tabController activeTabGroup];
        isSyncable = [activeTabGroup isSyncable];

        if ((isSyncable & 1) == 0)
        {
          normalTabs = [tabController normalTabs];
          [array addObjectsFromArray:normalTabs];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [array copy];

  return v13;
}

- (id)_sceneIDToLocalGroupTabs
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_browserControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        tabController = [v9 tabController];
        activeTabGroup = [tabController activeTabGroup];
        isLocal = [activeTabGroup isLocal];

        if ((isLocal & 1) == 0)
        {
          windowStateData = [v9 windowStateData];
          sceneID = [windowStateData sceneID];

          if (sceneID)
          {
            windowState = [v9 windowState];
            localTabGroup = [windowState localTabGroup];
            tabs = [localTabGroup tabs];

            if ([tabs count])
            {
              [dictionary setObject:tabs forKeyedSubscript:sceneID];
            }
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)setCloudTabsEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_cloudTabsEnabled != enabled)
  {
    self->_cloudTabsEnabled = enabled;
    if (!enabled)
    {
      [(CloudTabStore *)self->_cloudTabStore clearTabsForCurrentDevice];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_browserControllers;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) cloudTabsEnabledDidChange];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_destroyCloudTabsStore
{
  [(CloudTabStore *)self->_cloudTabStore stopObservingTabStoreStateChanges];
  [(CloudTabStore *)self->_cloudTabStore setDelegate:0];
  cloudTabStore = self->_cloudTabStore;
  self->_cloudTabStore = 0;
}

- (void)saveCloudTabs
{
  cloudTabStore = self->_cloudTabStore;
  _allNormalLocalTabs = [(BrowserWindowController *)self _allNormalLocalTabs];
  _sceneIDToLocalGroupTabs = [(BrowserWindowController *)self _sceneIDToLocalGroupTabs];
  [(CloudTabStore *)cloudTabStore saveCurrentDeviceTabs:_allNormalLocalTabs sceneIDToLocalGroupTabs:_sceneIDToLocalGroupTabs];
}

- (void)updateCloudTabsForEnteringBackground
{
  v27 = *MEMORY[0x277D85DE8];
  [(WBSCloudTabStore *)self->_cloudTabStore pruneExpiredDevicesFromCloudKit];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:6];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = *MEMORY[0x277D767B0];
  v4 = *MEMORY[0x277D76620];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__BrowserWindowController_updateCloudTabsForEnteringBackground__block_invoke;
  v21[3] = &unk_2781D4BD8;
  v21[4] = &v22;
  v5 = [v4 beginBackgroundTaskWithName:@"com.apple.mobilesafari.SynchronizeCloudTabs" expirationHandler:v21];
  v23[3] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__BrowserWindowController_updateCloudTabsForEnteringBackground__block_invoke_23;
  aBlock[3] = &unk_2781D4BD8;
  aBlock[4] = &v22;
  v6 = _Block_copy(aBlock);
  canSaveCloudTabsForCurrentDevice = [(CloudTabStore *)self->_cloudTabStore canSaveCloudTabsForCurrentDevice];
  cloudTabStore = self->_cloudTabStore;
  if (canSaveCloudTabsForCurrentDevice)
  {
    _allNormalLocalTabs = [(BrowserWindowController *)self _allNormalLocalTabs];
    _sceneIDToLocalGroupTabs = [(BrowserWindowController *)self _sceneIDToLocalGroupTabs];
    [(CloudTabStore *)cloudTabStore saveCurrentDeviceTabsForEnteringBackground:_allNormalLocalTabs sceneIDToLocalGroupTabs:_sceneIDToLocalGroupTabs completion:v6];
  }

  else
  {
    [(CloudTabStore *)self->_cloudTabStore saveCurrentDeviceCloudTabsForEnteringBackground:0 completion:v6];
  }

  if (+[(WBUFeatureManager *)FeatureManager]== 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_browserControllers;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          tabController = [*(*(&v16 + 1) + 8 * v14) tabController];
          [tabController updateEducationTabsLastSyncDate];

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t __63__BrowserWindowController_updateCloudTabsForEnteringBackground__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__BrowserWindowController_updateCloudTabsForEnteringBackground__block_invoke_cold_1(v2);
  }

  return [*MEMORY[0x277D76620] endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

- (void)restoreEducationDeviceTabs
{
  firstObject = [(NSArray *)self->_browserControllers firstObject];
  tabController = [firstObject tabController];
  [tabController restoreEducationDeviceTabs];
}

- (void)restoreEducationDeviceCloudTabs:(id)tabs animated:(BOOL)animated
{
  animatedCopy = animated;
  v34 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  selfCopy = self;
  firstObject = [(NSArray *)self->_browserControllers firstObject];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = tabsCopy;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        uuid = [v7 uuid];
        if (!uuid)
        {
          uuid = [MEMORY[0x277CCAD78] UUID];
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        title = selfCopy->_browserControllers;
        v10 = [(NSArray *)title countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
LABEL_10:
          v13 = 0;
          while (1)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(title);
            }

            tabController = [*(*(&v24 + 1) + 8 * v13) tabController];
            v15 = [v7 url];
            v16 = [tabController tabForURL:v15];

            if (v16)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [(NSArray *)title countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v11)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:

          v16 = [v7 url];
          title = [v7 title];
          v17 = [firstObject loadURLInNewTab:v16 title:title UUID:uuid inBackground:1 animated:animatedCopy restoringCloudTab:1];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }
}

- (void)_mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:(BOOL)syncing
{
  v80 = *MEMORY[0x277D85DE8];
  if (self->_consideredMergingCloudTabsForDeviceRestoration)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Already considered merging CloudTabs for device restoration", buf, 2u);
    }
  }

  else
  {
    syncingCopy = syncing;
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v63 = *MEMORY[0x277D291D0];
    v5 = [safari_browserDefaults objectForKey:?];
    if (v5)
    {
      currentDeviceUUID = [(CloudTabStore *)self->_cloudTabStore currentDeviceUUID];
      uUIDString = [currentDeviceUUID UUIDString];

      if ([v5 isEqualToString:uUIDString])
      {
        self->_consideredMergingCloudTabsForDeviceRestoration = 1;
        v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = uUIDString;
          _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Not attempting to merge CloudTabs because restoration is not necessary (saved UUID: %{public}@, current UUID: %{public}@)", buf, 0x16u);
        }
      }

      else
      {
        self->_consideredMergingCloudTabsForDeviceRestoration = syncingCopy;
        if (syncingCopy)
        {
          v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = uUIDString;
            _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Finished syncing for CloudTabs restoration (saved UUID: %{public}@, current UUID: %{public}@)", buf, 0x16u);
          }

          cloudTabRestorationLogs = self->_cloudTabRestorationLogs;
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished syncing for CloudTabs restoration (saved UUID: %@, current UUID: %@)", v5, uUIDString];
          [(NSMutableArray *)cloudTabRestorationLogs addObject:v11];

          [safari_browserDefaults setObject:uUIDString forKey:v63];
          [safari_browserDefaults setObject:v5 forKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
          [safari_browserDefaults setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
        }

        allSyncedCloudTabDevices = [(CloudTabStore *)self->_cloudTabStore allSyncedCloudTabDevices];
        v12 = [allSyncedCloudTabDevices count] == 0;
        v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            *buf = 138543362;
            *&buf[4] = v5;
            _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "No tab was found for merging from a CloudTabs device with UUID %{public}@", buf, 0xCu);
          }

          v58 = self->_cloudTabRestorationLogs;
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"No tab was found for merging from a CloudTabs device with UUID %@", v5];
          [(NSMutableArray *)v58 addObject:v59];

          [safari_browserDefaults setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
        }

        else
        {
          if (v14)
          {
            *buf = 138543618;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = uUIDString;
            _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to find device with UUID: %{public}@ to restore from. Current CloudTab device UUID is: %{public}@", buf, 0x16u);
          }

          v15 = self->_cloudTabRestorationLogs;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempting to find device with UUID: %@ to restore from. Current CloudTab device UUID is: %@", v5, uUIDString];
          [(NSMutableArray *)v15 addObject:v16];

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = allSyncedCloudTabDevices;
          v17 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
          if (v17)
          {
            v18 = *v74;
LABEL_19:
            v19 = 0;
            while (1)
            {
              if (*v74 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v73 + 1) + 8 * v19);
              v21 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                uuid = [v20 uuid];
                *buf = 138543362;
                *&buf[4] = uuid;
                _os_log_impl(&dword_215819000, v22, OS_LOG_TYPE_DEFAULT, "Found CloudTabs device with UUID %{public}@", buf, 0xCu);
              }

              v24 = self->_cloudTabRestorationLogs;
              v25 = MEMORY[0x277CCACA8];
              uuid2 = [v20 uuid];
              v27 = [v25 stringWithFormat:@"Found CloudTabs device with UUID %@", uuid2];
              [(NSMutableArray *)v24 addObject:v27];

              uuid3 = [v20 uuid];
              LOBYTE(uuid2) = [uuid3 isEqualToString:v5];

              if (uuid2)
              {
                break;
              }

              if (v17 == ++v19)
              {
                v17 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
                if (v17)
                {
                  goto LABEL_19;
                }

                goto LABEL_27;
              }
            }

            safari_browserDefaults3 = v20;

            if (!safari_browserDefaults3)
            {
              goto LABEL_37;
            }

            tabs = [safari_browserDefaults3 tabs];
            v31 = [tabs count] == 0;
            v32 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
            v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              if (v33)
              {
                *buf = 0;
                _os_log_impl(&dword_215819000, v32, OS_LOG_TYPE_DEFAULT, "No tabs found from CloudTabs for device restoration", buf, 2u);
              }

              v60 = self->_cloudTabRestorationLogs;
              v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"No tabs found from CloudTabs for device restoration"];
              [(NSMutableArray *)v60 addObject:v61];

              [safari_browserDefaults setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
            }

            else
            {
              if (v33)
              {
                v34 = v32;
                v35 = [tabs count];
                *buf = 134217984;
                *&buf[4] = v35;
                _os_log_impl(&dword_215819000, v34, OS_LOG_TYPE_DEFAULT, "Found %zu tabs in CloudTabs device for restoration", buf, 0xCu);
              }

              v36 = self->_cloudTabRestorationLogs;
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found %zu tabs in CloudTabs device for restoration", objc_msgSend(tabs, "count")];
              [(NSMutableArray *)v36 addObject:v37];

              safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
              lastModified = [safari_browserDefaults3 lastModified];
              [lastModified timeIntervalSinceReferenceDate];
              [safari_browserDefaults2 setDouble:@"lastModifiedTimeOfCloudTabDeviceUsedForRestoration" forKey:?];

              if (!syncingCopy)
              {
                v40 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_215819000, v40, OS_LOG_TYPE_DEFAULT, "Found cached CloudTabs device to restore", buf, 2u);
                }

                v41 = self->_cloudTabRestorationLogs;
                v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found cached CloudTabs device to restore"];
                [(NSMutableArray *)v41 addObject:v42];

                self->_consideredMergingCloudTabsForDeviceRestoration = 1;
                [safari_browserDefaults setObject:uUIDString forKey:v63];
                uuid4 = [safari_browserDefaults3 uuid];
                [safari_browserDefaults setObject:uuid4 forKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v78 = 0;
              v44 = *MEMORY[0x277D76620];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke;
              v72[3] = &unk_2781D5B08;
              v72[4] = self;
              v72[5] = buf;
              v45 = [v44 beginBackgroundTaskWithName:@"com.apple.mobilesafari.CloudTabRestorationBackgroundTask" expirationHandler:v72];
              *(*&buf[8] + 24) = v45;
              mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
              v68[0] = MEMORY[0x277D85DD0];
              v68[1] = 3221225472;
              v68[2] = __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke_59;
              v68[3] = &unk_2781D8878;
              v68[4] = self;
              v69 = safari_browserDefaults;
              v71 = buf;
              tabs = tabs;
              v70 = tabs;
              [mEMORY[0x277D49B18] getCloudTabContainerManateeStateWithCompletionHandler:v68];

              _Block_object_dispose(buf, 8);
            }
          }

          else
          {
LABEL_27:

LABEL_37:
            safari_browserDefaults3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
            v47 = [safari_browserDefaults3 integerForKey:*MEMORY[0x277D291E0]];
            v48 = [safari_browserDefaults3 safari_dateForKey:*MEMORY[0x277D291D8]];
            tabs = [v48 description];

            v49 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v47;
              *&buf[22] = 2114;
              v78 = tabs;
              _os_log_impl(&dword_215819000, v49, OS_LOG_TYPE_DEFAULT, "No cloud tab device found for tab restoration. Expected device %{public}@ to have %zu tabs as of %{public}@.", buf, 0x20u);
            }

            v50 = self->_cloudTabRestorationLogs;
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"No cloud tab device found for tab restoration. Expected device %@ to have %zu tabs as of %@.", v5, v47, tabs];
            [(NSMutableArray *)v50 addObject:v51];

            if (syncingCopy)
            {
              v52 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = v52;
                v54 = [obj count];
                totalSyncedCloudTabDeviceCount = [(WBSCloudTabStore *)self->_cloudTabStore totalSyncedCloudTabDeviceCount];
                *buf = 134218240;
                *&buf[4] = v54;
                *&buf[12] = 2048;
                *&buf[14] = totalSyncedCloudTabDeviceCount;
                _os_log_impl(&dword_215819000, v53, OS_LOG_TYPE_DEFAULT, "Did not find device after syncing finished; device count: %zu; unfiltered device count: %zu", buf, 0x16u);
              }

              v56 = self->_cloudTabRestorationLogs;
              v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did not find device after syncing finished device count: %zu; unfiltered device count: %zu", objc_msgSend(obj, "count"), -[WBSCloudTabStore totalSyncedCloudTabDeviceCount](self->_cloudTabStore, "totalSyncedCloudTabDeviceCount")];;
              [(NSMutableArray *)v56 addObject:v57];
            }

            [safari_browserDefaults setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
          }
        }
      }
    }

    else
    {
      self->_consideredMergingCloudTabsForDeviceRestoration = 1;
      v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Not attempting to merge tabs from CloudTabs device because no device identifier was found for restoration", buf, 2u);
      }
    }
  }
}

void __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "Background task expired for restoring CloudTabs", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 64);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Background task expired for restoring CloudTabs"];
  [v3 addObject:v4];

  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    [*MEMORY[0x277D76620] endBackgroundTask:?];
  }
}

void __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke_59(uint64_t a1, char a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke_63;
    block[3] = &unk_2781D5870;
    block[4] = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v9 = v3;
    v10 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Not restoring tabs from CloudTabs for browser state because the container does not use Manatee", buf, 2u);
    }

    v6 = *(*(a1 + 32) + 64);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not restoring tabs from CloudTabs for browser state because the container does not use Manatee"];
    [v6 addObject:v7];

    [*(a1 + 40) setObject:*(*(a1 + 32) + 64) forKey:*MEMORY[0x277D291C8]];
    if (*(*(*(a1 + 56) + 8) + 24) != *MEMORY[0x277D767B0])
    {
      [*MEMORY[0x277D76620] endBackgroundTask:?];
    }
  }
}

uint64_t __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke_63(uint64_t a1)
{
  result = [*(a1 + 32) _mergeTabsFromCloudTabsForDeviceRestoration:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    v3 = *MEMORY[0x277D76620];

    return [v3 endBackgroundTask:?];
  }

  return result;
}

- (void)_mergeTabsFromCloudTabsForDeviceRestoration:(id)restoration
{
  v81 = *MEMORY[0x277D85DE8];
  restorationCopy = restoration;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v80 = [restorationCopy count];
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Merging %ld tabs from CloudTabs for device restoration", buf, 0xCu);
  }

  cloudTabRestorationLogs = self->_cloudTabRestorationLogs;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Merging %ld tabs from CloudTabs for device restoration", objc_msgSend(restorationCopy, "count")];
  [(NSMutableArray *)cloudTabRestorationLogs addObject:v7];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = restorationCopy;
  v8 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v72;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v72 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v71 + 1) + 8 * i);
        sceneID = [v12 sceneID];
        if (!sceneID)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "CloudTab does not have a sceneID. Categorize it under tabs without a scene id", buf, 2u);
          }

          v15 = self->_cloudTabRestorationLogs;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudTab does not have a sceneID. Categorize it under tabs without a scene id"];
          [(NSMutableArray *)v15 addObject:v16];

          sceneID = @"SAFARI_NO_SCENE_ID";
        }

        array = [dictionary objectForKeyedSubscript:sceneID];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKeyedSubscript:sceneID];
        }

        [array addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v9);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v19 = self->_browserControllers;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v68;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v67 + 1) + 8 * j);
        windowStateData = [v24 windowStateData];
        sceneID2 = [windowStateData sceneID];

        if (sceneID2)
        {
          [dictionary2 setObject:v24 forKeyedSubscript:sceneID2];
        }
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v21);
  }

  v48 = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v50 = self->_browserControllers;
  v27 = [(NSArray *)v50 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v64;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v64 != v29)
        {
          objc_enumerationMutation(v50);
        }

        v31 = *(*(&v63 + 1) + 8 * k);
        uUID = [v31 UUID];
        uUIDString = [uUID UUIDString];

        if (uUIDString)
        {
          windowState = [v31 windowState];
          localTabGroup = [windowState localTabGroup];
          tabs = [localTabGroup tabs];

          v37 = [MEMORY[0x277CBEB58] set];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v38 = tabs;
          v39 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v60;
            do
            {
              for (m = 0; m != v40; ++m)
              {
                if (*v60 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = [*(*(&v59 + 1) + 8 * m) url];
                if (v43)
                {
                  [v37 addObject:v43];
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
            }

            while (v40);
          }

          [dictionary3 setObject:v37 forKeyedSubscript:uUIDString];
        }
      }

      v28 = [(NSArray *)v50 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v28);
  }

  firstObject = [(NSArray *)self->_browserControllers firstObject];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __71__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestoration___block_invoke;
  v54[3] = &unk_2781D88C8;
  v55 = v48;
  selfCopy = self;
  v57 = firstObject;
  v58 = dictionary3;
  v45 = dictionary3;
  v46 = firstObject;
  v47 = v48;
  [dictionary enumerateKeysAndObjectsUsingBlock:v54];
}

void __71__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestoration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v5;
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Did not find browser controller for scene ID %{public}@, falling back to the first one", buf, 0xCu);
    }

    v10 = *(*(a1 + 40) + 64);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did not find browser controller for scene ID %@, falling back to the first one", v5];
    [v10 addObject:v11];

    v8 = *(a1 + 48);
  }

  v12 = [v8 UUID];
  v13 = [v12 UUIDString];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __71__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestoration___block_invoke_78;
  v24 = &unk_2781D88A0;
  v25 = *(a1 + 40);
  v14 = v13;
  v26 = v14;
  v27 = *(a1 + 56);
  v15 = [v7 safari_filterObjectsUsingBlock:&v21];
  v16 = *(*(a1 + 40) + 64);
  v17 = MEMORY[0x277CCACA8];
  v18 = [v7 count];

  v19 = [v17 stringWithFormat:@"Loading %zu CloudTabs for device restoration", v18, v21, v22, v23, v24, v25];
  [v16 addObject:v19];

  v20 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v20 setObject:*(*(a1 + 40) + 64) forKey:*MEMORY[0x277D291C8]];

  if ([v15 count])
  {
    [v8 loadCloudTabsForDeviceRestoration:v15];
  }
}

uint64_t __71__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestoration___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = [a2 url];
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 48) objectForKeyedSubscript:?];
      v5 = [v4 containsObject:v3] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "CloudTab to restore has no URL", v10, 2u);
    }

    v7 = *(*(a1 + 32) + 64);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudTab to restore has no URL"];
    [v7 addObject:v8];

    v5 = 0;
  }

  return v5;
}

- (void)cloudTabStore:(id)store didReceiveTabCloseRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = [requestCopy url];
  tabUUID = [requestCopy tabUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_browserControllers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        tabController = [*(*(&v14 + 1) + 8 * v12) tabController];
        [tabController closeTabWithURL:v6 UUID:tabUUID];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)cloudTabStore:(id)store didUpdateDevicesFromCloudKitWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (v7)
    {
      v8 = v6;
      safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
      v10 = 138543362;
      v11 = safari_privacyPreservingDescription;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "Did update devices from CloudKit syncing with error: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Did update devices from CloudKit syncing", &v10, 2u);
    }

    [(BrowserWindowController *)self _mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:1];
  }
}

- (void)cloudTabStoreDidGetCachedDevicesFromCloudKit:(id)kit
{
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Did get cached CloudTab devices", v5, 2u);
  }

  [(BrowserWindowController *)self _mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:0];
}

- (void)saveCloudTabsUsingCloudTabStore:(id)store
{
  if ([(CloudTabStore *)self->_cloudTabStore canSaveCloudTabsForCurrentDevice])
  {

    [(BrowserWindowController *)self saveCloudTabs];
  }
}

- (void)openNewWindowWithPrivateBrowsingEnabled:(BOOL)enabled fromWindow:(id)window
{
  enabledCopy = enabled;
  v5 = MEMORY[0x277CC1EF0];
  windowCopy = window;
  v10 = [v5 _sf_windowCreationActivityWithMode:enabledCopy];
  v7 = objc_alloc_init(MEMORY[0x277D75950]);
  scene = [windowCopy scene];

  [v7 setRequestingScene:scene];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] requestSceneSessionActivation:0 userActivity:v10 options:v7 errorHandler:0];
}

- (void)openNewWindowInProfile:(id)profile withPrivateBrowsingEnabled:(BOOL)enabled fromWindow:(id)window
{
  v7 = MEMORY[0x277CC1EF0];
  enabledCopy = enabled;
  windowCopy = window;
  profileCopy = profile;
  v16 = [v7 _sf_windowCreationActivityWithMode:enabledCopy];
  v11 = objc_alloc_init(MEMORY[0x277D75950]);
  scene = [windowCopy scene];

  [v11 setRequestingScene:scene];
  identifier = [profileCopy identifier];

  frontmostProfileIdentifier = self->_frontmostProfileIdentifier;
  self->_frontmostProfileIdentifier = identifier;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] requestSceneSessionActivation:0 userActivity:v16 options:v11 errorHandler:0];
}

- (int64_t)modeForNewWindowUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (activityCopy)
  {
    _sf_windowCreationMode = [activityCopy _sf_windowCreationMode];
    v7 = _sf_windowCreationMode;
    if (_sf_windowCreationMode)
    {
      integerValue = [_sf_windowCreationMode integerValue];
    }

    else
    {
      _sf_windowCreationNavigationIntent = [v5 _sf_windowCreationNavigationIntent];
      sourceWindowUUID = [_sf_windowCreationNavigationIntent sourceWindowUUID];
      v11 = [(BrowserWindowController *)self browserControllerWithUUID:sourceWindowUUID];

      integerValue = [v11 isPrivateBrowsingEnabled];
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)_newAutomationWindowWithSceneID:(id)d
{
  v4 = MEMORY[0x277D7B598];
  dCopy = d;
  v6 = [v4 alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 initWithUUID:uUIDString sceneID:dCopy];

  ephemeralTabGroupManager = [MEMORY[0x277D7B580] ephemeralTabGroupManager];
  [ephemeralTabGroupManager saveWindowState:v9 completionHandler:0];
  v11 = [[BrowserController alloc] initWithWindowState:v9 browserWindowController:self tabGroupManager:ephemeralTabGroupManager controlledByAutomation:1];
  v12 = [(NSArray *)self->_browserControllers arrayByAddingObject:v11];
  browserControllers = self->_browserControllers;
  self->_browserControllers = v12;

  v14 = _Block_copy(self->_automationWindowInitializedCompletionHandler);
  automationWindowInitializedCompletionHandler = self->_automationWindowInitializedCompletionHandler;
  self->_automationWindowInitializedCompletionHandler = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BrowserWindowController__newAutomationWindowWithSceneID___block_invoke;
  block[3] = &unk_2781D4D90;
  v19 = v14;
  v16 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return v11;
}

- (id)windowForSceneID:(id)d options:(id)options
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityFromSceneConnectionOptions:options];
  if ([(BrowserWindowController *)self modeForNewWindowUserActivity:v7]== 2)
  {
    v8 = [(BrowserWindowController *)self _newAutomationWindowWithSceneID:dCopy];
    goto LABEL_14;
  }

  browserControllers = self->_browserControllers;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__BrowserWindowController_windowForSceneID_options___block_invoke;
  v28[3] = &unk_2781D4E70;
  v10 = dCopy;
  v29 = v10;
  v11 = [(NSArray *)browserControllers safari_firstObjectPassingTest:v28];
  if (!v11)
  {
    v8 = [(NSArray *)self->_browserControllers safari_firstObjectPassingTest:&__block_literal_global_98_0];
    windowState = [(BrowserController *)v8 windowState];
    uuid = [windowState uuid];
    sceneID = [windowState sceneID];
    [(BrowserController *)v8 adoptSceneID:v10];
    v18 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = uuid;
      v32 = 2114;
      v33 = sceneID;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Adopting window during matching: uuid = %{public}@, sceneID = %{public}@ -> %{public}@", buf, 0x20u);
    }

    if (v8)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x277D7B598]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uUID2 = [v19 initWithUUID:uUIDString sceneID:v10];

    [uUID2 setNewlyCreated:1];
    [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:uUID2 completionHandler:0];
    v8 = [[BrowserController alloc] initWithWindowState:uUID2 browserWindowController:self tabGroupManager:self->_tabGroupManager];
    v22 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      uuid2 = [uUID2 uuid];
      *buf = 138543618;
      v31 = uuid2;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_215819000, v23, OS_LOG_TYPE_DEFAULT, "Creating new window: uuid = %{public}@, sceneID = %{public}@", buf, 0x16u);
    }

    v25 = [(NSArray *)self->_browserControllers arrayByAddingObject:v8];
    v26 = self->_browserControllers;
    self->_browserControllers = v25;

    goto LABEL_12;
  }

  v8 = v11;
  v12 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    uUID2 = [(BrowserController *)v8 UUID];
    *buf = 138543618;
    v31 = uUID2;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Found existing window by sceneID: uuid = %{public}@, sceneID = %{public}@", buf, 0x16u);

LABEL_12:
  }

LABEL_13:

LABEL_14:

  return v8;
}

uint64_t __52__BrowserWindowController_windowForSceneID_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 windowState];
  v3 = [v2 sceneID];
  v4 = WBSIsEqual();

  return v4;
}

BOOL __52__BrowserWindowController_windowForSceneID_options___block_invoke_96(uint64_t a1, void *a2)
{
  v2 = [a2 windowState];
  v3 = [v2 sceneID];
  v4 = v3 == 0;

  return v4;
}

- (void)_windowDidClose:(id)close
{
  v25[1] = *MEMORY[0x277D85DE8];
  closeCopy = close;
  windowState = [closeCopy windowState];
  tabController = [closeCopy tabController];
  [tabController setActiveTabGroupUUID:0];

  tabController2 = [closeCopy tabController];
  [tabController2 closeAllOpenTabsAnimated:0];

  tabGroupManager = [closeCopy tabGroupManager];
  v25[0] = windowState;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [tabGroupManager deleteWindowStates:v9 completionHandler:0];

  settings = [MEMORY[0x277D28F08] settings];
  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [windowState uuid];
  v13 = [v11 initWithUUIDString:uuid];
  [settings removeWindowWithUUID:v13];

  v14 = [(NSArray *)self->_browserControllers mutableCopy];
  [v14 removeObject:closeCopy];
  v15 = [v14 copy];

  browserControllers = self->_browserControllers;
  self->_browserControllers = v15;

  [closeCopy didCloseBrowserWindow];
  [(NSMapTable *)self->_UIDelegatesByBrowserController removeObjectForKey:closeCopy];

  v17 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    uuid2 = [windowState uuid];
    sceneID = [windowState sceneID];
    v21 = 138543618;
    v22 = uuid2;
    v23 = 2114;
    v24 = sceneID;
    _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Closed window: uuid = %{public}@, sceneID = %{public}@", &v21, 0x16u);
  }
}

- (void)removeWindowsNotMatchingSceneIDs:(id)ds supportsMultipleScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  v34 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  browserControllers = self->_browserControllers;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__BrowserWindowController_removeWindowsNotMatchingSceneIDs_supportsMultipleScenes___block_invoke;
  v25[3] = &unk_2781D4E70;
  v8 = dsCopy;
  v26 = v8;
  v9 = [(NSArray *)browserControllers safari_filterObjectsUsingBlock:v25];
  if (-[NSArray count](self->_browserControllers, "count") == 1 && [v9 count] == 1 && (!scenesCopy || objc_msgSend(v8, "count") <= 1))
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    anyObject = [v8 anyObject];
    [v10 adoptSceneID:anyObject];
    windowState = [v10 windowState];
    v13 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      uuid = [windowState uuid];
      sceneID = [windowState sceneID];
      *buf = 138543874;
      v29 = uuid;
      v30 = 2114;
      v31 = sceneID;
      v32 = 2114;
      v33 = anyObject;
      _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Adopting window during pruning: uuid = %{public}@, sceneID = %{public}@ -> %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v17 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v10);
          }

          [(BrowserWindowController *)self _windowDidClose:*(*(&v21 + 1) + 8 * v20++), v21];
        }

        while (v18 != v20);
        v18 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v18);
    }
  }
}

uint64_t __83__BrowserWindowController_removeWindowsNotMatchingSceneIDs_supportsMultipleScenes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 windowState];
  v4 = [v3 sceneID];

  if (v4)
  {
    v5 = [*(a1 + 32) containsObject:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mergeAllWindowsIntoWindow:(id)window
{
  v21 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v5 = [(NSArray *)self->_browserControllers mutableCopy];
  [v5 removeObject:windowCopy];
  v6 = [v5 copy];

  v7 = [(NSArray *)self->_browserControllers valueForKey:@"windowState"];
  windowState = [windowCopy windowState];
  v9 = [(BrowserWindowController *)self _mergeAndSaveWindowStates:v7 intoWindowState:windowState];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        [v15 closeWindow];
        [v15 didCloseBrowserWindow];
        [(BrowserWindowController *)self _windowDidClose:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

+ (id)_printWindowToSceneMapping
{
  v2 = +[Application sharedApplication];
  browserWindowController = [v2 browserWindowController];
  _printWindowToSceneMapping = [browserWindowController _printWindowToSceneMapping];

  return _printWindowToSceneMapping;
}

- (id)_printWindowToSceneMapping
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_browserControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        windowState = [*(*(&v14 + 1) + 8 * i) windowState];
        uuid = [windowState uuid];
        sceneID = [windowState sceneID];
        [string appendFormat:@"<BrowserController; uuid = %@; sceneID = %@>\n", uuid, sceneID, v14];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [string copy];

  return v12;
}

- (void)setUpAutomationWindowWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  automationWindowInitializedCompletionHandler = self->_automationWindowInitializedCompletionHandler;
  if (automationWindowInitializedCompletionHandler)
  {
    v6 = _Block_copy(automationWindowInitializedCompletionHandler);
    v7 = self->_automationWindowInitializedCompletionHandler;
    self->_automationWindowInitializedCompletionHandler = 0;

    v8 = [MEMORY[0x277CCA9B8] safari_errorWithDomain:@"AutomationErrorDomain" code:1 privacyPreservingDescription:@"Pending session was terminated prior to becoming established."];
    v6[2](v6, v8);
  }

  v9 = [handlerCopy copy];
  v10 = self->_automationWindowInitializedCompletionHandler;
  self->_automationWindowInitializedCompletionHandler = v9;

  if ([*MEMORY[0x277D76620] supportsMultipleScenes])
  {
    v11 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithMode:2];
    v12 = objc_alloc_init(MEMORY[0x277D75950]);
    [v12 _setRequestFullscreen:1];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_2781D4F78;
    v19[4] = self;
    [mEMORY[0x277D75128] requestSceneSessionActivation:0 userActivity:v11 options:v12 errorHandler:v19];
  }

  else
  {
    v14 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:0];
    windowState = [v14 windowState];
    sceneID = [windowState sceneID];
    v17 = [(BrowserWindowController *)self _newAutomationWindowWithSceneID:sceneID];

    v18 = MEMORY[0x277D75D18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke;
    v20[3] = &unk_2781D4C88;
    v21 = v14;
    v22 = v17;
    v12 = v17;
    v11 = v14;
    [v18 performWithoutAnimation:v20];
  }
}

void __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detachFromScene];
  [*(a1 + 40) attachToScene:v2];
}

void __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke_3;
    v5[3] = &unk_2781D4C88;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v4 = _Block_copy(*(*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4[2](v4, *(a1 + 40));
}

- (void)tearDownAutomationWindow
{
  supportsMultipleScenes = [*MEMORY[0x277D76620] supportsMultipleScenes];
  browserControllers = self->_browserControllers;
  if (supportsMultipleScenes)
  {
    v12 = [(NSArray *)browserControllers safari_firstObjectPassingTest:&__block_literal_global_115];
    [v12 closeWindow];
    [(BrowserWindowController *)self _windowDidClose:v12];
  }

  else
  {
    v5 = [(NSArray *)browserControllers objectAtIndexedSubscript:0];
    isControlledByAutomation = [v5 isControlledByAutomation];

    v7 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:isControlledByAutomation];
    v8 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:isControlledByAutomation ^ 1];
    [(BrowserWindowController *)self _windowDidClose:v8];
    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__BrowserWindowController_tearDownAutomationWindow__block_invoke;
    v13[3] = &unk_2781D4C88;
    v14 = v8;
    v15 = v7;
    v10 = v7;
    v11 = v8;
    [v9 performWithoutAnimation:v13];
  }
}

void __51__BrowserWindowController_tearDownAutomationWindow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detachFromScene];
  [*(a1 + 40) attachToScene:v2];
}

- (void)closeAllWindowsFromWindow:(id)window
{
  windowCopy = window;
  tabController = [windowCopy tabController];
  activeProfileIdentifier = [tabController activeProfileIdentifier];
  frontmostProfileIdentifier = self->_frontmostProfileIdentifier;
  self->_frontmostProfileIdentifier = activeProfileIdentifier;

  v8 = [MEMORY[0x277D75990] requestWithRole:*MEMORY[0x277D772C8]];
  v9 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithMode:0];
  [v8 setUserActivity:v9];

  v10 = objc_alloc_init(MEMORY[0x277D75950]);
  scene = [windowCopy scene];

  [v10 setRequestingScene:scene];
  [v8 setOptions:v10];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] activateSceneSessionForRequest:v8 errorHandler:&__block_literal_global_118];

  v13 = [(NSArray *)self->_browserControllers copy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BrowserWindowController_closeAllWindowsFromWindow___block_invoke_119;
  block[3] = &unk_2781D4D40;
  v16 = v13;
  v14 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__BrowserWindowController_closeAllWindowsFromWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__BrowserWindowController_closeAllWindowsFromWindow___block_invoke_cold_1(v3, v2);
  }
}

void __53__BrowserWindowController_closeAllWindowsFromWindow___block_invoke_119(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

        [*(*(&v6 + 1) + 8 * v5++) closeWindow];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)saveBrowserState
{
  v20 = *MEMORY[0x277D85DE8];
  _browserWindowsToPersist = [(BrowserWindowController *)self _browserWindowsToPersist];
  [(_SFBrowserSavedState *)self->_savedState setBrowserWindows:_browserWindowsToPersist];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_browserControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isControlledByAutomation])
        {
          windowStateData = [v9 windowStateData];
          v18 = windowStateData;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          savedState = [v9 savedState];
          [savedState setBrowserWindows:v11];
        }

        tabController = [v9 tabController];
        [tabController saveStateInBackground:0];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_restoreWindowsWithState:(id)state shouldMergeAllWindowsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  windowStates = [state windowStates];
  v7 = windowStates;
  if (neededCopy)
  {
    if ([windowStates count] >= 2)
    {
      firstObject = [v7 firstObject];
      v9 = [(BrowserWindowController *)self _mergeAndSaveWindowStates:v7 intoWindowState:firstObject];

      v7 = v9;
    }

    firstObject2 = [v7 firstObject];
    [firstObject2 setSceneID:0];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__BrowserWindowController__restoreWindowsWithState_shouldMergeAllWindowsIfNeeded___block_invoke;
  v13[3] = &unk_2781D8918;
  v13[4] = self;
  v11 = [v7 safari_mapObjectsUsingBlock:v13];
  browserControllers = self->_browserControllers;
  self->_browserControllers = v11;
}

BrowserController *__82__BrowserWindowController__restoreWindowsWithState_shouldMergeAllWindowsIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 uuid];
    v7 = [v3 sceneID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Loading window from saved state: uuid = %{public}@, sceneID = %{public}@", &v10, 0x16u);
  }

  v8 = [[BrowserController alloc] initWithWindowState:v3 browserWindowController:*(a1 + 32) tabGroupManager:*(*(a1 + 32) + 56)];

  return v8;
}

- (id)_mergeAndSaveWindowStates:(id)states intoWindowState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  stateCopy = state;
  v20 = [(BrowserWindowController *)self _mergeWindowStates:statesCopy intoWindowState:stateCopy];
  v21 = statesCopy;
  v8 = [statesCopy mutableCopy];
  [v8 removeObject:stateCopy];
  [(WBTabGroupManager *)self->_tabGroupManager deleteWindowStates:v8 completionHandler:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        settings = [MEMORY[0x277D28F08] settings];
        v16 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid = [v14 uuid];
        v18 = [v16 initWithUUIDString:uuid];
        [settings removeWindowWithUUID:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v20;
}

- (id)_mergeWindowStates:(id)states intoWindowState:(id)state
{
  v86 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  stateCopy = state;
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Merging window states", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke;
  v79[3] = &unk_2781D8940;
  v10 = stateCopy;
  v80 = v10;
  v11 = v8;
  v81 = v11;
  v60 = statesCopy;
  v12 = [statesCopy safari_reduceObjectsWithInitialValue:array usingBlock:v79];

  tabGroupManager = self->_tabGroupManager;
  localTabGroup = [v10 localTabGroup];
  v67 = v10;
  localTabGroup2 = [v10 localTabGroup];
  tabs = [localTabGroup2 tabs];
  lastObject = [tabs lastObject];
  v58 = v11;
  v59 = v12;
  [(WBTabGroupManager *)tabGroupManager moveTabs:v12 toTabGroup:localTabGroup afterTab:lastObject withoutPersistingTabGroupsWithUUIDStrings:v11];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [(WBTabGroupManager *)self->_tabGroupManager namedProfiles];
  v63 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v63)
  {
    v62 = *v76;
    do
    {
      v18 = 0;
      do
      {
        if (*v76 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v66 = v18;
        v19 = *(*(&v75 + 1) + 8 * v18);
        v20 = self->_tabGroupManager;
        v64 = v19;
        identifier = [v19 identifier];
        v22 = [(WBTabGroupManager *)v20 unnamedTabGroupsForProfileWithIdentifier:identifier];

        array2 = [MEMORY[0x277CBEB18] array];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          v28 = *v72;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v72 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v71 + 1) + 8 * i);
              if (v27 || ([v67 unnamedTabGroupUUIDs], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "uuid"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "containsObject:", v32), v32, v31, !v33))
              {
                [array2 addObject:v30];
              }

              else
              {
                v27 = v30;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v26);
        }

        else
        {
          v27 = 0;
        }

        if ([array2 count])
        {
          if (v27)
          {
            goto LABEL_25;
          }

          v34 = MEMORY[0x277D7B540];
          deviceIdentifier = [(WBTabGroupManager *)self->_tabGroupManager deviceIdentifier];
          v36 = [v34 unnamedTabGroupWithDeviceIdentifier:deviceIdentifier];

          identifier2 = [v64 identifier];
          [v36 setProfileIdentifier:identifier2];

          v27 = [(WBTabGroupManager *)self->_tabGroupManager insertUnnamedTabGroup:v36];
          uuid = [v36 uuid];
          [v67 addUnnamedTabGroupUUID:uuid];

          tabCollection = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
          v40 = [tabCollection saveWindowState:v67];

          if (v40)
          {

LABEL_25:
            v36 = [array2 safari_reduceObjectsUsingBlock:&__block_literal_global_126];
            v41 = self->_tabGroupManager;
            tabs2 = [v27 tabs];
            lastObject2 = [tabs2 lastObject];
            [(WBTabGroupManager *)v41 moveTabs:v36 toTabGroup:v27 afterTab:lastObject2 withoutPersistingTabGroupsWithUUIDStrings:0];
          }

          else
          {
            v44 = WBS_LOG_CHANNEL_PREFIXProfiles();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [(BrowserWindowController *)buf _mergeWindowStates:v44 intoWindowState:?];
            }
          }
        }

        v18 = v66 + 1;
      }

      while (v66 + 1 != v63);
      v45 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      v63 = v45;
    }

    while (v45);
  }

  v46 = [MEMORY[0x277CBEB58] set];

  array3 = [MEMORY[0x277CBEB18] array];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke_2;
  v68[3] = &unk_2781D8940;
  v69 = v67;
  v70 = v46;
  v48 = v46;
  v49 = v67;
  v50 = [v60 safari_reduceObjectsWithInitialValue:array3 usingBlock:v68];

  v51 = self->_tabGroupManager;
  privateTabGroup = [v49 privateTabGroup];
  privateTabGroup2 = [v49 privateTabGroup];
  tabs3 = [privateTabGroup2 tabs];
  lastObject3 = [tabs3 lastObject];
  [(WBTabGroupManager *)v51 moveTabs:v50 toTabGroup:privateTabGroup afterTab:lastObject3 withoutPersistingTabGroupsWithUUIDStrings:v48];

  v83 = v49;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];

  return v56;
}

id __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uuid];
  v8 = [*(a1 + 32) uuid];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = [v5 localTabGroup];
    v12 = [v11 uuid];
    [v10 addObject:v12];

    v13 = [v5 localTabGroup];
    v14 = [v13 tabs];
    [v6 addObjectsFromArray:v14];
  }

  return v6;
}

id __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 tabs];
  if (v4)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v5 = v6;
  }

  return v5;
}

id __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uuid];
  v8 = [*(a1 + 32) uuid];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = [v5 privateTabGroup];
    v12 = [v11 uuid];
    [v10 addObject:v12];

    v13 = [v5 privateTabGroup];
    v14 = [v13 tabs];
    [v6 addObjectsFromArray:v14];
  }

  return v6;
}

- (void)_restoreWindowsFromBrowserSavedState:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  objc_storeStrong(&self->_savedState, state);
  browserWindows = [stateCopy browserWindows];
  v7 = [(NSArray *)self->_browserControllers mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = browserWindows;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = 0x2781D1000uLL;
    do
    {
      v12 = 0;
      v26 = v9;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = WBS_LOG_CHANNEL_PREFIXTabs();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = v14;
          [v13 UUID];
          v16 = v10;
          v17 = v7;
          selfCopy = self;
          v19 = stateCopy;
          v21 = v20 = v11;
          sceneID = [v13 sceneID];
          *buf = 138543618;
          v33 = v21;
          v34 = 2114;
          v35 = sceneID;
          _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_INFO, "Loading window from saved state: uuid = %{public}@, sceneID = %{public}@", buf, 0x16u);

          v11 = v20;
          stateCopy = v19;
          self = selfCopy;
          v7 = v17;
          v10 = v16;
          v9 = v26;
        }

        v23 = [objc_alloc(*(v11 + 3848)) initWithStateData:v13 browserWindowController:self savedState:stateCopy controlledByAutomation:0];
        [v7 addObject:v23];

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v24 = [v7 copy];
  browserControllers = self->_browserControllers;
  self->_browserControllers = v24;
}

- (id)_browserWindowsToPersist
{
  browserControllers = self->_browserControllers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__BrowserWindowController__browserWindowsToPersist__block_invoke;
  v5[3] = &unk_2781D8988;
  v5[4] = self;
  v3 = [(NSArray *)browserControllers safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

id __51__BrowserWindowController__browserWindowsToPersist__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 savedState];
  v5 = *(*(a1 + 32) + 32);

  if (v4 == v5)
  {
    v6 = [v3 windowStateData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dispatchNavigationIntent:(id)intent
{
  intentCopy = intent;
  v4 = +[Application sharedApplication];
  [v4 handleNavigationIntent:intentCopy completion:0];
}

- (void)handleNavigationIntent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  sourceWindowUUID = [intentCopy sourceWindowUUID];
  v8 = [(BrowserWindowController *)self browserControllerWithUUID:sourceWindowUUID];
  v9 = v8;
  if (v8)
  {
    firstObject = v8;
  }

  else
  {
    firstObject = [(NSArray *)self->_browserControllers firstObject];
  }

  v11 = firstObject;

  policy = [intentCopy policy];
  if (policy <= 6)
  {
    if (policy == 4)
    {
      v13 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithNavigationIntent:intentCopy];
      v14 = objc_alloc_init(MEMORY[0x277D75950]);
      scene = [v11 scene];
      [v14 setRequestingScene:scene];

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] requestSceneSessionActivation:0 userActivity:v13 options:v14 errorHandler:0];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      [v11 handleNavigationIntent:intentCopy completion:completionCopy];
    }
  }
}

void __53__BrowserWindowController_closeAllWindowsFromWindow___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Failed to activate new window before closing all windows: %{public}@", &v5, 0xCu);
}

- (void)_mergeWindowStates:(os_log_t)log intoWindowState:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Failed to save unnamed tab group in window state when merging windows", buf, 2u);
}

@end