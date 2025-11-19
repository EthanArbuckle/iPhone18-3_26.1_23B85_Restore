@interface HMDPrimaryNetworkInterfaceMonitor
+ (id)logCategory;
- (BOOL)_shouldAssertOnChannelWithInterfaceDetails:(id)a3;
- (HMDHome)home;
- (HMDPrimaryNetworkInterfaceMonitor)initWithHome:(id)a3 networkInfoController:(id)a4;
- (void)_fetchPrimaryNetworkInfo;
- (void)_handlePathMonitorUpdate:(id)a3;
- (void)_handleResidentWasUpdatedNotification:(id)a3;
- (void)_handleWifiCurrentNetworkChangedNotification:(id)a3;
- (void)_updatePrimaryNetworkWithInterfaceDetails:(id)a3;
- (void)cleanSCDynamicStore;
- (void)createSCDynamicStore;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation HMDPrimaryNetworkInterfaceMonitor

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_fetchPrimaryNetworkInfo
{
  v76 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__140018;
  v69 = __Block_byref_object_dispose__140019;
  v70 = 0;
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HMDPrimaryNetworkInterfaceMonitor *)self home];
  if (v4)
  {
    v5 = [(HMDPrimaryNetworkInterfaceMonitor *)self networkInfoController];
    v50 = v4;
    v51 = self;
    v6 = v5 == 0;

    if (v6)
    {
      v11 = 0;
LABEL_44:
      v4 = v50;
      goto LABEL_45;
    }

    v7 = [v50 wifiManager];
    v8 = [v7 currentNetworkAssociation];

    if (v8)
    {
      v9 = [v50 wifiManager];
      v10 = [v9 currentNetworkAssociation];
      v48 = [v10 SSID];
    }

    else
    {
      v48 = 0;
    }

    v12 = [(HMDPrimaryNetworkInterfaceMonitor *)v51 networkInfoController];
    v49 = [v12 obtainNetworkInfoProto];

    v13 = [v49 objectForKeyedSubscript:@"NetworkInfo"];
    v14 = v13;
    v15 = MEMORY[0x277CBEBF8];
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    v17 = v16;

    v18 = [v49 objectForKeyedSubscript:@"NetworkServiceInfo"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20;

    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v61 = 0u;
    v22 = v21;
    v11 = 0;
    v23 = [v22 countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v23)
    {
      v24 = *v62;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v61 + 1) + 8 * i);
          if ([v26 hasIsPrimary] && objc_msgSend(v26, "isPrimary"))
          {
            v27 = [v26 ifaceName];

            v11 = v27;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v61 objects:v75 count:16];
      }

      while (v23);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v28 = v17;
    v29 = [v28 countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v29)
    {
      v30 = *v58;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v57 + 1) + 8 * j);
          if ([v32 hasIfaceName])
          {
            v33 = [v32 ipv4Addresses];
            [v52 addObjectsFromArray:v33];

            v34 = [v32 ipv6Addresses];
            [v3 addObjectsFromArray:v34];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v57 objects:v74 count:16];
      }

      while (v29);
    }

    v35 = [(HMDPrimaryNetworkInterfaceMonitor *)v51 defaultPath];
    if (!v35)
    {
      v36 = [(HMDPrimaryNetworkInterfaceMonitor *)v51 defaultEvaluator];
      v35 = nw_path_evaluator_copy_path();

      if (!v35)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v51;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          buf = 138543362;
          v73 = v47;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@No primary interface found", &buf, 0xCu);
        }

        objc_autoreleasePoolPop(v44);
        goto LABEL_43;
      }

      [(HMDPrimaryNetworkInterfaceMonitor *)v51 setDefaultPath:v35];
    }

    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __61__HMDPrimaryNetworkInterfaceMonitor__fetchPrimaryNetworkInfo__block_invoke;
    enumerate_block[3] = &unk_27972DF70;
    v37 = v35;
    v54 = v37;
    v38 = v11;
    v55 = v38;
    v56 = &v65;
    nw_path_enumerate_interfaces(v37, enumerate_block);
    if (nw_path_get_ipv4_network_signature())
    {
      v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&buf length:20];
    }

    else
    {
      v39 = 0;
    }

    if (nw_path_get_ipv6_network_signature())
    {
      v40 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v71 length:20];
    }

    else
    {
      v40 = 0;
    }

    v41 = [HMDPrimaryNetworkInterfaceDetails alloc];
    v42 = [(HMDPrimaryNetworkInterfaceDetails *)v41 initWithPrimaryInterfaceType:v66[5] primaryInterfaceName:v38 wifiSSID:v48 primaryIPv4Addresses:v52 primaryIPv6Addresses:v3 primaryIPv4NetworkSignature:v39 primaryIPv6NetworkSignature:v40];
    [(HMDPrimaryNetworkInterfaceMonitor *)v51 _updatePrimaryNetworkWithInterfaceDetails:v42];

LABEL_43:
    goto LABEL_44;
  }

  [(HMDPrimaryNetworkInterfaceMonitor *)self stop];
  v11 = 0;
LABEL_45:

  _Block_object_dispose(&v65, 8);
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDPrimaryNetworkInterfaceMonitor__fetchPrimaryNetworkInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_interface_get_name(v3))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_get_name(v3)];
    if ((nw_path_get_status(*(a1 + 32)) & 0xFFFFFFFD) == 1 && [v4 isEqualToIgnoringCase:*(a1 + 40)])
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_interface_get_type(v3)];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

  return 1;
}

- (void)_updatePrimaryNetworkWithInterfaceDetails:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryNetworkInterfaceMonitor *)self home];
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 dictionaryRepresentation];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated interface details: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDPrimaryNetworkInterfaceMonitor *)v7 setInterfaceDetails:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(HMDPrimaryNetworkInterfaceMonitor *)self stop];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handlePathMonitorUpdate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Path monitor reported a change", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDPrimaryNetworkInterfaceMonitor *)v6 _fetchPrimaryNetworkInfo];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(HMDPrimaryNetworkInterfaceMonitor *)self pathMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDPrimaryNetworkInterfaceMonitor_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__HMDPrimaryNetworkInterfaceMonitor_stop__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isSCDynamicStoreActive])
  {
    [*(a1 + 32) cleanSCDynamicStore];
  }

  v2 = [*(a1 + 32) pathMonitor];

  if (v2)
  {
    v3 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_cancel(v3);

    [*(a1 + 32) setPathMonitor:0];
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopped monitoring default network path", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) home];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *(a1 + 32);
    v11 = [v8 residentDeviceManager];
    [v9 removeObserver:v10 name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v11];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:*(a1 + 32) name:*MEMORY[0x277D0F768] object:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = [(HMDPrimaryNetworkInterfaceMonitor *)self pathMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDPrimaryNetworkInterfaceMonitor_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__HMDPrimaryNetworkInterfaceMonitor_start__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) networkInfoController];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *(a1 + 32);
  v6 = [v2 residentDeviceManager];
  [v4 addObserver:v5 selector:sel__handleResidentWasUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel__handleWifiCurrentNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];

  [*(a1 + 32) _fetchPrimaryNetworkInfo];
  v8 = [*(a1 + 32) pathMonitor];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting to monitor default network path", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = nw_path_monitor_create();
  [*(a1 + 32) setPathMonitor:v13];

  v14 = [*(a1 + 32) pathMonitor];
  LODWORD(v13) = v14 == 0;

  if (!v13)
  {
    objc_initWeak(buf, *(a1 + 32));
    v15 = [*(a1 + 32) pathMonitor];
    update_handler[0] = MEMORY[0x277D85DD0];
    update_handler[1] = 3221225472;
    update_handler[2] = __42__HMDPrimaryNetworkInterfaceMonitor_start__block_invoke_256;
    update_handler[3] = &unk_27972DF48;
    objc_copyWeak(&v25, buf);
    nw_path_monitor_set_update_handler(v15, update_handler);

    v16 = [*(a1 + 32) pathMonitor];
    v17 = [*(a1 + 32) pathMonitorQueue];
    nw_path_monitor_set_queue(v16, v17);

    v18 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_start(v18);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
LABEL_8:
    if (([*(a1 + 32) isSCDynamicStoreActive] & 1) == 0)
    {
      [*(a1 + 32) createSCDynamicStore];
    }

    goto LABEL_10;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v23;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to start network path monitor", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

void __42__HMDPrimaryNetworkInterfaceMonitor_start__block_invoke_256(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePathMonitorUpdate:v3];
}

- (void)createSCDynamicStore
{
  v21 = *MEMORY[0x277D85DE8];
  v18.version = 0;
  memset(&v18.retain, 0, 24);
  v18.info = self;
  v3 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"HMDPrimaryNetworkInterfaceMonitor", networkChangeCallback, &v18);
  self->scDynamicStore = v3;
  if (v3)
  {
    if (SCDynamicStoreSetNotificationKeys(v3, 0, &unk_2866271D8))
    {
      scDynamicStore = self->scDynamicStore;
      v5 = [(HMDPrimaryNetworkInterfaceMonitor *)self pathMonitorQueue];
      v6 = SCDynamicStoreSetDispatchQueue(scDynamicStore, v5);

      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      v10 = v9;
      if (v6)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v11;
          v12 = "%{public}@Started network interface monitoring using SCDynamicStore";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
LABEL_8:
          _os_log_impl(&dword_2531F8000, v13, v14, v12, buf, 0xCu);

          goto LABEL_9;
        }

        goto LABEL_9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v15;
        v16 = "%{public}@Failed to set dispatch queue";
        goto LABEL_14;
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v15;
        v16 = "%{public}@Failed to set notification keys";
LABEL_14:
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
    [(HMDPrimaryNetworkInterfaceMonitor *)v8 cleanSCDynamicStore];
    goto LABEL_16;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v11;
    v12 = "%{public}@Failed to create SCDynamicStore";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v7);
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)cleanSCDynamicStore
{
  v11 = *MEMORY[0x277D85DE8];
  scDynamicStore = self->scDynamicStore;
  if (scDynamicStore)
  {
    SCDynamicStoreSetDispatchQueue(scDynamicStore, 0);
    SCDynamicStoreSetNotificationKeys(self->scDynamicStore, 0, 0);
    CFRelease(self->scDynamicStore);
    self->scDynamicStore = 0;
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopped network interface monitoring using SCDynamicStore", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleWifiCurrentNetworkChangedNotification:(id)a3
{
  v4 = [(HMDPrimaryNetworkInterfaceMonitor *)self pathMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDPrimaryNetworkInterfaceMonitor__handleWifiCurrentNetworkChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __82__HMDPrimaryNetworkInterfaceMonitor__handleWifiCurrentNetworkChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Wifi current network configuration changed. Fetching primary network information.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _fetchPrimaryNetworkInfo];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleResidentWasUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDPrimaryNetworkInterfaceMonitor *)self pathMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HMDPrimaryNetworkInterfaceMonitor__handleResidentWasUpdatedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __75__HMDPrimaryNetworkInterfaceMonitor__handleResidentWasUpdatedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if ([v5 isCurrentDevice])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device updated, check if StatusKit network data needs an update", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 40);
    v11 = [v10 interfaceDetails];
    [v10 _updatePrimaryNetworkWithInterfaceDetails:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAssertOnChannelWithInterfaceDetails:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryNetworkInterfaceMonitor *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 currentDevice];
    v8 = [(HMDPrimaryNetworkInterfaceMonitor *)self statusKitNetworkDataForDevice:v7 shouldIncludeAssertionTimeStamp:0];

    v9 = [v4 generateStatusKitPayload];
    v10 = [v9 isEqualToDictionary:v8];
    v11 = v10 ^ 1;
    if ((v10 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v15;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@StatusKit data: %@, updated network data: %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    [(HMDPrimaryNetworkInterfaceMonitor *)self stop];
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@dealloc", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMDPrimaryNetworkInterfaceMonitor *)v4 isSCDynamicStoreActive])
  {
    [(HMDPrimaryNetworkInterfaceMonitor *)v4 cleanSCDynamicStore];
  }

  v7 = [(HMDPrimaryNetworkInterfaceMonitor *)v4 pathMonitor];

  if (v7)
  {
    v8 = [(HMDPrimaryNetworkInterfaceMonitor *)v4 pathMonitor];
    nw_path_monitor_cancel(v8);

    [(HMDPrimaryNetworkInterfaceMonitor *)v4 setPathMonitor:0];
  }

  v10.receiver = v4;
  v10.super_class = HMDPrimaryNetworkInterfaceMonitor;
  [(HMDPrimaryNetworkInterfaceMonitor *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryNetworkInterfaceMonitor)initWithHome:(id)a3 networkInfoController:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = HMDPrimaryNetworkInterfaceMonitor;
  v8 = [(HMDPrimaryNetworkInterfaceMonitor *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v9->_networkInfoController, a4);
    default_evaluator = nw_path_create_default_evaluator();
    defaultEvaluator = v9->_defaultEvaluator;
    v9->_defaultEvaluator = default_evaluator;

    v12 = objc_alloc_init(HMDPrimaryNetworkInterfaceDetails);
    interfaceDetails = v9->_interfaceDetails;
    v9->_interfaceDetails = v12;

    v14 = HMFDispatchQueueName();
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_get_global_queue(17, 0);
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    pathMonitorQueue = v9->_pathMonitorQueue;
    v9->_pathMonitorQueue = v17;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v9;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@init", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_140069 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_140069, &__block_literal_global_140070);
  }

  v3 = logCategory__hmf_once_v20_140071;

  return v3;
}

uint64_t __48__HMDPrimaryNetworkInterfaceMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_140071;
  logCategory__hmf_once_v20_140071 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end