@interface HAP2AccessoryServerBrowser
+ (id)new;
- (BOOL)isConfirming;
- (BOOL)isDiscovering;
- (BOOL)onDemandConnectionsAreEnabled;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3;
- (HAP2AccessoryServerBrowser)init;
- (HAP2AccessoryServerBrowser)initWithCoordinators:(id)a3 storage:(id)a4;
- (HAP2AccessoryServerBrowserDelegate)delegate;
- (HAP2AccessoryServerBrowserOperation)currentOperation;
- (NSArray)pairedAccessoryServers;
- (NSArray)unpairedAccessoryServers;
- (NSMutableArray)browserOperationQueue;
- (NSMutableArray)livePairedAccessoryServers;
- (NSMutableArray)liveUnpairedAccessoryServers;
- (id)_lookupPairedAccessoryServerWithDeviceID:(id)a3;
- (id)_removeAccessoryServerFromArray:(id)a3 withDeviceID:(id)a4;
- (id)currentIdentity;
- (id)operationQueueForDeviceID:(id)a3;
- (id)pairingRequest;
- (void)_beginOperation;
- (void)_enqueueOperation:(id)a3;
- (void)_finishOperation;
- (void)_finishStartDiscovering;
- (void)_finishStopDiscovering;
- (void)_notifyCoordinatorsOfAccessoryWithDeviceID:(id)a3;
- (void)_startDiscovering;
- (void)_stopDiscovering;
- (void)_updateArraysForDiscoveredAccessoryServer:(id)a3 paired:(BOOL)a4 lost:(id *)a5 existing:(id *)a6;
- (void)accessoryServerDidUpdateConnectionState:(id)a3;
- (void)accessoryWithDeviceIDIsPaired:(id)a3 completion:(id)a4;
- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3;
- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3;
- (void)coordinator:(id)a3 didCreatePairedAccessoryServer:(id)a4;
- (void)coordinator:(id)a3 didCreateUnpairedAccessoryServer:(id)a4;
- (void)coordinator:(id)a3 didLoseAccessory:(id)a4 error:(id)a5;
- (void)coordinator:(id)a3 didStartDiscoveringWithError:(id)a4;
- (void)coordinator:(id)a3 didStopDiscoveringWithError:(id)a4;
- (void)handleCurrentNetworkChangedNotification:(id)a3;
- (void)initializeKeyBagIfNecessary;
- (void)removePublicKeyForAccessoryWithID:(id)a3 completion:(id)a4;
- (void)retrieveLocalPairingIdentityForDeviceID:(id)a3 completion:(id)a4;
- (void)savePublicKey:(id)a3 forAccessoryWithID:(id)a4 completion:(id)a5;
- (void)setConfirming:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDiscovering:(BOOL)a3;
- (void)startConfirmingPairedAccessoryReachability;
- (void)startDiscovering;
- (void)stopConfirmingPairedAccessoryReachability;
- (void)stopDiscovering;
@end

@implementation HAP2AccessoryServerBrowser

- (void)startConfirmingPairedAccessoryReachability
{
  objc_initWeak(&location, self);
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HAP2AccessoryServerBrowser_startConfirmingPairedAccessoryReachability__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [v3 addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __72__HAP2AccessoryServerBrowser_startConfirmingPairedAccessoryReachability__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setConfirming:1];
    v2 = [v3 pairedAccessoryServers];
    [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_9215];

    WeakRetained = v3;
  }
}

- (NSArray)pairedAccessoryServers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9123;
  v11 = __Block_byref_object_dispose__9124;
  v12 = 0;
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HAP2AccessoryServerBrowser_pairedAccessoryServers__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__HAP2AccessoryServerBrowser_pairedAccessoryServers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) livePairedAccessoryServers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSMutableArray)livePairedAccessoryServers
{
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  [v3 assertOwner];

  livePairedAccessoryServers = self->_livePairedAccessoryServers;

  return livePairedAccessoryServers;
}

- (void)handleCurrentNetworkChangedNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "notification=%@", &v10, 0xCu);
  }

  v8 = [(HAP2AccessoryServerBrowser *)self pairedAccessoryServers];
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_244];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)coordinator:(id)a3 didLoseAccessory:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HAP2AccessoryServerBrowser_coordinator_didLoseAccessory_error___block_invoke;
  v14[3] = &unk_2786D6F50;
  objc_copyWeak(&v17, &location);
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __65__HAP2AccessoryServerBrowser_coordinator_didLoseAccessory_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) deviceID];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9123;
  v26 = __Block_byref_object_dispose__9124;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9123;
  v20 = __Block_byref_object_dispose__9124;
  v21 = 0;
  v4 = [WeakRetained propertyLock];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__HAP2AccessoryServerBrowser_coordinator_didLoseAccessory_error___block_invoke_2;
  v11 = &unk_2786D4598;
  v14 = &v22;
  v12 = WeakRetained;
  v5 = v3;
  v13 = v5;
  v15 = &v16;
  [v4 performWritingBlock:&v8];

  v6 = [WeakRetained delegate];
  if (v6)
  {
    if (v23[5] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 accessoryServerBrowser:WeakRetained didLoseUnpairedAccessoryServer:v23[5] error:*(a1 + 40)];
    }

    else
    {
      v7 = v17[5];
      if (v7)
      {
        [v7 handleLostDiscoveryAdvertisementWithWillSleep:{objc_msgSend(WeakRetained, "powerState") == 1}];
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __65__HAP2AccessoryServerBrowser_coordinator_didLoseAccessory_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 liveUnpairedAccessoryServers];
  v4 = [v2 _removeAccessoryServerFromArray:v3 withDeviceID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) _lookupPairedAccessoryServerWithDeviceID:*(a1 + 40)];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8]();
}

- (void)coordinator:(id)a3 didCreatePairedAccessoryServer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_283EB63D0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  objc_initWeak(&location, self);
  v10 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HAP2AccessoryServerBrowser_coordinator_didCreatePairedAccessoryServer___block_invoke;
  v13[3] = &unk_2786D6F50;
  objc_copyWeak(&v16, &location);
  v11 = v7;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 addBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __73__HAP2AccessoryServerBrowser_coordinator_didCreatePairedAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isDiscovering])
  {
    v3 = *(a1 + 32);
    v12 = 0;
    v13 = 0;
    [WeakRetained _updateArraysForDiscoveredAccessoryServer:v3 paired:1 lost:&v13 existing:&v12];
    v4 = v13;
    v5 = v12;
    v6 = *(a1 + 40);
    if (v4)
    {
      [v4 becomePairedWithAccessoryServer:v6];
      v6 = v4;
    }

    v7 = v6;
    v8 = [WeakRetained delegate];
    v9 = v8;
    if (v5)
    {
      [v5 mergeWithNewlyDiscoveredPairedAccessoryServer:*(a1 + 40)];
    }

    else if (v8)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__HAP2AccessoryServerBrowser_coordinator_didCreatePairedAccessoryServer___block_invoke_2;
      v10[3] = &unk_2786D7050;
      v10[4] = WeakRetained;
      v11 = v7;
      [v9 accessoryServerBrowser:WeakRetained didDiscoverPairedAccessoryServer:v11 withCompletion:v10];
    }
  }
}

uint64_t __73__HAP2AccessoryServerBrowser_coordinator_didCreatePairedAccessoryServer___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isConfirming];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 startConfirming];
  }

  return result;
}

- (void)coordinator:(id)a3 didCreateUnpairedAccessoryServer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_283EB5C18])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  objc_initWeak(&location, self);
  v10 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HAP2AccessoryServerBrowser_coordinator_didCreateUnpairedAccessoryServer___block_invoke;
  v13[3] = &unk_2786D6F50;
  objc_copyWeak(&v16, &location);
  v11 = v7;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 addBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __75__HAP2AccessoryServerBrowser_coordinator_didCreateUnpairedAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isDiscovering])
  {
    v3 = *(a1 + 32);
    v10 = 0;
    v11 = 0;
    [WeakRetained _updateArraysForDiscoveredAccessoryServer:v3 paired:0 lost:&v11 existing:&v10];
    v4 = v11;
    v5 = v10;
    v6 = *(a1 + 40);
    if (v4)
    {
      [v4 becomeUnpairedWithAccessoryServer:v6];
      v6 = v4;
    }

    v7 = v6;
    v8 = [WeakRetained delegate];
    v9 = v8;
    if (v5)
    {
      [v5 mergeWithNewlyDiscoveredUnpairedAccessoryServer:*(a1 + 40)];
    }

    else if (v8)
    {
      [v8 accessoryServerBrowser:WeakRetained didDiscoverUnpairedAccessoryServer:v7 withCompletion:0];
    }
  }
}

- (void)coordinator:(id)a3 didStopDiscoveringWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HAP2AccessoryServerBrowser_coordinator_didStopDiscoveringWithError___block_invoke;
  v11[3] = &unk_2786D6F50;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__HAP2AccessoryServerBrowser_coordinator_didStopDiscoveringWithError___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [WeakRetained coordinatorInfo];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __70__HAP2AccessoryServerBrowser_coordinator_didStopDiscoveringWithError___block_invoke_2;
  v7 = &unk_2786D4660;
  v8 = a1[4];
  v9 = a1[5];
  v10 = WeakRetained;
  v11 = &v12;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&v4];

  if (*(v13 + 24) == 1)
  {
    [WeakRetained _finishStopDiscovering];
  }

  _Block_object_dispose(&v12, 8);
}

void __70__HAP2AccessoryServerBrowser_coordinator_didStopDiscoveringWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = *(a1 + 32);
  v7 = [v14 coordinator];
  LODWORD(v6) = [v6 isEqual:v7];

  v8 = v14;
  if (v6)
  {
    *a4 = 1;
    [v14 setError:*(a1 + 40)];
    v9 = [*(a1 + 48) currentOperation];
    v10 = v9;
    if (v9 && [v9 type] == 2)
    {
      v11 = [v10 pendingCoordinators];
      [v11 removeObject:*(a1 + 32)];

      if (*(a1 + 40))
      {
        v12 = [v10 error];

        if (!v12)
        {
          [v10 setError:*(a1 + 40)];
        }
      }

      v13 = [v10 pendingCoordinators];
      *(*(*(a1 + 56) + 8) + 24) = [v13 count] == 0;
    }

    v8 = v14;
  }
}

- (void)coordinator:(id)a3 didStartDiscoveringWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HAP2AccessoryServerBrowser_coordinator_didStartDiscoveringWithError___block_invoke;
  v11[3] = &unk_2786D6F50;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __71__HAP2AccessoryServerBrowser_coordinator_didStartDiscoveringWithError___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [WeakRetained coordinatorInfo];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __71__HAP2AccessoryServerBrowser_coordinator_didStartDiscoveringWithError___block_invoke_2;
  v7 = &unk_2786D4660;
  v8 = a1[4];
  v9 = a1[5];
  v10 = WeakRetained;
  v11 = &v12;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&v4];

  if (*(v13 + 24) == 1)
  {
    [WeakRetained _finishStartDiscovering];
  }

  _Block_object_dispose(&v12, 8);
}

void __71__HAP2AccessoryServerBrowser_coordinator_didStartDiscoveringWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = *(a1 + 32);
  v7 = [v14 coordinator];
  LODWORD(v6) = [v6 isEqual:v7];

  v8 = v14;
  if (v6)
  {
    *a4 = 1;
    [v14 setError:*(a1 + 40)];
    v9 = [*(a1 + 48) currentOperation];
    v10 = v9;
    if (v9 && [v9 type] == 1)
    {
      v11 = [v10 pendingCoordinators];
      [v11 removeObject:*(a1 + 32)];

      if (*(a1 + 40))
      {
        v12 = [v10 error];

        if (!v12)
        {
          [v10 setError:*(a1 + 40)];
        }
      }

      v13 = [v10 pendingCoordinators];
      *(*(*(a1 + 56) + 8) + 24) = [v13 count] == 0;
    }

    v8 = v14;
  }
}

- (void)_updateArraysForDiscoveredAccessoryServer:(id)a3 paired:(BOOL)a4 lost:(id *)a5 existing:(id *)a6
{
  v10 = a3;
  v11 = [v10 deviceID];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9123;
  v31 = __Block_byref_object_dispose__9124;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9123;
  v25 = __Block_byref_object_dispose__9124;
  v26 = 0;
  v12 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HAP2AccessoryServerBrowser__updateArraysForDiscoveredAccessoryServer_paired_lost_existing___block_invoke;
  v15[3] = &unk_2786D4638;
  v20 = a4;
  v15[4] = self;
  v18 = &v27;
  v13 = v11;
  v16 = v13;
  v14 = v10;
  v17 = v14;
  v19 = &v21;
  [v12 performWritingBlock:v15];

  *a5 = v28[5];
  *a6 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __93__HAP2AccessoryServerBrowser__updateArraysForDiscoveredAccessoryServer_paired_lost_existing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 liveUnpairedAccessoryServers];
  }

  else
  {
    [v3 livePairedAccessoryServers];
  }
  v4 = ;
  v5 = *(a1 + 32);
  if (*(a1 + 72))
  {
    [v5 livePairedAccessoryServers];
  }

  else
  {
    [v5 liveUnpairedAccessoryServers];
  }
  v6 = ;
  v7 = [*(a1 + 32) _removeAccessoryServerFromArray:v4 withDeviceID:*(a1 + 40)];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HAP2AccessoryServerBrowser__updateArraysForDiscoveredAccessoryServer_paired_lost_existing___block_invoke_2;
  v15[3] = &unk_2786D4610;
  v16 = *(a1 + 40);
  v10 = [v6 indexOfObjectPassingTest:v15];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (!v11)
    {
      v11 = *(a1 + 48);
    }

    [v6 addObject:v11];
  }

  else
  {
    v12 = [v6 objectAtIndexedSubscript:v10];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

uint64_t __93__HAP2AccessoryServerBrowser__updateArraysForDiscoveredAccessoryServer_paired_lost_existing___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [v3 isEqualToDeviceID:*(a1 + 32)];

  return v4;
}

- (id)_removeAccessoryServerFromArray:(id)a3 withDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  [v8 assertOwner];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HAP2AccessoryServerBrowser__removeAccessoryServerFromArray_withDeviceID___block_invoke;
  v14[3] = &unk_2786D4610;
  v15 = v7;
  v9 = v7;
  v10 = [v6 indexOfObjectPassingTest:v14];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = v10;
    v11 = [v6 objectAtIndexedSubscript:v10];
    [v6 removeObjectAtIndex:v12];
  }

  return v11;
}

uint64_t __75__HAP2AccessoryServerBrowser__removeAccessoryServerFromArray_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [v3 isEqualToDeviceID:*(a1 + 32)];

  return v4;
}

- (id)_lookupPairedAccessoryServerWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  [v5 assertOwner];

  v6 = [(HAP2AccessoryServerBrowser *)self livePairedAccessoryServers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HAP2AccessoryServerBrowser__lookupPairedAccessoryServerWithDeviceID___block_invoke;
  v11[3] = &unk_2786D45E8;
  v7 = v4;
  v12 = v7;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
  }

  return v9;
}

uint64_t __71__HAP2AccessoryServerBrowser__lookupPairedAccessoryServerWithDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [v3 isEqualToDeviceID:*(a1 + 32)];

  return v4;
}

- (void)_notifyCoordinatorsOfAccessoryWithDeviceID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HAP2AccessoryServerBrowser__notifyCoordinatorsOfAccessoryWithDeviceID___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__HAP2AccessoryServerBrowser__notifyCoordinatorsOfAccessoryWithDeviceID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained coordinatorInfo];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HAP2AccessoryServerBrowser__notifyCoordinatorsOfAccessoryWithDeviceID___block_invoke_2;
  v4[3] = &unk_2786D45C0;
  v5 = *(a1 + 32);
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

void __73__HAP2AccessoryServerBrowser__notifyCoordinatorsOfAccessoryWithDeviceID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 coordinator];
  [v3 resurfaceDiscoveryInfoForDeviceID:*(a1 + 32)];
}

- (void)_finishStopDiscovering
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HAP2AccessoryServerBrowser *)self currentOperation];
    v5 = [v4 error];
    [v6 accessoryServerBrowser:self didStopDiscoveringWithError:v5];
  }

  [(HAP2AccessoryServerBrowser *)self _finishOperation];
}

- (void)_stopDiscovering
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  if ([(HAP2AccessoryServerBrowser *)self isDiscovering])
  {
    [(HAP2AccessoryServerBrowser *)self setDiscovering:0];
    v4 = [(HAP2AccessoryServerBrowser *)self propertyLock];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__HAP2AccessoryServerBrowser__stopDiscovering__block_invoke;
    v16[3] = &unk_2786D6CA0;
    v16[4] = self;
    [v4 performWritingBlock:v16];

    v5 = [(HAP2AccessoryServerBrowser *)self currentOperation];
    v6 = [(HAP2AccessoryServerBrowser *)self coordinatorInfo];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __46__HAP2AccessoryServerBrowser__stopDiscovering__block_invoke_2;
    v14 = &unk_2786D45C0;
    v7 = v5;
    v15 = v7;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

    v8 = [v7 pendingCoordinators];
    v9 = [v8 count];

    if (!v9)
    {
      [(HAP2AccessoryServerBrowser *)self _finishStopDiscovering];
    }

    v10 = [(HAP2AccessoryServerBrowser *)self powerManager];
    [v10 deRegisterFromSleepWake:self];
  }

  else
  {

    [(HAP2AccessoryServerBrowser *)self _finishOperation];
  }
}

void __46__HAP2AccessoryServerBrowser__stopDiscovering__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) liveUnpairedAccessoryServers];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) livePairedAccessoryServers];
  [v3 removeAllObjects];
}

void __46__HAP2AccessoryServerBrowser__stopDiscovering__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setError:0];
  v3 = [v6 coordinator];
  if ([v3 isDiscovering])
  {
    v4 = [*(a1 + 32) pendingCoordinators];
    [v4 addObject:v3];

    v5 = [v6 coordinator];
    [v5 stopDiscovering];
  }
}

- (void)_finishStartDiscovering
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HAP2AccessoryServerBrowser *)self currentOperation];
    v5 = [v4 error];
    [v6 accessoryServerBrowser:self didStartDiscoveringWithError:v5];
  }

  [(HAP2AccessoryServerBrowser *)self _finishOperation];
}

- (void)_startDiscovering
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  if ([(HAP2AccessoryServerBrowser *)self isDiscovering])
  {

    [(HAP2AccessoryServerBrowser *)self _finishOperation];
  }

  else
  {
    [(HAP2AccessoryServerBrowser *)self setPowerState:0];
    v4 = +[HAPPowerManager sharedInstance];
    [(HAP2AccessoryServerBrowser *)self setPowerManager:v4];

    v5 = [(HAP2AccessoryServerBrowser *)self powerManager];
    v6 = [(HAP2AccessoryServerBrowser *)self dispatchWorkQueue];
    [v5 registerForSleepWake:self queue:v6];

    [(HAP2AccessoryServerBrowser *)self setDiscovering:1];
    v7 = [(HAP2AccessoryServerBrowser *)self currentOperation];
    v8 = [(HAP2AccessoryServerBrowser *)self coordinatorInfo];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__HAP2AccessoryServerBrowser__startDiscovering__block_invoke;
    v12[3] = &unk_2786D45C0;
    v9 = v7;
    v13 = v9;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

    v10 = [v9 pendingCoordinators];
    v11 = [v10 count];

    if (!v11)
    {
      [(HAP2AccessoryServerBrowser *)self _finishStartDiscovering];
    }
  }
}

void __47__HAP2AccessoryServerBrowser__startDiscovering__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setError:0];
  v3 = [v6 coordinator];
  if (([v3 isDiscovering] & 1) == 0)
  {
    v4 = [*(a1 + 32) pendingCoordinators];
    [v4 addObject:v3];

    v5 = [v6 coordinator];
    [v5 startDiscovering];
  }
}

- (void)_finishOperation
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  v4 = [(HAP2AccessoryServerBrowser *)self browserOperationQueue];
  [v4 removeObjectAtIndex:0];

  v5 = [(HAP2AccessoryServerBrowser *)self browserOperationQueue];
  v6 = [v5 count];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(HAP2AccessoryServerBrowser *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__HAP2AccessoryServerBrowser__finishOperation__block_invoke;
    v8[3] = &unk_2786D6FC8;
    objc_copyWeak(&v9, &location);
    [v7 addBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __46__HAP2AccessoryServerBrowser__finishOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginOperation];
}

- (void)_beginOperation
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  v4 = [(HAP2AccessoryServerBrowser *)self currentOperation];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(HAP2AccessoryServerBrowser *)self _stopDiscovering];
    }

    else
    {
      v6 = v5 == 1;
      v4 = v7;
      if (!v6)
      {
        goto LABEL_8;
      }

      [(HAP2AccessoryServerBrowser *)self _startDiscovering];
    }

    v4 = v7;
  }

LABEL_8:
}

- (void)_enqueueOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAP2AccessoryServerBrowser__enqueueOperation___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__HAP2AccessoryServerBrowser__enqueueOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained browserOperationQueue];
  [v2 addObject:*(a1 + 32)];

  v3 = [WeakRetained browserOperationQueue];
  v4 = [v3 count];

  if (v4 == 1)
  {
    [WeakRetained _beginOperation];
  }
}

- (HAP2AccessoryServerBrowserOperation)currentOperation
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  v4 = [(HAP2AccessoryServerBrowser *)self browserOperationQueue];
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (NSMutableArray)browserOperationQueue
{
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v3 assertCurrentQueue];

  browserOperationQueue = self->_browserOperationQueue;

  return browserOperationQueue;
}

- (id)pairingRequest
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)onDemandConnectionsAreEnabled
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)currentIdentity
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)initializeKeyBagIfNecessary
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)accessoryServerDidUpdateConnectionState:(id)a3
{
  v4 = a3;
  if (![v4 connectionState])
  {
    objc_initWeak(&location, self);
    v5 = [(HAP2AccessoryServerBrowser *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HAP2AccessoryServerBrowser_accessoryServerDidUpdateConnectionState___block_invoke;
    v6[3] = &unk_2786D6EB0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [v5 addBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__HAP2AccessoryServerBrowser_accessoryServerDidUpdateConnectionState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isDiscovering])
  {
    v3 = [*(a1 + 32) deviceID];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__9123;
    v27 = __Block_byref_object_dispose__9124;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__9123;
    v21 = __Block_byref_object_dispose__9124;
    v22 = 0;
    v4 = [WeakRetained propertyLock];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __70__HAP2AccessoryServerBrowser_accessoryServerDidUpdateConnectionState___block_invoke_2;
    v12 = &unk_2786D4598;
    v15 = &v23;
    v13 = WeakRetained;
    v5 = v3;
    v14 = v5;
    v16 = &v17;
    [v4 performWritingBlock:&v9];

    v6 = [WeakRetained delegate];
    if (v6)
    {
      if (v24[5] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Lost unpaired accessory server" reason:@"Lost unpaired accessory server" suggestion:0 underlyingError:0 marker:100];
        [v6 accessoryServerBrowser:WeakRetained didLoseUnpairedAccessoryServer:v24[5] error:v7];
      }

      if (v18[5] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Lost paired accessory server" reason:@"Lost paired accessory server" suggestion:0 underlyingError:0 marker:101];
        [v6 accessoryServerBrowser:WeakRetained didLosePairedAccessoryServer:v18[5] error:v8];
      }
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }
}

void __70__HAP2AccessoryServerBrowser_accessoryServerDidUpdateConnectionState___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [v2 liveUnpairedAccessoryServers];
  v4 = [v2 _removeAccessoryServerFromArray:v3 withDeviceID:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = a1[4];
  v11 = [v7 livePairedAccessoryServers];
  v8 = [v7 _removeAccessoryServerFromArray:v11 withDeviceID:a1[5]];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)operationQueueForDeviceID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9123;
  v16 = __Block_byref_object_dispose__9124;
  v17 = 0;
  v5 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HAP2AccessoryServerBrowser_operationQueueForDeviceID___block_invoke;
  v9[3] = &unk_2786D4F60;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 performWritingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__HAP2AccessoryServerBrowser_operationQueueForDeviceID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) weakOperationQueuesByDeviceID];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 40) deviceIDString];
    v15 = [v6 stringWithFormat:@"operationQueue.%@", v7];

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{HAPDispatchQueueName(*(a1 + 32), v15)}];
    v9 = [HAP2SerializedOperationQueue alloc];
    v10 = [*(a1 + 32) operationQueue];
    v11 = [(HAP2SerializedOperationQueue *)v9 initWithName:v8 operationQueue:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(a1 + 32) weakOperationQueuesByDeviceID];
    [v14 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
  }
}

- (void)removePublicKeyForAccessoryWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__HAP2AccessoryServerBrowser_removePublicKeyForAccessoryWithID_completion___block_invoke;
  v11[3] = &unk_2786D6BE0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [v8 addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__HAP2AccessoryServerBrowser_removePublicKeyForAccessoryWithID_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained storage];
    v5 = [MEMORY[0x277CBEB98] setWithObject:a1[4]];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__HAP2AccessoryServerBrowser_removePublicKeyForAccessoryWithID_completion___block_invoke_2;
    v8[3] = &unk_2786D4700;
    v9 = a1[4];
    v10 = a1[5];
    [v4 removeKeysForIdentifiers:v5 completion:v8];
  }

  else
  {
    v6 = a1[5];
    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    v6[2](v6, v7);
  }
}

void __75__HAP2AccessoryServerBrowser_removePublicKeyForAccessoryWithID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)savePublicKey:(id)a3 forAccessoryWithID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HAP2AccessoryServerBrowser_savePublicKey_forAccessoryWithID_completion___block_invoke;
  v15[3] = &unk_2786D6C08;
  objc_copyWeak(&v19, &location);
  v12 = v10;
  v18 = v12;
  v13 = v9;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  [v11 addBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __74__HAP2AccessoryServerBrowser_savePublicKey_forAccessoryWithID_completion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained storage];
    v5 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HAP2AccessoryServerBrowser_savePublicKey_forAccessoryWithID_completion___block_invoke_2;
    v10[3] = &unk_2786D4700;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    [v4 saveKeysForIdentifiers:v6 completion:v10];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74__HAP2AccessoryServerBrowser_savePublicKey_forAccessoryWithID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)retrieveLocalPairingIdentityForDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HAP2AccessoryServerBrowser_retrieveLocalPairingIdentityForDeviceID_completion___block_invoke;
  v11[3] = &unk_2786D6BE0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [v8 addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__HAP2AccessoryServerBrowser_retrieveLocalPairingIdentityForDeviceID_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (HAPIsHH2Enabled_onceToken != -1)
    {
      dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
    }

    if (HAPIsHH2Enabled_hh2Enabled == 1)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = [WeakRetained pairedAccessoryServers];
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
LABEL_7:
        v7 = 0;
        while (1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * v7);
          v9 = [v8 deviceID];
          v10 = [v9 isEqualToDeviceID:*(a1 + 32)];

          if (v10)
          {
            break;
          }

          if (v5 == ++v7)
          {
            v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v5)
            {
              goto LABEL_7;
            }

            goto LABEL_21;
          }
        }

        if ([v8 conformsToProtocol:&unk_283EB5AA8])
        {
          v12 = v8;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 controller];
        v15 = [v14 currentLocalPairingIdentity];

        if (v15)
        {
          (*(*(a1 + 40) + 16))();

          goto LABEL_23;
        }
      }

LABEL_21:
    }

    v3 = [WeakRetained storage];
    [v3 fetchControllerKeyForDeviceId:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v11 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (*(v11 + 16))(v11, 0, v3);
  }

LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryWithDeviceIDIsPaired:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HAP2AccessoryServerBrowser_accessoryWithDeviceIDIsPaired_completion___block_invoke;
  v11[3] = &unk_2786D6BE0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [v8 addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __71__HAP2AccessoryServerBrowser_accessoryWithDeviceIDIsPaired_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained storage];
    v5 = [MEMORY[0x277CBEB98] setWithObject:a1[4]];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__HAP2AccessoryServerBrowser_accessoryWithDeviceIDIsPaired_completion___block_invoke_2;
    v8[3] = &unk_2786D5D48;
    v9 = a1[4];
    v10 = a1[5];
    [v4 hasKeysForIdentifiers:v5 completion:v8];
  }

  else
  {
    v6 = a1[5];
    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    v6[2](v6, 0, v7);
  }
}

uint64_t __71__HAP2AccessoryServerBrowser_accessoryWithDeviceIDIsPaired_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  [v3 BOOLValue];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)stopConfirmingPairedAccessoryReachability
{
  objc_initWeak(&location, self);
  v3 = [(HAP2AccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HAP2AccessoryServerBrowser_stopConfirmingPairedAccessoryReachability__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [v3 addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__HAP2AccessoryServerBrowser_stopConfirmingPairedAccessoryReachability__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setConfirming:0];
    v2 = [v3 pairedAccessoryServers];
    [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_88];

    WeakRetained = v3;
  }
}

- (void)stopDiscovering
{
  v3 = [[HAP2AccessoryServerBrowserOperation alloc] initWithType:2];
  [(HAP2AccessoryServerBrowser *)self _enqueueOperation:v3];
}

- (void)startDiscovering
{
  v3 = [[HAP2AccessoryServerBrowserOperation alloc] initWithType:1];
  [(HAP2AccessoryServerBrowser *)self _enqueueOperation:v3];
}

- (NSArray)unpairedAccessoryServers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9123;
  v11 = __Block_byref_object_dispose__9124;
  v12 = 0;
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HAP2AccessoryServerBrowser_unpairedAccessoryServers__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__HAP2AccessoryServerBrowser_unpairedAccessoryServers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) liveUnpairedAccessoryServers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setConfirming:(BOOL)a3
{
  v5 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HAP2AccessoryServerBrowser_setConfirming___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  [v5 performWritingBlock:v6];
}

- (BOOL)isConfirming
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HAP2AccessoryServerBrowser_isConfirming__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performReadingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDiscovering:(BOOL)a3
{
  v5 = [(HAP2AccessoryServerBrowser *)self workQueue];
  [v5 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HAP2AccessoryServerBrowser_setDiscovering___block_invoke;
  v7[3] = &unk_2786D6768;
  v7[4] = self;
  v8 = a3;
  [v6 performWritingBlock:v7];
}

- (BOOL)isDiscovering
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HAP2AccessoryServerBrowser_isDiscovering__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performReadingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HAP2AccessoryServerBrowser_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerBrowserDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9123;
  v11 = __Block_byref_object_dispose__9124;
  v12 = 0;
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HAP2AccessoryServerBrowser_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__HAP2AccessoryServerBrowser_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (NSMutableArray)liveUnpairedAccessoryServers
{
  v3 = [(HAP2AccessoryServerBrowser *)self propertyLock];
  [v3 assertOwner];

  liveUnpairedAccessoryServers = self->_liveUnpairedAccessoryServers;

  return liveUnpairedAccessoryServers;
}

- (HAP2AccessoryServerBrowser)initWithCoordinators:(id)a3 storage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = HAP2AccessoryServerBrowser;
  v8 = [(HAP2AccessoryServerBrowser *)&v42 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storage, a4);
    [(HAP2Storage *)v9->_storage setDelegate:v9];
    v10 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerBrowser.propertyLock"];
    propertyLock = v9->_propertyLock;
    v9->_propertyLock = v10;

    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{HAPDispatchQueueName(v9, @"operationQueue"}];
    [(NSOperationQueue *)v12 setName:v13];

    [(NSOperationQueue *)v12 setQualityOfService:17];
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v12;
    v15 = v12;

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{HAPDispatchQueueName(v9, @"workQueue"}];
    v17 = [[HAP2SerializedOperationQueue alloc] initWithName:v16 operationQueue:v15];
    objc_storeStrong(&v9->_workQueue, v17);
    v18 = HAPDispatchQueueName(v9, @"dispatchWorkQueue");
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    dispatchWorkQueue = v9->_dispatchWorkQueue;
    v9->_dispatchWorkQueue = v20;

    v22 = [MEMORY[0x277CBEB18] array];
    liveUnpairedAccessoryServers = v9->_liveUnpairedAccessoryServers;
    v9->_liveUnpairedAccessoryServers = v22;

    v24 = [MEMORY[0x277CBEB18] array];
    livePairedAccessoryServers = v9->_livePairedAccessoryServers;
    v9->_livePairedAccessoryServers = v24;

    v26 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    weakOperationQueuesByDeviceID = v9->_weakOperationQueuesByDeviceID;
    v9->_weakOperationQueuesByDeviceID = v26;

    v28 = [MEMORY[0x277CBEB18] array];
    browserOperationQueue = v9->_browserOperationQueue;
    v9->_browserOperationQueue = v28;

    v9->_discovering = 0;
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v9 selector:sel_handleCurrentNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];

    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __59__HAP2AccessoryServerBrowser_initWithCoordinators_storage___block_invoke;
    v38[3] = &unk_2786D4550;
    v32 = v9;
    v39 = v32;
    v40 = v17;
    v41 = v31;
    v33 = v31;
    v34 = v17;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];
    v35 = [v33 copy];
    coordinatorInfo = v32->_coordinatorInfo;
    v32->_coordinatorInfo = v35;
  }

  return v9;
}

void __59__HAP2AccessoryServerBrowser_initWithCoordinators_storage___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 conformsToProtocol:&unk_283EAC2F8])
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v3;
  [v6 setBrowser:v4 operationQueue:v5];
  [v6 setDelegate:*(a1 + 32)];
  v7 = [[HAP2AccessoryServerBrowserCoordinatorInfo alloc] initWithCoordinator:v6];

  [*(a1 + 48) addObject:v7];
}

- (HAP2AccessoryServerBrowser)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end