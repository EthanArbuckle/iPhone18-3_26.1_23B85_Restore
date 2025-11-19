@interface DNDSMeDeviceService
- (BOOL)_queue_saveDataToBackingStoreWithError:(id *)a3;
- (BOOL)_saveDataToBackingStoreWithError:(id *)a3;
- (DNDMeDeviceState)meDeviceState;
- (DNDSMeDeviceService)init;
- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4;
- (void)_loadDataFromBackingStore;
- (void)_queue_fetchMeDevice;
- (void)_queue_processMeDevice:(id)a3 error:(id)a4;
- (void)addListener:(id)a3;
- (void)devicesChanged;
- (void)meDeviceChanged;
- (void)removeListener:(id)a3;
- (void)startMonitoringMeDeviceChanges;
@end

@implementation DNDSMeDeviceService

- (DNDSMeDeviceService)init
{
  v21.receiver = self;
  v21.super_class = DNDSMeDeviceService;
  v2 = [(DNDSMeDeviceService *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC18DoNotDisturbServer19FindMyLocateSession);
    findMyLocateSession = v2->_findMyLocateSession;
    v2->_findMyLocateSession = v3;

    [(DNDSMeDeviceService *)v2 startMonitoringMeDeviceChanges];
    v5 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.me-device.queue"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.donotdisturb.DNDSMeDeviceService.call-out", v7);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    listeners = v2->_listeners;
    v2->_listeners = v10;

    meDeviceState = v2->_meDeviceState;
    v2->_meDeviceState = 0;

    v13 = [DNDSJSONBackingStore alloc];
    v14 = objc_opt_class();
    v15 = [MEMORY[0x277CBEBC0] dnds_meDeviceStoreFileURL];
    v16 = [(DNDSJSONBackingStore *)v13 initWithRecordClass:v14 fileURL:v15 versionNumber:0];
    backingStore = v2->_backingStore;
    v2->_backingStore = v16;

    [(DNDSMeDeviceService *)v2 _loadDataFromBackingStore];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, fmlMeDeviceChangedNotificationCallback, @"FMLMeDeviceChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v19 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v19, v2, fmlDevicesChangedNotificationCallback, @"FMLDevicesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    DNDSRegisterSysdiagnoseDataProvider(v2);
  }

  return v2;
}

- (void)startMonitoringMeDeviceChanges
{
  objc_initWeak(&location, self);
  [(FindMyLocateSession *)self->_findMyLocateSession startMonitoringPreferencesChangesWithCompletionHandler:&__block_literal_global_13];
  findMyLocateSession = self->_findMyLocateSession;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__DNDSMeDeviceService_startMonitoringMeDeviceChanges__block_invoke_14;
  v4[3] = &unk_278F8AB78;
  objc_copyWeak(&v5, &location);
  [(FindMyLocateSession *)findMyLocateSession setMeDeviceUpdateCallback:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__DNDSMeDeviceService_startMonitoringMeDeviceChanges__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDSLogMeDeviceService;
  v4 = os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "findmylocate: startMonitoringPreferencesChanges error %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "findmylocate: startMonitoringPreferencesChanges completed successfully";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__DNDSMeDeviceService_startMonitoringMeDeviceChanges__block_invoke_14(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdateMeDevice %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__DNDSMeDeviceService_startMonitoringMeDeviceChanges__block_invoke_15;
  v9[3] = &unk_278F89F48;
  v9[4] = WeakRetained;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (DNDMeDeviceState)meDeviceState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__DNDSMeDeviceService_meDeviceState__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__DNDSMeDeviceService_meDeviceState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)meDeviceChanged
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DNDSMeDeviceService_meDeviceChanged__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __38__DNDSMeDeviceService_meDeviceChanged__block_invoke(uint64_t a1)
{
  v2 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "received notification that 'Me Device' status changed fetching Me Device", v4, 2u);
  }

  return [*(a1 + 32) _queue_fetchMeDevice];
}

- (void)devicesChanged
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DNDSMeDeviceService_devicesChanged__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __37__DNDSMeDeviceService_devicesChanged__block_invoke(uint64_t a1)
{
  v2 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "received notification that 'Me Device' devices changed fetching Me Device", v4, 2u);
  }

  return [*(a1 + 32) _queue_fetchMeDevice];
}

- (void)addListener:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DNDSMeDeviceService_addListener___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, v7);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__DNDSMeDeviceService_removeListener___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, v7);
}

- (void)_queue_fetchMeDevice
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "findmylocate: fetching current 'Me Device'", buf, 2u);
  }

  objc_initWeak(buf, self);
  findMyLocateSession = self->_findMyLocateSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__DNDSMeDeviceService__queue_fetchMeDevice__block_invoke;
  v5[3] = &unk_278F8ABA0;
  objc_copyWeak(&v6, buf);
  [(FindMyLocateSession *)findMyLocateSession getActiveLocationSharingDeviceWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __43__DNDSMeDeviceService__queue_fetchMeDevice__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSMeDeviceService__queue_fetchMeDevice__block_invoke_2;
  block[3] = &unk_278F89E30;
  block[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

- (void)_queue_processMeDevice:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "findmylocate: processing 'Me Device', determining status", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_workQueue);
  if (v7)
  {
    v9 = DNDSLogMeDeviceService;
    if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "findmylocate: error determining current 'Me Device' status; error=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if ([v6 isThisDevice])
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = objc_alloc(MEMORY[0x277D05928]);
    v12 = [v6 deviceName];
    v13 = [v11 initWithStatus:v10 name:v12];

    v14 = DNDSLogMeDeviceService;
    if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      [v13 meDeviceStatus];
      v16 = DNDMeDeviceStatusToString();
      v17 = [v13 meDeviceName];
      *buf = 138543618;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "findmylocate: current 'Me Device' state determined; meDeviceStatus=%{public}@, meDeviceName=%{public}@", buf, 0x16u);
    }

    if (([(DNDMeDeviceState *)self->_meDeviceState isEqual:v13]& 1) != 0)
    {
      v7 = 0;
    }

    else
    {
      objc_storeStrong(&self->_meDeviceState, v13);
      v26 = 0;
      [(DNDSMeDeviceService *)self _queue_saveDataToBackingStoreWithError:&v26];
      v7 = v26;
      v18 = [(NSMutableSet *)self->_listeners copy];
      calloutQueue = self->_calloutQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__DNDSMeDeviceService__queue_processMeDevice_error___block_invoke;
      v22[3] = &unk_278F89E30;
      v23 = v13;
      v24 = v18;
      v25 = self;
      v20 = v18;
      dispatch_async(calloutQueue, v22);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __52__DNDSMeDeviceService__queue_processMeDevice_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    [v3 meDeviceStatus];
    v5 = DNDMeDeviceStatusToString();
    v6 = [*(a1 + 32) meDeviceName];
    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "notifying listeners of a change to 'Me Device' state; meDeviceStatus=%{public}@, meDeviceName=%{public}@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) meDeviceService:*(a1 + 48) didReceiveMeDeviceStateUpdate:{*(a1 + 32), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_loadDataFromBackingStore
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  v26 = 0;
  v3 = [v2 readRecordWithError:&v26];
  v4 = v26;
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v3;

  v7 = *(*(a1 + 32) + 48);
  if (!v7)
  {
    if (v4)
    {
      v8 = DNDSLogMeDeviceService;
      if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_ERROR))
      {
        __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke_cold_1(v4, v8);
      }

      _DNDSRequestRadar(@"Failed to load current 'Me Device' database", v4, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSMeDeviceService.m", 221);
    }

    v9 = objc_alloc_init(DNDSMeDeviceStore);
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    v7 = *(*(a1 + 32) + 48);
  }

  v12 = [v7 meDeviceStatus];
  v13 = [v12 unsignedIntegerValue];

  v14 = [*(*(a1 + 32) + 48) meDeviceName];
  v15 = [objc_alloc(MEMORY[0x277D05928]) initWithStatus:v13 name:v14];
  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  *(v16 + 32) = v15;

  if (!v13 || ((v13 & 0xFFFFFFFFFFFFFFFELL) == 2 ? (v18 = v14 == 0) : (v18 = 0), v18))
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 8);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke_26;
    v25[3] = &unk_278F89ED0;
    v25[4] = v22;
    dispatch_async(v23, v25);
  }

  else
  {
    v19 = DNDSLogMeDeviceService;
    if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = DNDMeDeviceStatusToString();
      *buf = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v14;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "findmylocate: current 'Me Device' state loaded from store; meDeviceStatus=%{public}@, meDeviceName=%{public}@", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke_26(uint64_t a1)
{
  v2 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "findmylocate: current 'Me Device' state unknown / incomplete; requesting active device", v4, 2u);
  }

  return [*(a1 + 32) _queue_fetchMeDevice];
}

- (BOOL)_saveDataToBackingStoreWithError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DNDSMeDeviceService__saveDataToBackingStoreWithError___block_invoke;
  block[3] = &unk_278F8ABC8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(workQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __56__DNDSMeDeviceService__saveDataToBackingStoreWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_saveDataToBackingStoreWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_saveDataToBackingStoreWithError:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [(DNDSMeDeviceStore *)self->_store mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDMeDeviceState meDeviceStatus](self->_meDeviceState, "meDeviceStatus")}];
  [v5 setMeDeviceStatus:v6];

  v7 = [(DNDMeDeviceState *)self->_meDeviceState meDeviceName];
  [v5 setMeDeviceName:v7];

  backingStore = self->_backingStore;
  v20 = 0;
  v9 = [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v20];
  v10 = v20;
  if (v9)
  {
    if (v9 == 1)
    {
      v15 = DNDSLogMeDeviceService;
      if (!os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v22 = v10;
      v12 = "failed to write 'Me Device' store, but error can be ignored; error=%{public}@";
      v13 = v15;
      v14 = 12;
    }

    else
    {
      if (v9 != 2 || (v11 = DNDSLogMeDeviceService, !os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_9:
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *buf = 0;
      v12 = "wrote out 'Me Device' store to file";
      v13 = v11;
      v14 = 2;
    }

    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_9;
  }

  v19 = DNDSLogMeDeviceService;
  if (os_log_type_enabled(DNDSLogMeDeviceService, OS_LOG_TYPE_ERROR))
  {
    [(DNDSMeDeviceService *)v10 _queue_saveDataToBackingStoreWithError:v19];
  }

  _DNDSRequestRadar(@"Failed to write 'Me Device' store", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSMeDeviceService.m", 268);
  if (a3)
  {
LABEL_10:
    if (v10)
    {
      v16 = v10;
      *a3 = v10;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v9 == 2;
}

- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v7 = [(DNDSMeDeviceService *)self meDeviceState];
  [v7 meDeviceStatus];
  v8 = DNDMeDeviceStatusToString();
  [v6 setObject:v8 forKeyedSubscript:@"status"];

  if (!a4)
  {
    v9 = [v7 meDeviceName];
    [v6 setObject:v9 forKeyedSubscript:@"name"];
  }

  v10 = [v6 copy];

  return v10;
}

void __48__DNDSMeDeviceService__loadDataFromBackingStore__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "failed to load current 'Me Device' database, will request a radar; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_saveDataToBackingStoreWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "failed to write 'Me Device' store, will request radar; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end