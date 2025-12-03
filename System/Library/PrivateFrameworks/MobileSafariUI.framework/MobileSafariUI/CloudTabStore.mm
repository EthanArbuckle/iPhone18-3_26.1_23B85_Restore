@interface CloudTabStore
+ (id)cloudTabForTabDocument:(uint64_t)document;
+ (id)sharedCloudTabStore;
- (BOOL)closeAllTabsOnDevice:(id)device;
- (BOOL)closeTab:(id)tab onDevice:(id)device;
- (BOOL)cloudTabsAreEnabled;
- (BOOL)tabArrayOfDeviceFromDictionary:(id)dictionary isEqualToOtherDeviceTabsFromDictionary:(id)fromDictionary includingLastViewedTime:(BOOL)time;
- (CloudTabStore)init;
- (CloudTabStoreDelegate)delegate;
- (id)_syncedCloudTabDevicesUsingFilter:(BOOL)filter;
- (id)currentDevice;
- (void)_callFetchCloudKitDataCompletionHandlers;
- (void)_checkCloudTabsEnabledFromAccounts;
- (void)_clearAllDevices;
- (void)_clearTabsForCurrentDeviceWithSyncCompletionHandler:(id)handler;
- (void)_closeRequestedTabIfPossible:(id)possible;
- (void)_cloudKitDataDidUpdateOnServer:(id)server;
- (void)_cloudKitDataWasDeletedAfterAccountChange:(id)change;
- (void)_cloudTabsEnabledDidChange;
- (void)_forceFetchAllCloudTabDevicesWithCompletion:(id)completion;
- (void)_notifyCloudTabStoreDidUpdate;
- (void)_removeConflictingDevice;
- (void)_saveCurrentDeviceCloudTabs:(id)tabs syncCompletionHandler:(id)handler;
- (void)_saveCurrentDeviceCloudTabsNow:(id)now syncCompletionHandler:(id)handler;
- (void)_saveCurrentDeviceTabs:(void *)tabs sceneIDToLocalGroupTabs:(int)groupTabs isForEnteringBackground:(void *)background completion:;
- (void)_waitForInitialCloudKitFetchToComplete:(id)complete;
- (void)didGetCachedDevicesFromCloudKitForCloudTabStore:(id)store;
- (void)didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:(id)store error:(id)error;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)saveCurrentDeviceCloudTabsForEnteringBackground:(id)background completion:(id)completion;
- (void)saveCurrentDeviceTabs:(void *)tabs sceneIDToLocalGroupTabs:;
- (void)saveCurrentDeviceTabsForEnteringBackground:(void *)background sceneIDToLocalGroupTabs:(void *)tabs completion:;
- (void)saveCurrentDeviceTabsFromBrowserState:(id)state syncCompletionHandler:(id)handler;
- (void)startObservingTabStoreStateChanges;
- (void)stopObservingTabStoreStateChanges;
- (void)synchronizeCloudTabDevices;
@end

@implementation CloudTabStore

- (void)startObservingTabStoreStateChanges
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__cloudKitDataDidUpdateOnServer_ name:*MEMORY[0x277D49D20] object:0];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__cloudKitDataWasDeletedAfterAccountChange_ name:*MEMORY[0x277D49D18] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _cloudTabsEnabledDidChange, @"CloudTabStorePrefChangedNotification", 0, 1024);
}

+ (id)sharedCloudTabStore
{
  if (sharedCloudTabStore_onceToken != -1)
  {
    +[CloudTabStore sharedCloudTabStore];
  }

  v3 = sharedCloudTabStore_cloudTabStore;

  return v3;
}

void __36__CloudTabStore_sharedCloudTabStore__block_invoke()
{
  v0 = objc_alloc_init(CloudTabStore);
  v1 = sharedCloudTabStore_cloudTabStore;
  sharedCloudTabStore_cloudTabStore = v0;
}

- (CloudTabStore)init
{
  v8.receiver = self;
  v8.super_class = CloudTabStore;
  v2 = [(WBSCloudTabStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(WBSCloudTabStore *)v2 setWbsDelegate:v2];
    [(CloudTabStore *)v3 _setCloudKitDataNeedsFetching:1];
    [(CloudTabStore *)v3 _checkCloudTabsEnabledFromAccounts];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([standardUserDefaults BOOLForKey:*MEMORY[0x277D4A190]])
    {
      isInternalInstall = [MEMORY[0x277D49A08] isInternalInstall];

      if (isInternalInstall)
      {
        [(CloudTabStore *)v3 _forceFetchAllCloudTabDevicesWithCompletion:0];
      }
    }

    else
    {
    }

    v6 = v3;
  }

  return v3;
}

- (void)_checkCloudTabsEnabledFromAccounts
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = [aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x277CB90D0]];
  v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (v4)
    {
      v6 = @"enabled";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Setting CloudTabs %@ in user defaults", &v8, 0xCu);
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setBool:v4 forKey:@"CloudTabsEnabled"];
  [safari_browserDefaults synchronize];
}

- (BOOL)cloudTabsAreEnabled
{
  if ([MEMORY[0x277D7B838] accessLevel] == 2)
  {
    return 1;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [safari_browserDefaults BOOLForKey:@"CloudTabsEnabled"];

  return v4;
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  if (![(CloudTabStore *)self _cloudKitDataNeedsFetching])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "Bypassing fetching data from CloudKit because we're already up-to-date";
    goto LABEL_8;
  }

  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:0];
  if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce = 1;
    v5.receiver = self;
    v5.super_class = CloudTabStore;
    [(WBSCloudTabStore *)&v5 fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
    return;
  }

  v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Bypassing fetching data from CloudKit because sync agent is not available";
LABEL_8:
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
  }
}

- (void)stopObservingTabStoreStateChanges
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_cloudTabsEnabledDidChange
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults synchronize];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudTabStore:self cloudTabsEnabledDidChange:{-[CloudTabStore cloudTabsAreEnabled](self, "cloudTabsAreEnabled")}];
}

- (void)_cloudKitDataDidUpdateOnServer:(id)server
{
  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit because data was updated on server", v5, 2u);
  }

  [(CloudTabStore *)self fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (void)_cloudKitDataWasDeletedAfterAccountChange:(id)change
{
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Received notification of CloudKit data deletion after account change.", v5, 2u);
  }

  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
}

- (void)_notifyCloudTabStoreDidUpdate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCAB88] notificationWithName:@"CloudTabStoreDidUpdateNotification" object:self userInfo:0];
  [defaultCenter postNotification:v4];

  [(WBSCloudTabStore *)self notifyObserversOfSyncedCloudTabDevicesChanged];
}

- (id)currentDevice
{
  if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    dictionaryRepresentationOfCurrentDeviceInCloudKit = [(WBSCloudTabStore *)self dictionaryRepresentationOfCurrentDeviceInCloudKit];
    if (dictionaryRepresentationOfCurrentDeviceInCloudKit)
    {
      v4 = objc_alloc(MEMORY[0x277D49EC0]);
      _currentDeviceUUID = [(CloudTabStore *)self _currentDeviceUUID];
      uUIDString = [_currentDeviceUUID UUIDString];
      v7 = [v4 initWithDictionary:dictionaryRepresentationOfCurrentDeviceInCloudKit uuid:uUIDString];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CloudTabStore currentDevice];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_syncedCloudTabDevicesUsingFilter:(BOOL)filter
{
  if ([(CloudTabStore *)self cloudTabsAreEnabled])
  {
    v18.receiver = self;
    v18.super_class = CloudTabStore;
    syncedCloudTabDevices = [(WBSCloudTabStore *)&v18 syncedCloudTabDevices];
    v6 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Synchronizing before returning iCloud Tab devices", buf, 2u);
    }

    [(CloudTabStore *)self synchronizeCloudTabDevices];
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v8 = [safari_browserDefaults objectForKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
    [safari_browserDefaults doubleForKey:@"lastModifiedTimeOfCloudTabDeviceUsedForRestoration"];
    if (v8 && filter)
    {
      v10 = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__CloudTabStore__syncedCloudTabDevicesUsingFilter___block_invoke;
      v15[3] = &unk_2781D7A98;
      v16 = v8;
      v17 = v10;
      v11 = [syncedCloudTabDevices safari_filterObjectsUsingBlock:v15];

      v12 = v11;
    }

    else
    {
      v12 = syncedCloudTabDevices;
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "No iCloud Tab devices returned because iCloud Tabs are disabled", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __51__CloudTabStore__syncedCloudTabDevicesUsingFilter___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uuid];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5 && ([v3 lastModified], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceReferenceDate"), v8 = v7, v9 = *(a1 + 40), v6, v8 <= v9))
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    v10 = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v3 uuid];
      v15 = [v3 lastModified];
      [v15 timeIntervalSinceReferenceDate];
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      v20 = v16;
      _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Filtering out device with uuid %{public}@ and last modified time %f", &v17, 0x16u);

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)synchronizeCloudTabDevices
{
  cloudTabsAreEnabled = [(CloudTabStore *)self cloudTabsAreEnabled];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  v5 = v4;
  if (cloudTabsAreEnabled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CloudTabStore synchronizeCloudTabDevices];
    }

    if (internalQueue_onceToken != -1)
    {
      [CloudTabStore synchronizeCloudTabDevices];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CloudTabStore_synchronizeCloudTabDevices__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(internalQueue_internalQueue, block);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Bypassing synchronizing with CloudKit because iCloud Tabs are disabled", buf, 2u);
  }
}

void __43__CloudTabStore_synchronizeCloudTabDevices__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _cloudKitDataNeedsFetching])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CloudTabStore_synchronizeCloudTabDevices__block_invoke_2;
    block[3] = &unk_2781D4D40;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "Bypassing fetching data from CloudKit as part of synchronizing because we're already up-to-date", v3, 2u);
    }
  }
}

uint64_t __43__CloudTabStore_synchronizeCloudTabDevices__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit as part of synchronizing", v4, 2u);
  }

  return [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (void)_waitForInitialCloudKitFetchToComplete:(id)complete
{
  completeCopy = complete;
  if (self->_hasCompletedFetchOfCloudKitDataAtLeastOnce)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CloudTabStore _waitForInitialCloudKitFetchToComplete:];
    }

    completeCopy[2](completeCopy, 1);
    goto LABEL_16;
  }

  if (!self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CloudTabStore _waitForInitialCloudKitFetchToComplete:];
    }

    goto LABEL_15;
  }

  if (![(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CloudTabStore _waitForInitialCloudKitFetchToComplete:];
    }

LABEL_15:
    completeCopy[2](completeCopy, 0);
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CloudTabStore__waitForInitialCloudKitFetchToComplete___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v16 = completeCopy;
  v6 = _Block_copy(aBlock);
  v7 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CloudTabStore _waitForInitialCloudKitFetchToComplete:];
  }

  fetchCloudKitDataCompletionHandlers = self->_fetchCloudKitDataCompletionHandlers;
  if (fetchCloudKitDataCompletionHandlers)
  {
    v9 = _Block_copy(v6);
    [(NSMutableArray *)fetchCloudKitDataCompletionHandlers addObject:v9];
  }

  else
  {
    v12 = MEMORY[0x277CBEB18];
    v9 = _Block_copy(v6);
    v13 = [v12 arrayWithObject:v9];
    v14 = self->_fetchCloudKitDataCompletionHandlers;
    self->_fetchCloudKitDataCompletionHandlers = v13;
  }

LABEL_16:
}

uint64_t __56__CloudTabStore__waitForInitialCloudKitFetchToComplete___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__CloudTabStore__waitForInitialCloudKitFetchToComplete___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_callFetchCloudKitDataCompletionHandlers
{
  v16 = *MEMORY[0x277D85DE8];
  fetchCloudKitDataCompletionHandlers = self->_fetchCloudKitDataCompletionHandlers;
  if (fetchCloudKitDataCompletionHandlers)
  {
    v4 = fetchCloudKitDataCompletionHandlers;
    v5 = self->_fetchCloudKitDataCompletionHandlers;
    self->_fetchCloudKitDataCompletionHandlers = 0;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)closeTab:(id)tab onDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = CloudTabStore;
  v5 = [(WBSCloudTabStore *)&v7 closeTab:tab onDevice:device];
  if (v5)
  {
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
  }

  return v5;
}

- (BOOL)closeAllTabsOnDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CloudTabStore;
  v4 = [(WBSCloudTabStore *)&v6 closeAllTabsOnDevice:device];
  if (v4)
  {
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
  }

  return v4;
}

- (void)_clearAllDevices
{
  if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
  {

    [(WBSCloudTabStore *)self deleteAllDevicesFromCloudKit];
  }
}

- (void)_clearTabsForCurrentDeviceWithSyncCompletionHandler:(id)handler
{
  [(CloudTabStore *)self _saveCurrentDeviceCloudTabs:0 syncCompletionHandler:handler];

  [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
}

- (void)_removeConflictingDevice
{
  if (-[CloudTabStore canSaveCloudTabsForCurrentDevice](self, "canSaveCloudTabsForCurrentDevice") && [MEMORY[0x277D7B838] accessLevel] != 2)
  {
    if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      _currentDeviceUUID = [(CloudTabStore *)self _currentDeviceUUID];
      uUIDString = [_currentDeviceUUID UUIDString];

      v6 = [safari_browserDefaults objectForKey:*MEMORY[0x277D291D0]];
      v7 = [safari_browserDefaults objectForKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
      if ([uUIDString isEqualToString:v6])
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      v9 = v8;
      currentDevice = [MEMORY[0x277D499F0] currentDevice];
      userAssignedName = [currentDevice userAssignedName];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __41__CloudTabStore__removeConflictingDevice__block_invoke;
      v14[3] = &unk_2781D7AC0;
      v15 = v9;
      v12 = v9;
      [(WBSCloudTabStore *)self clearTabsForFirstDuplicateDeviceInCloudKitWithName:userAssignedName passingTest:v14];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CloudTabStore _removeConflictingDevice];
      }
    }
  }
}

uint64_t __41__CloudTabStore__removeConflictingDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  LODWORD(v2) = [v2 isEqualToString:v3];

  return v2 ^ 1;
}

- (void)saveCurrentDeviceCloudTabsForEnteringBackground:(id)background completion:(id)completion
{
  backgroundCopy = background;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__CloudTabStore_saveCurrentDeviceCloudTabsForEnteringBackground_completion___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v8 = completionCopy;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  if (backgroundCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__CloudTabStore_saveCurrentDeviceCloudTabsForEnteringBackground_completion___block_invoke_49;
    v11[3] = &unk_2781D7AE8;
    v11[4] = self;
    v12 = backgroundCopy;
    v13 = v9;
    [(CloudTabStore *)self _waitForInitialCloudKitFetchToComplete:v11];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Saving iCloud Tabs when entering background because tabs are nil", buf, 2u);
    }

    [(CloudTabStore *)self saveCurrentDeviceCloudTabs:0];
    v9[2](v9);
  }
}

uint64_t __76__CloudTabStore_saveCurrentDeviceCloudTabsForEnteringBackground_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__CloudTabStore_saveCurrentDeviceCloudTabsForEnteringBackground_completion___block_invoke_49(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Saving iCloud Tabs when entering background because no CloudKit data is available";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:
    [*(a1 + 32) saveCurrentDeviceCloudTabs:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
    return;
  }

  if (([*(a1 + 32) uniqueDeviceMultiplicity] | 2) == 2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v4 = "Saving iCloud Tabs when entering background because at least one other device is registered or registered devices cannot be determined";
      v5 = &v16;
LABEL_7:
      _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (([*(a1 + 32) currentDeviceIsRegisteredInCloudKit] & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v15 = 0;
    v4 = "Saving iCloud Tabs when entering background with no other devices because this device isn't registered";
    v5 = &v15;
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 safari_dateForKey:@"CloudTabStoreDateOfLastSaveWhenEnteringBackgroundWithNoOtherDevices"];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = v8;
  if (v7 && ([v8 timeIntervalSinceDate:v7], v10 < 86400.0))
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Not saving iCloud Tabs when entering background with no other devices", v14, 2u);
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "Saving iCloud Tabs when entering background with no other devices", v13, 2u);
    }

    [v6 setObject:v9 forKey:@"CloudTabStoreDateOfLastSaveWhenEnteringBackgroundWithNoOtherDevices"];
    [*(a1 + 32) saveCurrentDeviceCloudTabs:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_saveCurrentDeviceCloudTabs:(id)tabs syncCompletionHandler:(id)handler
{
  tabsCopy = tabs;
  handlerCopy = handler;
  if (![(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CloudTabStore _saveCurrentDeviceCloudTabs:syncCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_8;
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_8;
  }

  if (![(CloudTabStore *)self canSaveCloudTabsForCurrentDevice])
  {

    tabsCopy = 0;
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CloudTabStore__saveCurrentDeviceCloudTabs_syncCompletionHandler___block_invoke;
  v9[3] = &unk_2781D7B10;
  objc_copyWeak(&v12, &location);
  tabsCopy = tabsCopy;
  v10 = tabsCopy;
  v11 = handlerCopy;
  [(CloudTabStore *)self _waitForInitialCloudKitFetchToComplete:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_8:
}

void __67__CloudTabStore__saveCurrentDeviceCloudTabs_syncCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _saveCurrentDeviceCloudTabsNow:*(a1 + 32) syncCompletionHandler:*(a1 + 40)];
}

- (void)_saveCurrentDeviceCloudTabsNow:(id)now syncCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  handlerCopy = handler;
  dictionaryRepresentationOfCurrentDeviceInCloudKit = [(WBSCloudTabStore *)self dictionaryRepresentationOfCurrentDeviceInCloudKit];
  if (dictionaryRepresentationOfCurrentDeviceInCloudKit)
  {
LABEL_2:
    v9 = [MEMORY[0x277D7B838] accessLevel] == 2;
    v10 = objc_alloc_init(MEMORY[0x277D49EC8]);
    currentDevice = [MEMORY[0x277D499F0] currentDevice];
    userAssignedName = [currentDevice userAssignedName];
    [v10 setDeviceName:userAssignedName];

    date = [MEMORY[0x277CBEAA8] date];
    [v10 setLastModified:date];

    [v10 setTabs:nowCopy];
    [v10 setEphemeralDevice:v9];
    currentDevice2 = [MEMORY[0x277D499F0] currentDevice];
    deviceTypeIdentifier = [currentDevice2 deviceTypeIdentifier];
    [v10 setDeviceTypeIdentifier:deviceTypeIdentifier];

    dictionaryRepresentation = [v10 dictionaryRepresentation];
    v17 = [dictionaryRepresentation objectForKey:@"DeviceName"];
    v18 = [dictionaryRepresentationOfCurrentDeviceInCloudKit objectForKey:@"DeviceName"];
    if (-[CloudTabStore tabArrayOfDeviceFromDictionary:isEqualToOtherDeviceTabsFromDictionary:includingLastViewedTime:](self, "tabArrayOfDeviceFromDictionary:isEqualToOtherDeviceTabsFromDictionary:includingLastViewedTime:", dictionaryRepresentation, dictionaryRepresentationOfCurrentDeviceInCloudKit, 0) && [v17 isEqual:v18])
    {
      if ([(CloudTabStore *)self tabArrayOfDeviceFromDictionary:dictionaryRepresentation isEqualToOtherDeviceTabsFromDictionary:dictionaryRepresentationOfCurrentDeviceInCloudKit includingLastViewedTime:1])
      {
        v19 = 86400.0;
      }

      else
      {
        v35.receiver = self;
        v35.super_class = CloudTabStore;
        syncedCloudTabDevices = [(WBSCloudTabStore *)&v35 syncedCloudTabDevices];
        v26 = [syncedCloudTabDevices count] > 1;

        v19 = dbl_215A95C50[v26];
      }

      v27 = [dictionaryRepresentation objectForKey:@"LastModified"];
      v28 = [dictionaryRepresentationOfCurrentDeviceInCloudKit objectForKey:@"LastModified"];
      if (v28)
      {
        [v27 timeIntervalSinceDate:v28];
        if (v29 < v19)
        {
          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy, 0);
          }

          goto LABEL_23;
        }
      }
    }

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v31 = [nowCopy count];
    [safari_browserDefaults setInteger:v31 forKey:*MEMORY[0x277D291E0]];

    safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    date2 = [MEMORY[0x277CBEAA8] date];
    [safari_browserDefaults2 safari_setDate:date2 forKey:*MEMORY[0x277D291D8]];

    [(WBSCloudTabStore *)self saveCurrentCloudTabDeviceDictionaryToCloudKit:dictionaryRepresentation completionHandler:handlerCopy];
LABEL_23:

    goto LABEL_24;
  }

  currentDeviceIsRegisteredInCloudKit = [(WBSCloudTabStore *)self currentDeviceIsRegisteredInCloudKit];
  if (nowCopy)
  {
    allSyncedCloudTabDevices = [(CloudTabStore *)self allSyncedCloudTabDevices];
    v22 = [allSyncedCloudTabDevices count];

    v23 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v39 = v22;
      _os_log_impl(&dword_215819000, v23, OS_LOG_TYPE_INFO, "Synced cloud tab devices count when saving: %{public}lu", buf, 0xCu);
    }

    if (v22)
    {
      [(CloudTabStore *)self _removeConflictingDevice];
      goto LABEL_2;
    }

    v34 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      v39 = 0;
      v40 = 1026;
      v41 = currentDeviceIsRegisteredInCloudKit;
      _os_log_impl(&dword_215819000, v34, OS_LOG_TYPE_DEFAULT, "No devices saved, %{public}lu tabs to sync up, CK device registration state: %{public}d", buf, 0x12u);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __70__CloudTabStore__saveCurrentDeviceCloudTabsNow_syncCompletionHandler___block_invoke;
    v36[3] = &unk_2781D4D90;
    v37 = handlerCopy;
    [(CloudTabStore *)self _forceFetchAllCloudTabDevicesWithCompletion:v36];
  }

  else
  {
    v24 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v39) = currentDeviceIsRegisteredInCloudKit;
      _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "No previous device or cloud tabs to sync up, CK device registration state: %{public}d", buf, 8u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

LABEL_24:
}

uint64_t __70__CloudTabStore__saveCurrentDeviceCloudTabsNow_syncCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_forceFetchAllCloudTabDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CloudTabStore *)self cloudTabsAreEnabled])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = *MEMORY[0x277D4A178];
    v7 = [standardUserDefaults safari_dateForKey:*MEMORY[0x277D4A178]];
    v8 = v7;
    if (v7)
    {
      [v7 timeIntervalSinceNow];
      v10 = v9 > -604800.0;
    }

    else
    {
      v10 = 1;
    }

    v12 = *MEMORY[0x277D4A190];
    isInternalInstall = [standardUserDefaults BOOLForKey:*MEMORY[0x277D4A190]];
    if (isInternalInstall)
    {
      isInternalInstall = [MEMORY[0x277D49A08] isInternalInstall];
    }

    if ((v10 | isInternalInstall))
    {
      date = [MEMORY[0x277CBEAA8] date];
      [standardUserDefaults safari_setDate:date forKey:v6];

      [standardUserDefaults removeObjectForKey:v12];
      v15 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Force fetching all cloud tabs", buf, 2u);
      }

      self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce = 0;
      self->_hasCompletedFetchOfCloudKitDataAtLeastOnce = 0;
      [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
      mEMORY[0x277D49B18] = [MEMORY[0x277D49B18] sharedProxy];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke;
      v18[3] = &unk_2781D56B0;
      v18[4] = self;
      v19 = completionCopy;
      [mEMORY[0x277D49B18] clearServerChangeTokenWithCompletionHandler:v18];
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v17, OS_LOG_TYPE_DEFAULT, "Skipping force fetch since attempted recently", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Skipping force fetch since cloud tabs disabled", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke_2;
  v2[3] = &unk_2781D56B0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke_3;
  v3[3] = &unk_2781D54A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _waitForInitialCloudKitFetchToComplete:v3];
}

uint64_t __61__CloudTabStore__forceFetchAllCloudTabDevicesWithCompletion___block_invoke_3(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v8[0] = 67240448;
    v8[1] = a2;
    v9 = 1026;
    v10 = [v5 currentDeviceIsRegisteredInCloudKit];
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Force fetch complete with data available: %{public}d, current device is registered in CloudKit: %{public}d", v8, 0xEu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)tabArrayOfDeviceFromDictionary:(id)dictionary isEqualToOtherDeviceTabsFromDictionary:(id)fromDictionary includingLastViewedTime:(BOOL)time
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__CloudTabStore_tabArrayOfDeviceFromDictionary_isEqualToOtherDeviceTabsFromDictionary_includingLastViewedTime___block_invoke;
  aBlock[3] = &__block_descriptor_33_e26___NSArray_16__0__NSArray_8l;
  timeCopy = time;
  fromDictionaryCopy = fromDictionary;
  dictionaryCopy = dictionary;
  v8 = _Block_copy(aBlock);
  v9 = [dictionaryCopy objectForKeyedSubscript:@"Tabs"];

  v10 = v8[2](v8, v9);
  v11 = [fromDictionaryCopy objectForKeyedSubscript:@"Tabs"];

  v12 = v8[2](v8, v11);
  v13 = [v10 isEqual:v12];

  return v13;
}

id __111__CloudTabStore_tabArrayOfDeviceFromDictionary_isEqualToOtherDeviceTabsFromDictionary_includingLastViewedTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_56];
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_59];
  }

  v6 = v5;

  return v6;
}

uint64_t __111__CloudTabStore_tabArrayOfDeviceFromDictionary_isEqualToOtherDeviceTabsFromDictionary_includingLastViewedTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277D7B5D8];
  v5 = a3;
  v6 = [a2 safari_numberForKey:v4];
  v7 = [v5 safari_numberForKey:v4];

  if (v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 != 0;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = [v6 compare:v7];
  }

  return v8;
}

id __111__CloudTabStore_tabArrayOfDeviceFromDictionary_isEqualToOtherDeviceTabsFromDictionary_includingLastViewedTime___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setObject:0 forKeyedSubscript:*MEMORY[0x277D7B5D8]];

  return v2;
}

- (void)saveCurrentDeviceTabsFromBrowserState:(id)state syncCompletionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  windowStates = [state windowStates];
  if ([windowStates count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = windowStates;
    v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v28)
    {
      v26 = handlerCopy;
      v27 = *v38;
      selfCopy = self;
      v25 = windowStates;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v37 + 1) + 8 * i);
          localTabGroup = [v32 localTabGroup];
          if (localTabGroup)
          {
            v29 = localTabGroup;
            v30 = i;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            allTabs = [localTabGroup allTabs];
            v11 = [allTabs countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v34;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v34 != v13)
                  {
                    objc_enumerationMutation(allTabs);
                  }

                  v15 = *(*(&v33 + 1) + 8 * j);
                  v16 = [v15 url];
                  if (v16)
                  {
                    uuid = [v15 uuid];
                    if ([uuid length])
                    {
                      v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuid];
                      if (v18)
                      {
                        v19 = [objc_alloc(MEMORY[0x277D49ED0]) initWithURL:v16];
                        [v19 setUuid:v18];
                        title = [v15 title];
                        [v19 setTitle:title];

                        [v19 setShowingReader:{objc_msgSend(v15, "isShowingReader")}];
                        sceneID = [v32 sceneID];
                        [v19 setSceneID:sceneID];

                        [v15 lastViewedTime];
                        [v19 setLastViewedTime:?];
                        v22 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v19];
                        if (v22)
                        {
                          [array addObject:v22];
                        }
                      }
                    }
                  }
                }

                v12 = [allTabs countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v12);
            }

            windowStates = v25;
            handlerCopy = v26;
            self = selfCopy;
            localTabGroup = v29;
            i = v30;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v28);
    }

    if ([array count])
    {
      [(CloudTabStore *)self _saveCurrentDeviceCloudTabs:array syncCompletionHandler:handlerCopy];
    }

    else
    {
      [(CloudTabStore *)self _clearTabsForCurrentDeviceWithSyncCompletionHandler:handlerCopy];
    }
  }

  else
  {
    [(CloudTabStore *)self _clearTabsForCurrentDeviceWithSyncCompletionHandler:handlerCopy];
  }
}

- (void)didGetCachedDevicesFromCloudKitForCloudTabStore:(id)store
{
  v4 = objc_alloc_init(MEMORY[0x277D49B60]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CloudTabStore_didGetCachedDevicesFromCloudKitForCloudTabStore___block_invoke;
  v6[3] = &unk_2781D4D40;
  v6[4] = self;
  [v4 setHandler:v6];
  if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cloudTabStoreDidGetCachedDevicesFromCloudKit:self];
  }
}

- (void)didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:(id)store error:(id)error
{
  errorCopy = error;
  self->_hasCompletedFetchOfCloudKitDataAtLeastOnce = 1;
  if ([(WBSCloudTabStore *)self syncAgentIsAvailable])
  {
    self->_didAttemptToCloseAtLeastOneTab = 0;
    [(WBSCloudTabStore *)self handleCloseTabRequestsFromCloudKit];
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cloudTabStore:self didUpdateDevicesFromCloudKitWithError:errorCopy];
    if (self->_didAttemptToCloseAtLeastOneTab)
    {
      [WeakRetained saveCloudTabsUsingCloudTabStore:self];
    }

    [(CloudTabStore *)self _callFetchCloudKitDataCompletionHandlers];
  }

  else
  {
    [(CloudTabStore *)self _callFetchCloudKitDataCompletionHandlers];
  }
}

- (void)_closeRequestedTabIfPossible:(id)possible
{
  v13 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    tabUUID = [possibleCopy tabUUID];
    uUIDString = [tabUUID UUIDString];
    v11 = 138543362;
    v12 = uUIDString;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to close tab with UUID %{public}@", &v11, 0xCu);
  }

  v9 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CloudTabStore *)v9 _closeRequestedTabIfPossible:possibleCopy];
  }

  self->_didAttemptToCloseAtLeastOneTab = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudTabStore:self didReceiveTabCloseRequest:possibleCopy];
}

- (CloudTabStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)cloudTabForTabDocument:(uint64_t)document
{
  v2 = a2;
  objc_opt_self();
  urlForSharing = [v2 urlForSharing];
  titleForSharing = [v2 titleForSharing];
  if (![titleForSharing length])
  {
    safari_userVisibleString = [urlForSharing safari_userVisibleString];

    titleForSharing = safari_userVisibleString;
  }

  v6 = [objc_alloc(MEMORY[0x277D49ED0]) initWithURL:urlForSharing];
  [v6 setTitle:titleForSharing];
  [v6 setShowingReader:{objc_msgSend(v2, "isShowingReader")}];
  readerContext = [v2 readerContext];
  scrollPositionInformation = [readerContext scrollPositionInformation];
  [v6 setReaderScrollPosition:scrollPositionInformation];

  [v2 lastViewedTime];
  [v6 setLastViewedTime:?];
  v9 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v6];

  return v9;
}

- (void)_saveCurrentDeviceTabs:(void *)tabs sceneIDToLocalGroupTabs:(int)groupTabs isForEnteringBackground:(void *)background completion:
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = a2;
  tabsCopy = tabs;
  backgroundCopy = background;
  if (self)
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v18;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          cloudTab = [*(*(&v21 + 1) + 8 * v15) cloudTab];
          [array safari_addObjectUnlessNil:cloudTab];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __116__CloudTabStore_SafariAdditions___saveCurrentDeviceTabs_sceneIDToLocalGroupTabs_isForEnteringBackground_completion___block_invoke;
    v19[3] = &unk_2781DBC68;
    v17 = array;
    v20 = v17;
    [tabsCopy enumerateKeysAndObjectsUsingBlock:v19];
    if (groupTabs)
    {
      [self saveCurrentDeviceCloudTabsForEnteringBackground:v17 completion:backgroundCopy];
    }

    else
    {
      [self saveCurrentDeviceCloudTabs:v17];
      if (backgroundCopy)
      {
        backgroundCopy[2](backgroundCopy);
      }
    }
  }
}

void __116__CloudTabStore_SafariAdditions___saveCurrentDeviceTabs_sceneIDToLocalGroupTabs_isForEnteringBackground_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x277D49ED0]);
        v11 = [v9 syncableURL];
        v12 = [v10 initWithURL:v11];

        v13 = objc_alloc(MEMORY[0x277CCAD78]);
        v14 = [v9 uuid];
        v15 = [v13 initWithUUIDString:v14];
        [v12 setUuid:v15];

        v16 = [v9 title];
        [v12 setTitle:v16];

        [v12 setSceneID:v5];
        [v9 lastViewedTime];
        [v12 setLastViewedTime:?];
        v17 = *(a1 + 32);
        v18 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v12];
        [v17 safari_addObjectUnlessNil:v18];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)saveCurrentDeviceTabs:(void *)tabs sceneIDToLocalGroupTabs:
{
  v6 = a2;
  tabsCopy = tabs;
  if (self)
  {
    [(CloudTabStore *)self _saveCurrentDeviceTabs:v6 sceneIDToLocalGroupTabs:tabsCopy isForEnteringBackground:0 completion:0];
  }
}

- (void)saveCurrentDeviceTabsForEnteringBackground:(void *)background sceneIDToLocalGroupTabs:(void *)tabs completion:
{
  v9 = a2;
  backgroundCopy = background;
  tabsCopy = tabs;
  if (self)
  {
    [(CloudTabStore *)self _saveCurrentDeviceTabs:v9 sceneIDToLocalGroupTabs:backgroundCopy isForEnteringBackground:1 completion:tabsCopy];
  }
}

- (void)_closeRequestedTabIfPossible:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 url];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Tab URL: %{private}@", &v5, 0xCu);
}

@end