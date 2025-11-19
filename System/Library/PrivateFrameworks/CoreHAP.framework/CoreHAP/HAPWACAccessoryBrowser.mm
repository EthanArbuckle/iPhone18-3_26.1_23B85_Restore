@interface HAPWACAccessoryBrowser
+ (id)logCategory;
- (HAPAirPlayAccessoryBrowserDelegate)airplayDelegate;
- (HAPWACAccessoryBrowser)initWithDelegate:(id)a3 queue:(id)a4;
- (HAPWACAccessoryBrowserDelegate)delegate;
- (id)_removeUnconfiguredWACDevice:(id)a3;
- (id)visible2Pt4Networks;
- (void)_addFoundUnconfiguredUnpairedWACDevice:(id)a3;
- (void)_handleBrowsingBackOffTimerExpiry;
- (void)_handleChangeUnconfiguredPairedWACAccessory:(id)a3;
- (void)_handleChangeUnconfiguredUnpairedWACAccessory:(id)a3;
- (void)_handleNewUnconfiguredUnpairedWACDevice:(id)a3;
- (void)_handleUnconfiguredPairedWACDevice:(id)a3;
- (void)_initWiFiScannerWithScanner:(id)a3;
- (void)_reportFound2Pt4Network:(id)a3;
- (void)_restartBrowsingWithAllNetworks;
- (void)_startBrowsingForWACAccessories;
- (void)_stopBrowsingForWACAccessories;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)handleChangeUnconfiguredWACDevice:(id)a3;
- (void)handleFoundAPDevice:(id)a3;
- (void)handleFoundUnconfiguredPairedWACDevice:(id)a3;
- (void)handleFoundUnconfiguredUnpairedWACDevice:(id)a3;
- (void)handleRemovedUnconfiguredWACDevice:(id)a3;
- (void)initWiFiScannerWithScanner:(id)a3;
- (void)scan2Pt4APWithSSID:(id)a3 completion:(id)a4;
- (void)startDiscoveringAccessoryServers;
- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)a3;
- (void)stopDiscoveringAccessoryServers;
- (void)timerDidFire:(id)a3;
@end

@implementation HAPWACAccessoryBrowser

- (HAPWACAccessoryBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HAPAirPlayAccessoryBrowserDelegate)airplayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_airplayDelegate);

  return WeakRetained;
}

- (void)_reportFound2Pt4Network:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPWACAccessoryBrowser *)self found2Pt4Completion];
  if (v5)
  {
    v6 = v5;
    v7 = [(HAPWACAccessoryBrowser *)self scanning2Pt4SSID];

    if (v7)
    {
      if (!v4)
      {
        v10 = objc_autoreleasePoolPush();
        v15 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          v18 = 138543618;
          v19 = v13;
          v20 = 2112;
          v21 = 0;
          v14 = "%{public}@No 2.4 AP found with ssid: %@";
          goto LABEL_9;
        }

LABEL_10:

        objc_autoreleasePoolPop(v10);
        v16 = [(HAPWACAccessoryBrowser *)self found2Pt4Completion];
        (v16)[2](v16, v4 != 0);

        [(HAPWACAccessoryBrowser *)self setFound2Pt4Completion:0];
        [(HAPWACAccessoryBrowser *)self setScanning2Pt4SSID:0];
        [(HAPWACAccessoryBrowser *)self _handleBrowsingBackOffTimerExpiry];
        goto LABEL_11;
      }

      v8 = [(HAPWACAccessoryBrowser *)self scanning2Pt4SSID];
      v9 = [v8 isEqual:v4];

      if (v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          v18 = 138543618;
          v19 = v13;
          v20 = 2112;
          v21 = v4;
          v14 = "%{public}@Found 2.4 AP found with ssid: %@";
LABEL_9:
          _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, v14, &v18, 0x16u);

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)scan2Pt4APWithSSID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Scanning for 2.4 AP SSID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HAPAccessoryServerBrowser *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HAPWACAccessoryBrowser_scan2Pt4APWithSSID_completion___block_invoke;
  block[3] = &unk_2786D69E0;
  block[4] = v9;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HAPWACAccessoryBrowser_scan2Pt4APWithSSID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScanning2Pt4SSID:*(a1 + 40)];
  [*(a1 + 32) setFound2Pt4Completion:*(a1 + 48)];
  v2 = [*(a1 + 32) found2Pt4Networks];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);

    return [v4 _reportFound2Pt4Network:v5];
  }

  else
  {
    [v4 _handleBrowsingBackOffTimerExpiry];
    v7 = *(a1 + 32);

    return [v7 _startBrowsingForWACAccessories];
  }
}

- (id)visible2Pt4Networks
{
  v2 = [(HAPWACAccessoryBrowser *)self found2Pt4Networks];
  v3 = [v2 copy];

  return v3;
}

- (id)_removeUnconfiguredWACDevice:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(HAPWACAccessoryBrowser *)self foundUnconfiguredUnpairedAccessories];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      v11 = [v10 deviceId];
      v12 = [v4 deviceId];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Removing accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = v10;

    if (v14)
    {
      v19 = [(HAPWACAccessoryBrowser *)v16 foundUnconfiguredUnpairedAccessories];
      [v19 removeObject:v14];

      v20 = objc_autoreleasePoolPush();
      v21 = v16;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Reporting removal of accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v5 = [(HAPWACAccessoryBrowser *)v21 delegate];
      [v5 wacBrowser:v21 didRemoveHAPWACAccessory:v14];
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
LABEL_16:
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)handleRemovedUnconfiguredWACDevice:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HAPWACAccessoryBrowser_handleRemovedUnconfiguredWACDevice___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HAPWACAccessoryBrowser_handleRemovedUnconfiguredWACDevice___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v7 = [[HAPWACAccessory alloc] initWithWiFiDevice:*(a1 + 32)];
    v2 = [*(a1 + 40) _removeUnconfiguredWACDevice:v7];
    if ([(HAPWACAccessory *)v7 supportsAirPlay])
    {
      v3 = [*(a1 + 40) airplayDelegate];

      if (v3)
      {
        v4 = [*(a1 + 40) airplayDelegate];
        v5 = *(a1 + 40);
        v6 = [(HAPWACAccessory *)v7 cuWiFiDevice];
        [v4 wacBrowser:v5 didRemoveAirPlayDevice:v6];
      }
    }
  }
}

- (void)_handleChangeUnconfiguredPairedWACAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(HAPWACAccessoryBrowser *)self foundUnconfiguredPairedAccessories];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 deviceId];
        v12 = [v4 deviceId];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [v10 updateWithHAPWACAccessory:v4];

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v17;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Changed paired accessory %@ did not match previously found - handle as new", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [(HAPWACAccessoryBrowser *)v15 browsingStartTime];
  [v18 timeIntervalSinceDate:v19];
  [v4 setDiscoveryTime:?];

  [(HAPWACAccessoryBrowser *)v15 _handleUnconfiguredPairedWACDevice:v4];
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleChangeUnconfiguredUnpairedWACAccessory:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(HAPWACAccessoryBrowser *)self foundUnconfiguredUnpairedAccessories];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 deviceId];
        v12 = [v4 deviceId];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [v10 updateWithHAPWACAccessory:v4];
          if ([v4 supportsAirPlay])
          {
            v20 = [(HAPWACAccessoryBrowser *)self airplayDelegate];

            if (v20)
            {
              v21 = objc_autoreleasePoolPush();
              v22 = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v24 = HMFGetLogIdentifier();
                *buf = 138543618;
                v33 = v24;
                v34 = 2112;
                v35 = v4;
                _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Changed AirPlay WAC Accessory: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v21);
              v25 = [(HAPWACAccessoryBrowser *)v22 airplayDelegate];
              v26 = [v4 cuWiFiDevice];
              [v25 wacBrowser:v22 didUpdateAirPlayDevice:v26];
            }
          }

          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v17;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Changed accessory %@ did not match previously found - handle as new", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [(HAPWACAccessoryBrowser *)v15 browsingStartTime];
  [v18 timeIntervalSinceDate:v19];
  [v4 setDiscoveryTime:?];

  [(HAPWACAccessoryBrowser *)v15 _addFoundUnconfiguredUnpairedWACDevice:v4];
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleChangeUnconfiguredWACDevice:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HAPWACAccessoryBrowser_handleChangeUnconfiguredWACDevice___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__HAPWACAccessoryBrowser_handleChangeUnconfiguredWACDevice___block_invoke(uint64_t a1)
{
  v4 = [[HAPWACAccessory alloc] initWithWiFiDevice:*(a1 + 32)];
  v2 = [(HAPWACAccessory *)v4 homeKitPaired];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _handleChangeUnconfiguredPairedWACAccessory:v4];
  }

  else
  {
    [v3 _handleChangeUnconfiguredUnpairedWACAccessory:v4];
  }
}

- (void)_handleUnconfiguredPairedWACDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPWACAccessoryBrowser *)self foundUnconfiguredPairedAccessories];
  [v5 addObject:v4];

  v6 = [(HAPWACAccessoryBrowser *)self browsingIdentifier];

  if (!v6 || (-[HAPWACAccessoryBrowser browsingIdentifier](self, "browsingIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v4 deviceId], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Reporting HomeKit Paired WAC Accessory: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HAPWACAccessoryBrowser *)v11 delegate];
    [v14 wacBrowser:v11 didFindUnconfiguredPairedHAPWACAccessory:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleFoundUnconfiguredPairedWACDevice:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HAPWACAccessoryBrowser_handleFoundUnconfiguredPairedWACDevice___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HAPWACAccessoryBrowser_handleFoundUnconfiguredPairedWACDevice___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = [[HAPWACAccessory alloc] initWithWiFiDevice:*(a1 + 32)];
    v2 = [MEMORY[0x277CBEAA8] date];
    v3 = [*(a1 + 40) browsingStartTime];
    [v2 timeIntervalSinceDate:v3];
    [(HAPWACAccessory *)v4 setDiscoveryTime:?];

    [*(a1 + 40) _handleUnconfiguredPairedWACDevice:v4];
  }
}

- (void)_handleNewUnconfiguredUnpairedWACDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPWACAccessoryBrowser *)self _removeUnconfiguredWACDevice:v4];
  v6 = [(HAPWACAccessoryBrowser *)self foundUnconfiguredUnpairedAccessories];
  [v6 addObject:v4];

  v7 = [(HAPWACAccessoryBrowser *)self browsingIdentifier];

  if (!v7 || (-[HAPWACAccessoryBrowser browsingIdentifier](self, "browsingIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), [v4 deviceId], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Reporting new HAP WAC Accessory: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HAPWACAccessoryBrowser *)v12 delegate];
    [v15 wacBrowser:v12 didFindHAPWACAccessory:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleFoundAPDevice:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HAPWACAccessoryBrowser_handleFoundAPDevice___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HAPWACAccessoryBrowser_handleFoundAPDevice___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_7:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = [v2 ssid];
  if ([v15 length])
  {
    v3 = [*(a1 + 40) state];

    if (v3 == 1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 40);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [*(a1 + 32) ssid];
        *buf = 138543618;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Found 2.4 Network SSID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v9 = [*(a1 + 40) found2Pt4Networks];
      v10 = [*(a1 + 32) ssid];
      [v9 addObject:v10];

      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) ssid];
      [v11 _reportFound2Pt4Network:v12];
    }

    goto LABEL_7;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addFoundUnconfiguredUnpairedWACDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 supportsAirPlay])
  {
    v5 = [(HAPWACAccessoryBrowser *)self airplayDelegate];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v9;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Found AirPlay WAC Accessory: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v10 = [(HAPWACAccessoryBrowser *)v7 airplayDelegate];
      v11 = [v4 cuWiFiDevice];
      [v10 wacBrowser:v7 didFindAirPlayDevice:v11];
    }
  }

  [(HAPWACAccessoryBrowser *)self _handleNewUnconfiguredUnpairedWACDevice:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFoundUnconfiguredUnpairedWACDevice:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAPWACAccessoryBrowser_handleFoundUnconfiguredUnpairedWACDevice___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HAPWACAccessoryBrowser_handleFoundUnconfiguredUnpairedWACDevice___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = [[HAPWACAccessory alloc] initWithWiFiDevice:*(a1 + 32)];
    v2 = [MEMORY[0x277CBEAA8] date];
    v3 = [*(a1 + 40) browsingStartTime];
    [v2 timeIntervalSinceDate:v3];
    [(HAPWACAccessory *)v4 setDiscoveryTime:?];

    [*(a1 + 40) _addFoundUnconfiguredUnpairedWACDevice:v4];
  }
}

- (void)_stopBrowsingForWACAccessories
{
  if ([(HAPWACAccessoryBrowser *)self state]== 2)
  {
    v3 = [(HAPWACAccessoryBrowser *)self cuWiFiScanner];
    [v3 suspend];

    v4 = 4;
  }

  else
  {
    if ([(HAPWACAccessoryBrowser *)self state]!= 1)
    {
      return;
    }

    v4 = 3;
  }

  [(HAPWACAccessoryBrowser *)self setState:v4];
  v5 = [(HAPWACAccessoryBrowser *)self backoffTimer];
  [v5 resume];
}

- (void)stopDiscoveringAccessoryServers
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HAPAccessoryServerBrowser *)v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HAPWACAccessoryBrowser_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = v5;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HAPWACAccessoryBrowser_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAirplayDelegate:0];
  v2 = *(a1 + 32);

  return [v2 _stopBrowsingForWACAccessories];
}

- (void)_startBrowsingForWACAccessories
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Starting to discover WAC accessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D02958]);
    [(HAPWACAccessoryBrowser *)v4 setCuWiFiScanner:v8];

    v9 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
    [(HAPWACAccessoryBrowser *)v4 _initWiFiScannerWithScanner:v9];
  }

  v10 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];

  if (v10)
  {
    if ([(HAPWACAccessoryBrowser *)v4 state])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredUnpairedAccessories];
      v12 = [v11 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v54;
        *&v13 = 138543618;
        v48 = v13;
        do
        {
          v16 = 0;
          do
          {
            if (*v54 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v53 + 1) + 8 * v16);
            v18 = objc_autoreleasePoolPush();
            v19 = v4;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = HMFGetLogIdentifier();
              *buf = v48;
              v59 = v21;
              v60 = 2112;
              v61 = v17;
              _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Reporting previously found unconfigured accessory: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
            v22 = [(HAPWACAccessoryBrowser *)v19 delegate];
            [v22 wacBrowser:v19 didFindHAPWACAccessory:v17];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v11 countByEnumeratingWithState:&v53 objects:v62 count:16];
        }

        while (v14);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredPairedAccessories];
      v24 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v24)
      {
        v26 = v24;
        v27 = *v50;
        *&v25 = 138543618;
        v48 = v25;
        do
        {
          v28 = 0;
          do
          {
            if (*v50 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v49 + 1) + 8 * v28);
            v30 = objc_autoreleasePoolPush();
            v31 = v4;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v33 = HMFGetLogIdentifier();
              *buf = v48;
              v59 = v33;
              v60 = 2112;
              v61 = v29;
              _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Reporting previously found configured accessory: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v34 = [(HAPWACAccessoryBrowser *)v31 delegate];
            [v34 wacBrowser:v31 didFindUnconfiguredPairedHAPWACAccessory:v29];

            ++v28;
          }

          while (v26 != v28);
          v26 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v26);
      }
    }

    v35 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
    [v35 setScanFlags:1];

    v36 = [(HAPWACAccessoryBrowser *)v4 scanning2Pt4SSID];
    v37 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
    [v37 setSsid:v36];

    v38 = [MEMORY[0x277CBEAA8] date];
    [(HAPWACAccessoryBrowser *)v4 setBrowsingStartTime:v38];

    v39 = [(HAPWACAccessoryBrowser *)v4 backoffTimer];
    [v39 resume];

    v40 = [(HAPWACAccessoryBrowser *)v4 state];
    v41 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
    v42 = v41;
    if (v40 == 4)
    {
      [v41 resume];
    }

    else
    {
      [v41 activate];
    }

    [(HAPWACAccessoryBrowser *)v4 setState:1];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = v4;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v46;
      _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, "%{public}@Error instantiating CUWiFiScanner", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Discovering with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowser *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HAPWACAccessoryBrowser_discoverAccessoryServerWithIdentifier___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HAPWACAccessoryBrowser_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBrowsingIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _startBrowsingForWACAccessories];
}

- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Discovering AirPlay Accessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowser *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HAPWACAccessoryBrowser_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke;
  v12[3] = &unk_2786D7050;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HAPWACAccessoryBrowser_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAirplayDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _startBrowsingForWACAccessories];
}

- (void)startDiscoveringAccessoryServers
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HAPAccessoryServerBrowser *)v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HAPWACAccessoryBrowser_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = v5;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HAPWACAccessoryBrowser_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBrowsingIdentifier:0];
  v2 = *(a1 + 32);

  return [v2 _startBrowsingForWACAccessories];
}

- (void)_restartBrowsingWithAllNetworks
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Restarting browsing for all networks", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
  [v7 suspend];

  v8 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
  [v8 setScanFlags:3];

  [(HAPWACAccessoryBrowser *)v4 setState:2];
  v9 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
  [v9 resume];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleBrowsingBackOffTimerExpiry
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredUnpairedAccessories];
    v8 = [(HAPWACAccessoryBrowser *)v4 found2Pt4Networks];
    v9 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredPairedAccessories];
    v16 = 138544130;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Stopping the suspended browse, clearing foundUnconfiguredUnpairedAccessories %@, foundNetworks: %@, foundUnconfiguredPairedAccessories: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [(HAPWACAccessoryBrowser *)v4 cuWiFiScanner];
  [v10 invalidate];

  [(HAPWACAccessoryBrowser *)v4 setCuWiFiScanner:0];
  v11 = [(HAPWACAccessoryBrowser *)v4 backoffTimer];
  [v11 suspend];

  [(HAPWACAccessoryBrowser *)v4 setState:0];
  v12 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredUnpairedAccessories];
  [v12 removeAllObjects];

  v13 = [(HAPWACAccessoryBrowser *)v4 found2Pt4Networks];
  [v13 removeAllObjects];

  v14 = [(HAPWACAccessoryBrowser *)v4 foundUnconfiguredPairedAccessories];
  [v14 removeAllObjects];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPWACAccessoryBrowser *)self backoffTimer];

  if (v6 == v4)
  {
    if ([(HAPWACAccessoryBrowser *)self state]!= 4)
    {
      if ([(HAPWACAccessoryBrowser *)self state]== 3)
      {
        [(HAPWACAccessoryBrowser *)self setState:4];
        v12 = [(HAPWACAccessoryBrowser *)self cuWiFiScanner];
        [v12 suspend];

        v13 = [(HAPWACAccessoryBrowser *)self backoffTimer];
        [v13 resume];

        goto LABEL_10;
      }

      if ([(HAPWACAccessoryBrowser *)self state]!= 1)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }

        v10 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v10;
        v18 = 2048;
        v19 = [(HAPWACAccessoryBrowser *)v8 state];
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Incorrect state %tu on backoff timer expiry", &v16, 0x16u);
        goto LABEL_4;
      }

      v15 = [(HAPWACAccessoryBrowser *)self scanning2Pt4SSID];

      if (!v15)
      {
        [(HAPWACAccessoryBrowser *)self _restartBrowsingWithAllNetworks];
        goto LABEL_10;
      }

      [(HAPWACAccessoryBrowser *)self _reportFound2Pt4Network:0];
    }

    [(HAPWACAccessoryBrowser *)self _handleBrowsingBackOffTimerExpiry];
    goto LABEL_10;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HAPWACAccessoryBrowser *)v8 backoffTimer];
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Timer mismatch: %@/%@", &v16, 0x20u);

LABEL_4:
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_initWiFiScannerWithScanner:(id)a3
{
  v4 = a3;
  [(HAPWACAccessoryBrowser *)self setCuWiFiScanner:v4];
  [v4 setLabel:@"HAPWACBrowser"];
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  [v4 setDispatchQueue:v5];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke;
  v10[3] = &unk_2786D6990;
  objc_copyWeak(&v11, &location);
  [v4 setDeviceFoundHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke_151;
  v8[3] = &unk_2786D6990;
  objc_copyWeak(&v9, &location);
  [v4 setDeviceLostHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke_152;
  v6[3] = &unk_2786D69B8;
  objc_copyWeak(&v7, &location);
  [v4 setDeviceChangedHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v3 deviceIEFlags] & 0x40000000) == 0 || (objc_msgSend(v3, "deviceIEFlags") & 0x400000) != 0)
  {
    if ([v3 deviceIEFlags])
    {
      v9 = [v3 deviceIEFlags];
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if ((v9 & 0x400000) != 0)
      {
        if (v13)
        {
          v15 = HMFGetLogIdentifier();
          v17 = 138543618;
          v18 = v15;
          v19 = 2112;
          v20 = v3;
          _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Found unconfigured & paired WAC device %@", &v17, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        [v11 handleFoundUnconfiguredPairedWACDevice:v3];
      }

      else
      {
        if (v13)
        {
          v14 = HMFGetLogIdentifier();
          v17 = 138543618;
          v18 = v14;
          v19 = 2112;
          v20 = v3;
          _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Unhandled device: %@", &v17, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
      }
    }

    else
    {
      [WeakRetained handleFoundAPDevice:v3];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Found unconfigured & unpaired WAC device %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 handleFoundUnconfiguredUnpairedWACDevice:v3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke_151(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v3 deviceIEFlags] & 0x40000000) != 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Lost device %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 handleRemovedUnconfiguredWACDevice:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__HAPWACAccessoryBrowser__initWiFiScannerWithScanner___block_invoke_152(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v5 deviceIEFlags] & 0x40000000) != 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      v16 = 1024;
      v17 = a3;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Device %@ changed with flags: %u", &v12, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    [v8 handleChangeUnconfiguredWACDevice:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWiFiScannerWithScanner:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HAPWACAccessoryBrowser_initWiFiScannerWithScanner___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (HAPWACAccessoryBrowser)initWithDelegate:(id)a3 queue:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v29.receiver = self;
    v29.super_class = HAPWACAccessoryBrowser;
    v9 = [(HAPAccessoryServerBrowser *)&v29 initWithQueue:v7];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_delegate, v6);
      v11 = [MEMORY[0x277CBEB58] set];
      foundUnconfiguredUnpairedAccessories = v10->_foundUnconfiguredUnpairedAccessories;
      v10->_foundUnconfiguredUnpairedAccessories = v11;

      v13 = [MEMORY[0x277CBEB58] set];
      foundUnconfiguredPairedAccessories = v10->_foundUnconfiguredPairedAccessories;
      v10->_foundUnconfiguredPairedAccessories = v13;

      v15 = [MEMORY[0x277CBEB58] set];
      found2Pt4Networks = v10->_found2Pt4Networks;
      v10->_found2Pt4Networks = v15;

      cuWiFiScanner = v10->_cuWiFiScanner;
      v10->_cuWiFiScanner = 0;

      v10->_state = 0;
      v18 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:10.0];
      backoffTimer = v10->_backoffTimer;
      v10->_backoffTimer = v18;

      [(HMFTimer *)v10->_backoffTimer setDelegate:v10];
      v20 = v10->_backoffTimer;
      v21 = [(HAPAccessoryServerBrowser *)v10 workQueue];
      [(HMFTimer *)v20 setDelegateQueue:v21];
    }

    v22 = v10;
    v23 = v22;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v22 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failing HAP Browser instantioation - nil delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37, &__block_literal_global_22957);
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

uint64_t __37__HAPWACAccessoryBrowser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v38 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end