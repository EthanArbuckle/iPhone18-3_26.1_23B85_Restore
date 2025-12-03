@interface HAPAccessoryServerBrowserWiProxBTLE
+ (id)logCategory;
- (BOOL)removeTrackedPeripheralWithStableIdentifier:(id)identifier;
- (BOOL)scanInBackground;
- (HAPAccessoryServerBrowserWiProxBTLE)initWithDelegate:(id)delegate queue:(id)queue;
- (HAPAccessoryServerBrowserWiProxBTLEDelegate)delegate;
- (NSMapTable)reachabilityScanTuples;
- (id)_lock_trackedPeripheralWithIdentifier:(id)identifier;
- (id)_parseAdvertisementData:(id)data forPeripheral:(id)peripheral RSSI:(id)i;
- (id)logIdentifier;
- (id)trackedIdentifiers;
- (id)trackedPeripheralForIdentifier:(id)identifier;
- (id)trackedPeripheralWithIdentifier:(id)identifier;
- (id)trackedPeripherals;
- (unint64_t)_getLinkQuality:(id)quality;
- (unsigned)routeMode;
- (void)_probeReachabilityForTrackedAccessories;
- (void)_removeTrackedPeripheral:(id)peripheral;
- (void)_reportHAPPeripheral:(id)peripheral;
- (void)_reportReachabilityForHAPPeripheral:(id)peripheral;
- (void)_startBrowsingForHAPBLEAccessories;
- (void)_startScanningWithScanType:(int64_t)type;
- (void)_startTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers restartScan:(BOOL)scan;
- (void)_stopBrowsingForHAPBLEAccessories:(BOOL)accessories;
- (void)_stopScanning;
- (void)_stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers;
- (void)homeKit:(id)kit failedToStartScanningWithError:(id)error;
- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i;
- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i type:(int64_t)type;
- (void)homeKitDidUpdateState:(id)state;
- (void)homeKitStartedScanning:(id)scanning;
- (void)homeKitStoppedScanning:(id)scanning;
- (void)pauseScans;
- (void)probeReachabilityForTrackedAccessoriesWithScanTuples:(id)tuples;
- (void)resetLastSeenForTrackedAccessories:(id)accessories;
- (void)restartScans;
- (void)retrieveStateForTrackedAccessoryWithIdentifier:(id)identifier stateNumber:(id *)number isReachable:(BOOL *)reachable linkQuality:(unint64_t *)quality lastSeen:(id *)seen;
- (void)setRouteMode:(unsigned __int8)mode;
- (void)setScanInBackground:(BOOL)background;
- (void)startBrowsingForHAPBLEAccessories;
- (void)startTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers;
- (void)stopBrowsingForHAPBLEAccessories:(BOOL)accessories;
- (void)stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers;
- (void)updateStateForIdentifier:(id)identifier stateNumber:(id)number;
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
  routeMode = [(HAPAccessoryServerBrowserWiProxBTLE *)self routeMode];
  v5 = @"Local";
  v6 = @"-";
  v7 = @"WHBS";
  if ((routeMode & 2) == 0)
  {
    v7 = @"WHB";
  }

  if (routeMode)
  {
    v6 = v7;
  }

  if (routeMode)
  {
    v5 = v6;
  }

  v8 = v5;
  currentScanState = [(HAPAccessoryServerBrowserWiProxBTLE *)self currentScanState];
  if (currentScanState)
  {
    v10 = currentScanState;
    if (currentScanState == 1)
    {
      stringValue = @"BROWSE";
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:currentScanState];
      stringValue = [v12 stringValue];
    }
  }

  else
  {
    stringValue = @"IDLE";
  }

  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
  v14 = HAPWiProxScanStateString([wpHomeKit state]);
  currentScanType = [(HAPAccessoryServerBrowserWiProxBTLE *)self currentScanType];
  if (currentScanType > 2)
  {
    v16 = @"N";
  }

  else
  {
    v16 = off_2786D5F00[currentScanType];
  }

  v17 = [v3 stringWithFormat:@"HAPWiProxBLE-%@ %@(%@-%@)", v8, stringValue, v14, v16];

  return v17;
}

- (void)_reportReachabilityForHAPPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  reachabilityScanTuples = [(HAPAccessoryServerBrowserWiProxBTLE *)self reachabilityScanTuples];
  identifier = [peripheralCopy identifier];
  v7 = [reachabilityScanTuples objectForKey:identifier];

  reachabilityScanTuples2 = [(HAPAccessoryServerBrowserWiProxBTLE *)self reachabilityScanTuples];
  identifier2 = [peripheralCopy identifier];
  [reachabilityScanTuples2 removeObjectForKey:identifier2];

  completion = [v7 completion];

  if (completion)
  {
    queue = [v7 queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HAPAccessoryServerBrowserWiProxBTLE__reportReachabilityForHAPPeripheral___block_invoke;
    v12[3] = &unk_2786D7050;
    v13 = v7;
    v14 = peripheralCopy;
    dispatch_async(queue, v12);
  }
}

void __75__HAPAccessoryServerBrowserWiProxBTLE__reportReachabilityForHAPPeripheral___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 40) identifier];
  v3[2](v3, v2, 1);
}

- (void)_reportHAPPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HAPAccessoryServerBrowserWiProxBTLE *)self delegate];
  v6 = [peripheralCopy copy];
  [delegate accessoryServerBrowserBTLE:self didDiscoverHAPPeripheral:v6];

  [(HAPAccessoryServerBrowserWiProxBTLE *)self _reportReachabilityForHAPPeripheral:peripheralCopy];
}

- (void)_removeTrackedPeripheral:(id)peripheral
{
  v27 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  os_unfair_lock_lock_with_options();
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = peripheralCopy;
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
          [array addObject:v11];
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
  v12 = array;
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

- (id)trackedPeripheralWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _lock_trackedPeripheralWithIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_trackedPeripheralWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  if (identifierCopy)
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
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:identifierCopy];

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

- (void)homeKit:(id)kit failedToStartScanningWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Failed to start scanning with error: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeKitStoppedScanning:(id)scanning
{
  v12 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)homeKitStartedScanning:(id)scanning
{
  v12 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i
{
  v30 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  deviceCopy = device;
  dataCopy = data;
  iCopy = i;
  v14 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _parseAdvertisementData:dataCopy forPeripheral:deviceCopy RSSI:iCopy];
  if (v14)
  {
    trackedIdentifiers = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedIdentifiers];
    identifier = [v14 identifier];
    v17 = [trackedIdentifiers containsObject:identifier];

    if (v17)
    {
      identifier2 = [v14 identifier];
      v19 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:identifier2];

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
        encryptedPayload = [v19 encryptedPayload];

        if (!encryptedPayload)
        {
          os_unfair_lock_lock_with_options();
          [(NSMutableSet *)self->_trackedPeripherals addObject:v19];
          os_unfair_lock_unlock(&self->_lock);
        }
      }

      context = objc_autoreleasePoolPush();
      selfCopy = self;
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

- (void)homeKit:(id)kit foundDevice:(id)device withData:(id)data RSSI:(id)i type:(int64_t)type
{
  kitCopy = kit;
  deviceCopy = device;
  dataCopy = data;
  iCopy = i;
  v14 = iCopy;
  if (!iCopy || [iCopy integerValue] < -127 || (v15 = objc_msgSend(v14, "integerValue"), v16 = v14, v15 >= 21))
  {
    v16 = &unk_283EA9878;
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self homeKit:kitCopy foundDevice:deviceCopy withData:dataCopy RSSI:v16];
}

- (void)homeKitDidUpdateState:(id)state
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HAPWiProxScanStateString([stateCopy state]);
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Changed power state to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  state = [wpHomeKit state];

  if (state == 3)
  {
    if ([(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy currentScanState]== 1)
    {
      [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy _startBrowsingForHAPBLEAccessories];
    }

    trackedIdentifiers = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedIdentifiers];
    if ([trackedIdentifiers count])
    {
      scanInBackground = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy scanInBackground];

      if (scanInBackground)
      {
        [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy _startTrackingHAPBLEAccessoriesWithIdentifiers:0 restartScan:1];
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
    trackedPeripherals = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedPeripherals];
    v15 = [trackedPeripherals countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(trackedPeripherals);
          }

          [*(*(&v20 + 1) + 8 * v18++) reset];
        }

        while (v16 != v18);
        v16 = [trackedPeripherals countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_parseAdvertisementData:(id)data forPeripheral:(id)peripheral RSSI:(id)i
{
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peripheralCopy = peripheral;
  iCopy = i;
  v11 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  bytes = [v11 bytes];
  v13 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  v14 = [dataCopy objectForKeyedSubscript:@"kCBAdvDataDeviceAddress"];
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

  if ([v11 length] < 0x11 || ((v16 = *(bytes + 2), v16 != 17) ? (v17 = v16 == 6) : (v17 = 1), !v17))
  {
    v21 = 0;
    v22 = &unk_283EA9890;
    goto LABEL_38;
  }

  selfCopy = self;
  v44 = iCopy;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(bytes + 3) >> 5];
  v19 = *(bytes + 3);
  v45 = v18;
  if ([v18 unsignedShortValue] == 17 && v19 == 54)
  {
    HardwareAddressToCString();
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    v46 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 10 length:{objc_msgSend(v11, "length") - 10}];
    v47 = 0;
    v20 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
LABEL_18:
    v22 = &unk_283EA9890;
LABEL_19:
    v43 = peripheralCopy;
    v40 = v20;
    if ([v22 integerValue] == 2)
    {
      v23 = [[HAPBLEPeripheral alloc] initWithName:v13 peripheralUUID:peripheralCopy identifier:v51 hapVersion:v22 hkType:v18 advInterval:v52 statusFlags:v50 category:v49 stateNumber:v48 configNumber:v47 setupHash:v20 encryptedPayload:v46 whbStableIdentifier:0 advDeviceAddress:v15, v20];
      if (HAPIsHH2Enabled_onceToken != -1)
      {
        dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
      }

      if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
      {
        delegate = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy delegate];
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          delegate2 = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy delegate];
          v27 = [delegate2 retrieveCBPeripheralWithUUID:v43 blePeripheral:v23];

          v42 = v27;
          name = [v27 name];
          v29 = [name length];
          if (v29 > [v13 length] && v13 && objc_msgSend(name, "hasPrefix:", v13))
          {
            [(HAPBLEPeripheral *)v23 setName:name];
          }

          [(HAPBLEPeripheral *)v23 setCbPeripheral:v42];
        }
      }

      v30 = [dataCopy objectForKeyedSubscript:@"kCachedAdvertisement"];
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

      bOOLValue = [v32 BOOLValue];
      [(HAPBLEPeripheral *)v23 setIsCached:bOOLValue];
      [(HAPBLEPeripheral *)v23 setAverageRSSI:iCopy];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
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
      iCopy = v44;
    }

    v21 = v23;

    peripheralCopy = v43;
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
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes + 17 length:4];
    }

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 4) & 1];
    HardwareAddressToCString();
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(bytes + 11)];
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(bytes + 13)];
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(bytes + 15)];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(bytes + 16)];
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedIdentifiers];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543618;
    v44 = v6;
    v45 = 2114;
    v46 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Probing reachability for tracked accessories: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  if ([wpHomeKit state] != 3)
  {

    goto LABEL_12;
  }

  if ([(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy currentScanState])
  {
    routeMode = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy routeMode];

    if ((routeMode & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
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
  trackedPeripherals = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedPeripherals];
  v17 = [trackedPeripherals countByEnumeratingWithState:&v39 objects:v49 count:16];
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
          objc_enumerationMutation(trackedPeripherals);
        }

        v22 = *(*(&v39 + 1) + 8 * v21);
        [v22 lastSeen];
        v24 = v23;
        isReachable = [v22 isReachable];
        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        v29 = v28;
        if (isReachable)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            [v22 shortDescription];
            v31 = v20;
            v32 = selfCopy;
            v34 = v33 = trackedPeripherals;
            *buf = 138543874;
            v44 = v30;
            v45 = 2048;
            v46 = Current - v24;
            v47 = 2114;
            v48 = v34;
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "%{public}@Tracked peripheral was seen %.3f seconds ago. Reachability probe returns tracked peripheral: %{public}@", buf, 0x20u);

            trackedPeripherals = v33;
            selfCopy = v32;
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
      v19 = [trackedPeripherals countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v19);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)probeReachabilityForTrackedAccessoriesWithScanTuples:(id)tuples
{
  tuplesCopy = tuples;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HAPAccessoryServerBrowserWiProxBTLE_probeReachabilityForTrackedAccessoriesWithScanTuples___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = tuplesCopy;
  v6 = tuplesCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __92__HAPAccessoryServerBrowserWiProxBTLE_probeReachabilityForTrackedAccessoriesWithScanTuples___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _probeReachabilityForTrackedAccessories];
}

- (id)trackedPeripheralForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:identifierCopy];

  return v6;
}

- (void)updateStateForIdentifier:(id)identifier stateNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HAPAccessoryServerBrowserWiProxBTLE_updateStateForIdentifier_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = identifierCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

void __76__HAPAccessoryServerBrowserWiProxBTLE_updateStateForIdentifier_stateNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trackedPeripheralWithIdentifier:*(a1 + 40)];
  [v2 updateStateNumber:*(a1 + 48)];
}

- (unint64_t)_getLinkQuality:(id)quality
{
  qualityCopy = quality;
  v4 = qualityCopy;
  if (!qualityCopy)
  {
    goto LABEL_10;
  }

  if ([qualityCopy integerValue] <= -50)
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

- (void)retrieveStateForTrackedAccessoryWithIdentifier:(id)identifier stateNumber:(id *)number isReachable:(BOOL *)reachable linkQuality:(unint64_t *)quality lastSeen:(id *)seen
{
  v12 = [(HAPAccessoryServerBrowserWiProxBTLE *)self trackedPeripheralWithIdentifier:identifier];
  if (v12)
  {
    v17 = v12;
    if (quality)
    {
      averageRSSI = [v12 averageRSSI];
      *quality = [(HAPAccessoryServerBrowserWiProxBTLE *)self _getLinkQuality:averageRSSI];

      v12 = v17;
    }

    if (number)
    {
      *number = [v17 stateNumber];
      v12 = v17;
    }

    if (seen)
    {
      v14 = MEMORY[0x277CCABB0];
      Current = CFAbsoluteTimeGetCurrent();
      [v17 lastSeen];
      *seen = [v14 numberWithDouble:Current - v16];
      v12 = v17;
    }

    if (reachable)
    {
      *reachable = [v17 isReachable];
      v12 = v17;
    }
  }
}

- (void)resetLastSeenForTrackedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HAPAccessoryServerBrowserWiProxBTLE_resetLastSeenForTrackedAccessories___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = accessoriesCopy;
  v6 = accessoriesCopy;
  dispatch_async(workQueue, v7);
}

void __74__HAPAccessoryServerBrowserWiProxBTLE_resetLastSeenForTrackedAccessories___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) trackedPeripheralForIdentifier:*(a1 + 40)];
  [v1 reset];
}

- (void)setScanInBackground:(BOOL)background
{
  os_unfair_lock_lock_with_options();
  self->_scanInBackground = background;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)scanInBackground
{
  os_unfair_lock_lock_with_options();
  scanInBackground = self->_scanInBackground;
  os_unfair_lock_unlock(&self->_lock);
  return scanInBackground;
}

- (void)_stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = identifiersCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Request to stop tracking accessories with Identifiers: %{public}@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy _removeTrackedPeripheral:identifiersCopy];
  trackedIdentifiers = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedIdentifiers];
  v10 = [trackedIdentifiers count];

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      currentScanState = [(HAPAccessoryServerBrowserWiProxBTLE *)v12 currentScanState];
      v24 = 138543618;
      v25 = v14;
      v26 = 2048;
      v27 = currentScanState;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No more accessories to track scanState: %tu", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    currentScanState2 = [(HAPAccessoryServerBrowserWiProxBTLE *)v12 currentScanState];
    v17 = objc_autoreleasePoolPush();
    v18 = v12;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (currentScanState2)
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

- (void)stopTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HAPAccessoryServerBrowserWiProxBTLE_stopTrackingHAPBLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(workQueue, v7);
}

- (void)_startTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers restartScan:(BOOL)scan
{
  v51 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v9;
    v49 = 2114;
    v50 = identifiersCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Request to start tracking accessories with new Identifiers: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (identifiersCopy)
  {
    v10 = identifiersCopy;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v42 = [MEMORY[0x277CBEB58] setWithArray:v10];
  trackedIdentifiers = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedIdentifiers];
  [v42 minusSet:trackedIdentifiers];

  if ([v42 count])
  {
    scanCopy = 1;
  }

  else
  {
    scanCopy = scan;
  }

  context = objc_autoreleasePoolPush();
  v13 = selfCopy;
  oslog = HMFGetOSLogHandle();
  if (scanCopy)
  {
    v14 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      allObjects = [v42 allObjects];
      trackedIdentifiers2 = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 trackedIdentifiers];
      allObjects2 = [trackedIdentifiers2 allObjects];
      v17 = allObjects;
      v18 = allObjects2;
      array = [MEMORY[0x277CBEB18] array];
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
              [array addObject:v25];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v43 objects:buf count:16];
        }

        while (v21);
      }

      if (v18)
      {
        [array addObjectsFromArray:v18];
      }

      *buf = 138543618;
      v48 = v38;
      v49 = 2114;
      v50 = array;
      _os_log_impl(&dword_22AADC000, oslog, OS_LOG_TYPE_INFO, "%{public}@Tracking Identifiers: %{public}@", buf, 0x16u);

      v14 = oslog;
    }

    objc_autoreleasePoolPop(context);
    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)v13->_trackedIdentifiers unionSet:v42];
    os_unfair_lock_unlock(&v13->_lock);
    wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 wpHomeKit];
    v27 = [wpHomeKit state] == 3;

    if (v27)
    {
      if (![(HAPAccessoryServerBrowserWiProxBTLE *)v13 currentScanState])
      {
        trackedIdentifiers3 = [(HAPAccessoryServerBrowserWiProxBTLE *)v13 trackedIdentifiers];
        v29 = [trackedIdentifiers3 count] == 0;

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

- (void)startTrackingHAPBLEAccessoriesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HAPAccessoryServerBrowserWiProxBTLE_startTrackingHAPBLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(workQueue, v7);
}

- (void)_stopBrowsingForHAPBLEAccessories:(BOOL)accessories
{
  v31 = *MEMORY[0x277D85DE8];
  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanState:0];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  state = [wpHomeKit state];

  if (state == 3)
  {
    trackedIdentifiers = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy trackedIdentifiers];
    if ([trackedIdentifiers count] && -[HAPAccessoryServerBrowserWiProxBTLE scanInBackground](selfCopy, "scanInBackground"))
    {

      if (!accessories)
      {
        [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy _startScanningWithScanType:0];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = MEMORY[0x277CCABB0];
      trackedIdentifiers2 = [(HAPAccessoryServerBrowserWiProxBTLE *)v14 trackedIdentifiers];
      v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(trackedIdentifiers2, "count")}];
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

- (void)stopBrowsingForHAPBLEAccessories:(BOOL)accessories
{
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HAPAccessoryServerBrowserWiProxBTLE_stopBrowsingForHAPBLEAccessories___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  accessoriesCopy = accessories;
  dispatch_async(workQueue, v6);
}

- (void)_startBrowsingForHAPBLEAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Request to Start Browsing for HomeKit accessories", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy setCurrentScanState:1];
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  state = [wpHomeKit state];

  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (state == 3)
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
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HAPAccessoryServerBrowserWiProxBTLE_startBrowsingForHAPBLEAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)pauseScans
{
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerBrowserWiProxBTLE_pauseScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __49__HAPAccessoryServerBrowserWiProxBTLE_pauseScans__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopScanning];
  v2 = *(a1 + 32);

  return [v2 setCurrentScanState:0];
}

- (void)restartScans
{
  workQueue = [(HAPAccessoryServerBrowserWiProxBTLE *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HAPAccessoryServerBrowserWiProxBTLE_restartScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
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
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
  state = [wpHomeKit state];

  if (state != 2)
  {
    wpHomeKit2 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
    [wpHomeKit2 stopScanningForType:0];

    wpHomeKit3 = [(HAPAccessoryServerBrowserWiProxBTLE *)self wpHomeKit];
    [wpHomeKit3 stopScanningForType:1];
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanType:-1];
}

- (void)_startScanningWithScanType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D7BCC0]];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x277D7BCB8]];

  if (!type)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D7BCC8]];
  }

  [(HAPAccessoryServerBrowserWiProxBTLE *)self setCurrentScanType:type];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = dictionary;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Start scanning with data: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  wpHomeKit = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  [wpHomeKit startScanningWithData:dictionary forType:0];

  wpHomeKit2 = [(HAPAccessoryServerBrowserWiProxBTLE *)selfCopy wpHomeKit];
  [wpHomeKit2 startScanningWithData:dictionary forType:1];

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

- (void)setRouteMode:(unsigned __int8)mode
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    os_unfair_lock_lock_with_options();
    self->_routeMode = mode;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)removeTrackedPeripheralWithStableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = [(HAPAccessoryServerBrowserWiProxBTLE *)self _lock_trackedPeripheralWithIdentifier:identifierCopy];
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

- (HAPAccessoryServerBrowserWiProxBTLE)initWithDelegate:(id)delegate queue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = queueCopy;
  if (delegateCopy && queueCopy)
  {
    v23.receiver = self;
    v23.super_class = HAPAccessoryServerBrowserWiProxBTLE;
    v9 = [(HAPAccessoryServerBrowserWiProxBTLE *)&v23 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_workQueue, queue);
      objc_storeWeak(&v10->_delegate, delegateCopy);
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
    selfCopy = self;
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
    selfCopy = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
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