@interface DSRapportDevice
- (DSRapportDevice)initWithRapportDevice:(id)a3 queue:(id)a4;
- (void)_activateSessionClientWithForceL2CAP:(BOOL)a3;
- (void)_forceBLEDiscoverytoSendRequestID;
- (void)_startDiscoveryExitTimer;
- (void)_startResponseTimeoutTimer;
- (void)addRequestToQueue:(id)a3;
- (void)invalidate;
- (void)sendNextRequest;
@end

@implementation DSRapportDevice

- (DSRapportDevice)initWithRapportDevice:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = DSRapportDevice;
  v9 = [(DSRapportDevice *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rpDevice, a3);
    v11 = [v7 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_deviceType = 1;
    sessionClient = v10->_sessionClient;
    v10->_sessionClient = 0;

    screenOffDiscoveryClient = v10->_screenOffDiscoveryClient;
    v10->_screenOffDiscoveryClient = 0;

    v15 = [MEMORY[0x277CBEB18] array];
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = v15;

    objc_storeStrong(&v10->_queue, a4);
    *&v10->_isTryingForceDiscovery = 0;
    discoveryExitTimer = v10->_discoveryExitTimer;
    v10->_discoveryExitTimer = 0;

    responseTimeoutTimer = v10->_responseTimeoutTimer;
    v10->_responseTimeoutTimer = 0;
  }

  return v10;
}

- (void)invalidate
{
  sessionClient = self->_sessionClient;
  if (sessionClient)
  {
    [(RPCompanionLinkClient *)sessionClient invalidate];
    v4 = self->_sessionClient;
    self->_sessionClient = 0;
  }

  screenOffDiscoveryClient = self->_screenOffDiscoveryClient;
  if (screenOffDiscoveryClient)
  {
    [(RPCompanionLinkClient *)screenOffDiscoveryClient invalidate];
    v6 = self->_screenOffDiscoveryClient;
    self->_screenOffDiscoveryClient = 0;
  }

  discoveryExitTimer = self->_discoveryExitTimer;
  if (discoveryExitTimer)
  {
    if (!dispatch_source_testcancel(self->_discoveryExitTimer))
    {
      dispatch_source_cancel(discoveryExitTimer);
      discoveryExitTimer = self->_discoveryExitTimer;
    }

    self->_discoveryExitTimer = 0;
  }

  responseTimeoutTimer = self->_responseTimeoutTimer;
  if (responseTimeoutTimer)
  {
    source = self->_responseTimeoutTimer;
    if (dispatch_source_testcancel(responseTimeoutTimer))
    {
      v9 = source;
    }

    else
    {
      dispatch_source_cancel(source);
      v9 = self->_responseTimeoutTimer;
    }

    self->_responseTimeoutTimer = 0;
  }
}

- (void)addRequestToQueue:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  pendingRequests = v4->_pendingRequests;
  v6 = [v7 mutableCopy];
  [(NSMutableArray *)pendingRequests addObject:v6];

  objc_sync_exit(v4);
}

- (void)sendNextRequest
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_249027000, a2, OS_LOG_TYPE_ERROR, "[DSRapportDevice] Invalid request %@\n", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __34__DSRapportDevice_sendNextRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v40 = v9;
    v12 = WeakRetained[5];
    v13 = +[DSLogging sharedInstance];
    v14 = [v13 dsLogger];

    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v16 = *(a1 + 32);
        *buf = 138412290;
        v47 = v16;
        _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Cancelling Response Timer for requestID %@\n", buf, 0xCu);
      }

      v17 = *(v11 + 5);
      v9 = v40;
      if (!dispatch_source_testcancel(v17))
      {
        dispatch_source_cancel(v17);
        v17 = *(v11 + 5);
      }

      *(v11 + 5) = 0;

      if (!v40)
      {
        goto LABEL_23;
      }

      v18 = [v40 domain];
      if ([v18 isEqualToString:@"DSErrorDomain"])
      {

LABEL_23:
        (*(*(a1 + 56) + 16))();
        [v11 sendNextRequest];
        goto LABEL_24;
      }

      v29 = *(v11 + 25);

      if (v29)
      {
        goto LABEL_23;
      }

      v31 = +[DSLogging sharedInstance];
      v32 = [v31 dsLogger];

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v32, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Retrying sendRequest on error\n", buf, 2u);
      }

      [*(v11 + 1) invalidate];
      v33 = *(v11 + 1);
      *(v11 + 1) = 0;

      if (*(a1 + 40))
      {
        v34 = *(a1 + 40);
      }

      else
      {
        v34 = MEMORY[0x277CBEC10];
      }

      v35 = [v34 mutableCopy];
      [v35 setObject:*(a1 + 32) forKeyedSubscript:@"RapportRequestIDKey"];
      v36 = MEMORY[0x24C1EF510](*(a1 + 56));
      [v35 setObject:v36 forKeyedSubscript:@"RapportRequestHandlerKey"];

      [v35 setObject:*(a1 + 48) forKeyedSubscript:@"RapportOptionsKey"];
      v37 = [v35 copy];
      [v11 addRequestToQueue:v37];

      [v11 _forceBLEDiscoverytoSendRequestID];
    }

    else
    {
      v38 = v8;
      v39 = v7;
      if (v15)
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v47 = v19;
        _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Response Handler Timer invalidated for requestID %@\n", buf, 0xCu);
      }

      v20 = *(a1 + 56);
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:9 userInfo:0];
      (*(v20 + 16))(v20, 0, 0, v21);

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = *(v11 + 6);
      v23 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v41 + 1) + 8 * i) objectForKeyedSubscript:@"RapportRequestHandlerKey"];
            if (v27)
            {
              v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:9 userInfo:0];
              (v27)[2](v27, 0, 0, v28);
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v24);
      }

      [*(v11 + 6) removeAllObjects];
      v8 = v38;
      v7 = v39;
      v9 = v40;
    }
  }

LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_activateSessionClientWithForceL2CAP:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v5 = +[DSLogging sharedInstance];
  v6 = [v5 dsLogger];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(DSRapportDevice *)self rpDevice];
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Creating a session client to device %@\n", buf, 0xCu);
  }

  if (self->_isTryingForceDiscovery)
  {
    v8 = +[DSLogging sharedInstance];
    v9 = [v8 dsLogger];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DSRapportDevice *)self rpDevice];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Session can't be activated, Trying a force discovery for %@\n", buf, 0xCu);
    }

LABEL_6:

    goto LABEL_16;
  }

  if (self->_sessionClient)
  {
    v11 = +[DSLogging sharedInstance];
    v9 = [v11 dsLogger];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(DSRapportDevice *)self rpDevice];
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Session already exists for device %@\n", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v13 = objc_alloc_init(MEMORY[0x277D44160]);
  sessionClient = self->_sessionClient;
  self->_sessionClient = v13;

  [(RPCompanionLinkClient *)self->_sessionClient setDestinationDevice:self->_rpDevice];
  [(RPCompanionLinkClient *)self->_sessionClient setControlFlags:14];
  if (v3)
  {
    v15 = +[DSLogging sharedInstance];
    v16 = [v15 dsLogger];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(DSRapportDevice *)self rpDevice];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Forcing an L2CAP session for %@\n", buf, 0xCu);
    }

    [(RPCompanionLinkClient *)self->_sessionClient setControlFlags:[(RPCompanionLinkClient *)self->_sessionClient controlFlags]| 0x100];
    self->_isSessionInForceL2CAP = 1;
  }

  [(RPCompanionLinkClient *)self->_sessionClient setDispatchQueue:self->_queue];
  objc_initWeak(buf, self);
  v18 = self->_sessionClient;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__DSRapportDevice__activateSessionClientWithForceL2CAP___block_invoke;
  v20[3] = &unk_278F85BB0;
  objc_copyWeak(&v21, buf);
  v22 = v3;
  [(RPCompanionLinkClient *)v18 activateWithCompletion:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
}

void __56__DSRapportDevice__activateSessionClientWithForceL2CAP___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    if (v3)
    {
      [v5[1] invalidate];
      v7 = v5[1];
      v5[1] = 0;

      *(v5 + 25) = 0;
      if (*(a1 + 40))
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = v5[6];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v19 + 1) + 8 * v12) objectForKeyedSubscript:{@"RapportRequestHandlerKey", v19}];
              v14 = v13;
              if (v13)
              {
                (*(v13 + 16))(v13, 0, 0, v3);
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
          }

          while (v10);
        }

        [v5[6] removeAllObjects];
      }

      else
      {
        [v5 _forceBLEDiscoverytoSendRequestID];
      }
    }

    else
    {
      v15 = +[DSLogging sharedInstance];
      v16 = [v15 dsLogger];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 rpDevice];
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Activated session client to device %@\n", buf, 0xCu);
      }

      [v5 sendNextRequest];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_forceBLEDiscoverytoSendRequestID
{
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] starting force BLE screen off discover\n", buf, 2u);
  }

  self->_isTryingForceDiscovery = 1;
  if (self->_screenOffDiscoveryClient)
  {
    v5 = +[DSLogging sharedInstance];
    v6 = [v5 dsLogger];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DSRapportDevice *)v6 _forceBLEDiscoverytoSendRequestID];
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D44160]);
    screenOffDiscoveryClient = self->_screenOffDiscoveryClient;
    self->_screenOffDiscoveryClient = v7;

    [(RPCompanionLinkClient *)self->_screenOffDiscoveryClient setControlFlags:65550];
    [(RPCompanionLinkClient *)self->_screenOffDiscoveryClient setDispatchQueue:self->_queue];
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__DSRapportDevice__forceBLEDiscoverytoSendRequestID__block_invoke;
    v12[3] = &unk_278F85900;
    objc_copyWeak(&v13, buf);
    [(RPCompanionLinkClient *)self->_screenOffDiscoveryClient setDeviceFoundHandler:v12];
    v9 = self->_screenOffDiscoveryClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__DSRapportDevice__forceBLEDiscoverytoSendRequestID__block_invoke_55;
    v10[3] = &unk_278F85BD8;
    objc_copyWeak(&v11, buf);
    [(RPCompanionLinkClient *)v9 activateWithCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __52__DSRapportDevice__forceBLEDiscoverytoSendRequestID__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[24] == 1)
    {
      v6 = [WeakRetained rpDevice];
      v7 = [v6 identifier];
      v8 = [v3 idsDeviceIdentifier];
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        v10 = +[DSLogging sharedInstance];
        v11 = [v10 dsLogger];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 identifier];
          v13 = [v3 model];
          v18 = 138412546;
          v19 = v12;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "Device discovered via BLEScreenOff Rapport Discovery: %@ %@\n", &v18, 0x16u);
        }

        if (*(v5 + 4))
        {
          v14 = +[DSLogging sharedInstance];
          v15 = [v14 dsLogger];

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412290;
            v19 = v3;
            _os_log_impl(&dword_249027000, v15, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Cancelling Discovery Timer for device %@\n", &v18, 0xCu);
          }

          v16 = *(v5 + 4);
          if (!dispatch_source_testcancel(v16))
          {
            dispatch_source_cancel(v16);
            v16 = *(v5 + 4);
          }

          *(v5 + 4) = 0;
        }

        v5[24] = 0;
        [v5 _activateSessionClientWithForceL2CAP:1];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __52__DSRapportDevice__forceBLEDiscoverytoSendRequestID__block_invoke_55(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained[2] invalidate];
      v6 = v5[2];
      v5[2] = 0;

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v5[6];
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v15 + 1) + 8 * v11) objectForKeyedSubscript:{@"RapportRequestHandlerKey", v15}];
            v13 = v12;
            if (v12)
            {
              (*(v12 + 16))(v12, 0, 0, v3);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      [v5[6] removeAllObjects];
    }

    else
    {
      [WeakRetained _startDiscoveryExitTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_startResponseTimeoutTimer
{
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Starting Response Timeout Timer\n", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 200000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__DSRapportDevice__startResponseTimeoutTimer__block_invoke;
  v10[3] = &unk_278F85C00;
  v7 = v5;
  v11 = v7;
  objc_copyWeak(&v12, buf);
  dispatch_source_set_event_handler(v7, v10);
  responseTimeoutTimer = self->_responseTimeoutTimer;
  self->_responseTimeoutTimer = v7;
  v9 = v7;

  dispatch_resume(self->_responseTimeoutTimer);
  objc_destroyWeak(&v12);

  objc_destroyWeak(buf);
}

void __45__DSRapportDevice__startResponseTimeoutTimer__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[DSLogging sharedInstance];
    v4 = [v3 dsLogger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained rpDevice];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Timed out while waiting for a response from %@\n", &v11, 0xCu);
    }

    v6 = WeakRetained[5];
    WeakRetained[5] = 0;

    [WeakRetained[1] invalidate];
    v7 = WeakRetained[1];
    WeakRetained[1] = 0;

    *(WeakRetained + 25) = 0;
    v8 = WeakRetained[2];
    if (v8)
    {
      [v8 invalidate];
      v9 = WeakRetained[2];
      WeakRetained[2] = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscoveryExitTimer
{
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Starting Discovery Timer\n", buf, 2u);
  }

  queue = self->_queue;
  v6 = self;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  v8 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 30000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__DSRapportDevice__startDiscoveryExitTimer__block_invoke;
  handler[3] = &unk_278F85C28;
  v9 = v7;
  v13 = v9;
  v14 = v6;
  v15 = v6;
  dispatch_source_set_event_handler(v9, handler);
  discoveryExitTimer = v6->_discoveryExitTimer;
  v6->_discoveryExitTimer = v9;
  v11 = v9;

  dispatch_resume(v6->_discoveryExitTimer);
}

void __43__DSRapportDevice__startDiscoveryExitTimer__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  if (!v2)
  {
LABEL_15:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(v2 + 24))
  {
    v3 = +[DSLogging sharedInstance];
    v4 = [v3 dsLogger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) rpDevice];
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSRapportDevice] Exit timer fired, stop force discovery for %@\n", buf, 0xCu);
    }

    [*(*(a1 + 40) + 16) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    *(*(a1 + 40) + 24) = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = *(*(a1 + 40) + 48);
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * v14) objectForKeyedSubscript:{@"RapportRequestHandlerKey", v20}];
          if (v15)
          {
            v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:8 userInfo:0];
            (v15)[2](v15, 0, 0, v16);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [*(*(a1 + 40) + 48) removeAllObjects];
    goto LABEL_15;
  }

  v18 = *(v2 + 32);
  *(v2 + 32) = 0;
  v19 = *MEMORY[0x277D85DE8];
}

@end