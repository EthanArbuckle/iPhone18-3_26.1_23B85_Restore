@interface HAPAccessoryServerBrowserIP
+ (id)logCategory;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (HAPAccessoryServerBrowserDelegate)delegate;
- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue;
- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue cache:(id)cache;
- (id)serverWithIdentifier:(id)identifier ignoreLPM:(BOOL)m;
- (id)visible2Pt4Networks;
- (int)_initializeAndStartBonjourBrowser;
- (int)_server:(id *)_server forBonjourDevice:(id)device;
- (void)_doBonjourRemoveWithServer:(id)server;
- (void)_doReachabilityUpdateForServer:(id)server withDictionary:(id)dictionary;
- (void)_doStartDiscoveringAccessoryServers;
- (void)_handleBonjourAddOrUpdateWithEventInfo:(id)info;
- (void)_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info;
- (void)_handleBonjourRemoveWithEventInfo:(id)info;
- (void)_handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)_invalidateAccessoryServers:(BOOL)servers;
- (void)_invalidateAndRemoveAccessoryServer:(id)server;
- (void)_invalidateWACServers;
- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_pendBonjourEvent:(id)event;
- (void)_pendBonjourRemoveEvent:(id)event;
- (void)_prePopulateBrowserFromCacheWithCompletion:(id)completion;
- (void)_server:(id *)_server forHAPWACAccessory:(id)accessory;
- (void)_timerDidExpire:(id)expire;
- (void)devicePowerStateChanged:(unint64_t)changed;
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)notifyDelegatesOfWACCompletionWithIdentifier:(id)identifier error:(id)error;
- (void)pendDelegateBlock:(id)block identifier:(id)identifier;
- (void)pendDelegateOperation:(id)operation identifier:(id)identifier;
- (void)processPendingBonjourRemoveEvents:(id)events;
- (void)processPendingBonjourRemoveEventsForDeviceID:(id)d;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startDiscoveringAccessoryServers;
- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)delegate;
- (void)startDiscoveringWACAccessoryServerWithIdentifier:(id)identifier;
- (void)startDiscoveringWACAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)stopDiscoveringWACAccessoryServersWithInvalidation:(BOOL)invalidation;
- (void)timerDidFire:(id)fire;
- (void)unitTest_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info;
- (void)updateCacheForDeviceID:(id)d ipData:(id)data;
- (void)wacBrowser:(id)browser didFindHAPWACAccessory:(id)accessory;
- (void)wacBrowser:(id)browser didFindUnconfiguredPairedHAPWACAccessory:(id)accessory;
- (void)wacBrowser:(id)browser didRemoveHAPWACAccessory:(id)accessory;
@end

@implementation HAPAccessoryServerBrowserIP

- (HAPAccessoryServerBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)unitTest_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HAPAccessoryServerBrowserIP_unitTest_handleBonjourBrowserEvent_eventInfo___block_invoke;
  block[3] = &unk_2786D4E70;
  eventCopy = event;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_sync(workQueue, block);
}

- (id)serverWithIdentifier:(id)identifier ignoreLPM:(BOOL)m
{
  mCopy = m;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(discoveredAccessoryServers);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      identifier = [v12 identifier];
      v14 = [identifier isEqual:identifierCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if ((!mCopy || ![v12 wakeNumber]) && (objc_msgSend(v12, "isWacAccessory") & 1) == 0)
    {
      v15 = v12;
      goto LABEL_15;
    }
  }

LABEL_13:
  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)wacBrowser:(id)browser didFindUnconfiguredPairedHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v44 = v5;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@WAC Browser found Unconfigured Accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isHomeKitAccessory])
  {
    v42 = 0;
    [*(a1 + 32) _server:&v42 forHAPWACAccessory:*(a1 + 40)];
    v7 = v42;
    if (!v7)
    {
      v8 = [HAPAccessoryServerIP alloc];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) keyStore];
      v7 = [(HAPAccessoryServerIP *)v8 initWithHAPWACAccessory:v9 keystore:v10 browser:*(a1 + 32)];
    }

    v11 = *(a1 + 32);
    v12 = [(HAPAccessoryServer *)v7 identifier];
    v13 = [v11 isPaired:v12];

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Found unconfigured server paired with us - needs to reprovision", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [*(a1 + 32) discoveredAccessoryServers];
      v20 = [v19 containsObject:v7];

      if ((v20 & 1) == 0)
      {
        v21 = [*(a1 + 32) discoveredAccessoryServers];
        [v21 addObject:v7];
      }

      v22 = [*(a1 + 32) delegate];
      if (objc_opt_respondsToSelector())
      {
        v23 = *(a1 + 32);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke_78;
        v38[3] = &unk_2786D7078;
        v24 = v22;
        v25 = *(a1 + 32);
        v39 = v24;
        v40 = v25;
        v41 = v7;
        v26 = [(HAPAccessoryServer *)v41 identifier];
        [v23 pendDelegateBlock:v38 identifier:v26];
      }

      if (objc_opt_respondsToSelector())
      {
        v27 = *(a1 + 32);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke_2;
        v34[3] = &unk_2786D7078;
        v28 = v22;
        v29 = *(a1 + 32);
        v35 = v28;
        v36 = v29;
        v37 = v7;
        v30 = [(HAPAccessoryServer *)v37 identifier];
        [v27 pendDelegateBlock:v34 identifier:v30];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 40);
        *buf = 138543618;
        v44 = v31;
        v45 = 2112;
        v46 = v32;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring accessory not paired with us: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)wacBrowser:(id)browser didRemoveHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Removing WAC Accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) deviceId];
  v9 = [v7 serverWithIdentifier:v8 ignoreLPM:1];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v14;
      v34 = 2114;
      v35 = v9;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@WAC accessory was removed invalidating server: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [*(a1 + 32) delegate];
    v16 = [[HAPAccessoryServerBrowserInvalidateServerOperation alloc] initWithServer:v9];
    v17 = *(a1 + 32);
    v18 = [v9 identifier];
    [v17 pendDelegateOperation:v16 identifier:v18];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(buf, *(a1 + 32));
      v19 = MEMORY[0x277CCA8C8];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke_75;
      v28[3] = &unk_2786D6F50;
      objc_copyWeak(&v31, buf);
      v29 = v15;
      v20 = v9;
      v30 = v20;
      v21 = [v19 blockOperationWithBlock:v28];
      v22 = *(a1 + 32);
      v23 = [v20 identifier];
      [v22 pendDelegateOperation:v21 identifier:v23];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    v24 = [*(a1 + 32) discoveredAccessoryServers];
    [v24 removeObject:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *(a1 + 40);
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Unknown wac device was removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) accessoryServerBrowser:WeakRetained didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (void)wacBrowser:(id)browser didFindHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@WAC Browser found wac accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (![*(a1 + 40) isHomeKitAccessory])
  {
    v7 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138543618;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring unknown accessory: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if ([*(a1 + 40) requiresOwnershipToken])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring WAC accessory requiring ownership token", buf, 0xCu);
    }

LABEL_11:
    objc_autoreleasePoolPop(v7);
    goto LABEL_18;
  }

  v31 = 0;
  [*(a1 + 32) _server:&v31 forHAPWACAccessory:*(a1 + 40)];
  v15 = v31;
  if (v15)
  {
    v16 = v15;
    [(HAPAccessoryServerIP *)v15 updateWithHAPWACAccessory:*(a1 + 40)];
  }

  else
  {
    v17 = [HAPAccessoryServerIP alloc];
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) keyStore];
    v16 = [(HAPAccessoryServerIP *)v17 initWithHAPWACAccessory:v18 keystore:v19 browser:*(a1 + 32)];

    v20 = [*(a1 + 32) discoveredAccessoryServers];
    [v20 addObject:v16];
  }

  v21 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = *(a1 + 32);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke_74;
    v27[3] = &unk_2786D7078;
    v23 = v21;
    v24 = *(a1 + 32);
    v28 = v23;
    v29 = v24;
    v30 = v16;
    v25 = [(HAPAccessoryServer *)v30 identifier:v27[0]];
    [v22 pendDelegateBlock:v27 identifier:v25];
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateWACServers
{
  selfCopy = self;
  v53 = *MEMORY[0x277D85DE8];
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v4 = [discoveredAccessoryServers copy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v39;
    *&v7 = 138543618;
    v34 = v7;
    v35 = v5;
    v36 = selfCopy;
    v37 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        if ([v11 isWacAccessory])
        {
          identifier = [v11 identifier];
          v13 = [(HAPAccessoryServerBrowser *)selfCopy isPaired:identifier];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = selfCopy;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              name = [v11 name];
              identifier2 = [v11 identifier];
              *buf = 138543874;
              v43 = v17;
              v44 = 2112;
              v45 = name;
              v46 = 2114;
              v47 = identifier2;
              _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory Server %@/%{public}@ is already paired - not removing the accessory server", buf, 0x20u);

              v9 = v37;
            }

            objc_autoreleasePoolPop(v14);
          }

          else if (([v11 hasBonjourDeviceInfo] & 1) != 0 || objc_msgSend(v11, "isWacLegacy") && objc_msgSend(v11, "isWacComplete"))
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              name2 = [v11 name];
              identifier3 = [v11 identifier];
              [v11 isWacLegacy];
              v26 = HMFBooleanToString();
              [v11 isWacComplete];
              v27 = HMFBooleanToString();
              *buf = 138544386;
              v43 = v23;
              v44 = 2112;
              v45 = name2;
              v46 = 2114;
              v47 = identifier3;
              v48 = 2112;
              v49 = v26;
              v50 = 2112;
              v51 = v27;
              _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Accessory Server %@/%{public}@ already has a Bonjour device info/completed WAC %@/%@ - not removing the accessory server", buf, 0x34u);

              selfCopy = v36;
              v5 = v35;
            }

            objc_autoreleasePoolPop(v20);
            v9 = v37;
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              identifier4 = [v11 identifier];
              *buf = v34;
              v43 = v31;
              v44 = 2114;
              v45 = identifier4;
              _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired accessory %{public}@", buf, 0x16u);

              selfCopy = v36;
              v5 = v35;
            }

            objc_autoreleasePoolPop(v28);
            [(HAPAccessoryServerBrowserIP *)v29 _invalidateAndRemoveAccessoryServer:v11];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v8);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_timerDidExpire:(id)expire
{
  v47 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v5 = [pendingBonjourEvents copy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v5;
  v36 = [v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v36)
  {
    v7 = *v39;
    v8 = 0x277CBE000uLL;
    v34 = v6;
    selfCopy = self;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"kHAPBonjourEventReceivedTimeKey"];
        v12 = [v10 objectForKeyedSubscript:@"kHAPBonjourEventKey"];
        date = [*(v8 + 2728) date];
        [date timeIntervalSinceDate:v11];
        v15 = v14;

        if (v15 > 40.0)
        {
          v37 = 0;
          [(HAPAccessoryServerBrowserIP *)self _server:&v37 forBonjourDevice:v12];
          v16 = v37;
          v17 = v16;
          if (v16 && [v16 isSessionRestoreActive])
          {
            v18 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v12 objectForKeyedSubscript:@"deviceID"];
              *buf = 138543618;
              v43 = v21;
              v44 = 2114;
              v45 = v22;
              _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Timed out,  Not handling pending Bonjour for %{public}@, as session restore is active", buf, 0x16u);

              v6 = v34;
              self = selfCopy;
            }

            objc_autoreleasePoolPop(v18);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              v27 = [v12 objectForKeyedSubscript:@"deviceID"];
              *buf = 138543618;
              v43 = v26;
              v44 = 2114;
              v45 = v27;
              _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Timed out, handling pending Bonjour event for %{public}@", buf, 0x16u);

              v6 = v34;
              self = selfCopy;
            }

            objc_autoreleasePoolPop(v23);
            v28 = [v12 objectForKeyedSubscript:@"deviceID"];
            [(HAPAccessoryServerBrowserIP *)selfCopy3 _purgePendingBonjourEvents:v28 withProcessing:1];
          }

          v8 = 0x277CBE000;
        }
      }

      v36 = [v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v36);
  }

  pendingBonjourEvents2 = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v30 = [pendingBonjourEvents2 count];

  if (v30)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    [bonjourEventTimer resume];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];

  v6 = fireCopy;
  if (bonjourEventTimer == fireCopy)
  {
    [(HAPAccessoryServerBrowserIP *)self _timerDidExpire:fireCopy];
    v6 = fireCopy;
  }
}

- (void)devicePowerStateChanged:(unint64_t)changed
{
  if (changed == 2)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    isRunning = [bonjourEventTimer isRunning];

    if (isRunning)
    {
      bonjourEventTimer2 = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
      [bonjourEventTimer2 kick];
    }
  }
}

- (void)processPendingBonjourRemoveEventsForDeviceID:(id)d
{
  dCopy = d;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPAccessoryServerBrowserIP_processPendingBonjourRemoveEventsForDeviceID___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

- (void)_pendBonjourEvent:(id)event
{
  eventCopy = event;
  pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v6 = [pendingBonjourEvents count];

  if (!v6)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    [bonjourEventTimer resume];
  }

  pendingBonjourEvents2 = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  [pendingBonjourEvents2 addObject:eventCopy];
}

- (void)_pendBonjourRemoveEvent:(id)event
{
  v44[3] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v34 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v34 forBonjourDevice:eventCopy];
  v5 = v34;
  v6 = v5;
  if (v5 && ([v5 identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[HAPAccessoryServerBrowser isPaired:](self, "isPaired:", v7), v7, !v8))
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v26;
      v37 = 2112;
      v38 = eventCopy;
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Handling Bonjour remove event %@ for unpaired accessory server: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [eventCopy hmf_stringForKey:@"deviceID"];
    v28 = [(HAPAccessoryServerBrowserIP *)selfCopy _processPendingBonjourEvent:v27];

    if (!v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v32;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%{public}@None pending - processing the remove", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [(HAPAccessoryServerBrowserIP *)v30 _handleBonjourRemoveWithEventInfo:eventCopy];
    }
  }

  else
  {
    v44[0] = @"kHAPBonjourEventType_Remove";
    v43[0] = @"kHAPBonjourEventType";
    v43[1] = @"kHAPBonjourEventReceivedTimeKey";
    date = [MEMORY[0x277CBEAA8] date];
    v43[2] = @"kHAPBonjourEventKey";
    v44[1] = date;
    v44[2] = eventCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)selfCopy2 pendingBonjourEvents];
      v16 = [pendingBonjourEvents count];
      [v6 isSessionRestoreActive];
      v17 = HMFBooleanToString();
      *buf = 138544130;
      v36 = v14;
      v37 = 2112;
      v38 = eventCopy;
      v39 = 2048;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Pending Bonjour remove event: %@, Current Count: %lu, session restore: %{public}@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HAPAccessoryServerBrowserIP *)selfCopy2 _pendBonjourEvent:v10];
    if (v6 && ([v6 isSessionRestoreActive] & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy2;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        identifier = [v6 identifier];
        *buf = 138543618;
        v36 = v21;
        v37 = 2114;
        v38 = identifier;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Marking all accessories for server %{public}@ as unreachable while confirming the remove event", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HAPAccessoryServerBrowserIP *)v19 _setReachability:0 forServer:v6];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServerBrowserIP *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServerBrowserIP *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServerBrowserIP *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_invalidateAccessoryServers:(BOOL)servers
{
  serversCopy = servers;
  v22 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v7 = [v5 setWithSet:discoveredAccessoryServers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (!serversCopy || ([*(*(&v17 + 1) + 8 * v12) identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[HAPAccessoryServerBrowser isPaired:](self, "isPaired:", v14), v14, !v15))
        {
          [(HAPAccessoryServerBrowserIP *)self _invalidateAndRemoveAccessoryServer:v13, v17];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_server:(id *)_server forHAPWACAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  if (_server)
  {
    *_server = 0;
    deviceId = [accessory deviceId];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
    v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(discoveredAccessoryServers);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:deviceId];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v14 = v8;
    *_server = v8;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int)_server:(id *)_server forBonjourDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v23 = 0;
  v7 = BonjourDevice_CopyCFString();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(discoveredAccessoryServers);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:v7];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v7)
  {
    CFRelease(v7);
  }

  v15 = v9;
  *_server = v9;
  v16 = v23;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_handleBonjourRemoveWithEventInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v17 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v17 forBonjourDevice:infoCopy];
  v5 = v17;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      isPaired = [v7 isPaired];
      *buf = 138543618;
      v19 = v9;
      v20 = 1024;
      LODWORD(v21) = isPaired;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Authenticated: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
    [(HAPAccessoryServerBrowserIP *)self _doBonjourRemoveWithServer:v7];
  }

  else
  {
    v11 = [infoCopy objectForKeyedSubscript:@"name"];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Removed BonjourDevice with name %@ but it was not a part of the discoveredAccessoryServers set", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_doBonjourRemoveWithServer:(id)server
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (serverCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      identifier = [serverCopy identifier];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = identifier;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing IP accessory server with device ID %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [serverCopy unregisterForNotifications:selfCopy];
    [(HAPAccessoryServerBrowserIP *)selfCopy _invalidateAndRemoveAccessoryServer:serverCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary
{
  serverCopy = server;
  dictionaryCopy = dictionary;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HAPAccessoryServerBrowserIP_indicateNotificationFromServer_notifyType_withDictionary___block_invoke;
  v13[3] = &unk_2786D6E88;
  v14 = dictionaryCopy;
  selfCopy = self;
  v16 = serverCopy;
  typeCopy = type;
  v11 = serverCopy;
  v12 = dictionaryCopy;
  dispatch_async(workQueue, v13);
}

void __88__HAPAccessoryServerBrowserIP_indicateNotificationFromServer_notifyType_withDictionary___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 hmf_numberForKey:@"HAPAccessoryInstanceID"];
  }

  else
  {
    v3 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [*(a1 + 40) discoveredAccessoryServers];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [*(a1 + 48) identifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v18 = *(a1 + 56);
          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 40);
          v21 = HMFGetOSLogHandle();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if (v18 == 1)
          {
            if (v22)
            {
              v23 = HMFGetLogIdentifier();
              v24 = [v9 identifier];
              *buf = 138543874;
              v34 = v23;
              v35 = 2114;
              v36 = v24;
              v37 = 2114;
              v38 = v3;
              _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Browser - Notification HAPNotification_ReachabilityUpdate from server %{public}@ with instanceId %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            [*(a1 + 40) _doReachabilityUpdateForServer:v9 withDictionary:*(a1 + 32)];
          }

          else
          {
            if (v22)
            {
              v25 = HMFGetLogIdentifier();
              v26 = [HAPNotification typeToString:*(a1 + 56)];
              v27 = [v9 identifier];
              *buf = 138544130;
              v34 = v25;
              v35 = 2112;
              v36 = v26;
              v37 = 2114;
              v38 = v27;
              v39 = 2114;
              v40 = v3;
              _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Browser - Unhandled notification %@ from server %{public}@ with instanceId %{public}@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v19);
          }

          goto LABEL_23;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 40);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 48) identifier];
    *buf = 138543618;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@*** Server Browser Failed to find AccessoryServerIP object for handling notification: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_doReachabilityUpdateForServer:(id)server withDictionary:(id)dictionary
{
  *&v24[13] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dictionaryCopy = dictionary;
  if ([serverCopy reachabilityPingEnabled])
  {
    v8 = [dictionaryCopy hmf_BOOLForKey:@"HAPAccessoryReachable"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      identifier = [serverCopy identifier];
      v21 = 138543874;
      v22 = v12;
      v23 = 1024;
      *v24 = v8;
      v24[2] = 2114;
      *&v24[3] = identifier;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@accessory server reachability via ping %d from accessory server %{public}@", &v21, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
    if ((v8 & 1) == 0)
    {
      identifier2 = [serverCopy identifier];
      [(HAPAccessoryServerBrowserIP *)selfCopy _processPendingBonjourEvent:identifier2];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      identifier3 = [serverCopy identifier];
      v21 = 138543618;
      v22 = v18;
      v23 = 2114;
      *v24 = identifier3;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@ignoring reachability update on browser - pings not enabled for accessory server %{public}@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndRemoveAccessoryServer:(id)server
{
  v29 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  isPreSoftAuthWacStarted = [serverCopy isPreSoftAuthWacStarted];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isPreSoftAuthWacStarted)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = serverCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Not invalidating accessory server during WAC progress - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = serverCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing from discoveredAccessoryServers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)selfCopy discoveredAccessoryServers];
    [discoveredAccessoryServers removeObject:serverCopy];

    delegate = [(HAPAccessoryServerBrowserIP *)selfCopy delegate];
    v14 = [[HAPAccessoryServerBrowserInvalidateServerOperation alloc] initWithServer:serverCopy];
    identifier = [serverCopy identifier];
    [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateOperation:v14 identifier:identifier];

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(buf, selfCopy);
      v16 = MEMORY[0x277CCA8C8];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __67__HAPAccessoryServerBrowserIP__invalidateAndRemoveAccessoryServer___block_invoke;
      v21[3] = &unk_2786D6F50;
      objc_copyWeak(&v24, buf);
      v22 = delegate;
      v17 = serverCopy;
      v23 = v17;
      v18 = [v16 blockOperationWithBlock:v21];
      identifier2 = [v17 identifier];
      [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateOperation:v18 identifier:identifier2];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __67__HAPAccessoryServerBrowserIP__invalidateAndRemoveAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) accessoryServerBrowser:WeakRetained didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (void)_handleBonjourAddOrUpdateWithEventInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HAPAccessoryServerBrowserIP *)self _handleConnectionUpdateWithBonjourDeviceInfo:infoCopy socketInfo:0];
}

- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  infoCopy = info;
  socketInfoCopy = socketInfo;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HAPAccessoryServerBrowserIP_handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = infoCopy;
  v13 = socketInfoCopy;
  v9 = socketInfoCopy;
  v10 = infoCopy;
  dispatch_async(workQueue, block);
}

- (void)_handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  v50 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  socketInfoCopy = socketInfo;
  v41 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v41 forBonjourDevice:infoCopy];
  v8 = v41;
  if (!v8)
  {
    if (socketInfoCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = [HAPAccessoryServerIP alloc];
    keyStore = [(HAPAccessoryServerBrowser *)self keyStore];
    v18 = [(HAPAccessoryServerIP *)v16 initWithBonjourDeviceInfo:infoCopy keyStore:keyStore browser:self discoveryMethod:v15];

    identifier = [(HAPAccessoryServer *)v18 identifier];
    serverIdentifierToSkipBonjourUpdate = [(HAPAccessoryServerBrowserIP *)self serverIdentifierToSkipBonjourUpdate];
    v21 = [identifier isEqual:serverIdentifierToSkipBonjourUpdate];

    if (socketInfoCopy || !v21)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      v24 = v27;
      if (v18)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          name = [(HAPAccessoryServer *)v18 name];
          identifier2 = [(HAPAccessoryServer *)v18 identifier];
          *buf = 138543874;
          v43 = v28;
          v44 = 2112;
          v45 = name;
          v46 = 2114;
          v47 = identifier2;
          _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory server %@/%{public}@ with BonjourDevice info", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
        [(HAPAccessoryServerIP *)v18 setIsSeenOnBonjour:1];
        discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)selfCopy2 discoveredAccessoryServers];
        [discoveredAccessoryServers addObject:v18];

        if (socketInfoCopy)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy2;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            identifier3 = [(HAPAccessoryServer *)v18 identifier];
            *buf = 138543618;
            v43 = v35;
            v44 = 2112;
            v45 = identifier3;
            _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Saving socket info for newly discovered server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [(HAPAccessoryServerIP *)v18 setCachedSocketInfo:socketInfoCopy];
        }

        if ([(HAPAccessoryServerBrowserIP *)selfCopy2 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __87__HAPAccessoryServerBrowserIP__handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke;
          v39[3] = &unk_2786D7050;
          v39[4] = selfCopy2;
          v40 = v18;
          identifier4 = [(HAPAccessoryServer *)v40 identifier];
          [(HAPAccessoryServerBrowserIP *)selfCopy2 pendDelegateBlock:v39 identifier:identifier4];
        }

        [(HAPAccessoryServer *)v18 registerForNotifications:selfCopy2];
        goto LABEL_26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v25;
        v44 = 2112;
        v45 = infoCopy;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an accessory server from the TXT record data after discovering BonjourDevice %@", buf, 0x16u);
        goto LABEL_24;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        identifier5 = [(HAPAccessoryServer *)v18 identifier];
        *buf = 138543618;
        v43 = v25;
        v44 = 2112;
        v45 = identifier5;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@*** Skipping bonjour add for %@.  Remove HAPServerIPBrowserSkipBonjourUpdateForIdentifier from preferences to clear", buf, 0x16u);

LABEL_24:
      }
    }

    objc_autoreleasePoolPop(v22);
LABEL_26:

    goto LABEL_27;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier6 = [v8 identifier];
    [v8 isWacAccessory];
    v14 = HMFBooleanToString();
    *buf = 138544130;
    v43 = v12;
    v44 = 2114;
    v45 = identifier6;
    v46 = 2114;
    v47 = v14;
    v48 = 2112;
    v49 = infoCopy;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating IP accessory server %{public}@ wacAccessory:%{public}@ with new BonjourDevice info: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  [(HAPAccessoryServerBrowserIP *)selfCopy3 _setReachability:1 forServer:v8];
  [v8 updateWithBonjourDeviceInfo:infoCopy socketInfo:socketInfoCopy];
  [v8 setIsSeenOnBonjour:1];
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

void __87__HAPAccessoryServerBrowserIP__handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info
{
  v60 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = [infoCopy hmf_stringForKey:@"deviceID"];
  v8 = [infoCopy hmf_stringForKey:@"name"];
  if (event != 3)
  {
    if (event != 2)
    {
      if (event == 1 && infoCopy)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543874;
          v55 = v12;
          v56 = 2112;
          v57 = v8;
          v58 = 2114;
          v59 = v7;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received add/update message for BonjourDevice with name '%@', id %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        v53 = 0;
        [(HAPAccessoryServerBrowserIP *)selfCopy _server:&v53 forBonjourDevice:infoCopy];
        v13 = v53;
        v14 = v13;
        if (v13)
        {
          [v13 setIsSeenOnBonjour:1];
        }

        v15 = [(HAPAccessoryServerBrowserIP *)selfCopy _purgePendingBonjourEvents:v7 withProcessing:0];
        if (v15)
        {
          v16 = v15;
          v17 = objc_autoreleasePoolPush();
          v18 = selfCopy;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v55 = v20;
            v56 = 1024;
            LODWORD(v57) = v16;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Purged %d pending remove events", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v17);
        }

        [(HAPAccessoryServerBrowserIP *)selfCopy _handleBonjourAddOrUpdateWithEventInfo:infoCopy];
      }

      goto LABEL_32;
    }

    if (!infoCopy)
    {
      goto LABEL_32;
    }

    v52 = 0;
    [(HAPAccessoryServerBrowserIP *)self _server:&v52 forBonjourDevice:infoCopy];
    v21 = v52;
    v22 = v21;
    if (v21)
    {
      [v21 setIsSeenOnBonjour:0];
    }

    isSessionEstablished = [v22 isSessionEstablished];
    if ([v22 wakeNumber])
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        identifier = [v22 identifier];
        wakeNumber = [v22 wakeNumber];
        *buf = 138543874;
        v55 = v27;
        v56 = 2114;
        v57 = identifier;
        v58 = 2048;
        v59 = wakeNumber;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_INFO, "%{public}@pending bonjour remove event for suspended accessory server: %{public}@ with wake number %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      isSessionEstablished = 1;
    }

    primaryAccessory = [v22 primaryAccessory];
    if ([primaryAccessory suspendedState] == 3)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        [v22 identifier];
        v35 = v50 = v31;
        suspendedState = [primaryAccessory suspendedState];
        *buf = 138543874;
        v55 = v34;
        v56 = 2114;
        v57 = v35;
        v58 = 2048;
        v59 = suspendedState;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@pending bonjour remove event for suspended accessory server: %{public}@ with suspendedState %lu", buf, 0x20u);

        v31 = v50;
      }

      objc_autoreleasePoolPop(v31);
    }

    else if (!isSessionEstablished)
    {
      if ([v22 isWacAccessory] && (objc_msgSend(v22, "isWacComplete") & 1) == 0)
      {
        v46 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v49;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@WAC in progress, ignoring the remove event for BonjourDevice with name %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v45;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "%{public}@No session yet, processing the remove event for BonjourDevice with name %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        [(HAPAccessoryServerBrowserIP *)selfCopy5 _handleBonjourRemoveWithEventInfo:infoCopy];
      }

      goto LABEL_31;
    }

    [(HAPAccessoryServerBrowserIP *)self _pendBonjourRemoveEvent:infoCopy];
LABEL_31:

    goto LABEL_32;
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v40;
    _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_INFO, "%{public}@Received a stop browsing event for the BonjourBrowser, invalidating all unpaired accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v37);
  [(HAPAccessoryServerBrowserIP *)selfCopy6 _purgePendingBonjourEvents:v7 withProcessing:1];
  [(HAPAccessoryServerBrowserIP *)selfCopy6 _invalidateAccessoryServers:1];
  if ([(HAPAccessoryServerBrowserIP *)selfCopy6 _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __68__HAPAccessoryServerBrowserIP__handleBonjourBrowserEvent_eventInfo___block_invoke;
    v51[3] = &unk_2786D6CA0;
    v51[4] = selfCopy6;
    [(HAPAccessoryServerBrowserIP *)selfCopy6 pendDelegateBlock:v51 identifier:0];
  }

LABEL_32:

  v41 = *MEMORY[0x277D85DE8];
}

void __68__HAPAccessoryServerBrowserIP__handleBonjourBrowserEvent_eventInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)updateCacheForDeviceID:(id)d ipData:(id)data
{
  dataCopy = data;
  dCopy = d;
  cache = [(HAPAccessoryServerBrowserIP *)self cache];
  v8 = cache;
  if (dataCopy)
  {
    [cache saveData:dataCopy forDevice:dCopy];
  }

  else
  {
    [cache deleteDataForDevice:dCopy];
  }
}

- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
    allObjects = [discoveredAccessoryServers allObjects];

    v13 = [allObjects countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(allObjects);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if ([v17 matchesSetupID:dCopy serverIdentifier:identifierCopy])
          {
            identifier = [v17 identifier];
            v21 = [(HAPAccessoryServerBrowser *)self isPaired:identifier];

            hasPairings = [v17 hasPairings];
            v19 = v21 | hasPairings;
            if (v21 | hasPairings)
            {
              v23 = hasPairings;
              context = objc_autoreleasePoolPush();
              selfCopy = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                v26 = [MEMORY[0x277CCABB0] numberWithBool:v21];
                v27 = [MEMORY[0x277CCABB0] numberWithBool:v23 & 1];
                *buf = 138544386;
                v36 = v29;
                v37 = 2112;
                v38 = v17;
                v39 = 2114;
                v40 = dCopy;
                v41 = 2114;
                v42 = v26;
                v43 = 2114;
                v44 = v27;
                _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@IP Accessory server %@ matches setupID %{public}@ and is paired/hasPairings: (%{public}@/%{public}@)", buf, 0x34u);
              }

              objc_autoreleasePoolPop(context);
            }

            v18 = v17;
            goto LABEL_16;
          }
        }

        v14 = [allObjects countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
    v19 = 0;
LABEL_16:

    (handlerCopy)[2](handlerCopy, v19, v18);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HAPAccessoryServerBrowserIP_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = dCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

- (void)processPendingBonjourRemoveEvents:(id)events
{
  eventsCopy = events;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HAPAccessoryServerBrowserIP_processPendingBonjourRemoveEvents___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(workQueue, v7);
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverWithIdentifier:*(a1 + 40) ignoreLPM:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      v4 = *(a1 + 32);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_2;
      v17 = &unk_2786D7050;
      v18 = v4;
      v5 = &v19;
      v19 = v2;
      v6 = *(a1 + 40);
      v7 = &v14;
LABEL_6:
      [v4 pendDelegateBlock:v7 identifier:{v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
    }
  }

  else if ([v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
  {
    v4 = *(a1 + 32);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_3;
    v11 = &unk_2786D7050;
    v12 = v4;
    v5 = &v13;
    v13 = *(a1 + 40);
    v6 = *(a1 + 40);
    v7 = &v8;
    goto LABEL_6;
  }
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)notifyDelegatesOfWACCompletionWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if ([(HAPAccessoryServerBrowserIP *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didFinishWACForAccessoryWithIdentifier_error_])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__HAPAccessoryServerBrowserIP_notifyDelegatesOfWACCompletionWithIdentifier_error___block_invoke;
    v8[3] = &unk_2786D7078;
    v8[4] = self;
    v9 = identifierCopy;
    v10 = errorCopy;
    [(HAPAccessoryServerBrowserIP *)self pendDelegateBlock:v8 identifier:v9];
  }
}

void __82__HAPAccessoryServerBrowserIP_notifyDelegatesOfWACCompletionWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFinishWACForAccessoryWithIdentifier:*(a1 + 40) error:*(a1 + 48)];
}

- (id)visible2Pt4Networks
{
  hapWACBrowser = [(HAPAccessoryServerBrowserIP *)self hapWACBrowser];
  visible2Pt4Networks = [hapWACBrowser visible2Pt4Networks];

  return visible2Pt4Networks;
}

- (void)stopDiscoveringWACAccessoryServersWithInvalidation:(BOOL)invalidation
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HAPAccessoryServerBrowserIP_stopDiscoveringWACAccessoryServersWithInvalidation___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  invalidationCopy = invalidation;
  dispatch_async(workQueue, v6);
}

void __82__HAPAccessoryServerBrowserIP_stopDiscoveringWACAccessoryServersWithInvalidation___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for WAC accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 stopDiscoveringAccessoryServers];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateWACServers];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HAPAccessoryServerBrowserIP_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __62__HAPAccessoryServerBrowserIP_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for IP accessories", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6[7])
  {
    v7 = v6[7];
    BonjourBrowser_Stop();
    CFRelease(*(*(a1 + 32) + 56));
    *(*(a1 + 32) + 56) = 0;
    v6 = *(a1 + 32);
  }

  v8 = [v6 powerManager];
  [v8 deRegisterFromSleepWake:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pendDelegateOperation:(id)operation identifier:(id)identifier
{
  operationCopy = operation;
  if (identifier)
  {
    [operationCopy setName:identifier];
  }

  delegateOperationQueue = [(HAPAccessoryServerBrowserIP *)self delegateOperationQueue];
  [delegateOperationQueue addOperation:operationCopy];
}

- (void)pendDelegateBlock:(id)block identifier:(id)identifier
{
  v6 = MEMORY[0x277CCA8C8];
  identifierCopy = identifier;
  v8 = [v6 blockOperationWithBlock:block];
  [(HAPAccessoryServerBrowserIP *)self pendDelegateOperation:v8 identifier:identifierCopy];
}

- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HAPAccessoryServerBrowserIP_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(workQueue, v7);
}

void __78__HAPAccessoryServerBrowserIP_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for AirPlay WAC accessories...", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 startDiscoveringAirPlayAccessoriesWithDelegate:*(a1 + 40)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringWACAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __80__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for HAP WAC accessories with identifier: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) hapWACBrowser];
  [v7 discoverAccessoryServerWithIdentifier:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringWACAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __66__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServers__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for HAP WAC accessories...", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 startDiscoveringAccessoryServers];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_doStartDiscoveringAccessoryServers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting browse for IP accessories...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  _initializeAndStartBonjourBrowser = [(HAPAccessoryServerBrowserIP *)selfCopy _initializeAndStartBonjourBrowser];
  if ([(HAPAccessoryServerBrowserIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HAPAccessoryServerBrowserIP__doStartDiscoveringAccessoryServers__block_invoke;
    v12[3] = &unk_2786D6740;
    v12[4] = selfCopy;
    v13 = _initializeAndStartBonjourBrowser;
    [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateBlock:v12 identifier:0];
  }

  v8 = +[HAPPowerManager sharedInstance];
  [(HAPAccessoryServerBrowserIP *)selfCopy setPowerManager:v8];

  powerManager = [(HAPAccessoryServerBrowserIP *)selfCopy powerManager];
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  [powerManager registerForSleepWake:selfCopy queue:workQueue];

  v11 = *MEMORY[0x277D85DE8];
}

void __66__HAPAccessoryServerBrowserIP__doStartDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = HMErrorFromOSStatus(*(a1 + 40));
  [v4 accessoryServerBrowser:v2 didStartDiscoveringWithError:v3];
}

- (void)_prePopulateBrowserFromCacheWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HAPAccessoryServerBrowserIP *)self isInitialCacheRestored])
  {
LABEL_9:
    completionCopy[2](completionCopy);
    goto LABEL_10;
  }

  [(HAPAccessoryServerBrowserIP *)self setIsInitialCacheRestored:1];
  cache = [(HAPAccessoryServerBrowserIP *)self cache];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!cache)
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@No cached IP addresses", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_9;
  }

  if (v9)
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v10;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Pre-populate browser with cached IP Addresses", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  cache2 = [(HAPAccessoryServerBrowserIP *)selfCopy cache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke;
  v14[3] = &unk_2786D4700;
  v14[4] = selfCopy;
  v15 = completionCopy;
  [cache2 retrieveCachedData:v14];

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

void __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_2;
  block[3] = &unk_2786D69E0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_3;
  v4[3] = &unk_2786D46D8;
  v4[4] = a1[5];
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  return (*(a1[6] + 16))();
}

void __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Retrieve data %@ for device %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = [HAPSocketInfo alloc];
  v11 = [v6 socketInfo];
  v12 = [(HAPSocketInfo *)v10 initWithDictionary:v11];

  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 socketInfo];
      v20 = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Could not init socket info for device %@ from dictionary %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *(a1 + 32);
  v18 = [v6 bonjourDeviceInfo];
  [v17 _handleConnectionUpdateWithBonjourDeviceInfo:v18 socketInfo:v12];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_2;
  v3[3] = &unk_2786D6CA0;
  v3[4] = v1;
  return [v1 _prePopulateBrowserFromCacheWithCompletion:v3];
}

void __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_3;
  block[3] = &unk_2786D6CA0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerBrowserIP_setDelegate_queue___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(workQueue, block);
}

void __49__HAPAccessoryServerBrowserIP_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setDelegateQueue:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) delegateOperationQueue];
  [v3 setUnderlyingQueue:v2];
}

- (int)_initializeAndStartBonjourBrowser
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HAPAccessoryServerBrowserIP__initializeAndStartBonjourBrowser__block_invoke;
  v11[3] = &unk_2786D46B0;
  v11[4] = self;
  v3 = MEMORY[0x231885210](v11, a2);
  if (self->_bonjourBrowser)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = BonjourBrowser_Create();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    bonjourBrowser = self->_bonjourBrowser;
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    BonjourBrowser_SetDispatchQueue();

    v8 = self->_bonjourBrowser;
    BonjourBrowser_SetEventHandlerBlock();
    v9 = self->_bonjourBrowser;
    v5 = BonjourBrowser_Start();
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (self->_bonjourBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_bonjourBrowser);
    self->_bonjourBrowser = 0;
  }

LABEL_7:

  return v5;
}

- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue cache:(id)cache
{
  cacheCopy = cache;
  v8 = [(HAPAccessoryServerBrowserIP *)self initWithQueue:queue];
  v9 = v8;
  if (v8)
  {
    v8->_isInitialCacheRestored = 0;
    objc_storeStrong(&v8->_cache, cache);
  }

  return v9;
}

- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue
{
  v38 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = HAPAccessoryServerBrowserIP;
  v5 = [(HAPAccessoryServerBrowser *)&v33 initWithQueue:queueCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryServers = v5->_discoveredAccessoryServers;
    v5->_discoveredAccessoryServers = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    pendingBonjourEvents = v5->_pendingBonjourEvents;
    v5->_pendingBonjourEvents = v8;

    v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:8.0];
    bonjourEventTimer = v5->_bonjourEventTimer;
    v5->_bonjourEventTimer = v10;

    [(HMFTimer *)v5->_bonjourEventTimer setDelegate:v5];
    v12 = v5->_bonjourEventTimer;
    workQueue = [(HAPAccessoryServerBrowser *)v5 workQueue];
    [(HMFTimer *)v12 setDelegateQueue:workQueue];

    v14 = [[HAPWACAccessoryBrowser alloc] initWithDelegate:v5 queue:queueCopy];
    hapWACBrowser = v5->_hapWACBrowser;
    v5->_hapWACBrowser = v14;

    v5->_isInitialCacheRestored = 1;
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    delegateOperationQueue = v5->_delegateOperationQueue;
    v5->_delegateOperationQueue = v16;

    [(NSOperationQueue *)v5->_delegateOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_delegateOperationQueue setName:@"HAPAccessoryServerBrowserIPDelegateOperationQueue"];
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v19 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPServerIPBrowserServerIdentifierToSkipBonjourUpdates"];
    stringValue = [v19 stringValue];
    serverIdentifierToSkipBonjourUpdate = v5->_serverIdentifierToSkipBonjourUpdate;
    v5->_serverIdentifierToSkipBonjourUpdate = stringValue;

    mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v23 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"HAPMaximumConsecutiveIPPairVerifyFailures"];
    numberValue = [v23 numberValue];

    if (numberValue)
    {
      unsignedIntValue = [numberValue unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 2;
    }

    v5->_maximumNumberOfPairVeifiesAllowed = unsignedIntValue;
    if (v5->_serverIdentifierToSkipBonjourUpdate)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v5;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = v5->_serverIdentifierToSkipBonjourUpdate;
        *buf = 138543618;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping bonjour updates for server with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t55 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t55, &__block_literal_global_10396);
  }

  v3 = logCategory__hmf_once_v56;

  return v3;
}

uint64_t __42__HAPAccessoryServerBrowserIP_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v56 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end