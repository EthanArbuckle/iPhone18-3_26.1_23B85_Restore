@interface HAPAccessoryServerBrowserBTLE
+ (id)logCategory;
- (BOOL)_canStartScan;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_hasPairedAccessoriesOfType:(unint64_t)a3;
- (BOOL)_hasRecentlySeenAccessoriesWithIdentifiers:(id)a3;
- (BOOL)_shouldCreateHAPAccessoryServerWithIdentifier:(id)a3 statusFlags:(id)a4 stateNumber:(id)a5 category:(id)a6 configNumber:(id)a7 name:(id)a8 forPeripheral:(id)a9 advertisementFormat:(unint64_t)a10 setupHash:(id)a11 stateChanged:(BOOL *)a12 connectReason:(unsigned __int8 *)a13;
- (BOOL)isPerformingGeneralScan;
- (BOOL)remoteBrowsingAndScanEnabled;
- (BOOL)remoteBrowsingEnabled;
- (HAPAccessoryServerBrowserBTLE)initWithQueue:(id)a3;
- (HAPAccessoryServerBrowserBTLEDelegate)delegate;
- (HAPAccessoryServerBrowserWiProxBTLE)hapWiProxBLEBrowser;
- (id)_bleAccessoryServerTupleForIdentifier:(id)a3;
- (id)_blePeripheralForAccessoryServerIdentifier:(id)a3;
- (id)_blePeripheralForCBPeripheral:(id)a3;
- (id)_cachedCharacteristicForInstanceID:(id)a3 identifier:(id)a4;
- (id)_cbPeripheralForHAPBLEPeripheral:(id)a3 routeMode:(unsigned __int8 *)a4;
- (id)_cbPeripheralForPeripheralUUID:(id)a3 stableIdentifier:(id)a4 routeMode:(unsigned __int8 *)a5;
- (id)_discoveredAccessoryServerTupleForBLEPeripheral:(id)a3 shouldMerge:(BOOL)a4;
- (id)_recentlySeenPairedPeripheralTupleWithPeripheral:(id)a3;
- (id)cachedAccessoryForIdentifier:(id)a3;
- (id)hapCharacteristicsForEncryptedPayload:(id)a3 identifier:(id)a4 shouldConnect:(BOOL *)a5;
- (id)peripheralsPendingConnection;
- (id)peripheralsWithConnectionRequests;
- (id)retrieveCBPeripheralWithUUID:(id)a3 blePeripheral:(id)a4;
- (int64_t)scanState;
- (unint64_t)_parseAdvertisementData:(id)a3 forPeripheral:(id)a4 name:(id *)a5 pairingUsername:(id *)a6 statusFlags:(id *)a7 stateNumber:(id *)a8 category:(id *)a9 configNumber:(id *)a10 setupHash:(id *)a11;
- (unint64_t)qosLimits;
- (void)_addToActiveConnections:(id)a3;
- (void)_addToPendingConnections:(id)a3;
- (void)_callPowerOnCompletionsWithError:(id)a3;
- (void)_connectHAPPeripheralWhenAllowed:(id)a3;
- (void)_connectPendingConnections;
- (void)_createHAPAccessoryAndNotifyDelegateWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 connectionIdleTime:(unsigned __int8)a12 format:(unint64_t)a13 setupHash:(id)a14 encryptedPayload:(id)a15 whbStableIdentifier:(id)a16;
- (void)_didDiscoverPeripheral:(id)a3 accessoryName:(id)a4 pairingIdentifier:(id)a5 format:(unint64_t)a6 statusFlags:(id)a7 stateNumber:(id)a8 category:(id)a9 configNumber:(id)a10 setupHash:(id)a11 encryptedPayload:(id)a12 whbStableIdentifier:(id)a13;
- (void)_disconnectFromHAPBLEPeripheral:(id)a3 cbPeripheral:(id)a4;
- (void)_discoverAccessoryServerWithIdentifier:(id)a3;
- (void)_forgetPairedAccessoryWithIdentifier:(id)a3;
- (void)_handleTargetedScanTimeout;
- (void)_invalidTargetedScanActivity;
- (void)_matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)_monitorDisconnectionOfHAPPeripheral:(id)a3 peripheral:(id)a4;
- (void)_notifyDelegatesOfRemovedAccessoryServer:(id)a3 error:(id)a4;
- (void)_performTargetedScanForAccessoryWithIdentifier:(id)a3;
- (void)_performTimedConnectionRequestForIdentifier:(id)a3;
- (void)_performTimedScanForIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5;
- (void)_powerOnCentralManagerWithCompletion:(id)a3;
- (void)_probeReachabilityForAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5;
- (void)_removeDiscoveredPeripheralsWithIdentifier:(id)a3;
- (void)_removeFromActiveConnections:(id)a3;
- (void)_removeFromPendingConnections:(id)a3;
- (void)_removeIdentifiersForReachabilityScan;
- (void)_removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3;
- (void)_reportReachabilityForAccessoryWithIdentifier:(id)a3;
- (void)_startBrowsingForLegacyHAPBTLE100Accessories;
- (void)_startDiscoveringAccessoryServers;
- (void)_startScanningForReachability:(id)a3;
- (void)_stopMonitorDisconnectionOfCBPeripheral:(id)a3;
- (void)_updateTargetedScanTimer;
- (void)accessoryServerBrowserBTLE:(id)a3 didDiscoverHAPPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)configureAccessoryWithIdentifier:(id)a3 trackState:(BOOL)a4 connectionPriority:(unint64_t)a5;
- (void)configureBTLEQoSLimits:(unint64_t)a3;
- (void)connectToBTLEAccessoryServer:(id)a3;
- (void)connectedHAPPeripheral:(id)a3;
- (void)deRegisterAccessoryWithIdentifier:(id)a3;
- (void)disconnectFromBTLEAccessoryServer:(id)a3;
- (void)disconnectedHAPPeripheral:(id)a3 error:(id)a4;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)failedToConnectHAPPeripheral:(id)a3 error:(id)a4;
- (void)markNotifyingCharacteristicUpdatedForIdentifier:(id)a3;
- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)pauseScans;
- (void)probeReachabilityForAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5;
- (void)removeCachedAccessoryWithIdentifier:(id)a3;
- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3;
- (void)resetLastSeenForAccessoryServersWithIdentifiers:(id)a3;
- (void)resetPairedAccessories;
- (void)retrieveCurrentStateForIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7;
- (void)saveCacheToDisk:(id)a3;
- (void)setConnectionLatency:(int64_t)a3 forPeripheral:(id)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setPerformingGeneralScan:(BOOL)a3;
- (void)setQosLimits:(unint64_t)a3;
- (void)setReachabilityCompletionHandler:(id)a3;
- (void)setScanState:(int64_t)a3;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)a3;
- (void)updateBroadcastKeyForIdentifier:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6;
- (void)updateCachedStateForIdentifier:(id)a3 stateNumber:(id)a4;
- (void)updateRemoteBrowsing:(BOOL)a3 shouldScan:(BOOL)a4;
- (void)updateScanInBackground:(BOOL)a3;
- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4;
@end

@implementation HAPAccessoryServerBrowserBTLE

- (HAPAccessoryServerBrowserWiProxBTLE)hapWiProxBLEBrowser
{
  os_unfair_lock_lock_with_options();
  hapWiProxBLEBrowser = self->_hapWiProxBLEBrowser;
  if (!hapWiProxBLEBrowser)
  {
    v4 = [HAPAccessoryServerBrowserWiProxBTLE alloc];
    v5 = [(HAPAccessoryServerBrowser *)self workQueue];
    v6 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 initWithDelegate:self queue:v5];
    v7 = self->_hapWiProxBLEBrowser;
    self->_hapWiProxBLEBrowser = v6;

    hapWiProxBLEBrowser = self->_hapWiProxBLEBrowser;
  }

  v8 = hapWiProxBLEBrowser;
  os_unfair_lock_unlock(&self->super._lock);

  return v8;
}

- (HAPAccessoryServerBrowserBTLEDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleTargetedScanTimeout
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];

  if (v3)
  {
    v4 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];
    dispatch_source_cancel(v4);

    [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanTimer:0];
  }

  [(HAPAccessoryServerBrowserBTLE *)self _invalidTargetedScanActivity];
  v5 = [(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Canceling targeted scan timer but continuing to actively scan because a general scan has been requested.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(HAPAccessoryServerBrowserBTLE *)v7 identifiersWithReachabilityScanTuples];
    v11 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v68;
      v52 = &v66;
      v53 = v65;
      do
      {
        v14 = 0;
        v54 = v12;
        do
        {
          if (*v68 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v67 + 1) + 8 * v14);
          v16 = [(HAPAccessoryServerBrowserBTLE *)v7 identifiersWithReachabilityScanTuples:v52];
          v17 = [v16 objectForKey:v15];

          if (v17)
          {
            v18 = [v17 completion];

            if (v18)
            {
              v19 = [v17 identifier];
              v20 = [(HAPAccessoryServerBrowserBTLE *)v7 _blePeripheralForAccessoryServerIdentifier:v19];
              v21 = [v20 cbPeripheral];

              if (!v21)
              {
                v22 = [v17 identifier];
                v23 = [(HAPAccessoryServerBrowserBTLE *)v7 _bleAccessoryServerTupleForIdentifier:v22];
                v24 = [v23 accessoryServer];
                v21 = [v24 peripheral];
              }

              v25 = [v21 state];
              v26 = objc_autoreleasePoolPush();
              v27 = v7;
              v28 = HMFGetOSLogHandle();
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
              if (v25)
              {
                if (v29)
                {
                  v30 = HMFGetLogIdentifier();
                  v31 = [v17 identifier];
                  *buf = 138543618;
                  v73 = v30;
                  v74 = 2114;
                  v75 = v31;
                  _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Targeted scan timed out, setting reachability for %{public}@ to YES as we are connected", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                v32 = [v17 queue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_185;
                block[3] = &unk_2786D6CA0;
                v63 = v17;
                dispatch_async(v32, block);
                v33 = &v63;
              }

              else
              {
                if (v29)
                {
                  v34 = HMFGetLogIdentifier();
                  v35 = [v17 identifier];
                  *buf = 138543618;
                  v73 = v34;
                  v74 = 2114;
                  v75 = v35;
                  _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Targeted scan timed out, setting reachability for %{public}@ to NO", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                v32 = [v17 queue];
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v65[0] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke;
                v65[1] = &unk_2786D6CA0;
                v66 = v17;
                dispatch_async(v32, v64);
                v33 = v52;
              }

              v12 = v54;
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v12);
    }
  }

  else
  {
    if (v9)
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v36;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Stopping targeted scans after timeout was received", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HAPAccessoryServerBrowserBTLE *)v7 _stopActiveScanWithForce:0];
    [(HAPAccessoryServerBrowserBTLE *)v7 _removeIdentifiersForReachabilityScan];
  }

  if ([(HAPAccessoryServerBrowserBTLE *)v7 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
  {
    v37 = MEMORY[0x277CBEA60];
    v38 = [(HAPAccessoryServerBrowserBTLE *)v7 targetedScanAccessoryIdentifiers];
    v39 = [v37 arrayWithArray:v38];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obja = v39;
    v40 = [obja countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v59;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v59 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v44 = *(*(&v58 + 1) + 8 * i);
          v45 = [(HAPAccessoryServerBrowserBTLE *)v7 targetedScanAccessoryIdentifiers];
          [v45 removeObject:v44];

          v46 = objc_autoreleasePoolPush();
          v47 = v7;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543618;
            v73 = v49;
            v74 = 2114;
            v75 = v44;
            _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegates that the targeted scan failed to discover accessory with identifier %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v46);
          v50 = [(HAPAccessoryServerBrowserBTLE *)v47 delegateQueue];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_186;
          v57[3] = &unk_2786D7050;
          v57[4] = v47;
          v57[5] = v44;
          dispatch_async(v50, v57);
        }

        v41 = [obja countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v41);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, 0);
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_185(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, 1);
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)_invalidTargetedScanActivity
{
  v3 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanActivity];

  if (v3)
  {
    v4 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanActivity];
    [v4 invalidate];

    [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanActivity:0];
  }
}

- (void)_updateTargetedScanTimer
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Updating targeted scan timer.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServerBrowserBTLE *)v4 targetedScanTimer];
  v8 = v7 == 0;

  if (v8)
  {
    [(HAPAccessoryServerBrowserBTLE *)v4 _invalidTargetedScanActivity];
    v11 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Targeted Scan" parent:0 options:2];
    [(HAPAccessoryServerBrowserBTLE *)v4 setTargetedScanActivity:v11];

    v12 = [(HAPAccessoryServerBrowser *)v4 workQueue];
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);
    [(HAPAccessoryServerBrowserBTLE *)v4 setTargetedScanTimer:v13];

    objc_initWeak(buf, v4);
    v14 = [(HAPAccessoryServerBrowserBTLE *)v4 targetedScanTimer];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __57__HAPAccessoryServerBrowserBTLE__updateTargetedScanTimer__block_invoke;
    v21 = &unk_2786D6EB0;
    objc_copyWeak(&v23, buf);
    v22 = v4;
    dispatch_source_set_event_handler(v14, &v18);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
    v15 = [(HAPAccessoryServerBrowserBTLE *)v4 targetedScanTimer:v18];
    v16 = dispatch_walltime(0, 3000000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);

    v9 = [(HAPAccessoryServerBrowserBTLE *)v4 targetedScanTimer];
    dispatch_resume(v9);
  }

  else
  {
    v9 = [(HAPAccessoryServerBrowserBTLE *)v4 targetedScanTimer];
    v10 = dispatch_walltime(0, 3000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __57__HAPAccessoryServerBrowserBTLE__updateTargetedScanTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _invalidTargetedScanActivity];
    [v3 _handleTargetedScanTimeout];
    WeakRetained = v3;
  }
}

- (BOOL)_shouldCreateHAPAccessoryServerWithIdentifier:(id)a3 statusFlags:(id)a4 stateNumber:(id)a5 category:(id)a6 configNumber:(id)a7 name:(id)a8 forPeripheral:(id)a9 advertisementFormat:(unint64_t)a10 setupHash:(id)a11 stateChanged:(BOOL *)a12 connectReason:(unsigned __int8 *)a13
{
  v142 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v127 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v126 = a8;
  v23 = a9;
  v24 = a11;
  v25 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  v26 = [v25 containsObject:v19];

  [(HAPAccessoryServerBrowserBTLE *)self _reportReachabilityForAccessoryWithIdentifier:v19];
  v27 = [v23 cbPeripheral];
  v28 = [v27 state];

  if (v28)
  {
LABEL_2:
    v29 = 0;
    goto LABEL_59;
  }

  if (v26)
  {
    *a13 = 1;
    v30 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
    [v30 removeObject:v19];

    v31 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
    if ([v31 count])
    {
    }

    else
    {
      v33 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
      v34 = [v33 count];

      if (!v34)
      {
        v35 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];

        if (v35)
        {
          v36 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];
          dispatch_source_cancel(v36);

          [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanTimer:0];
        }

        [(HAPAccessoryServerBrowserBTLE *)self _invalidTargetedScanActivity];
        if (![(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan])
        {
          v37 = objc_autoreleasePoolPush();
          v38 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v40 = v121 = v37;
            *buf = 138543362;
            v129 = v40;
            _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Stopping targeted scans after discovering the appropriate peripheral(s)", buf, 0xCu);

            v37 = v121;
          }

          objc_autoreleasePoolPop(v37);
          [(HAPAccessoryServerBrowserBTLE *)v38 _stopActiveScanWithForce:0];
        }
      }
    }

    v32 = 1;
  }

  else if ([(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan]&& ![(HAPAccessoryServerBrowser *)self isPaired:v19])
  {
    v32 = 1;
    *a13 = 1;
  }

  else
  {
    v32 = 0;
  }

  v41 = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  v42 = [v41 objectForKey:v19];

  if (v32)
  {
    v29 = 1;
    if (!v42)
    {
      goto LABEL_59;
    }

    goto LABEL_50;
  }

  if (!v42)
  {
    if (![(HAPAccessoryServerBrowser *)self isPaired:v19])
    {
      v91 = objc_autoreleasePoolPush();
      v92 = self;
      v93 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        v94 = HMFGetLogIdentifier();
        *buf = 138543362;
        v129 = v94;
        _os_log_impl(&dword_22AADC000, v93, OS_LOG_TYPE_DEBUG, "%{public}@Discovered an unpaired accessory!", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v91);
      goto LABEL_2;
    }

    v42 = [[HAPRecentlySeenPairedBTLEPeripheralTuple alloc] initRecentlySeenPairedHAPBLEPeripheral:v23];
    v122 = v42;
    if (v42)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v116 = v46;
        [v23 shortDescription];
        v108 = v23;
        v50 = v22;
        v51 = v20;
        v52 = v21;
        v54 = v53 = v24;
        *buf = 138543874;
        v129 = v49;
        v130 = 2114;
        v131 = v54;
        v132 = 2114;
        v133 = v122;
        _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%{public}@Adding accessory server: %{public}@ to recently seen paired peripherals: %{public}@", buf, 0x20u);

        v24 = v53;
        v21 = v52;
        v20 = v51;
        v22 = v50;
        v23 = v108;

        v46 = v116;
      }

      objc_autoreleasePoolPop(v46);
      v55 = [(HAPAccessoryServerBrowserBTLE *)v47 recentlySeenPairedPeripherals];
      v56 = [v23 identifier];
      v42 = v122;
      [v55 setObject:v122 forKey:v56];
    }

    v117 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:v19];
    v57 = [v117 peripheralInfo];
    v58 = [v57 stateNumber];
    if ([v58 isEqual:v20])
    {
      v59 = [v117 lastKeyBagIdentityIndexFailingPV];
      if (!v59)
      {
        v115 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
        v95 = v23;
        v96 = v22;
        v97 = v20;
        v98 = v21;
        v99 = v24;
        v100 = [v117 discoveryVersion];

        v101 = v115 == v100;
        v24 = v99;
        v21 = v98;
        v20 = v97;
        v22 = v96;
        v23 = v95;
        v42 = v122;
        if (v101)
        {
          v29 = 0;
          goto LABEL_37;
        }

LABEL_34:
        context = objc_autoreleasePoolPush();
        v113 = self;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v106 = HMFGetLogIdentifier();
          v105 = [v23 identifier];
          v103 = [v117 peripheralInfo];
          v104 = [v103 stateNumber];
          v109 = v23;
          v102 = v22;
          v61 = v20;
          v62 = v21;
          v63 = v24;
          v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v117, "discoveryVersion")}];
          v65 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HAPBLEAccessoryCache currentDiscoveryVersion](HAPBLEAccessoryCache, "currentDiscoveryVersion")}];
          v66 = [v117 lastKeyBagIdentityIndexFailingPV];
          *buf = 138544898;
          v129 = v106;
          v130 = 2114;
          v131 = v105;
          v132 = 2114;
          v133 = v104;
          v134 = 2114;
          v135 = v61;
          v136 = 2114;
          v137 = v64;
          v67 = v64;
          v138 = 2114;
          v139 = v65;
          v140 = 2114;
          v141 = v66;
          _os_log_impl(&dword_22AADC000, v60, OS_LOG_TYPE_INFO, "%{public}@Creating accessory server for %{public}@ due to State Number: (%{public}@ -> %{public}@), BT Discovery Version: (%{public}@ -> %{public}@), KeyBagPVIndex: (%{public}@)", buf, 0x48u);

          v24 = v63;
          v21 = v62;
          v20 = v61;
          v22 = v102;
          v23 = v109;

          v42 = v122;
        }

        objc_autoreleasePoolPop(context);
        *a13 = 4;
        v29 = 1;
LABEL_37:

        if (!v42)
        {
          goto LABEL_59;
        }

        goto LABEL_50;
      }
    }

    goto LABEL_34;
  }

  v119 = v24;
  if (v20)
  {
    v43 = v42;
    v44 = [v42 stateNumber];
    v45 = [v44 isEqualToNumber:v20];

    if (v45)
    {
      v29 = 0;
      v42 = v43;
      if (!v21)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v75 = objc_autoreleasePoolPush();
      v124 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        contexta = HMFGetLogIdentifier();
        v114 = v75;
        v107 = [v43 stateNumber];
        [v43 monitorState];
        v110 = HMFBooleanToString();
        v77 = [v23 shortDescription];
        *buf = 138544642;
        v129 = contexta;
        v130 = 2114;
        v131 = v19;
        v132 = 2114;
        v133 = v107;
        v134 = 2114;
        v135 = v20;
        v136 = 2114;
        v137 = v110;
        v138 = 2114;
        v139 = v77;
        v78 = v77;
        _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_INFO, "%{public}@Accessory server: %{public}@ updated state number %{public}@ -> %{public}@. Monitoring state: %{public}@. %{public}@", buf, 0x3Eu);

        v75 = v114;
      }

      objc_autoreleasePoolPop(v75);
      v42 = v43;
      v29 = [v43 monitorState];
      *a12 = 1;
      *a13 = 4;
      if (!v21)
      {
        goto LABEL_49;
      }
    }

LABEL_41:
    v123 = v42;
    v68 = [v42 category];
    v69 = [v68 isEqualToNumber:v21];

    if ((v69 & 1) == 0)
    {
      v70 = objc_autoreleasePoolPush();
      v71 = self;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v73 = v118 = v71;
        v74 = [v123 category];
        *buf = 138544130;
        v129 = v73;
        v130 = 2114;
        v131 = v19;
        v132 = 2114;
        v133 = v74;
        v134 = 2114;
        v135 = v21;
        _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_INFO, "%{public}@Accessory server: %{public}@ updated category %{public}@ -> %{public}@", buf, 0x2Au);

        v71 = v118;
      }

      objc_autoreleasePoolPop(v70);
      *a13 = 4;
      v29 = 1;
    }

    v24 = v119;
    v42 = v123;
    goto LABEL_50;
  }

  v29 = 0;
  if (v21)
  {
    goto LABEL_41;
  }

LABEL_49:
  v24 = v119;
LABEL_50:
  v120 = v20;
  v79 = v21;
  if (v22)
  {
    v80 = v24;
    v125 = v42;
    v81 = [v42 configNumber];
    v82 = v22;
    if ([v81 isEqualToNumber:v22])
    {

      v42 = v125;
    }

    else
    {
      v83 = [v23 isCached];

      v42 = v125;
      if ((v83 & 1) == 0)
      {
        v84 = objc_autoreleasePoolPush();
        v85 = self;
        v86 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = HMFGetLogIdentifier();
          v88 = [v125 configNumber];
          *buf = 138544130;
          v129 = v87;
          v130 = 2114;
          v131 = v19;
          v132 = 2114;
          v133 = v88;
          v134 = 2114;
          v135 = v82;
          _os_log_impl(&dword_22AADC000, v86, OS_LOG_TYPE_INFO, "%{public}@Invalidating cache for accessory: %{public}@ on config number update %{public}@ -> %{public}@", buf, 0x2Au);

          v42 = v125;
        }

        objc_autoreleasePoolPop(v84);
        [(HAPAccessoryServerBrowserBTLE *)v85 removeCachedAccessoryWithIdentifier:v19];
        *a13 = 4;
        v29 = 1;
      }
    }
  }

  else
  {
    v82 = 0;
    v80 = v24;
  }

  [v42 updateWithPeripheral:v23];

  v24 = v80;
  v21 = v79;
  v20 = v120;
  v22 = v82;
LABEL_59:

  v89 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)_reportReachabilityForAccessoryWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  [v5 containsObject:v4];

  v6 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  v7 = [v6 objectForKey:v4];

  if ([(HAPAccessoryServerBrowser *)self isPaired:v4])
  {
    v8 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    [v8 accessoryServerBrowser:self didChangeReachability:1 forAccessoryServerWithIdentifier:v4];
  }

  if (v7)
  {
    v9 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
    [v9 removeObjectForKey:v4];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Reporting reachability for accessory in reachability scan with identifier %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v7 completion];

    if (v14)
    {
      v15 = [v7 queue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __79__HAPAccessoryServerBrowserBTLE__reportReachabilityForAccessoryWithIdentifier___block_invoke;
      v17[3] = &unk_2786D7050;
      v18 = v7;
      v19 = v4;
      dispatch_async(v15, v17);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __79__HAPAccessoryServerBrowserBTLE__reportReachabilityForAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v2[2](v2, *(a1 + 40), 1);
}

- (void)_performTargetedScanForAccessoryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  [v5 addObject:v4];

  [(HAPAccessoryServerBrowserBTLE *)self _updateTargetedScanTimer];
  [(HAPAccessoryServerBrowserBTLE *)self _startBrowsingForLegacyHAPBTLE100Accessories];
  v6 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [v6 resetLastSeenForTrackedAccessories:v4];

  v7 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [v7 startBrowsingForHAPBLEAccessories];
}

- (void)_connectPendingConnections
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HAPAccessoryServerBrowserBTLE *)v4 peripheralsPendingConnection];
    v8 = [v7 count];
    v9 = [(HAPAccessoryServerBrowserBTLE *)v4 peripheralsWithConnectionRequests];
    *buf = 138543874;
    v41 = v6;
    v42 = 2048;
    v43 = v8;
    v44 = 2048;
    v45 = [v9 count];
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %tu, Connected/Connecting: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [(HAPAccessoryServerBrowserBTLE *)v4 peripheralsPendingConnection];
  v11 = [v10 count];

  if (!v11)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v4;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v28;
      v29 = "%{public}@No more pending connections";
      v30 = v27;
      v31 = OS_LOG_TYPE_DEBUG;
LABEL_26:
      _os_log_impl(&dword_22AADC000, v30, v31, v29, buf, 0xCu);
    }

LABEL_27:

    objc_autoreleasePoolPop(v25);
    goto LABEL_28;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [(HAPAccessoryServerBrowserBTLE *)v4 peripheralsPendingConnection];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [(HAPAccessoryServerBrowserBTLE *)v4 _blePeripheralForAccessoryServerIdentifier:v18];
        v20 = [(HAPAccessoryServerBrowserBTLE *)v4 recentlySeenPairedPeripherals];
        v21 = [v20 objectForKey:v18];

        if ([v21 connectionPriority] == 1 && v15 == 0)
        {
          v15 = v19;
        }

        v23 = [(HAPAccessoryServerBrowserBTLE *)v4 _discoveredAccessoryServerTupleForBLEPeripheral:v19 shouldMerge:0];
        v24 = [v23 accessoryServer];
        [v24 updateConnectionIdleTime:2];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);

    if (v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v32 = [(HAPAccessoryServerBrowserBTLE *)v4 peripheralsPendingConnection];
  v33 = [v32 lastObject];
  v15 = [(HAPAccessoryServerBrowserBTLE *)v4 _blePeripheralForAccessoryServerIdentifier:v33];

  if (!v15)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v4;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v28;
      v29 = "%{public}@No peripheral to connect";
      v30 = v27;
      v31 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_23:
  [(HAPAccessoryServerBrowserBTLE *)v4 _removeFromPendingConnections:v15];
  [(HAPAccessoryServerBrowserBTLE *)v4 _connectHAPPeripheralWhenAllowed:v15];

LABEL_28:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_connectHAPPeripheralWhenAllowed:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self qosLimits];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v11 = [(HAPAccessoryServerBrowserBTLE *)v7 peripheralsWithConnectionRequests];
    v12 = [v11 count];
    v13 = [(HAPAccessoryServerBrowserBTLE *)v7 peripheralsPendingConnection];
    *buf = 138544130;
    v58 = v9;
    v59 = 2114;
    v60 = v10;
    v61 = 2048;
    v62 = v12;
    v63 = 2048;
    v64 = [v13 count];
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Connection request to peripheral: %{public}@, Current connection count : %tu, Pending: %tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  if (v5 == 2)
  {
    goto LABEL_22;
  }

  if (v5 == 1)
  {
    v14 = [(HAPAccessoryServerBrowserBTLE *)v7 connectionsObserver];

    if (v14)
    {
      v15 = [(HAPAccessoryServerBrowserBTLE *)v7 connectionsObserver];
      v16 = [v15 getAvailableHAPConnections];

      v17 = objc_autoreleasePoolPush();
      v18 = v7;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v20;
        v59 = 1024;
        LODWORD(v60) = v16;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@: Coex Recommendation = %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = v16 >= 3 ? 3 : v16;
      v22 = v16 >= 1 ? v21 : 3;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v27;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Not attached to connection observer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v22 = 3;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = v7;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v31;
      v59 = 1024;
      LODWORD(v60) = v22;
      _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEBUG, "%{public}@: Current available HAP BLE connections: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v28);
    v23 = v22;
  }

  else
  {
    v23 = 3;
  }

  v32 = [(HAPAccessoryServerBrowserBTLE *)v7 peripheralsWithConnectionRequests];
  v33 = [v32 count];

  if (v33 < v23)
  {
LABEL_22:
    [(HAPAccessoryServerBrowserBTLE *)v7 _addToActiveConnections:v4];
    v56 = 0;
    v34 = [(HAPAccessoryServerBrowserBTLE *)v7 _cbPeripheralForHAPBLEPeripheral:v4 routeMode:&v56];
    if (v34)
    {
      [v4 setCbPeripheral:v34];
      v35 = objc_autoreleasePoolPush();
      v36 = v7;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [v4 shortDescription];
        if (v56)
        {
          v40 = @"WHB";
        }

        else
        {
          v40 = @"Local";
        }

        v41 = MEMORY[0x277CCABB0];
        v42 = [(HAPAccessoryServerBrowserBTLE *)v36 peripheralsWithConnectionRequests];
        v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
        *buf = 138544130;
        v58 = v38;
        v59 = 2114;
        v60 = v39;
        v61 = 2114;
        v62 = v40;
        v63 = 2114;
        v64 = v43;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%{public}@Connecting accessory: %{public}@ - route %{public}@. Connections #: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      v44 = [(HAPAccessoryServerBrowserBTLE *)v36 centralManager];
      [v44 connectPeripheral:v34 options:0];
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v7;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        v54 = [v4 shortDescription];
        *buf = 138543618;
        v58 = v53;
        v59 = 2114;
        v60 = v54;
        _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve a CBPeripheral for accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v44 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2101];
      [(HAPAccessoryServerBrowserBTLE *)v51 failedToConnectHAPPeripheral:v4 error:v44];
    }
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v7;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      v48 = HMFGetLogIdentifier();
      v49 = [v4 shortDescription];
      *buf = 138543618;
      v58 = v48;
      v59 = 2114;
      v60 = v49;
      _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEBUG, "%{public}@: Pending connection to peripheral: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    [(HAPAccessoryServerBrowserBTLE *)v46 _addToPendingConnections:v4];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromPendingConnections:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  peripheralsPendingConnection = self->_peripheralsPendingConnection;
  v6 = [v4 identifier];
  LODWORD(peripheralsPendingConnection) = [(NSMutableOrderedSet *)peripheralsPendingConnection containsObject:v6];

  if (peripheralsPendingConnection)
  {
    v7 = self->_peripheralsPendingConnection;
    v8 = [v4 identifier];
    [(NSMutableOrderedSet *)v7 removeObject:v8];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection for peripheral: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addToPendingConnections:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  peripheralsPendingConnection = self->_peripheralsPendingConnection;
  v6 = [v4 identifier];
  LOBYTE(peripheralsPendingConnection) = [(NSMutableOrderedSet *)peripheralsPendingConnection containsObject:v6];

  if (peripheralsPendingConnection)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v7 = self->_peripheralsPendingConnection;
    v8 = [v4 identifier];
    [(NSMutableOrderedSet *)v7 addObject:v8];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending connection to peripheral: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)peripheralsPendingConnection
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  v4 = [(NSMutableOrderedSet *)self->_peripheralsPendingConnection array];
  v5 = [v3 arrayWithArray:v4];

  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (void)_removeFromActiveConnections:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  peripheralsWithConnectionRequests = self->_peripheralsWithConnectionRequests;
  v6 = [v4 identifier];
  LODWORD(peripheralsWithConnectionRequests) = [(NSMutableOrderedSet *)peripheralsWithConnectionRequests containsObject:v6];

  if (peripheralsWithConnectionRequests)
  {
    v7 = self->_peripheralsWithConnectionRequests;
    v8 = [v4 identifier];
    [(NSMutableOrderedSet *)v7 removeObject:v8];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed active connection for peripheral: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addToActiveConnections:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  peripheralsWithConnectionRequests = self->_peripheralsWithConnectionRequests;
  v6 = [v4 identifier];
  LOBYTE(peripheralsWithConnectionRequests) = [(NSMutableOrderedSet *)peripheralsWithConnectionRequests containsObject:v6];

  if (peripheralsWithConnectionRequests)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v7 = self->_peripheralsWithConnectionRequests;
    v8 = [v4 identifier];
    [(NSMutableOrderedSet *)v7 addObject:v8];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding active connection for peripheral: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)peripheralsWithConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  v4 = [(NSMutableOrderedSet *)self->_peripheralsWithConnectionRequests array];
  v5 = [v3 arrayWithArray:v4];

  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (void)_performTimedConnectionRequestForIdentifier:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v8;
    v62 = 2114;
    v63 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to perform a timed connection request for accessory with identifier %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowserBTLE *)v6 _bleAccessoryServerTupleForIdentifier:v4];
  v10 = [v9 accessoryServer];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 shortDescription];
      v16 = [v10 blePeripheral];
      v17 = [v16 shortDescription];
      *buf = 138543874;
      v61 = v14;
      v62 = 2114;
      v63 = v15;
      v64 = 2114;
      v65 = v17;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Found Accessory Server: %{public}@. Requesting discovery via peripheral: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [v10 discoverAccessories];
    goto LABEL_29;
  }

  [(HAPAccessoryServerBrowserBTLE *)v6 _removeDiscoveredPeripheralsWithIdentifier:v4];
  v18 = [(HAPAccessoryServerBrowserBTLE *)v6 targetedScanAccessoryIdentifiers];
  v19 = [v18 containsObject:v4];

  if (!v19)
  {
    v24 = [(HAPAccessoryServerBrowserBTLE *)v6 hapWiProxBLEBrowser];
    v25 = [v24 trackedPeripheralForIdentifier:v4];

    v26 = [(HAPAccessoryServerBrowserBTLE *)v6 recentlySeenPairedPeripherals];
    v27 = [v26 objectForKey:v4];

    if (v27 && [v25 isReachable])
    {
      v28 = [v25 copy];
      v29 = [v27 stateNumber];
      [v28 setStateNumber:v29];

      v30 = [v27 configNumber];
      [v28 setConfigNumber:v30];

      v31 = [v27 category];
      [v28 setCategory:v31];
    }

    else
    {
      v28 = 0;
    }

    v32 = [v28 statusFlags];
    if ([v32 integerValue])
    {
      v33 = [(HAPAccessoryServerBrowser *)v6 isPaired:v4];

      if (v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v6;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v38 = v37 = v27;
          *buf = 138543618;
          v61 = v38;
          v62 = 2114;
          v63 = v4;
          _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_INFO, "%{public}@Found recently seen paired peripheral has invalid pairing status. %{public}@ - Finding it again", buf, 0x16u);

          v27 = v37;
        }

        objc_autoreleasePoolPop(v34);
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (v28)
    {
      v59 = v27;
      [v28 setIsCached:1];
      v39 = objc_autoreleasePoolPush();
      v40 = v6;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v61 = v42;
        v62 = 2114;
        v63 = v28;
        _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_INFO, "%{public}@Found accessory in recently seen tuple. Creating a new accessory server from peripheral: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v58 = [v28 name];
      v57 = [v28 identifier];
      v56 = [v28 statusFlags];
      v43 = [v28 stateNumber];
      v55 = [v28 configNumber];
      v44 = [v28 category];
      v45 = [v28 advertisementFormat];
      v46 = [v28 setupHash];
      v47 = [v28 whbStableIdentifier];
      LOBYTE(v54) = 0;
      LOBYTE(v53) = 1;
      [(HAPAccessoryServerBrowserBTLE *)v40 _createHAPAccessoryAndNotifyDelegateWithPeripheral:v28 name:v58 pairingUsername:v57 statusFlags:v56 stateNumber:v43 stateChanged:0 connectReason:v53 configNumber:v55 category:v44 connectionIdleTime:v54 format:v45 setupHash:v46 encryptedPayload:0 whbStableIdentifier:v47];

      v27 = v59;
      goto LABEL_28;
    }

LABEL_25:
    v48 = objc_autoreleasePoolPush();
    v49 = v6;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v51;
      v62 = 2114;
      v63 = v4;
      v64 = 2114;
      v65 = v27;
      _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_INFO, "%{public}@Peripheral identifier without server %{public}@ - Finding it again. %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    [(HAPAccessoryServerBrowserBTLE *)v49 _performTargetedScanForAccessoryWithIdentifier:v4];
LABEL_28:

    goto LABEL_29;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v6;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v23;
    v62 = 2114;
    v63 = v4;
    _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Targeted scan is in progress for server identifier: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_29:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_createHAPAccessoryAndNotifyDelegateWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 connectionIdleTime:(unsigned __int8)a12 format:(unint64_t)a13 setupHash:(id)a14 encryptedPayload:(id)a15 whbStableIdentifier:(id)a16
{
  v106 = a8;
  v104 = a9;
  v135 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v105 = a4;
  v21 = a5;
  v22 = a6;
  v113 = a7;
  v112 = a10;
  v111 = a11;
  v103 = a14;
  v110 = a15;
  v107 = a16;
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  v109 = v21;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v20 shortDescription];
    v28 = HMFBooleanToString();
    v29 = HMFBooleanToString();
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a12];
    *buf = 138544642;
    v124 = v26;
    v125 = 2114;
    v126 = v27;
    v127 = 2048;
    v128 = a13;
    v129 = 2114;
    v130 = v28;
    v131 = 2114;
    v132 = v29;
    v133 = 2114;
    v134 = v30;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Creating a HAPAccessoryServerBTLE instance for discovered peripheral: '%{public}@' V: '%tu', ST: '%{public}@' ENC: '%{public}@' CT: '%{public}@'", buf, 0x3Eu);

    v21 = v109;
  }

  objc_autoreleasePoolPop(v23);
  v122 = 0;
  if ([(HAPAccessoryServerBrowser *)v24 isPaired:v21])
  {
    v31 = [(HAPAccessoryServerBrowserBTLE *)v24 cachedAccessoryForIdentifier:v21];
    v32 = v31;
    v33 = v105;
    v34 = v22;
    if (v110)
    {
      if ([v20 isCached])
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v24;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v124 = v38;
          _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_DEBUG, "%{public}@The advertisement data is from the WiProxBTLE cache, so ignore and don't decrypt.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v39 = 0;
        goto LABEL_9;
      }

      v47 = [(HAPAccessoryServerBrowserBTLE *)v24 hapCharacteristicsForEncryptedPayload:v110 identifier:v21 shouldConnect:&v122];
      if (v47)
      {
        v39 = v47;
        v48 = [v47 firstObject];
        v49 = [v48 stateNumber];

        if (v122)
        {
          v113 = v49;
        }

        else
        {
          v50 = [v32 peripheralInfo];
          v51 = [v50 stateNumber];
          v52 = [v49 isEqual:v51];

          if ((v52 & 1) == 0)
          {
            v122 = 1;
            v104 = 2;
            v113 = v49;
            v34 = v22;
LABEL_9:
            v21 = v109;
            goto LABEL_27;
          }

          v21 = v109;
          if (!v122)
          {
            v97 = objc_autoreleasePoolPush();
            v98 = v24;
            v99 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
            {
              v100 = HMFGetLogIdentifier();
              *buf = 138543618;
              v124 = v100;
              v125 = 2114;
              v126 = v109;
              _os_log_impl(&dword_22AADC000, v99, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring duplicate broadcast notification for accessory: %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v97);
            v34 = v22;
            v21 = v109;
            v44 = v103;
            goto LABEL_62;
          }

          v113 = v49;
          v34 = v22;
        }
      }

      else
      {
        if (!v32)
        {
          v93 = objc_autoreleasePoolPush();
          v94 = v24;
          v95 = HMFGetOSLogHandle();
          v44 = v103;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = HMFGetLogIdentifier();
            *buf = 138543618;
            v124 = v96;
            v125 = 2114;
            v126 = v109;
            _os_log_impl(&dword_22AADC000, v95, OS_LOG_TYPE_INFO, "%{public}@No accessory cache found for: %{public}@", buf, 0x16u);

            v21 = v109;
          }

          objc_autoreleasePoolPop(v93);
          [(HAPAccessoryServerBrowserBTLE *)v94 _performTimedConnectionRequestForIdentifier:v21];
          v32 = 0;
          v39 = 0;
          goto LABEL_58;
        }

        v39 = 0;
        v106 = 1;
      }

LABEL_27:
      v44 = v103;
      v53 = [(HAPAccessoryServerBrowserBTLE *)v24 recentlySeenPairedPeripherals];
      v54 = [v53 objectForKey:v21];

      if (v105)
      {
        if (v34)
        {
LABEL_29:
          if (!v113)
          {
            v55 = [v54 stateNumber];
            v56 = v55;
            if (v55)
            {
              v113 = v55;
            }

            else
            {
              v59 = [v32 peripheralInfo];
              v113 = [v59 stateNumber];

              v21 = v109;
            }
          }

          if (!v112)
          {
            v60 = [v54 configNumber];
            v61 = v60;
            if (v60)
            {
              v112 = v60;
            }

            else
            {
              v62 = [v32 peripheralInfo];
              v112 = [v62 configNumber];

              v21 = v109;
            }
          }

          if (!v111)
          {
            v63 = [v54 category];
            v64 = v63;
            if (v63)
            {
              v111 = v63;
            }

            else
            {
              v65 = [v32 peripheralInfo];
              v111 = [v65 categoryIdentifier];

              v21 = v109;
            }
          }

          goto LABEL_47;
        }
      }

      else
      {
        v57 = [v32 peripheralInfo];
        v33 = [v57 accessoryName];

        if (v34)
        {
          goto LABEL_29;
        }
      }

      v58 = [v32 peripheralInfo];
      v34 = [v58 statusFlags];

      goto LABEL_29;
    }

    if (v31 && ([v20 isCached] & 1) == 0)
    {
      v45 = [v32 peripheralInfo];
      v46 = [v45 stateNumber];
      if (![v113 isEqual:v46])
      {
        v79 = [v32 peripheralInfo];
        v80 = [v79 broadcastKey];
        if (v80)
        {
          v81 = v80;
          v82 = [v32 peripheralInfo];
          v83 = [v82 keyUpdatedStateNumber];

          if (v83)
          {
            v84 = objc_autoreleasePoolPush();
            v85 = v24;
            v86 = HMFGetOSLogHandle();
            v34 = v22;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v87 = HMFGetLogIdentifier();
              *buf = 138543618;
              v124 = v87;
              v125 = 2114;
              v126 = v109;
              _os_log_impl(&dword_22AADC000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory: %{public}@ should be broadcast notifying.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v84);
            Current = CFAbsoluteTimeGetCurrent();
            v89 = [v32 peripheralInfo];
            [v89 keyUpdatedTime];
            v91 = Current - v90;

            v39 = 0;
            v92 = a9;
            if (v91 > 86400.0)
            {
              v92 = 3;
            }

            v104 = v92;
            v122 = 1;
            v33 = v105;
          }

          else
          {
            v39 = 0;
            v33 = v105;
            v34 = v22;
          }
        }

        else
        {

          v39 = 0;
        }

        v21 = v109;
        goto LABEL_18;
      }
    }

    v39 = 0;
LABEL_18:
    v44 = v103;
LABEL_47:

    goto LABEL_48;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v24;
  v42 = HMFGetOSLogHandle();
  v33 = v105;
  v34 = v22;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v124 = v43;
    _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@This accessory is unpaired", buf, 0xCu);

    v21 = v109;
  }

  objc_autoreleasePoolPop(v40);
  v39 = 0;
  v44 = v103;
LABEL_48:
  if (a13 == 1)
  {
    v66 = off_2786D2040;
  }

  else
  {
    if (a13 != 2)
    {
      v68 = 0;
      goto LABEL_54;
    }

    v66 = &off_2786D2048;
  }

  v67 = *v66;
  v68 = objc_opt_class();
LABEL_54:
  v69 = [v68 alloc];
  v70 = [(HAPAccessoryServerBrowser *)v24 keyStore];
  LOBYTE(v102) = a12;
  LOBYTE(v101) = v104;
  v32 = [v69 initWithPeripheral:v20 name:v33 pairingUsername:v21 statusFlags:v34 stateNumber:v113 stateChanged:v106 connectReason:v101 configNumber:v112 category:v111 setupHash:v44 connectionIdleTime:v102 browser:v24 keyStore:v70 whbStableIdentifier:v107];

  if (v32)
  {
    v71 = [HAPDiscoveredBTLEAccessoryServerTuple discoveredAccessoryServerTupleWithAccessoryServer:v32];
    v72 = [(HAPAccessoryServerBrowserBTLE *)v24 discoveredPeripheralsWithAccessories];
    [v72 setObject:v71 forKey:v20];

    if ([(HAPAccessoryServerBrowserBTLE *)v24 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      v73 = [(HAPAccessoryServerBrowserBTLE *)v24 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __251__HAPAccessoryServerBrowserBTLE__createHAPAccessoryAndNotifyDelegateWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_connectionIdleTime_format_setupHash_encryptedPayload_whbStableIdentifier___block_invoke;
      block[3] = &unk_2786D3D20;
      v115 = v39;
      v116 = v24;
      v117 = v32;
      v118 = v109;
      v120 = v122;
      v121 = v106;
      v119 = v113;
      dispatch_async(v73, block);

      v21 = v109;
    }

LABEL_58:
    v49 = v113;
    goto LABEL_62;
  }

  v74 = objc_autoreleasePoolPush();
  v75 = v24;
  v76 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v77 = HMFGetLogIdentifier();
    *buf = 138543618;
    v124 = v77;
    v125 = 2114;
    v126 = v20;
    _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to create a HAPAccessoryServerBTLE instance for discovered peripheral %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v74);
  v32 = 0;
  v49 = v113;
  v21 = v109;
LABEL_62:

  v78 = *MEMORY[0x277D85DE8];
}

void __251__HAPAccessoryServerBrowserBTLE__createHAPAccessoryAndNotifyDelegateWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_connectionIdleTime_format_setupHash_encryptedPayload_whbStableIdentifier___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_4;
  }

  v2 = [*(a1 + 40) delegate];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = [v5 firstObject];
  v7 = [v6 stateNumber];
  [v2 accessoryServerBrowser:v4 accessoryServer:v3 didUpdateValuesForCharacteristics:v5 stateNumber:v7 broadcast:1];

  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) firstObject];
  v11 = [v10 stateNumber];
  [v9 updateStateForIdentifier:v8 stateNumber:v11];

  if (!*(a1 + 32) || *(a1 + 72) == 1)
  {
LABEL_4:
    v12 = [*(a1 + 40) delegate];
    [v12 accessoryServerBrowser:*(a1 + 40) didFindAccessoryServer:*(a1 + 48) stateChanged:*(a1 + 73) stateNumber:*(a1 + 64)];
  }
}

- (id)hapCharacteristicsForEncryptedPayload:(id)a3 identifier:(id)a4 shouldConnect:(BOOL *)a5
{
  v154 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(HAPCharacteristic *)v9 cStringUsingEncoding:4];
  [(HAPCharacteristic *)v9 length];
  TextToHardwareAddress();
  v10 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:v9];
  v11 = v10;
  if (!v10)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v143 = v41;
      v144 = 2114;
      v145 = v9;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] No cached accessory for: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_76;
  }

  v129 = self;
  v124 = a5;
  v12 = [v10 peripheralInfo];
  v13 = [v12 stateNumber];
  v14 = [v13 unsignedShortValue] + 1;

  v139 = v14;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v139 length:2];
  v127 = v11;
  v16 = [v11 peripheralInfo];
  v17 = [v16 broadcastKey];

  v18 = [v8 subdataWithRange:{objc_msgSend(v8, "length") - 4, 4}];
  v128 = v8;
  v19 = [v8 subdataWithRange:{0, objc_msgSend(v8, "length") - 4}];
  v20 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{-[HAPCharacteristic length](v19, "length")}];
  v134 = v18;
  v131 = v9;
  if (!v17)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v129;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543618;
      v143 = v45;
      v144 = 2114;
      v145 = v9;
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] No keys to decrypt for accessory: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    if (v124)
    {
      v36 = 0;
      v37 = 0;
      *v124 = 1;
LABEL_39:
      v68 = v134;
      v8 = v128;
      goto LABEL_75;
    }

LABEL_38:
    v36 = 0;
    v37 = 0;
    goto LABEL_39;
  }

  v132 = v17;
  [v17 bytes];
  [v15 bytes];
  [(HAPCharacteristic *)v19 bytes];
  [(HAPCharacteristic *)v19 length];
  v133 = v20;
  [v20 mutableBytes];
  [v18 bytes];
  v119 = [v18 length];
  v21 = chacha20_poly1305_decrypt_all_64x64_ex();
  if (!v21)
  {
    goto LABEL_30;
  }

  v22 = v21;
  v23 = -1;
  v24 = 6;
  while (1)
  {
    v138 = v23 + v139;
    if (v23)
    {
      break;
    }

LABEL_8:
    ++v23;
    if (!--v24)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v129;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138544130;
        v143 = v30;
        v144 = 2048;
        v145 = v22;
        v146 = 1024;
        *v147 = v139;
        *&v147[4] = 2114;
        *&v147[6] = v131;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] Failed to decrypt status: %ld, expected s#: %d for accessory: %{public}@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v27);
      v31 = objc_autoreleasePoolPush();
      v32 = v28;
      v33 = HMFGetOSLogHandle();
      v8 = v128;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [MEMORY[0x277CBEA90] dataWithBytes:v140 length:6];
        *buf = 138545154;
        v143 = v34;
        v144 = 2112;
        v145 = v19;
        v146 = 1024;
        *v147 = v22;
        *&v147[4] = 2112;
        *&v147[6] = v17;
        *&v147[14] = 2112;
        *&v147[16] = v19;
        v148 = 2112;
        v149 = v15;
        v150 = 2112;
        v151 = v35;
        v152 = 2112;
        v153 = v134;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv] Failed to decrypt: %@, status: %d, key: %@, enc data: %@, nonce: %@, aad: %@ authTag: %@", buf, 0x4Eu);

        v8 = v128;
      }

      objc_autoreleasePoolPop(v31);
      [(HAPAccessoryServerBrowserBTLE *)v32 updateBroadcastKeyForIdentifier:v131 key:0 keyUpdatedStateNumber:0 keyUpdatedTime:0.0];
      v36 = 0;
      v37 = 0;
      if (v124)
      {
        *v124 = 1;
      }

      v68 = v134;
      goto LABEL_75;
    }
  }

  v25 = [MEMORY[0x277CBEA90] dataWithBytes:&v138 length:{8, v119}];

  [v17 bytes];
  v135 = v25;
  [v25 bytes];
  [(HAPCharacteristic *)v19 bytes];
  [(HAPCharacteristic *)v19 length];
  [v20 mutableBytes];
  [v134 bytes];
  v119 = [v134 length];
  v26 = chacha20_poly1305_decrypt_all_64x64_ex();
  if (v26)
  {
    v22 = v26;
    v17 = v132;
    v20 = v133;
    v15 = v25;
    goto LABEL_8;
  }

  v46 = objc_autoreleasePoolPush();
  v47 = v129;
  v48 = HMFGetOSLogHandle();
  v9 = v131;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543874;
    v143 = v49;
    v144 = 2048;
    v145 = v138;
    v146 = 2114;
    *v147 = v131;
    _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv] Decrypted with State Number: %llu for accessory: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v46);
  v17 = v132;
  v20 = v133;
  if (v124 && v23 >= 1)
  {
    *v124 = 1;
  }

  v15 = v135;
LABEL_30:
  v50 = objc_autoreleasePoolPush();
  v51 = v129;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    *buf = 138543874;
    v143 = v53;
    v144 = 2114;
    v145 = v9;
    v146 = 2112;
    *v147 = v20;
    _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Decrypted data from %{public}@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v50);
  v54 = [v20 bytes];
  if ([v20 length] < 5)
  {
    goto LABEL_38;
  }

  v55 = [MEMORY[0x277CCABB0] numberWithInteger:*v54];
  v125 = v54;
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v54[1]];
  v57 = objc_autoreleasePoolPush();
  v58 = v51;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v61 = v60 = v56;
    *buf = 138544130;
    v143 = v61;
    v144 = 2114;
    v145 = v55;
    v146 = 2114;
    *v147 = v60;
    *&v147[8] = 2114;
    *&v147[10] = v131;
    _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: State Num: %{public}@ Instance Id: %{public}@ for accessory: %{public}@", buf, 0x2Au);

    v56 = v60;
  }

  objc_autoreleasePoolPop(v57);
  v62 = [(HAPAccessoryServerBrowserBTLE *)v58 _cachedCharacteristicForInstanceID:v56 identifier:v131];
  v136 = v62;
  if (v62)
  {
    v63 = v62;
    v64 = [(HAPCharacteristic *)v62 characteristicMetadata];
    v65 = [v64 format];
    v66 = HAPCharacteristicFormatFromString(v65);
    if ((v66 - 1) > 9)
    {
      v67 = 0;
    }

    else
    {
      v67 = qword_22AC9DE58[v66 - 1];
    }

    v130 = v55;

    v74 = objc_autoreleasePoolPush();
    v75 = v58;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v78 = v77 = v56;
      *buf = 138543618;
      v143 = v78;
      v144 = 2048;
      v145 = v67;
      _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: Value Length %lu", buf, 0x16u);

      v56 = v77;
    }

    objc_autoreleasePoolPop(v74);
    v79 = [v133 length];
    if (!v67 || (v80 = &v67->super.super.isa + 4, v79 < &v67->super.super.isa + 4))
    {
      v90 = objc_autoreleasePoolPush();
      v91 = v75;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v94 = v93 = v56;
        *buf = 138543874;
        v143 = v94;
        v144 = 2048;
        v145 = v67;
        v146 = 2114;
        *v147 = v131;
        _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] Failed to extract value with length: %lu for accessory: %{public}@", buf, 0x20u);

        v56 = v93;
      }

      objc_autoreleasePoolPop(v90);
      v36 = 0;
      v37 = 0;
      v8 = v128;
      v55 = v130;
      v20 = v133;
      v68 = v134;
      goto LABEL_73;
    }

    v123 = v56;
    v81 = [MEMORY[0x277CBEA90] dataWithBytes:v125 + 4 length:v67];
    v82 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v83 = [(HAPCharacteristic *)v63 characteristicMetadata];
    v84 = [v83 format];
    v137 = 0;
    v122 = v81;
    v85 = [v82 reverseTransformedValue:v81 format:HAPCharacteristicFormatFromString(v84) error:&v137];
    v121 = v137;

    v86 = objc_autoreleasePoolPush();
    v87 = v75;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v89 = HMFGetLogIdentifier();
      *buf = 138544130;
      v143 = v89;
      v144 = 2112;
      v145 = v122;
      v146 = 2112;
      *v147 = v85;
      *&v147[8] = 2114;
      *&v147[10] = v131;
      _os_log_impl(&dword_22AADC000, v88, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: Value Data: %@, Value: %@ for accessory: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v86);
    v120 = v87;
    if (([(HAPCharacteristic *)v63 characteristicProperties]& 0x100) == 0)
    {
      v126 = 0;
      goto LABEL_65;
    }

    if ([v133 length] <= v80)
    {
      v95 = v87;
      v96 = v85;
      v97 = objc_autoreleasePoolPush();
      v98 = v95;
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = HMFGetLogIdentifier();
        *buf = 138543362;
        v143 = v100;
        v101 = "%{public}@[Enc Adv]: Notification context is not included in payload";
        goto LABEL_63;
      }
    }

    else
    {
      if (*(v125 + v80) == 1)
      {
        v126 = _notificationContextTLVDataFromPayload(v125, [v133 length], &v67->super.super.isa + 5, v87);
        goto LABEL_65;
      }

      v102 = v87;
      v96 = v85;
      v97 = objc_autoreleasePoolPush();
      v98 = v102;
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = HMFGetLogIdentifier();
        *buf = 138543362;
        v143 = v100;
        v101 = "%{public}@[Enc Adv]: Notification context is not present in payload";
LABEL_63:
        _os_log_impl(&dword_22AADC000, v99, OS_LOG_TYPE_DEBUG, v101, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v97);
    v126 = 0;
    v85 = v96;
LABEL_65:
    v103 = [HAPCharacteristic alloc];
    v104 = [(HAPCharacteristic *)v63 characteristicUUID];
    v105 = [v104 UUIDString];
    v106 = [(HAPCharacteristic *)v63 characteristicProperties];
    v107 = [(HAPCharacteristic *)v63 characteristicMetadata];
    LOBYTE(v119) = 1;
    v108 = v85;
    v36 = [(HAPCharacteristic *)v103 initWithType:v105 instanceID:v123 value:v85 stateNumber:v130 properties:v106 eventNotificationsEnabled:0 implicitWriteWithResponse:v119 metadata:v107];

    if (v36)
    {
      [(HAPCharacteristic *)v36 setNotificationContext:v126];
      v109 = objc_autoreleasePoolPush();
      v110 = v120;
      v111 = HMFGetOSLogHandle();
      v17 = v132;
      v20 = v133;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543874;
        v143 = v112;
        v144 = 2112;
        v145 = v36;
        v146 = 2114;
        *v147 = v131;
        _os_log_impl(&dword_22AADC000, v111, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Returning characteristic: %@ for accessory: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v109);
      v141 = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
    }

    else
    {
      v113 = objc_autoreleasePoolPush();
      v114 = v120;
      v115 = HMFGetOSLogHandle();
      v17 = v132;
      v20 = v133;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
      {
        v116 = HMFGetLogIdentifier();
        *buf = 138543874;
        v143 = v116;
        v144 = 2112;
        v145 = v136;
        v146 = 2114;
        *v147 = v131;
        _os_log_impl(&dword_22AADC000, v115, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Failed to create HAPCharacteristic from: %@ for accessory: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v113);
      v37 = 0;
    }

    v56 = v123;

    v68 = v134;
    v8 = v128;
    v55 = v130;
    if (v36)
    {
LABEL_73:

      goto LABEL_75;
    }
  }

  else
  {
    v69 = objc_autoreleasePoolPush();
    v70 = v58;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v73 = v72 = v56;
      *buf = 138543874;
      v143 = v73;
      v144 = 2114;
      v145 = v131;
      v146 = 2114;
      *v147 = v72;
      _os_log_impl(&dword_22AADC000, v71, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv] No Cached signature for accessory: %{public}@ instanceid: %{public}@", buf, 0x20u);

      v56 = v72;
    }

    objc_autoreleasePoolPop(v69);
    v68 = v134;
    v8 = v128;
  }

  v36 = 0;
  v37 = 0;
LABEL_75:

  v9 = v131;
  v11 = v127;
LABEL_76:

  v117 = *MEMORY[0x277D85DE8];

  return v37;
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  if (v4)
  {
    v5 = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    if (v5)
    {
      v6 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
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

- (id)_cachedCharacteristicForInstanceID:(id)a3 identifier:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:a4];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 cachedServices];
  v25 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v9 = *v31;
    v23 = *v31;
    v24 = v7;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 cachedCharacteristics];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * j);
              v18 = [v17 characteristicInstanceId];
              v19 = [v18 isEqual:v6];

              if (v19)
              {
                v20 = v17;

                v7 = v24;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v23;
      }

      v20 = 0;
      v7 = v24;
      v25 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)retrieveCBPeripheralWithUUID:(id)a3 blePeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 whbStableIdentifier];
  if (v8)
  {
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:v6 stableIdentifier:v8 routeMode:0];
  }

  else
  {
    v10 = [v7 identifier];
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:v6 stableIdentifier:v10 routeMode:0];
  }

  return v9;
}

- (void)accessoryServerBrowserBTLE:(id)a3 didDiscoverHAPPeripheral:(id)a4
{
  v16 = a4;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v16)
  {
    v15 = [v16 name];
    v6 = [v16 identifier];
    v7 = [v16 advertisementFormat];
    v8 = [v16 statusFlags];
    v9 = [v16 stateNumber];
    v10 = [v16 category];
    v11 = [v16 configNumber];
    v12 = [v16 setupHash];
    v13 = [v16 encryptedPayload];
    v14 = [v16 whbStableIdentifier];
    [(HAPAccessoryServerBrowserBTLE *)self _didDiscoverPeripheral:v16 accessoryName:v15 pairingIdentifier:v6 format:v7 statusFlags:v8 stateNumber:v9 category:v10 configNumber:v11 setupHash:v12 encryptedPayload:v13 whbStableIdentifier:v14];
  }
}

- (id)_bleAccessoryServerTupleForIdentifier:(id)a3
{
  v4 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForAccessoryServerIdentifier:a3];
  if (v4)
  {
    v5 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_blePeripheralForAccessoryServerIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
        v13 = [v12 objectForKey:v11];
        v14 = [v13 accessoryServer];

        v15 = [v14 identifier];
        LOBYTE(v13) = [v15 isEqual:v4];

        if (v13)
        {
          v16 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_blePeripheralForCBPeripheral:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];

  if (!v5)
  {
    v26 = 0;
    goto LABEL_27;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  v8 = [v7 keyEnumerator];
  v9 = [v8 allObjects];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
  v39 = v6;
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v41 = *v47;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v47 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v46 + 1) + 8 * i);
      v14 = self;
      v15 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
      v16 = [v15 objectForKey:v13];
      v17 = [v16 accessoryServer];

      if (v17)
      {
        v18 = [v13 cbPeripheral];
        if ([v18 isEqual:v4])
        {
        }

        else
        {
          v19 = [v13 peripheralUUIDs];
          [v4 identifier];
          v21 = v20 = v4;
          v22 = [v19 containsObject:v21];

          v4 = v20;
          v6 = v39;

          if (!v22)
          {
            goto LABEL_12;
          }
        }

        [v6 addObject:v13];
      }

LABEL_12:

      self = v14;
    }

    v11 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v11);
LABEL_14:

  v23 = [v6 count];
  v24 = [v6 firstObject];
  v25 = v6;
  v26 = v24;
  if (v23 >= 2)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * j);
          [v32 lastSeen];
          v34 = v33;
          [v26 lastSeen];
          if (v34 > v35)
          {
            v36 = v32;

            v26 = v36;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_cbPeripheralForPeripheralUUID:(id)a3 stableIdentifier:(id)a4 routeMode:(unsigned __int8 *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v6 = a3;
    v7 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

    v9 = [v7 retrievePeripheralsWithIdentifiers:v8];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_cbPeripheralForHAPBLEPeripheral:(id)a3 routeMode:(unsigned __int8 *)a4
{
  v6 = a3;
  v7 = [v6 peripheralUUIDs];
  v8 = [v7 lastObject];
  v9 = [v6 whbStableIdentifier];
  if (v9)
  {
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:v8 stableIdentifier:v9 routeMode:a4];
  }

  else
  {
    v11 = [v6 identifier];
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:v8 stableIdentifier:v11 routeMode:a4];
  }

  return v10;
}

- (void)_monitorDisconnectionOfHAPPeripheral:(id)a3 peripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
    v10 = [v9 objectForKey:v7];

    if (!v10)
    {
      v11 = [(HAPAccessoryServerBrowser *)self workQueue];
      v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v11);

      v13 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
      [v13 setObject:v12 forKey:v7];

      objc_initWeak(&location, self);
      v14 = dispatch_time(0, 1000000000 * [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionTimeout]);
      dispatch_source_set_timer(v12, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __81__HAPAccessoryServerBrowserBTLE__monitorDisconnectionOfHAPPeripheral_peripheral___block_invoke;
      v15[3] = &unk_2786D6F50;
      objc_copyWeak(&v18, &location);
      v16 = v7;
      v17 = v6;
      dispatch_source_set_event_handler(v12, v15);
      dispatch_resume(v12);

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __81__HAPAccessoryServerBrowserBTLE__monitorDisconnectionOfHAPPeripheral_peripheral___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained peripheralDisconnectionMonitorMap];
  v4 = [v3 objectForKey:*(a1 + 32)];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:8];
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from peripheral: %@ with error: %{public}@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [v7 disconnectedHAPPeripheral:*(a1 + 40) error:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitorDisconnectionOfCBPeripheral:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
    v6 = [v5 objectForKey:v8];

    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
      [v7 removeObjectForKey:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_disconnectFromHAPBLEPeripheral:(id)a3 cbPeripheral:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v6 | v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 shortDescription];
      v26 = 138543874;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from Peripheral: %{public}@ (%@)", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if (v6)
    {
      [(HAPAccessoryServerBrowserBTLE *)v10 _removeFromActiveConnections:v6];
    }

    v15 = [v7 state];
    v16 = objc_autoreleasePoolPush();
    v17 = v10;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection to peripheral: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HAPAccessoryServerBrowserBTLE *)v17 _monitorDisconnectionOfHAPPeripheral:v6 peripheral:v7];
      v21 = [(HAPAccessoryServerBrowserBTLE *)v17 centralManager];
      [v21 cancelPeripheralConnection:v7];
    }

    else
    {
      if (v19)
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Peripheral: %@ is already disconnected", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v24 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:23];
      [(HAPAccessoryServerBrowserBTLE *)v17 disconnectedHAPPeripheral:v6 error:v24];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid blePeripheral / cbPeripheral", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedHAPPeripheral:(id)a3 error:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 cbPeripheral];
  if (v6)
  {
    [(HAPAccessoryServerBrowserBTLE *)self _removeFromActiveConnections:v6];
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _recentlySeenPairedPeripheralTupleWithPeripheral:v6];
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _discoveredAccessoryServerTupleForBLEPeripheral:v6 shouldMerge:0];
    v11 = [v10 accessoryServer];
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  [(HAPAccessoryServerBrowserBTLE *)self _stopMonitorDisconnectionOfCBPeripheral:v8];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v6 shortDescription];
    *buf = 138544130;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2112;
    v35 = v8;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Disconnected from BLE peripheral: %{public}@, CB Peripheral: %@ with error %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if (v7 && v9)
  {
    v17 = [(HAPAccessoryServerBrowserBTLE *)v13 hapWiProxBLEBrowser];
    v18 = [v6 identifier];
    [v17 resetLastSeenForTrackedAccessories:v18];

    v19 = [(HAPAccessoryServerBrowserBTLE *)v13 delegate];
    v20 = [v6 identifier];
    [v19 accessoryServerBrowser:v13 didChangeReachability:0 forAccessoryServerWithIdentifier:v20];
  }

  [v9 setNotifyingCharacteristicUpdated:0];
  if (v11)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke;
    v27[3] = &unk_2786D3C08;
    v27[4] = v13;
    v28 = v11;
    v29 = v7;
    [v28 handleDisconnectionWithError:v29 completionHandler:v27];
    [v6 disconnectedFromCBPeripheral:v8 shouldRemove:0];
    [(HAPAccessoryServerBrowserBTLE *)v13 _connectPendingConnections];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v13;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory for disconnected peripheral: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (v6)
    {
      v25 = [v6 identifier];
      [(HAPAccessoryServerBrowserBTLE *)v22 _removeDiscoveredPeripheralsWithIdentifier:v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke_2;
    block[3] = &unk_2786D7078;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    dispatch_async(v3, block);
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v9 = a4;
  v7 = a5;
  if (v9)
  {
    [(HAPAccessoryServerBrowserBTLE *)self _stopMonitorDisconnectionOfCBPeripheral:v9];
  }

  v8 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:v9];
  [(HAPAccessoryServerBrowserBTLE *)self disconnectedHAPPeripheral:v8 error:v7];
}

- (void)failedToConnectHAPPeripheral:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && (-[HAPAccessoryServerBrowserBTLE _removeFromActiveConnections:](self, "_removeFromActiveConnections:", v6), -[HAPAccessoryServerBrowserBTLE _discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:](self, "_discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:", v6, 0), v8 = objc_claimAutoreleasedReturnValue(), [v8 accessoryServer], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v13;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to connect to accessory %{public}@ with error %{public}@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v6 cbPeripheral];
    [v9 handleConnectionWithPeripheral:v14 withError:v7];

    [(HAPAccessoryServerBrowserBTLE *)v11 _notifyDelegatesOfRemovedAccessoryServer:v9 error:v7];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 shortDescription];
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@unexpected disconnection without server from peripheral: %{public}@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = [v6 cbPeripheral];
  [v6 connectedToCBPeripheral:v20 error:v7];

  [(HAPAccessoryServerBrowserBTLE *)self _connectPendingConnections];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:v9];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 shortDescription];
    v18 = 138544130;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2112;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Did fail to connect BLE peripheral: %{public}@ with CBPeripheral: %@ with error %{public}@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  [(HAPAccessoryServerBrowserBTLE *)v13 failedToConnectHAPPeripheral:v11 error:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)connectedHAPPeripheral:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:v4];
  v7 = v6;
  if (v6 && ([v6 connectedToCBPeripheral:v4 error:0], -[HAPAccessoryServerBrowserBTLE _discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:](self, "_discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "accessoryServer"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v7 shortDescription];
      v23 = 138543874;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully connected to BLE Peripheral: %{public}@ with CB Peripheral: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CBEAA8] date];
    [v9 setConnectionStartTime:v15];

    v16 = [(HAPAccessoryServerBrowserBTLE *)v11 peripheralsPendingConnection];
    v17 = [v16 count];

    if (v17)
    {
      [v9 updateConnectionIdleTime:1];
    }

    [v9 handleConnectionWithPeripheral:v4 withError:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = v7;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@unexpected connection complete without server: %{public}@ for CB peripheral: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [(HAPAccessoryServerBrowserBTLE *)v19 _disconnectFromHAPBLEPeripheral:v7 cbPeripheral:v4];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v8 = a4;
  v9 = a5;
  if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowserBTLE_didDiscoverAccessoryWithAdvertisementData_])
  {
    v10 = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HAPAccessoryServerBrowserBTLE_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke;
    block[3] = &unk_2786D7050;
    block[4] = self;
    v34 = v9;
    dispatch_async(v10, block);
  }

  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = self;
  v25 = v9;
  v11 = [(HAPAccessoryServerBrowserBTLE *)self _parseAdvertisementData:v9 forPeripheral:v8 name:&v32 pairingUsername:&v31 statusFlags:&v30 stateNumber:&v29 category:&v28 configNumber:&v27 setupHash:&v26];
  v12 = v32;
  v13 = v31;
  v14 = v30;
  v15 = v29;
  v16 = v28;
  v17 = v27;
  v22 = v26;
  v18 = [HAPBLEPeripheral alloc];
  v23 = v8;
  v19 = [v8 identifier];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v21 = [(HAPBLEPeripheral *)v18 initWithName:v12 peripheralUUID:v19 identifier:v13 hapVersion:v20 hkType:0 advInterval:0 statusFlags:v14 category:v16 stateNumber:v15 configNumber:v17 setupHash:0 encryptedPayload:0 whbStableIdentifier:0 advDeviceAddress:0];

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
  {
    [(HAPBLEPeripheral *)v21 setCbPeripheral:v23];
  }

  [(HAPAccessoryServerBrowserBTLE *)v24 _didDiscoverPeripheral:v21 accessoryName:v12 pairingIdentifier:v13 format:v11 statusFlags:v14 stateNumber:v15 category:v16 configNumber:v17 setupHash:v22 encryptedPayload:0 whbStableIdentifier:0];
}

void __93__HAPAccessoryServerBrowserBTLE_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowserBTLE:*(a1 + 32) didDiscoverAccessoryWithAdvertisementData:*(a1 + 40)];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v4 = [v54 state];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    if (v4 > 5)
    {
      v9 = @"Unenumerated State?";
    }

    else
    {
      v9 = off_2786D3D40[v4];
    }

    v10 = v9;
    *buf = 138543874;
    v75 = v8;
    v76 = 2048;
    v77 = v4;
    v78 = 2112;
    v79 = v10;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Central manager changed state: %ld (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 == 5)
      {
        [(HAPAccessoryServerBrowserBTLE *)v6 _callPowerOnCompletionsWithError:0];
        if ([(HAPAccessoryServerBrowserBTLE *)v6 isPerformingGeneralScan])
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v6;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v75 = v21;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Central manager was powered on and there is an outstanding accessory server discovery request so start actively scanning", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          [(HAPAccessoryServerBrowserBTLE *)v19 _startBrowsingForLegacyHAPBTLE100Accessories];
        }

        v22 = [(HAPAccessoryServerBrowserBTLE *)v6 reachabilityCompletion];
        v15 = v22;
        if (v22)
        {
          (*(v22 + 16))(v22, 1, 0);
        }

        goto LABEL_46;
      }

      goto LABEL_47;
    }

LABEL_22:
    v56 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:57 reason:@"Bluetooth was turned off or reset" underlyingError:0];
    [(HAPAccessoryServerBrowserBTLE *)v6 _callPowerOnCompletionsWithError:v56];
    v23 = [(HAPAccessoryServerBrowserBTLE *)v6 reachabilityCompletion];
    v24 = v23;
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v56);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25 = [(HAPAccessoryServerBrowser *)v6 pairedAccessoryIdentifiers];
    v26 = [v25 copy];

    v27 = [v26 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v27)
    {
      v28 = *v69;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v69 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v68 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          v32 = v6;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543362;
            v75 = v34;
            _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Reporting reachability changed to NO for all paired BLE accessories on Bluetooth Power OFF", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
          v35 = [(HAPAccessoryServerBrowserBTLE *)v32 delegate];
          [v35 accessoryServerBrowser:v32 didChangeReachability:0 forAccessoryServerWithIdentifier:v30];
        }

        v27 = [v26 countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v27);
    }

    v36 = MEMORY[0x277CBEA60];
    v37 = [(HAPAccessoryServerBrowserBTLE *)v6 discoveredPeripheralsWithAccessories];
    v38 = [v37 keyEnumerator];
    v39 = [v38 allObjects];
    v40 = [v36 arrayWithArray:v39];

    objc_initWeak(buf, v6);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke;
    v66[3] = &unk_2786D3CD0;
    objc_copyWeak(&v67, buf);
    v41 = MEMORY[0x231885210](v66);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v40;
    v42 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v42)
    {
      v43 = *v63;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v63 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v62 + 1) + 8 * j);
          v46 = [(HAPAccessoryServerBrowserBTLE *)v6 _discoveredAccessoryServerTupleForBLEPeripheral:v45 shouldMerge:0];
          v47 = [v46 accessoryServer];

          if (v47)
          {
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_2;
            v57[3] = &unk_2786D3CF8;
            v57[4] = v6;
            v48 = v47;
            v58 = v48;
            v49 = v56;
            v59 = v49;
            v50 = v41;
            v60 = v45;
            v61 = v50;
            [v48 handleDisconnectionWithError:v49 completionHandler:v57];
          }

          else
          {
            v51 = MEMORY[0x231885210](v41);
            v52 = v51;
            if (v51)
            {
              (*(v51 + 16))(v51, v45);
            }
          }
        }

        v42 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v42);
    }

    objc_destroyWeak(&v67);
    objc_destroyWeak(buf);

    v15 = v56;
    goto LABEL_46;
  }

  if (v4 == 1)
  {
    goto LABEL_22;
  }

  if (v4 == 2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@BTLE is unsupported on this system", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:48 reason:@"Failed to power on Bluetooth because Bluetooth LE is unsupported on this system." underlyingError:0];
    [(HAPAccessoryServerBrowserBTLE *)v12 _callPowerOnCompletionsWithError:v15];
    v16 = [(HAPAccessoryServerBrowserBTLE *)v12 reachabilityCompletion];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16, 0, v15);
    }

LABEL_46:
  }

LABEL_47:

  v53 = *MEMORY[0x277D85DE8];
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeFromActiveConnections:v3];
  [WeakRetained _removeFromPendingConnections:v3];
  v4 = [WeakRetained discoveredPeripheralsWithAccessories];
  [v4 removeObjectForKey:v3];
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_3;
  block[3] = &unk_2786D5C48;
  v6 = *(a1 + 32);
  v3 = *(&v6 + 1);
  v4 = *(a1 + 48);
  v10 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegatesOfRemovedAccessoryServer:*(a1 + 40) error:*(a1 + 48)];
  v2 = MEMORY[0x231885210](*(a1 + 64));
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 56));
    v2 = v3;
  }
}

- (void)_didDiscoverPeripheral:(id)a3 accessoryName:(id)a4 pairingIdentifier:(id)a5 format:(unint64_t)a6 statusFlags:(id)a7 stateNumber:(id)a8 category:(id)a9 configNumber:(id)a10 setupHash:(id)a11 encryptedPayload:(id)a12 whbStableIdentifier:(id)a13
{
  v143 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v110 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = v20;
  v109 = a10;
  v108 = a11;
  v111 = a12;
  v107 = a13;
  v24 = [v18 identifier];
  v25 = self;
  v26 = self;
  v27 = v21;
  v28 = [(HAPAccessoryServerBrowserBTLE *)v26 _blePeripheralForAccessoryServerIdentifier:v24];

  if (a6)
  {
    v29 = a6;
    v30 = [v18 cbPeripheral];
    if ([v30 state])
    {

      goto LABEL_37;
    }

    [v28 cbPeripheral];
    v31 = v102 = v22;
    v32 = [v31 state];

    v22 = v102;
    if (v32)
    {
      goto LABEL_37;
    }

    v120 = 0;
    v33 = [(HAPAccessoryServerBrowserBTLE *)v25 _discoveredAccessoryServerTupleForBLEPeripheral:v18 shouldMerge:1];
    if (!v33)
    {
      v112 = 0;
      if (v111 || [(HAPAccessoryServerBrowserBTLE *)v25 _shouldCreateHAPAccessoryServerWithIdentifier:v110 statusFlags:v23 stateNumber:v27 category:v102 configNumber:v109 name:v19 forPeripheral:v18 advertisementFormat:a6 setupHash:v108 stateChanged:&v112 + 1 connectReason:&v112])
      {
        v92 = v19;
        v46 = objc_autoreleasePoolPush();
        v47 = v25;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v90 = HMFGetLogIdentifier();
          v97 = [v18 name];
          v49 = HMFBooleanToString();
          v50 = HMFBooleanToString();
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v112];
          *buf = 138545922;
          v122 = v90;
          v123 = 2112;
          v124 = v97;
          v125 = 2114;
          v126 = v110;
          v127 = 2114;
          v128 = v27;
          v129 = 2114;
          v130 = v102;
          v131 = 2114;
          v132 = v23;
          v133 = 2048;
          v134 = a6;
          v135 = 2114;
          v136 = v49;
          v137 = 2114;
          v138 = v50;
          v139 = 2114;
          v140 = v109;
          v141 = 2114;
          v142 = v51;
          v52 = v51;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory '%@/%{public}@/%{public}@' C: '%{public}@' SF: '%{public}@' V: '%tu' ENC: '%{public}@' ST: '%{public}@' C#: '%{public}@', CR: '%{public}@'", buf, 0x70u);

          v29 = a6;
        }

        objc_autoreleasePoolPop(v46);
        v53 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
        v22 = v102;
        [v53 reportIncomingAdvertisementChange:v110 accessoryCategory:v102];

        LOBYTE(v89) = HIBYTE(v112);
        LOBYTE(v88) = v112;
        v19 = v92;
        [(HAPAccessoryServerBrowserBTLE *)v47 _createHAPAccessoryAndNotifyDelegateWithPeripheral:v18 name:v92 pairingUsername:v110 statusFlags:v23 stateNumber:v27 stateChanged:v88 connectReason:v109 configNumber:v102 category:v89 connectionIdleTime:v29 format:v108 setupHash:v111 encryptedPayload:v107 whbStableIdentifier:?];
        v33 = 0;
      }

      goto LABEL_36;
    }

    v96 = v23;
    v34 = [(HAPAccessoryServerBrowserBTLE *)v25 recentlySeenPairedPeripherals];
    v35 = [v18 identifier];
    v36 = [v34 objectForKey:v35];
    [v36 updateWithPeripheral:v18];

    [(HAPAccessoryServerBrowserBTLE *)v25 _reportReachabilityForAccessoryWithIdentifier:v110];
    v37 = [(HAPAccessoryServerBrowser *)v25 isPaired:v110];
    if (v111 && v37 && ([v18 isCached] & 1) == 0)
    {
      v38 = [(HAPAccessoryServerBrowserBTLE *)v25 hapCharacteristicsForEncryptedPayload:v111 identifier:v110 shouldConnect:&v120];
      if (!v38)
      {
        v23 = v96;
        v22 = v102;
        if (v120 == 1 && [(HAPAccessoryServerBrowserBTLE *)v25 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          v87 = [(HAPAccessoryServerBrowserBTLE *)v25 delegateQueue];
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke;
          v116[3] = &unk_2786D7078;
          v117 = v33;
          v118 = v25;
          v119 = v27;
          dispatch_async(v87, v116);
        }

        goto LABEL_36;
      }

      v91 = v38;
      v39 = [(HAPAccessoryServerBrowserBTLE *)v25 delegate];
      v40 = [v33 accessoryServer];
      [v91 firstObject];
      v104 = v98 = v33;
      v41 = [v104 stateNumber];
      [v39 accessoryServerBrowser:v25 accessoryServer:v40 didUpdateValuesForCharacteristics:v91 stateNumber:v41 broadcast:1];

      v33 = v98;
      v42 = [v91 firstObject];
      v43 = [v42 stateNumber];
      [(HAPAccessoryServerBrowserBTLE *)v25 updateStateForIdentifier:v110 stateNumber:v43];
    }

    v44 = [v33 accessoryServer];
    v45 = [v44 identifier];
    if ([v45 isEqualToString:v110])
    {

      v22 = v102;
    }

    else
    {
      v54 = [v33 accessoryServer];
      [v54 identifier];
      v55 = v99 = v33;
      v105 = [(HAPAccessoryServerBrowser *)v25 isPaired:v55];

      v33 = v99;
      v22 = v102;
      if (!v105)
      {
        v95 = v19;
        v78 = objc_autoreleasePoolPush();
        v79 = v25;
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v82 = v81 = v78;
          v83 = [v99 accessoryServer];
          v84 = [v83 identifier];
          *buf = 138543874;
          v122 = v82;
          v123 = 2114;
          v124 = v84;
          v125 = 2114;
          v126 = v110;
          _os_log_impl(&dword_22AADC000, v80, OS_LOG_TYPE_INFO, "%{public}@Unpaired Accessory updated its identifier from %{public}@ to %{public}@", buf, 0x20u);

          v33 = v99;
          v22 = v102;

          v78 = v81;
        }

        objc_autoreleasePoolPop(v78);
        v85 = [v33 accessoryServer];
        [(HAPAccessoryServerBrowserBTLE *)v79 _notifyDelegatesOfRemovedAccessoryServer:v85 error:0];

        v19 = v95;
        v23 = v96;
        goto LABEL_36;
      }
    }

    [v33 setLastSeen:CFAbsoluteTimeGetCurrent()];
    v106 = [v33 accessoryServer];
    if (v27)
    {
      v56 = [v33 accessoryServer];
      v57 = [v56 stateNumber];
      v58 = [v57 isEqualToNumber:v27];

      v22 = v102;
      if ((v58 & 1) == 0)
      {
        v59 = objc_autoreleasePoolPush();
        v60 = v25;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v62 = v93 = v59;
          v63 = [v106 shortDescription];
          [v18 shortDescription];
          v64 = v100 = v33;
          *buf = 138544130;
          v122 = v62;
          v123 = 2114;
          v124 = v63;
          v125 = 2114;
          v126 = v27;
          v127 = 2114;
          v128 = v64;
          _os_log_impl(&dword_22AADC000, v61, OS_LOG_TYPE_INFO, "%{public}@Discovered accessory: %{public}@ updated State Number to %{public}@ for %{public}@", buf, 0x2Au);

          v33 = v100;
          v22 = v102;

          v59 = v93;
        }

        objc_autoreleasePoolPop(v59);
        v65 = [v33 accessoryServer];
        [v65 setStateNumber:v27];

        if ([(HAPAccessoryServerBrowserBTLE *)v60 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          v66 = [(HAPAccessoryServerBrowserBTLE *)v60 delegateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke_164;
          block[3] = &unk_2786D7078;
          block[4] = v60;
          v114 = v106;
          v115 = v27;
          dispatch_async(v66, block);
        }
      }
    }

    if (v19)
    {
      v67 = [v19 length];
      v68 = [v106 name];
      v69 = [v68 length];

      v22 = v102;
      if (v67 > v69)
      {
        v94 = v19;
        v70 = objc_autoreleasePoolPush();
        v71 = v25;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v74 = v73 = v70;
          v75 = [v106 identifier];
          [v106 name];
          v76 = v101 = v33;
          *buf = 138544130;
          v122 = v74;
          v123 = 2114;
          v124 = v75;
          v125 = 2112;
          v126 = v76;
          v127 = 2112;
          v128 = v94;
          _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_INFO, "%{public}@Discovered accessory: %{public}@ updated name from %@ to %@", buf, 0x2Au);

          v33 = v101;
          v22 = v102;

          v70 = v73;
        }

        objc_autoreleasePoolPop(v70);
        v77 = [v33 accessoryServer];
        v19 = v94;
        [v77 setName:v94];
      }
    }

    v23 = v96;
    if (v96)
    {
      [v106 setHasPairings:{(objc_msgSend(v96, "unsignedCharValue") & 1) == 0}];
    }

LABEL_36:
  }

LABEL_37:

  v86 = *MEMORY[0x277D85DE8];
}

void __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) accessoryServer];
  v2 = [*(a1 + 40) delegate];
  [v2 accessoryServerBrowser:*(a1 + 40) didFindAccessoryServer:v3 stateChanged:1 stateNumber:*(a1 + 48)];
}

void __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke_164(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:1 stateNumber:*(a1 + 48)];
}

- (id)_discoveredAccessoryServerTupleForBLEPeripheral:(id)a3 shouldMerge:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  v8 = [v7 keyEnumerator];
  v9 = [v8 allObjects];

  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v6 isEqual:v14])
        {
          v16 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
          v15 = [v16 objectForKey:v14];

          if (v4)
          {
            [v14 mergeWithPeripheral:v6];
          }

          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_removeDiscoveredPeripheralsWithIdentifier:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  v6 = [v5 keyEnumerator];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [(HAPAccessoryServerBrowserBTLE *)self _discoveredAccessoryServerTupleForBLEPeripheral:v11 shouldMerge:0];
        v13 = [v12 accessoryServer];

        v14 = [v11 identifier];
        if ([v14 isEqualToString:v4])
        {
        }

        else
        {
          v15 = [v13 identifier];
          v16 = [v15 isEqualToString:v4];

          if (!v16)
          {
            goto LABEL_10;
          }
        }

        [v31 addObject:v11];
LABEL_10:
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = v31;
  v17 = [v32 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    obja = 138543618;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v32);
        }

        v21 = *(*(&v33 + 1) + 8 * j);
        v22 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
        [v22 removeObjectForKey:v21];

        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v21 shortDescription];
          *buf = obja;
          v42 = v26;
          v43 = 2114;
          v44 = v27;
          _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Browser removed discovered peripheral: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
      }

      v18 = [v32 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v18);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegatesOfRemovedAccessoryServer:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didRemoveAccessoryServer_error_])
    {
      v8 = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__HAPAccessoryServerBrowserBTLE__notifyDelegatesOfRemovedAccessoryServer_error___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(v8, block);
    }

    v9 = [v6 identifier];
    [(HAPAccessoryServerBrowserBTLE *)self _removeDiscoveredPeripheralsWithIdentifier:v9];
  }
}

void __80__HAPAccessoryServerBrowserBTLE__notifyDelegatesOfRemovedAccessoryServer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_performTimedScanForIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5
{
  v40 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v42 = a5;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v13 = HMFBooleanToString();
    *buf = 138543874;
    v49 = v11;
    v50 = 2114;
    v51 = v12;
    v52 = 2114;
    v53 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to perform reachability scan for %{public}@ accessories. Force Scan: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = v9;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v22;
          v50 = 2114;
          v51 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Performing reachability scan for %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [(HAPAccessoryServerBrowserBTLE *)v20 _blePeripheralForAccessoryServerIdentifier:v18];
        v24 = [v23 cbPeripheral];

        if ([v24 state] == 2)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v20;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v49 = v28;
            v50 = 2114;
            v51 = v18;
            _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping reachability scan as we are connected to %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
          v29 = MEMORY[0x231885210](v42);
          v30 = v29;
          if (v29)
          {
            (*(v29 + 16))(v29, v18, 1);
          }
        }

        else
        {
          v31 = [(HAPAccessoryServerBrowserBTLE *)v20 identifiersWithReachabilityScanTuples];
          v30 = [v31 objectForKey:v18];

          if (!v30)
          {
            v32 = [(HAPAccessoryServerBrowser *)v20 workQueue];
            v30 = [HAPBTLEReachabilityScanTuple reachabilityScanTupleWithCompletion:v42 workQueue:v32 identifier:v18];

            v33 = [(HAPAccessoryServerBrowserBTLE *)v20 identifiersWithReachabilityScanTuples];
            [v33 setObject:v30 forKey:v18];

            if (v40)
            {
              v34 = [(HAPAccessoryServerBrowserBTLE *)v20 hapWiProxBLEBrowser];
              [v34 resetLastSeenForTrackedAccessories:v18];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v15);
  }

  v35 = [(HAPAccessoryServerBrowserBTLE *)v9 identifiersWithReachabilityScanTuples];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [(HAPAccessoryServerBrowserBTLE *)v9 hapWiProxBLEBrowser];
    v38 = [(HAPAccessoryServerBrowserBTLE *)v9 identifiersWithReachabilityScanTuples];
    [v37 probeReachabilityForTrackedAccessoriesWithScanTuples:v38];

    [(HAPAccessoryServerBrowserBTLE *)v9 _updateTargetedScanTimer];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_removeIdentifiersForReachabilityScan
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  v26 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v26)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v5 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
        v6 = [v5 objectForKey:v4];

        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = [v6 identifier];
          *buf = 138543618;
          v35 = v10;
          v36 = 2114;
          v37 = v11;
          _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Reachability scan timed out for %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v12 = [(HAPAccessoryServerBrowserBTLE *)v8 _blePeripheralForAccessoryServerIdentifier:v4];
        v13 = [v12 cbPeripheral];

        v14 = [v13 state];
        if (v14 == 2)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v8;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v19 = [v6 identifier];
            *buf = 138543618;
            v35 = v18;
            v36 = 2114;
            v37 = v19;
            _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Marking accessory as we are connected to %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }

        v20 = [v6 completion];

        if (v20)
        {
          v21 = [v6 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__HAPAccessoryServerBrowserBTLE__removeIdentifiersForReachabilityScan__block_invoke;
          block[3] = &unk_2786D6768;
          v28 = v6;
          v29 = v14 == 2;
          dispatch_async(v21, block);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v26);
  }

  v22 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  [v22 removeAllObjects];

  v23 = *MEMORY[0x277D85DE8];
}

void __70__HAPAccessoryServerBrowserBTLE__removeIdentifiersForReachabilityScan__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, *(a1 + 40));
}

- (id)_recentlySeenPairedPeripheralTupleWithPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  v6 = [v5 objectEnumerator];
  v7 = [v6 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HAPAccessoryServerBrowserBTLE__recentlySeenPairedPeripheralTupleWithPeripheral___block_invoke;
  v11[3] = &unk_2786D3CA8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 hmf_objectPassingTest:v11];

  return v9;
}

uint64_t __82__HAPAccessoryServerBrowserBTLE__recentlySeenPairedPeripheralTupleWithPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_forgetPairedAccessoryWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  [v5 accessoryServerBrowser:self removeCacheForAccessoryWithIdentifier:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v9;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Request to forget accessory with Id %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HAPAccessoryServerBrowserBTLE *)v7 hapWiProxBLEBrowser];
  v21 = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v10 stopTrackingHAPBLEAccessoriesWithIdentifiers:v11];

  v12 = [(HAPAccessoryServerBrowserBTLE *)v7 recentlySeenPairedPeripherals];
  v13 = [v12 objectForKey:v4];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Forgetting paired peripheral %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [(HAPAccessoryServerBrowserBTLE *)v15 recentlySeenPairedPeripherals];
    [v18 removeObjectForKey:v4];
  }

  v20.receiver = v7;
  v20.super_class = HAPAccessoryServerBrowserBTLE;
  [(HAPAccessoryServerBrowser *)&v20 deRegisterAccessoryWithIdentifier:v4];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetPairedAccessories
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAPAccessoryServerBrowserBTLE_resetPairedAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __55__HAPAccessoryServerBrowserBTLE_resetPairedAccessories__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) pairedAccessoryIdentifiers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _forgetPairedAccessoryWithIdentifier:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deRegisterAccessoryWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPAccessoryServerBrowserBTLE;
  [(HAPAccessoryServerBrowser *)&v9 deRegisterAccessoryWithIdentifier:v4];
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAPAccessoryServerBrowserBTLE_deRegisterAccessoryWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)markNotifyingCharacteristicUpdatedForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAPAccessoryServerBrowserBTLE_markNotifyingCharacteristicUpdatedForIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __81__HAPAccessoryServerBrowserBTLE_markNotifyingCharacteristicUpdatedForIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3 && ([v3 notifyingCharacteristicUpdated] & 1) == 0)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [v3 stateNumber];
    v6 = [v4 numberWithInt:{objc_msgSend(v5, "unsignedShortValue") + 1}];
    [v3 setStateNumber:v6];

    [v3 setNotifyingCharacteristicUpdated:1];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Incremented state number of recently seen peripheral: %{public}@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)qosLimits
{
  if ([(HAPAccessoryServerBrowserBTLE *)self remoteBrowsingAndScanEnabled])
  {
    return 2;
  }

  os_unfair_lock_lock_with_options();
  qosLimits = self->_qosLimits;
  os_unfair_lock_unlock(&self->super._lock);
  return qosLimits;
}

- (void)setQosLimits:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_qosLimits = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)configureBTLEQoSLimits:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring browser for qosLimits: %tu", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBrowserBTLE *)v6 setQosLimits:a3];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateScanInBackground:(BOOL)a3
{
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HAPAccessoryServerBrowserBTLE_updateScanInBackground___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __56__HAPAccessoryServerBrowserBTLE_updateScanInBackground___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v2 setScanInBackground:v1];
}

- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPAccessoryServerBrowserBTLE_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __76__HAPAccessoryServerBrowserBTLE_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v2 stopTrackingHAPBLEAccessoriesWithIdentifiers:*(a1 + 40)];
}

- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HAPAccessoryServerBrowserBTLE_updateStateForIdentifier_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__HAPAccessoryServerBrowserBTLE_updateStateForIdentifier_stateNumber___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 stateNumber];
    v5 = HAPCompareStateNumberWithRollover(v4, *(a1 + 48), 0xFFuLL);

    if (v5 == -1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 stateNumber];
        v11 = *(a1 + 48);
        *buf = 138544130;
        v53 = v9;
        v54 = 2114;
        v55 = v3;
        v56 = 2114;
        v57 = v10;
        v58 = 2114;
        v59 = v11;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating State for recently seen accessory: %{public}@ to sync-up current/new: %{public}@/%{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      [v3 setStateNumber:*(a1 + 48)];
    }
  }

  v41 = v3;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = [*(a1 + 32) discoveredPeripheralsWithAccessories];
  v13 = [v12 objectEnumerator];

  v14 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    v42 = v13;
    v47 = *v49;
    do
    {
      v17 = 0;
      v43 = v15;
      do
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        v19 = [v18 accessoryServer];
        v20 = [v19 identifier];
        v21 = [v20 isEqualToString:*(a1 + 40)];

        if (v21)
        {
          v22 = [v18 accessoryServer];
          v23 = [v22 stateNumber];
          v24 = HAPCompareStateNumberWithRollover(v23, *(a1 + 48), 0xFFuLL);

          if (v24 == -1)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = *(a1 + 32);
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = HMFGetLogIdentifier();
              v45 = [v18 accessoryServer];
              v29 = [v45 name];
              v44 = [v18 accessoryServer];
              v30 = [v44 identifier];
              [v18 accessoryServer];
              v31 = v46 = v25;
              v32 = [v31 stateNumber];
              v33 = *(a1 + 48);
              *buf = 138544386;
              v53 = v28;
              v54 = 2112;
              v55 = v29;
              v56 = 2114;
              v57 = v30;
              v58 = 2114;
              v59 = v32;
              v60 = 2114;
              v61 = v33;
              _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating State for discovered tuple: %@ (%{public}@) to sync-up current/new: %{public}@/%{public}@", buf, 0x34u);

              v25 = v46;
              v13 = v42;

              v15 = v43;
            }

            objc_autoreleasePoolPop(v25);
            v34 = *(a1 + 48);
            v35 = [v18 accessoryServer];
            [v35 setStateNumber:v34];

            v36 = *(a1 + 48);
            v37 = [v18 accessoryServer];
            v38 = [v37 blePeripheral];
            [v38 setStateNumber:v36];

            v16 = v47;
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) updateCachedStateForIdentifier:*(a1 + 40) stateNumber:*(a1 + 48)];
  v39 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v39 updateStateForIdentifier:*(a1 + 40) stateNumber:*(a1 + 48)];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)retrieveCurrentStateForIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7
{
  v12 = a3;
  v13 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [v13 retrieveStateForTrackedAccessoryWithIdentifier:v12 stateNumber:a4 isReachable:a5 linkQuality:a6 lastSeen:a7];
}

- (void)configureAccessoryWithIdentifier:(id)a3 trackState:(BOOL)a4 connectionPriority:(unint64_t)a5
{
  v8 = a3;
  v9 = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HAPAccessoryServerBrowserBTLE_configureAccessoryWithIdentifier_trackState_connectionPriority___block_invoke;
  v11[3] = &unk_2786D3C80;
  v11[4] = self;
  v12 = v8;
  v14 = a4;
  v13 = a5;
  v10 = v8;
  dispatch_async(v9, v11);
}

void __96__HAPAccessoryServerBrowserBTLE_configureAccessoryWithIdentifier_trackState_connectionPriority___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 updatePairedPeripheralConfiguration:*(a1 + 56) connectionPriority:*(a1 + 48)];
}

- (void)resetLastSeenForAccessoryServersWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAPAccessoryServerBrowserBTLE_resetLastSeenForAccessoryServersWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __81__HAPAccessoryServerBrowserBTLE_resetLastSeenForAccessoryServersWithIdentifiers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) hapWiProxBLEBrowser];
        [v8 resetLastSeenForTrackedAccessories:v7];

        v9 = [*(a1 + 40) delegate];
        [v9 accessoryServerBrowser:*(a1 + 40) didChangeReachability:0 forAccessoryServerWithIdentifier:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_probeReachabilityForAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __111__HAPAccessoryServerBrowserBTLE__probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke;
  v12[3] = &unk_2786D5290;
  v13 = v8;
  v14 = v9;
  v12[4] = self;
  v15 = a4;
  v10 = v8;
  v11 = v9;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v12];
}

void __111__HAPAccessoryServerBrowserBTLE__probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to probe reachability for accessory servers because BTLE failed to power on with error: %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = MEMORY[0x231885210](*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedScanForIdentifiers:*(a1 + 40) forceScan:*(a1 + 56) withCompletion:*(a1 + 48)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)probeReachabilityForAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HAPAccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__HAPAccessoryServerBrowserBTLE_probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke;
  v13[3] = &unk_2786D5F70;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __110__HAPAccessoryServerBrowserBTLE_probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _canStartScan])
  {
    [*(a1 + 32) _probeReachabilityForAccessoryServersWithIdentifiers:*(a1 + 40) forceScan:*(a1 + 56) withCompletion:*(a1 + 48)];
    v2 = [*(a1 + 32) hapWiProxBLEBrowser];
    [v2 startTrackingHAPBLEAccessoriesWithIdentifiers:*(a1 + 40)];
  }
}

- (void)setReachabilityCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HAPAccessoryServerBrowserBTLE_setReachabilityCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed recently seen paired peripheral with identifier %{public}@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowserBTLE *)v6 recentlySeenPairedPeripherals];
  [v9 removeObjectForKey:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HAPAccessoryServerBrowserBTLE_removeRecentlySeenPairedPeripheralWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke;
  v6[3] = &unk_2786D6A98;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v6];
}

void __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      *buf = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to discover accessory server %{public}@ because BTLE failed to power on with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v10 = [*(a1 + 32) delegateQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke_158;
      v13[3] = &unk_2786D7050;
      v11 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v11;
      dispatch_async(v10, v13);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedConnectionRequestForIdentifier:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke_158(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HAPAccessoryServerBrowserBTLE_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_callPowerOnCompletionsWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x231885210](*(*(&v15 + 1) + 8 * v10));
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11, v4);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  [v13 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_powerOnCentralManagerWithCompletion:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];

  if (v6)
  {
    v7 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    v8 = [v7 state];

    switch(v8)
    {
      case 2uLL:
        v28 = MEMORY[0x277CCA9B8];
        v29 = @"Failed to power on Bluetooth because Bluetooth LE is unsupported on this system.";
        v30 = 48;
        break;
      case 4uLL:
        v28 = MEMORY[0x277CCA9B8];
        v29 = @"Failed to power on Bluetooth because the Bluetooth is turned off in Settings.";
        v30 = 57;
        break;
      case 5uLL:
        v9 = MEMORY[0x231885210](v4);
        v10 = v9;
        if (v9)
        {
          (*(v9 + 16))(v9, 0);
        }

        goto LABEL_24;
      default:
        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          if (v8 > 5)
          {
            v37 = @"Unenumerated State?";
          }

          else
          {
            v37 = off_2786D3D40[v8];
          }

          v38 = v37;
          *buf = 138543874;
          v43 = v36;
          v44 = 2048;
          v45 = v8;
          v46 = 2112;
          v47 = v38;
          _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_INFO, "%{public}@Central Manager has state %ld (%@), adding block to be called when the state is updated.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v33);
        v10 = [(HAPAccessoryServerBrowserBTLE *)v34 powerOnCentralManagerCompletions];
        v32 = MEMORY[0x231885210](v4);
        [v10 addObject:v32];
LABEL_23:

LABEL_24:
        goto LABEL_25;
    }

    v10 = [v28 errorWithHMErrorCode:v30 reason:v29 underlyingError:0];
    v31 = MEMORY[0x231885210](v4);
    v32 = v31;
    if (v31)
    {
      (*(v31 + 16))(v31, v10);
    }

    goto LABEL_23;
  }

  v11 = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  v12 = MEMORY[0x231885210](v4);
  [v11 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277CBDFF8]);
  v14 = [(HAPAccessoryServerBrowser *)self workQueue];
  v15 = [v13 initWithDelegate:self queue:v14];
  [(HAPAccessoryServerBrowserBTLE *)self setCentralManager:v15];

  v16 = [CBConnectionsObserver alloc];
  v17 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
  v18 = [(HAPAccessoryServerBrowser *)self workQueue];
  v41 = 0;
  v19 = [(CBConnectionsObserver *)v16 initWithCentralManager:v17 Queue:v18 Error:&v41];
  v20 = v41;
  [(HAPAccessoryServerBrowserBTLE *)self setConnectionsObserver:v19];

  if (v20)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v24;
      v44 = 2114;
      v45 = v20;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Connections Observer failed to initialize, error (%{public}@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [(HAPAccessoryServerBrowserBTLE *)v22 connectionsObserver];

    if (v25)
    {
      v26 = [(HAPAccessoryServerBrowserBTLE *)v22 connectionsObserver];
      v40 = v20;
      [v26 cleanupWithError:&v40];
      v27 = v40;

      [(HAPAccessoryServerBrowserBTLE *)v22 setConnectionsObserver:0];
      v20 = v27;
    }
  }

LABEL_25:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)_startScanningForReachability:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPAccessoryServerBrowserBTLE *)self _hasRecentlySeenAccessoriesWithIdentifiers:v4])
  {
    v5 = [(HAPAccessoryServerBrowserBTLE *)self _hasPairedAccessoriesOfType:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Not all accessories are in recently seen", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 1;
  }

  if ([(HAPAccessoryServerBrowserBTLE *)self scanState]|| !v5)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HAPAccessoryServerBrowserBTLE *)v22 scanState];
      v26 = HMFBooleanToString();
      *buf = 138543874;
      v31 = v24;
      v32 = 2048;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Skip 1.0 reachability: Scan State: %tu, 1.0 Accessories: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v10 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    [v10 stopScan];

    [(HAPAccessoryServerBrowserBTLE *)self setScanState:2];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting scan for 1.0 reachability", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
    v16 = [(HAPAccessoryServerBrowserBTLE *)v12 centralManager];
    v38[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v18 = *MEMORY[0x277CBDDB0];
    v36[0] = *MEMORY[0x277CBDEF8];
    v36[1] = v18;
    v19 = *MEMORY[0x277CBDE58];
    v36[2] = *MEMORY[0x277CBDDA8];
    v36[3] = v19;
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = MEMORY[0x277CBEC28];
    v37[2] = MEMORY[0x277CBEC28];
    v37[3] = &unk_283EA97B8;
    v36[4] = *MEMORY[0x277CBDE38];
    v37[4] = &unk_283EA97D0;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
    [v16 scanForPeripheralsWithServices:v17 options:v20];
  }

  if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v27 = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HAPAccessoryServerBrowserBTLE__startScanningForReachability___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(v27, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __63__HAPAccessoryServerBrowserBTLE__startScanningForReachability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (BOOL)_hasRecentlySeenAccessoriesWithIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v5 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) identifier];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v4 isSubsetOfSet:v5];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_hasPairedAccessoriesOfType:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 advertisementFormat] == a3)
        {
          v12 = [v11 identifier];
          v13 = [(HAPAccessoryServerBrowser *)self isPaired:v12];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_startBrowsingForLegacyHAPBTLE100Accessories
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
  [v3 stopScan];

  [(HAPAccessoryServerBrowserBTLE *)self setScanState:1];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting scan for HomeKit 1.0 accessories...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  v9 = [(HAPAccessoryServerBrowserBTLE *)v5 centralManager];
  v19 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v11 = *MEMORY[0x277CBDDB0];
  v17[0] = *MEMORY[0x277CBDEF8];
  v17[1] = v11;
  v12 = *MEMORY[0x277CBDE58];
  v17[2] = *MEMORY[0x277CBDDA8];
  v17[3] = v12;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = MEMORY[0x277CBEC38];
  v18[2] = MEMORY[0x277CBEC38];
  v18[3] = &unk_283EA97B8;
  v17[4] = *MEMORY[0x277CBDE38];
  v18[4] = &unk_283EA97D0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  [v9 scanForPeripheralsWithServices:v10 options:v13];

  if ([(HAPAccessoryServerBrowserBTLE *)v5 _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v14 = [(HAPAccessoryServerBrowserBTLE *)v5 delegateQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__HAPAccessoryServerBrowserBTLE__startBrowsingForLegacyHAPBTLE100Accessories__block_invoke;
    v16[3] = &unk_2786D6CA0;
    v16[4] = v5;
    dispatch_async(v14, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __77__HAPAccessoryServerBrowserBTLE__startBrowsingForLegacyHAPBTLE100Accessories__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

void __58__HAPAccessoryServerBrowserBTLE__stopActiveScanWithForce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (BOOL)remoteBrowsingAndScanEnabled
{
  v2 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  v3 = (~[v2 routeMode] & 3) == 0;

  return v3;
}

- (BOOL)remoteBrowsingEnabled
{
  v2 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  v3 = [v2 routeMode];

  return v3 & 1;
}

- (void)pauseScans
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HAPAccessoryServerBrowserBTLE_pauseScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __43__HAPAccessoryServerBrowserBTLE_pauseScans__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) centralManager];
  [v2 stopScan];

  v3 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v3 pauseScans];

  v4 = *(a1 + 32);

  return [v4 setScanState:0];
}

- (void)_matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
    v12 = [v11 objectEnumerator];

    v13 = [v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) accessoryServer];
        if ([v17 matchesSetupID:v8 serverIdentifier:v9])
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = [v17 identifier];
      v19 = [(HAPAccessoryServerBrowser *)self isPaired:v18];

      v20 = [v17 hasPairings];
      v21 = v20;
      if (!v19 && !v20)
      {
        goto LABEL_13;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v19];
        v27 = [MEMORY[0x277CCABB0] numberWithBool:v21];
        *buf = 138544386;
        v35 = v29;
        v36 = 2114;
        v37 = v17;
        v38 = 2114;
        v39 = v8;
        v40 = 2114;
        v41 = v26;
        v42 = 2114;
        v43 = v27;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@BTLE Accessory server %{public}@ matches setupID %{public}@ and is paired/hasPairings: (%{public}@/%{public}@)", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = 1;
    }

    else
    {
LABEL_10:
      v17 = 0;
LABEL_13:
      v22 = 0;
    }

    v10[2](v10, v22, v17);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServerBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__HAPAccessoryServerBrowserBTLE_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)updateRemoteBrowsing:(BOOL)a3 shouldScan:(BOOL)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  v7 = [v6 routeMode];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      if (v4)
      {
        v12 = @"WHB";
      }

      else
      {
        v12 = @"LOCAL";
      }

      v13 = HMFBooleanToString();
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting BTLE discovery to '%{public}@'. WHB Scan: %{public}@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [(HAPAccessoryServerBrowserBTLE *)v9 hapWiProxBLEBrowser];
    [v14 setRouteMode:0];

    v15 = [(HAPAccessoryServerBrowserBTLE *)v9 hapWiProxBLEBrowser];
    [v15 restartScans];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(a1 + 32) discoveredPeripheralsWithAccessories];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v25 + 1) + 8 * v7);
      v9 = [v8 accessoryServer];
      v10 = [v9 pendingRemovePairing];

      if (v10 == 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v8 accessoryServer];
      *buf = 138543618;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Not stopping active scan because we have pending cancelled pairings to remove for accessory: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if ([*(a1 + 32) remoteBrowsingEnabled])
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_9:

    v11 = [*(a1 + 32) targetedScanAccessoryIdentifiers];
    if ([v11 count])
    {
      v12 = [*(a1 + 32) remoteBrowsingEnabled];

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_17:
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Stopping active scan because a client requested it and there aren't any outstanding targeted scans", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) _stopActiveScanWithForce:1];
  }

LABEL_20:
  [*(a1 + 32) setPerformingGeneralScan:0];
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v22 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke_132;
    block[3] = &unk_2786D6CA0;
    block[4] = *(a1 + 32);
    dispatch_async(v22, block);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)_startDiscoveringAccessoryServers
{
  [(HAPAccessoryServerBrowserBTLE *)self setPerformingGeneralScan:1];
  v3 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [v3 startBrowsingForHAPBLEAccessories];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke;
  v4[3] = &unk_2786D6CF0;
  v4[4] = self;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v4];
}

void __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
    {
      v5 = [*(a1 + 32) delegateQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke_2;
      v6[3] = &unk_2786D7050;
      v6[4] = *(a1 + 32);
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }

  else
  {
    [v4 _startBrowsingForLegacyHAPBTLE100Accessories];
    [*(a1 + 32) _updateTargetedScanTimer];
  }
}

void __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:*(a1 + 40)];
}

- (void)startDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HAPAccessoryServerBrowserBTLE_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __65__HAPAccessoryServerBrowserBTLE_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canStartScan];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startDiscoveringAccessoryServers];
  }

  return result;
}

- (void)setScanState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_scanState = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)scanState
{
  os_unfair_lock_lock_with_options();
  scanState = self->_scanState;
  os_unfair_lock_unlock(&self->super._lock);
  return scanState;
}

- (BOOL)_canStartScan
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1)
  {
    return 1;
  }

  v3 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v4 = [v3 isServerLinkTypeBrowseable:2];

  return v4;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HAPAccessoryServerBrowserBTLE_setDelegate_queue___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __51__HAPAccessoryServerBrowserBTLE_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (HAPAccessoryServerBrowserBTLE)initWithQueue:(id)a3
{
  v21.receiver = self;
  v21.super_class = HAPAccessoryServerBrowserBTLE;
  v3 = [(HAPAccessoryServerBrowser *)&v21 initWithQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    discoveredPeripheralsWithAccessories = v3->_discoveredPeripheralsWithAccessories;
    v3->_discoveredPeripheralsWithAccessories = v4;

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    recentlySeenPairedPeripherals = v3->_recentlySeenPairedPeripherals;
    v3->_recentlySeenPairedPeripherals = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    powerOnCentralManagerCompletions = v3->_powerOnCentralManagerCompletions;
    v3->_powerOnCentralManagerCompletions = v8;

    v10 = [MEMORY[0x277CBEB40] orderedSet];
    peripheralsWithConnectionRequests = v3->_peripheralsWithConnectionRequests;
    v3->_peripheralsWithConnectionRequests = v10;

    v12 = [MEMORY[0x277CBEB40] orderedSet];
    peripheralsPendingConnection = v3->_peripheralsPendingConnection;
    v3->_peripheralsPendingConnection = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    targetedScanAccessoryIdentifiers = v3->_targetedScanAccessoryIdentifiers;
    v3->_targetedScanAccessoryIdentifiers = v14;

    v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifiersWithReachabilityScanTuples = v3->_identifiersWithReachabilityScanTuples;
    v3->_identifiersWithReachabilityScanTuples = v16;

    v18 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    peripheralDisconnectionMonitorMap = v3->_peripheralDisconnectionMonitorMap;
    v3->_peripheralDisconnectionMonitorMap = v18;

    v3->_peripheralDisconnectionTimeout = 10;
    v3->_scanState = 0;
    v3->_qosLimits = 0;
  }

  return v3;
}

- (BOOL)isPerformingGeneralScan
{
  os_unfair_lock_lock_with_options();
  performingGeneralScan = self->_performingGeneralScan;
  os_unfair_lock_unlock(&self->super._lock);
  return performingGeneralScan;
}

- (void)setPerformingGeneralScan:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_performingGeneralScan = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)updateCachedStateForIdentifier:(id)a3 stateNumber:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 peripheralInfo];
      v11 = [v10 stateNumber];
      v12 = HAPCompareStateNumberWithRollover(v11, v7, 0xFFuLL);

      if (v12 == -1)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [v9 pairingIdentifier];
          v18 = [v9 peripheralInfo];
          v19 = [v18 stateNumber];
          v22 = 138544130;
          v23 = v16;
          v24 = 2114;
          v25 = v17;
          v26 = 2114;
          v27 = v19;
          v28 = 2114;
          v29 = v7;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating cached s# for: %{public}@ from %{public}@ to %{public}@", &v22, 0x2Au);
        }

        objc_autoreleasePoolPop(v13);
        v20 = [v9 peripheralInfo];
        [v20 updateStateNumber:v7];

        [(HAPAccessoryServerBrowserBTLE *)v14 saveCacheToDisk:v9];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateBroadcastKeyForIdentifier:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__HAPAccessoryServerBrowserBTLE_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke;
  v17[3] = &unk_2786D3C58;
  v17[4] = self;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  v21 = a6;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  [v13 accessoryServerBrowser:self getCacheForAccessoryWithIdentifier:v16 withCompletion:v17];
}

void __106__HAPAccessoryServerBrowserBTLE_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v17];
  v5 = v17;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 pairingIdentifier];
      v12 = *(a1 + 48);
      *buf = 138543874;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updating broadcast key for: %{public}@ and state number: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [v4 peripheralInfo];
    [v13 saveBroadcastKey:*(a1 + 56) keyUpdatedStateNumber:*(a1 + 48) updatedTime:*(a1 + 64)];

    [*(a1 + 32) saveCacheToDisk:v4];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached accessory from accessory: %{public}@ with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)saveCacheToDisk:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    v8 = [v4 pairingIdentifier];
    [v7 accessoryServerBrowser:self saveCache:v5 serverIdentifier:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 pairingIdentifier];
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create BLE cache archive for %{public}@ with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeCachedAccessoryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  [v5 accessoryServerBrowser:self removeCacheForAccessoryWithIdentifier:v4];
}

- (id)cachedAccessoryForIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6553;
  v19 = __Block_byref_object_dispose__6554;
  v20 = 0;
  v5 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HAPAccessoryServerBrowserBTLE_cachedAccessoryForIdentifier___block_invoke;
    v12[3] = &unk_2786D3C30;
    v14 = &v15;
    v12[4] = self;
    v9 = v7;
    v13 = v9;
    [v8 accessoryServerBrowser:self getCacheForAccessoryWithIdentifier:v4 withCompletion:v12];

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __62__HAPAccessoryServerBrowserBTLE_cachedAccessoryForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v13 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
    v5 = v13;
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached accessory from accessory cache data: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionLatency:(int64_t)a3 forPeripheral:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPAccessoryServerBrowserBTLE_setConnectionLatency_forPeripheral___block_invoke;
  block[3] = &unk_2786D4978;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __68__HAPAccessoryServerBrowserBTLE_setConnectionLatency_forPeripheral___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 48);
    if (v2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_22AC9DBE0[v2];
    }

    v4 = [*(a1 + 40) centralManager];
    [v4 setDesiredConnectionLatency:v3 forPeripheral:*(a1 + 32)];
  }
}

- (unint64_t)_parseAdvertisementData:(id)a3 forPeripheral:(id)a4 name:(id *)a5 pairingUsername:(id *)a6 statusFlags:(id *)a7 stateNumber:(id *)a8 category:(id *)a9 configNumber:(id *)a10 setupHash:(id *)a11
{
  v35 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  v18 = [v16 name];
  v19 = [v18 length];
  v20 = [(__CFString *)v17 length];

  if (v19 > v20)
  {
    v21 = [v16 name];

    v17 = v21;
  }

  if (!v17)
  {
    v17 = @"Unknown";
  }

  if (a5)
  {
    v22 = v17;
    *a5 = v17;
  }

  v23 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  v25 = [v23 objectForKeyedSubscript:v24];
  if ([v25 length] == 9)
  {
    [v25 bytes];
    HardwareAddressToCString();
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
    v27 = v26;
    if (a6)
    {
      v28 = v26;
      *a6 = v27;
    }

    v29 = [v25 bytes];
    if (a7)
    {
      *a7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v29 + 8)];
    }

    if (a9)
    {
      if (*(v29 + 6))
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      }

      else
      {
        v30 = &unk_283EA97A0;
      }

      *a9 = v30;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)disconnectFromBTLEAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) blePeripheral];
  if (v2)
  {
    v3 = [*(a1 + 40) _discoveredAccessoryServerTupleForBLEPeripheral:v2 shouldMerge:0];

    if (v3)
    {
      v4 = [*(a1 + 40) recentlySeenPairedPeripherals];
      v5 = [*(a1 + 32) identifier];
      v6 = [v4 objectForKey:v5];

      v7 = [v2 cbPeripheral];
      v8 = [v7 state];

      if (v8 != 2)
      {
        v9 = [*(a1 + 40) hapWiProxBLEBrowser];
        v10 = [*(a1 + 32) identifier];
        [v9 resetLastSeenForTrackedAccessories:v10];

        v11 = [*(a1 + 40) delegate];
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) identifier];
        [v11 accessoryServerBrowser:v12 didChangeReachability:0 forAccessoryServerWithIdentifier:v13];

        if (([v2 isCached] & 1) != 0 || ((v14 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), v16 = v15, v14, v17 = objc_msgSend(v16, "hasBeenDiscovered"), v16, (v17 & 1) == 0))
        {
          v18 = [*(a1 + 40) recentlySeenPairedPeripherals];
          v19 = [*(a1 + 32) identifier];
          [v18 removeObjectForKey:v19];
        }
      }

      [v6 setNotifyingCharacteristicUpdated:0];
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) shortDescription];
        *buf = 138543874;
        v40 = v23;
        v41 = 2114;
        v42 = v24;
        v43 = 2112;
        v44 = v2;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Cancelling Connection for server, %{public}@, from CB Peripheral: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) _removeFromPendingConnections:v2];
      v25 = *(a1 + 40);
      v26 = [v2 cbPeripheral];
      [v25 _disconnectFromHAPBLEPeripheral:v2 cbPeripheral:v26];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 32);
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = v31;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory in discoveredAccessory map: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:54];
      [*(a1 + 40) _removeFromActiveConnections:v2];
      [*(a1 + 40) disconnectedHAPPeripheral:v2 error:v32];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_106;
      v36[3] = &unk_2786D3C08;
      v35 = *(a1 + 32);
      v33 = v35.i64[0];
      v37 = vextq_s8(v35, v35, 8uLL);
      v38 = v32;
      v6 = v32;
      [v33 handleDisconnectionWithError:v6 completionHandler:v36];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_106(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_2;
  block[3] = &unk_2786D7078;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)connectToBTLEAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) blePeripheral];
  if (v2 && ([*(a1 + 40) discoveredPeripheralsWithAccessories], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 32) category];
    [v5 reportConnection:v6 linkType:2 accessoryCategory:v7];

    [*(a1 + 40) _connectHAPPeripheralWhenAllowed:v2];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) shortDescription];
      v13 = [v2 shortDescription];
      *buf = 138543874;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory in discoveredAccessory map: %{public}@/%{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([*(a1 + 40) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v14 = [*(a1 + 40) delegateQueue];
      block = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke_102;
      v22 = &unk_2786D7050;
      v18 = *(a1 + 32);
      v15 = v18.i64[0];
      v23 = vextq_s8(v18, v18, 8uLL);
      dispatch_async(v14, &block);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:{54, *&v18, block, v20, v21, v22}];
    [*(a1 + 32) handleConnectionWithPeripheral:0 withError:v16];
    [*(a1 + 40) _notifyDelegatesOfRemovedAccessoryServer:*(a1 + 32) error:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke_102(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 accessoryServerBrowser:v2 didFailToDiscoverAccessoryServerWithIdentifier:v3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t141 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t141, &__block_literal_global_6565);
  }

  v3 = logCategory__hmf_once_v142;

  return v3;
}

uint64_t __44__HAPAccessoryServerBrowserBTLE_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v142 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end