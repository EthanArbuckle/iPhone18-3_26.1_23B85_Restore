@interface CMContinuityCaptureSessionStateManager
+ (id)sharedInstance;
- (BOOL)_isStreamingForDevice:(id)device;
- (BOOL)_shouldResetConnectionForDevice:(id)device;
- (BOOL)_startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error;
- (BOOL)shouldResetConnectionForDevice:(id)device;
- (BOOL)startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error;
- (CMContinuityCaptureActiveSession)activeSession;
- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)queue;
- (id)_devicesWithPendingStopSession;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion;
- (void)_stopCurrentSession:(id)session;
- (void)_stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion;
- (void)stopCurrentSession:(id)session syncOnOwnedQueue:(BOOL)queue;
- (void)stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeSession;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CMContinuityCaptureSessionStateManager_stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = deviceCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
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

- (void)_stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion
{
  optionCopy = option;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (optionCopy)
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
    selfCopy3 = self;
    v32 = 2080;
    v33 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
    v34 = 2114;
    v35 = deviceCopy;
    v36 = 1024;
    v37 = sessionTerminationGracePeriodInSec;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ sessionTerminationGracePeriodInSec:%d", buf, 0x26u);
  }

  v12 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:deviceCopy];
  v13 = v12;
  if (v12)
  {
    dispatch_block_cancel(v12);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v32 = 2080;
      v33 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
      v34 = 2114;
      v35 = deviceCopy;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ pending completion", buf, 0x20u);
    }

    [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:deviceCopy];
    v13[2](v13);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CMContinuityCaptureSessionStateManager__stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v29, &location);
  v15 = deviceCopy;
  v27 = v15;
  v16 = completionCopy;
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
    allKeys = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    selfCopy3 = self;
    v32 = 2114;
    v33 = allKeys;
    _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ remaining active entities %{public}@", buf, 0x16u);
  }

  [v15 setStreamIntent:0];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:v15])
  {
    transportDevice = [v15 transportDevice];
    [transportDevice setStreamIntent:0];
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
  keyEnumerator = [(NSMapTable *)self->_pendingStopCompletionDevices keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      [v3 addObject:v6];
      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  return v3;
}

- (void)startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion
{
  deviceCopy = device;
  completionCopy = completion;
  skippedCompletionCopy = skippedCompletion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__CMContinuityCaptureSessionStateManager_startStreamForDevice_startCompletion_startSkippedCompletion___block_invoke;
  block[3] = &unk_278D5C4B8;
  objc_copyWeak(&v19, &location);
  v16 = deviceCopy;
  v17 = completionCopy;
  v18 = skippedCompletionCopy;
  v12 = skippedCompletionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
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

- (void)_startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion
{
  deviceCopy = device;
  completionCopy = completion;
  skippedCompletionCopy = skippedCompletion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v46 = 2080;
    v47 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
    v48 = 2114;
    v49 = deviceCopy;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@", buf, 0x20u);
  }

  [deviceCopy setStreamIntent:1];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:deviceCopy])
  {
    transportDevice = [deviceCopy transportDevice];
    [transportDevice setStreamIntent:1];
  }

  activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(deviceCopy, "entity")}];
  [(NSMutableDictionary *)activeStreamDevicesByEntity setObject:deviceCopy forKeyedSubscript:v14];

  v15 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    selfCopy4 = self;
    v46 = 2114;
    v47 = allKeys;
    _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%@ updated active entities %{public}@", buf, 0x16u);
  }

  v17 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:deviceCopy];
  if (v17)
  {
    v18 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v46 = 2080;
      v47 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
      v48 = 2114;
      v49 = deviceCopy;
      _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ cancel pending completion", buf, 0x20u);
    }

    dispatch_block_cancel(v17);
    [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:deviceCopy];
    [(NSHashTable *)self->_skippedStopStreamByDevices addObject:deviceCopy];
    compositeDelegate = [deviceCopy compositeDelegate];
    [compositeDelegate relayEvent:@"kCMContinuityCaptureEventUserResume"];

    if (skippedCompletionCopy)
    {
      skippedCompletionCopy[2](skippedCompletionCopy);
    }
  }

  else
  {
    transportDevice2 = [deviceCopy transportDevice];
    deviceIdentifier = [transportDevice2 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];

    [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v23 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v35 = skippedCompletionCopy;
      v36 = completionCopy;
      v37 = deviceCopy;
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
          transportDevice3 = [v25 transportDevice];
          deviceIdentifier2 = [transportDevice3 deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (v29)
          {
            v33 = !uUIDString2 || uUIDString == 0;
            if (v33 || ([uUIDString2 isEqualToString:uUIDString] & 1) == 0)
            {
              v34 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy4 = self;
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

      completionCopy = v36;
      deviceCopy = v37;
      v17 = 0;
      skippedCompletionCopy = v35;
    }

    completionCopy[2](completionCopy);
  }
}

- (BOOL)_isStreamingForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  transportDevice = [deviceCopy transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  allValues = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
  if ([allValues count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = allValues;
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

          transportDevice2 = [*(*(&v18 + 1) + 8 * i) transportDevice];
          deviceIdentifier2 = [transportDevice2 deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (uUIDString && uUIDString2 && [uUIDString2 isEqualToString:uUIDString])
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

- (BOOL)shouldResetConnectionForDevice:(id)device
{
  deviceCopy = device;
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
  v9 = deviceCopy;
  v10 = &v11;
  block[4] = self;
  v6 = deviceCopy;
  dispatch_async_and_wait(queue, block);

  LOBYTE(deviceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return deviceCopy;
}

uint64_t __73__CMContinuityCaptureSessionStateManager_shouldResetConnectionForDevice___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldResetConnectionForDevice:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_shouldResetConnectionForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v5 availableClientDevices];

  transportDevice = [deviceCopy transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = availableClientDevices;
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
        deviceIdentifier2 = [v14 deviceIdentifier];
        uUIDString2 = [deviceIdentifier2 UUIDString];

        if (uUIDString && uUIDString2 && [uUIDString isEqualToString:uUIDString2] && objc_msgSend(v14, "hasStreamIntent"))
        {

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          allObjects = [(NSHashTable *)self->_skippedStopStreamByDevices allObjects];
          v11 = [allObjects countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v11)
          {
            v18 = *v26;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(allObjects);
                }

                transportDevice2 = [*(*(&v25 + 1) + 8 * j) transportDevice];
                deviceIdentifier3 = [transportDevice2 deviceIdentifier];
                uUIDString3 = [deviceIdentifier3 UUIDString];

                if (uUIDString3 && ([uUIDString isEqualToString:uUIDString3] & 1) != 0)
                {

                  LOBYTE(v11) = 1;
                  goto LABEL_24;
                }
              }

              v11 = [allObjects countByEnumeratingWithState:&v25 objects:v24 count:16];
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

  allObjects = v10;
LABEL_24:

  return v11;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CMContinuityCaptureSessionStateManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
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

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"availableClientDevices"])
  {
    v56 = changeCopy;
    v57 = objectCopy;
    v58 = pathCopy;
    v12 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    availableClientDevices = [v12 availableClientDevices];

    v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v84 = 2114;
      v85 = availableClientDevices;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ updated device list %{public}@", buf, 0x16u);
    }

    _devicesWithPendingStopSession = [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = _devicesWithPendingStopSession;
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
          transportDevice = [v21 transportDevice];
          deviceIdentifier = [transportDevice deviceIdentifier];
          uUIDString = [deviceIdentifier UUIDString];

          if (uUIDString)
          {
            [v16 setObject:v21 forKeyedSubscript:uUIDString];
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
    v25 = availableClientDevices;
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

          deviceIdentifier2 = [*(*(&v73 + 1) + 8 * j) deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (uUIDString2)
          {
            [v60 addObject:uUIDString2];
            [v16 removeObjectForKey:uUIDString2];
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
    allValues = [v16 allValues];
    v33 = [allValues countByEnumeratingWithState:&v68 objects:v67 count:16];
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
            objc_enumerationMutation(allValues);
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
              selfCopy3 = self;
              v84 = 2114;
              v85 = v37;
              _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%@ remove pending stop for %{public}@", buf, 0x16u);
            }

            [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:v37];
          }
        }

        v34 = [allValues countByEnumeratingWithState:&v68 objects:v67 count:16];
      }

      while (v34);
    }

    allValues2 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
    if ([allValues2 count])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v54 = allValues2;
      v59 = allValues2;
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
            transportDevice2 = [v46 transportDevice];
            deviceIdentifier3 = [transportDevice2 deviceIdentifier];
            uUIDString3 = [deviceIdentifier3 UUIDString];

            if (uUIDString3 && ([v60 containsObject:uUIDString3] & 1) == 0)
            {
              [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:v46];
              v50 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy3 = self;
                v84 = 2114;
                v85 = v46;
                _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ remove stream intent for terminated device %{public}@", buf, 0x16u);
              }

              selfCopy4 = self;
              objc_sync_enter(selfCopy4);
              activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
              v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "entity")}];
              [(NSMutableDictionary *)activeStreamDevicesByEntity removeObjectForKey:v53];

              objc_sync_exit(selfCopy4);
            }
          }

          v43 = [v59 countByEnumeratingWithState:&v63 objects:v62 count:16];
        }

        while (v43);
      }

      allValues2 = v54;
    }

    objectCopy = v57;
    pathCopy = v58;
    changeCopy = v56;
  }
}

- (BOOL)startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error
{
  deviceCopy = device;
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
  v16 = deviceCopy;
  v22 = &v27;
  typeCopy = type;
  transportCopy = transport;
  communalDeviceCopy = communalDevice;
  onlyCopy = only;
  v20 = v16;
  dispatch_async_and_wait(queue, block);

  if (error)
  {
    *error = v28[5];
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

- (BOOL)_startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error
{
  communalDeviceCopy = communalDevice;
  onlyCopy = only;
  transportCopy = transport;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v11 availableClientDevices];

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    activeSession = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    *buf = 138413570;
    selfCopy11 = self;
    v80 = 2080;
    v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
    v82 = 2114;
    *v83 = deviceCopy;
    *&v83[8] = 2114;
    v84 = activeSession;
    v85 = 1024;
    v86 = transportCopy;
    v87 = 2114;
    v88 = availableClientDevices;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ Active session %{public}@ validateTransport:%d availableDevices:%{public}@", buf, 0x3Au);
  }

  v76 = transportCopy;
  v77 = availableClientDevices;

  activeSession2 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (activeSession2)
  {
    v16 = activeSession2;
    activeSession3 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    device = [activeSession3 device];
    deviceIdentifier = [device deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    deviceIdentifier2 = [deviceCopy deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v23 = [uUIDString isEqualToString:uUIDString2];

    if ((v23 & 1) == 0)
    {
      v37 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        activeSession4 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
        *buf = 138412802;
        selfCopy11 = self;
        v80 = 2082;
        v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
        v82 = 2114;
        *v83 = activeSession4;
        _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%@ %{public}s already active session for %{public}@", buf, 0x20u);
      }

      v34 = deviceCopy;
      v39 = v77;
      errorCopy2 = error;
      if (!error)
      {
        goto LABEL_55;
      }

      v41 = objc_alloc(MEMORY[0x277CCA9B8]);
      v42 = -1005;
      goto LABEL_51;
    }
  }

  activeSession5 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (!activeSession5)
  {
    goto LABEL_9;
  }

  v25 = activeSession5;
  activeSession6 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  device2 = [activeSession6 device];
  deviceIdentifier3 = [device2 deviceIdentifier];
  uUIDString3 = [deviceIdentifier3 UUIDString];
  deviceIdentifier4 = [deviceCopy deviceIdentifier];
  uUIDString4 = [deviceIdentifier4 UUIDString];
  v32 = [uUIDString3 isEqualToString:uUIDString4];

  if (!v32 || v76)
  {
LABEL_9:
    activeSession7 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v34 = deviceCopy;
    if (activeSession7)
    {

      v36 = 0x278D5B000;
      goto LABEL_16;
    }

    v36 = 0x278D5B000uLL;
    v43 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v44 = [v43 isUserSelectedDeviceIfApplicable:deviceCopy];

    if (v44)
    {
LABEL_16:
      if (v76)
      {
        v45 = [deviceCopy deviceStatus] & 0x1000000;
        v46 = [deviceCopy deviceStatus] & 0x200;
        v47 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          sharedInstance = [*(v36 + 2216) sharedInstance];
          transportErrorFlags = [sharedInstance transportErrorFlags];
          *buf = 138413058;
          selfCopy11 = self;
          v80 = 2048;
          v81 = transportErrorFlags;
          v82 = 1024;
          *v83 = v45 >> 24;
          *&v83[4] = 1024;
          *&v83[6] = v46 >> 9;
          _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%@ errorFlags : %llx wired:%d wireless:%d", buf, 0x22u);
        }

        sharedInstance2 = [*(v36 + 2216) sharedInstance];
        transportErrorFlags2 = [sharedInstance2 transportErrorFlags];

        if ((transportErrorFlags2 & 0x100) != 0)
        {
          v52 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy11 = self;
            _os_log_impl(&dword_242545000, v52, OS_LOG_TYPE_DEFAULT, "%@ RPError : RPErrorFlagsNoManatee", buf, 0xCu);
          }
        }

        if (!v45)
        {
          sharedInstance3 = [*(v36 + 2216) sharedInstance];
          transportErrorFlags3 = [sharedInstance3 transportErrorFlags];

          if ((transportErrorFlags3 & 4) != 0 || !v46)
          {
            v55 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
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
                selfCopy11 = self;
                v80 = 2114;
                v81 = v34;
                _os_log_impl(&dword_242545000, v56, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) non wired with wifip2p2 disabled", buf, 0x16u);
              }

              v39 = v77;
              if (error)
              {
                *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1011 userInfo:0];
              }

              selfCopy7 = self;
              objc_sync_enter(selfCopy7);
              activeSession = selfCopy7->_activeSession;
              selfCopy7->_activeSession = 0;

              objc_sync_exit(selfCopy7);
              v59 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                if (error)
                {
                  v60 = *error;
                }

                else
                {
                  v60 = 0;
                }

                *buf = 138412802;
                selfCopy11 = selfCopy7;
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
        deviceIdentifier5 = [v34 deviceIdentifier];
        uUIDString5 = [deviceIdentifier5 UUIDString];
        [v61 unscheduleNotificationForDeviceIdentifier:uUIDString5 type:14 clearHistory:0];
      }

      activeSession8 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

      if (activeSession8)
      {
        v65 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(&v65->super, OS_LOG_TYPE_DEFAULT))
        {
          activeSession9 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          selfCopy11 = self;
          v80 = 2114;
          v81 = activeSession9;
          _os_log_impl(&dword_242545000, &v65->super, OS_LOG_TYPE_DEFAULT, "%@ Connect to active session %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v65 = [[CMContinuityCaptureActiveSession alloc] initWithDevice:v34 transport:type initiatedOnCommunalDevice:communalDeviceCopy micOnly:onlyCopy];
        if (v65)
        {
          selfCopy9 = self;
          objc_sync_enter(selfCopy9);
          objc_storeStrong(&selfCopy9->_activeSession, v65);
          objc_sync_exit(selfCopy9);
        }

        v68 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          activeSession10 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          selfCopy11 = self;
          v80 = 2114;
          v81 = activeSession10;
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
      selfCopy11 = self;
      v80 = 2082;
      v81 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
      v82 = 2114;
      *v83 = deviceCopy;
      _os_log_impl(&dword_242545000, v70, OS_LOG_TYPE_DEFAULT, "%@ %{public}s device %{public}@ unavailable", buf, 0x20u);
    }

    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_55;
    }

    v41 = objc_alloc(MEMORY[0x277CCA9B8]);
    v42 = -1013;
LABEL_51:
    v33 = 0;
    *errorCopy2 = [v41 initWithDomain:@"ContinuityCapture" code:v42 userInfo:0];
    goto LABEL_56;
  }

  v33 = 1;
  v34 = deviceCopy;
LABEL_46:
  v39 = v77;
LABEL_56:

  return v33;
}

- (void)stopCurrentSession:(id)session syncOnOwnedQueue:(BOOL)queue
{
  sessionCopy = session;
  if (queue)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__CMContinuityCaptureSessionStateManager_stopCurrentSession_syncOnOwnedQueue___block_invoke;
    v8[3] = &unk_278D5C008;
    v8[4] = self;
    v9 = sessionCopy;
    dispatch_async_and_wait(queue, v8);
  }

  else
  {
    [(CMContinuityCaptureSessionStateManager *)self _stopCurrentSession:sessionCopy];
  }
}

- (void)_stopCurrentSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  [v5 discardUserSelectedDeviceIfApplicableWithReason:sessionCopy];

  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeSession = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v16 = 138413058;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureSessionStateManager _stopCurrentSession:]";
    v20 = 2114;
    v21 = activeSession;
    v22 = 2114;
    v23 = sessionCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Active session %{public}@ reason %{public}@", &v16, 0x2Au);
  }

  activeSession2 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

  if (activeSession2)
  {
    activeSession3 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    shieldSessionID = [activeSession3 shieldSessionID];

    if (shieldSessionID)
    {
      activeSession4 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      device = [activeSession4 device];
      activeSession5 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      [device relayUserDisconnectForTransport:objc_msgSend(activeSession5 reason:"transport") shieldSessionID:{sessionCopy, shieldSessionID}];
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    activeSession = selfCopy2->_activeSession;
    selfCopy2->_activeSession = 0;

    objc_sync_exit(selfCopy2);
  }
}

- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureSessionStateManager;
  v6 = [(CMContinuityCaptureSessionStateManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    dispatch_queue_set_specific(v7->_queue, v7, v7, 0);
    v7->_sessionTerminationGracePeriodInSec = FigGetCFPreferenceNumberWithDefault();
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingStopCompletionDevices = v7->_pendingStopCompletionDevices;
    v7->_pendingStopCompletionDevices = strongToStrongObjectsMapTable;

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