@interface CCUIConnectivityManager
+ (CCUIConnectivityManager)sharedInstance;
- (CCUIConnectivityManager)init;
- (void)_hostAPStateChanged;
- (void)_networkTetheringStateChanged;
- (void)addCellularDataViewControllerObservingStateChanges:(id)changes;
- (void)addHotspotViewControllerObservingStateChanges:(id)changes;
- (void)addVPNViewControllerObservingStateChanges:(id)changes;
- (void)addWiFiViewControllerObservingStateChanges:(id)changes;
- (void)connectivityManagerDidChange:(id)change;
- (void)removeCellularDataViewControllerObservingStateChanges:(id)changes;
- (void)removeHotspotViewControllerObservingStateChanges:(id)changes;
- (void)removeVPNViewControllerObservingStateChanges:(id)changes;
- (void)removeWiFiViewControllerObservingStateChanges:(id)changes;
@end

@implementation CCUIConnectivityManager

+ (CCUIConnectivityManager)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CCUIConnectivityManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __41__CCUIConnectivityManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CCUIConnectivityManager);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

- (CCUIConnectivityManager)init
{
  v38.receiver = self;
  v38.super_class = CCUIConnectivityManager;
  v2 = [(CCUIConnectivityManager *)&v38 init];
  if (!v2)
  {
    return v2;
  }

  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  vpnViewControllersObservingStateChanges = v2->_vpnViewControllersObservingStateChanges;
  v2->_vpnViewControllersObservingStateChanges = weakObjectsHashTable;

  weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  wifiViewControllersObservingStateChanges = v2->_wifiViewControllersObservingStateChanges;
  v2->_wifiViewControllersObservingStateChanges = weakObjectsHashTable2;

  weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  hotspotViewControllersObservingStateChanges = v2->_hotspotViewControllersObservingStateChanges;
  v2->_hotspotViewControllersObservingStateChanges = weakObjectsHashTable3;

  weakObjectsHashTable4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  cellularDataViewControllersObservingStateChanges = v2->_cellularDataViewControllersObservingStateChanges;
  v2->_cellularDataViewControllersObservingStateChanges = weakObjectsHashTable4;

  v11 = [objc_alloc(MEMORY[0x277CD92F8]) initWithDelegate:v2];
  vpnConnectivityManager = v2->_vpnConnectivityManager;
  v2->_vpnConnectivityManager = v11;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v13 = getWFControlCenterStateMonitorClass_softClass;
  v47 = getWFControlCenterStateMonitorClass_softClass;
  if (!getWFControlCenterStateMonitorClass_softClass)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getWFControlCenterStateMonitorClass_block_invoke;
    v42 = &unk_2783822F8;
    v43 = &v44;
    __getWFControlCenterStateMonitorClass_block_invoke(&v39);
    v13 = v45[3];
  }

  v14 = v13;
  _Block_object_dispose(&v44, 8);
  v15 = objc_alloc_init(v13);
  wifiStateMonitor = v2->_wifiStateMonitor;
  v2->_wifiStateMonitor = v15;

  objc_initWeak(&location, v2);
  v17 = v2->_wifiStateMonitor;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __31__CCUIConnectivityManager_init__block_invoke;
  v35 = &unk_278382CA0;
  objc_copyWeak(&v36, &location);
  [(WFControlCenterStateMonitor *)v17 setHandler:&v32];
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  wifiQueue = v2->_wifiQueue;
  v2->_wifiQueue = SerialWithQoS;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v20 = getWFPersonalHotspotStateMonitorClass_softClass;
  v47 = getWFPersonalHotspotStateMonitorClass_softClass;
  if (!getWFPersonalHotspotStateMonitorClass_softClass)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getWFPersonalHotspotStateMonitorClass_block_invoke;
    v42 = &unk_2783822F8;
    v43 = &v44;
    __getWFPersonalHotspotStateMonitorClass_block_invoke(&v39);
    v20 = v45[3];
  }

  v21 = v20;
  _Block_object_dispose(&v44, 8);
  v22 = objc_alloc_init(v20);
  hotspotStateMonitor = v2->_hotspotStateMonitor;
  v2->_hotspotStateMonitor = v22;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__networkTetheringStateChanged name:*MEMORY[0x277D67A90] object:0];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v25 = getWFInterfaceHostAPStateChangeNotificationSymbolLoc_ptr;
  v47 = getWFInterfaceHostAPStateChangeNotificationSymbolLoc_ptr;
  if (!getWFInterfaceHostAPStateChangeNotificationSymbolLoc_ptr)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getWFInterfaceHostAPStateChangeNotificationSymbolLoc_block_invoke;
    v42 = &unk_2783822F8;
    v43 = &v44;
    v26 = WiFiKitLibrary();
    v27 = dlsym(v26, "WFInterfaceHostAPStateChangeNotification");
    *(v43[1] + 24) = v27;
    getWFInterfaceHostAPStateChangeNotificationSymbolLoc_ptr = *(v43[1] + 24);
    v25 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (v25)
  {
    v28 = *v25;
    [defaultCenter addObserver:v2 selector:sel__hostAPStateChanged name:v28 object:0];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
    return v2;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getWFInterfaceHostAPStateChangeNotification(void)"];
  [currentHandler handleFailureInFunction:v31 file:@"CCUIConnectivityManager.m" lineNumber:24 description:{@"%s", dlerror(), v32, v33, v34, v35}];

  __break(1u);
  return result;
}

void __31__CCUIConnectivityManager_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CCUIConnectivityManager_init__block_invoke_2;
  block[3] = &unk_278382038;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __31__CCUIConnectivityManager_init__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained wifiViewControllersObservingStateChanges];
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (ConnectivityManager) Sending state update to wifiViewControllersObservingStateChanges: %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 wifiViewControllersObservingStateChanges];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) updateState];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addVPNViewControllerObservingStateChanges:(id)changes
{
  changesCopy = changes;
  vpnViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self vpnViewControllersObservingStateChanges];
  [vpnViewControllersObservingStateChanges addObject:changesCopy];
}

- (void)removeVPNViewControllerObservingStateChanges:(id)changes
{
  changesCopy = changes;
  vpnViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self vpnViewControllersObservingStateChanges];
  [vpnViewControllersObservingStateChanges removeObject:changesCopy];
}

- (void)addWiFiViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  wifiViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self wifiViewControllersObservingStateChanges];
  [wifiViewControllersObservingStateChanges addObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = wifiViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (ConnectivityManager) Added wifiViewController:%{public}@ to wifiViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)removeWiFiViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  wifiViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self wifiViewControllersObservingStateChanges];
  [wifiViewControllersObservingStateChanges removeObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = wifiViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (ConnectivityManager) Removed wifiViewController:%{public}@ from wifiViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)addHotspotViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  hotspotViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self hotspotViewControllersObservingStateChanges];
  [hotspotViewControllersObservingStateChanges addObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = hotspotViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[Hotspot] (ConnectivityManager) Added hotspotViewController:%{public}@ to hotspotViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)removeHotspotViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  hotspotViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self hotspotViewControllersObservingStateChanges];
  [hotspotViewControllersObservingStateChanges removeObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = hotspotViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[Hotspot] (ConnectivityManager) Removed hotspotViewController:%{public}@ from hotspotViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)addCellularDataViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  cellularDataViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self cellularDataViewControllersObservingStateChanges];
  [cellularDataViewControllersObservingStateChanges addObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = cellularDataViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] (ConnectivityManager) Added cellularDataViewController:%{public}@ to cellularDataViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)removeCellularDataViewControllerObservingStateChanges:(id)changes
{
  v11 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  cellularDataViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self cellularDataViewControllersObservingStateChanges];
  [cellularDataViewControllersObservingStateChanges removeObject:changesCopy];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = changesCopy;
    v9 = 2114;
    v10 = cellularDataViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] (ConnectivityManager) Removed cellularDataViewController:%{public}@ from cellularDataViewControllersObservingStateChanges: %{public}@", &v7, 0x16u);
  }
}

- (void)connectivityManagerDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CCUIConnectivityManager_connectivityManagerDidChange___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CCUIConnectivityManager_connectivityManagerDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) vpnViewControllersObservingStateChanges];
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

        [*(*(&v6 + 1) + 8 * v5++) updateState];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_networkTetheringStateChanged
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    hotspotViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self hotspotViewControllersObservingStateChanges];
    *buf = 138543362;
    v8 = hotspotViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Hotspot] (ConnectivityManager) Received SBNetworkTetheringStateChangedNotification, Sending state update to hotspotViewControllersObservingStateChanges: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CCUIConnectivityManager__networkTetheringStateChanged__block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CCUIConnectivityManager__networkTetheringStateChanged__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) hotspotViewControllersObservingStateChanges];
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

        [*(*(&v6 + 1) + 8 * v5++) updateState];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_hostAPStateChanged
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    hotspotViewControllersObservingStateChanges = [(CCUIConnectivityManager *)self hotspotViewControllersObservingStateChanges];
    *buf = 138543362;
    v8 = hotspotViewControllersObservingStateChanges;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Hotspot] (ConnectivityManager) Received WFInterfaceHostAPStateChangeNotification, Sending state update to hotspotViewControllersObservingStateChanges: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CCUIConnectivityManager__hostAPStateChanged__block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__CCUIConnectivityManager__hostAPStateChanged__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) hotspotViewControllersObservingStateChanges];
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

        [*(*(&v6 + 1) + 8 * v5++) updateDiscoverability];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end