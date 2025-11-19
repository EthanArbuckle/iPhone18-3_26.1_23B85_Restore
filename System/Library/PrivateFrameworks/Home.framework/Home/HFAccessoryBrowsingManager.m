@interface HFAccessoryBrowsingManager
- (HFAccessoryBrowsingManager)init;
- (NSArray)discoveredHMAccessories;
- (NSArray)discoveredSharingDevices;
- (void)accessoryBrowser:(id)a3 didFindNewAccessory:(id)a4;
- (void)accessoryBrowser:(id)a3 didRemoveNewAccessory:(id)a4;
- (void)addBrowsingObserver:(id)a3;
- (void)removeBrowsingObserver:(id)a3;
- (void)startSearchingForNewAccessories;
- (void)stopSearchingForNewAccessoriesWithError:(id)a3;
@end

@implementation HFAccessoryBrowsingManager

- (HFAccessoryBrowsingManager)init
{
  v17.receiver = self;
  v17.super_class = HFAccessoryBrowsingManager;
  v2 = [(HFAccessoryBrowsingManager *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD1670]);
    [(HFAccessoryBrowsingManager *)v2 setAccessoryBrowser:v3];

    v4 = [(HFAccessoryBrowsingManager *)v2 accessoryBrowser];
    [v4 setDelegate:v2];

    v5 = [MEMORY[0x277CBEB58] set];
    [(HFAccessoryBrowsingManager *)v2 setMutableDiscoveredSharingDevices:v5];

    v6 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(HFAccessoryBrowsingManager *)v2 setSharingDeviceBrowser:v6];

    v7 = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [v7 setDiscoveryFlags:16];

    objc_initWeak(&location, v2);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__HFAccessoryBrowsingManager_init__block_invoke;
    v14[3] = &unk_277DFDF00;
    objc_copyWeak(&v15, &location);
    v8 = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [v8 setDeviceFoundHandler:v14];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__HFAccessoryBrowsingManager_init__block_invoke_3;
    v12[3] = &unk_277DFDF00;
    objc_copyWeak(&v13, &location);
    v9 = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [v9 setDeviceLostHandler:v12];

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFAccessoryBrowsingManager *)v2 setObservers:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__HFAccessoryBrowsingManager_init__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "didFindNewSharingDevice: %@", buf, 0xCu);
  }

  v6 = [WeakRetained mutableDiscoveredSharingDevices];
  [v6 addObject:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [WeakRetained observers];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        [*(*(&v14 + 1) + 8 * v12++) accessoryBrowsingManager:WeakRetained didFindNewSharingDevice:v3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __34__HFAccessoryBrowsingManager_init__block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "didRemoveNewSharingDevice: %@", buf, 0xCu);
  }

  v6 = [WeakRetained mutableDiscoveredSharingDevices];
  [v6 removeObject:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [WeakRetained observers];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        [*(*(&v14 + 1) + 8 * v12++) accessoryBrowsingManager:WeakRetained didRemoveNewSharingDevice:v3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)discoveredHMAccessories
{
  v2 = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  v3 = [v2 discoveredAccessories];

  return v3;
}

- (NSArray)discoveredSharingDevices
{
  v2 = [(HFAccessoryBrowsingManager *)self mutableDiscoveredSharingDevices];
  v3 = [v2 allObjects];
  v4 = [v3 copy];

  return v4;
}

- (void)startSearchingForNewAccessories
{
  v3 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "startSearchingForNewAccessories", buf, 2u);
  }

  [(HFAccessoryBrowsingManager *)self setIsBrowsing:1];
  v4 = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  [v4 startSearchingForNewAccessories];

  v5 = [(HFAccessoryBrowsingManager *)self sharingDeviceBrowser];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HFAccessoryBrowsingManager_startSearchingForNewAccessories__block_invoke;
  v7[3] = &unk_277DF2D08;
  v8 = v5;
  v6 = v5;
  [v6 activateWithCompletion:v7];
}

void __61__HFAccessoryBrowsingManager_startSearchingForNewAccessories__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3FuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v7 = "Failed to start sharing device browser (%@). Error: %@";
      v8 = v4;
      v9 = 22;
LABEL_6:
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v12 = 138412290;
    v13 = v10;
    v7 = "Started sharing device browser (%@)";
    v8 = v4;
    v9 = 12;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSearchingForNewAccessoriesWithError:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "stopSearchingForNewAccessoriesWithError", v8, 2u);
  }

  [(HFAccessoryBrowsingManager *)self setIsBrowsing:0];
  v6 = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  [v6 stopSearchingForNewAccessoriesWithError:v4];

  v7 = [(HFAccessoryBrowsingManager *)self sharingDeviceBrowser];
  [v7 invalidate];
}

- (void)addBrowsingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryBrowsingManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeBrowsingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryBrowsingManager *)self observers];
  [v5 removeObject:v4];
}

- (void)accessoryBrowser:(id)a3 didFindNewAccessory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 hf_prettyDescription];
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_INFO, "didFindNewAccessory: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(HFAccessoryBrowsingManager *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) accessoryBrowsingManager:self didFindNewAccessory:v5];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessoryBrowser:(id)a3 didRemoveNewAccessory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 hf_prettyDescription];
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_INFO, "didRemoveNewAccessory: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(HFAccessoryBrowsingManager *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) accessoryBrowsingManager:self didRemoveNewAccessory:v5];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end