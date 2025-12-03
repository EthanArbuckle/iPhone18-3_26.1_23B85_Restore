@interface HFProxControlActivityClientManager
+ (id)sharedInstance;
- (HFProxControlActivityClientManager)init;
- (id)_setupProxControlClient;
- (id)startMonitoringUpdatesForAccessoryID:(id)d homeID:(id)iD;
- (id)startMonitoringUpdatesForMediaRemoteIdentifier:(id)identifier;
- (void)_notifyObserversForUpdatedActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context;
- (void)_resetProxClient;
- (void)addObserver:(id)observer;
- (void)invalidateProxClient;
- (void)removeObserver:(id)observer;
- (void)userTappedCloseButton;
- (void)userTappedDisambiguationButtonForContext:(id)context;
@end

@implementation HFProxControlActivityClientManager

+ (id)sharedInstance
{
  if (qword_280E03478 != -1)
  {
    dispatch_once(&qword_280E03478, &__block_literal_global_146);
  }

  v3 = _MergedGlobals_279;

  return v3;
}

void __52__HFProxControlActivityClientManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFProxControlActivityClientManager);
  v1 = _MergedGlobals_279;
  _MergedGlobals_279 = v0;
}

- (HFProxControlActivityClientManager)init
{
  v8.receiver = self;
  v8.super_class = HFProxControlActivityClientManager;
  v2 = [(HFProxControlActivityClientManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Home.proxControlDataModelUpdateQueue", 0);
    dataModelUpdateQueue = v2->_dataModelUpdateQueue;
    v2->_dataModelUpdateQueue = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  dataModelUpdateQueue = [(HFProxControlActivityClientManager *)self dataModelUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HFProxControlActivityClientManager_addObserver___block_invoke;
  block[3] = &unk_277DF37C0;
  selfCopy = self;
  v11 = a2;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_async(dataModelUpdateQueue, block);
}

void __50__HFProxControlActivityClientManager_addObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Adding observer = %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) observers];
  [v5 addObject:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dataModelUpdateQueue = [(HFProxControlActivityClientManager *)self dataModelUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HFProxControlActivityClientManager_removeObserver___block_invoke;
  block[3] = &unk_277DF37C0;
  selfCopy = self;
  v11 = a2;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_async(dataModelUpdateQueue, block);
}

void __53__HFProxControlActivityClientManager_removeObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Removing observer = %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) observers];
  [v5 removeObject:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)startMonitoringUpdatesForMediaRemoteIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = HFLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForMediaRemoteIdentifier Starting monitoring for mediaRemoteIdentifier: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  _setupProxControlClient = [(HFProxControlActivityClientManager *)self _setupProxControlClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HFProxControlActivityClientManager_startMonitoringUpdatesForMediaRemoteIdentifier___block_invoke;
  v11[3] = &unk_277DF6F48;
  objc_copyWeak(&v13, buf);
  v7 = identifierCopy;
  v12 = v7;
  v8 = [_setupProxControlClient flatMap:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __85__HFProxControlActivityClientManager_startMonitoringUpdatesForMediaRemoteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForMediaRemoteIdentifier ProxControl client setup completed with result: %{public}@", buf, 0xCu);
  }

  v5 = v3;
  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [objc_alloc(MEMORY[0x277D435E8]) initWithIdentifier:*(a1 + 32)];
  v9 = [WeakRetained proxControlActivityClient];
  [v9 startObservingMediaRemoteIdentifier:v8];

  [WeakRetained setHasStartedMonitoringUpdates:1];
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v16, (a1 + 40));
  v10 = v6;
  v15 = v10;
  v11 = [WeakRetained proxControlActivityClient];
  [v11 setMediaRemoteUpdateHandler:&v14];

  objc_destroyWeak(&v16);
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __85__HFProxControlActivityClientManager_startMonitoringUpdatesForMediaRemoteIdentifier___block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __85__HFProxControlActivityClientManager_startMonitoringUpdatesForMediaRemoteIdentifier___block_invoke_2;
  v17 = &unk_277DF3398;
  v18 = WeakRetained;
  v19 = v8;
  v20 = v7;
  v21 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], &v14);
  [*(a1 + 32) finishWithResult:{MEMORY[0x277CBEC38], v14, v15, v16, v17, v18}];
}

- (id)startMonitoringUpdatesForAccessoryID:(id)d homeID:(id)iD
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  objc_initWeak(&location, self);
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = dCopy;
    v22 = 2114;
    v23 = iDCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForAccessoryID Starting monitoring for accessoryID: %{public}@, homeID: %{public}@", buf, 0x16u);
  }

  _setupProxControlClient = [(HFProxControlActivityClientManager *)self _setupProxControlClient];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HFProxControlActivityClientManager_startMonitoringUpdatesForAccessoryID_homeID___block_invoke;
  v15[3] = &unk_277DF6330;
  objc_copyWeak(&v18, &location);
  v10 = iDCopy;
  v16 = v10;
  v11 = dCopy;
  v17 = v11;
  v12 = [_setupProxControlClient flatMap:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __82__HFProxControlActivityClientManager_startMonitoringUpdatesForAccessoryID_homeID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForAccessoryID ProxControl client setup completed with result: %{public}@", buf, 0xCu);
  }

  v5 = v3;
  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained proxControlActivityClient];
  v9 = v8 == 0;

  if (v9)
  {
    v16 = HFLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "startMonitoringUpdatesForAccessoryID ProxControl activity client is nil after setup", buf, 2u);
    }

    v17 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v15 = [v17 futureWithError:v10];
  }

  else
  {
    [WeakRetained setHomeID:*(a1 + 32)];
    [WeakRetained setAccessoryID:*(a1 + 40)];
    v10 = [objc_alloc(MEMORY[0x277D435D8]) initWithAccessoryID:*(a1 + 40) homeID:*(a1 + 32)];
    v11 = HFLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForAccessoryID Starting to observe device with identifier: %{public}@", buf, 0xCu);
    }

    v12 = [WeakRetained proxControlActivityClient];
    [v12 startObservingDeviceWithIdentifier:v10];

    [WeakRetained setHasStartedMonitoringUpdates:1];
    v20 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v22, (a1 + 48));
    v13 = v6;
    v21 = v13;
    v14 = [WeakRetained proxControlActivityClient];
    [v14 setUpdateHandler:&v20];

    v15 = v13;
    objc_destroyWeak(&v22);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

void __82__HFProxControlActivityClientManager_startMonitoringUpdatesForAccessoryID_homeID___block_invoke_23(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [v8 count];
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "startMonitoringUpdatesForAccessoryID Update handler called with %lu activities", buf, 0xCu);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __82__HFProxControlActivityClientManager_startMonitoringUpdatesForAccessoryID_homeID___block_invoke_24;
  v19 = &unk_277DF3398;
  v20 = WeakRetained;
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(MEMORY[0x277D85CD0], &v16);
  [*(a1 + 32) finishWithResult:{MEMORY[0x277CBEC38], v16, v17, v18, v19, v20}];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)userTappedDisambiguationButtonForContext:(id)context
{
  contextCopy = context;
  proxControlActivityClient = [(HFProxControlActivityClientManager *)self proxControlActivityClient];
  [proxControlActivityClient userTappedDisambiguationButton:contextCopy];
}

- (void)userTappedCloseButton
{
  proxControlActivityClient = [(HFProxControlActivityClientManager *)self proxControlActivityClient];
  [proxControlActivityClient userTappedCloseButton];

  proxControlActivityClient2 = [(HFProxControlActivityClientManager *)self proxControlActivityClient];
  [proxControlActivityClient2 invalidate];
}

- (void)invalidateProxClient
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%@ Invalidating Prox client", &v6, 0xCu);
  }

  proxControlActivityClient = [(HFProxControlActivityClientManager *)self proxControlActivityClient];
  [proxControlActivityClient invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_setupProxControlClient
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "_setupProxControlClient Setting up ProxControl client", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = objc_alloc_init(MEMORY[0x277D435F0]);
  proxControlActivityClient = self->_proxControlActivityClient;
  self->_proxControlActivityClient = v5;

  if (self->_proxControlActivityClient)
  {
    dataModelUpdateQueue = [(HFProxControlActivityClientManager *)self dataModelUpdateQueue];
    [(PCRemoteActivityClient *)self->_proxControlActivityClient setDispatchQueue:dataModelUpdateQueue];

    [(PCRemoteActivityClient *)self->_proxControlActivityClient setInterruptionHandler:&__block_literal_global_28_3];
    [(PCRemoteActivityClient *)self->_proxControlActivityClient setInvalidationHandler:&__block_literal_global_31_5];
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "_setupProxControlClient Activating PCRemoteActivityClient", buf, 2u);
    }

    v9 = self->_proxControlActivityClient;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HFProxControlActivityClientManager__setupProxControlClient__block_invoke_32;
    v16[3] = &unk_277DF2D08;
    v10 = v4;
    v17 = v10;
    [(PCRemoteActivityClient *)v9 activateWithCompletion:v16];
    v11 = v10;
    v12 = v17;
  }

  else
  {
    v13 = HFLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "_setupProxControlClient Failed to create PCRemoteActivityClient", buf, 2u);
    }

    v14 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v11 = [v14 futureWithError:v12];
  }

  return v11;
}

void __61__HFProxControlActivityClientManager__setupProxControlClient__block_invoke()
{
  v0 = HFLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20D9BF000, v0, OS_LOG_TYPE_DEFAULT, "_setupProxControlClient InterruptionHandler called back", v1, 2u);
  }
}

void __61__HFProxControlActivityClientManager__setupProxControlClient__block_invoke_29()
{
  v0 = HFLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20D9BF000, v0, OS_LOG_TYPE_DEFAULT, "_setupProxControlClient InvalidationHandler called back", v1, 2u);
  }
}

void __61__HFProxControlActivityClientManager__setupProxControlClient__block_invoke_32(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "_setupProxControlClient PCRemoteActivityClient wasn't activated [%{public}@]", &v7, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "_setupProxControlClient PCRemoteActivityClient Activated Succesfully!", &v7, 2u);
    }

    [*(a1 + 32) finishWithResult:MEMORY[0x277CBEC38]];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resetProxClient
{
  proxControlActivityClient = [(HFProxControlActivityClientManager *)self proxControlActivityClient];
  [proxControlActivityClient invalidate];

  [(HFProxControlActivityClientManager *)self setProxControlActivityClient:0];
  [(HFProxControlActivityClientManager *)self setHasStartedMonitoringUpdates:0];
  _setupProxControlClient = [(HFProxControlActivityClientManager *)self _setupProxControlClient];
}

- (void)_notifyObserversForUpdatedActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  contextCopy = context;
  v12 = HFLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138413058;
    v32 = v13;
    v33 = 2112;
    v34 = activitiesCopy;
    v35 = 2112;
    v36 = contextCopy;
    v37 = 2112;
    v38 = dCopy;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@ UpdateHandler called back with activities = %@ - disambiguationContext = %@, identifier = %@", buf, 0x2Au);
  }

  v14 = HFLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    leadingImage = [contextCopy leadingImage];
    titleText = [contextCopy titleText];
    subtitleText = [contextCopy subtitleText];
    *buf = 138413058;
    v32 = v15;
    v33 = 2112;
    v34 = leadingImage;
    v35 = 2112;
    v36 = titleText;
    v37 = 2112;
    v38 = subtitleText;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "\n %@ leadingImage = [%@] titleText = [%@] subTitle = [%@]", buf, 0x2Au);
  }

  [(HFProxControlActivityClientManager *)self setLastIdentifier:dCopy];
  [(HFProxControlActivityClientManager *)self setLastActivities:activitiesCopy];
  [(HFProxControlActivityClientManager *)self setLastDisambiguationContext:contextCopy];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  observers = [(HFProxControlActivityClientManager *)self observers];
  v20 = [observers countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(observers);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        if ([v24 conformsToProtocol:&unk_2825BB028] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v24 didUpdateActivities:activitiesCopy forProxControlID:dCopy disambiguationContext:contextCopy];
        }
      }

      v21 = [observers countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end