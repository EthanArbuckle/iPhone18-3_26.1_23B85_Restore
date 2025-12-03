@interface HMFWiFiManagerDataSource
+ (NSString)MACAddressString;
- (BOOL)isCaptive;
- (BOOL)isWoWAsserted;
- (HMFWiFiManagerDataSource)initWithWorkQueue:(id)queue;
- (HMFWiFiManagerDataSourceDelegate)delegate;
- (HMFWifiNetworkAssociation)currentNetworkAssociation;
- (NSNumber)currentNetworkRSSI;
- (void)_invalidateCaptiveState;
- (void)_registerForCaptiveStateChanges;
- (void)_setCurrentNetwork:(__WiFiNetwork *)network;
- (void)activateWithOptions:(unint64_t)options;
- (void)deactivate;
- (void)dealloc;
- (void)handleWiFiLinkChangedWithEventDictionary:(id)dictionary;
- (void)performBlockAfterWoWReassertionDelay:(id)delay;
- (void)setWoWAsserted:(BOOL)asserted;
- (void)startWithWiFiDevice:(__WiFiDeviceClient *)device;
@end

@implementation HMFWiFiManagerDataSource

- (BOOL)isCaptive
{
  v22 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  [(NSLock *)self->_captiveCachedLock lock];
  captiveCached = self->_captiveCached;
  if (!captiveCached)
  {
    v5 = WiFiCopyCurrentNetworkInfo();
    if (v5)
    {
      if (CFDictionaryGetInt64())
      {
        v6 = 6;
      }

      else
      {
        v6 = 5;
      }

      self->_captiveCached = v6;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier(0);
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@[HMFWiFiManagerDataSource] isCaptive: WiFi info not found", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    captiveCached = self->_captiveCached;
  }

  [(NSLock *)self->_captiveCachedLock unlock];
  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier(0);
    v13 = CFAbsoluteTimeGetCurrent();
    v16 = 138543874;
    v17 = v12;
    v18 = 2048;
    v19 = v13 - Current;
    v20 = 1024;
    v21 = captiveCached == 6;
    _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[HMFWiFiManagerDataSource] isCaptive took %.02f seconds (captive: %d)", &v16, 0x1Cu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];
  return captiveCached == 6;
}

- (HMFWiFiManagerDataSource)initWithWorkQueue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = HMFWiFiManagerDataSource;
  v6 = [(HMFWiFiManagerDataSource *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    captiveCachedLock = v7->_captiveCachedLock;
    v7->_captiveCachedLock = v8;

    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v28 = v12;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initializing WiFi Services", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v13 = *MEMORY[0x277CBECE8];
    v14 = WiFiManagerClientCreate();
    v7->_wifiClientReference = v14;
    if (v14)
    {
      CFRunLoopGetMain();
      v15 = *MEMORY[0x277CBF058];
      WiFiManagerClientScheduleWithRunLoop();
      wifiClientReference = v7->_wifiClientReference;
      WiFiManagerClientRegisterDeviceAttachmentCallback();
      v17 = v7->_wifiClientReference;
      WiFiManagerClientRegisterWowStateChangedCallback();
      v18 = v7->_wifiClientReference;
      v19 = WiFiManagerClientCopyDevices();
      if (v19)
      {
        v20 = v19;
        if (CFArrayGetCount(v19))
        {
          [(HMFWiFiManagerDataSource *)v7 startWithWiFiDevice:CFArrayGetValueAtIndex(v20, 0)];
        }

        CFRelease(v20);
      }

      [(HMFWiFiManagerDataSource *)v7 _registerForCaptiveStateChanges];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier(0);
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_ERROR, "%{public}@[HMFWiFiManagerDataSource] Failed to create WiFiManagerClient", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v7 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMFWiFiManagerDataSource *)self wifiClientReference])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing wifi client reference", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFWiFiManagerDataSource *)self wifiClientReference];
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    [(HMFWiFiManagerDataSource *)self wifiClientReference];
    WiFiManagerClientRegisterWowStateChangedCallback();
    CFRelease([(HMFWiFiManagerDataSource *)self wifiClientReference]);
  }

  if ([(HMFWiFiManagerDataSource *)self wifiDeviceReference])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing wifi device reference", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMFWiFiManagerDataSource *)self wifiDeviceReference];
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRelease([(HMFWiFiManagerDataSource *)self wifiDeviceReference]);
  }

  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    CFRelease([(HMFWiFiManagerDataSource *)self currentNetwork]);
  }

  if ([(HMFWiFiManagerDataSource *)self scStore])
  {
    [(HMFWiFiManagerDataSource *)self scStore];
    SCDynamicStoreRemoveWatchedKey();
    CFRelease([(HMFWiFiManagerDataSource *)self scStore]);
  }

  v10.receiver = self;
  v10.super_class = HMFWiFiManagerDataSource;
  [(HMFWiFiManagerDataSource *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

+ (NSString)MACAddressString
{
  v2 = +[HMFSystemInfo systemInfo];
  wiFiInterfaceMACAddress = [v2 WiFiInterfaceMACAddress];
  formattedString = [wiFiInterfaceMACAddress formattedString];

  return formattedString;
}

- (void)activateWithOptions:(unint64_t)options
{
  if (options)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  wifiClientReference = [(HMFWiFiManagerDataSource *)self wifiClientReference];

  MEMORY[0x2821878C8](wifiClientReference, v3);
}

- (void)deactivate
{
  wifiClientReference = [(HMFWiFiManagerDataSource *)self wifiClientReference];

  MEMORY[0x2821878C8](wifiClientReference, 0);
}

- (BOOL)isWoWAsserted
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMFWiFiManagerDataSource *)self wifiClientReference];
  return WiFiManagerClientGetWoWState() != 0;
}

- (void)setWoWAsserted:(BOOL)asserted
{
  assertedCopy = asserted;
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier(0);
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = assertedCopy;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Calling WiFiManagerClientSetWoWState() with %d", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMFWiFiManagerDataSource *)self wifiClientReference];
  WiFiManagerClientSetWoWState();
  v9 = *MEMORY[0x277D85DE8];
}

- (HMFWifiNetworkAssociation)currentNetworkAssociation
{
  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    v3 = WiFiCopyCurrentNetworkInfoEx();
    v4 = [v3 hmf_dictionaryForKey:@"rawRecord"];
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v5 = WiFiNetworkGetSSID();
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v15 = WiFiNetworkRequiresPassword();
    v6 = +[HMFSystemInfo systemInfo];
    wiFiInterfaceMACAddress = [v6 WiFiInterfaceMACAddress];

    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v8 = WiFiNetworkCopyBSSIDData();
    if (v8)
    {
      v9 = [[HMFMACAddress alloc] initWithAddressData:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v4 hmf_stringForKey:*MEMORY[0x277D29888]];
    v16 = v3;
    v12 = [v4 hmf_stringForKey:*MEMORY[0x277D29890]];
    if (v12)
    {
      v13 = [[HMFMACAddress alloc] initWithMACAddressString:v12];
    }

    else
    {
      v13 = 0;
    }

    v10 = 0;
    if (v5 && wiFiInterfaceMACAddress && v9 && v11 && v13)
    {
      v10 = [[HMFWifiNetworkAssociation alloc] initWithMACAddress:wiFiInterfaceMACAddress SSID:v5 requiresPassword:v15 != 0 BSSID:v9 gatewayIPAddress:v11 gatewayMACAddress:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (NSNumber)currentNetworkRSSI
{
  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    v3 = MEMORY[0x277CCABB0];
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v4 = [v3 numberWithInt:WiFiNetworkGetRSSI()];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_invalidateCaptiveState
{
  [(NSLock *)self->_captiveCachedLock lock];
  [(HMFWiFiManagerDataSource *)self setCaptiveCached:0];
  captiveCachedLock = self->_captiveCachedLock;

  [(NSLock *)captiveCachedLock unlock];
}

- (void)performBlockAfterWoWReassertionDelay:(id)delay
{
  delayCopy = delay;
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = dispatch_time(0, 5000000000);
  workQueue2 = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_after(v6, workQueue2, delayCopy);
}

- (void)startWithWiFiDevice:(__WiFiDeviceClient *)device
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMFWiFiManagerDataSource_startWithWiFiDevice___block_invoke;
  v6[3] = &unk_2786E7EF0;
  v6[4] = self;
  v6[5] = device;
  dispatch_async(workQueue, v6);
}

void __48__HMFWiFiManagerDataSource_startWithWiFiDevice___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier(0);
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&dword_22ADEC000, v3, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initializing WiFi Device", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) wifiDeviceReference])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(0);
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing previous reference", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) wifiDeviceReference];
    v8 = *(a1 + 32);
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRelease([*(a1 + 32) wifiDeviceReference]);
  }

  [*(a1 + 32) setWifiDeviceReference:CFRetain(*(a1 + 40))];
  [*(a1 + 32) wifiDeviceReference];
  v9 = *(a1 + 32);
  WiFiDeviceClientRegisterExtendedLinkCallback();
  [*(a1 + 32) wifiDeviceReference];
  v10 = WiFiDeviceClientCopyCurrentNetwork();
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier(0);
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initialized WiFi Device with current network: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [*(a1 + 32) _setCurrentNetwork:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleWiFiLinkChangedWithEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMFWiFiManagerDataSource_handleWiFiLinkChangedWithEventDictionary___block_invoke;
  v7[3] = &unk_2786E6D18;
  v8 = dictionaryCopy;
  selfCopy = self;
  v6 = dictionaryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMFWiFiManagerDataSource_handleWiFiLinkChangedWithEventDictionary___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_numberForKey:@"LINK_CHANGED_IS_LINKDOWN"];
  v3 = [v2 BOOLValue];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"LINK_CHANGED_NETWORK"];

  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier(0);
    v8 = v7;
    v9 = @"Up";
    if (v3)
    {
      v9 = @"Down";
    }

    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] WiFi link is %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [*(a1 + 40) delegate];
  [v10 dataSource:*(a1 + 40) didChangeLinkAvailability:v3 ^ 1u];

  [*(a1 + 40) _setCurrentNetwork:v4];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setCurrentNetwork:(__WiFiNetwork *)network
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork]== network)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if ([(HMFWiFiManagerDataSource *)self currentNetwork])
    {
      CFRelease([(HMFWiFiManagerDataSource *)self currentNetwork]);
    }

    [(HMFWiFiManagerDataSource *)self setCurrentNetwork:network];
    if ([(HMFWiFiManagerDataSource *)self currentNetwork])
    {
      CFRetain([(HMFWiFiManagerDataSource *)self currentNetwork]);
    }

    [(HMFWiFiManagerDataSource *)self _invalidateCaptiveState];
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HMFWiFiManagerDataSource *)self delegate];
    [delegate currentNetworkDidChangeForDataSource:self];
  }
}

- (void)_registerForCaptiveStateChanges
{
  v5.version = 0;
  memset(&v5.retain, 0, 24);
  v5.info = self;
  v3 = SCDynamicStoreCreate(0, @"HMFWiFiManager", dynamicStoreCallback, &v5);
  if (v3)
  {
    v4 = v3;
    if (SCDynamicStoreAddWatchedKey())
    {
      if (SCDynamicStoreSetDispatchQueue(v4, self->_workQueue))
      {
        self->_scStore = v4;
      }
    }
  }
}

- (HMFWiFiManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end