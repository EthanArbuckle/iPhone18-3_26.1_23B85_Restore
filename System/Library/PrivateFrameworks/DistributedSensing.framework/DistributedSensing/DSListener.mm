@interface DSListener
- (DSListener)initWithDispatchQueue:(id)queue;
- (NSArray)activeProviders;
- (id)_findProviderWithIdentifier:(id)identifier;
- (void)_didFindDevice:(id)device;
- (void)_didLoseDevice:(id)device;
- (void)_rapportReceivedDataRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_rapportReceivedHeartbeatRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_sendRequestID:(id)d request:(id)request device:(id)device options:(id)options responseHandler:(id)handler;
- (void)_startCASessionMetricCollection;
- (void)_stopCASessionMetricCollection;
- (void)_stopListener;
- (void)_subscribeToMotionData;
- (void)_unsubscribeToMotionData;
- (void)_updateCurrentProvider:(id)provider;
- (void)startMotionDataListenerWithOptions:(id)options;
- (void)stopMotionDataListener;
@end

@implementation DSListener

- (DSListener)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = DSListener;
  v5 = [(DSListener *)&v22 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      dsLogger = *(v5 + 2);
      *(v5 + 2) = v6;
    }

    else
    {
      uTF8String = [@"com.apple.distributedsensing.clientQueue" UTF8String];
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(uTF8String, v9);
      v11 = *(v5 + 2);
      *(v5 + 2) = v10;

      v12 = +[DSLogging sharedInstance];
      dsLogger = [v12 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] client queue created \n", v21, 2u);
      }
    }

    v13 = objc_alloc_init(DSClientMotionDataOptions);
    v14 = *(v5 + 12);
    *(v5 + 12) = v13;

    v15 = *(v5 + 1);
    *(v5 + 1) = 0;

    v16 = *(v5 + 3);
    *(v5 + 3) = 0;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = *(v5 + 4);
    *(v5 + 4) = v17;

    *(v5 + 20) = 0;
    *(v5 + 42) = 0;
    v19 = *(v5 + 6);
    *(v5 + 6) = 0;

    *(v5 + 14) = 0;
    *(v5 + 23) = 0;
    *(v5 + 13) = 0;
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 8) = 0;
    *(v5 + 88) = 0;
  }

  return v5;
}

- (NSArray)activeProviders
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  providerDictionary = selfCopy->_providerDictionary;
  if (providerDictionary)
  {
    allValues = [(NSMutableDictionary *)providerDictionary allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)startMotionDataListenerWithOptions:(id)options
{
  v30[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[DSLogging sharedInstance];
  dsLogger = [v5 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Starting Motion Data Listener\n", &buf, 2u);
  }

  -[DSClientMotionDataOptions setDataSubType:](self->_motionDataOptions, "setDataSubType:", [optionsCopy dataSubType]);
  -[DSClientMotionDataOptions setDeviceType:](self->_motionDataOptions, "setDeviceType:", [optionsCopy deviceType]);
  if (self->_discoveryClient)
  {
    v7 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Listener Discovery companion link already exists";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v9 = [v7 errorWithDomain:@"DSErrorDomain" code:7 userInfo:v8];

    [(DSListener *)self failedToStartListenerWithError:v9];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D44160]);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v10;

    [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:14];
    [(RPCompanionLinkClient *)self->_discoveryClient setDispatchQueue:self->_queue];
    objc_initWeak(&buf, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke;
    v26[3] = &unk_278F858D8;
    objc_copyWeak(&v27, &buf);
    [(RPCompanionLinkClient *)self->_discoveryClient setInvalidationHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke_61;
    v24[3] = &unk_278F85900;
    objc_copyWeak(&v25, &buf);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke_2;
    v22[3] = &unk_278F85900;
    objc_copyWeak(&v23, &buf);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:v22];
    v12 = self->_discoveryClient;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke_3;
    v20[3] = &unk_278F85928;
    objc_copyWeak(&v21, &buf);
    [(RPCompanionLinkClient *)v12 registerRequestID:@"com.apple.distributedsensing.heartbeatRequest" options:0 handler:v20];
    v13 = self->_discoveryClient;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke_4;
    v18[3] = &unk_278F85928;
    objc_copyWeak(&v19, &buf);
    [(RPCompanionLinkClient *)v13 registerRequestID:@"com.apple.distributedsensing.dataRequest" options:0 handler:v18];
    v14 = self->_discoveryClient;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__DSListener_startMotionDataListenerWithOptions___block_invoke_5;
    v16[3] = &unk_278F85BD8;
    objc_copyWeak(&v17, &buf);
    [(RPCompanionLinkClient *)v14 activateWithCompletion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[DSLogging sharedInstance];
    v3 = [v2 dsLogger];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "[DSListener] discovery companion link invalidated\n", v4, 2u);
    }
  }
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke_61(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didFindDevice:v5];
  }
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didLoseDevice:v5];
  }
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _rapportReceivedHeartbeatRequest:v11 options:v7 responseHandler:v8];
  }
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _rapportReceivedDataRequest:v11 options:v7 responseHandler:v8];
  }
}

void __49__DSListener_startMotionDataListenerWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = +[DSLogging sharedInstance];
      v7 = [v6 dsLogger];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "[DSListener] discovery link activation error\n", buf, 2u);
      }

      [v5 failedToStartListenerWithError:v3];
    }

    else
    {
      [WeakRetained _startCASessionMetricCollection];
      v8 = +[DSLogging sharedInstance];
      v9 = [v8 dsLogger];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSListener] Activated discovery link for discovering providers.\n", v10, 2u);
      }

      [v5 startedListener];
    }
  }
}

- (void)stopMotionDataListener
{
  v3 = +[DSLogging sharedInstance];
  dsLogger = [v3 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Stopping Motion Data Listener\n", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DSListener_stopMotionDataListener__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  selfCopy = self;
  dispatch_async(queue, block);
}

uint64_t __36__DSListener_stopMotionDataListener__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  v2 = *(*(a1 + 32) + 41);
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSListener] Unsubscribing from Motion Data\n", v7, 2u);
    }

    return [*(a1 + 32) _unsubscribeToMotionData];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSListener] No active subscription during stop\n", buf, 2u);
    }

    return [*(a1 + 32) _stopListener];
  }
}

- (void)_rapportReceivedHeartbeatRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  optionsCopy = options;
  v9 = +[DSLogging sharedInstance];
  dsLogger = [v9 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] received heartbeat request\n", &v26, 2u);
  }

  v11 = *MEMORY[0x277D442D0];
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();

  if (!v12)
  {
    v24 = +[DSLogging sharedInstance];
    dsLogger2 = [v24 dsLogger];

    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListener] No sender ID\n", &v26, 2u);
    }

    goto LABEL_18;
  }

  if (self->_isStopCalled)
  {
    v13 = +[DSLogging sharedInstance];
    dsLogger3 = [v13 dsLogger];

    if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSListener] Rejecting heartbeat request from sender %@ while stop was pending\n", &v26, 0xCu);
    }
  }

  currentProvider = self->_currentProvider;
  if (!currentProvider || (-[DSRapportDevice rpDevice](currentProvider, "rpDevice"), v16 = objc_claimAutoreleasedReturnValue(), [v16 identifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v12), v17, v16, !v18))
  {
    v21 = +[DSLogging sharedInstance];
    dsLogger4 = [v21 dsLogger];

    if (os_log_type_enabled(dsLogger4, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&dword_249027000, dsLogger4, OS_LOG_TYPE_DEFAULT, "[DSListener] Rejecting heartbeat request from sender %@\n", &v26, 0xCu);
    }

    dsLogger2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, dsLogger2);
LABEL_18:

    goto LABEL_19;
  }

  v19 = +[DSLogging sharedInstance];
  dsLogger5 = [v19 dsLogger];

  if (os_log_type_enabled(dsLogger5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v12;
    _os_log_impl(&dword_249027000, dsLogger5, OS_LOG_TYPE_DEFAULT, "[DSListener] Heartbeat request received from provider %@\n", &v26, 0xCu);
  }

  ++self->_numHeartbeats;
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_rapportReceivedDataRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = +[DSLogging sharedInstance];
  dsLogger = [v11 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] received data request\n", &v28, 2u);
  }

  v13 = *MEMORY[0x277D442D0];
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  if ([v14 length])
  {
    if (!requestCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D442C8];
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();

    v14 = v16;
    if (!requestCopy)
    {
LABEL_12:
      v25 = +[DSLogging sharedInstance];
      dsLogger2 = [v25 dsLogger];

      if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = v14;
        _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListener] Rejecting data request from sender %@\n", &v28, 0xCu);
      }

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
      v19 = v24;
      goto LABEL_15;
    }
  }

  v17 = [requestCopy objectForKeyedSubscript:@"payloadKey"];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [(DSListener *)self _findProviderWithIdentifier:v14];
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = v18;
  v20 = +[DSLogging sharedInstance];
  dsLogger3 = [v20 dsLogger];

  if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
  {
    rpDevice = [v19 rpDevice];
    v28 = 138412290;
    v29 = rpDevice;
    _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSListener] Received data from provider %@\n", &v28, 0xCu);
  }

  v23 = [requestCopy objectForKeyedSubscript:@"payloadKey"];
  [(DSListener *)self _receivedData:v23 fromProvider:v19];

  v24 = 0;
LABEL_15:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v24);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_didFindDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isStopCalled)
  {
    model = [deviceCopy model];
    if (model)
    {
      identifier = [deviceCopy identifier];
      if (identifier)
      {
        idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

        if (idsDeviceIdentifier)
        {
          model2 = [deviceCopy model];
          if (!model2 || ([deviceCopy model], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsString:", @"iPhone"), v14, model2, (v15 & 1) != 0))
          {
            v16 = +[DSLogging sharedInstance];
            dsLogger = [v16 dsLogger];

            if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
            {
              v32 = 138412290;
              v33 = deviceCopy;
              _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] device %@ found\n", &v32, 0xCu);
            }

            selfCopy = self;
            objc_sync_enter(selfCopy);
            providerDictionary = selfCopy->_providerDictionary;
            idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
            v20 = [(NSMutableDictionary *)providerDictionary objectForKeyedSubscript:idsDeviceIdentifier2];

            if (v20)
            {
              v21 = +[DSLogging sharedInstance];
              dsLogger2 = [v21 dsLogger];

              if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
              {
                v32 = 138412290;
                v33 = deviceCopy;
                _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListener] Skipping provider %@, already being tracked\n", &v32, 0xCu);
              }

              objc_sync_exit(selfCopy);
            }

            else
            {
              v26 = objc_alloc_init(MEMORY[0x277D44170]);
              idsDeviceIdentifier3 = [deviceCopy idsDeviceIdentifier];
              [(DSListener *)v26 setIdentifier:idsDeviceIdentifier3];

              v28 = [[DSProviderDevice alloc] initWithRapportDevice:v26 queue:self->_queue];
              v29 = selfCopy->_providerDictionary;
              identifier2 = [(DSListener *)v26 identifier];
              [(NSMutableDictionary *)v29 setValue:v28 forKey:identifier2];

              objc_sync_exit(selfCopy);
              if (!selfCopy->_currentProvider)
              {
                [(DSListener *)selfCopy _updateCurrentProvider:v28];
              }

              activeProviders = [(DSListener *)selfCopy activeProviders];
              [(DSListener *)selfCopy updateProviders:activeProviders];

              selfCopy = v26;
            }

            goto LABEL_20;
          }

          v25 = +[DSLogging sharedInstance];
          selfCopy = [v25 dsLogger];

          if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          v32 = 138412290;
          v33 = deviceCopy;
          v7 = "[DSListener] Skipping incompatible RPCompanionLinkDevice: %@\n";
LABEL_18:
          p_super = &selfCopy->super;
          v9 = 12;
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v23 = +[DSLogging sharedInstance];
    selfCopy = [v23 dsLogger];

    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v32 = 138412290;
    v33 = deviceCopy;
    v7 = "[DSListener] device %@ missing details, skipping\n";
    goto LABEL_18;
  }

  v5 = +[DSLogging sharedInstance];
  selfCopy = [v5 dsLogger];

  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    v7 = "[DSListener] Did find device, but stop was called, returning\n";
    p_super = &selfCopy->super;
    v9 = 2;
LABEL_19:
    _os_log_impl(&dword_249027000, p_super, OS_LOG_TYPE_DEFAULT, v7, &v32, v9);
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_didLoseDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!self->_isStopCalled)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    providerDictionary = selfCopy->_providerDictionary;
    identifier = [deviceCopy identifier];
    v8 = [(NSMutableDictionary *)providerDictionary objectForKeyedSubscript:identifier];

    if (v8)
    {
      if (![v8 isResponsePending])
      {
        v11 = selfCopy->_providerDictionary;
        identifier2 = [v8 identifier];
        [(NSMutableDictionary *)v11 removeObjectForKey:identifier2];

        rpDevice = [(DSRapportDevice *)selfCopy->_currentProvider rpDevice];
        identifier3 = [rpDevice identifier];
        rpDevice2 = [v8 rpDevice];
        identifier4 = [rpDevice2 identifier];
        v17 = [identifier3 isEqualToString:identifier4];

        if (v17)
        {
          v18 = +[DSLogging sharedInstance];
          dsLogger = [v18 dsLogger];

          if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
          {
            rpDevice3 = [(DSRapportDevice *)selfCopy->_currentProvider rpDevice];
            *buf = 138412290;
            v33 = rpDevice3;
            _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Current provider lost %@\n", buf, 0xCu);
          }

          currentProvider = selfCopy->_currentProvider;
          selfCopy->_currentProvider = 0;

          ++selfCopy->_activeProviderLostCount;
          if (!selfCopy->_isTestMode)
          {
            [(DSCoreAnalyticsEventHandler *)selfCopy->_caEventHandler dsProviderUnavailable];
          }

          v22 = selfCopy->_providerDictionary;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __29__DSListener__didLoseDevice___block_invoke;
          v25[3] = &unk_278F85C78;
          v25[4] = &v26;
          [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v25];
        }

        objc_sync_exit(selfCopy);

        if (v27[5])
        {
          [(DSListener *)selfCopy _updateCurrentProvider:?];
        }

        activeProviders = [(DSListener *)selfCopy activeProviders];
        [(DSListener *)selfCopy updateProviders:activeProviders];
        selfCopy = activeProviders;
        goto LABEL_17;
      }

      v9 = +[DSLogging sharedInstance];
      dsLogger2 = [v9 dsLogger];

      if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = deviceCopy;
        _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListener] device %@ lost but response was pending\n", buf, 0xCu);
      }
    }

    objc_sync_exit(selfCopy);
LABEL_17:

    _Block_object_dispose(&v26, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_findProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  providerDictionary = selfCopy->_providerDictionary;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__DSListener__findProviderWithIdentifier___block_invoke;
  v10[3] = &unk_278F85CA0;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [(NSMutableDictionary *)providerDictionary enumerateKeysAndObjectsUsingBlock:v10];

  objc_sync_exit(selfCopy);
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __42__DSListener__findProviderWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 rpDevice];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_updateCurrentProvider:(id)provider
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v6 = +[DSLogging sharedInstance];
  dsLogger = [v6 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    rpDevice = [providerCopy rpDevice];
    v16 = 138412290;
    v17 = rpDevice;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Updating new provider %@\n", &v16, 0xCu);
  }

  v9 = +[DSLogging sharedInstance];
  dsLogger2 = [v9 dsLogger];

  if (providerCopy)
  {
    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      rpDevice2 = [providerCopy rpDevice];
      v16 = 138412290;
      v17 = rpDevice2;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListener] Current Provider = %@\n", &v16, 0xCu);
    }

    objc_storeStrong(&self->_currentProvider, provider);
    v12 = +[DSLogging sharedInstance];
    dsLogger3 = [v12 dsLogger];

    if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
    {
      rpDevice3 = [providerCopy rpDevice];
      v16 = 138412290;
      v17 = rpDevice3;
      _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSListener] Sending Subscription request to Provider = %@\n", &v16, 0xCu);
    }

    [(DSListener *)self _subscribeToMotionData];
  }

  else
  {
    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_ERROR))
    {
      [DSListener _updateCurrentProvider:dsLogger2];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToMotionData
{
  v21[4] = *MEMORY[0x277D85DE8];
  if (self->_currentProvider)
  {
    v21[0] = @"1.0";
    v20[0] = @"dsVersionKey";
    v20[1] = @"dataSubTypeKey";
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[DSClientMotionDataOptions dataSubType](self->_motionDataOptions, "dataSubType")}];
    v21[1] = v3;
    v20[2] = @"requestType";
    v20[3] = @"subscriptionStart";
    v21[2] = &unk_285C19BF8;
    v21[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = self->_currentProvider;
    [*(v15 + 5) setIsResponsePending:1];
    selfCopy = self;
    v6 = *(v15 + 5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__DSListener__subscribeToMotionData__block_invoke;
    v10[3] = &unk_278F85CC8;
    v10[4] = selfCopy;
    v13 = buf;
    dsLogger = v4;
    v11 = dsLogger;
    v12 = selfCopy;
    [(DSListener *)selfCopy _sendRequestID:@"com.apple.distributedsensing.subscriptionRequest" request:dsLogger device:v6 options:0 responseHandler:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = +[DSLogging sharedInstance];
    dsLogger = [v8 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Trying to subscribe while there's no active provider\n", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__DSListener__subscribeToMotionData__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  if (v10 && *(v10 + 24))
  {
    [*(*(a1[7] + 8) + 40) setIsResponsePending:0];
    v11 = *MEMORY[0x277D44270];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v13 = Int64Ranged;
    v14 = a1[4];
    if ((*(v14 + 42) & 1) == 0)
    {
      *(v14 + 42) = 1;
      *(a1[4] + 56) = Int64Ranged;
    }

    if (v9)
    {
      v15 = +[DSLogging sharedInstance];
      v16 = [v15 dsLogger];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[5];
        v18 = [*(a1[4] + 24) rpDevice];
        v19 = v18;
        if (v13 > 0xB)
        {
          v20 = "?";
        }

        else
        {
          v20 = off_278F85D30[v13 & 0xF];
        }

        v36 = 138412802;
        v37 = v17;
        v38 = 2112;
        v39 = v18;
        v40 = 2080;
        v41 = v20;
        _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSListener] Send Subscription Start Request %@ to device %@ failed over data link: %s\n", &v36, 0x20u);
      }

      v32 = a1[4];
      v33 = [v32[3] rpDevice];
      [v32 _didLoseDevice:v33];

      v34 = a1[4];
      if (*(v34 + 42) == 1)
      {
        [*(v34 + 48) dsFirstListenerSessionSetUnsuccessful];
      }
    }

    else
    {
      v21 = a1[4];
      if ((*(v21 + 88) & 1) == 0)
      {
        [*(v21 + 48) dsProviderAvailable];
      }

      v22 = +[DSLogging sharedInstance];
      v23 = [v22 dsLogger];

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[5];
        v25 = [*(*(a1[7] + 8) + 40) rpDevice];
        v36 = 138412546;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_249027000, v23, OS_LOG_TYPE_DEFAULT, "[DSListener] Sent Subscription Start Request %@ to device %@\n", &v36, 0x16u);
      }

      *(a1[4] + 41) = 1;
      if (v7)
      {
        v26 = [v7 objectForKeyedSubscript:@"payloadKey"];

        if (v26)
        {
          v27 = +[DSLogging sharedInstance];
          v28 = [v27 dsLogger];

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [*(*(a1[7] + 8) + 40) rpDevice];
            v36 = 138412290;
            v37 = v29;
            _os_log_impl(&dword_249027000, v28, OS_LOG_TYPE_DEFAULT, "[DSListener] Received data with subscription response from provider %@\n", &v36, 0xCu);
          }

          v30 = a1[6];
          v31 = [v7 objectForKeyedSubscript:@"payloadKey"];
          [v30 _receivedData:v31 fromProvider:*(*(a1[7] + 8) + 40)];
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_unsubscribeToMotionData
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (self->_currentProvider)
  {
    v18[0] = @"1.0";
    v17[0] = @"dsVersionKey";
    v17[1] = @"dataSubTypeKey";
    v3 = MEMORY[0x277CCABB0];
    motionDataOptions = self->_motionDataOptions;
    selfCopy = self;
    v6 = [v3 numberWithUnsignedInt:{-[DSClientMotionDataOptions dataSubType](motionDataOptions, "dataSubType")}];
    v18[1] = v6;
    v18[2] = &unk_285C19BF8;
    v17[2] = @"requestType";
    v17[3] = @"subscriptionStart";
    v18[3] = MEMORY[0x277CBEC28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

    [(DSProviderDevice *)self->_currentProvider setIsResponsePending:1];
    currentProvider = self->_currentProvider;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__DSListener__unsubscribeToMotionData__block_invoke;
    v14[3] = &unk_278F85CF0;
    v14[4] = selfCopy;
    v15 = v7;
    v9 = v7;
    [(DSListener *)selfCopy _sendRequestID:@"com.apple.distributedsensing.subscriptionRequest" request:v9 device:currentProvider options:0 responseHandler:v14];
  }

  else
  {
    selfCopy2 = self;
    v11 = +[DSLogging sharedInstance];
    dsLogger = [v11 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] No active provider during unsubscribe\n", buf, 2u);
    }

    [(DSListener *)selfCopy2 _stopListener];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __38__DSListener__unsubscribeToMotionData__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(result + 32))
  {
    goto LABEL_14;
  }

  v5 = result;
  v6 = *MEMORY[0x277D44270];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = +[DSLogging sharedInstance];
  v9 = [v8 dsLogger];

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v10)
    {
      v11 = *(v5 + 40);
      v12 = [*(*(v5 + 32) + 24) rpDevice];
      v13 = v12;
      if (Int64Ranged > 0xB)
      {
        v14 = "?";
      }

      else
      {
        v14 = off_278F85D30[Int64Ranged & 0xF];
      }

      *v21 = 138412802;
      *&v21[4] = v11;
      *&v21[12] = 2112;
      *&v21[14] = v12;
      *&v21[22] = 2080;
      v22 = v14;
      v16 = "[DSListener] Send Subscription Stop Request %@ to device %@ failed over data link: %s\n";
      v17 = v9;
      v18 = 32;
      goto LABEL_10;
    }
  }

  else if (v10)
  {
    v15 = *(v5 + 40);
    v13 = [*(*(v5 + 32) + 24) rpDevice];
    *v21 = 138412546;
    *&v21[4] = v15;
    *&v21[12] = 2112;
    *&v21[14] = v13;
    v16 = "[DSListener] Sent Stop Subscription Request %@ to device %@\n";
    v17 = v9;
    v18 = 22;
LABEL_10:
    _os_log_impl(&dword_249027000, v17, OS_LOG_TYPE_DEFAULT, v16, v21, v18);
  }

  [*(*(v5 + 32) + 24) setIsResponsePending:0];
  v19 = *(v5 + 32);
  if ((*(v19 + 88) & 1) == 0)
  {
    [*(v19 + 48) dsProviderUnavailable];
    v19 = *(v5 + 32);
  }

  result = [v19 _stopListener];
LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_stopListener
{
  [(RPCompanionLinkClient *)self->_discoveryClient deregisterRequestID:@"com.apple.distributedsensing.dataRequest"];
  [(RPCompanionLinkClient *)self->_discoveryClient deregisterRequestID:@"com.apple.distributedsensing.heartbeatRequest"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_providerDictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];
  [(NSMutableDictionary *)selfCopy->_providerDictionary removeAllObjects];
  objc_sync_exit(selfCopy);

  currentProvider = selfCopy->_currentProvider;
  selfCopy->_currentProvider = 0;

  [(DSClientMotionDataOptions *)selfCopy->_motionDataOptions setDataSubType:0];
  [(DSClientMotionDataOptions *)selfCopy->_motionDataOptions setDeviceType:0];
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  *&selfCopy->_isStopCalled = 0;
  selfCopy->_isFirstSubscription = 0;
  [(DSListener *)selfCopy _stopCASessionMetricCollection];
  caEventHandler = selfCopy->_caEventHandler;
  selfCopy->_caEventHandler = 0;

  selfCopy->_firstSubscriptionDataLinkType = 0;
  selfCopy->_numMotionStateMessages = 0;
  selfCopy->_activeProviderLostCount = 0;
  selfCopy->_numHeartbeats = 0;
  v7 = +[DSLogging sharedInstance];
  dsLogger = [v7 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Stopped\n", v9, 2u);
  }

  [(DSListener *)selfCopy stoppedListener];
}

- (void)_sendRequestID:(id)d request:(id)request device:(id)device options:(id)options responseHandler:(id)handler
{
  if (request)
  {
    requestCopy = request;
  }

  else
  {
    requestCopy = MEMORY[0x277CBEC10];
  }

  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  dCopy = d;
  v17 = [requestCopy mutableCopy];
  [v17 setObject:dCopy forKeyedSubscript:@"RapportRequestIDKey"];

  v15 = MEMORY[0x24C1EF510](handlerCopy);
  [v17 setObject:v15 forKeyedSubscript:@"RapportRequestHandlerKey"];

  [v17 setObject:optionsCopy forKeyedSubscript:@"RapportOptionsKey"];
  v16 = [v17 copy];
  [deviceCopy addRequestToQueue:v16];

  [deviceCopy activateSessionClient];
}

- (void)_startCASessionMetricCollection
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_isTestMode)
  {
    v2 = +[DSLogging sharedInstance];
    dsLogger = [v2 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "[DSListener] Skipping core analytics event init\n";
LABEL_7:
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }
  }

  else if (self->_caEventHandler)
  {
    v6 = +[DSLogging sharedInstance];
    dsLogger = [v6 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "[DSListener] Core analytics event handler already exists\n";
      goto LABEL_7;
    }
  }

  else
  {
    v7 = objc_alloc_init(DSCoreAnalyticsEventHandler);
    caEventHandler = self->_caEventHandler;
    self->_caEventHandler = v7;

    if (!self->_caEventHandler)
    {
      v22 = +[DSLogging sharedInstance];
      dsLogger = [v22 dsLogger];

      if (!os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v4 = "[DSListener] Core analytics event handler not initialized\n";
      goto LABEL_7;
    }

    dsLogger = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v10 = [activeDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(activeDevices);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          model = [v14 model];
          if (model)
          {
            v16 = model;
            model2 = [v14 model];
            v18 = [model2 containsString:@"iPhone"];

            if (v18)
            {
              idsDeviceIdentifier = [v14 idsDeviceIdentifier];
              v20 = [dsLogger objectForKeyedSubscript:idsDeviceIdentifier];

              if (!v20)
              {
                idsDeviceIdentifier2 = [v14 idsDeviceIdentifier];
                [dsLogger setObject:v14 forKey:idsDeviceIdentifier2];
              }
            }
          }
        }

        v11 = [activeDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    [(DSCoreAnalyticsEventHandler *)selfCopy->_caEventHandler dsSessionStartedWithDeviceRole:2 numPotentialProviders:[dsLogger count] unterminatedSession:0];
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_stopCASessionMetricCollection
{
  if (!self->_isTestMode)
  {
    caEventHandler = self->_caEventHandler;
    if (caEventHandler)
    {
      if (!self->_isSubscriptionActive)
      {
        [(DSCoreAnalyticsEventHandler *)caEventHandler dsFirstListenerSessionSetUnsuccessful];
        caEventHandler = self->_caEventHandler;
      }

      numHeartbeats = self->_numHeartbeats;
      numMotionStateMessages = self->_numMotionStateMessages;
      activeProviderLostCount = self->_activeProviderLostCount;
      firstSubscriptionDataLinkType = self->_firstSubscriptionDataLinkType;
      maxListenerClients = self->_maxListenerClients;
      avgListenerStartInterval = self->_avgListenerStartInterval;

      [(DSCoreAnalyticsEventHandler *)caEventHandler dsSessionCompletedWithStopReason:0 numHeartbeats:numHeartbeats numMotionStateMessages:numMotionStateMessages activeProviderLostCount:activeProviderLostCount dataLinkType:firstSubscriptionDataLinkType maxListenerClients:maxListenerClients avgListenerStartInterval:avgListenerStartInterval];
    }

    else
    {
      v10 = +[DSLogging sharedInstance];
      dsLogger = [v10 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListener] Core analytics event handler not initialized\n", v12, 2u);
      }
    }
  }
}

@end