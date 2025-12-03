@interface HAP2AccessoryServerCoordinator
- (BOOL)isDiscovering;
- (BOOL)isStartDiscoveringPending;
- (BOOL)isStopDiscoveringPending;
- (HAP2AccessoryServerBrowserPrivate)browser;
- (HAP2AccessoryServerCoordinator)initWithDiscovery:(id)discovery pairingFactory:(id)factory transportFactory:(id)transportFactory secureTransportFactory:(id)secureTransportFactory encodingFactory:(id)encodingFactory controllerFactory:(id)controllerFactory;
- (HAP2AccessoryServerCoordinatorDelegate)delegate;
- (NSMutableDictionary)discoveredAccessoryServers;
- (id)_createMetadataForAccessoryServerWithAccessoryInfo:(id)info;
- (id)_createPairedAccessoryServerWithAccessoryInfo:(id)info transport:(id)transport operationQueue:(id)queue;
- (id)_createUnpairedAccessoryServerWithAccessoryInfo:(id)info transport:(id)transport operationQueue:(id)queue;
- (void)_didDeterminePairingStateForAccessory:(id)accessory isPaired:(BOOL)paired completion:(id)completion;
- (void)_didDiscoverAccessory:(id)accessory completion:(id)completion;
- (void)_didDiscoverPairedAccessory:(id)accessory transport:(id)transport operationQueue:(id)queue completion:(id)completion;
- (void)_didDiscoverUnpairedAccessory:(id)accessory transport:(id)transport operationQueue:(id)queue completion:(id)completion;
- (void)_didLoseAccessory:(id)accessory error:(id)error;
- (void)_didStartDiscoveringWithError:(id)error;
- (void)_didStopDiscoveringWithError:(id)error;
- (void)_startDiscovering;
- (void)_stopDiscovering;
- (void)discovery:(id)discovery didDiscoverAccessory:(id)accessory;
- (void)discovery:(id)discovery didLoseAccessory:(id)accessory error:(id)error;
- (void)discovery:(id)discovery didStartDiscoveringWithError:(id)error;
- (void)discovery:(id)discovery didStopDiscoveringWithError:(id)error;
- (void)resurfaceDiscoveryInfoForDeviceID:(id)d;
- (void)setBrowser:(id)browser operationQueue:(id)queue;
- (void)setDelegate:(id)delegate;
- (void)setDiscovering:(BOOL)discovering;
- (void)setStartDiscoveringPending:(BOOL)pending;
- (void)setStopDiscoveringPending:(BOOL)pending;
- (void)startDiscovering;
- (void)stopDiscovering;
@end

@implementation HAP2AccessoryServerCoordinator

- (HAP2AccessoryServerBrowserPrivate)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)_createPairedAccessoryServerWithAccessoryInfo:(id)info transport:(id)transport operationQueue:(id)queue
{
  v39 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  transportCopy = transport;
  queueCopy = queue;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (transportCopy)
  {
    v12 = [(HAP2AccessoryServerCoordinator *)self _createMetadataForAccessoryServerWithAccessoryInfo:infoCopy];
    if (v12)
    {
      browser = [(HAP2AccessoryServerCoordinator *)self browser];
      protocolVersion = [v12 protocolVersion];
      v15 = [transportCopy protocolFeaturesForVersion:protocolVersion];

      if (v15)
      {
        encodingFactory = [(HAP2AccessoryServerCoordinator *)self encodingFactory];
        v17 = [encodingFactory createEncodingWithOperationQueue:queueCopy accessoryServerMetadata:v12 encodingFeatures:v15];

        secureTransportFactory = [(HAP2AccessoryServerCoordinator *)self secureTransportFactory];
        v19 = [secureTransportFactory createSecureTransportWithTransport:transportCopy isPaired:1 encryptedSession:0];

        controllerFactory = [(HAP2AccessoryServerCoordinator *)self controllerFactory];
        v21 = [controllerFactory createControllerWithEncoding:v17 secureTransport:v19 operationQueue:queueCopy];

        v22 = [HAP2AccessoryServer pairedAccessoryServerWithMetadata:v12 browser:browser controller:v21 operationQueue:queueCopy];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v26 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v29 = v26;
          name = [v12 name];
          deviceID = [v12 deviceID];
          protocolVersion2 = [v12 protocolVersion];
          v33 = 138412802;
          v34 = name;
          v35 = 2112;
          v36 = deviceID;
          v37 = 2112;
          v38 = protocolVersion2;
          _os_log_error_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "Coordinator: Paired server [%@/%@] has invalid or unexpected version %@", &v33, 0x20u);
        }

        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v23 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      deviceID2 = [infoCopy deviceID];
      v33 = 138412290;
      v34 = deviceID2;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEFAULT, "Coordinator: Ignoring discovered paired accessory %@ with no transport", &v33, 0xCu);
    }

    v22 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_createUnpairedAccessoryServerWithAccessoryInfo:(id)info transport:(id)transport operationQueue:(id)queue
{
  v44 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  transportCopy = transport;
  queueCopy = queue;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (transportCopy)
  {
    v12 = [(HAP2AccessoryServerCoordinator *)self _createMetadataForAccessoryServerWithAccessoryInfo:infoCopy];
    if (v12)
    {
      browser = [(HAP2AccessoryServerCoordinator *)self browser];
      protocolVersion = [v12 protocolVersion];
      v15 = [transportCopy protocolFeaturesForVersion:protocolVersion];

      if (v15)
      {
        encodingFactory = [(HAP2AccessoryServerCoordinator *)self encodingFactory];
        v17 = [encodingFactory createEncodingWithOperationQueue:queueCopy accessoryServerMetadata:v12 encodingFeatures:v15];

        [(HAP2AccessoryServerCoordinator *)self secureTransportFactory];
        v18 = v37 = browser;
        v19 = [v18 createSecureTransportWithTransport:transportCopy isPaired:0 encryptedSession:0];

        controllerFactory = [(HAP2AccessoryServerCoordinator *)self controllerFactory];
        v21 = [controllerFactory createControllerWithEncoding:v17 secureTransport:v19 operationQueue:queueCopy];

        pairingFactory = [(HAP2AccessoryServerCoordinator *)self pairingFactory];
        secureTransportFactory = [(HAP2AccessoryServerCoordinator *)self secureTransportFactory];
        v24 = [pairingFactory createPairingDriverWithAccessoryInfo:infoCopy transport:transportCopy secureTransportFactory:secureTransportFactory encoding:v17 operationQueue:queueCopy];

        browser = v37;
        v25 = [HAP2AccessoryServer unpairedAccessoryServerWithMetadata:v12 browser:v37 controller:v21 pairingDriver:v24 operationQueue:queueCopy];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v29 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v32 = v29;
          name = [v12 name];
          deviceID = [v12 deviceID];
          [v12 protocolVersion];
          v36 = v35 = browser;
          *buf = 138412802;
          v39 = name;
          v40 = 2112;
          v41 = deviceID;
          v42 = 2112;
          v43 = v36;
          _os_log_error_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "Coordinator: Unpaired server [%@/%@] has invalid or unexpected version %@", buf, 0x20u);

          browser = v35;
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v26 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      deviceID2 = [infoCopy deviceID];
      *buf = 138412290;
      v39 = deviceID2;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "Coordinator: Ignoring discovered unpaired accessory %@ with no transport", buf, 0xCu);
    }

    v25 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_createMetadataForAccessoryServerWithAccessoryInfo:(id)info
{
  infoCopy = info;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  objc_opt_class();
  v21 = infoCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = infoCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v20 = ([v7 status] & 1) == 0;
  v8 = [HAP2AccessoryServerMetadata alloc];
  deviceID = [v7 deviceID];
  protocolVersion = [v7 protocolVersion];
  name = [v7 name];
  model = [v7 model];
  category = [v7 category];
  stateNumber = [v7 stateNumber];
  configurationNumber = [v7 configurationNumber];
  setupHash = [v7 setupHash];

  WORD1(v19) = configurationNumber;
  LOWORD(v19) = stateNumber;
  v17 = [(HAP2AccessoryServerMetadata *)v8 initWithDeviceID:deviceID hasPairings:v20 protocolVersion:protocolVersion name:name model:model category:category stateNumber:v19 configNumber:setupHash setupHash:?];

  return v17;
}

- (void)_didDiscoverPairedAccessory:(id)accessory transport:(id)transport operationQueue:(id)queue completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  transportCopy = transport;
  queueCopy = queue;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
  if (delegate)
  {
    v16 = [(HAP2AccessoryServerCoordinator *)self _createPairedAccessoryServerWithAccessoryInfo:accessoryCopy transport:transportCopy operationQueue:queueCopy];
    if (v16)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v17 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "Coordinator: Discovered paired accessory %@", &v22, 0xCu);
      }

      [delegate coordinator:self didCreatePairedAccessoryServer:v16];
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v18 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v20 = v18;
      deviceID = [accessoryCopy deviceID];
      v22 = 138412290;
      v23 = deviceID;
      _os_log_debug_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered paired accessory %@ with no delegate", &v22, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_didDiscoverUnpairedAccessory:(id)accessory transport:(id)transport operationQueue:(id)queue completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  transportCopy = transport;
  queueCopy = queue;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
  if (delegate)
  {
    v16 = [(HAP2AccessoryServerCoordinator *)self _createUnpairedAccessoryServerWithAccessoryInfo:accessoryCopy transport:transportCopy operationQueue:queueCopy];
    if (v16)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v17 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "Coordinator: Discovered unpaired accessory %@", &v22, 0xCu);
      }

      [delegate coordinator:self didCreateUnpairedAccessoryServer:v16];
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v18 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v20 = v18;
      deviceID = [accessoryCopy deviceID];
      v22 = 138412290;
      v23 = deviceID;
      _os_log_debug_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered unpaired accessory %@ with no delegate", &v22, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_didLoseAccessory:(id)accessory error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v17 = v9;
    [(HAP2AccessoryServerCoordinator *)self isDiscovering];
    v18 = HMFBooleanToString();
    v21 = 138412802;
    v22 = accessoryCopy;
    v23 = 2112;
    v24 = errorCopy;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "Coordinator: lost accessory: %@ with error: %@ and isDiscovering: %@", &v21, 0x20u);
  }

  if ([(HAP2AccessoryServerCoordinator *)self isDiscovering])
  {
    discoveredAccessoryServers = [(HAP2AccessoryServerCoordinator *)self discoveredAccessoryServers];
    deviceID = [accessoryCopy deviceID];
    [discoveredAccessoryServers removeObjectForKey:deviceID];

    delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
    v13 = delegate;
    if (delegate)
    {
      [delegate coordinator:self didLoseAccessory:accessoryCopy error:errorCopy];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v15 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        v19 = v15;
        deviceID2 = [accessoryCopy deviceID];
        v21 = 138412290;
        v22 = deviceID2;
        _os_log_debug_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring lost unpaired accessory %@ with no delegate", &v21, 0xCu);
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring lost accessory while not discovering", &v21, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_didDeterminePairingStateForAccessory:(id)accessory isPaired:(BOOL)paired completion:(id)completion
{
  pairedCopy = paired;
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  deviceID = [accessoryCopy deviceID];
  if ([(HAP2AccessoryServerCoordinator *)self isDiscovering])
  {
    browser = [(HAP2AccessoryServerCoordinator *)self browser];
    v13 = [browser operationQueueForDeviceID:deviceID];
    transportFactory = [(HAP2AccessoryServerCoordinator *)self transportFactory];
    discovery = [(HAP2AccessoryServerCoordinator *)self discovery];
    v16 = [transportFactory createTransportWithAccessoryInfo:accessoryCopy discovery:discovery];

    if (pairedCopy)
    {
      [(HAP2AccessoryServerCoordinator *)self _didDiscoverPairedAccessory:accessoryCopy transport:v16 operationQueue:v13 completion:completionCopy];
    }

    else
    {
      [(HAP2AccessoryServerCoordinator *)self _didDiscoverUnpairedAccessory:accessoryCopy transport:v16 operationQueue:v13 completion:completionCopy];
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = deviceID;
      _os_log_debug_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered accessory %@ while not discovering", &v19, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_didDiscoverAccessory:(id)accessory completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([(HAP2AccessoryServerCoordinator *)self isDiscovering])
  {
    delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
    if (delegate)
    {
      browser = [(HAP2AccessoryServerCoordinator *)self browser];
      if (browser)
      {
        deviceID = [accessoryCopy deviceID];
        discoveredAccessoryServers = [(HAP2AccessoryServerCoordinator *)self discoveredAccessoryServers];
        [discoveredAccessoryServers setObject:accessoryCopy forKeyedSubscript:deviceID];

        objc_initWeak(location, self);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __67__HAP2AccessoryServerCoordinator__didDiscoverAccessory_completion___block_invoke;
        v24[3] = &unk_2786D25F8;
        v13 = deviceID;
        v25 = v13;
        v27 = completionCopy;
        objc_copyWeak(&v28, location);
        v26 = accessoryCopy;
        [browser accessoryWithDeviceIDIsPaired:v13 completion:v24];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v16 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
        {
          v22 = v16;
          deviceID2 = [accessoryCopy deviceID];
          LODWORD(location[0]) = 138412290;
          *(location + 4) = deviceID2;
          _os_log_debug_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered accessory %@ after browser has died", location, 0xCu);
        }

        completionCopy[2](completionCopy);
      }
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v15 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        v20 = v15;
        deviceID3 = [accessoryCopy deviceID];
        LODWORD(location[0]) = 138412290;
        *(location + 4) = deviceID3;
        _os_log_debug_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered accessory %@ with no delegate", location, 0xCu);
      }

      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v18 = v14;
      deviceID4 = [accessoryCopy deviceID];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = deviceID4;
      _os_log_debug_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "Coordinator: Ignoring discovered accessory %@ while not discovering", location, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __67__HAP2AccessoryServerCoordinator__didDiscoverAccessory_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Coordinator: Failed to determine if discovered accessory %@ is paired: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = [WeakRetained operationQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__HAP2AccessoryServerCoordinator__didDiscoverAccessory_completion___block_invoke_13;
    v11[3] = &unk_2786D25D0;
    objc_copyWeak(&v14, (a1 + 56));
    v12 = *(a1 + 40);
    v15 = a2;
    v13 = *(a1 + 48);
    [v8 addBlock:v11];

    objc_destroyWeak(&v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __67__HAP2AccessoryServerCoordinator__didDiscoverAccessory_completion___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didDeterminePairingStateForAccessory:*(a1 + 32) isPaired:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)_didStopDiscoveringWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerCoordinator *)self setStopDiscoveringPending:0];
  [(HAP2AccessoryServerCoordinator *)self setDiscovering:0];
  discoveredAccessoryServers = [(HAP2AccessoryServerCoordinator *)self discoveredAccessoryServers];
  [discoveredAccessoryServers removeAllObjects];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v7 = hap2Log_accessory;
  if (errorCopy)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "Coordinator: Failed to stop discovering: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "Coordinator: Stopped discovering", &v10, 2u);
  }

  delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate coordinator:self didStopDiscoveringWithError:errorCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_didStartDiscoveringWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerCoordinator *)self setStartDiscoveringPending:0];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (errorCopy)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = errorCopy;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Coordinator: Failed to start discovering: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "Coordinator: Started discovering", &v9, 2u);
  }

  [(HAP2AccessoryServerCoordinator *)self setDiscovering:errorCopy == 0];
  delegate = [(HAP2AccessoryServerCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate coordinator:self didStartDiscoveringWithError:errorCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopDiscovering
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([(HAP2AccessoryServerCoordinator *)self isDiscovering])
  {
    isStopDiscoveringPending = [(HAP2AccessoryServerCoordinator *)self isStopDiscoveringPending];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (isStopDiscoveringPending)
    {
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v12 = 0;
      v6 = "Coordinator: stopDiscovering called while a previous call is pending";
      v7 = &v12;
      v8 = v5;
      goto LABEL_11;
    }

    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Coordinator: Stopping discovery", v11, 2u);
    }

    [(HAP2AccessoryServerCoordinator *)self setStopDiscoveringPending:1];
    discovery = [(HAP2AccessoryServerCoordinator *)self discovery];
    [discovery stopDiscovering];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Coordinator: stopDiscovering called while not discovering";
      v7 = buf;
      v8 = v9;
LABEL_11:
      _os_log_debug_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, v6, v7, 2u);
    }
  }
}

- (void)_startDiscovering
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([(HAP2AccessoryServerCoordinator *)self isDiscovering])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      v5 = "Coordinator: startDiscovering called while already discovering";
      v6 = &v13;
      v7 = v4;
LABEL_11:
      _os_log_debug_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
    }
  }

  else
  {
    isStartDiscoveringPending = [(HAP2AccessoryServerCoordinator *)self isStartDiscoveringPending];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (isStartDiscoveringPending)
    {
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 0;
      v5 = "Coordinator: startDiscovering called while a previous call is pending";
      v6 = buf;
      v7 = v9;
      goto LABEL_11;
    }

    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "Coordinator: Starting discovery", v11, 2u);
    }

    [(HAP2AccessoryServerCoordinator *)self setStartDiscoveringPending:1];
    discovery = [(HAP2AccessoryServerCoordinator *)self discovery];
    [discovery startDiscovering];
  }
}

- (void)discovery:(id)discovery didLoseAccessory:(id)accessory error:(id)error
{
  discoveryCopy = discovery;
  accessoryCopy = accessory;
  errorCopy = error;
  discovery = [(HAP2AccessoryServerCoordinator *)self discovery];

  if (discovery == discoveryCopy)
  {
    objc_initWeak(&location, self);
    localOperationQueue = [(HAP2AccessoryServerCoordinator *)self localOperationQueue];
    v13 = MEMORY[0x277CCA8C8];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HAP2AccessoryServerCoordinator_discovery_didLoseAccessory_error___block_invoke;
    v18 = &unk_2786D6F50;
    objc_copyWeak(&v21, &location);
    v19 = accessoryCopy;
    v20 = errorCopy;
    v14 = [v13 blockOperationWithBlock:&v15];
    [localOperationQueue addOperation:{v14, v15, v16, v17, v18}];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __67__HAP2AccessoryServerCoordinator_discovery_didLoseAccessory_error___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HAP2AccessoryServerCoordinator_discovery_didLoseAccessory_error___block_invoke_2;
  v4[3] = &unk_2786D6F50;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  [v3 addBlock:v4];

  objc_destroyWeak(&v7);
}

void __67__HAP2AccessoryServerCoordinator_discovery_didLoseAccessory_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoseAccessory:*(a1 + 32) error:*(a1 + 40)];
}

- (void)discovery:(id)discovery didDiscoverAccessory:(id)accessory
{
  discoveryCopy = discovery;
  accessoryCopy = accessory;
  discovery = [(HAP2AccessoryServerCoordinator *)self discovery];

  if (discovery == discoveryCopy)
  {
    objc_initWeak(&location, self);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__374;
    v24 = __Block_byref_object_dispose__375;
    v25 = 0;
    v9 = [HAP2AsynchronousBlockOperation alloc];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __65__HAP2AccessoryServerCoordinator_discovery_didDiscoverAccessory___block_invoke;
    v16 = &unk_2786D5FC0;
    objc_copyWeak(&v19, &location);
    v17 = accessoryCopy;
    v18 = &v20;
    v10 = [(HAP2AsynchronousBlockOperation *)v9 initWithBlock:&v13];
    v11 = v21[5];
    v21[5] = v10;

    v12 = [(HAP2AccessoryServerCoordinator *)self localOperationQueue:v13];
    [v12 addOperation:v21[5]];

    _Block_object_dispose(&v20, 8);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __65__HAP2AccessoryServerCoordinator_discovery_didDiscoverAccessory___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HAP2AccessoryServerCoordinator_discovery_didDiscoverAccessory___block_invoke_2;
  v6[3] = &unk_2786D5FC0;
  objc_copyWeak(&v9, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 addBlock:v6];

  objc_destroyWeak(&v9);
}

void __65__HAP2AccessoryServerCoordinator_discovery_didDiscoverAccessory___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HAP2AccessoryServerCoordinator_discovery_didDiscoverAccessory___block_invoke_3;
  v4[3] = &unk_2786D3B88;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [WeakRetained _didDiscoverAccessory:v3 completion:v4];
}

- (void)discovery:(id)discovery didStopDiscoveringWithError:(id)error
{
  discoveryCopy = discovery;
  errorCopy = error;
  discovery = [(HAP2AccessoryServerCoordinator *)self discovery];

  if (discovery == discoveryCopy)
  {
    objc_initWeak(&location, self);
    operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__HAP2AccessoryServerCoordinator_discovery_didStopDiscoveringWithError___block_invoke;
    v10[3] = &unk_2786D6EB0;
    objc_copyWeak(&v12, &location);
    v11 = errorCopy;
    [operationQueue addBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __72__HAP2AccessoryServerCoordinator_discovery_didStopDiscoveringWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didStopDiscoveringWithError:*(a1 + 32)];
}

- (void)discovery:(id)discovery didStartDiscoveringWithError:(id)error
{
  discoveryCopy = discovery;
  errorCopy = error;
  discovery = [(HAP2AccessoryServerCoordinator *)self discovery];

  if (discovery == discoveryCopy)
  {
    objc_initWeak(&location, self);
    operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__HAP2AccessoryServerCoordinator_discovery_didStartDiscoveringWithError___block_invoke;
    v10[3] = &unk_2786D6EB0;
    objc_copyWeak(&v12, &location);
    v11 = errorCopy;
    [operationQueue addBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __73__HAP2AccessoryServerCoordinator_discovery_didStartDiscoveringWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didStartDiscoveringWithError:*(a1 + 32)];
}

- (void)resurfaceDiscoveryInfoForDeviceID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__374;
  v21 = __Block_byref_object_dispose__375;
  v22 = 0;
  v5 = [HAP2AsynchronousBlockOperation alloc];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__HAP2AccessoryServerCoordinator_resurfaceDiscoveryInfoForDeviceID___block_invoke;
  v13 = &unk_2786D5FC0;
  objc_copyWeak(&v16, &location);
  v6 = dCopy;
  v14 = v6;
  v15 = &v17;
  v7 = [(HAP2AsynchronousBlockOperation *)v5 initWithBlock:&v10];
  v8 = v18[5];
  v18[5] = v7;

  v9 = [(HAP2AccessoryServerCoordinator *)self localOperationQueue:v10];
  [v9 addOperation:v18[5]];

  _Block_object_dispose(&v17, 8);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __68__HAP2AccessoryServerCoordinator_resurfaceDiscoveryInfoForDeviceID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HAP2AccessoryServerCoordinator_resurfaceDiscoveryInfoForDeviceID___block_invoke_2;
  v6[3] = &unk_2786D5FC0;
  objc_copyWeak(&v9, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 addBlock:v6];

  objc_destroyWeak(&v9);
}

void __68__HAP2AccessoryServerCoordinator_resurfaceDiscoveryInfoForDeviceID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained discoveredAccessoryServers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__HAP2AccessoryServerCoordinator_resurfaceDiscoveryInfoForDeviceID___block_invoke_3;
    v5[3] = &unk_2786D3B88;
    v5[4] = *(a1 + 40);
    [WeakRetained _didDiscoverAccessory:v4 completion:v5];
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) finish];
  }
}

- (void)stopDiscovering
{
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HAP2AccessoryServerCoordinator_stopDiscovering__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [operationQueue addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__HAP2AccessoryServerCoordinator_stopDiscovering__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopDiscovering];
}

- (void)startDiscovering
{
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HAP2AccessoryServerCoordinator_startDiscovering__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [operationQueue addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__HAP2AccessoryServerCoordinator_startDiscovering__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDiscovering];
}

- (NSMutableDictionary)discoveredAccessoryServers
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  discoveredAccessoryServers = self->_discoveredAccessoryServers;

  return discoveredAccessoryServers;
}

- (void)setStopDiscoveringPending:(BOOL)pending
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  self->_stopDiscoveringPending = pending;
}

- (BOOL)isStopDiscoveringPending
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  return self->_stopDiscoveringPending;
}

- (void)setStartDiscoveringPending:(BOOL)pending
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  self->_startDiscoveringPending = pending;
}

- (BOOL)isStartDiscoveringPending
{
  operationQueue = [(HAP2AccessoryServerCoordinator *)self operationQueue];
  [operationQueue assertCurrentQueue];

  return self->_startDiscoveringPending;
}

- (void)setDiscovering:(BOOL)discovering
{
  propertyLock = [(HAP2AccessoryServerCoordinator *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HAP2AccessoryServerCoordinator_setDiscovering___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  discoveringCopy = discovering;
  [propertyLock performWritingBlock:v6];
}

- (BOOL)isDiscovering
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyLock = [(HAP2AccessoryServerCoordinator *)self propertyLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HAP2AccessoryServerCoordinator_isDiscovering__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [propertyLock performReadingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  propertyLock = [(HAP2AccessoryServerCoordinator *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HAP2AccessoryServerCoordinator_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [propertyLock performWritingBlock:v7];
}

- (HAP2AccessoryServerCoordinatorDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__374;
  v11 = __Block_byref_object_dispose__375;
  v12 = 0;
  propertyLock = [(HAP2AccessoryServerCoordinator *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HAP2AccessoryServerCoordinator_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__HAP2AccessoryServerCoordinator_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setBrowser:(id)browser operationQueue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_browser, browser);
  operationQueue = self->_operationQueue;
  self->_operationQueue = queueCopy;
}

- (HAP2AccessoryServerCoordinator)initWithDiscovery:(id)discovery pairingFactory:(id)factory transportFactory:(id)transportFactory secureTransportFactory:(id)secureTransportFactory encodingFactory:(id)encodingFactory controllerFactory:(id)controllerFactory
{
  discoveryCopy = discovery;
  factoryCopy = factory;
  transportFactoryCopy = transportFactory;
  secureTransportFactoryCopy = secureTransportFactory;
  encodingFactoryCopy = encodingFactory;
  controllerFactoryCopy = controllerFactory;
  v30.receiver = self;
  v30.super_class = HAP2AccessoryServerCoordinator;
  v18 = [(HAP2AccessoryServerCoordinator *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_discovery, discovery);
    objc_storeStrong(&v19->_pairingFactory, factory);
    objc_storeStrong(&v19->_transportFactory, transportFactory);
    objc_storeStrong(&v19->_secureTransportFactory, secureTransportFactory);
    objc_storeStrong(&v19->_encodingFactory, encodingFactory);
    objc_storeStrong(&v19->_controllerFactory, controllerFactory);
    v20 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerCoordinator.propertyLock"];
    propertyLock = v19->_propertyLock;
    v19->_propertyLock = v20;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    discoveredAccessoryServers = v19->_discoveredAccessoryServers;
    v19->_discoveredAccessoryServers = dictionary;

    v24 = objc_alloc_init(MEMORY[0x277CCABD8]);
    localOperationQueue = v19->_localOperationQueue;
    v19->_localOperationQueue = v24;

    [(NSOperationQueue *)v19->_localOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v19->_localOperationQueue setName:@"HAP2AccessoryServerCoordinator.localOperationQueue"];
    [discoveryCopy setDelegate:v19];
  }

  return v19;
}

@end