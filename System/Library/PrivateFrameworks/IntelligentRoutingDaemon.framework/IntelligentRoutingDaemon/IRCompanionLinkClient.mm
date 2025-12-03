@interface IRCompanionLinkClient
- (IRCompanionLinkClient)initWithRapportProvider:(id)provider targetQueue:(id)queue;
- (IRRapportProvider)rapportProvider;
- (RPCompanionLinkClient)client;
- (int64_t)currentRssiThreshold;
- (unint64_t)currentControlFlags;
- (void)_didUpdateRapportDevices;
- (void)dealloc;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation IRCompanionLinkClient

- (IRCompanionLinkClient)initWithRapportProvider:(id)provider targetQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = IRCompanionLinkClient;
  v8 = [(IRCompanionLinkClient *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_rapportProvider, providerCopy);
    if (queueCopy)
    {
      v10 = queueCopy;
      dispatchQueue = v9->_dispatchQueue;
      v9->_dispatchQueue = v10;
    }

    else
    {
      dispatchQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("com.apple.intelligentroutingd.IRCompanionLinkClient", dispatchQueue);
      v13 = v9->_dispatchQueue;
      v9->_dispatchQueue = v12;
    }
  }

  return v9;
}

- (void)dealloc
{
  [(IRCompanionLinkClient *)self stopDiscovery];
  v3.receiver = self;
  v3.super_class = IRCompanionLinkClient;
  [(IRCompanionLinkClient *)&v3 dealloc];
}

- (RPCompanionLinkClient)client
{
  client = self->_client;
  if (!client)
  {
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    v5 = self->_client;
    self->_client = v4;

    dispatchQueue = [(IRCompanionLinkClient *)self dispatchQueue];

    if (dispatchQueue)
    {
      dispatchQueue2 = [(IRCompanionLinkClient *)self dispatchQueue];
      [(RPCompanionLinkClient *)self->_client setDispatchQueue:dispatchQueue2];
    }

    client = [(IRCompanionLinkClient *)self client];
    controlFlags = [client controlFlags];

    [(RPCompanionLinkClient *)self->_client setControlFlags:controlFlags | 0x1C04];
    [(RPCompanionLinkClient *)self->_client setRssiThreshold:-75];
    client = self->_client;
  }

  return client;
}

- (void)startDiscovery
{
  objc_initWeak(&location, self);
  client = [(IRCompanionLinkClient *)self client];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke;
  v19[3] = &unk_2797E11D8;
  objc_copyWeak(&v20, &location);
  [client setDeviceFoundHandler:v19];

  client2 = [(IRCompanionLinkClient *)self client];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke_20;
  v17[3] = &unk_2797E11D8;
  objc_copyWeak(&v18, &location);
  [client2 setDeviceLostHandler:v17];

  client3 = [(IRCompanionLinkClient *)self client];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke_21;
  v15[3] = &unk_2797E1200;
  objc_copyWeak(&v16, &location);
  [client3 setDeviceChangedHandler:v15];

  client4 = [(IRCompanionLinkClient *)self client];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke_23;
  v13[3] = &unk_2797E0C18;
  objc_copyWeak(&v14, &location);
  [client4 setInterruptionHandler:v13];

  client5 = [(IRCompanionLinkClient *)self client];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke_26;
  v11[3] = &unk_2797E0C18;
  objc_copyWeak(&v12, &location);
  [client5 setInvalidationHandler:v11];

  if (!self->_companionLinkClientActive)
  {
    client6 = [(IRCompanionLinkClient *)self client];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__IRCompanionLinkClient_startDiscovery__block_invoke_27;
    v9[3] = &unk_2797E1088;
    objc_copyWeak(&v10, &location);
    [client6 activateWithCompletion:v9];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v6);

    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __39__IRCompanionLinkClient_startDiscovery__block_invoke_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
    }

    [v5 _didUpdateRapportDevices];
  }
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v6);

    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __39__IRCompanionLinkClient_startDiscovery__block_invoke_20_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
    }

    [v5 _didUpdateRapportDevices];
  }
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v6);

    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __39__IRCompanionLinkClient_startDiscovery__block_invoke_21_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
    }

    [v5 _didUpdateRapportDevices];
  }
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v3);

    v4 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#companionlink-client, Rapport discovery companionLinkClient connection interrupted, reset knownDevices", v7, 2u);
    }

    v5 = [v2 rapportProvider];
    v6 = [MEMORY[0x277CBEB98] set];
    [v5 didUpdateRapportDevices:v6];
  }
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v3);

    v4 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#companionlink-client, Rapport discovery companionLinkClient connection invalidated, reset knownDevices", v7, 2u);
    }

    v5 = [v2 rapportProvider];
    v6 = [MEMORY[0x277CBEB98] set];
    [v5 didUpdateRapportDevices:v6];
  }
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_27(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    dispatch_assert_queue_V2(v6);

    if (v3)
    {
      v7 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#companionlink-client, Rapport discovery companionLinkClient failed to activate. Error - %@", &v10, 0xCu);
      }

      [v5 stopDiscovery];
    }

    else
    {
      v5[8] = 1;
      v8 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#companionlink-client, Rapport discovery client activated. Searching for Rapport devices...", &v10, 2u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateRapportDevices
{
  client = [(IRCompanionLinkClient *)self client];
  activeDevices = [client activeDevices];
  v5 = [activeDevices copy];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__IRCompanionLinkClient__didUpdateRapportDevices__block_invoke;
  v10[3] = &unk_2797E1228;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  rapportProvider = [(IRCompanionLinkClient *)self rapportProvider];
  v9 = [v7 copy];
  [rapportProvider didUpdateRapportDevices:v9];
}

void __49__IRCompanionLinkClient__didUpdateRapportDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 effectiveIdentifier];
  v5 = [v3 idsDeviceIdentifier];
  v6 = [v3 name];
  v7 = [v3 model];
  v8 = [v3 mediaRemoteIdentifier];
  v9 = [v3 accountID];
  v10 = [v3 mediaRouteIdentifier];

  v11 = [IRRapportDeviceDO rapportDeviceDOWithRapportEffectiveID:v4 idsID:v5 name:v6 deviceModel:v7 mediaRemoteIdentifier:v8 iCloudId:v9 mediaRouteIdentifier:v10];

  [*(a1 + 32) addObject:v11];
}

- (void)stopDiscovery
{
  client = [(IRCompanionLinkClient *)self client];
  [client setDeviceFoundHandler:0];

  client2 = [(IRCompanionLinkClient *)self client];
  [client2 setDeviceLostHandler:0];

  client3 = [(IRCompanionLinkClient *)self client];
  [client3 setInterruptionHandler:0];

  client4 = [(IRCompanionLinkClient *)self client];
  [client4 setInvalidationHandler:0];

  client5 = [(IRCompanionLinkClient *)self client];
  [client5 invalidate];

  [(IRCompanionLinkClient *)self setClient:0];
  self->_companionLinkClientActive = 0;
}

- (unint64_t)currentControlFlags
{
  client = [(IRCompanionLinkClient *)self client];
  controlFlags = [client controlFlags];

  return controlFlags;
}

- (int64_t)currentRssiThreshold
{
  client = [(IRCompanionLinkClient *)self client];
  rssiThreshold = [client rssiThreshold];

  return rssiThreshold;
}

- (IRRapportProvider)rapportProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_rapportProvider);

  return WeakRetained;
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25543D000, a2, a3, "#companionlink-client, Found device: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_20_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25543D000, a2, a3, "#companionlink-client, Lost device: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __39__IRCompanionLinkClient_startDiscovery__block_invoke_21_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25543D000, a2, a3, "#companionlink-client, Changed device: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end