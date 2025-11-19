@interface DSProvider
- (BOOL)_persistListenerState;
- (BOOL)_removePersistedState;
- (BOOL)_unPersistListenerState;
- (DSProvider)initWithDispatchQueue:(id)a3;
- (void)_addNewListener:(id)a3;
- (void)_didFindDevice:(id)a3;
- (void)_didLoseDevice:(id)a3;
- (void)_fetchScreenState;
- (void)_heartBeatWithListener;
- (void)_receivedDataRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_sendMotionData:(id)a3;
- (void)_sendRequestID:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)_startCASessionMetricCollection;
- (void)_stopProvider;
- (void)sendMotionData:(id)a3;
- (void)startMotionDataProviderWithOptions:(id)a3;
- (void)stopMotionDataProvider;
@end

@implementation DSProvider

- (DSProvider)initWithDispatchQueue:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DSProvider;
  v5 = [(DSProvider *)&v22 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
      v7 = *(v5 + 1);
      *(v5 + 1) = v6;
    }

    else
    {
      v8 = [@"com.apple.distributedsensing.clientQueue" UTF8String];
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(v8, v9);
      v11 = *(v5 + 1);
      *(v5 + 1) = v10;

      v12 = +[DSLogging sharedInstance];
      v7 = [v12 dsLogger];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "[DSProvider] client queue created \n", v21, 2u);
      }
    }

    v13 = objc_alloc_init(DSClientMotionDataOptions);
    v14 = *(v5 + 3);
    *(v5 + 3) = v13;

    v15 = *(v5 + 2);
    *(v5 + 2) = 0;

    v16 = *(v5 + 4);
    *(v5 + 4) = 0;

    v17 = *(v5 + 6);
    *(v5 + 6) = 0;

    v5[56] = 0;
    v18 = *(v5 + 8);
    *(v5 + 8) = 0;

    v5[72] = 0;
    v5[110] = 0;
    v19 = *(v5 + 10);
    *(v5 + 10) = 0;

    *(v5 + 11) = 0;
    *(v5 + 12) = 0;
    *(v5 + 102) = 0;
  }

  return v5;
}

- (void)startMotionDataProviderWithOptions:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[DSLogging sharedInstance];
  v6 = [v5 dsLogger];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] starting motion data provider\n", &buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    if (notify_register_check("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken))
    {
      v7 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA450];
      v52 = @"Couldn't register for device screen state";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v9 = [v7 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v8];

      [(DSProvider *)self failedToStartProviderWithOptions:v4 error:v9];
    }

    else
    {
      v14 = [v4 deviceType];
      v15 = [v4 dataSubType];
      if ((v14 & 2) != 0)
      {
        v20 = MEMORY[0x277CCA9B8];
        v49 = *MEMORY[0x277CCA450];
        v50 = @"Unrelated devices not supported";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v22 = [v20 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v21];

        [(DSProvider *)self failedToStartProviderWithOptions:v4 error:v22];
      }

      else
      {
        v16 = v15;
        if (v14)
        {
          [(DSClientMotionDataOptions *)self->_motionDataOptions setDeviceType:[(DSClientMotionDataOptions *)self->_motionDataOptions deviceType]| 1];
        }

        if (v16)
        {
          [(DSClientMotionDataOptions *)self->_motionDataOptions setDataSubType:[(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]| 1];
        }

        if ([(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]&& [(DSClientMotionDataOptions *)self->_motionDataOptions deviceType])
        {
          if (self->_linkClient)
          {
            v17 = MEMORY[0x277CCA9B8];
            v45 = *MEMORY[0x277CCA450];
            v46 = @"Provider companion link already exists";
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v19 = [v17 errorWithDomain:@"DSErrorDomain" code:7 userInfo:v18];

            [(DSProvider *)self failedToStartProviderWithOptions:v4 error:v19];
          }

          else
          {
            v26 = objc_alloc_init(MEMORY[0x277D44160]);
            linkClient = self->_linkClient;
            self->_linkClient = v26;

            [(RPCompanionLinkClient *)self->_linkClient setControlFlags:14];
            [(RPCompanionLinkClient *)self->_linkClient setDispatchQueue:self->_clientQueue];
            objc_initWeak(&buf, self);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke;
            v42[3] = &unk_278F858D8;
            objc_copyWeak(&v43, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setInvalidationHandler:v42];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_72;
            v40[3] = &unk_278F85900;
            objc_copyWeak(&v41, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setDeviceFoundHandler:v40];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_2;
            v38[3] = &unk_278F85900;
            objc_copyWeak(&v39, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setDeviceLostHandler:v38];
            v28 = self->_linkClient;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_3;
            v36[3] = &unk_278F85928;
            objc_copyWeak(&v37, &buf);
            [(RPCompanionLinkClient *)v28 registerRequestID:@"com.apple.distributedsensing.subscriptionRequest" options:0 handler:v36];
            v29 = +[DSLogging sharedInstance];
            v30 = [v29 dsLogger];

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v35 = 0;
              _os_log_impl(&dword_249027000, v30, OS_LOG_TYPE_DEFAULT, "[DSProvider] activating CompanionLink\n", v35, 2u);
            }

            v31 = self->_linkClient;
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_75;
            v32[3] = &unk_278F85950;
            objc_copyWeak(&v34, &buf);
            v33 = v4;
            [(RPCompanionLinkClient *)v31 activateWithCompletion:v32];

            objc_destroyWeak(&v34);
            objc_destroyWeak(&v37);
            objc_destroyWeak(&v39);
            objc_destroyWeak(&v41);
            objc_destroyWeak(&v43);
            objc_destroyWeak(&buf);
          }
        }

        else
        {
          v23 = MEMORY[0x277CCA9B8];
          v47 = *MEMORY[0x277CCA450];
          v48 = @"Invalid options";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v25 = [v23 errorWithDomain:@"DSErrorDomain" code:2 userInfo:v24];

          [(DSProvider *)self failedToStartProviderWithOptions:v4 error:v25];
        }
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v54[0] = @"Unsupported feature";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v12 = [v10 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v11];

    [(DSProvider *)self failedToStartProviderWithOptions:v4 error:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[DSLogging sharedInstance];
    v3 = [v2 dsLogger];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "[DSProvider] companion link invalidated\n", v4, 2u);
    }
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_72(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didFindDevice:v5];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didLoseDevice:v5];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _receivedDataRequest:v11 options:v7 responseHandler:v8];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_75(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[DSLogging sharedInstance];
    v6 = [v5 dsLogger];

    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v7)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] link activation failed\n", &v12, 2u);
      }

      [WeakRetained failedToStartProviderWithOptions:*(a1 + 32) error:v3];
    }

    else
    {
      if (v7)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] companion link activated\n", &v12, 2u);
      }

      [WeakRetained startedProviderWithOptions:WeakRetained[3]];
      [WeakRetained _unPersistListenerState];
      if (WeakRetained[4])
      {
        v8 = +[DSLogging sharedInstance];
        v9 = [v8 dsLogger];

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [WeakRetained[4] identifier];
          v12 = 138412290;
          v13 = v10;
          _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSProvider] START data subscription to listener %@\n", &v12, 0xCu);
        }

        [WeakRetained subscribedToMotionDataWithOptions:WeakRetained[3]];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMotionData:(id)a3
{
  v4 = a3;
  v5 = +[DSLogging sharedInstance];
  v6 = [v5 dsLogger];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] Sending motion Data\n", buf, 2u);
  }

  objc_initWeak(buf, self);
  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__DSProvider_sendMotionData___block_invoke;
  v9[3] = &unk_278F85978;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v8 = v4;
  dispatch_async(clientQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __29__DSProvider_sendMotionData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _sendMotionData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)stopMotionDataProvider
{
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSProvider] Stopping motion data provider\n", buf, 2u);
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DSProvider_stopMotionDataProvider__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  v6 = self;
  dispatch_async(clientQueue, block);
}

- (void)_didFindDevice:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  currentListener = self->_currentListener;
  if (currentListener)
  {
    v6 = [(DSRapportDevice *)currentListener identifier];
    v7 = [v4 idsDeviceIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = +[DSLogging sharedInstance];
      v10 = [v9 dsLogger];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "[DSProvider] did find device %@\n", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_didLoseDevice:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  currentListener = self->_currentListener;
  if (currentListener)
  {
    v6 = [(DSRapportDevice *)currentListener identifier];
    v7 = [v4 idsDeviceIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [(DSProvider *)self _fetchScreenState];
      if (self->_isScreenON)
      {
        [(DSProvider *)self _heartBeatWithListener];
      }

      else
      {
        v9 = +[DSLogging sharedInstance];
        v10 = [v9 dsLogger];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v4;
          _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "[DSProvider] did lose device when screen was OFF %@, ignorning...\n", &v12, 0xCu);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_receivedDataRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[DSLogging sharedInstance];
  v12 = [v11 dsLogger];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data Request received %@\n", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D442D0];
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  if (!v14)
  {
    v20 = +[DSLogging sharedInstance];
    v21 = [v20 dsLogger];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_249027000, v21, OS_LOG_TYPE_DEFAULT, "[DSProvider] No senderID for request %@\n", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v15 = *MEMORY[0x277D44270];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v17 = +[DSLogging sharedInstance];
  v18 = [v17 dsLogger];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (Int64Ranged > 0xB)
    {
      v19 = "?";
    }

    else
    {
      v19 = off_278F859C0[Int64Ranged & 0xF];
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data link type %s", buf, 0xCu);
  }

  if (v8)
  {
    v22 = [v8 objectForKeyedSubscript:@"requestType"];

    if (v22)
    {
      v62 = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v23 = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      v63 = CFDictionaryGetTypedValue();
      v64 = self;
      v24 = v10;
      if ([v63 UTF8String])
      {
        v25 = TextToSourceVersion();
      }

      else
      {
        v25 = 0;
      }

      v26 = +[DSLogging sharedInstance];
      v27 = [v26 dsLogger];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v25;
        _os_log_impl(&dword_249027000, v27, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data requested with version key : %d\n", buf, 8u);
      }

      if (!v25 || v25 > TextToSourceVersion())
      {
        v28 = +[DSLogging sharedInstance];
        v29 = [v28 dsLogger];

        v10 = v24;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v25;
          _os_log_impl(&dword_249027000, v29, OS_LOG_TYPE_DEFAULT, "[DSProvider] Unsupported version %d specified\n", buf, 8u);
        }

        v30 = MEMORY[0x277CCA9B8];
        v31 = 4;
        goto LABEL_52;
      }

      v10 = v24;
      if ([(DSClientMotionDataOptions *)v64->_motionDataOptions dataSubType]== v23)
      {
        if (v62 == 2 && v61)
        {
          currentListener = v64->_currentListener;
          if (currentListener)
          {
            v33 = [(DSRapportDevice *)currentListener identifier];
            v34 = [v14 isEqualToString:v33];

            v35 = +[DSLogging sharedInstance];
            v36 = [v35 dsLogger];

            v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
            if (v34)
            {
              v21 = v63;
              if (v37)
              {
                *buf = 0;
                _os_log_impl(&dword_249027000, v36, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data re-subscription request received\n", buf, 2u);
              }

              [(DSListenerDevice *)v64->_currentListener setResponseHandler:v24];
              [(DSProvider *)v64 requestedMotionDataWithOption:v64->_motionDataOptions];
            }

            else
            {
              v21 = v63;
              if (v37)
              {
                *buf = 138412290;
                *&buf[4] = v14;
                _os_log_impl(&dword_249027000, v36, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data Subscription request rejected for senderID %@, listener already exists\n", buf, 0xCu);
              }

              v59 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
              (*(v24 + 2))(v24, 0, 0, v59);
            }
          }

          else
          {
            v50 = objc_alloc_init(MEMORY[0x277D44170]);
            v51 = v50;
            if (v50)
            {
              [v50 setIdentifier:v14];
              v52 = [[DSListenerDevice alloc] initWithRapportDevice:v51 queue:v64->_clientQueue];
              v64->_linkType = CFDictionaryGetInt64Ranged();
              [(DSListenerDevice *)v52 setResponseHandler:v24];
              [(DSListenerDevice *)v52 setVersion:v25];
              [(DSListenerDevice *)v52 setInOptions:v64->_motionDataOptions];
              [(DSProvider *)v64 _addNewListener:v52];
              v53 = +[DSLogging sharedInstance];
              v54 = [v53 dsLogger];

              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = [(DSRapportDevice *)v52 identifier];
                *buf = 138412290;
                *&buf[4] = v55;
                _os_log_impl(&dword_249027000, v54, OS_LOG_TYPE_DEFAULT, "[DSProvider] START data subscription to listener %@\n", buf, 0xCu);
              }

              [(DSProvider *)v64 subscribedToMotionDataWithOptions:v64->_motionDataOptions];
            }

            else
            {
              [DSProvider _receivedDataRequest:buf options:? responseHandler:?];
              v52 = *buf;
            }

            v21 = v63;
          }

          goto LABEL_54;
        }

        if (v62 == 2 && !v61)
        {
          v44 = v64->_currentListener;
          if (v44)
          {
            v45 = [(DSRapportDevice *)v44 identifier];
            v46 = [v45 isEqualToString:v14];

            if (v46)
            {
              [(DSProvider *)v64 _removeCurrentListenerWithStopReason:1];
              v47 = +[DSLogging sharedInstance];
              v48 = [v47 dsLogger];

              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v14;
                _os_log_impl(&dword_249027000, v48, OS_LOG_TYPE_DEFAULT, "[DSProvider] STOP data subscription from sender %@\n", buf, 0xCu);
              }

              (*(v24 + 2))(v24, 0, 0, 0);
              [(DSProvider *)v64 unsubscribed];
              goto LABEL_53;
            }
          }

          v56 = +[DSLogging sharedInstance];
          v39 = [v56 dsLogger];

          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

          *buf = 138412290;
          *&buf[4] = v14;
          v41 = "[DSProvider] Received stop subscription from unknown listener %@, ignoring\n";
          goto LABEL_49;
        }

        v49 = +[DSLogging sharedInstance];
        v39 = [v49 dsLogger];

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          v41 = "[DSProvider] Invalid Data Request %@\n";
LABEL_49:
          v42 = v39;
          v43 = 12;
          goto LABEL_50;
        }
      }

      else
      {
        v38 = +[DSLogging sharedInstance];
        v39 = [v38 dsLogger];

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(DSClientMotionDataOptions *)v64->_motionDataOptions dataSubType];
          *buf = 138412546;
          *&buf[4] = v14;
          v66 = 1024;
          v67 = v40;
          v41 = "[DSProvider] Data Subscription request rejected for senderID %@ with motion datatype %d\n";
          v42 = v39;
          v43 = 18;
LABEL_50:
          _os_log_impl(&dword_249027000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
        }
      }

LABEL_51:

      v30 = MEMORY[0x277CCA9B8];
      v31 = 1;
LABEL_52:
      v57 = [v30 errorWithDomain:@"DSErrorDomain" code:v31 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v57);

LABEL_53:
      v21 = v63;
LABEL_54:
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_sendMotionData:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_currentListener)
  {
    v15 = @"payloadKey";
    v16[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    ++self->_numMotionStateMessages;
    v7 = [(DSListenerDevice *)self->_currentListener responseHandler];

    currentListener = self->_currentListener;
    if (v7)
    {
      v9 = [(DSListenerDevice *)self->_currentListener responseHandler];
      (v9)[2](v9, v6, 0, 0);

      [(DSListenerDevice *)self->_currentListener setResponseHandler:0];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__DSProvider__sendMotionData___block_invoke;
      v13[3] = &unk_278F859A0;
      v13[4] = self;
      v11 = self;
      [(DSProvider *)v11 _sendRequestID:@"com.apple.distributedsensing.dataRequest" request:v6 device:currentListener options:0 responseHandler:v13];
    }
  }

  else
  {
    v10 = +[DSLogging sharedInstance];
    v6 = [v10 dsLogger];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] No Listeners registered\n", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __30__DSProvider__sendMotionData___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    v10 = *MEMORY[0x277D44270];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (*(*(a1 + 32) + 32))
    {
      v12 = Int64Ranged;
      v13 = +[DSLogging sharedInstance];
      v14 = [v13 dsLogger];

      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v15)
        {
          v16 = [*(*(a1 + 32) + 32) rpDevice];
          v17 = v16;
          if (v12 > 0xB)
          {
            v18 = "?";
          }

          else
          {
            v18 = off_278F859C0[v12 & 0xF];
          }

          v21 = 138412802;
          v22 = v9;
          v23 = 2112;
          v24 = v16;
          v25 = 2080;
          v26 = v18;
          _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSProvider] %@ in sending data to device %@ over data link: %s. STOP subscription\n", &v21, 0x20u);
        }

        [*(a1 + 32) _removeCurrentListenerWithStopReason:3];
        [*(a1 + 32) unsubscribed];
      }

      else
      {
        if (v15)
        {
          v19 = [*(*(a1 + 32) + 32) rpDevice];
          v21 = 138412290;
          v22 = v19;
          _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSProvider] Sent Data to device %@\n", &v21, 0xCu);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequestID:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v17 = [v10 mutableCopy];
  [v17 setObject:v14 forKeyedSubscript:@"RapportRequestIDKey"];

  v15 = MEMORY[0x24C1EF510](v11);
  [v17 setObject:v15 forKeyedSubscript:@"RapportRequestHandlerKey"];

  [v17 setObject:v12 forKeyedSubscript:@"RapportOptionsKey"];
  v16 = [v17 copy];
  [v13 addRequestToQueue:v16];

  [v13 activateSessionClient];
}

- (void)_fetchScreenState
{
  v10 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(self->_screenStateToken, &state64);
  self->_isScreenON = state64 != 1;
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isScreenON)
    {
      v5 = "ON";
    }

    else
    {
      v5 = "OFF";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSProvider] Current screen state is %s\n", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_heartBeatWithListener
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_isPendingHeartbeat)
  {
    self->_isPendingHeartbeat = 1;
    v3 = +[DSLogging sharedInstance];
    v4 = [v3 dsLogger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DSRapportDevice *)self->_currentListener rpDevice];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSProvider] Heartbeating with Listener %@\n", buf, 0xCu);
    }

    ++self->_numHeartbeats;
    currentListener = self->_currentListener;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__DSProvider__heartBeatWithListener__block_invoke;
    v9[3] = &unk_278F859A0;
    v9[4] = self;
    v7 = self;
    [(DSProvider *)v7 _sendRequestID:@"com.apple.distributedsensing.heartbeatRequest" request:MEMORY[0x277CBEC10] device:currentListener options:0 responseHandler:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __36__DSProvider__heartBeatWithListener__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    v10 = *MEMORY[0x277D44270];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v12 = *(a1 + 32);
    if (*(v12 + 32))
    {
      v13 = Int64Ranged;
      *(v12 + 56) = 0;
      v14 = +[DSLogging sharedInstance];
      v15 = [v14 dsLogger];

      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v16)
        {
          v17 = [*(*(a1 + 32) + 32) rpDevice];
          v18 = v17;
          if (v13 > 0xB)
          {
            v19 = "?";
          }

          else
          {
            v19 = off_278F859C0[v13 & 0xF];
          }

          v22 = 138412802;
          v23 = v9;
          v24 = 2112;
          v25 = v17;
          v26 = 2080;
          v27 = v19;
          _os_log_impl(&dword_249027000, v15, OS_LOG_TYPE_DEFAULT, "[DSProvider] %@ in heartbeating with listener %@ over data link: %s. STOP subscription\n", &v22, 0x20u);
        }

        [*(a1 + 32) _removeCurrentListenerWithStopReason:2];
        [*(a1 + 32) subscriptionExpired];
      }

      else
      {
        if (v16)
        {
          v20 = [*(*(a1 + 32) + 32) rpDevice];
          v22 = 138412290;
          v23 = v20;
          _os_log_impl(&dword_249027000, v15, OS_LOG_TYPE_DEFAULT, "[DSProvider] Listener %@ is still active\n", &v22, 0xCu);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_stopProvider
{
  [(RPCompanionLinkClient *)self->_linkClient deregisterRequestID:@"com.apple.distributedsensing.subscriptionRequest"];
  [(DSClientMotionDataOptions *)self->_motionDataOptions setDataSubType:0];
  [(DSClientMotionDataOptions *)self->_motionDataOptions setDeviceType:0];
  [(DSProvider *)self _removeCurrentListenerWithStopReason:4];
  [(RPCompanionLinkClient *)self->_linkClient invalidate];
  linkClient = self->_linkClient;
  self->_linkClient = 0;

  [(DSProvider *)self stoppedProvider];
}

- (void)_addNewListener:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentListener, a3);
  self->_isSubscriptionActive = 1;
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_clientQueue);
  v7 = +[DSLogging sharedInstance];
  v8 = [v7 dsLogger];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "[DSProvider] Creating Heartbeat timer\n", buf, 2u);
  }

  v9 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1800000000000);
  dispatch_source_set_timer(v6, v9, 0x1A3185C5000uLL, 0x6FC23AC00uLL);
  v10 = self;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__DSProvider__addNewListener___block_invoke;
  handler[3] = &unk_278F85808;
  handler[4] = v10;
  dispatch_source_set_event_handler(v6, handler);
  objc_storeStrong(&v10->_heartbeatTimer, v6);
  dispatch_resume(v10->_heartbeatTimer);
  [(DSProvider *)v10 _startCASessionMetricCollection];
  if (!v10->_isUnterminatedSession)
  {
    [(DSProvider *)v10 _persistListenerState];
  }
}

void __30__DSProvider__addNewListener___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2[4])
    {

      [v2 _heartBeatWithListener];
    }

    else
    {
      v3 = v2[6];
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(a1 + 32);
        v5 = *(v4 + 48);
        *(v4 + 48) = 0;
      }
    }
  }
}

- (void)_startCASessionMetricCollection
{
  if (!self->_isTestMode)
  {
    if (self->_caEventHandler)
    {
      v3 = +[DSLogging sharedInstance];
      v4 = [v3 dsLogger];

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSProvider] Core analytics event handler already exists\n", v9, 2u);
      }
    }

    else
    {
      v5 = objc_alloc_init(DSCoreAnalyticsEventHandler);
      caEventHandler = self->_caEventHandler;
      self->_caEventHandler = v5;

      v7 = self->_caEventHandler;
      isUnterminatedSession = self->_isUnterminatedSession;

      [(DSCoreAnalyticsEventHandler *)v7 dsSessionStartedWithDeviceRole:1 numPotentialProviders:0 unterminatedSession:isUnterminatedSession];
    }
  }
}

- (BOOL)_persistListenerState
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  currentListener = self->_currentListener;
  v11 = 0;
  v5 = [(DSKeychainPersistence *)v3 saveListenerState:currentListener withError:&v11];
  v6 = v11;
  if (!v5)
  {
    v7 = +[DSLogging sharedInstance];
    v8 = [v7 dsLogger];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "[DSProvider] failed to save peristence data with error %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_unPersistListenerState
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  v29 = 0;
  v30 = 0;
  v4 = [(DSKeychainPersistence *)v3 loadListenerState:&v30 withError:&v29];
  v5 = v30;
  v6 = v29;
  if (!v4)
  {
    v15 = +[DSLogging sharedInstance];
    v16 = [v15 dsLogger];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v32 = v6;
      v17 = "[DSProvider] No persistence data found with error: %@";
      v18 = v16;
      v19 = 12;
LABEL_15:
      _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }

LABEL_16:

    v14 = 0;
    goto LABEL_17;
  }

  if (!v5)
  {
    v23 = +[DSLogging sharedInstance];
    v16 = [v23 dsLogger];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "[DSProvider] no listener device persisted\n";
      v18 = v16;
      v19 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (![v5 version] || (v7 = objc_msgSend(v5, "version"), v7 != TextToSourceVersion()))
  {
    v20 = +[DSLogging sharedInstance];
    v16 = [v20 dsLogger];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v5 version];
      v22 = TextToSourceVersion();
      *buf = 67109376;
      v32[0] = v21;
      LOWORD(v32[1]) = 1024;
      *(&v32[1] + 2) = v22;
      v17 = "[DSProvider] version %d in persisted listener doesn't match current version: %d\n";
      v18 = v16;
      v19 = 14;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v8 = [v5 inOptions];
  v9 = [v8 dataSubType];
  v10 = [(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType];

  if (v9 != v10)
  {
    v26 = +[DSLogging sharedInstance];
    v16 = [v26 dsLogger];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v5 inOptions];
      v28 = [v27 dataSubType];
      *buf = 67109120;
      v32[0] = v28;
      _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSProvider] Invalid motion datatype %d in persisted listener\n", buf, 8u);
    }

    goto LABEL_16;
  }

  self->_isUnterminatedSession = 1;
  v11 = +[DSLogging sharedInstance];
  v12 = [v11 dsLogger];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 identifier];
    *buf = 138412290;
    *v32 = v13;
    _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "[DSProvider] UNTERMINATED session found with listener ID %@", buf, 0xCu);
  }

  [(DSProvider *)self _addNewListener:v5];
  v14 = 1;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_removePersistedState
{
  v14 = *MEMORY[0x277D85DE8];
  self->_isUnterminatedSession = 0;
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  currentListener = self->_currentListener;
  v11 = 0;
  v5 = [(DSKeychainPersistence *)v3 removeListenerState:currentListener withError:&v11];
  v6 = v11;
  if (!v5)
  {
    v7 = +[DSLogging sharedInstance];
    v8 = [v7 dsLogger];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "[DSProvider] failed to remove peristence data with error %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_receivedDataRequest:(NSObject *)a1 options:responseHandler:.cold.1(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "[DSProvider] Could not allocate rpDevice\n", v4, 2u);
  }

  *a1 = v3;
}

@end