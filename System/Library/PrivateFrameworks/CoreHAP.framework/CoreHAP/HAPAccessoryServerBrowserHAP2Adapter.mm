@interface HAPAccessoryServerBrowserHAP2Adapter
- (BOOL)isPaired:(id)a3;
- (HAPAccessoryServerBrowserHAP2Adapter)initWithHAP2Browser:(id)a3 queue:(id)a4;
- (HAPAccessoryServerBrowserHAP2Adapter)initWithQueue:(id)a3;
- (HAPAccessoryServerBrowserHAP2Adapter)initWithQueue:(id)a3 storage:(id)a4;
- (id)_getOrInsertServerWithDeviceID:(void *)a3 creationBlock:(_BYTE *)a4 created:;
- (id)delegate;
- (id)discoveredServers;
- (void)_handleLostAccessoryServer:(uint64_t)a1;
- (void)_notifyDelegateOfNewServer:(void *)a3 withCompletion:;
- (void)_setAdapterWithIdentifier:(uint64_t)a3 shouldBePaired:;
- (void)accessoryServerBrowser:(id)a3 didDiscoverPairedAccessoryServer:(id)a4 withCompletion:(id)a5;
- (void)accessoryServerBrowser:(id)a3 didDiscoverUnpairedAccessoryServer:(id)a4 withCompletion:(id)a5;
- (void)accessoryServerBrowser:(id)a3 didLosePairedAccessoryServer:(id)a4 error:(id)a5;
- (void)accessoryServerBrowser:(id)a3 didLoseUnpairedAccessoryServer:(id)a4 error:(id)a5;
- (void)accessoryServerBrowser:(id)a3 didStartDiscoveringWithError:(id)a4;
- (void)accessoryServerBrowser:(id)a3 didStopDiscoveringWithError:(id)a4;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startConfirmingPairedAccessoryReachability;
- (void)startDiscoveringAccessoryServers;
- (void)stopConfirmingPairedAccessoryReachability;
- (void)stopDiscoveringAccessoryServers;
@end

@implementation HAPAccessoryServerBrowserHAP2Adapter

- (void)startConfirmingPairedAccessoryReachability
{
  if (self)
  {
    self = self->_browser;
  }

  [(HAPAccessoryServerBrowserHAP2Adapter *)self startConfirmingPairedAccessoryReachability];
}

- (void)accessoryServerBrowser:(id)a3 didLosePairedAccessoryServer:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(HAPAccessoryServerBrowser *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didLosePairedAccessoryServer_error___block_invoke;
  v9[3] = &unk_2786D7050;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)_handleLostAccessoryServer:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [v3 deviceID];

    v6 = v5;
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__14027;
    v24 = __Block_byref_object_dispose__14028;
    v25 = 0;
    v8 = *(a1 + 88);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__HAPAccessoryServerBrowserHAP2Adapter__removeDiscoveredServerWithDeviceID___block_invoke;
    v17[3] = &unk_2786D4F60;
    v19 = &v20;
    v17[4] = a1;
    v9 = v6;
    v18 = v9;
    [v8 performWritingBlock:v17];

    v10 = v21[5];
    _Block_object_dispose(&v20, 8);

    if (v10)
    {
      v11 = [(HAPAccessoryServerBrowserHAP2Adapter *)a1 delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = *(a1 + 64);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __67__HAPAccessoryServerBrowserHAP2Adapter__handleLostAccessoryServer___block_invoke;
        v13[3] = &unk_2786D7078;
        v14 = v11;
        v15 = a1;
        v16 = v10;
        dispatch_async(v12, v13);
      }
    }
  }
}

- (id)delegate
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__14027;
    v9 = __Block_byref_object_dispose__14028;
    v10 = 0;
    v2 = a1[11];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __48__HAPAccessoryServerBrowserHAP2Adapter_delegate__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

uint64_t __48__HAPAccessoryServerBrowserHAP2Adapter_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __76__HAPAccessoryServerBrowserHAP2Adapter__removeDiscoveredServerWithDeviceID___block_invoke(uint64_t a1)
{
  v2 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

- (id)discoveredServers
{
  if (a1)
  {
    v2 = a1;
    [a1[11] assertOwner];
    a1 = v2[9];
    v1 = vars8;
  }

  return a1;
}

- (void)accessoryServerBrowser:(id)a3 didLoseUnpairedAccessoryServer:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(HAPAccessoryServerBrowser *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didLoseUnpairedAccessoryServer_error___block_invoke;
  v9[3] = &unk_2786D7050;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)accessoryServerBrowser:(id)a3 didStopDiscoveringWithError:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStopDiscoveringWithError___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __91__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStopDiscoveringWithError___block_invoke(uint64_t a1)
{
  v2 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 64);
    }

    else
    {
      v4 = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStopDiscoveringWithError___block_invoke_2;
    v11[3] = &unk_2786D7078;
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12 = v5;
    v13 = v6;
    v14 = v7;
    dispatch_async(v4, v11);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 workQueue];
    dispatch_assert_queue_V2(v9);

    v10 = v8[11];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__HAPAccessoryServerBrowserHAP2Adapter__clearDiscoveredServers__block_invoke;
    v15[3] = &unk_2786D6CA0;
    v15[4] = v8;
    [v10 performWritingBlock:v15];
  }
}

void __63__HAPAccessoryServerBrowserHAP2Adapter__clearDiscoveredServers__block_invoke(uint64_t a1)
{
  v1 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  [v1 removeAllObjects];
}

- (void)accessoryServerBrowser:(id)a3 didStartDiscoveringWithError:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStartDiscoveringWithError___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __92__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStartDiscoveringWithError___block_invoke(uint64_t a1)
{
  v2 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 64);
    }

    else
    {
      v4 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didStartDiscoveringWithError___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

- (void)accessoryServerBrowser:(id)a3 didDiscoverUnpairedAccessoryServer:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverUnpairedAccessoryServer_withCompletion___block_invoke;
  block[3] = &unk_2786D69E0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __113__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverUnpairedAccessoryServer_withCompletion___block_invoke(uint64_t a1)
{
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __113__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverUnpairedAccessoryServer_withCompletion___block_invoke_2;
  v9 = &unk_2786D4FD8;
  v10 = *(a1 + 32);
  v2 = MEMORY[0x231885210](&v6);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) deviceID];
  v5 = [(HAPAccessoryServerBrowserHAP2Adapter *)v3 _getOrInsertServerWithDeviceID:v4 creationBlock:v2 created:&v11];

  if (v11 == 1)
  {
    [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 40) _notifyDelegateOfNewServer:v5 withCompletion:*(a1 + 48)];
  }

  else
  {
    [v5 setUnpairedServer:*(a1 + 32)];
  }
}

HAPAccessoryServerHAP2Adapter *__113__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverUnpairedAccessoryServer_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = [[HAPAccessoryServerHAP2Adapter alloc] initWithUnpairedServer:*(a1 + 32)];

  return v1;
}

- (id)_getOrInsertServerWithDeviceID:(void *)a3 creationBlock:(_BYTE *)a4 created:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 workQueue];
    dispatch_assert_queue_V2(v9);

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14027;
    v28 = __Block_byref_object_dispose__14028;
    v29 = 0;
    v10 = a1[11];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__HAPAccessoryServerBrowserHAP2Adapter__getOrInsertServerWithDeviceID_creationBlock_created___block_invoke;
    v21[3] = &unk_2786D4F60;
    v23 = &v24;
    v21[4] = a1;
    v11 = v7;
    v22 = v11;
    [v10 performReadingBlock:v21];

    v12 = v25;
    if (v25[5])
    {
      *a4 = 0;
      v13 = v12[5];
    }

    else
    {
      v14 = v8[2](v8);
      v15 = v25[5];
      v25[5] = v14;

      v16 = a1[11];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__HAPAccessoryServerBrowserHAP2Adapter__getOrInsertServerWithDeviceID_creationBlock_created___block_invoke_2;
      v18[3] = &unk_2786D4F60;
      v18[4] = a1;
      v19 = v11;
      v20 = &v24;
      [v16 performWritingBlock:v18];

      *a4 = 1;
      v13 = v25[5];
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_notifyDelegateOfNewServer:(void *)a3 withCompletion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = [(HAPAccessoryServerBrowserHAP2Adapter *)a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = a1[8];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __82__HAPAccessoryServerBrowserHAP2Adapter__notifyDelegateOfNewServer_withCompletion___block_invoke;
      v10[3] = &unk_2786D66C8;
      v11 = v8;
      v12 = a1;
      v13 = v5;
      v14 = v6;
      dispatch_async(v9, v10);
    }
  }
}

void __82__HAPAccessoryServerBrowserHAP2Adapter__notifyDelegateOfNewServer_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) accessoryServerBrowser:*(a1 + 40) didFindAccessoryServer:*(a1 + 48) stateChanged:0 stateNumber:0];
  v2 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HAPAccessoryServerBrowserHAP2Adapter__notifyDelegateOfNewServer_withCompletion___block_invoke_2;
  block[3] = &unk_2786D6490;
  v4 = *(a1 + 56);
  dispatch_async(v2, block);
}

uint64_t __82__HAPAccessoryServerBrowserHAP2Adapter__notifyDelegateOfNewServer_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __93__HAPAccessoryServerBrowserHAP2Adapter__getOrInsertServerWithDeviceID_creationBlock_created___block_invoke(uint64_t a1)
{
  v5 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __93__HAPAccessoryServerBrowserHAP2Adapter__getOrInsertServerWithDeviceID_creationBlock_created___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)accessoryServerBrowser:(id)a3 didDiscoverPairedAccessoryServer:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverPairedAccessoryServer_withCompletion___block_invoke;
  block[3] = &unk_2786D69E0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __111__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverPairedAccessoryServer_withCompletion___block_invoke(uint64_t a1)
{
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __111__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverPairedAccessoryServer_withCompletion___block_invoke_2;
  v9 = &unk_2786D4FD8;
  v10 = *(a1 + 32);
  v2 = MEMORY[0x231885210](&v6);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) deviceID];
  v5 = [(HAPAccessoryServerBrowserHAP2Adapter *)v3 _getOrInsertServerWithDeviceID:v4 creationBlock:v2 created:&v11];

  if (v11 == 1)
  {
    [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 40) _notifyDelegateOfNewServer:v5 withCompletion:*(a1 + 48)];
  }

  else
  {
    [v5 setPairedServer:*(a1 + 32)];
  }
}

HAPAccessoryServerHAP2Adapter *__111__HAPAccessoryServerBrowserHAP2Adapter_accessoryServerBrowser_didDiscoverPairedAccessoryServer_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = [[HAPAccessoryServerHAP2Adapter alloc] initWithPairedServer:*(a1 + 32)];

  return v1;
}

- (void)_setAdapterWithIdentifier:(uint64_t)a3 shouldBePaired:
{
  v5 = a2;
  if (a1)
  {
    v6 = [[HAPDeviceID alloc] initWithDeviceIDString:v5];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__14027;
    v16 = __Block_byref_object_dispose__14028;
    v17 = 0;
    v7 = *(a1 + 88);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__HAPAccessoryServerBrowserHAP2Adapter__setAdapterWithIdentifier_shouldBePaired___block_invoke;
    v9[3] = &unk_2786D4F60;
    v11 = &v12;
    v9[4] = a1;
    v8 = v6;
    v10 = v8;
    [v7 performReadingBlock:v9];

    [v13[5] setShouldBePaired:a3];
    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __81__HAPAccessoryServerBrowserHAP2Adapter__setAdapterWithIdentifier_shouldBePaired___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isPaired:(id)a3
{
  v4 = a3;
  v5 = [[HAPDeviceID alloc] initWithDeviceIDString:v4];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__14027;
  v33 = __Block_byref_object_dispose__14028;
  v34 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7 = propertyLock;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__HAPAccessoryServerBrowserHAP2Adapter_isPaired___block_invoke;
  v26[3] = &unk_2786D4F60;
  v28 = &v29;
  v26[4] = self;
  v8 = v5;
  v27 = v8;
  [(HAP2PropertyLock *)v7 performReadingBlock:v26];

  v9 = v30[5];
  if (v9)
  {
    v10 = [v9 isPaired];
  }

  else
  {
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    if (self)
    {
      browser = self->_browser;
    }

    else
    {
      browser = 0;
    }

    v13 = browser;
    v14 = [(HAP2AccessoryServerBrowserPrivate *)v13 storage];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__HAPAccessoryServerBrowserHAP2Adapter_isPaired___block_invoke_2;
    v18[3] = &unk_2786D4FB0;
    v21 = &v22;
    v19 = v8;
    v16 = v11;
    v20 = v16;
    [v14 hasKeysForIdentifiers:v15 completion:v18];

    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v29, 8);
  return v10 & 1;
}

uint64_t __49__HAPAccessoryServerBrowserHAP2Adapter_isPaired___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __49__HAPAccessoryServerBrowserHAP2Adapter_isPaired___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  *(*(a1[6] + 8) + 24) = [v3 BOOLValue];

  v4 = a1[5];

  dispatch_group_leave(v4);
}

- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__HAPAccessoryServerBrowserHAP2Adapter_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  block[3] = &unk_2786D69E0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __107__HAPAccessoryServerBrowserHAP2Adapter_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[HAPDeviceID alloc] initWithDeviceIDString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 80);
  }

  else
  {
    v4 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HAPAccessoryServerBrowserHAP2Adapter_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_2786D4F88;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  [v4 accessoryWithDeviceIDIsPaired:v2 completion:v7];
}

void __107__HAPAccessoryServerBrowserHAP2Adapter_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke_2(void *a1, unsigned int a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a1[4];
  if (v6)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__14027;
    v27 = __Block_byref_object_dispose__14028;
    v28 = 0;
    v7 = *(v6 + 88);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__HAPAccessoryServerBrowserHAP2Adapter_accessoryServers__block_invoke;
    v22[3] = &unk_2786D6E60;
    v22[4] = v6;
    v22[5] = &v23;
    [v7 performReadingBlock:{v22, v18}];

    v8 = v24[5];
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = a1[5];
        v15 = HMFEqualObjects();

        if (v15)
        {
          v9 = v12;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  (*(a1[6] + 16))(a1[6], v16, v9);

  v17 = *MEMORY[0x277D85DE8];
}

void __56__HAPAccessoryServerBrowserHAP2Adapter_accessoryServers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v7 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  v3 = [v7 allValues];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) delegate];
  if (v2)
  {
    v3 = [[HAPDeviceID alloc] initWithDeviceIDString:*(a1 + 40)];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__14027;
    v29 = __Block_byref_object_dispose__14028;
    v30 = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[11];
    }

    v5 = v4;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke_2;
    v22[3] = &unk_2786D4F60;
    v6 = *(a1 + 32);
    v24 = &v25;
    v22[4] = v6;
    v7 = v3;
    v23 = v7;
    [v5 performReadingBlock:v22];

    v8 = *(a1 + 32);
    if (v26[5])
    {
      if (v8)
      {
        v9 = *(v8 + 64);
      }

      else
      {
        v9 = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke_3;
      block[3] = &unk_2786D4F60;
      v10 = v21;
      v11 = v2;
      v12 = *(a1 + 32);
      v21[0] = v11;
      v21[1] = v12;
      v21[2] = &v25;
      dispatch_async(v9, block);
    }

    else
    {
      if (v8)
      {
        v13 = *(v8 + 64);
      }

      else
      {
        v13 = 0;
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke_4;
      v17[3] = &unk_2786D7078;
      v10 = v18;
      v14 = v2;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18[0] = v14;
      v18[1] = v15;
      v19 = v16;
      dispatch_async(v13, v17);
    }

    _Block_object_dispose(&v25, 8);
  }
}

void __78__HAPAccessoryServerBrowserHAP2Adapter_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = [(HAPAccessoryServerBrowserHAP2Adapter *)*(a1 + 32) discoveredServers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)stopConfirmingPairedAccessoryReachability
{
  if (self)
  {
    self = self->_browser;
  }

  [(HAPAccessoryServerBrowserHAP2Adapter *)self stopConfirmingPairedAccessoryReachability];
}

- (void)stopDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HAPAccessoryServerBrowserHAP2Adapter_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __71__HAPAccessoryServerBrowserHAP2Adapter_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 stopDiscovering];
}

- (void)startDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HAPAccessoryServerBrowserHAP2Adapter_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __72__HAPAccessoryServerBrowserHAP2Adapter_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 startDiscovering];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HAPAccessoryServerBrowserHAP2Adapter_setDelegate_queue___block_invoke;
  v11[3] = &unk_2786D7078;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v11];
}

void __58__HAPAccessoryServerBrowserHAP2Adapter_setDelegate_queue___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 64);

  objc_storeStrong(v3, v2);
}

- (HAPAccessoryServerBrowserHAP2Adapter)initWithHAP2Browser:(id)a3 queue:(id)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = HAPAccessoryServerBrowserHAP2Adapter;
  v8 = [(HAPAccessoryServerBrowser *)&v15 initWithQueue:a4];
  if (v8)
  {
    [v7 setDelegate:v8];
    objc_storeStrong(&v8->_browser, a3);
    v9 = [HAP2PropertyLock lockWithName:@"HAPAccessoryServerBrowserHAP2Adapter.propertyLock"];
    propertyLock = v8->_propertyLock;
    v8->_propertyLock = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    discoveredServers = v8->_discoveredServers;
    v8->_discoveredServers = v11;

    v13 = v8;
  }

  return v8;
}

- (HAPAccessoryServerBrowserHAP2Adapter)initWithQueue:(id)a3 storage:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [HAP2AccessoryServerBrowser alloc];
  objc_opt_self();
  v9 = objc_opt_new();
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v11 = [(HAP2AccessoryServerBrowser *)v8 initWithCoordinators:v10 storage:v6];
  v12 = [(HAPAccessoryServerBrowserHAP2Adapter *)self initWithHAP2Browser:v11 queue:v7];

  if (v12)
  {
    v13 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HAPAccessoryServerBrowserHAP2Adapter)initWithQueue:(id)a3
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

@end