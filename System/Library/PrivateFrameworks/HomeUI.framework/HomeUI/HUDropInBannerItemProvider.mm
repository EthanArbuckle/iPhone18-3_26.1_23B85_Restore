@interface HUDropInBannerItemProvider
- (HUDropInBannerItemProvider)init;
- (HUDropInBannerItemProvider)initWithHome:(id)home delegate:(id)delegate;
- (HUDropInBannerItemProviderDelegate)delegate;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
- (void)_notifyDelegate;
- (void)_setupDropInDelegatesIfNeeded;
- (void)device:(id)device didUpdateState:(int64_t)state;
- (void)executionEnvironmentDidBecomeActive:(id)active;
- (void)manager:(id)manager didAddDevice:(id)device;
- (void)manager:(id)manager didRemoveDevice:(id)device;
- (void)managerDidUpdateDevices:(id)devices;
- (void)serverDisconnectedForDropInCenter:(id)center;
- (void)subscriber:(id)subscriber didUpdateBulletins:(id)bulletins;
@end

@implementation HUDropInBannerItemProvider

- (HUDropInBannerItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInBannerItemProvider.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUDropInBannerItemProvider init]", v5}];

  return 0;
}

- (HUDropInBannerItemProvider)initWithHome:(id)home delegate:(id)delegate
{
  homeCopy = home;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = HUDropInBannerItemProvider;
  v9 = [(HFItemProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    devices = v10->_devices;
    v10->_devices = MEMORY[0x277CBEBF8];

    v12 = objc_opt_new();
    accessoryIdentifierToEventBulletinsMapping = v10->_accessoryIdentifierToEventBulletinsMapping;
    v10->_accessoryIdentifierToEventBulletinsMapping = v12;

    v14 = objc_opt_new();
    [(HUDropInBannerItemProvider *)v10 setBannerItems:v14];

    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    [mEMORY[0x277D14670] addObserver:v10];
  }

  return v10;
}

- (id)reloadItems
{
  v34 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  isActive = [mEMORY[0x277D14670] isActive];

  if (isActive)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy3 = self;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Execution env is active. Can set dropin delegates.", buf, 0x16u);
    }

    [(HUDropInBannerItemProvider *)self _setupDropInDelegatesIfNeeded];
  }

  dropInCenter = [(HUDropInBannerItemProvider *)self dropInCenter];

  if (dropInCenter)
  {
    dropInCenter2 = [(HUDropInBannerItemProvider *)self dropInCenter];
    deviceManager = [dropInCenter2 deviceManager];
    devices = [deviceManager devices];
    [(HUDropInBannerItemProvider *)self setDevices:devices];
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    devices2 = [(HUDropInBannerItemProvider *)self devices];
    *buf = 138412802;
    selfCopy3 = self;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = devices2;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin capable devices: %@", buf, 0x20u);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    accessoryIdentifierToEventBulletinsMapping = [(HUDropInBannerItemProvider *)self accessoryIdentifierToEventBulletinsMapping];
    *buf = 138412802;
    selfCopy3 = self;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = accessoryIdentifierToEventBulletinsMapping;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@: %@ Event bulletins: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  devices3 = [(HUDropInBannerItemProvider *)self devices];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_3;
  v26[3] = &unk_277DC4290;
  objc_copyWeak(v27, buf);
  v27[1] = a2;
  v19 = [(HFItemProvider *)self reloadItemsWithObjects:devices3 keyAdaptor:&__block_literal_global_281 itemAdaptor:&__block_literal_global_12_0 filter:0 itemMap:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_17;
  v24[3] = &unk_277DB7FA8;
  objc_copyWeak(&v25, buf);
  v20 = [v19 flatMap:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_2_20;
  v23[3] = &unk_277DC42E0;
  v23[4] = self;
  v21 = [v20 addSuccessBlock:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(v27);

  objc_destroyWeak(buf);

  return v21;
}

id __41__HUDropInBannerItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 homeKitIdentifier];

  return v3;
}

HUDropInBannerItem *__41__HUDropInBannerItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_4;
  v24[3] = &unk_277DC4268;
  v6 = v3;
  v25 = v6;
  v7 = [v5 na_firstObjectPassingTest:v24];

  if (!v7)
  {
    v8 = [WeakRetained accessoryIdentifierToEventBulletinsMapping];
    v9 = [v6 homeKitIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v8 objectForKey:v10];

    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_5;
    v22 = &unk_277DC2008;
    v12 = v6;
    v23 = v12;
    v13 = [v11 na_firstObjectPassingTest:&v19];
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412802;
      v27 = WeakRetained;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ Found event bulletin for accessory: %@", buf, 0x20u);
    }

    v16 = [HUDropInBannerItem alloc];
    v17 = [WeakRetained home];
    v7 = [(HUDropInBannerItem *)v16 initWithHome:v17 device:v12 eventBulletin:v13];
  }

  return v7;
}

uint64_t __41__HUDropInBannerItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 homeKitIdentifier];
  v5 = [*(a1 + 32) homeKitIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

uint64_t __41__HUDropInBannerItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryIdentifier];
  v4 = [*(a1 + 32) homeKitIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

id __41__HUDropInBannerItemProvider_reloadItems__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bannerItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained bannerItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

void __41__HUDropInBannerItemProvider_reloadItems__block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 existingItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_3_21;
  v8[3] = &unk_277DC42B8;
  v8[4] = *(a1 + 32);
  [v4 na_each:v8];

  v5 = objc_alloc(MEMORY[0x277CBEB58]);
  v6 = [v3 allItems];

  v7 = [v5 initWithSet:v6];
  [*(a1 + 32) setBannerItems:v7];
}

void __41__HUDropInBannerItemProvider_reloadItems__block_invoke_3_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessoryIdentifierToEventBulletinsMapping];
  v5 = [v3 device];
  v6 = [v5 homeKitIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v4 objectForKey:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HUDropInBannerItemProvider_reloadItems__block_invoke_4_22;
  v11[3] = &unk_277DC2008;
  v12 = v3;
  v9 = v3;
  v10 = [v8 na_firstObjectPassingTest:v11];
  [v9 setEventBulletin:v10];
}

uint64_t __41__HUDropInBannerItemProvider_reloadItems__block_invoke_4_22(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryIdentifier];
  v4 = [*(a1 + 32) device];
  v5 = [v4 homeKitIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

- (id)items
{
  bannerItems = [(HUDropInBannerItemProvider *)self bannerItems];
  v3 = [bannerItems copy];

  return v3;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUDropInBannerItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B28];
  v8[0] = *MEMORY[0x277D13B48];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

- (void)_notifyDelegate
{
  delegate = [(HUDropInBannerItemProvider *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_282542A78];

  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HUDropInBannerItemProvider__notifyDelegate__block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __45__HUDropInBannerItemProvider__notifyDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdateDropInAvailability:*(a1 + 32)];
}

- (void)executionEnvironmentDidBecomeActive:(id)active
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ Execution env did become active", &v7, 0x16u);
  }

  [(HUDropInBannerItemProvider *)self _setupDropInDelegatesIfNeeded];
}

- (void)_setupDropInDelegatesIfNeeded
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v40 = 138412546;
    selfCopy5 = self;
    v42 = 2112;
    v43 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Setting up dropin delegates if needed", &v40, 0x16u);
  }

  home = [(HUDropInBannerItemProvider *)self home];
  hf_hasAtleastOneAudioAnalysisSupportedAccessory = [home hf_hasAtleastOneAudioAnalysisSupportedAccessory];

  if (hf_hasAtleastOneAudioAnalysisSupportedAccessory)
  {
    dropInCenter = [(HUDropInBannerItemProvider *)self dropInCenter];

    if (!dropInCenter)
    {
      v9 = objc_alloc(MEMORY[0x277D069B8]);
      home2 = [(HUDropInBannerItemProvider *)self home];
      uniqueIdentifier = [home2 uniqueIdentifier];
      v12 = [v9 initWithHomeIdentifier:uniqueIdentifier queue:MEMORY[0x277D85CD0]];
      [(HUDropInBannerItemProvider *)self setDropInCenter:v12];

      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(a2);
        dropInCenter2 = [(HUDropInBannerItemProvider *)self dropInCenter];
        v40 = 138412802;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v14;
        v44 = 2112;
        v45 = dropInCenter2;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Created DropIn center: %@", &v40, 0x20u);
      }
    }

    lastKnownEventSubscriber = [(HUDropInBannerItemProvider *)self lastKnownEventSubscriber];

    if (!lastKnownEventSubscriber)
    {
      home3 = [(HUDropInBannerItemProvider *)self home];
      createHomeAudioAnalysisEventSubscriber = [home3 createHomeAudioAnalysisEventSubscriber];
      [(HUDropInBannerItemProvider *)self setLastKnownEventSubscriber:createHomeAudioAnalysisEventSubscriber];

      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromSelector(a2);
        lastKnownEventSubscriber2 = [(HUDropInBannerItemProvider *)self lastKnownEventSubscriber];
        v40 = 138412802;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v20;
        v44 = 2112;
        v45 = lastKnownEventSubscriber2;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: %@ Created Last known event subscriber: %@", &v40, 0x20u);
      }

      lastKnownEventSubscriber3 = [(HUDropInBannerItemProvider *)self lastKnownEventSubscriber];
      [lastKnownEventSubscriber3 setDelegate:self];
    }

    dropInCenter3 = [(HUDropInBannerItemProvider *)self dropInCenter];
    delegate = [dropInCenter3 delegate];

    if (!delegate)
    {
      dropInCenter4 = [(HUDropInBannerItemProvider *)self dropInCenter];
      [dropInCenter4 setDelegate:self];

      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = NSStringFromSelector(a2);
        dropInCenter5 = [(HUDropInBannerItemProvider *)self dropInCenter];
        delegate2 = [dropInCenter5 delegate];
        v40 = 138412802;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v27;
        v44 = 2112;
        v45 = delegate2;
        _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@: %@ DropIn center delegate set to %@", &v40, 0x20u);
      }
    }

    dropInCenter6 = [(HUDropInBannerItemProvider *)self dropInCenter];
    deviceManager = [dropInCenter6 deviceManager];
    delegate3 = [deviceManager delegate];

    if (!delegate3)
    {
      dropInCenter7 = [(HUDropInBannerItemProvider *)self dropInCenter];
      deviceManager2 = [dropInCenter7 deviceManager];
      [deviceManager2 setDelegate:self];

      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = NSStringFromSelector(a2);
        dropInCenter8 = [(HUDropInBannerItemProvider *)self dropInCenter];
        deviceManager3 = [dropInCenter8 deviceManager];
        delegate4 = [deviceManager3 delegate];
        v40 = 138412802;
        selfCopy5 = self;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = delegate4;
        _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@: %@ DropIn device manager delegate set to %@", &v40, 0x20u);
      }
    }
  }
}

- (void)subscriber:(id)subscriber didUpdateBulletins:(id)bulletins
{
  v24 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    firstObject = [bulletinsCopy firstObject];
    accessoryIdentifier = [firstObject accessoryIdentifier];
    uUIDString = [accessoryIdentifier UUIDString];
    v16 = 138413058;
    selfCopy = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = uUIDString;
    v22 = 2112;
    v23 = bulletinsCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Last Known Event Bulletins for accessory with identifier %@: %@", &v16, 0x2Au);
  }

  accessoryIdentifierToEventBulletinsMapping = [(HUDropInBannerItemProvider *)self accessoryIdentifierToEventBulletinsMapping];
  firstObject2 = [bulletinsCopy firstObject];
  accessoryIdentifier2 = [firstObject2 accessoryIdentifier];
  uUIDString2 = [accessoryIdentifier2 UUIDString];
  [accessoryIdentifierToEventBulletinsMapping na_safeSetObject:bulletinsCopy forKey:uUIDString2];

  [(HUDropInBannerItemProvider *)self _notifyDelegate];
}

- (void)serverDisconnectedForDropInCenter:(id)center
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: %@ Disconnected from DropIn process", &v7, 0x16u);
  }
}

- (void)managerDidUpdateDevices:(id)devices
{
  v46 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy3 = self;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = devicesCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ Device manager: %@", buf, 0x20u);
  }

  dropInCenter = [(HUDropInBannerItemProvider *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  devices = [deviceManager devices];
  [(HUDropInBannerItemProvider *)self setDevices:devices];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    devices2 = [(HUDropInBannerItemProvider *)self devices];
    *buf = 138412802;
    selfCopy3 = self;
    v42 = 2112;
    v43 = v11;
    v44 = 2112;
    v45 = devices2;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: %@ Devices available for drop-in: %@", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  devices3 = [(HUDropInBannerItemProvider *)self devices];
  v14 = [devices3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(devices3);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [MEMORY[0x277CBEAA8] now];
        [v19 timeIntervalSince1970];
        v21 = v20;
        stateExpiration = [v18 stateExpiration];
        [stateExpiration timeIntervalSince1970];
        v24 = v23;

        if ([v18 state])
        {
          v25 = v21 <= v24;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          v26 = HFLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = NSStringFromSelector(a2);
            *buf = 138412802;
            selfCopy3 = self;
            v42 = 2112;
            v43 = v27;
            v44 = 2112;
            v45 = v18;
            _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@: %@ Requesting device state refresh for device: %@", buf, 0x20u);
          }

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __54__HUDropInBannerItemProvider_managerDidUpdateDevices___block_invoke;
          v34[3] = &unk_277DBEFD8;
          v34[5] = v18;
          v34[6] = a2;
          v34[4] = self;
          [v18 refreshStateWithCompletionHandler:v34];
        }

        [v18 setDelegate:self];
        home = [(HUDropInBannerItemProvider *)self home];
        homeKitIdentifier = [v18 homeKitIdentifier];
        v30 = [home hf_accessoryWithIdentifier:homeKitIdentifier];

        lastKnownEventSubscriber = [(HUDropInBannerItemProvider *)self lastKnownEventSubscriber];
        uniqueIdentifier = [v30 uniqueIdentifier];
        [lastKnownEventSubscriber subscribeLastKnownEventsForAccessory:uniqueIdentifier completion:&__block_literal_global_78_3];
      }

      v15 = [devices3 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  [(HUDropInBannerItemProvider *)self _notifyDelegate];
}

void __54__HUDropInBannerItemProvider_managerDidUpdateDevices___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 40);
      v11 = 138413058;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: %@ Failed to request refresh of device state for device: %@ with error %@", &v11, 0x2Au);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 48));
    v10 = *(a1 + 40);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ Succeeded to request refresh of device state for device: %@", &v11, 0x20u);
    goto LABEL_6;
  }
}

void __54__HUDropInBannerItemProvider_managerDidUpdateDevices___block_invoke_76(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to subscribe for last known events: %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Successfully subscribed for last known events", &v5, 2u);
  }
}

- (void)manager:(id)manager didAddDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Added Device: %@", &v14, 0x20u);
  }

  [deviceCopy setDelegate:self];
  home = [(HUDropInBannerItemProvider *)self home];
  homeKitIdentifier = [deviceCopy homeKitIdentifier];
  v11 = [home hf_accessoryWithIdentifier:homeKitIdentifier];

  lastKnownEventSubscriber = [(HUDropInBannerItemProvider *)self lastKnownEventSubscriber];
  uniqueIdentifier = [v11 uniqueIdentifier];
  [lastKnownEventSubscriber subscribeLastKnownEventsForAccessory:uniqueIdentifier completion:&__block_literal_global_80];

  [(HUDropInBannerItemProvider *)self _notifyDelegate];
}

void __51__HUDropInBannerItemProvider_manager_didAddDevice___block_invoke(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to subscribe for last known events: %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Successfully subscribed for last known events", &v5, 2u);
  }
}

- (void)manager:(id)manager didRemoveDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Removed Device: %@", &v9, 0x20u);
  }

  [deviceCopy setDelegate:0];
  [(HUDropInBannerItemProvider *)self _notifyDelegate];
}

- (void)device:(id)device didUpdateState:(int64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [MEMORY[0x277D069B0] stringForDeviceState:state];
    v11 = 138413058;
    selfCopy = self;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated Device state to %@ for device: %@", &v11, 0x2Au);
  }

  [(HUDropInBannerItemProvider *)self _notifyDelegate];
}

- (HUDropInBannerItemProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end