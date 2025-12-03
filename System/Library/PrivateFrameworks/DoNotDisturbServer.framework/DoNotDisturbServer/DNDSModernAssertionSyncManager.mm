@interface DNDSModernAssertionSyncManager
- (BOOL)_maintainMetadataBackingStore;
- (BOOL)_saveMetadataToBackingStore;
- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (DNDSAssertionSyncManagerDataSource)dataSource;
- (DNDSAssertionSyncManagerDelegate)delegate;
- (DNDSModernAssertionSyncManager)initWithClientDetailsProvider:(id)provider localSyncService:(id)service cloudSyncService:(id)syncService keybag:(id)keybag;
- (void)_loadMetadataFromBackingStore;
- (void)_queue_handleMessage:(id)message withVersionNumber:(unint64_t)number fromDeviceIdentifier:(id)identifier;
- (void)_queue_sendStateSnapshotToPairedDevices:(id)devices force:(BOOL)force;
- (void)_queue_updateDevices;
- (void)_saveMetadataToBackingStore;
- (void)dealloc;
- (void)forceUpdateAllDevices;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)resume;
- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (void)updateDevices:(id)devices force:(BOOL)force shouldFuzz:(BOOL)fuzz;
- (void)updateForModeAssertionUpdateResult:(id)result;
- (void)updateForStateUpdate:(id)update;
@end

@implementation DNDSModernAssertionSyncManager

- (DNDSModernAssertionSyncManager)initWithClientDetailsProvider:(id)provider localSyncService:(id)service cloudSyncService:(id)syncService keybag:(id)keybag
{
  providerCopy = provider;
  serviceCopy = service;
  syncServiceCopy = syncService;
  keybagCopy = keybag;
  v30.receiver = self;
  v30.super_class = DNDSModernAssertionSyncManager;
  v15 = [(DNDSModernAssertionSyncManager *)&v30 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.donotdisturb.server.ModernAssertionSyncManager", v16);
    v18 = *(v15 + 1);
    *(v15 + 1) = v17;

    v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v15 + 1));
    v20 = *(v15 + 2);
    *(v15 + 2) = v19;

    objc_storeStrong(v15 + 3, service);
    objc_storeStrong(v15 + 4, syncService);
    objc_storeStrong(v15 + 5, provider);
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = *(v15 + 9);
    *(v15 + 9) = v21;

    *(v15 + 80) = 0;
    v23 = *(v15 + 12);
    *(v15 + 11) = 0;
    *(v15 + 12) = 0;

    *(v15 + 26) = 0;
    v24 = [DNDSJSONBackingStore alloc];
    v25 = objc_opt_class();
    dnds_assertionSyncMetadataFileURL = [MEMORY[0x277CBEBC0] dnds_assertionSyncMetadataFileURL];
    v27 = [(DNDSJSONBackingStore *)v24 initWithRecordClass:v25 fileURL:dnds_assertionSyncMetadataFileURL versionNumber:0];
    v28 = *(v15 + 7);
    *(v15 + 7) = v27;

    [v15 _loadMetadataFromBackingStore];
    if ([v15 _maintainMetadataBackingStore])
    {
      [v15 _saveMetadataToBackingStore];
    }

    if (([keybagCopy hasUnlockedSinceBoot] & 1) == 0)
    {
      objc_storeStrong(v15 + 8, keybag);
      [*(v15 + 8) addObserver:v15];
    }

    DNDSRegisterSysdiagnoseDataProvider(v15);
  }

  return v15;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSModernAssertionSyncManager;
  [(DNDSModernAssertionSyncManager *)&v3 dealloc];
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DNDSModernAssertionSyncManager_resume__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __40__DNDSModernAssertionSyncManager_resume__block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) delegate];

  if (!v2)
  {
    [*(*(a1 + 32) + 24) setDelegate:?];
    [*(*(a1 + 32) + 24) resume];
  }

  v3 = [*(*(a1 + 32) + 32) delegate];

  if (!v3)
  {
    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(*(a1 + 32) + 32) resume];
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = *(*(a1 + 32) + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__DNDSModernAssertionSyncManager_resume__block_invoke_2;
  handler[3] = &unk_278F8AC08;
  objc_copyWeak(&v19, &location);
  dispatch_source_set_event_handler(v4, handler);
  dispatch_source_set_timer(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(*(a1 + 32) + 16));
  v5 = [*(a1 + 32) dataSource];
  v6 = [v5 currentlyActivePairedDeviceForSyncManager:*(a1 + 32)];
  v7 = [v5 pairedDevicesForSyncManager:*(a1 + 32)];
  v8 = [v7 allObjects];

  v9 = DNDSLogModernAssertionSync;
  v10 = os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      *v17 = 0;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Sending forced update to local paired device on resume.", v17, 2u);
    }

    v11 = *(a1 + 32);
    v22[0] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v11 updateDevices:v12 force:1 shouldFuzz:1];

    v21 = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v14 = [v8 bs_differenceWithArray:v13];

    v8 = v14;
  }

  else if (v10)
  {
    *v17 = 0;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Skipping initial state sync on resume because there isn't a paired device.", v17, 2u);
  }

  if ([v8 count])
  {
    v15 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Sending update to cloud devices on resume.", v17, 2u);
    }

    [*(a1 + 32) updateDevices:v8 force:0 shouldFuzz:1];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __40__DNDSModernAssertionSyncManager_resume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateDevices];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  v8[1] = *MEMORY[0x277D85DE8];
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v5 = [dataSource currentlyActivePairedDeviceForSyncManager:self];

  if (v5)
  {
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(DNDSModernAssertionSyncManager *)self updateDevices:v6 force:1 shouldFuzz:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateForModeAssertionUpdateResult:(id)result
{
  v55[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  assertions = [resultCopy assertions];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke;
  v48[3] = &unk_278F8B010;
  v48[4] = &v49;
  v8 = [assertions bs_containsObjectPassingTest:v48];

  if (v8)
  {
    goto LABEL_3;
  }

  invalidations = [resultCopy invalidations];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_2;
  v47[3] = &unk_278F8B038;
  v47[4] = &v49;
  v10 = [invalidations bs_containsObjectPassingTest:v47];

  if (v10)
  {
LABEL_3:
    v11 = [dataSource pairedDevicesForSyncManager:self];
    allObjects = [v11 allObjects];
    goto LABEL_4;
  }

  v15 = [dataSource currentlyActivePairedDeviceForSyncManager:self];
  v11 = v15;
  if (v15)
  {
    v16 = [v15 supportsKettle] ^ 1;
    v17 = [v11 isICloudEnabled] ^ 1;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (!v17)
  {
    allObjects = 0;
    goto LABEL_4;
  }

LABEL_15:
  deviceIdentifier = [v11 deviceIdentifier];
  assertions2 = [resultCopy assertions];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_3;
  v45[3] = &unk_278F8A0B0;
  v20 = deviceIdentifier;
  v46 = v20;
  v38 = [assertions2 bs_containsObjectPassingTest:v45];

  if (v38)
  {
    v21 = 1;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    invalidations2 = [resultCopy invalidations];
    v3 = v43;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_4;
    v43[3] = &unk_278F8A950;
    v44 = v20;
    v21 = [invalidations2 bs_containsObjectPassingTest:v43];

    v36 = &v44;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  invalidations3 = [resultCopy invalidations];
  v24 = [invalidations3 bs_containsObjectPassingTest:&__block_literal_global_17];

  if (v24)
  {
    v25 = 1;
    v26 = 1;
    v27 = 1;
    goto LABEL_24;
  }

LABEL_21:
  assertions3 = [resultCopy assertions];
  v3 = v41;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_6;
  v41[3] = &unk_278F8A0B0;
  v29 = v20;
  v42 = v29;
  v30 = [assertions3 bs_containsObjectPassingTest:v41];

  v37 = &v42;
  if (v30)
  {
    v27 = 0;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    invalidations4 = [resultCopy invalidations];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_7;
    v39[3] = &unk_278F8A950;
    v40 = v29;
    v25 = [invalidations4 bs_containsObjectPassingTest:v39];

    v26 = 0;
    v27 = 0;
    v3 = &v40;
  }

LABEL_24:
  if ((v21 & v25) == 1)
  {
    v32 = [dataSource pairedDevicesForSyncManager:self];
    allObjects2 = [v32 allObjects];
  }

  else
  {
    if (!v21)
    {
      if (v25)
      {
        v55[0] = v11;
        allObjects = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
      }

      else
      {
        allObjects = 0;
      }

      goto LABEL_29;
    }

    v34 = [dataSource pairedDevicesForSyncManager:self];
    v32 = [v34 mutableCopy];

    v35 = [MEMORY[0x277CBEB98] setWithObject:v11];
    [v32 minusSet:v35];

    allObjects2 = [v32 allObjects];
  }

  allObjects = allObjects2;

LABEL_29:
  if ((v26 & 1) == 0)
  {
  }

  if ((v27 & 1) == 0)
  {
  }

  if ((v38 & 1) == 0)
  {
  }

LABEL_4:
  if ([allObjects count])
  {
    [(DNDSModernAssertionSyncManager *)self updateDevices:allObjects force:0 shouldFuzz:*(v50 + 24)];
  }

  else
  {
    v13 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = resultCopy;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Skipping update as it should not require sync: result=%{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v49, 8);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if ([v3 isClientScheduled])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v3 isUserInitiated] ^ 1;
    }

    *(*(*(a1 + 32) + 8) + 24) &= v7;
    v6 = [v3 isInternalScheduled] ^ 1;
  }

  return v6;
}

BOOL __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) &= [v3 isUserInvalidated] ^ 1;
    v7 = [v3 assertion];
    if ([v7 isInternalScheduled])
    {
      v6 = [v3 reason] != 1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];
  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = [v3 isInternalScheduled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 source];
    v6 = [v5 deviceIdentifier];
    v4 = [v6 isEqual:*(a1 + 32)];
  }

  return v4;
}

BOOL __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reason] == 1)
  {
    v3 = [v2 source];
    v4 = [v3 deviceIdentifier];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 deviceIdentifier];
  if (v5)
  {
    v6 = [v3 source];
    v7 = [v6 deviceIdentifier];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 isInternalScheduled] ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __69__DNDSModernAssertionSyncManager_updateForModeAssertionUpdateResult___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 source];
    v6 = [v5 deviceIdentifier];
    if (v6)
    {
      v7 = [v3 source];
      v8 = [v7 deviceIdentifier];
      v4 = [v8 isEqual:*(a1 + 32)] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)updateForStateUpdate:(id)update
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([update reason] == 3)
  {
    dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
    v5 = [dataSource currentlyActivePairedDeviceForSyncManager:self];

    if (v5 && ([v5 supportsKettle] & 1) == 0)
    {
      v8[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      [(DNDSModernAssertionSyncManager *)self updateDevices:v6];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceUpdateAllDevices
{
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v4 = [dataSource pairedDevicesForSyncManager:self];
  allObjects = [v4 allObjects];

  [(DNDSModernAssertionSyncManager *)self updateDevices:allObjects force:1 shouldFuzz:1];
}

- (void)updateDevices:(id)devices force:(BOOL)force shouldFuzz:(BOOL)fuzz
{
  fuzzCopy = fuzz;
  forceCopy = force;
  v32 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  os_unfair_lock_lock(&self->_timerLock);
  if (forceCopy)
  {
    self->_timerQueuedForceUpdate = 1;
  }

  [(NSMutableSet *)self->_timerQueuedDevices addObjectsFromArray:devicesCopy];

  if (!self->_timerQueuedTransaction)
  {
    v9 = os_transaction_create();
    timerQueuedTransaction = self->_timerQueuedTransaction;
    self->_timerQueuedTransaction = v9;
  }

  if (fuzzCopy)
  {
    v11 = +[DNDSIDSServerBagValues resolvedScheduledActivityUpdateFuzzMilliseconds];
    v12 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithUnsignedLongLong:v11];
      [v15 floatValue];
      v17 = [v13 numberWithDouble:v16 / 1000.0];
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Delaying sync of fuzzable change by %@ seconds.", buf, 0xCu);
    }

    fuzzTimer = self->_fuzzTimer;
    v19 = dispatch_walltime(0, 1000000 * v11);
    dispatch_source_set_timer(fuzzTimer, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    v20 = +[DNDSIDSServerBagValues resolvedActivityUpdateCoalescingSeconds];
    self->_timerCurrentDelay += v20;
    v21 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = v21;
      v24 = [v22 numberWithUnsignedLongLong:v20];
      *buf = 138412290;
      v31 = v24;
      _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_INFO, "Delaying sync for %@ seconds to coalesce update.", buf, 0xCu);
    }

    v25 = self->_fuzzTimer;
    v26 = dispatch_walltime(0, 1000000000 * v20);
    dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    timerCurrentDelay = self->_timerCurrentDelay;
    if (timerCurrentDelay > 60 * v20)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = timerCurrentDelay;
      if (updateDevices_force_shouldFuzz__onceToken != -1)
      {
        dispatch_once(&updateDevices_force_shouldFuzz__onceToken, block);
      }
    }
  }

  os_unfair_lock_unlock(&self->_timerLock);
  v28 = *MEMORY[0x277D85DE8];
}

void __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke(uint64_t a1)
{
  v2 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke_cold_1(a1, v2);
  }

  _DNDSRequestRadar(@"Focus detected excessive change rate.", 0, 1, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModernAssertionSyncManager.m", 471);
}

- (void)_queue_updateDevices
{
  dispatch_assert_queue_V2(self->_queue);
  dispatch_suspend(self->_fuzzTimer);
  os_unfair_lock_lock(&self->_timerLock);
  allObjects = [(NSMutableSet *)self->_timerQueuedDevices allObjects];
  v4 = [MEMORY[0x277CBEB58] set];
  timerQueuedDevices = self->_timerQueuedDevices;
  self->_timerQueuedDevices = v4;

  timerQueuedForceUpdate = self->_timerQueuedForceUpdate;
  self->_timerQueuedForceUpdate = 0;
  timerQueuedTransaction = self->_timerQueuedTransaction;
  self->_timerQueuedTransaction = 0;

  self->_timerCurrentDelay = 0;
  os_unfair_lock_unlock(&self->_timerLock);
  if (+[DNDSIDSServerBagValues resolvedActivityUpdateDisabled])
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _queue_updateDevices];
    }
  }

  else
  {
    [(DNDSModernAssertionSyncManager *)self _queue_sendStateSnapshotToPairedDevices:allObjects force:timerQueuedForceUpdate];
  }

  dispatch_resume(self->_fuzzTimer);
}

- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  serviceCopy = service;
  typeCopy = type;
  identifierCopy = identifier;
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v15 = dataSource;
  if (self->_cloudSyncService != serviceCopy || ![dataSource isCloudSyncDisabledForSyncManager:self])
  {
    if (typeCopy)
    {
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
      }

      goto LABEL_8;
    }

    if (self->_cloudSyncService == serviceCopy)
    {
      v17 = 1;
      goto LABEL_20;
    }

    v18 = [v15 currentlyActivePairedDeviceForSyncManager:self];
    deviceIdentifier = [v18 deviceIdentifier];
    v20 = [deviceIdentifier isEqualToString:identifierCopy];

    assertionSyncProtocolVersion = [v18 assertionSyncProtocolVersion];
    if (v20)
    {
      if (assertionSyncProtocolVersion == number)
      {
        v17 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
      }
    }

    else if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:];
    }

    v17 = 0;
    goto LABEL_19;
  }

  v16 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Rejecting message because cloud sync is disabled.", v23, 2u);
  }

LABEL_8:
  v17 = 0;
LABEL_20:

  return v17;
}

- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  messageCopy = message;
  identifierCopy = identifier;
  v14 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    v24 = serviceCopy;
    v25 = 2114;
    v26 = messageCopy;
    v27 = 2048;
    numberCopy = number;
    v29 = 2114;
    v30 = identifierCopy;
    _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_INFO, "Received message from sync service; syncService=%p, message=%{public}@, versionNumber=%lu, deviceIdentifier=%{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __115__DNDSModernAssertionSyncManager_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke;
  v19[3] = &unk_278F8AA28;
  v19[4] = self;
  v20 = messageCopy;
  v21 = identifierCopy;
  numberCopy2 = number;
  v16 = identifierCopy;
  v17 = messageCopy;
  dispatch_sync(queue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleMessage:(id)message withVersionNumber:(unint64_t)number fromDeviceIdentifier:(id)identifier
{
  v54 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
  v11 = [dataSource syncManager:self deviceForDeviceIdentifier:identifierCopy];

  if (v11)
  {
    if ((number & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      v12 = [DNDSModeAssertionStore newWithSyncDictionaryRepresentation:messageCopy];
      v13 = [v12 mutableCopy];

      v14 = [DNDSModeAssertionStore messageDateForSyncDictionaryRepresentation:messageCopy];
      if (v13)
      {
        lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
        deviceIdentifier = [v11 deviceIdentifier];
        v17 = [lastReceivedStoreDate objectForKeyedSubscript:deviceIdentifier];
        v18 = v17;
        if (v17)
        {
          distantPast = v17;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v20 = distantPast;

        if ([v20 compare:v14] != -1)
        {
          v21 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v49 = identifierCopy;
            v50 = 2114;
            v51 = v14;
            v52 = 2114;
            v53 = v20;
            _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Received store from %{public}@ is older (%{public}@) than the last received store (%{public}@).", buf, 0x20u);
          }
        }

        v42 = v20;
        lastReceivedStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
        deviceIdentifier2 = [v11 deviceIdentifier];
        [lastReceivedStoreDate2 setObject:v14 forKeyedSubscript:deviceIdentifier2];

        date = [MEMORY[0x277CBEAA8] date];
        [v13 sanitizeDatesForThreshold:date];

        [v13 resolveSourcesForSyncFromPairedDevice:v11];
        lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
        deviceIdentifier3 = [v11 deviceIdentifier];
        v27 = [lastSentStoreDate objectForKeyedSubscript:deviceIdentifier3];
        v28 = v27;
        if (v27)
        {
          distantPast2 = v27;
        }

        else
        {
          distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v30 = distantPast2;

        lastUpdateDate = [v13 lastUpdateDate];
        v32 = [lastUpdateDate compare:v30];

        delegate = [(DNDSModernAssertionSyncManager *)self delegate];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __94__DNDSModernAssertionSyncManager__queue_handleMessage_withVersionNumber_fromDeviceIdentifier___block_invoke;
        v43[3] = &unk_278F8B080;
        v34 = v13;
        v44 = v34;
        v35 = v11;
        v45 = v35;
        v14 = v14;
        v46 = v14;
        [delegate syncManager:self performModeAssertionUpdatesWithHandler:v43];

        if (v32 == -1)
        {
          v36 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            log = v36;
            deviceIdentifier4 = [v35 deviceIdentifier];
            lastUpdateDate2 = [v34 lastUpdateDate];
            *buf = 138543874;
            v49 = deviceIdentifier4;
            v50 = 2114;
            v51 = lastUpdateDate2;
            v52 = 2114;
            v53 = v30;
            _os_log_impl(&dword_24912E000, log, OS_LOG_TYPE_DEFAULT, "Incoming store from %{public}@ was older (%{public}@) than the store it replaced (%{public}@). Will re-send...", buf, 0x20u);
          }

          v47 = v35;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
          [(DNDSModernAssertionSyncManager *)self updateDevices:v38 force:1 shouldFuzz:1];
        }

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
      }

      v14 = 0;
    }

    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    [DNDSModernAssertionSyncManager _queue_handleMessage:withVersionNumber:fromDeviceIdentifier:];
  }

LABEL_26:

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __94__DNDSModernAssertionSyncManager__queue_handleMessage_withVersionNumber_fromDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = a1;
  v4 = [*(a1 + 32) invalidations];
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v59 + 1) + 8 * i) assertion];
        v10 = [v9 UUID];
        v11 = [v9 details];
        v12 = [v9 source];
        v13 = [v9 startDate];
        v14 = [v3 takeAssertionWithUUID:v10 details:v11 source:v12 startDate:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v6);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = [*(v50 + 32) invalidationRequests];
  v16 = [v15 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v56;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v3 invalidateAssertionsForRequest:*(*(&v55 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v17);
  }

  v21 = MEMORY[0x277D05938];
  v22 = [*(v50 + 40) deviceIdentifier];
  v23 = [v21 predicateForModeAssertionsWithDeviceIdentifier:v22];

  v49 = v23;
  v48 = [v3 modeAssertionsMatchingPredicate:v23];
  v47 = [v48 bs_mapNoNulls:&__block_literal_global_57];
  v24 = [v47 mutableCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = [*(v50 + 32) assertions];
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v52;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v51 + 1) + 8 * k);
        v31 = [v30 UUID];
        v32 = [v30 details];
        v33 = [v30 source];
        v34 = [v30 startDate];
        v35 = [v3 takeAssertionWithUUID:v31 details:v32 source:v33 startDate:v34];

        [v24 removeObject:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v27);
  }

  v36 = [v24 count];
  if (v36)
  {
    v37 = v36;
    v38 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v64 = v37;
      v65 = 2114;
      v66 = v24;
      _os_log_impl(&dword_24912E000, v38, OS_LOG_TYPE_DEFAULT, "%lu assertion(s) were abandoned by the remote device, will invalidate: UUIDs=%{public}@", buf, 0x16u);
    }

    v39 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v24];
    v40 = objc_alloc(MEMORY[0x277D05988]);
    v41 = [*(v50 + 40) deviceIdentifier];
    v42 = [v40 initWithClientIdentifier:@"com.apple.donotdisturb.sync" deviceIdentifier:v41];

    v43 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v39 requestDate:*(v50 + 48) details:0 source:v42 reason:0 reasonOverride:0];
    v44 = [v3 invalidateAssertionsForRequest:v43];
  }

  v45 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_queue_sendStateSnapshotToPairedDevices:(id)devices force:(BOOL)force
{
  forceCopy = force;
  v64 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  devicesCopy = devices;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained pairedDevicesForSyncManager:self];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke;
  v55[3] = &unk_278F8B0A8;
  v37 = v8;
  v56 = v37;
  v9 = [devicesCopy bs_filter:v55];

  delegate = [(DNDSModernAssertionSyncManager *)self delegate];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__9;
  v53 = __Block_byref_object_dispose__9;
  v54 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_66;
  v48[3] = &unk_278F8B0D0;
  v48[4] = &v49;
  [delegate syncManager:self performModeAssertionUpdatesWithHandler:v48];
  v10 = DNDSLogModernAssertionSync;
  v11 = os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT);
  if (forceCopy)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v58 = v9;
    v12 = "Sending forced update to devices: %@";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v58 = v9;
    v12 = "Sending update to devices: %@";
  }

  _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_7:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v44 objects:v63 count:16];
  if (v13)
  {
    v41 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = [v50[5] mutableCopy];
        v17 = DNDSLogModernAssertionSync;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          deviceIdentifier = [v15 deviceIdentifier];
          *buf = 138412546;
          v58 = deviceIdentifier;
          v59 = 2112;
          v60 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_INFO, "Generating message for sync to %@: %@", buf, 0x16u);
        }

        [v16 filterForSyncToPairedDevice:v15 clientDetailsProvider:self->_clientDetailsProvider];
        [v16 unresolveSourcesForSyncToPairedDevice:v15];
        dataSource = [(DNDSModernAssertionSyncManager *)self dataSource];
        [v16 downgradeAssertionsIfNeededForSyncToPairedDevice:v15 dataSource:dataSource syncManager:self];

        lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
        deviceIdentifier2 = [v15 deviceIdentifier];
        v22 = [lastSentStoreDate objectForKeyedSubscript:deviceIdentifier2];
        v23 = v22;
        if (v22)
        {
          distantPast = v22;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v25 = distantPast;

        lastUpdateDate = [v16 lastUpdateDate];
        if ([v25 compare:lastUpdateDate] == -1 || forceCopy)
        {
          v28 = -[_DNDSSyncMessageGroup initWithServiceType:protocolVersion:store:]([_DNDSSyncMessageGroup alloc], "initWithServiceType:protocolVersion:store:", [v15 syncServiceType], objc_msgSend(v15, "assertionSyncProtocolVersion"), v16);
          v29 = [dictionary objectForKeyedSubscript:v28];
          v30 = v29 == 0;

          if (v30)
          {
            v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            [dictionary setObject:v31 forKeyedSubscript:v28];
          }

          v32 = [dictionary objectForKeyedSubscript:v28];
          [v32 addObject:v15];
        }

        else
        {
          v27 = DNDSLogModernAssertionSync;
          if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v58 = v15;
            v59 = 2114;
            v60 = lastUpdateDate;
            v61 = 2114;
            v62 = v25;
            _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Skipping sending store to %@ as it is the same as or earlier than the previous (current: %{public}@; previous: %{public}@)", buf, 0x20u);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v44 objects:v63 count:16];
    }

    while (v13);
  }

  if ([dictionary count])
  {
    allValues = [dictionary allValues];
    bs_flatten = [allValues bs_flatten];

    v35 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = bs_flatten;
      _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Preparing to sync to %@", buf, 0xCu);
    }

    [delegate syncManager:self prepareForSyncToDevices:bs_flatten];
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70;
  v43[3] = &unk_278F8B168;
  v43[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v43];
  if ([dictionary count])
  {
    [(DNDSModernAssertionSyncManager *)self _saveMetadataToBackingStore];
  }

  _Block_object_dispose(&v49, 8);
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v6 bs_compactMap:&__block_literal_global_73];
  v9 = [v7 setWithArray:v8];

  v10 = [v5 store];
  v11 = [v10 mutableCopy];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [v11 updateConfigurationModificationDatesWithDataSource:WeakRetained syncManager:*(a1 + 32)];

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v11 syncDictionaryRepresentationWithDate:v13 messageUUID:v14];

  v16 = DNDSLogModernAssertionSync;
  if (v15)
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = DNDSStringFromSyncServiceType([v5 serviceType]);
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "protocolVersion")}];
      *buf = 138543874;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Syncing on %{public}@ version %@: %@", buf, 0x20u);
    }

    v20 = [v5 serviceType];
    if (v20 == 1)
    {
      v21 = 24;
    }

    else
    {
      if (v20 != 2)
      {
        v22 = 0;
        goto LABEL_12;
      }

      v21 = 32;
    }

    v22 = *(*(a1 + 32) + v21);
LABEL_12:
    objc_initWeak(buf, *(a1 + 32));
    v23 = [v5 protocolVersion];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75;
    v25[3] = &unk_278F8B140;
    v26 = v5;
    v27 = v9;
    objc_copyWeak(&v29, buf);
    v28 = v11;
    [v22 sendMessage:v15 withVersionNumber:v23 messageType:0 toDestinations:v27 identifyingCompletionHandler:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);

    goto LABEL_13;
  }

  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70_cold_1();
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_76;
      block[3] = &unk_278F8B118;
      v14 = a1[4];
      v15 = v7;
      v16 = v10;
      v17 = a1[6];
      v18 = a1[5];
      dispatch_sync(v11, block);
    }
  }

  else
  {
    v12 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75_cold_1(a1, v12, v8);
    }
  }
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_76(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogModernAssertionSync;
  if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = DNDSStringFromSyncServiceType([v3 serviceType]);
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_INFO, "Sending %{public}@ assertions pending with identifier %{public}@", &v12, 0x16u);
  }

  v7 = [_DNDSPendingMessageRecipients alloc];
  v8 = [*(a1 + 56) lastUpdateDate];
  v9 = [(_DNDSPendingMessageRecipients *)v7 initWithLastUpdateDate:v8 deviceIdentifiers:*(a1 + 64)];
  v10 = [*(*(a1 + 48) + 48) pendingLastSentStoreDate];
  [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_loadMetadataFromBackingStore
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_maintainMetadataBackingStore
{
  v50 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke;
  v44[3] = &unk_278F8B190;
  v6 = date;
  v45 = v6;
  v7 = array;
  v46 = v7;
  [lastReceivedStoreDate bs_each:v44];

  v8 = [v7 count];
  v35 = v8 != 0;
  if (v8)
  {
    v9 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Retiring device(s) from last seen metadata: %@", buf, 0xCu);
    }

    lastReceivedStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastReceivedStoreDate];
    [lastReceivedStoreDate2 removeObjectsForKeys:v7];
  }

  array2 = [MEMORY[0x277CBEB18] array];

  lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke_84;
  v41[3] = &unk_278F8B190;
  v36 = v6;
  v42 = v36;
  v13 = array2;
  v43 = v13;
  [lastSentStoreDate bs_each:v41];

  v34 = v13;
  if ([v13 count])
  {
    v14 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v13;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Retiring device(s) from last sent metadata: %@", buf, 0xCu);
    }

    lastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata lastSentStoreDate];
    [lastSentStoreDate2 removeObjectsForKeys:v13];

    v35 = 1;
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
  v18 = [pendingLastSentStoreDate countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(pendingLastSentStoreDate);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        selfCopy = self;
        pendingLastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
        v25 = [pendingLastSentStoreDate2 objectForKeyedSubscript:v22];
        lastUpdateDate = [v25 lastUpdateDate];
        [v36 timeIntervalSinceDate:lastUpdateDate];
        v28 = v27;

        if (v28 > 86400.0)
        {
          [array3 addObject:v22];
        }

        self = selfCopy;
      }

      v19 = [pendingLastSentStoreDate countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v19);
  }

  v29 = v35;
  if ([array3 count])
  {
    v30 = DNDSLogModernAssertionSync;
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = array3;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Retiring pending message(s) from metadata: %@", buf, 0xCu);
    }

    pendingLastSentStoreDate3 = [(DNDSModernAssertionSyncMetadataStore *)self->_metadata pendingLastSentStoreDate];
    [pendingLastSentStoreDate3 removeObjectsForKeys:array3];

    v29 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

void __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:a3];
  if (v5 > 3024000.0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __63__DNDSModernAssertionSyncManager__maintainMetadataBackingStore__block_invoke_84(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:a3];
  if (v5 > 3024000.0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (BOOL)_saveMetadataToBackingStore
{
  v16 = *MEMORY[0x277D85DE8];
  metadata = self->_metadata;
  metadataBackingStore = self->_metadataBackingStore;
  v13 = 0;
  v4 = [(DNDSBackingStore *)metadataBackingStore writeRecord:metadata error:&v13];
  v5 = v13;
  if (v4)
  {
    if (v4 == 1)
    {
      v10 = DNDSLogModernAssertionSync;
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v5;
        v7 = "Failed to write assertion sync metadata store, but error can be ignored; error=%{public}@";
        v8 = v10;
        v9 = 12;
        goto LABEL_8;
      }
    }

    else if (v4 == 2)
    {
      v6 = DNDSLogModernAssertionSync;
      if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Wrote out assertion sync metadata store.";
        v8 = v6;
        v9 = 2;
LABEL_8:
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogModernAssertionSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSModernAssertionSyncManager _saveMetadataToBackingStore];
    }

    _DNDSRequestRadar(@"Failed to write sync metadata", v5, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModernAssertionSyncManager.m", 885);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4 == 2;
}

void __66__DNDSModernAssertionSyncManager_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1)
{
  v1 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) lastReceivedStoreDate];
  v43 = v1;
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v53;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = MEMORY[0x277CCA968];
          v11 = [v4 objectForKeyedSubscript:v9];
          v12 = [v10 localizedStringFromDate:v11 dateStyle:1 timeStyle:1];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"device %@", v9];
          [v3 setObject:v12 forKeyedSubscript:v13];
        }

        v6 = [v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v6);
    }

    v14 = [v3 copy];
    v1 = v43;
    [*(v43 + 40) setObject:v14 forKeyedSubscript:@"last-received-dates"];
  }

  v15 = [*(*(v1 + 32) + 48) lastSentStoreDate];

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v48 + 1) + 8 * j);
          v23 = MEMORY[0x277CCA968];
          v24 = [v17 objectForKeyedSubscript:v22];
          v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:1];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"device %@", v22];
          [v16 setObject:v25 forKeyedSubscript:v26];
        }

        v19 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v19);
    }

    v27 = [v16 copy];
    v1 = v43;
    [*(v43 + 40) setObject:v27 forKeyedSubscript:@"last-sent-dates"];

    v15 = v41;
  }

  v28 = [*(*(v1 + 32) + 48) pendingLastSentStoreDate];

  if ([v28 count])
  {
    v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v28, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v42 = v28;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v45;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v44 + 1) + 8 * k);
          v36 = [v30 objectForKeyedSubscript:v35];
          v37 = [v36 description];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"message %@", v35];
          [v29 setObject:v37 forKeyedSubscript:v38];
        }

        v32 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v32);
    }

    v39 = [v29 copy];
    [*(v43 + 40) setObject:v39 forKeyedSubscript:@"pending-messages"];

    v28 = v42;
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (DNDSAssertionSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSAssertionSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__DNDSModernAssertionSyncManager_updateDevices_force_shouldFuzz___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedLongLong:v3];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v4, OS_LOG_TYPE_ERROR, "Coalescing timer has delayed sync for %@ seconds. This may indicate a rogue trigger.", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Rejecting incoming message as it is not from the active device: deviceIdentifier=%{public}@, pairedDevice=%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)syncService:shouldAcceptIncomingMessage:withVersionNumber:messageType:fromDeviceIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleMessage:withVersionNumber:fromDeviceIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleMessage:withVersionNumber:fromDeviceIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_70_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__DNDSModernAssertionSyncManager__queue_sendStateSnapshotToPairedDevices_force___block_invoke_75_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = DNDSStringFromSyncServiceType([v5 serviceType]);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  v12 = 2112;
  v13 = v9;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_24912E000, v6, OS_LOG_TYPE_ERROR, "Error sending %{public}@ assertions to %@: error=%{public}@", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_saveMetadataToBackingStore
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end