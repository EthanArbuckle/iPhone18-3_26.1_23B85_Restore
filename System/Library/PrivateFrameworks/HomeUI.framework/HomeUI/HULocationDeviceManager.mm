@interface HULocationDeviceManager
+ (HULocationDeviceManager)sharedInstance;
- (HULocationDeviceManager)init;
- (NAFuture)activeFMFDeviceFuture;
- (NAFuture)thisDeviceFuture;
- (id)updateActiveLocationDeviceToThisDevice;
- (void)_updateActiveFMFDevice:(id)device;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)removeObserver:(id)observer;
- (void)startUpdatingFindMyPreferences;
@end

@implementation HULocationDeviceManager

+ (HULocationDeviceManager)sharedInstance
{
  if (qword_281121F70 != -1)
  {
    dispatch_once(&qword_281121F70, &__block_literal_global_183);
  }

  v3 = qword_281121F68;

  return v3;
}

void __41__HULocationDeviceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HULocationDeviceManager);
  v1 = qword_281121F68;
  qword_281121F68 = v0;
}

- (HULocationDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = HULocationDeviceManager;
  v2 = [(HULocationDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC6HomeUI19FindMyLocateSession);
    findMyLocateSession = v2->_findMyLocateSession;
    v2->_findMyLocateSession = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    [(HULocationDeviceManager *)v2 startUpdatingFindMyPreferences];
  }

  return v2;
}

- (void)dealloc
{
  [(HULocationDeviceManager *)self stopUpdatingFindMyPreferences];
  v3.receiver = self;
  v3.super_class = HULocationDeviceManager;
  [(HULocationDeviceManager *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HULocationDeviceManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HULocationDeviceManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)startUpdatingFindMyPreferences
{
  objc_initWeak(&location, self);
  [(FindMyLocateSession *)self->_findMyLocateSession startMonitoringPrefrenceChangesWithCompletionHandler:&__block_literal_global_192];
  findMyLocateSession = self->_findMyLocateSession;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HULocationDeviceManager_startUpdatingFindMyPreferences__block_invoke_193;
  v4[3] = &unk_277DBE288;
  objc_copyWeak(&v5, &location);
  [(FindMyLocateSession *)findMyLocateSession setMeDeviceUpdateCallback:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__HULocationDeviceManager_startUpdatingFindMyPreferences__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "findmylocate: startMonitoringPrefrenceChanges error %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: startMonitoringPrefrenceChanges completed successfully", &v5, 2u);
  }
}

void __57__HULocationDeviceManager_startUpdatingFindMyPreferences__block_invoke_193(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: didUpdateMeDevice: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HULocationDeviceManager_startUpdatingFindMyPreferences__block_invoke_194;
  v6[3] = &unk_277DBA860;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __57__HULocationDeviceManager_startUpdatingFindMyPreferences__block_invoke_194(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didChangeActiveLocationSharingDevice:*(a1 + 32)];
}

void __56__HULocationDeviceManager_stopUpdatingFindMyPreferences__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "findmylocate: stopMonitoringPrefrenceChanges error %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "findmylocate: stopMonitoringPrefrenceChanges completed successfully", &v5, 2u);
  }
}

- (NAFuture)activeFMFDeviceFuture
{
  activeFMFDeviceFuture = self->_activeFMFDeviceFuture;
  if (!activeFMFDeviceFuture)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    findMyLocateSession = [(HULocationDeviceManager *)self findMyLocateSession];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HULocationDeviceManager_activeFMFDeviceFuture__block_invoke;
    v12[3] = &unk_277DBE2B0;
    v6 = v4;
    v13 = v6;
    [findMyLocateSession getActiveLocationSharingDeviceWithCompletionHandler:v12];

    v7 = self->_activeFMFDeviceFuture;
    self->_activeFMFDeviceFuture = v6;
    v8 = v6;

    activeFMFDeviceFuture = self->_activeFMFDeviceFuture;
  }

  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [(NAFuture *)activeFMFDeviceFuture reschedule:mainThreadScheduler];

  return v10;
}

void __48__HULocationDeviceManager_activeFMFDeviceFuture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
LABEL_7:
    v11 = v10;
    [v9 finishWithError:v10];

    goto LABEL_8;
  }

  if (!v5)
  {
    v9 = *(a1 + 32);
    if (v6)
    {
      [v9 finishWithError:v6];
      goto LABEL_8;
    }

    v10 = [MEMORY[0x277CCA9B8] na_genericError];
    goto LABEL_7;
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "findmylocate: successfully fetched me device %@", &v12, 0xCu);
  }

  [*(a1 + 32) finishWithResult:v5];
LABEL_8:
}

- (id)updateActiveLocationDeviceToThisDevice
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "findmylocate: Updating active location device to this device", buf, 2u);
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  findMyLocateSession = [(HULocationDeviceManager *)self findMyLocateSession];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke;
  v15[3] = &unk_277DB8DF8;
  v15[4] = buf;
  [findMyLocateSession getThisDeviceWithCompletionHandler:v15];

  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  findMyLocateSession2 = [(HULocationDeviceManager *)self findMyLocateSession];
  errorOnlyCompletionHandlerAdapter = [v5 errorOnlyCompletionHandlerAdapter];
  [findMyLocateSession2 setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:errorOnlyCompletionHandlerAdapter];

  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v5 reschedule:mainThreadScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke_202;
  v14[3] = &unk_277DBE2D8;
  v14[4] = self;
  v14[5] = buf;
  v10 = [v9 addSuccessBlock:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke_204;
  v13[3] = &unk_277DBE300;
  v13[4] = buf;
  v11 = [v10 addFailureBlock:v13];

  _Block_object_dispose(buf, 8);

  return v11;
}

void __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "findmylocate: Failed to update active location device to this device, no thisDevice Id", v8, 2u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

uint64_t __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke_202(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "findmylocate: Successfully updated active location device to this device: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _updateActiveFMFDevice:*(*(*(a1 + 40) + 8) + 40)];
}

void __65__HULocationDeviceManager_updateActiveLocationDeviceToThisDevice__block_invoke_204(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "Failed to update active location device to this device: %@", &v4, 0xCu);
  }
}

- (NAFuture)thisDeviceFuture
{
  thisDeviceFuture = self->_thisDeviceFuture;
  if (!thisDeviceFuture)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    findMyLocateSession = [(HULocationDeviceManager *)self findMyLocateSession];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__HULocationDeviceManager_thisDeviceFuture__block_invoke;
    v12[3] = &unk_277DBE2B0;
    v6 = v4;
    v13 = v6;
    [findMyLocateSession getThisDeviceWithCompletionHandler:v12];

    v7 = self->_thisDeviceFuture;
    self->_thisDeviceFuture = v6;
    v8 = v6;

    thisDeviceFuture = self->_thisDeviceFuture;
  }

  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [(NAFuture *)thisDeviceFuture reschedule:mainThreadScheduler];

  return v10;
}

void __43__HULocationDeviceManager_thisDeviceFuture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
LABEL_7:
    v11 = v10;
    [v9 finishWithError:v10];

    goto LABEL_8;
  }

  if (!v5)
  {
    v9 = *(a1 + 32);
    if (v6)
    {
      [v9 finishWithError:v6];
      goto LABEL_8;
    }

    v10 = [MEMORY[0x277CCA9B8] na_genericError];
    goto LABEL_7;
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "findmylocate: successfully fetched this device %@", &v12, 0xCu);
  }

  [*(a1 + 32) finishWithResult:v5];
LABEL_8:
}

- (void)_updateActiveFMFDevice:(id)device
{
  deviceCopy = device;
  activeFMFDeviceFuture = self->_activeFMFDeviceFuture;
  if (activeFMFDeviceFuture && ([(NAFuture *)activeFMFDeviceFuture isFinished]& 1) == 0)
  {
    v5 = self->_activeFMFDeviceFuture;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  }

  v6 = v5;
  if (deviceCopy)
  {
    [(NAFuture *)v5 finishWithResult:deviceCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [(NAFuture *)v6 finishWithError:v7];
  }

  [(HULocationDeviceManager *)self setActiveFMFDeviceFuture:v6];
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "findmylocate: didChangeActiveLocationSharingDevice: %@", buf, 0xCu);
  }

  [(HULocationDeviceManager *)self _updateActiveFMFDevice:deviceCopy];
  objc_initWeak(buf, self);
  activeLocationDeviceFuture = [(HULocationDeviceManager *)self activeLocationDeviceFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HULocationDeviceManager_didChangeActiveLocationSharingDevice___block_invoke;
  v8[3] = &unk_277DBE288;
  objc_copyWeak(&v9, buf);
  v7 = [activeLocationDeviceFuture addSuccessBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __64__HULocationDeviceManager_didChangeActiveLocationSharingDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [WeakRetained observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 locationDeviceManager:WeakRetained didUpdateActiveLocationDevice:v3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end