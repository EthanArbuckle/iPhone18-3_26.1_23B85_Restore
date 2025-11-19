@interface CMContinuityCaptureSessionStateManager
+ (id)sharedInstance;
- (BOOL)_isStreamingForDevice:(id)a3;
- (BOOL)_shouldResetConnectionForDevice:(id)a3;
- (BOOL)_startSessionWithDevice:(id)a3 forTransportType:(int64_t)a4 validateTransport:(BOOL)a5 initiatedOnCommunalDevice:(BOOL)a6 micOnly:(BOOL)a7 outError:(id *)a8;
- (BOOL)shouldResetConnectionForDevice:(id)a3;
- (BOOL)startSessionWithDevice:(id)a3 forTransportType:(int64_t)a4 validateTransport:(BOOL)a5 initiatedOnCommunalDevice:(BOOL)a6 micOnly:(BOOL)a7 outError:(id *)a8;
- (CMContinuityCaptureActiveSession)activeSession;
- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)a3;
- (id)_devicesWithPendingStopSession;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_startStreamForDevice:(id)a3 startCompletion:(id)a4 startSkippedCompletion:(id)a5;
- (void)_stopCurrentSession:(id)a3;
- (void)_stopStreamForDevice:(id)a3 option:(int64_t)a4 completion:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startStreamForDevice:(id)a3 startCompletion:(id)a4 startSkippedCompletion:(id)a5;
- (void)stopCurrentSession:(id)a3 syncOnOwnedQueue:(BOOL)a4;
- (void)stopStreamForDevice:(id)a3 option:(int64_t)a4 completion:(id)a5;
@end

@implementation CMContinuityCaptureSessionStateManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CMContinuityCaptureSessionStateManager sharedInstance];
  }

  v3 = _sessionStateManager;

  return v3;
}

void __56__CMContinuityCaptureSessionStateManager_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureSessionStateManager alloc];
  v3 = FigDispatchQueueCreateWithPriority();
  v1 = [(CMContinuityCaptureSessionStateManager *)v0 initWithQueue:v3];
  v2 = _sessionStateManager;
  _sessionStateManager = v1;
}

- (CMContinuityCaptureActiveSession)activeSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeSession;
  objc_sync_exit(v2);

  return v3;
}

- (void)stopStreamForDevice:(id)a3 option:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CMContinuityCaptureSessionStateManager_stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureSessionStateManager_stopStreamForDevice_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopStreamForDevice:*(a1 + 32) option:*(a1 + 56) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_stopStreamForDevice:(id)a3 option:(int64_t)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    sessionTerminationGracePeriodInSec = 0;
  }

  else
  {
    sessionTerminationGracePeriodInSec = self->_sessionTerminationGracePeriodInSec;
  }

  v11 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v31 = self;
    v32 = 2080;
    v33 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
    v34 = 2114;
    v35 = v8;
    v36 = 1024;
    v37 = sessionTerminationGracePeriodInSec;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ sessionTerminationGracePeriodInSec:%d", buf, 0x26u);
  }

  v12 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:v8];
  v13 = v12;
  if (v12)
  {
    dispatch_block_cancel(v12);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = self;
      v32 = 2080;
      v33 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ pending completion", buf, 0x20u);
    }

    [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:v8];
    v13[2](v13);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CMContinuityCaptureSessionStateManager__stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v29, &location);
  v15 = v8;
  v27 = v15;
  v16 = v9;
  v28 = v16;
  v17 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  pendingStopCompletionDevices = self->_pendingStopCompletionDevices;
  v19 = MEMORY[0x245D12020]();
  [(NSMapTable *)pendingStopCompletionDevices setObject:v19 forKey:v15];

  activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "entity")}];
  [(NSMutableDictionary *)activeStreamDevicesByEntity removeObjectForKey:v21];

  v22 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    v31 = self;
    v32 = 2114;
    v33 = v23;
    _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ remaining active entities %{public}@", buf, 0x16u);
  }

  [v15 setStreamIntent:0];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:v15])
  {
    v24 = [v15 transportDevice];
    [v24 setStreamIntent:0];
  }

  v25 = dispatch_time(0, 1000000000 * sessionTerminationGracePeriodInSec);
  dispatch_after(v25, self->_queue, v17);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureSessionStateManager__stopStreamForDevice_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 32);
      v6 = 138412802;
      v7 = v4;
      v8 = 2080;
      v9 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ completion", &v6, 0x20u);
    }

    [WeakRetained[3] removeObjectForKey:*(a1 + 32)];
    [WeakRetained[5] removeObject:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_devicesWithPendingStopSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NSMapTable *)self->_pendingStopCompletionDevices keyEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v3 addObject:v6];
      v7 = [v4 nextObject];

      v6 = v7;
    }

    while (v7);
  }

  return v3;
}

- (void)startStreamForDevice:(id)a3 startCompletion:(id)a4 startSkippedCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__CMContinuityCaptureSessionStateManager_startStreamForDevice_startCompletion_startSkippedCompletion___block_invoke;
  block[3] = &unk_278D5C4B8;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __102__CMContinuityCaptureSessionStateManager_startStreamForDevice_startCompletion_startSkippedCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startStreamForDevice:*(a1 + 32) startCompletion:*(a1 + 40) startSkippedCompletion:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_startStreamForDevice:(id)a3 startCompletion:(id)a4 startSkippedCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v45 = self;
    v46 = 2080;
    v47 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
    v48 = 2114;
    v49 = v8;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@", buf, 0x20u);
  }

  [v8 setStreamIntent:1];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:v8])
  {
    v12 = [v8 transportDevice];
    [v12 setStreamIntent:1];
  }

  activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "entity")}];
  [(NSMutableDictionary *)activeStreamDevicesByEntity setObject:v8 forKeyedSubscript:v14];

  v15 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    v45 = self;
    v46 = 2114;
    v47 = v16;
    _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%@ updated active entities %{public}@", buf, 0x16u);
  }

  v17 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:v8];
  if (v17)
  {
    v18 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v45 = self;
      v46 = 2080;
      v47 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
      v48 = 2114;
      v49 = v8;
      _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ cancel pending completion", buf, 0x20u);
    }

    dispatch_block_cancel(v17);
    [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:v8];
    [(NSHashTable *)self->_skippedStopStreamByDevices addObject:v8];
    v19 = [v8 compositeDelegate];
    [v19 relayEvent:@"kCMContinuityCaptureEventUserResume"];

    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v20 = [v8 transportDevice];
    v21 = [v20 deviceIdentifier];
    v22 = [v21 UUIDString];

    [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v23 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v35 = v10;
      v36 = v9;
      v37 = v8;
      v25 = 0;
      v26 = *v41;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          v28 = v25;
          if (*v41 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v40 + 1) + 8 * i);

          v29 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:v25];
          v30 = [v25 transportDevice];
          v31 = [v30 deviceIdentifier];
          v32 = [v31 UUIDString];

          if (v29)
          {
            v33 = !v32 || v22 == 0;
            if (v33 || ([v32 isEqualToString:v22] & 1) == 0)
            {
              v34 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v45 = self;
                v46 = 2114;
                v47 = v25;
                _os_log_impl(&dword_242545000, v34, OS_LOG_TYPE_DEFAULT, "%@ complete pending stop for %{public}@", buf, 0x16u);
              }

              v29[2](v29);
              dispatch_block_cancel(v29);
              [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:v25];
              [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:v25];
            }
          }
        }

        v24 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v24);

      v9 = v36;
      v8 = v37;
      v17 = 0;
      v10 = v35;
    }

    v9[2](v9);
  }
}

- (BOOL)_isStreamingForDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 transportDevice];
  v6 = [v5 deviceIdentifier];
  v7 = [v6 UUIDString];

  v8 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
  if ([v8 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) transportDevice];
          v14 = [v13 deviceIdentifier];
          v15 = [v14 UUIDString];

          if (v7 && v15 && [v15 isEqualToString:v7])
          {

            LOBYTE(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)shouldResetConnectionForDevice:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CMContinuityCaptureSessionStateManager_shouldResetConnectionForDevice___block_invoke;
  block[3] = &unk_278D5C4E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_async_and_wait(queue, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __73__CMContinuityCaptureSessionStateManager_shouldResetConnectionForDevice___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldResetConnectionForDevice:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_shouldResetConnectionForDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v6 = [v5 availableClientDevices];

  v7 = [v4 transportDevice];
  v8 = [v7 deviceIdentifier];
  v9 = [v8 UUIDString];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v11)
  {
    v12 = *v31;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 deviceIdentifier];
        v16 = [v15 UUIDString];

        if (v9 && v16 && [v9 isEqualToString:v16] && objc_msgSend(v14, "hasStreamIntent"))
        {

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v17 = [(NSHashTable *)self->_skippedStopStreamByDevices allObjects];
          v11 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v11)
          {
            v18 = *v26;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v17);
                }

                v20 = [*(*(&v25 + 1) + 8 * j) transportDevice];
                v21 = [v20 deviceIdentifier];
                v22 = [v21 UUIDString];

                if (v22 && ([v9 isEqualToString:v22] & 1) != 0)
                {

                  LOBYTE(v11) = 1;
                  goto LABEL_24;
                }
              }

              v11 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_24;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v10;
LABEL_24:

  return v11;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CMContinuityCaptureSessionStateManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __89__CMContinuityCaptureSessionStateManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"availableClientDevices"])
  {
    v56 = v11;
    v57 = v10;
    v58 = v9;
    v12 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v13 = [v12 availableClientDevices];

    v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v83 = self;
      v84 = 2114;
      v85 = v13;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ updated device list %{public}@", buf, 0x16u);
    }

    v15 = [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v79;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v79 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v78 + 1) + 8 * i);
          v22 = [v21 transportDevice];
          v23 = [v22 deviceIdentifier];
          v24 = [v23 UUIDString];

          if (v24)
          {
            [v16 setObject:v21 forKeyedSubscript:v24];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
      }

      while (v18);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v73 objects:v72 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v74;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v74 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v73 + 1) + 8 * j) deviceIdentifier];
          v31 = [v30 UUIDString];

          if (v31)
          {
            [v60 addObject:v31];
            [v16 removeObjectForKey:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v73 objects:v72 count:16];
      }

      while (v27);
    }

    v55 = v25;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v32 = [v16 allValues];
    v33 = [v32 countByEnumeratingWithState:&v68 objects:v67 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v69;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v69 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v68 + 1) + 8 * k);
          v38 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:v37];
          v39 = v38;
          if (v38)
          {
            dispatch_block_cancel(v38);
            v40 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v83 = self;
              v84 = 2114;
              v85 = v37;
              _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%@ remove pending stop for %{public}@", buf, 0x16u);
            }

            [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v68 objects:v67 count:16];
      }

      while (v34);
    }

    v41 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
    if ([v41 count])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v54 = v41;
      v59 = v41;
      v42 = [v59 countByEnumeratingWithState:&v63 objects:v62 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v64;
        do
        {
          for (m = 0; m != v43; ++m)
          {
            if (*v64 != v44)
            {
              objc_enumerationMutation(v59);
            }

            v46 = *(*(&v63 + 1) + 8 * m);
            v47 = [v46 transportDevice];
            v48 = [v47 deviceIdentifier];
            v49 = [v48 UUIDString];

            if (v49 && ([v60 containsObject:v49] & 1) == 0)
            {
              [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:v46];
              v50 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v83 = self;
                v84 = 2114;
                v85 = v46;
                _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ remove stream intent for terminated device %{public}@", buf, 0x16u);
              }

              v51 = self;
              objc_sync_enter(v51);
              activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
              v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "entity")}];
              [(NSMutableDictionary *)activeStreamDevicesByEntity removeObjectForKey:v53];

              objc_sync_exit(v51);
            }
          }

          v43 = [v59 countByEnumeratingWithState:&v63 objects:v62 count:16];
        }

        while (v43);
      }

      v41 = v54;
    }

    v10 = v57;
    v9 = v58;
    v11 = v56;
  }
}

- (BOOL)startSessionWithDevice:(id)a3 forTransportType:(int64_t)a4 validateTransport:(BOOL)a5 initiatedOnCommunalDevice:(BOOL)a6 micOnly:(BOOL)a7 outError:(id *)a8
{
  v14 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__CMContinuityCaptureSessionStateManager_startSessionWithDevice_forTransportType_validateTransport_initiatedOnCommunalDevice_micOnly_outError___block_invoke;
  block[3] = &unk_278D5C508;
  v21 = &v33;
  block[4] = self;
  v16 = v14;
  v22 = &v27;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v20 = v16;
  dispatch_async_and_wait(queue, block);

  if (a8)
  {
    *a8 = v28[5];
  }

  v17 = *(v34 + 24);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v17;
}

void __143__CMContinuityCaptureSessionStateManager_startSessionWithDevice_forTransportType_validateTransport_initiatedOnCommunalDevice_micOnly_outError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6 = *(a1 + 74);
  v7 = *(a1 + 64);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v2 _startSessionWithDevice:v3 forTransportType:v7 validateTransport:v4 initiatedOnCommunalDevice:v5 micOnly:v6 outError:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

- (BOOL)_startSessionWithDevice:(id)a3 forTransportType:(int64_t)a4 validateTransport:(BOOL)a5 initiatedOnCommunalDevice:(BOOL)a6 micOnly:(BOOL)a7 outError:(id *)a8
{
  v73 = a6;
  v74 = a7;
  v8 = a5;
  v10 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v12 = [v11 availableClientDevices];

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    *buf = 138413570;
    v79 = self;
    v80 = 2080;
    v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
    v82 = 2114;
    *v83 = v10;
    *&v83[8] = 2114;
    v84 = v14;
    v85 = 1024;
    v86 = v8;
    v87 = 2114;
    v88 = v12;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ Active session %{public}@ validateTransport:%d availableDevices:%{public}@", buf, 0x3Au);
  }

  v76 = v8;
  v77 = v12;

  v15 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (v15)
  {
    v16 = v15;
    v17 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v18 = [v17 device];
    v19 = [v18 deviceIdentifier];
    v20 = [v19 UUIDString];
    v21 = [v10 deviceIdentifier];
    v22 = [v21 UUIDString];
    v23 = [v20 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
      v37 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
        *buf = 138412802;
        v79 = self;
        v80 = 2082;
        v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
        v82 = 2114;
        *v83 = v38;
        _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%@ %{public}s already active session for %{public}@", buf, 0x20u);
      }

      v34 = v10;
      v39 = v77;
      v40 = a8;
      if (!a8)
      {
        goto LABEL_55;
      }

      v41 = objc_alloc(MEMORY[0x277CCA9B8]);
      v42 = -1005;
      goto LABEL_51;
    }
  }

  v24 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;
  v26 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  v27 = [v26 device];
  v28 = [v27 deviceIdentifier];
  v29 = [v28 UUIDString];
  v30 = [v10 deviceIdentifier];
  v31 = [v30 UUIDString];
  v32 = [v29 isEqualToString:v31];

  if (!v32 || v76)
  {
LABEL_9:
    v35 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v34 = v10;
    if (v35)
    {

      v36 = 0x278D5B000;
      goto LABEL_16;
    }

    v36 = 0x278D5B000uLL;
    v43 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v44 = [v43 isUserSelectedDeviceIfApplicable:v10];

    if (v44)
    {
LABEL_16:
      if (v76)
      {
        v45 = [v10 deviceStatus] & 0x1000000;
        v46 = [v10 deviceStatus] & 0x200;
        v47 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [*(v36 + 2216) sharedInstance];
          v49 = [v48 transportErrorFlags];
          *buf = 138413058;
          v79 = self;
          v80 = 2048;
          v81 = v49;
          v82 = 1024;
          *v83 = v45 >> 24;
          *&v83[4] = 1024;
          *&v83[6] = v46 >> 9;
          _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%@ errorFlags : %llx wired:%d wireless:%d", buf, 0x22u);
        }

        v50 = [*(v36 + 2216) sharedInstance];
        v51 = [v50 transportErrorFlags];

        if ((v51 & 0x100) != 0)
        {
          v52 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v79 = self;
            _os_log_impl(&dword_242545000, v52, OS_LOG_TYPE_DEFAULT, "%@ RPError : RPErrorFlagsNoManatee", buf, 0xCu);
          }
        }

        if (!v45)
        {
          v53 = [*(v36 + 2216) sharedInstance];
          v54 = [v53 transportErrorFlags];

          if ((v54 & 4) != 0 || !v46)
          {
            v55 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v79 = self;
              v80 = 2114;
              v81 = v34;
              _os_log_impl(&dword_242545000, v55, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) RPError : USB inactive and WifiOff", buf, 0x16u);
            }

            if (!v46)
            {
              v56 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v79 = self;
                v80 = 2114;
                v81 = v34;
                _os_log_impl(&dword_242545000, v56, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) non wired with wifip2p2 disabled", buf, 0x16u);
              }

              v39 = v77;
              if (a8)
              {
                *a8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1011 userInfo:0];
              }

              v57 = self;
              objc_sync_enter(v57);
              activeSession = v57->_activeSession;
              v57->_activeSession = 0;

              objc_sync_exit(v57);
              v59 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                if (a8)
                {
                  v60 = *a8;
                }

                else
                {
                  v60 = 0;
                }

                *buf = 138412802;
                v79 = v57;
                v80 = 2080;
                v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
                v82 = 2114;
                *v83 = v60;
                _os_log_impl(&dword_242545000, v59, OS_LOG_TYPE_DEFAULT, "%@ %s Failed to start session error %{public}@", buf, 0x20u);
              }

LABEL_55:
              v33 = 0;
              goto LABEL_56;
            }
          }
        }

        v61 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
        v62 = [v34 deviceIdentifier];
        v63 = [v62 UUIDString];
        [v61 unscheduleNotificationForDeviceIdentifier:v63 type:14 clearHistory:0];
      }

      v64 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

      if (v64)
      {
        v65 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(&v65->super, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          v79 = self;
          v80 = 2114;
          v81 = v66;
          _os_log_impl(&dword_242545000, &v65->super, OS_LOG_TYPE_DEFAULT, "%@ Connect to active session %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v65 = [[CMContinuityCaptureActiveSession alloc] initWithDevice:v34 transport:a4 initiatedOnCommunalDevice:v73 micOnly:v74];
        if (v65)
        {
          v67 = self;
          objc_sync_enter(v67);
          objc_storeStrong(&v67->_activeSession, v65);
          objc_sync_exit(v67);
        }

        v68 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          v79 = self;
          v80 = 2114;
          v81 = v69;
          _os_log_impl(&dword_242545000, v68, OS_LOG_TYPE_DEFAULT, "%@ Activate session %{public}@", buf, 0x16u);
        }
      }

      v33 = 1;
      goto LABEL_46;
    }

    v70 = CMContinuityCaptureLog(0);
    v39 = v77;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v79 = self;
      v80 = 2082;
      v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
      v82 = 2114;
      *v83 = v10;
      _os_log_impl(&dword_242545000, v70, OS_LOG_TYPE_DEFAULT, "%@ %{public}s device %{public}@ unavailable", buf, 0x20u);
    }

    v40 = a8;
    if (!a8)
    {
      goto LABEL_55;
    }

    v41 = objc_alloc(MEMORY[0x277CCA9B8]);
    v42 = -1013;
LABEL_51:
    v33 = 0;
    *v40 = [v41 initWithDomain:@"ContinuityCapture" code:v42 userInfo:0];
    goto LABEL_56;
  }

  v33 = 1;
  v34 = v10;
LABEL_46:
  v39 = v77;
LABEL_56:

  return v33;
}

- (void)stopCurrentSession:(id)a3 syncOnOwnedQueue:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__CMContinuityCaptureSessionStateManager_stopCurrentSession_syncOnOwnedQueue___block_invoke;
    v8[3] = &unk_278D5C008;
    v8[4] = self;
    v9 = v6;
    dispatch_async_and_wait(queue, v8);
  }

  else
  {
    [(CMContinuityCaptureSessionStateManager *)self _stopCurrentSession:v6];
  }
}

- (void)_stopCurrentSession:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  [v5 discardUserSelectedDeviceIfApplicableWithReason:v4];

  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v16 = 138413058;
    v17 = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureSessionStateManager _stopCurrentSession:]";
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Active session %{public}@ reason %{public}@", &v16, 0x2Au);
  }

  v8 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

  if (v8)
  {
    v9 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v10 = [v9 shieldSessionID];

    if (v10)
    {
      v11 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      v12 = [v11 device];
      v13 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      [v12 relayUserDisconnectForTransport:objc_msgSend(v13 reason:"transport") shieldSessionID:{v4, v10}];
    }

    v14 = self;
    objc_sync_enter(v14);
    activeSession = v14->_activeSession;
    v14->_activeSession = 0;

    objc_sync_exit(v14);
  }
}

- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureSessionStateManager;
  v6 = [(CMContinuityCaptureSessionStateManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    dispatch_queue_set_specific(v7->_queue, v7, v7, 0);
    v7->_sessionTerminationGracePeriodInSec = FigGetCFPreferenceNumberWithDefault();
    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingStopCompletionDevices = v7->_pendingStopCompletionDevices;
    v7->_pendingStopCompletionDevices = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreamDevicesByEntity = v7->_activeStreamDevicesByEntity;
    v7->_activeStreamDevicesByEntity = v10;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    skippedStopStreamByDevices = v7->_skippedStopStreamByDevices;
    v7->_skippedStopStreamByDevices = v12;

    v14 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v14 addObserver:v7 forKeyPath:@"availableClientDevices" options:3 context:0];

    v15 = v7;
  }

  return v7;
}

@end