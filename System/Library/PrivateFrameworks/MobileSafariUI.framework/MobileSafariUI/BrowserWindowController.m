@interface BrowserWindowController
+ (id)_printWindowToSceneMapping;
- (BrowserWindowController)initWithBrowserSavedState:(id)a3 perSitePreferencesVendor:(id)a4 browserControllerUIDelegateProvider:(id)a5;
- (BrowserWindowController)initWithTabGroupManager:(id)a3 browserState:(id)a4 pinnedTabsManager:(id)a5 perSitePreferencesVendor:(id)a6 shouldMergeAllWindowsIfNeeded:(BOOL)a7 browserControllerUIDelegateProvider:(id)a8;
- (BrowserWindowController)initWithTabGroupManager:(id)a3 pinnedTabsManager:(id)a4;
- (NSArray)tabsWithSound;
- (_SFPageZoomPreferenceManager)privateBrowsingPageZoomManager;
- (id)_allNormalLocalTabs;
- (id)_browserWindowsToPersist;
- (id)_mergeAndSaveWindowStates:(id)a3 intoWindowState:(id)a4;
- (id)_mergeWindowStates:(id)a3 intoWindowState:(id)a4;
- (id)_newAutomationWindowWithSceneID:(id)a3;
- (id)_printWindowToSceneMapping;
- (id)_sceneIDToLocalGroupTabs;
- (id)browserControllerWithUUID:(id)a3;
- (id)oldestTabsWithLimit:(unint64_t)a3 inPrivateBrowsing:(BOOL)a4;
- (id)tabDocumentWithUUID:(id)a3;
- (id)tabWithUUID:(id)a3;
- (id)tabsInPrivateBrowsing:(BOOL)a3;
- (id)tabsOlderThan:(id)a3 inPrivateBrowsing:(BOOL)a4;
- (id)uiDelegateForBrowserController:(id)a3;
- (id)windowForSceneID:(id)a3 options:(id)a4;
- (int64_t)modeForNewWindowUserActivity:(id)a3;
- (unint64_t)numberOfTabsInPrivateBrowsing:(BOOL)a3;
- (void)_createCloudTabsStore;
- (void)_destroyCloudTabsStore;
- (void)_mergeTabsFromCloudTabsForDeviceRestoration:(id)a3;
- (void)_mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:(BOOL)a3;
- (void)_restoreWindowsFromBrowserSavedState:(id)a3;
- (void)_restoreWindowsWithState:(id)a3 shouldMergeAllWindowsIfNeeded:(BOOL)a4;
- (void)_windowDidClose:(id)a3;
- (void)closeAllWindowsFromWindow:(id)a3;
- (void)cloudTabStore:(id)a3 didReceiveTabCloseRequest:(id)a4;
- (void)cloudTabStore:(id)a3 didUpdateDevicesFromCloudKitWithError:(id)a4;
- (void)cloudTabStoreDidGetCachedDevicesFromCloudKit:(id)a3;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)a3;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)mergeAllWindowsIntoWindow:(id)a3;
- (void)openNewWindowInProfile:(id)a3 withPrivateBrowsingEnabled:(BOOL)a4 fromWindow:(id)a5;
- (void)openNewWindowWithPrivateBrowsingEnabled:(BOOL)a3 fromWindow:(id)a4;
- (void)removeWindowsNotMatchingSceneIDs:(id)a3 supportsMultipleScenes:(BOOL)a4;
- (void)restoreEducationDeviceCloudTabs:(id)a3 animated:(BOOL)a4;
- (void)restoreEducationDeviceTabs;
- (void)saveBrowserState;
- (void)saveCloudTabs;
- (void)saveCloudTabsUsingCloudTabStore:(id)a3;
- (void)setCloudTabsEnabled:(BOOL)a3;
- (void)setUpAutomationWindowWithCompletionHandler:(id)a3;
- (void)tearDownAutomationWindow;
- (void)updateCloudTabUpdatesEnabled;
- (void)updateCloudTabsForEnteringBackground;
- (void)updateCloudTabsForEnteringForeground;
@end

@implementation BrowserWindowController

- (void)updateCloudTabUpdatesEnabled
{
  v3 = +[FeatureManager sharedFeatureManager];
  v4 = [v3 isCloudTabsAvailable];

  if (v4)
  {
    cloudTabStore = self->_cloudTabStore;
    if (!cloudTabStore)
    {
      [(BrowserWindowController *)self _createCloudTabsStore];
      cloudTabStore = self->_cloudTabStore;
    }

    v6 = [(CloudTabStore *)cloudTabStore cloudTabsAreEnabled];
  }

  else
  {
    [(BrowserWindowController *)self _destroyCloudTabsStore];
    v6 = 0;
  }

  [(BrowserWindowController *)self setCloudTabsEnabled:v6];
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
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 reportTabUpdatedWithUpdateType:5];
}

- (NSArray)tabsWithSound
{
  v3 = [MEMORY[0x277CBEB18] array];
  browserControllers = self->_browserControllers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__BrowserWindowController_tabsWithSound__block_invoke;
  v8[3] = &unk_2781D88F0;
  v9 = v3;
  v5 = v3;
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

- (BrowserWindowController)initWithBrowserSavedState:(id)a3 perSitePreferencesVendor:(id)a4 browserControllerUIDelegateProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = BrowserWindowController;
  v11 = [(BrowserWindowController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_perSitePreferencesVendor, a4);
    v13 = [v10 copy];
    browserControllerUIDelegateProvider = v12->_browserControllerUIDelegateProvider;
    v12->_browserControllerUIDelegateProvider = v13;

    v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    UIDelegatesByBrowserController = v12->_UIDelegatesByBrowserController;
    v12->_UIDelegatesByBrowserController = v15;

    browserControllers = v12->_browserControllers;
    v12->_browserControllers = MEMORY[0x277CBEBF8];

    [(BrowserWindowController *)v12 _restoreWindowsFromBrowserSavedState:v8];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D7B858];
    v20 = +[FeatureManager sharedFeatureManager];
    [v18 addObserver:v12 selector:sel__cloudTabFeatureAvailabilityDidChange_ name:v19 object:v20];

    [(BrowserWindowController *)v12 updateCloudTabUpdatesEnabled];
    v21 = [MEMORY[0x277CBEB18] array];
    cloudTabRestorationLogs = v12->_cloudTabRestorationLogs;
    v12->_cloudTabRestorationLogs = v21;

    v23 = v12;
  }

  return v12;
}

- (BrowserWindowController)initWithTabGroupManager:(id)a3 pinnedTabsManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 browserState];
  v9 = [(BrowserWindowController *)self initWithTabGroupManager:v7 browserState:v8 pinnedTabsManager:v6 perSitePreferencesVendor:0 shouldMergeAllWindowsIfNeeded:0 browserControllerUIDelegateProvider:0];

  return v9;
}

- (BrowserWindowController)initWithTabGroupManager:(id)a3 browserState:(id)a4 pinnedTabsManager:(id)a5 perSitePreferencesVendor:(id)a6 shouldMergeAllWindowsIfNeeded:(BOOL)a7 browserControllerUIDelegateProvider:(id)a8
{
  v9 = a7;
  v35 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v36.receiver = self;
  v36.super_class = BrowserWindowController;
  v19 = [(BrowserWindowController *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tabGroupManager, a3);
    objc_storeStrong(&v20->_perSitePreferencesVendor, a6);
    v21 = [v18 copy];
    browserControllerUIDelegateProvider = v20->_browserControllerUIDelegateProvider;
    v20->_browserControllerUIDelegateProvider = v21;

    v23 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    UIDelegatesByBrowserController = v20->_UIDelegatesByBrowserController;
    v20->_UIDelegatesByBrowserController = v23;

    objc_storeStrong(&v20->_pinnedTabsManager, a5);
    v25 = [v15 windowStates];
    v26 = [v25 safari_mapObjectsUsingBlock:&__block_literal_global_31];

    v27 = [MEMORY[0x277D28F08] settings];
    [v27 validateWindowSettingsWithUUIDs:v26];

    [(BrowserWindowController *)v20 _restoreWindowsWithState:v15 shouldMergeAllWindowsIfNeeded:v9];
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = *MEMORY[0x277D7B858];
    v30 = +[FeatureManager sharedFeatureManager];
    [v28 addObserver:v20 selector:sel__cloudTabFeatureAvailabilityDidChange_ name:v29 object:v30];

    [(BrowserWindowController *)v20 updateCloudTabUpdatesEnabled];
    v31 = [MEMORY[0x277CBEB18] array];
    cloudTabRestorationLogs = v20->_cloudTabRestorationLogs;
    v20->_cloudTabRestorationLogs = v31;

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

- (id)uiDelegateForBrowserController:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_UIDelegatesByBrowserController objectForKey:v4];
  if (!v5)
  {
    browserControllerUIDelegateProvider = self->_browserControllerUIDelegateProvider;
    if (browserControllerUIDelegateProvider)
    {
      v5 = browserControllerUIDelegateProvider[2](browserControllerUIDelegateProvider, v4);
      if (v5)
      {
        [(NSMapTable *)self->_UIDelegatesByBrowserController setObject:v5 forKey:v4];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tabsInPrivateBrowsing:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
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

        v11 = [*(*(&v16 + 1) + 8 * i) tabController];
        v12 = v11;
        if (a3)
        {
          [v11 privateUnpinnedTabs];
        }

        else
        {
          [v11 normalUnpinnedTabs];
        }
        v13 = ;
        [v5 addObjectsFromArray:v13];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (unint64_t)numberOfTabsInPrivateBrowsing:(BOOL)a3
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

        v10 = [*(*(&v14 + 1) + 8 * i) tabController];
        v11 = v10;
        if (a3)
        {
          [v10 privateUnpinnedTabs];
        }

        else
        {
          [v10 normalUnpinnedTabs];
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

- (id)tabsOlderThan:(id)a3 inPrivateBrowsing:(BOOL)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] date];
  v28 = v5;
  v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [MEMORY[0x277CBEB18] array];
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

        v16 = [*(*(&v35 + 1) + 8 * i) tabController];
        v17 = v16;
        if (a4)
        {
          [v16 privateUnpinnedTabs];
        }

        else
        {
          [v16 normalUnpinnedTabs];
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
                [v11 addObject:v24];
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

  v26 = [v11 copy];

  return v26;
}

- (id)oldestTabsWithLimit:(unint64_t)a3 inPrivateBrowsing:(BOOL)a4
{
  v5 = [(BrowserWindowController *)self tabsInPrivateBrowsing:a4];
  v6 = [v5 mutableCopy];

  [v6 sortUsingComparator:&__block_literal_global_14];
  if ([v6 count] <= a3)
  {
    a3 = [v6 count];
  }

  v7 = [v6 subarrayWithRange:{0, a3}];

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

- (id)browserControllerWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 UUID];
        v11 = [v10 isEqual:v4];

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

- (id)tabDocumentWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

      v10 = [*(*(&v13 + 1) + 8 * v9) tabController];
      v11 = [v10 tabDocumentWithUUID:v4];

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

- (id)tabWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

      v10 = [*(*(&v13 + 1) + 8 * v9) tabController];
      v11 = [v10 tabWithUUID:v4];

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
    v5 = [MEMORY[0x277D49B18] sharedProxy];
    [v4 setSyncProxy:v5];

    v6 = [objc_alloc(MEMORY[0x277CDB840]) initWithPerSitePreferencesStore:v4];
    v7 = self->_privateBrowsingPageZoomManager;
    self->_privateBrowsingPageZoomManager = v6;

    v8 = [(BrowserWindowController *)self perSitePreferencesVendor];
    v9 = [v8 pageZoomPreferenceManager];
    [(_SFPageZoomPreferenceManager *)self->_privateBrowsingPageZoomManager setFallbackPreferenceManager:v9];

    privateBrowsingPageZoomManager = self->_privateBrowsingPageZoomManager;
  }

  return privateBrowsingPageZoomManager;
}

- (id)_allNormalLocalTabs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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

        v9 = [*(*(&v15 + 1) + 8 * i) tabController];
        v10 = [v9 activeTabGroup];
        v11 = [v10 isSyncable];

        if ((v11 & 1) == 0)
        {
          v12 = [v9 normalTabs];
          [v3 addObjectsFromArray:v12];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)_sceneIDToLocalGroupTabs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
        v10 = [v9 tabController];
        v11 = [v10 activeTabGroup];
        v12 = [v11 isLocal];

        if ((v12 & 1) == 0)
        {
          v13 = [v9 windowStateData];
          v14 = [v13 sceneID];

          if (v14)
          {
            v15 = [v9 windowState];
            v16 = [v15 localTabGroup];
            v17 = [v16 tabs];

            if ([v17 count])
            {
              [v3 setObject:v17 forKeyedSubscript:v14];
            }
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setCloudTabsEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_cloudTabsEnabled != a3)
  {
    self->_cloudTabsEnabled = a3;
    if (!a3)
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
  v5 = [(BrowserWindowController *)self _allNormalLocalTabs];
  v4 = [(BrowserWindowController *)self _sceneIDToLocalGroupTabs];
  [(CloudTabStore *)cloudTabStore saveCurrentDeviceTabs:v5 sceneIDToLocalGroupTabs:v4];
}

- (void)updateCloudTabsForEnteringBackground
{
  v27 = *MEMORY[0x277D85DE8];
  [(WBSCloudTabStore *)self->_cloudTabStore pruneExpiredDevicesFromCloudKit];
  v3 = [MEMORY[0x277D499B8] sharedLogger];
  [v3 reportTabUpdatedWithUpdateType:6];

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
  v7 = [(CloudTabStore *)self->_cloudTabStore canSaveCloudTabsForCurrentDevice];
  cloudTabStore = self->_cloudTabStore;
  if (v7)
  {
    v9 = [(BrowserWindowController *)self _allNormalLocalTabs];
    v10 = [(BrowserWindowController *)self _sceneIDToLocalGroupTabs];
    [(CloudTabStore *)cloudTabStore saveCurrentDeviceTabsForEnteringBackground:v9 sceneIDToLocalGroupTabs:v10 completion:v6];
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

          v15 = [*(*(&v16 + 1) + 8 * v14) tabController];
          [v15 updateEducationTabsLastSyncDate];

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
  v3 = [(NSArray *)self->_browserControllers firstObject];
  v2 = [v3 tabController];
  [v2 restoreEducationDeviceTabs];
}

- (void)restoreEducationDeviceCloudTabs:(id)a3 animated:(BOOL)a4
{
  v18 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = self;
  v19 = [(NSArray *)self->_browserControllers firstObject];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
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
        v8 = [v7 uuid];
        if (!v8)
        {
          v8 = [MEMORY[0x277CCAD78] UUID];
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = v22->_browserControllers;
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v24 + 1) + 8 * v13) tabController];
            v15 = [v7 url];
            v16 = [v14 tabForURL:v15];

            if (v16)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          v9 = [v7 title];
          v17 = [v19 loadURLInNewTab:v16 title:v9 UUID:v8 inBackground:1 animated:v18 restoringCloudTab:1];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }
}

- (void)_mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:(BOOL)a3
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
    v64 = a3;
    v67 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v63 = *MEMORY[0x277D291D0];
    v5 = [v67 objectForKey:?];
    if (v5)
    {
      v6 = [(CloudTabStore *)self->_cloudTabStore currentDeviceUUID];
      v66 = [v6 UUIDString];

      if ([v5 isEqualToString:v66])
      {
        self->_consideredMergingCloudTabsForDeviceRestoration = 1;
        v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v66;
          _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Not attempting to merge CloudTabs because restoration is not necessary (saved UUID: %{public}@, current UUID: %{public}@)", buf, 0x16u);
        }
      }

      else
      {
        self->_consideredMergingCloudTabsForDeviceRestoration = v64;
        if (v64)
        {
          v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = v66;
            _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Finished syncing for CloudTabs restoration (saved UUID: %{public}@, current UUID: %{public}@)", buf, 0x16u);
          }

          cloudTabRestorationLogs = self->_cloudTabRestorationLogs;
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished syncing for CloudTabs restoration (saved UUID: %@, current UUID: %@)", v5, v66];
          [(NSMutableArray *)cloudTabRestorationLogs addObject:v11];

          [v67 setObject:v66 forKey:v63];
          [v67 setObject:v5 forKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
          [v67 setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
        }

        v62 = [(CloudTabStore *)self->_cloudTabStore allSyncedCloudTabDevices];
        v12 = [v62 count] == 0;
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

          [v67 setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
        }

        else
        {
          if (v14)
          {
            *buf = 138543618;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = v66;
            _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to find device with UUID: %{public}@ to restore from. Current CloudTab device UUID is: %{public}@", buf, 0x16u);
          }

          v15 = self->_cloudTabRestorationLogs;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempting to find device with UUID: %@ to restore from. Current CloudTab device UUID is: %@", v5, v66];
          [(NSMutableArray *)v15 addObject:v16];

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = v62;
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
                v23 = [v20 uuid];
                *buf = 138543362;
                *&buf[4] = v23;
                _os_log_impl(&dword_215819000, v22, OS_LOG_TYPE_DEFAULT, "Found CloudTabs device with UUID %{public}@", buf, 0xCu);
              }

              v24 = self->_cloudTabRestorationLogs;
              v25 = MEMORY[0x277CCACA8];
              v26 = [v20 uuid];
              v27 = [v25 stringWithFormat:@"Found CloudTabs device with UUID %@", v26];
              [(NSMutableArray *)v24 addObject:v27];

              v28 = [v20 uuid];
              LOBYTE(v26) = [v28 isEqualToString:v5];

              if (v26)
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

            v29 = v20;

            if (!v29)
            {
              goto LABEL_37;
            }

            v30 = [v29 tabs];
            v31 = [v30 count] == 0;
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

              [v67 setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
            }

            else
            {
              if (v33)
              {
                v34 = v32;
                v35 = [v30 count];
                *buf = 134217984;
                *&buf[4] = v35;
                _os_log_impl(&dword_215819000, v34, OS_LOG_TYPE_DEFAULT, "Found %zu tabs in CloudTabs device for restoration", buf, 0xCu);
              }

              v36 = self->_cloudTabRestorationLogs;
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found %zu tabs in CloudTabs device for restoration", objc_msgSend(v30, "count")];
              [(NSMutableArray *)v36 addObject:v37];

              v38 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
              v39 = [v29 lastModified];
              [v39 timeIntervalSinceReferenceDate];
              [v38 setDouble:@"lastModifiedTimeOfCloudTabDeviceUsedForRestoration" forKey:?];

              if (!v64)
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
                [v67 setObject:v66 forKey:v63];
                v43 = [v29 uuid];
                [v67 setObject:v43 forKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
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
              v46 = [MEMORY[0x277D49B18] sharedProxy];
              v68[0] = MEMORY[0x277D85DD0];
              v68[1] = 3221225472;
              v68[2] = __108__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing___block_invoke_59;
              v68[3] = &unk_2781D8878;
              v68[4] = self;
              v69 = v67;
              v71 = buf;
              v30 = v30;
              v70 = v30;
              [v46 getCloudTabContainerManateeStateWithCompletionHandler:v68];

              _Block_object_dispose(buf, 8);
            }
          }

          else
          {
LABEL_27:

LABEL_37:
            v29 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
            v47 = [v29 integerForKey:*MEMORY[0x277D291E0]];
            v48 = [v29 safari_dateForKey:*MEMORY[0x277D291D8]];
            v30 = [v48 description];

            v49 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v47;
              *&buf[22] = 2114;
              v78 = v30;
              _os_log_impl(&dword_215819000, v49, OS_LOG_TYPE_DEFAULT, "No cloud tab device found for tab restoration. Expected device %{public}@ to have %zu tabs as of %{public}@.", buf, 0x20u);
            }

            v50 = self->_cloudTabRestorationLogs;
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"No cloud tab device found for tab restoration. Expected device %@ to have %zu tabs as of %@.", v5, v47, v30];
            [(NSMutableArray *)v50 addObject:v51];

            if (v64)
            {
              v52 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = v52;
                v54 = [obj count];
                v55 = [(WBSCloudTabStore *)self->_cloudTabStore totalSyncedCloudTabDeviceCount];
                *buf = 134218240;
                *&buf[4] = v54;
                *&buf[12] = 2048;
                *&buf[14] = v55;
                _os_log_impl(&dword_215819000, v53, OS_LOG_TYPE_DEFAULT, "Did not find device after syncing finished; device count: %zu; unfiltered device count: %zu", buf, 0x16u);
              }

              v56 = self->_cloudTabRestorationLogs;
              v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did not find device after syncing finished device count: %zu; unfiltered device count: %zu", objc_msgSend(obj, "count"), -[WBSCloudTabStore totalSyncedCloudTabDeviceCount](self->_cloudTabStore, "totalSyncedCloudTabDeviceCount")];;
              [(NSMutableArray *)v56 addObject:v57];
            }

            [v67 setObject:self->_cloudTabRestorationLogs forKey:*MEMORY[0x277D291C8]];
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

- (void)_mergeTabsFromCloudTabsForDeviceRestoration:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v80 = [v3 count];
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Merging %ld tabs from CloudTabs for device restoration", buf, 0xCu);
  }

  cloudTabRestorationLogs = self->_cloudTabRestorationLogs;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Merging %ld tabs from CloudTabs for device restoration", objc_msgSend(v3, "count")];
  [(NSMutableArray *)cloudTabRestorationLogs addObject:v7];

  v53 = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v3;
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
        v13 = [v12 sceneID];
        if (!v13)
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

          v13 = @"SAFARI_NO_SCENE_ID";
        }

        v17 = [v53 objectForKeyedSubscript:v13];
        if (!v17)
        {
          v17 = [MEMORY[0x277CBEB18] array];
          [v53 setObject:v17 forKeyedSubscript:v13];
        }

        [v17 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v9);
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
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
        v25 = [v24 windowStateData];
        v26 = [v25 sceneID];

        if (v26)
        {
          [v18 setObject:v24 forKeyedSubscript:v26];
        }
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v21);
  }

  v48 = v18;

  v52 = [MEMORY[0x277CBEB38] dictionary];
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
        v32 = [v31 UUID];
        v33 = [v32 UUIDString];

        if (v33)
        {
          v34 = [v31 windowState];
          v35 = [v34 localTabGroup];
          v36 = [v35 tabs];

          v37 = [MEMORY[0x277CBEB58] set];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v38 = v36;
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

          [v52 setObject:v37 forKeyedSubscript:v33];
        }
      }

      v28 = [(NSArray *)v50 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v28);
  }

  v44 = [(NSArray *)self->_browserControllers firstObject];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __71__BrowserWindowController__mergeTabsFromCloudTabsForDeviceRestoration___block_invoke;
  v54[3] = &unk_2781D88C8;
  v55 = v48;
  v56 = self;
  v57 = v44;
  v58 = v52;
  v45 = v52;
  v46 = v44;
  v47 = v48;
  [v53 enumerateKeysAndObjectsUsingBlock:v54];
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

- (void)cloudTabStore:(id)a3 didReceiveTabCloseRequest:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 url];
  v7 = [v5 tabUUID];
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

        v13 = [*(*(&v14 + 1) + 8 * v12) tabController];
        [v13 closeTabWithURL:v6 UUID:v7];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)cloudTabStore:(id)a3 didUpdateDevicesFromCloudKitWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v9 = [v5 safari_privacyPreservingDescription];
      v10 = 138543362;
      v11 = v9;
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

- (void)cloudTabStoreDidGetCachedDevicesFromCloudKit:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Did get cached CloudTab devices", v5, 2u);
  }

  [(BrowserWindowController *)self _mergeTabsFromCloudTabsForDeviceRestorationIfNeededAfterCloudTabsFinishedSyncing:0];
}

- (void)saveCloudTabsUsingCloudTabStore:(id)a3
{
  if ([(CloudTabStore *)self->_cloudTabStore canSaveCloudTabsForCurrentDevice])
  {

    [(BrowserWindowController *)self saveCloudTabs];
  }
}

- (void)openNewWindowWithPrivateBrowsingEnabled:(BOOL)a3 fromWindow:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x277CC1EF0];
  v6 = a4;
  v10 = [v5 _sf_windowCreationActivityWithMode:v4];
  v7 = objc_alloc_init(MEMORY[0x277D75950]);
  v8 = [v6 scene];

  [v7 setRequestingScene:v8];
  v9 = [MEMORY[0x277D75128] sharedApplication];
  [v9 requestSceneSessionActivation:0 userActivity:v10 options:v7 errorHandler:0];
}

- (void)openNewWindowInProfile:(id)a3 withPrivateBrowsingEnabled:(BOOL)a4 fromWindow:(id)a5
{
  v7 = MEMORY[0x277CC1EF0];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v16 = [v7 _sf_windowCreationActivityWithMode:v8];
  v11 = objc_alloc_init(MEMORY[0x277D75950]);
  v12 = [v9 scene];

  [v11 setRequestingScene:v12];
  v13 = [v10 identifier];

  frontmostProfileIdentifier = self->_frontmostProfileIdentifier;
  self->_frontmostProfileIdentifier = v13;

  v15 = [MEMORY[0x277D75128] sharedApplication];
  [v15 requestSceneSessionActivation:0 userActivity:v16 options:v11 errorHandler:0];
}

- (int64_t)modeForNewWindowUserActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _sf_windowCreationMode];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
    }

    else
    {
      v9 = [v5 _sf_windowCreationNavigationIntent];
      v10 = [v9 sourceWindowUUID];
      v11 = [(BrowserWindowController *)self browserControllerWithUUID:v10];

      v8 = [v11 isPrivateBrowsingEnabled];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newAutomationWindowWithSceneID:(id)a3
{
  v4 = MEMORY[0x277D7B598];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 initWithUUID:v8 sceneID:v5];

  v10 = [MEMORY[0x277D7B580] ephemeralTabGroupManager];
  [v10 saveWindowState:v9 completionHandler:0];
  v11 = [[BrowserController alloc] initWithWindowState:v9 browserWindowController:self tabGroupManager:v10 controlledByAutomation:1];
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

- (id)windowForSceneID:(id)a3 options:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityFromSceneConnectionOptions:a4];
  if ([(BrowserWindowController *)self modeForNewWindowUserActivity:v7]== 2)
  {
    v8 = [(BrowserWindowController *)self _newAutomationWindowWithSceneID:v6];
    goto LABEL_14;
  }

  browserControllers = self->_browserControllers;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__BrowserWindowController_windowForSceneID_options___block_invoke;
  v28[3] = &unk_2781D4E70;
  v10 = v6;
  v29 = v10;
  v11 = [(NSArray *)browserControllers safari_firstObjectPassingTest:v28];
  if (!v11)
  {
    v8 = [(NSArray *)self->_browserControllers safari_firstObjectPassingTest:&__block_literal_global_98_0];
    v15 = [(BrowserController *)v8 windowState];
    v16 = [v15 uuid];
    v17 = [v15 sceneID];
    [(BrowserController *)v8 adoptSceneID:v10];
    v18 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v16;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Adopting window during matching: uuid = %{public}@, sceneID = %{public}@ -> %{public}@", buf, 0x20u);
    }

    if (v8)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x277D7B598]);
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    v14 = [v19 initWithUUID:v21 sceneID:v10];

    [v14 setNewlyCreated:1];
    [(WBTabGroupManager *)self->_tabGroupManager saveWindowState:v14 completionHandler:0];
    v8 = [[BrowserController alloc] initWithWindowState:v14 browserWindowController:self tabGroupManager:self->_tabGroupManager];
    v22 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v14 uuid];
      *buf = 138543618;
      v31 = v24;
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
    v14 = [(BrowserController *)v8 UUID];
    *buf = 138543618;
    v31 = v14;
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

- (void)_windowDidClose:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 windowState];
  v6 = [v4 tabController];
  [v6 setActiveTabGroupUUID:0];

  v7 = [v4 tabController];
  [v7 closeAllOpenTabsAnimated:0];

  v8 = [v4 tabGroupManager];
  v25[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v8 deleteWindowStates:v9 completionHandler:0];

  v10 = [MEMORY[0x277D28F08] settings];
  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = [v5 uuid];
  v13 = [v11 initWithUUIDString:v12];
  [v10 removeWindowWithUUID:v13];

  v14 = [(NSArray *)self->_browserControllers mutableCopy];
  [v14 removeObject:v4];
  v15 = [v14 copy];

  browserControllers = self->_browserControllers;
  self->_browserControllers = v15;

  [v4 didCloseBrowserWindow];
  [(NSMapTable *)self->_UIDelegatesByBrowserController removeObjectForKey:v4];

  v17 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v5 uuid];
    v20 = [v5 sceneID];
    v21 = 138543618;
    v22 = v19;
    v23 = 2114;
    v24 = v20;
    _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Closed window: uuid = %{public}@, sceneID = %{public}@", &v21, 0x16u);
  }
}

- (void)removeWindowsNotMatchingSceneIDs:(id)a3 supportsMultipleScenes:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  browserControllers = self->_browserControllers;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__BrowserWindowController_removeWindowsNotMatchingSceneIDs_supportsMultipleScenes___block_invoke;
  v25[3] = &unk_2781D4E70;
  v8 = v6;
  v26 = v8;
  v9 = [(NSArray *)browserControllers safari_filterObjectsUsingBlock:v25];
  if (-[NSArray count](self->_browserControllers, "count") == 1 && [v9 count] == 1 && (!v4 || objc_msgSend(v8, "count") <= 1))
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v8 anyObject];
    [v10 adoptSceneID:v11];
    v12 = [v10 windowState];
    v13 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v12 uuid];
      v16 = [v12 sceneID];
      *buf = 138543874;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      v32 = 2114;
      v33 = v11;
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

- (void)mergeAllWindowsIntoWindow:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSArray *)self->_browserControllers mutableCopy];
  [v5 removeObject:v4];
  v6 = [v5 copy];

  v7 = [(NSArray *)self->_browserControllers valueForKey:@"windowState"];
  v8 = [v4 windowState];
  v9 = [(BrowserWindowController *)self _mergeAndSaveWindowStates:v7 intoWindowState:v8];

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
  v3 = [v2 browserWindowController];
  v4 = [v3 _printWindowToSceneMapping];

  return v4;
}

- (id)_printWindowToSceneMapping
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
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

        v9 = [*(*(&v14 + 1) + 8 * i) windowState];
        v10 = [v9 uuid];
        v11 = [v9 sceneID];
        [v3 appendFormat:@"<BrowserController; uuid = %@; sceneID = %@>\n", v10, v11, v14];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)setUpAutomationWindowWithCompletionHandler:(id)a3
{
  v4 = a3;
  automationWindowInitializedCompletionHandler = self->_automationWindowInitializedCompletionHandler;
  if (automationWindowInitializedCompletionHandler)
  {
    v6 = _Block_copy(automationWindowInitializedCompletionHandler);
    v7 = self->_automationWindowInitializedCompletionHandler;
    self->_automationWindowInitializedCompletionHandler = 0;

    v8 = [MEMORY[0x277CCA9B8] safari_errorWithDomain:@"AutomationErrorDomain" code:1 privacyPreservingDescription:@"Pending session was terminated prior to becoming established."];
    v6[2](v6, v8);
  }

  v9 = [v4 copy];
  v10 = self->_automationWindowInitializedCompletionHandler;
  self->_automationWindowInitializedCompletionHandler = v9;

  if ([*MEMORY[0x277D76620] supportsMultipleScenes])
  {
    v11 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithMode:2];
    v12 = objc_alloc_init(MEMORY[0x277D75950]);
    [v12 _setRequestFullscreen:1];
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__BrowserWindowController_setUpAutomationWindowWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_2781D4F78;
    v19[4] = self;
    [v13 requestSceneSessionActivation:0 userActivity:v11 options:v12 errorHandler:v19];
  }

  else
  {
    v14 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:0];
    v15 = [v14 windowState];
    v16 = [v15 sceneID];
    v17 = [(BrowserWindowController *)self _newAutomationWindowWithSceneID:v16];

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
  v3 = [*MEMORY[0x277D76620] supportsMultipleScenes];
  browserControllers = self->_browserControllers;
  if (v3)
  {
    v12 = [(NSArray *)browserControllers safari_firstObjectPassingTest:&__block_literal_global_115];
    [v12 closeWindow];
    [(BrowserWindowController *)self _windowDidClose:v12];
  }

  else
  {
    v5 = [(NSArray *)browserControllers objectAtIndexedSubscript:0];
    v6 = [v5 isControlledByAutomation];

    v7 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:v6];
    v8 = [(NSArray *)self->_browserControllers objectAtIndexedSubscript:v6 ^ 1];
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

- (void)closeAllWindowsFromWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 tabController];
  v6 = [v5 activeProfileIdentifier];
  frontmostProfileIdentifier = self->_frontmostProfileIdentifier;
  self->_frontmostProfileIdentifier = v6;

  v8 = [MEMORY[0x277D75990] requestWithRole:*MEMORY[0x277D772C8]];
  v9 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithMode:0];
  [v8 setUserActivity:v9];

  v10 = objc_alloc_init(MEMORY[0x277D75950]);
  v11 = [v4 scene];

  [v10 setRequestingScene:v11];
  [v8 setOptions:v10];
  v12 = [MEMORY[0x277D75128] sharedApplication];
  [v12 activateSceneSessionForRequest:v8 errorHandler:&__block_literal_global_118];

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
  v3 = [(BrowserWindowController *)self _browserWindowsToPersist];
  [(_SFBrowserSavedState *)self->_savedState setBrowserWindows:v3];

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
          v10 = [v9 windowStateData];
          v18 = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          v12 = [v9 savedState];
          [v12 setBrowserWindows:v11];
        }

        v13 = [v9 tabController];
        [v13 saveStateInBackground:0];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_restoreWindowsWithState:(id)a3 shouldMergeAllWindowsIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 windowStates];
  v7 = v6;
  if (v4)
  {
    if ([v6 count] >= 2)
    {
      v8 = [v7 firstObject];
      v9 = [(BrowserWindowController *)self _mergeAndSaveWindowStates:v7 intoWindowState:v8];

      v7 = v9;
    }

    v10 = [v7 firstObject];
    [v10 setSceneID:0];
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

- (id)_mergeAndSaveWindowStates:(id)a3 intoWindowState:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = [(BrowserWindowController *)self _mergeWindowStates:v6 intoWindowState:v7];
  v21 = v6;
  v8 = [v6 mutableCopy];
  [v8 removeObject:v7];
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
        v15 = [MEMORY[0x277D28F08] settings];
        v16 = objc_alloc(MEMORY[0x277CCAD78]);
        v17 = [v14 uuid];
        v18 = [v16 initWithUUIDString:v17];
        [v15 removeWindowWithUUID:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v20;
}

- (id)_mergeWindowStates:(id)a3 intoWindowState:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Merging window states", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB18] array];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke;
  v79[3] = &unk_2781D8940;
  v10 = v6;
  v80 = v10;
  v11 = v8;
  v81 = v11;
  v60 = v5;
  v12 = [v5 safari_reduceObjectsWithInitialValue:v9 usingBlock:v79];

  tabGroupManager = self->_tabGroupManager;
  v14 = [v10 localTabGroup];
  v67 = v10;
  v15 = [v10 localTabGroup];
  v16 = [v15 tabs];
  v17 = [v16 lastObject];
  v58 = v11;
  v59 = v12;
  [(WBTabGroupManager *)tabGroupManager moveTabs:v12 toTabGroup:v14 afterTab:v17 withoutPersistingTabGroupsWithUUIDStrings:v11];

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
        v21 = [v19 identifier];
        v22 = [(WBTabGroupManager *)v20 unnamedTabGroupsForProfileWithIdentifier:v21];

        v23 = [MEMORY[0x277CBEB18] array];
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
                [v23 addObject:v30];
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

        if ([v23 count])
        {
          if (v27)
          {
            goto LABEL_25;
          }

          v34 = MEMORY[0x277D7B540];
          v35 = [(WBTabGroupManager *)self->_tabGroupManager deviceIdentifier];
          v36 = [v34 unnamedTabGroupWithDeviceIdentifier:v35];

          v37 = [v64 identifier];
          [v36 setProfileIdentifier:v37];

          v27 = [(WBTabGroupManager *)self->_tabGroupManager insertUnnamedTabGroup:v36];
          v38 = [v36 uuid];
          [v67 addUnnamedTabGroupUUID:v38];

          v39 = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
          v40 = [v39 saveWindowState:v67];

          if (v40)
          {

LABEL_25:
            v36 = [v23 safari_reduceObjectsUsingBlock:&__block_literal_global_126];
            v41 = self->_tabGroupManager;
            v42 = [v27 tabs];
            v43 = [v42 lastObject];
            [(WBTabGroupManager *)v41 moveTabs:v36 toTabGroup:v27 afterTab:v43 withoutPersistingTabGroupsWithUUIDStrings:0];
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

  v47 = [MEMORY[0x277CBEB18] array];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __62__BrowserWindowController__mergeWindowStates_intoWindowState___block_invoke_2;
  v68[3] = &unk_2781D8940;
  v69 = v67;
  v70 = v46;
  v48 = v46;
  v49 = v67;
  v50 = [v60 safari_reduceObjectsWithInitialValue:v47 usingBlock:v68];

  v51 = self->_tabGroupManager;
  v52 = [v49 privateTabGroup];
  v53 = [v49 privateTabGroup];
  v54 = [v53 tabs];
  v55 = [v54 lastObject];
  [(WBTabGroupManager *)v51 moveTabs:v50 toTabGroup:v52 afterTab:v55 withoutPersistingTabGroupsWithUUIDStrings:v48];

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

- (void)_restoreWindowsFromBrowserSavedState:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_savedState, a3);
  v6 = [v5 browserWindows];
  v7 = [(NSArray *)self->_browserControllers mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
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
          v18 = self;
          v19 = v5;
          v21 = v20 = v11;
          v22 = [v13 sceneID];
          *buf = 138543618;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_INFO, "Loading window from saved state: uuid = %{public}@, sceneID = %{public}@", buf, 0x16u);

          v11 = v20;
          v5 = v19;
          self = v18;
          v7 = v17;
          v10 = v16;
          v9 = v26;
        }

        v23 = [objc_alloc(*(v11 + 3848)) initWithStateData:v13 browserWindowController:self savedState:v5 controlledByAutomation:0];
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

- (void)dispatchNavigationIntent:(id)a3
{
  v3 = a3;
  v4 = +[Application sharedApplication];
  [v4 handleNavigationIntent:v3 completion:0];
}

- (void)handleNavigationIntent:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 sourceWindowUUID];
  v8 = [(BrowserWindowController *)self browserControllerWithUUID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(NSArray *)self->_browserControllers firstObject];
  }

  v11 = v10;

  v12 = [v17 policy];
  if (v12 <= 6)
  {
    if (v12 == 4)
    {
      v13 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithNavigationIntent:v17];
      v14 = objc_alloc_init(MEMORY[0x277D75950]);
      v15 = [v11 scene];
      [v14 setRequestingScene:v15];

      v16 = [MEMORY[0x277D75128] sharedApplication];
      [v16 requestSceneSessionActivation:0 userActivity:v13 options:v14 errorHandler:0];

      if (v6)
      {
        v6[2](v6, 1);
      }
    }

    else
    {
      [v11 handleNavigationIntent:v17 completion:v6];
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