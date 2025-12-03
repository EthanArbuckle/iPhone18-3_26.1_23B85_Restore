@interface HFAccessoryBrowsingManager
- (HFAccessoryBrowsingManager)init;
- (NSArray)discoveredHMAccessories;
- (NSArray)discoveredSharingDevices;
- (void)accessoryBrowser:(id)browser didFindNewAccessory:(id)accessory;
- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory;
- (void)addBrowsingObserver:(id)observer;
- (void)removeBrowsingObserver:(id)observer;
- (void)startSearchingForNewAccessories;
- (void)stopSearchingForNewAccessoriesWithError:(id)error;
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

    accessoryBrowser = [(HFAccessoryBrowsingManager *)v2 accessoryBrowser];
    [accessoryBrowser setDelegate:v2];

    v5 = [MEMORY[0x277CBEB58] set];
    [(HFAccessoryBrowsingManager *)v2 setMutableDiscoveredSharingDevices:v5];

    v6 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(HFAccessoryBrowsingManager *)v2 setSharingDeviceBrowser:v6];

    sharingDeviceBrowser = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [sharingDeviceBrowser setDiscoveryFlags:16];

    objc_initWeak(&location, v2);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__HFAccessoryBrowsingManager_init__block_invoke;
    v14[3] = &unk_277DFDF00;
    objc_copyWeak(&v15, &location);
    sharingDeviceBrowser2 = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [sharingDeviceBrowser2 setDeviceFoundHandler:v14];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__HFAccessoryBrowsingManager_init__block_invoke_3;
    v12[3] = &unk_277DFDF00;
    objc_copyWeak(&v13, &location);
    sharingDeviceBrowser3 = [(HFAccessoryBrowsingManager *)v2 sharingDeviceBrowser];
    [sharingDeviceBrowser3 setDeviceLostHandler:v12];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFAccessoryBrowsingManager *)v2 setObservers:weakObjectsHashTable];

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
  accessoryBrowser = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  discoveredAccessories = [accessoryBrowser discoveredAccessories];

  return discoveredAccessories;
}

- (NSArray)discoveredSharingDevices
{
  mutableDiscoveredSharingDevices = [(HFAccessoryBrowsingManager *)self mutableDiscoveredSharingDevices];
  allObjects = [mutableDiscoveredSharingDevices allObjects];
  v4 = [allObjects copy];

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
  accessoryBrowser = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  [accessoryBrowser startSearchingForNewAccessories];

  sharingDeviceBrowser = [(HFAccessoryBrowsingManager *)self sharingDeviceBrowser];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HFAccessoryBrowsingManager_startSearchingForNewAccessories__block_invoke;
  v7[3] = &unk_277DF2D08;
  v8 = sharingDeviceBrowser;
  v6 = sharingDeviceBrowser;
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

- (void)stopSearchingForNewAccessoriesWithError:(id)error
{
  errorCopy = error;
  v5 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "stopSearchingForNewAccessoriesWithError", v8, 2u);
  }

  [(HFAccessoryBrowsingManager *)self setIsBrowsing:0];
  accessoryBrowser = [(HFAccessoryBrowsingManager *)self accessoryBrowser];
  [accessoryBrowser stopSearchingForNewAccessoriesWithError:errorCopy];

  sharingDeviceBrowser = [(HFAccessoryBrowsingManager *)self sharingDeviceBrowser];
  [sharingDeviceBrowser invalidate];
}

- (void)addBrowsingObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessoryBrowsingManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeBrowsingObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessoryBrowsingManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)accessoryBrowser:(id)browser didFindNewAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    hf_prettyDescription = [accessoryCopy hf_prettyDescription];
    *buf = 138412290;
    v21 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_INFO, "didFindNewAccessory: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(HFAccessoryBrowsingManager *)self observers];
  v9 = [observers copy];

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

        [*(*(&v15 + 1) + 8 * v13++) accessoryBrowsingManager:self didFindNewAccessory:accessoryCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    hf_prettyDescription = [accessoryCopy hf_prettyDescription];
    *buf = 138412290;
    v21 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_INFO, "didRemoveNewAccessory: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(HFAccessoryBrowsingManager *)self observers];
  v9 = [observers copy];

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

        [*(*(&v15 + 1) + 8 * v13++) accessoryBrowsingManager:self didRemoveNewAccessory:accessoryCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end