@interface COIDSPresence
+ (id)presenceForMesh:(id)mesh;
- (COIDSPresence)initWithPresenceProvider:(id)provider;
- (NSString)identifier;
- (id)_recordForDevice:(id)device;
- (void)_informObserver:(id)observer aboutRecord:(id)record added:(BOOL)added;
- (void)_retrainSubscriptionWithRetryCounter:(unint64_t)counter;
- (void)_start;
- (void)_synchronizeInitiate;
- (void)_synchronizePresence:(BOOL)presence;
- (void)_usersChangedInHome:(id)home;
- (void)_usersChangedInHomeNotification:(id)notification;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)presentDevicesChangedForPresence:(id)presence;
- (void)removeObserver:(id)observer;
- (void)setRetryTimer:(id)timer;
@end

@implementation COIDSPresence

+ (id)presenceForMesh:(id)mesh
{
  v19 = *MEMORY[0x277D85DE8];
  meshCopy = mesh;
  os_unfair_lock_lock(&presenceForMesh__lock);
  v4 = presenceForMesh__registries;
  if (!presenceForMesh__registries)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = presenceForMesh__registries;
    presenceForMesh__registries = dictionary;

    v4 = presenceForMesh__registries;
  }

  v7 = [v4 objectForKey:meshCopy];
  if (!v7)
  {
    v8 = [COIDSPresence alloc];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__COIDSPresence_presenceForMesh___block_invoke;
    v13[3] = &unk_278E16970;
    v9 = meshCopy;
    v14 = v9;
    v7 = [(COIDSPresence *)v8 initWithPresenceProvider:v13];
    [presenceForMesh__registries setObject:v7 forKey:v9];
  }

  v10 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = meshCopy;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ returned for mesh %{public}@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&presenceForMesh__lock);
  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

id __33__COIDSPresence_presenceForMesh___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = [objc_alloc(MEMORY[0x277D680F8]) initWithServiceIdentifier:v3];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.statuskit.coordination.messaging", *(a1 + 32)];
  v6 = [objc_alloc(MEMORY[0x277D680E0]) initWithPresenceIdentifier:v5 options:v4];
  v7 = IDSCopyLocalDeviceUniqueID();
  [v6 co_SetIDSIdentifier:v7];

  return v6;
}

- (COIDSPresence)initWithPresenceProvider:(id)provider
{
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = COIDSPresence;
  v5 = [(COIDSPresence *)&v20 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.COBrowserRegistry", v8);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    v11 = providerCopy[2](providerCopy);
    presenceChannel = v5->_presenceChannel;
    v5->_presenceChannel = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    co_IDSIdentifier = [(SKPresence *)v5->_presenceChannel co_IDSIdentifier];
    [dictionary setObject:co_IDSIdentifier forKey:@"ids"];
    v15 = [objc_alloc(MEMORY[0x277D68110]) initWithDictionary:dictionary];
    presencePayload = v5->_presencePayload;
    v5->_presencePayload = v15;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observers = v5->_observers;
    v5->_observers = weakToStrongObjectsMapTable;

    [(COIDSPresence *)v5 _start];
  }

  return v5;
}

- (NSString)identifier
{
  presenceChannel = [(COIDSPresence *)self presenceChannel];
  presenceIdentifier = [presenceChannel presenceIdentifier];

  return presenceIdentifier;
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  workQueue = [(COIDSPresence *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__COIDSPresence_addObserver_queue___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = queueCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = queueCopy;
  dispatch_async(workQueue, block);
}

void __35__COIDSPresence_addObserver_queue___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) observers];
  v3 = [v2 count];

  v4 = [*(a1 + 32) observers];
  [v4 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    *buf = 138543618;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ observer '%p' added", buf, 0x16u);
  }

  if (!v3)
  {
    [*(a1 + 32) _synchronizeInitiate];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(a1 + 32) devices];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(a1 + 32) _recordForDevice:*(*(&v15 + 1) + 8 * v12)];
        if (v13)
        {
          [*(a1 + 32) _informObserver:*(a1 + 48) aboutRecord:v13 added:1];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  workQueue = [(COIDSPresence *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__COIDSPresence_removeObserver___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(workQueue, v7);
}

void __32__COIDSPresence_removeObserver___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) observers];
  v3 = [v2 count];

  v4 = [*(a1 + 32) observers];
  [v4 removeObjectForKey:*(a1 + 40)];

  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 138543618;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ observer '%p' removed", &v11, 0x16u);
  }

  if (v3 == 1)
  {
    v8 = [*(a1 + 32) observers];
    v9 = [v8 count];

    if (!v9)
    {
      [*(a1 + 32) _synchronizeInitiate];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setRetryTimer:(id)timer
{
  timerCopy = timer;
  retryTimer = self->_retryTimer;
  p_retryTimer = &self->_retryTimer;
  v6 = retryTimer;
  v9 = timerCopy;
  if (retryTimer != timerCopy)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_retryTimer, timer);
    if (*p_retryTimer)
    {
      dispatch_resume(*p_retryTimer);
    }
  }
}

- (void)_start
{
  v18 = *MEMORY[0x277D85DE8];
  if (+[CODeviceClass isAudioAccessory])
  {
    v3 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered notification for home user changes", &v14, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__usersChangedInHomeNotification_ name:@"COHomeKitAdapterUsersChangedInHome" object:0];

    v5 = +[COHomeKitAdapter sharedInstance];
    currentAccessory = [v5 currentAccessory];
    home = [currentAccessory home];
    [(COIDSPresence *)self _usersChangedInHome:home];
  }

  v8 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    presenceChannel = [(COIDSPresence *)self presenceChannel];
    co_IDSIdentifier = [presenceChannel co_IDSIdentifier];
    v14 = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = co_IDSIdentifier;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ local IDS Identifier: %{public}@", &v14, 0x16u);
  }

  presenceChannel2 = [(COIDSPresence *)self presenceChannel];
  workQueue = [(COIDSPresence *)self workQueue];
  [presenceChannel2 addDelegate:self queue:workQueue];

  [(COIDSPresence *)self _retrainSubscriptionWithRetryCounter:1];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_recordForDevice:(id)device
{
  deviceCopy = device;
  presencePayload = [deviceCopy presencePayload];
  payloadDictionary = [presencePayload payloadDictionary];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceTokenURI = [deviceCopy deviceTokenURI];
    v7 = [payloadDictionary objectForKey:@"ids"];
    v8 = [[COIDSDiscoveryRecord alloc] initWithIdsIdentifier:v7 deviceTokenURI:deviceTokenURI];
  }

  else
  {
    v9 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [COIDSPresence _recordForDevice:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)_informObserver:(id)observer aboutRecord:(id)record added:(BOOL)added
{
  observerCopy = observer;
  recordCopy = record;
  workQueue = [(COIDSPresence *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (objc_opt_respondsToSelector())
  {
    observers = [(COIDSPresence *)self observers];
    v12 = [observers objectForKey:observerCopy];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__COIDSPresence__informObserver_aboutRecord_added___block_invoke;
    block[3] = &unk_278E16998;
    addedCopy = added;
    v14 = observerCopy;
    v15 = recordCopy;
    dispatch_async(v12, block);
  }
}

uint64_t __51__COIDSPresence__informObserver_aboutRecord_added___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 didAddDevice:v4];
  }

  else
  {
    return [v3 didRemoveDevice:v4];
  }
}

- (void)_retrainSubscriptionWithRetryCounter:(unint64_t)counter
{
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke;
  v15[3] = &unk_278E169C0;
  objc_copyWeak(v16, &location);
  v16[1] = counter;
  v5 = MEMORY[0x245D5FF10](v15);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke_2;
  v12 = &unk_278E169E8;
  objc_copyWeak(v14, &location);
  v14[1] = counter;
  v6 = v5;
  v13 = v6;
  v7 = MEMORY[0x245D5FF10](&v9);
  v8 = [(COIDSPresence *)self presenceChannel:v9];
  [v8 retainTransientSubscriptionAssertionWithCompletion:v7];

  objc_destroyWeak(v14);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _retrainSubscriptionWithRetryCounter:*(a1 + 40) + 1];
    WeakRetained = v3;
  }
}

void __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = *(a1 + 48);
      if (!v5)
      {
        __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke_2_cold_1();
      }

      if (v5 >= 0xE)
      {
        v5 = 14;
      }

      v6 = nextRetryTimeInterval_times[v5 - 1];
      v7 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 48);
        v13 = 138544130;
        v14 = WeakRetained;
        v15 = 2048;
        v16 = v12;
        v17 = 2048;
        v18 = v6;
        v19 = 2114;
        v20 = v3;
        _os_log_error_impl(&dword_244378000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to start: attempt %llu, delay %llu, %{public}@", &v13, 0x2Au);
      }

      v8 = dispatch_time(0, 1000000 * v6);
      v9 = [WeakRetained workQueue];
      dispatch_after(v8, v9, *(a1 + 32));
    }

    else
    {
      v9 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [WeakRetained identifier];
        v13 = 138543618;
        v14 = WeakRetained;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ started successfully, id: '%{public}@'", &v13, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeInitiate
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(COIDSPresence *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(COIDSPresence *)self retryAttempts])
  {
    observers = [(COIDSPresence *)self observers];
    v5 = [observers count];

    v6 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v7 = "assert";
      }

      else
      {
        v7 = "release";
      }

      identifier = [(COIDSPresence *)self identifier];
      v10 = 138543874;
      selfCopy = self;
      v12 = 2080;
      v13 = v7;
      v14 = 2114;
      v15 = identifier;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize initiated: target '%s', id: '%{public}@'", &v10, 0x20u);
    }

    [(COIDSPresence *)self setRetryAttempts:1];
    [(COIDSPresence *)self _synchronizePresence:v5 != 0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizePresence:(BOOL)presence
{
  presenceCopy = presence;
  v36 = *MEMORY[0x277D85DE8];
  workQueue = [(COIDSPresence *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __38__COIDSPresence__synchronizePresence___block_invoke;
  v27[3] = &unk_278E16A10;
  objc_copyWeak(&v28, &location);
  v6 = MEMORY[0x245D5FF10](v27);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__COIDSPresence__synchronizePresence___block_invoke_38;
  v23[3] = &unk_278E16A60;
  objc_copyWeak(&v25, &location);
  v26 = presenceCopy;
  v23[4] = self;
  v7 = v6;
  v24 = v7;
  v8 = MEMORY[0x245D5FF10](v23);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __38__COIDSPresence__synchronizePresence___block_invoke_2;
  v20 = &unk_278E15C10;
  objc_copyWeak(&v22, &location);
  v9 = v8;
  v21 = v9;
  v10 = MEMORY[0x245D5FF10](&v17);
  v11 = [(COIDSPresence *)self retryAttempts:v17];
  v12 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "release";
    *buf = 138543874;
    selfCopy = self;
    if (presenceCopy)
    {
      v13 = "assert";
    }

    v32 = 2048;
    v33 = v11;
    v34 = 2080;
    v35 = v13;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize attempt: %llu, target '%s'", buf, 0x20u);
  }

  if (presenceCopy)
  {
    presencePayload = [(COIDSPresence *)self presencePayload];
    presenceChannel = [(COIDSPresence *)self presenceChannel];
    [presenceChannel assertPresenceWithPresencePayload:presencePayload completion:v10];
  }

  else
  {
    presencePayload = [(COIDSPresence *)self presenceChannel];
    [presencePayload releasePresenceWithCompletion:v10];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __38__COIDSPresence__synchronizePresence___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained observers];
    v6 = [v5 count];

    if ((v6 != 0) == a2)
    {
      v9 = v6 != 0;
      v10 = [v4 retryTimer];
      dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

      [v4 _synchronizePresence:v9];
    }

    else
    {
      v7 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "release";
        if (v6)
        {
          v8 = "assert";
        }

        v12 = 138543618;
        v13 = v4;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize cancelled: target changed to '%s'", &v12, 0x16u);
      }

      [v4 setRetryAttempts:0];
      [v4 setRetryTimer:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __38__COIDSPresence__synchronizePresence___block_invoke_38(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained observers];
    v7 = [v6 count];
    v8 = v7 != 0;

    v9 = *(a1 + 56);
    v10 = COCoreLogForCategory(14);
    v11 = v10;
    if (v3)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __38__COIDSPresence__synchronizePresence___block_invoke_38_cold_1();
      }

      if (v9 != v8)
      {
        v17 = COCoreLogForCategory(14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v25 = "release";
          if (v7)
          {
            v25 = "assert";
          }

          *buf = 138543618;
          v42 = v5;
          v43 = 2080;
          v44 = v25;
          v19 = "%{public}@ synchronize cancelled: target changed to '%s'";
          v20 = v17;
          v21 = 22;
          goto LABEL_25;
        }

LABEL_26:

LABEL_27:
        [v5 setRetryAttempts:0];
        [v5 setRetryTimer:0];
        goto LABEL_39;
      }

      v12 = [v5 retryAttempts];
      v13 = v3;
      v14 = [v13 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x277D68170]];

      if (v15)
      {
        v16 = [v13 code];

        if (v16 == -7001 && v12 >= 2)
        {
          v17 = COCoreLogForCategory(14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 32);
            *buf = 138543362;
            v42 = v18;
            v19 = "%{public}@ synchronize cancelled: maximum retries reached";
            v20 = v17;
            v21 = 12;
LABEL_25:
            _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
            goto LABEL_26;
          }

          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "release";
        if (*(a1 + 56))
        {
          v22 = "assert";
        }

        *buf = 138543618;
        v42 = v5;
        v43 = 2080;
        v44 = v22;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize result: success, target '%s'", buf, 0x16u);
      }

      if (v9 == v8)
      {
        goto LABEL_27;
      }

      v23 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = "release";
        if (v7)
        {
          v24 = "assert";
        }

        *buf = 138543618;
        v42 = v5;
        v43 = 2080;
        v44 = v24;
        _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize restart: target changed to '%s'", buf, 0x16u);
      }

      [v5 setRetryAttempts:1];
    }

    v26 = [v5 retryTimer];
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = [v5 workQueue];
      v27 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v28);

      if (!v27)
      {
        v27 = COCoreLogForCategory(14);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __38__COIDSPresence__synchronizePresence___block_invoke_38_cold_3();
        }

        goto LABEL_38;
      }
    }

    v29 = [v5 retryAttempts];
    if (!v29)
    {
      __54__COIDSPresence__retrainSubscriptionWithRetryCounter___block_invoke_2_cold_1();
    }

    v30 = 14;
    if (v29 < 0xE)
    {
      v30 = v29;
    }

    v31 = nextRetryTimeInterval_times[v30 - 1];
    [v5 setRetryAttempts:v29 + 1];
    v32 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = v5;
      v43 = 2048;
      v44 = v31;
      _os_log_impl(&dword_244378000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronize waiting: %llu ms", buf, 0x16u);
    }

    v33 = dispatch_walltime(0, 1000000 * v31);
    dispatch_source_set_timer(v27, v33, 1000000 * v31, 0);
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __38__COIDSPresence__synchronizePresence___block_invoke_39;
    v38 = &unk_278E16A38;
    v39 = *(a1 + 40);
    v40 = v8;
    dispatch_source_set_event_handler(v27, &v35);
    [v5 setRetryTimer:{v27, v35, v36, v37, v38}];

LABEL_38:
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

void __38__COIDSPresence__synchronizePresence___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__COIDSPresence__synchronizePresence___block_invoke_3;
    v7[3] = &unk_278E159A0;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)_usersChangedInHome:(id)home
{
  v48 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  users = [homeCopy users];
  v5 = [MEMORY[0x277CBEB58] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = users;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        userID = [*(*(&v34 + 1) + 8 * v10) userID];
        [v5 addObject:userID];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v8);
  }

  presenceChannel = [(COIDSPresence *)self presenceChannel];
  invitedHandles = [presenceChannel invitedHandles];

  v14 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = invitedHandles;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        handleString = [*(*(&v30 + 1) + 8 * v19) handleString];
        [v14 addObject:handleString];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v17);
  }

  v21 = [v5 mutableCopy];
  [v21 minusSet:v14];
  v22 = [v14 mutableCopy];
  [v22 minusSet:v5];
  v23 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v25 = [v5 count];
    *buf = 138544130;
    selfCopy = self;
    v40 = 2114;
    v41 = uniqueIdentifier;
    v42 = 2048;
    v43 = v25;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ users changed in home '%{public}@'. List of Home users (%lu): %@", buf, 0x2Au);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __37__COIDSPresence__usersChangedInHome___block_invoke;
  v29[3] = &unk_278E16AB0;
  v29[4] = self;
  [v21 enumerateObjectsUsingBlock:v29];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __37__COIDSPresence__usersChangedInHome___block_invoke_43;
  v28[3] = &unk_278E16AB0;
  v28[4] = self;
  [v22 enumerateObjectsUsingBlock:v28];

  v26 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543874;
    v13 = v5;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to invite user %{mask.hash}@", buf, 0x20u);
  }

  v6 = [objc_alloc(MEMORY[0x277D680B8]) initWithString:v3];
  v7 = [*(a1 + 32) presenceChannel];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__COIDSPresence__usersChangedInHome___block_invoke_41;
  v10[3] = &unk_278E16A88;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  [v7 inviteHandleFromPrimaryAccountHandle:v6 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = COCoreLogForCategory(14);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__COIDSPresence__usersChangedInHome___block_invoke_41_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v6;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully invited user %{mask.hash}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_43(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543874;
    v13 = v5;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to remove user %{mask.hash}@", buf, 0x20u);
  }

  v6 = [objc_alloc(MEMORY[0x277D680B8]) initWithString:v3];
  v7 = [*(a1 + 32) presenceChannel];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__COIDSPresence__usersChangedInHome___block_invoke_44;
  v10[3] = &unk_278E16A88;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  [v7 removeInvitedHandle:v6 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v4 = COCoreLogForCategory(14);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __37__COIDSPresence__usersChangedInHome___block_invoke_44_cold_1(a1);
    }
  }

  else if (v5)
  {
    __37__COIDSPresence__usersChangedInHome___block_invoke_44_cold_2(a1);
  }
}

- (void)_usersChangedInHomeNotification:(id)notification
{
  object = [notification object];
  v5 = COCoreLogForCategory(14);
  v6 = v5;
  if (object)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [COIDSPresence _usersChangedInHomeNotification:];
    }

    [(COIDSPresence *)self _usersChangedInHome:object];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [COIDSPresence _usersChangedInHomeNotification:];
    }
  }
}

- (void)presentDevicesChangedForPresence:(id)presence
{
  v38 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  workQueue = [(COIDSPresence *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(COIDSPresence *)self identifier];
    *buf = 138543618;
    selfCopy = self;
    v36 = 2114;
    v37 = identifier;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ present devices changed for '%{public}@'", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  presentDevices = [presenceCopy presentDevices];
  v10 = [presentDevices countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(presentDevices);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (([v14 isSelfDevice] & 1) == 0)
        {
          [v8 addObject:v14];
          devices = [(COIDSPresence *)self devices];
          v16 = [devices containsObject:v14];

          if ((v16 & 1) == 0)
          {
            [(COIDSPresence *)self _informObserversAboutDevice:v14 added:1];
          }
        }
      }

      v11 = [presentDevices countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  devices2 = [(COIDSPresence *)self devices];
  v18 = [devices2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(devices2);
        }

        v22 = *(*(&v24 + 1) + 8 * j);
        if (([v8 containsObject:v22] & 1) == 0)
        {
          [(COIDSPresence *)self _informObserversAboutDevice:v22 added:0];
        }
      }

      v19 = [devices2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  [(COIDSPresence *)self setDevices:v8];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_recordForDevice:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%{public}@ unknown payload for device %p");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__COIDSPresence__synchronizePresence___block_invoke_38_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%{public}@ synchronize result: error [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__COIDSPresence__synchronizePresence___block_invoke_38_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_41_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_44_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __37__COIDSPresence__usersChangedInHome___block_invoke_44_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_usersChangedInHomeNotification:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ users changed in home notification fired", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_usersChangedInHomeNotification:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end