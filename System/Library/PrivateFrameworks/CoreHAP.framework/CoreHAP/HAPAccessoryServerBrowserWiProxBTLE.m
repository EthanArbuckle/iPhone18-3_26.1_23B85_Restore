@interface HAPAccessoryServerBrowserWiProxBTLE
+ (id)logCategory;
- (BOOL)removeTrackedPeripheralWithStableIdentifier:(id)a3;
- (BOOL)scanInBackground;
- (HAPAccessoryServerBrowserWiProxBTLE)initWithDelegate:(id)a3 queue:(id)a4;
- (HAPAccessoryServerBrowserWiProxBTLEDelegate)delegate;
- (NSMapTable)reachabilityScanTuples;
- (id)_lock_trackedPeripheralWithIdentifier:(id)a3;
- (id)_parseAdvertisementData:(id)a3 forPeripheral:(id)a4 RSSI:(id)a5;
- (id)logIdentifier;
- (id)trackedIdentifiers;
- (id)trackedPeripheralForIdentifier:(id)a3;
- (id)trackedPeripheralWithIdentifier:(id)a3;
- (id)trackedPeripherals;
- (unint64_t)_getLinkQuality:(id)a3;
- (unsigned)routeMode;
- (void)_probeReachabilityForTrackedAccessories;
- (void)_removeTrackedPeripheral:(id)a3;
- (void)_reportHAPPeripheral:(id)a3;
- (void)_reportReachabilityForHAPPeripheral:(id)a3;
- (void)_startBrowsingForHAPBLEAccessories;
- (void)_startScanningWithScanType:(int64_t)a3;
- (void)_startTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3 restartScan:(BOOL)a4;
- (void)_stopBrowsingForHAPBLEAccessories:(BOOL)a3;
- (void)_stopScanning;
- (void)_stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3;
- (void)homeKit:(id)a3 failedToStartScanningWithError:(id)a4;
- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6;
- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6 type:(int64_t)a7;
- (void)homeKitDidUpdateState:(id)a3;
- (void)homeKitStartedScanning:(id)a3;
- (void)homeKitStoppedScanning:(id)a3;
- (void)pauseScans;
- (void)probeReachabilityForTrackedAccessoriesWithScanTuples:(id)a3;
- (void)resetLastSeenForTrackedAccessories:(id)a3;
- (void)restartScans;
- (void)retrieveStateForTrackedAccessoryWithIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7;
- (void)setRouteMode:(unsigned __int8)a3;
- (void)setScanInBackground:(BOOL)a3;
- (void)startBrowsingForHAPBLEAccessories;
- (void)startTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3;
- (void)stopBrowsingForHAPBLEAccessories:(BOOL)a3;
- (void)stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3;
- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4;
@end

@implementation HAPAccessoryServerBrowserWiProxBTLE

- (NSMapTable)reachabilityScanTuples
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityScanTuples);

  return WeakRetained;
}

- (HAPAccessoryServerBrowserWiProxBTLEDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessoryServerBrowserWiProxBTLE *)self routeMode];
  v5 = @"Local";
  v6 = @"-";
  v7 = @"WHBS";
  if ((v4 & 2) == 0)
  {
    v7 = @"WHB";
  }

  if (v4)
  {
    v6 = v7;
  }

  if (v4)
  {
    v5 = v6;
  }

  v8 = v5;
  v9 = [(HAPAccessoryServerBrowserWiProxBTLE *)self currentScanState];
  if (v9)
  {
    v10 = v9;
    if (v9 == 1)
    {
      v11 = @"BROWSE";
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      v11 = [v12 stringValue];
    }
  }

  else
  {
    v11 = @"IDLE";
  }

  v13 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
  v14 = HAPWiProxScanStateString([v13 state]);
  v15 = [(HAPAccessoryServerBrowserWiProxBTLE *)self currentScanType];
  if (v15 > 2)
  {
    v16 = @"N";
  }

  else
  {
    v16 = off_2786D5F00[v15];
  }

  v17 = [v3 stringWithFormat:@"HAPWiProxBLE-%@ %@(%@-%@)", v8, v11, v14, v16];

  return v17;
}

- (void)_reportReachabilityForHAPPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self reachabilityScanTuples];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  v8 = [(HAPAccessoryServerBrowserWiProxBTLE *)self reachabilityScanTuples];
  v9 = [v4 identifier];
  [v8 removeObjectForKey:v9];

  v10 = [v7 completion];

  if (v10)
  {
    v11 = [v7 queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HAPAccessoryServerBrowserWiProxBTLE__reportReachabilityForHAPPeripheral___block_invoke;
    v12[3] = &unk_2786D7050;
    v13 = v7;
    v14 = v4;
    dispatch_async(v11, v12);
  }
}

void __75__HAPAccessoryServerBrowserWiProxBTLE__reportReachabilityForHAPPeripheral___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 40) identifier];
  v3[2](v3, v2, 1);
}

- (void)_reportHAPPeripheral:(id)a3
{
  v7 = a3;
  v4 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self delegate];
  v6 = [v7 copy];
  [v5 accessoryServerBrowserBTLE:self didDiscoverHAPPeripheral:v6];

  [(HAPAccessoryServerBrowserWiProxBTLE *)self _reportReachabilityForHAPPeripheral:v7];
}

- (void)_removeTrackedPeripheral:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _lock_trackedPeripheralWithIdentifier:v10];
        if (v11)
        {
          [v5 addObject:v11];
        }

        [(NSMutableSet *)self->_trackedIdentifiers removeObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(NSMutableSet *)self->_trackedPeripherals removeObject:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (id)trackedPeripheralWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _lock_trackedPeripheralWithIdentifier:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_trackedPeripheralWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_trackedPeripherals;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)homeKit:(id)a3 failedToStartScanningWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Failed to start scanning with error: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeKitStoppedScanning:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Stopped Scanning", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)homeKitStartedScanning:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Started Scanning", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _parseAdvertisementData:v12 forPeripheral:v11 RSSI:v13];
  if (v14)
  {
    v15 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedIdentifiers];
    v16 = [v14 identifier];
    v17 = [v15 containsObject:v16];

    if (v17)
    {
      v18 = [v14 identifier];
      v19 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:v18];

      if (v19)
      {
        if (![v19 updateWithPeripheral:v14])
        {

          goto LABEL_12;
        }
      }

      else
      {
        v19 = v14;
        v20 = [v19 encryptedPayload];

        if (!v20)
        {
          os_unfair_lock_lock_with_options();
          [(NSMutableSet *)self->_trackedPeripherals addObject:v19];
          os_unfair_lock_unlock(&self->_lock);
        }
      }

      context = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v23;
        v28 = 2114;
        v29 = v14;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Reporting tracked peripheral: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
    }

    [(HAPAccessoryServerBrowserWiProxBTLE *)self _reportHAPPeripheral:v14];
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)homeKit:(id)a3 foundDevice:(id)a4 withData:(id)a5 RSSI:(id)a6 type:(int64_t)a7
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v13 || [v13 integerValue] < -127 || (v15 = objc_msgSend(v14, "integerValue"), v16 = v14, v15 >= 21))
  {
    v16 = &unk_283EA9878;
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self homeKit:v17 foundDevice:v11 withData:v12 RSSI:v16];
}

- (void)homeKitDidUpdateState:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HAPWiProxScanStateString([v4 state]);
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Changed power state to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 wpHomeKit];
  v11 = [v10 state];

  if (v11 == 3)
  {
    if ([(HAPAccessoryServerBrowserWiProxBTLE *)v6 currentScanState]== 1)
    {
      [(HAPAccessoryServerBrowserWiProxBTLE *)v6 _startBrowsingForHAPBLEAccessories];
    }

    v12 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 trackedIdentifiers];
    if ([v12 count])
    {
      v13 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 scanInBackground];

      if (v13)
      {
        [(HAPAccessoryServerBrowserWiProxBTLE *)v6 _startTrackingHAPBLEAccessoriesWithIdentifiers:0 restartScan:1];
      }
    }

    else
    {
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 trackedPeripherals];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) reset];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_parseAdvertisementData:(id)a3 forPeripheral:(id)a4 RSSI:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  v12 = [v11 bytes];
  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  v14 = [v8 objectForKeyedSubscript:@"kCBAdvDataDeviceAddress"];
  if ([v14 length])
  {
    [v14 bytes];
    HardwareAddressToCString();
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
  }

  else
  {
    v15 = 0;
  }

  if ([v11 length] < 0x11 || ((v16 = *(v12 + 2), v16 != 17) ? (v17 = v16 == 6) : (v17 = 1), !v17))
  {
    v21 = 0;
    v22 = &unk_283EA9890;
    goto LABEL_38;
  }

  v41 = self;
  v44 = v10;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v12 + 3) >> 5];
  v19 = *(v12 + 3);
  v45 = v18;
  if ([v18 unsignedShortValue] == 17 && v19 == 54)
  {
    HardwareAddressToCString();
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    v46 = [MEMORY[0x277CBEA90] dataWithBytes:v12 + 10 length:{objc_msgSend(v11, "length") - 10}];
    v47 = 0;
    v20 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
LABEL_18:
    v22 = &unk_283EA9890;
LABEL_19:
    v43 = v9;
    v40 = v20;
    if ([v22 integerValue] == 2)
    {
      v23 = [[HAPBLEPeripheral alloc] initWithName:v13 peripheralUUID:v9 identifier:v51 hapVersion:v22 hkType:v18 advInterval:v52 statusFlags:v50 category:v49 stateNumber:v48 configNumber:v47 setupHash:v20 encryptedPayload:v46 whbStableIdentifier:0 advDeviceAddress:v15, v20];
      if (HAPIsHH2Enabled_onceToken != -1)
      {
        dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
      }

      if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
      {
        v24 = [(HAPAccessoryServerBrowserWiProxBTLE *)v41 delegate];
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          v26 = [(HAPAccessoryServerBrowserWiProxBTLE *)v41 delegate];
          v27 = [v26 retrieveCBPeripheralWithUUID:v43 blePeripheral:v23];

          v42 = v27;
          v28 = [v27 name];
          v29 = [v28 length];
          if (v29 > [v13 length] && v13 && objc_msgSend(v28, "hasPrefix:", v13))
          {
            [(HAPBLEPeripheral *)v23 setName:v28];
          }

          [(HAPBLEPeripheral *)v23 setCbPeripheral:v42];
        }
      }

      v30 = [v8 objectForKeyedSubscript:@"kCachedAdvertisement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      v33 = [v32 BOOLValue];
      [(HAPBLEPeripheral *)v23 setIsCached:v33];
      [(HAPBLEPeripheral *)v23 setAverageRSSI:v10];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v41;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v37;
        v55 = 2114;
        v56 = v22;
        v57 = 2048;
        v58 = 2;
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Dropping, incompatible protocol version: %{public}@, expected: %ld, adv: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v34);
      v23 = 0;
      v10 = v44;
    }

    v21 = v23;

    v9 = v43;
    goto LABEL_37;
  }

  if ([v18 unsignedShortValue] != 6)
  {
    v20 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_18;
  }

  if ([v11 length] >= 0x11)
  {
    if ([v11 length] < 0x15)
    {
      v20 = 0;
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v12 + 17 length:4];
    }

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v12 + 4) & 1];
    HardwareAddressToCString();
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v12 + 11)];
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v12 + 13)];
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v12 + 15)];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v12 + 16)];
    v46 = 0;
    goto LABEL_19;
  }

  v21 = 0;
  v22 = &unk_283EA9890;
LABEL_37:

LABEL_38:
  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_probeReachabilityForTrackedAccessories
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    [(HAPAccessoryServerBrowserWiProxBTLE *)v4 trackedIdentifiers];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543618;
    v44 = v6;
    v45 = 2114;
    v46 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Probing reachability for tracked accessories: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 wpHomeKit];
  if ([v8 state] != 3)
  {

    goto LABEL_12;
  }

  if ([(HAPAccessoryServerBrowserWiProxBTLE *)v4 currentScanState])
  {
    v9 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 routeMode];

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = objc_autoreleasePoolPush();
  v11 = v4;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    [(HAPAccessoryServerBrowserWiProxBTLE *)v11 trackedIdentifiers];
    v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543618;
    v44 = v13;
    v45 = 2114;
    v46 = v14;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Restarting High Priority Passive Scan to probe reachability: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [(HAPAccessoryServerBrowserWiProxBTLE *)v11 _stopScanning];
  [(HAPAccessoryServerBrowserWiProxBTLE *)v11 _startScanningWithScanType:1];
LABEL_12:
  Current = CFAbsoluteTimeGetCurrent();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 trackedPeripherals];
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v40;
    *&v18 = 138543618;
    v37 = v18;
    do
    {
      v21 = 0;
      v38 = v19;
      do
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v39 + 1) + 8 * v21);
        [v22 lastSeen];
        v24 = v23;
        v25 = [v22 isReachable];
        v26 = objc_autoreleasePoolPush();
        v27 = v4;
        v28 = HMFGetOSLogHandle();
        v29 = v28;
        if (v25)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            [v22 shortDescription];
            v31 = v20;
            v32 = v4;
            v34 = v33 = v16;
            *buf = 138543874;
            v44 = v30;
            v45 = 2048;
            v46 = Current - v24;
            v47 = 2114;
            v48 = v34;
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "%{public}@Tracked peripheral was seen %.3f seconds ago. Reachability probe returns tracked peripheral: %{public}@", buf, 0x20u);

            v16 = v33;
            v4 = v32;
            v20 = v31;
            v19 = v38;
          }

          objc_autoreleasePoolPop(v26);
          [(HAPAccessoryServerBrowserWiProxBTLE *)v27 _reportReachabilityForHAPPeripheral:v22];
        }

        else
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            *buf = v37;
            v44 = v35;
            v45 = 2114;
            v46 = *&v22;
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Has not recently seen: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          [v22 reset];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v19);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)probeReachabilityForTrackedAccessoriesWithScanTuples:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HAPAccessoryServerBrowserWiProxBTLE_probeReachabilityForTrackedAccessoriesWithScanTuples___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __92__HAPAccessoryServerBrowserWiProxBTLE_probeReachabilityForTrackedAccessoriesWithScanTuples___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _probeReachabilityForTrackedAccessories];
}

- (id)trackedPeripheralForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:v4];

  return v6;
}

- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HAPAccessoryServerBrowserWiProxBTLE_updateStateForIdentifier_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __76__HAPAccessoryServerBrowserWiProxBTLE_updateStateForIdentifier_stateNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trackedPeripheralWithIdentifier:*(a1 + 40)];
  [v2 updateStateNumber:*(a1 + 48)];
}

- (unint64_t)_getLinkQuality:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  if ([v3 integerValue] <= -50)
  {
    if ([v4 integerValue] > -70)
    {
      v5 = 1;
      goto LABEL_11;
    }

    if ([v4 integerValue] > -80)
    {
      v5 = 2;
      goto LABEL_11;
    }

    if ([v4 integerValue] > -85)
    {
      v5 = 3;
      goto LABEL_11;
    }

LABEL_10:
    v5 = 4;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)retrieveStateForTrackedAccessoryWithIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7
{
  v12 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:a3];
  if (v12)
  {
    v17 = v12;
    if (a6)
    {
      v13 = [v12 averageRSSI];
      *a6 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _getLinkQuality:v13];

      v12 = v17;
    }

    if (a4)
    {
      *a4 = [v17 stateNumber];
      v12 = v17;
    }

    if (a7)
    {
      v14 = MEMORY[0x277CCABB0];
      Current = CFAbsoluteTimeGetCurrent();
      [v17 lastSeen];
      *a7 = [v14 numberWithDouble:Current - v16];
      v12 = v17;
    }

    if (a5)
    {
      *a5 = [v17 isReachable];
      v12 = v17;
    }
  }
}

- (void)resetLastSeenForTrackedAccessories:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HAPAccessoryServerBrowserWiProxBTLE_resetLastSeenForTrackedAccessories___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __74__HAPAccessoryServerBrowserWiProxBTLE_resetLastSeenForTrackedAccessories___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) trackedPeripheralForIdentifier:*(a1 + 40)];
  [v1 reset];
}

- (void)setScanInBackground:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_scanInBackground = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)scanInBackground
{
  os_unfair_lock_lock_with_options();
  scanInBackground = self->_scanInBackground;
  os_unfair_lock_unlock(&self->_lock);
  return scanInBackground;
}

- (void)_stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Request to stop tracking accessories with Identifiers: %{public}@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBrowserWiProxBTLE *)v6 _removeTrackedPeripheral:v4];
  v9 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 trackedIdentifiers];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HAPAccessoryServerBrowserWiProxBTLE *)v12 currentScanState];
      v24 = 138543618;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No more accessories to track scanState: %tu", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HAPAccessoryServerBrowserWiProxBTLE *)v12 currentScanState];
    v17 = objc_autoreleasePoolPush();
    v18 = v12;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v21;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@No more accessories to track. Continuing to scan.", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      if (v20)
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v22;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@No more accessories to track. Stopping Scan.", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HAPAccessoryServerBrowserWiProxBTLE *)v18 _stopScanning];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HAPAccessoryServerBrowserWiProxBTLE_stopTrackingHAPBLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_startTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3 restartScan:(BOOL)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v9;
    v49 = 2114;
    v50 = v41;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Request to start tracking accessories with new Identifiers: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v41)
  {
    v10 = v41;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v42 = [MEMORY[0x277CBEB58] setWithArray:v10];
  v11 = [(HAPAccessoryServerBrowserWiProxBTLE *)v7 trackedIdentifiers];
  [v42 minusSet:v11];

  if ([v42 count])
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  context = objc_autoreleasePoolPush();
  v13 = v7;
  oslog = HMFGetOSLogHandle();
  if (v12)
  {
    v14 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v15 = [v42 allObjects];
      v37 = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 trackedIdentifiers];
      v16 = [v37 allObjects];
      v17 = v15;
      v18 = v16;
      v19 = [MEMORY[0x277CBEB18] array];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = v17;
      v21 = [v20 countByEnumeratingWithState:&v43 objects:buf count:16];
      if (v21)
      {
        v22 = *v44;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v44 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v43 + 1) + 8 * i);
            if (([v18 containsObject:v24] & 1) == 0)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ [NEW]", v24];
              [v19 addObject:v25];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v43 objects:buf count:16];
        }

        while (v21);
      }

      if (v18)
      {
        [v19 addObjectsFromArray:v18];
      }

      *buf = 138543618;
      v48 = v38;
      v49 = 2114;
      v50 = v19;
      _os_log_impl(&dword_22AADC000, oslog, OS_LOG_TYPE_INFO, "%{public}@Tracking Identifiers: %{public}@", buf, 0x16u);

      v14 = oslog;
    }

    objc_autoreleasePoolPop(context);
    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)v13->_trackedIdentifiers unionSet:v42];
    os_unfair_lock_unlock(&v13->_lock);
    v26 = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 wpHomeKit];
    v27 = [v26 state] == 3;

    if (v27)
    {
      if (![(HAPAccessoryServerBrowserWiProxBTLE *)v13 currentScanState])
      {
        v28 = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 trackedIdentifiers];
        v29 = [v28 count] == 0;

        if (!v29)
        {
          [(HAPAccessoryServerBrowserWiProxBTLE *)v13 _startScanningWithScanType:1];
        }
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v13;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v35;
        _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%{public}@Pending tracking as WiProx is not powered on", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  else
  {
    v30 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v31;
      _os_log_impl(&dword_22AADC000, oslog, OS_LOG_TYPE_DEBUG, "%{public}@No new identifiers to track", buf, 0xCu);

      v30 = oslog;
    }

    objc_autoreleasePoolPop(context);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingHAPBLEAccessoriesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HAPAccessoryServerBrowserWiProxBTLE_startTrackingHAPBLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopBrowsingForHAPBLEAccessories:(BOOL)a3
{
  v31 = *MEMORY[0x277D85DE8];
  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanState:0];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v23 = 138543618;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Request to Stop Browsing for HomeKit accessories - force %{public}@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 wpHomeKit];
  v11 = [v10 state];

  if (v11 == 3)
  {
    v12 = [(HAPAccessoryServerBrowserWiProxBTLE *)v6 trackedIdentifiers];
    if ([v12 count] && -[HAPAccessoryServerBrowserWiProxBTLE scanInBackground](v6, "scanInBackground"))
    {

      if (!a3)
      {
        [(HAPAccessoryServerBrowserWiProxBTLE *)v6 _startScanningWithScanType:0];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = MEMORY[0x277CCABB0];
      v18 = [(HAPAccessoryServerBrowserWiProxBTLE *)v14 trackedIdentifiers];
      v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
      [(HAPAccessoryServerBrowserWiProxBTLE *)v14 scanInBackground];
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      v23 = 138544130;
      v24 = v16;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Stopping Scan. Tracked Identifiers: %{public}@, Background Scan: %{public}@, Force: %{public}@", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    [(HAPAccessoryServerBrowserWiProxBTLE *)v14 _stopScanning];
  }

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopBrowsingForHAPBLEAccessories:(BOOL)a3
{
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HAPAccessoryServerBrowserWiProxBTLE_stopBrowsingForHAPBLEAccessories___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_startBrowsingForHAPBLEAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Request to Start Browsing for HomeKit accessories", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPAccessoryServerBrowserWiProxBTLE *)v4 setCurrentScanState:1];
  v7 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 wpHomeKit];
  v8 = [v7 state];

  v9 = objc_autoreleasePoolPush();
  v10 = v4;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8 == 3)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Re-starting High Priority Scan", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HAPAccessoryServerBrowserWiProxBTLE *)v10 _stopScanning];
    [(HAPAccessoryServerBrowserWiProxBTLE *)v10 _startScanningWithScanType:2];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Pending scan as WiProx is not powered on", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startBrowsingForHAPBLEAccessories
{
  v3 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HAPAccessoryServerBrowserWiProxBTLE_startBrowsingForHAPBLEAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)pauseScans
{
  v3 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerBrowserWiProxBTLE_pauseScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __49__HAPAccessoryServerBrowserWiProxBTLE_pauseScans__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopScanning];
  v2 = *(a1 + 32);

  return [v2 setCurrentScanState:0];
}

- (void)restartScans
{
  v3 = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HAPAccessoryServerBrowserWiProxBTLE_restartScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __51__HAPAccessoryServerBrowserWiProxBTLE_restartScans__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wpHomeKit];
  v3 = [v2 state];

  if (v3 == 3)
  {
    v4 = [*(a1 + 32) currentScanType];
    [*(a1 + 32) _stopScanning];
    v5 = *(a1 + 32);

    [v5 _startScanningWithScanType:v4];
  }
}

- (void)_stopScanning
{
  v3 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
  v4 = [v3 state];

  if (v4 != 2)
  {
    v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
    [v5 stopScanningForType:0];

    v6 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
    [v6 stopScanningForType:1];
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanType:-1];
}

- (void)_startScanningWithScanType:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D7BCC0]];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D7BCB8]];

  if (!a3)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D7BCC8]];
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanType:a3];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Start scanning with data: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPAccessoryServerBrowserWiProxBTLE *)v8 wpHomeKit];
  [v11 startScanningWithData:v5 forType:0];

  v12 = [(HAPAccessoryServerBrowserWiProxBTLE *)v8 wpHomeKit];
  [v12 startScanningWithData:v5 forType:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (unsigned)routeMode
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  routeMode = self->_routeMode;
  os_unfair_lock_unlock(&self->_lock);
  return routeMode;
}

- (void)setRouteMode:(unsigned __int8)a3
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    os_unfair_lock_lock_with_options();
    self->_routeMode = a3;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)removeTrackedPeripheralWithStableIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _lock_trackedPeripheralWithIdentifier:v4];
  if (v5)
  {
    [(NSMutableSet *)self->_trackedPeripherals removeObject:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5 != 0;
}

- (id)trackedIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB98] setWithSet:self->_trackedIdentifiers];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)trackedPeripherals
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB98] setWithSet:self->_trackedPeripherals];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HAPAccessoryServerBrowserWiProxBTLE)initWithDelegate:(id)a3 queue:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v23.receiver = self;
    v23.super_class = HAPAccessoryServerBrowserWiProxBTLE;
    v9 = [(HAPAccessoryServerBrowserWiProxBTLE *)&v23 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_workQueue, a4);
      objc_storeWeak(&v10->_delegate, v6);
      v11 = [objc_alloc(MEMORY[0x277D7BC70]) initWithDelegate:v10 queue:v10->_workQueue];
      wpHomeKit = v10->_wpHomeKit;
      v10->_wpHomeKit = v11;

      v10->_currentScanState = 0;
      v10->_scanInBackground = 0;
      v13 = [MEMORY[0x277CBEB58] set];
      trackedIdentifiers = v10->_trackedIdentifiers;
      v10->_trackedIdentifiers = v13;

      v15 = [MEMORY[0x277CBEB58] set];
      trackedPeripherals = v10->_trackedPeripherals;
      v10->_trackedPeripherals = v15;

      v10->_routeMode = 0;
      v10->_currentScanType = -1;
    }

    self = v10;
    v17 = self;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid arguments", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46, &__block_literal_global_20668);
  }

  v3 = logCategory__hmf_once_v47;

  return v3;
}

uint64_t __50__HAPAccessoryServerBrowserWiProxBTLE_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v47 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end