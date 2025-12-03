@interface IRProximityProvider
+ (BOOL)didContainer:(id)container changeWithUpdatetContainer:(id)updatetContainer andRangeThreshold:(double)threshold;
+ (BOOL)isUWBProximityType:(id)type;
- (BOOL)_isPdedestrianFenceAvailable;
- (IRProximityProvider)init;
- (void)_filterDevicesWithNearbyDevice:(id)device;
- (void)_incrementRetryCount:(id)count;
- (void)_inspectNearbyDevicesAndSetPedestrianFenceSessionState:(id)state;
- (void)_invalidateAndNullifyAllBridges;
- (void)_invalidateBridge:(id)bridge;
- (void)_removeAllDevicesForProximityType:(id)type;
- (void)_removeAllUwbDevicesAndClearFence;
- (void)_resetRetryCount:(id)count;
- (void)_setupAndRunAllBridges;
- (void)_setupAndRunBridge:(id)bridge;
- (void)_setupNIDevicePresenceBridgeIfNeeded;
- (void)_setupNIHomeDeviceObserverBridgeIfNeeded;
- (void)_setupProxControlSessionIfNeeded;
- (void)_updateObservers:(id)observers withDevices:(id)devices andProvider:(id)provider;
- (void)addObserver:(id)observer;
- (void)didBridgeFail:(id)fail;
- (void)didBridgeRunSuccesfully:(id)succesfully;
- (void)didBridgeSuspendEndedWithName:(id)name;
- (void)didBridgeSuspendStartedWithName:(id)name;
- (void)didInvalidateAllDevices:(id)devices;
- (void)didRemoveDevice:(id)device withName:(id)name;
- (void)didUpdateNearbyDevice:(id)device withName:(id)name;
- (void)removeObserver:(id)observer;
@end

@implementation IRProximityProvider

- (IRProximityProvider)init
{
  v14.receiver = self;
  v14.super_class = IRProximityProvider;
  v2 = [(IRProximityProvider *)&v14 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(IRProximityProvider *)v2 setObservers:weakObjectsHashTable];

    v4 = objc_opt_new();
    [(IRProximityProvider *)v2 setCachedNearbyDevices:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.intelligentroutingd.proximityprovider", v5);
    [(IRProximityProvider *)v2 setQueue:v6];

    v7 = objc_opt_new();
    [(IRProximityProvider *)v2 setRetryCountPerProximityType:v7];

    retryCountPerProximityType = [(IRProximityProvider *)v2 retryCountPerProximityType];
    [retryCountPerProximityType setObject:&unk_286768FE0 forKeyedSubscript:@"NIHomeDevice"];

    retryCountPerProximityType2 = [(IRProximityProvider *)v2 retryCountPerProximityType];
    [retryCountPerProximityType2 setObject:&unk_286768FE0 forKeyedSubscript:@"NIDevicePresence"];

    retryCountPerProximityType3 = [(IRProximityProvider *)v2 retryCountPerProximityType];
    [retryCountPerProximityType3 setObject:&unk_286768FE0 forKeyedSubscript:@"ProxControl"];

    v11 = objc_opt_new();
    [(IRProximityProvider *)v2 setProximityBridges:v11];

    v12 = [[IRCMPDRFenceBridge alloc] initWithFenceIdentifier:@"uwb.suspend"];
    [(IRProximityProvider *)v2 setUwbFenceBridge:v12];
  }

  return v2;
}

- (void)_filterDevicesWithNearbyDevice:(id)device
{
  deviceCopy = device;
  queue = [(IRProximityProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = MEMORY[0x277CCAC30];
  idsIdentifier = [deviceCopy idsIdentifier];
  if (idsIdentifier)
  {
    idsIdentifier2 = [deviceCopy idsIdentifier];
  }

  else
  {
    idsIdentifier2 = @"invalid-no-match";
  }

  mediaRemoteIdentifier = [deviceCopy mediaRemoteIdentifier];
  if (mediaRemoteIdentifier)
  {
    mediaRemoteIdentifier2 = [deviceCopy mediaRemoteIdentifier];
  }

  else
  {
    mediaRemoteIdentifier2 = @"invalid-no-match";
  }

  proximityType = [deviceCopy proximityType];
  v11 = [v5 predicateWithFormat:@"NOT ((%K = %@ OR %K = %@)AND %K = %@)", @"idsIdentifier", idsIdentifier2, @"mediaRemoteIdentifier", mediaRemoteIdentifier2, @"proximityType", proximityType];

  if (mediaRemoteIdentifier)
  {
  }

  if (idsIdentifier)
  {
  }

  cachedNearbyDevices = [(IRProximityProvider *)self cachedNearbyDevices];
  [cachedNearbyDevices filterUsingPredicate:v11];
}

- (void)_setupNIDevicePresenceBridgeIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = [a2 debugDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25543D000, selfCopy, OS_LOG_TYPE_ERROR, "#proximity-provider, [ErrorId - NI presence config error] NIConfiguration error while setting up NI presence: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupNIHomeDeviceObserverBridgeIfNeeded
{
  proximityBridges = [(IRProximityProvider *)self proximityBridges];
  v4 = [proximityBridges objectForKeyedSubscript:@"NIHomeDevice"];

  if (!v4)
  {
    v5 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#proximity-provider, Starting NI home device observer session", buf, 2u);
    }

    v6 = objc_alloc(MEMORY[0x277CD8A48]);
    v7 = objc_opt_new();
    v8 = [v6 initWithRegions:v7];

    [v8 setAllowedDevices:2];
    [v8 setAnchor:1];
    objc_initWeak(&location, self);
    v9 = [IRNearbyInteractionBridge alloc];
    v10 = objc_loadWeakRetained(&location);
    v11 = [(IRNearbyInteractionBridge *)v9 initWithDelegate:v10 NIConfiguration:v8 observer:1 name:@"NIHomeDevice"];

    [(IRNearbyInteractionBridge *)v11 setTrackUpdates:1];
    proximityBridges2 = [(IRProximityProvider *)self proximityBridges];
    [proximityBridges2 setObject:v11 forKeyedSubscript:@"NIHomeDevice"];

    objc_destroyWeak(&location);
  }
}

- (void)_setupProxControlSessionIfNeeded
{
  proximityBridges = [(IRProximityProvider *)self proximityBridges];
  v4 = [proximityBridges objectForKeyedSubscript:@"ProxControl"];

  if (!v4)
  {
    v5 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#proximity-provider, Starting prox control session", buf, 2u);
    }

    objc_initWeak(&location, self);
    v6 = [IRProxcontrolBridge alloc];
    v7 = objc_loadWeakRetained(&location);
    v8 = [(IRProxcontrolBridge *)v6 initWithDelegate:v7 name:@"ProxControl"];
    proximityBridges2 = [(IRProximityProvider *)self proximityBridges];
    [proximityBridges2 setObject:v8 forKeyedSubscript:@"ProxControl"];

    objc_destroyWeak(&location);
  }
}

- (void)_invalidateBridge:(id)bridge
{
  bridgeCopy = bridge;
  proximityBridges = [(IRProximityProvider *)self proximityBridges];
  v5 = [proximityBridges objectForKeyedSubscript:bridgeCopy];

  [v5 invalidate];
}

- (void)_setupAndRunBridge:(id)bridge
{
  bridgeCopy = bridge;
  if ([bridgeCopy isEqualToString:@"NIDevicePresence"])
  {
    [(IRProximityProvider *)self _setupNIDevicePresenceBridgeIfNeeded];
  }

  else if ([bridgeCopy isEqualToString:@"NIHomeDevice"])
  {
    [(IRProximityProvider *)self _setupNIHomeDeviceObserverBridgeIfNeeded];
  }

  else if ([bridgeCopy isEqualToString:@"ProxControl"])
  {
    [(IRProximityProvider *)self _setupProxControlSessionIfNeeded];
  }

  proximityBridges = [(IRProximityProvider *)self proximityBridges];
  v5 = [proximityBridges objectForKeyedSubscript:bridgeCopy];
  [v5 run];
}

- (void)_invalidateAndNullifyAllBridges
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_proximityBridges allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  proximityBridges = [(IRProximityProvider *)self proximityBridges];
  [proximityBridges removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setupAndRunAllBridges
{
  [(IRProximityProvider *)self _setupAndRunBridge:@"NIDevicePresence"];
  [(IRProximityProvider *)self _setupAndRunBridge:@"NIHomeDevice"];

  [(IRProximityProvider *)self _setupAndRunBridge:@"ProxControl"];
}

- (void)_resetRetryCount:(id)count
{
  countCopy = count;
  retryCountPerProximityType = [(IRProximityProvider *)self retryCountPerProximityType];
  [retryCountPerProximityType setObject:&unk_286768FE0 forKeyedSubscript:countCopy];
}

- (void)_incrementRetryCount:(id)count
{
  v4 = MEMORY[0x277CCABB0];
  retryCountPerProximityType = self->_retryCountPerProximityType;
  countCopy = count;
  v9 = [(NSMutableDictionary *)retryCountPerProximityType objectForKeyedSubscript:countCopy];
  v7 = [v4 numberWithInteger:{objc_msgSend(v9, "integerValue") + 1}];
  retryCountPerProximityType = [(IRProximityProvider *)self retryCountPerProximityType];
  [retryCountPerProximityType setObject:v7 forKeyedSubscript:countCopy];
}

- (void)_removeAllDevicesForProximityType:(id)type
{
  typeCopy = type;
  queue = [(IRProximityProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  typeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K = %@)", @"proximityType", typeCopy];

  cachedNearbyDevices = [(IRProximityProvider *)self cachedNearbyDevices];
  [cachedNearbyDevices filterUsingPredicate:typeCopy];

  observers = [(IRProximityProvider *)self observers];
  cachedNearbyDevices2 = [(IRProximityProvider *)self cachedNearbyDevices];
  [(IRProximityProvider *)self _updateObservers:observers withDevices:cachedNearbyDevices2 andProvider:self];
}

- (void)_removeAllUwbDevicesAndClearFence
{
  queue = [(IRProximityProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IRProximityProvider *)self setFreezeDateNIHomeDevice:0];
  [(IRProximityProvider *)self _removeAllDevicesForProximityType:@"NIHomeDevice"];
  [(IRProximityProvider *)self _removeAllDevicesForProximityType:@"ProxControl"];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Removing All Uwb Devices", v6, 2u);
  }

  uwbFenceBridge = [(IRProximityProvider *)self uwbFenceBridge];
  [uwbFenceBridge clearFence];
}

- (void)_inspectNearbyDevicesAndSetPedestrianFenceSessionState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  queue = [(IRProximityProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(IRProximityProvider *)self _isPdedestrianFenceAvailable])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = stateCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          proximityType = [*(*(&v21 + 1) + 8 * v10) proximityType];
          v12 = [IRProximityProvider isUWBProximityType:proximityType];

          if (v12)
          {
            v13 = 0;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:

    isUwbFenceSessionStarted = [(IRProximityProvider *)self isUwbFenceSessionStarted];
    if (v13)
    {
      if (isUwbFenceSessionStarted)
      {
        uwbFenceBridge = [(IRProximityProvider *)self uwbFenceBridge];
        [uwbFenceBridge endSession];

        [(IRProximityProvider *)self setIsUwbFenceSessionStarted:0];
        v16 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Ending fence session", v20, 2u);
        }
      }
    }

    if (((v13 | [(IRProximityProvider *)self isUwbFenceSessionStarted]) & 1) == 0)
    {
      uwbFenceBridge2 = [(IRProximityProvider *)self uwbFenceBridge];
      [uwbFenceBridge2 startSession];

      [(IRProximityProvider *)self setIsUwbFenceSessionStarted:1];
      v18 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_25543D000, v18, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Starting fence session", v20, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPdedestrianFenceAvailable
{
  v2 = +[IRPreferences shared];
  uwbSuspendPedestrianFenceEnable = [v2 uwbSuspendPedestrianFenceEnable];
  if ([uwbSuspendPedestrianFenceEnable BOOLValue])
  {
    v4 = +[IRCMPDRFenceBridge isAvailable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__IRProximityProvider_addObserver___block_invoke;
  v7[3] = &unk_2797E10C8;
  objc_copyWeak(&v10, &location);
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__IRProximityProvider_addObserver___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained + 5;
    if (([WeakRetained[5] containsObject:a1[4]] & 1) == 0)
    {
      v5 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        __35__IRProximityProvider_addObserver___block_invoke_cold_1(v3 + 5, v5);
      }

      [*v4 addObject:a1[4]];
      v6 = [*v4 allObjects];
      v7 = [v6 count];

      if (v7 == 1)
      {
        [v3 _setupAndRunAllBridges];
      }

      v8 = [IRNearbyDeviceContainerDO alloc];
      v9 = [a1[5] freezeDateNIHomeDevice];
      v10 = [v9 copy];
      v11 = [v3[4] copy];
      v12 = [(IRNearbyDeviceContainerDO *)v8 initWithFreezeDateNIHomeDevice:v10 nearbyDevices:v11];

      [a1[4] provider:a1[5] didUpdateNearbyDevices:v12];
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IRProximityProvider_removeObserver___block_invoke;
  v7[3] = &unk_2797E10C8;
  objc_copyWeak(&v10, &location);
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__IRProximityProvider_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained + 5;
    if ([WeakRetained[5] containsObject:*(a1 + 32)])
    {
      [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
      v5 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        __38__IRProximityProvider_removeObserver___block_invoke_cold_1(v3 + 5, v5);
      }

      v6 = [*v4 allObjects];
      v7 = [v6 count];

      if (!v7)
      {
        [v3 _invalidateAndNullifyAllBridges];
      }
    }
  }
}

- (void)_updateObservers:(id)observers withDevices:(id)devices andProvider:(id)provider
{
  v27 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  devicesCopy = devices;
  providerCopy = provider;
  [(IRProximityProvider *)self _inspectNearbyDevicesAndSetPedestrianFenceSessionState:devicesCopy];
  v11 = [IRNearbyDeviceContainerDO alloc];
  freezeDateNIHomeDevice = [(IRProximityProvider *)self freezeDateNIHomeDevice];
  v13 = [freezeDateNIHomeDevice copy];
  v14 = [devicesCopy copy];
  v15 = [(IRNearbyDeviceContainerDO *)v11 initWithFreezeDateNIHomeDevice:v13 nearbyDevices:v14];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = observersCopy;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v22 + 1) + 8 * v20++) provider:providerCopy didUpdateNearbyDevices:{v15, v22}];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateNearbyDevice:(id)device withName:(id)name
{
  deviceCopy = device;
  nameCopy = name;
  mediaRemoteIdentifier = [deviceCopy mediaRemoteIdentifier];
  if (mediaRemoteIdentifier)
  {

LABEL_4:
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__IRProximityProvider_didUpdateNearbyDevice_withName___block_invoke;
    block[3] = &unk_2797E10F0;
    objc_copyWeak(&v15, &location);
    v12 = nameCopy;
    v13 = deviceCopy;
    selfCopy = self;
    dispatch_async(queue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    goto LABEL_5;
  }

  idsIdentifier = [deviceCopy idsIdentifier];

  if (idsIdentifier)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __54__IRProximityProvider_didUpdateNearbyDevice_withName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _resetRetryCount:*(a1 + 32)];
    v4 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __54__IRProximityProvider_didUpdateNearbyDevice_withName___block_invoke_cold_1(a1, v4);
    }

    [v3 _filterDevicesWithNearbyDevice:*(a1 + 40)];
    v5 = [v3 cachedNearbyDevices];
    [v5 addObject:*(a1 + 40)];

    v6 = *(a1 + 48);
    v7 = [v3 observers];
    v8 = [v3 cachedNearbyDevices];
    [v6 _updateObservers:v7 withDevices:v8 andProvider:v3];
  }
}

- (void)didBridgeRunSuccesfully:(id)succesfully
{
  succesfullyCopy = succesfully;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__IRProximityProvider_didBridgeRunSuccesfully___block_invoke;
  block[3] = &unk_2797E0BA8;
  v8 = succesfullyCopy;
  v6 = succesfullyCopy;
  dispatch_async(queue, block);
}

void __47__IRProximityProvider_didBridgeRunSuccesfully___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25543D000, v2, OS_LOG_TYPE_INFO, "#proximity-provider, Bridge RunSuccesfully: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didBridgeFail:(id)fail
{
  failCopy = fail;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__IRProximityProvider_didBridgeFail___block_invoke;
  block[3] = &unk_2797E1118;
  objc_copyWeak(&v9, &location);
  v8 = failCopy;
  v6 = failCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__IRProximityProvider_didBridgeFail___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "#proximity-provider, Bridge failed: %@", &v10, 0xCu);
    }

    [WeakRetained _incrementRetryCount:*(a1 + 32)];
    [WeakRetained _invalidateBridge:*(a1 + 32)];
    [WeakRetained _removeAllDevicesForProximityType:*(a1 + 32)];
    v5 = [WeakRetained[7] objectForKeyedSubscript:*(a1 + 32)];
    v6 = +[IRPreferences shared];
    v7 = [v6 proximitySessionRetryCountThreshold];
    v8 = [v5 isLessThanOrEqualTo:v7];

    if (v8)
    {
      [WeakRetained _setupAndRunBridge:*(a1 + 32)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateAllDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRProximityProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__IRProximityProvider_didInvalidateAllDevices___block_invoke;
  v7[3] = &unk_2797E1140;
  v8 = devicesCopy;
  v6 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

- (void)didRemoveDevice:(id)device withName:(id)name
{
  deviceCopy = device;
  nameCopy = name;
  idsIdentifier = [deviceCopy idsIdentifier];
  if (idsIdentifier)
  {

LABEL_4:
    queue = [(IRProximityProvider *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__IRProximityProvider_didRemoveDevice_withName___block_invoke;
    v11[3] = &unk_2797E1168;
    v12 = nameCopy;
    v13 = deviceCopy;
    IRDispatchAsyncWithStrongSelf(queue, self, v11);

    goto LABEL_5;
  }

  mediaRemoteIdentifier = [deviceCopy mediaRemoteIdentifier];

  if (mediaRemoteIdentifier)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __48__IRProximityProvider_didRemoveDevice_withName___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 freezeDateNIHomeDevice];
  if (v4 && (v5 = v4, v6 = [IRProximityProvider isUWBProximityType:*(a1 + 32)], v5, v6))
  {
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Bridge %@ removed device %@, device frozen since fence active", &v14, 0x16u);
    }
  }

  else
  {
    [v3 _filterDevicesWithNearbyDevice:*(a1 + 40)];
    v10 = [v3 observers];
    v11 = [v3 cachedNearbyDevices];
    [v3 _updateObservers:v10 withDevices:v11 andProvider:v3];

    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __48__IRProximityProvider_didRemoveDevice_withName___block_invoke_cold_1(v3, v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didBridgeSuspendStartedWithName:(id)name
{
  nameCopy = name;
  queue = [(IRProximityProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__IRProximityProvider_didBridgeSuspendStartedWithName___block_invoke;
  v7[3] = &unk_2797E1168;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __55__IRProximityProvider_didBridgeSuspendStartedWithName___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isEqual:@"NIHomeDevice"] && objc_msgSend(v3, "_isPdedestrianFenceAvailable") && (objc_msgSend(v3, "isUwbFenceSessionStarted") & 1) != 0)
  {
    v4 = [v3 uwbFenceBridge];
    [v4 clearFence];

    v5 = +[IRPreferences shared];
    v6 = [v5 uwbSuspendPedestrianFenceRadiusMeters];
    [v6 floatValue];
    v8 = v7;

    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      LODWORD(v13) = v8;
      v14 = [v11 numberWithFloat:v13];
      *buf = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Setting PDR Fence for bridge %@, with radius:%@", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CBEAA8] now];
    [v3 setFreezeDateNIHomeDevice:v15];

    objc_initWeak(buf, v3);
    v16 = [v3 uwbFenceBridge];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__IRProximityProvider_didBridgeSuspendStartedWithName___block_invoke_71;
    v28[3] = &unk_2797E0C18;
    objc_copyWeak(&v29, buf);
    LODWORD(v17) = v8;
    [v16 setFence:v28 withCompletion:v17];

    v18 = *(a1 + 40);
    v19 = [v3 observers];
    v20 = [v3 cachedNearbyDevices];
    [v18 _updateObservers:v19 withDevices:v20 andProvider:v3];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    [v3 _removeAllDevicesForProximityType:*(a1 + 32)];
    v21 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = MEMORY[0x277CCABB0];
      v24 = v21;
      v25 = [v23 numberWithBool:{objc_msgSend(v3, "isUwbFenceSessionStarted")}];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{+[IRCMPDRFenceBridge isAvailable](IRCMPDRFenceBridge, "isAvailable")}];
      *buf = 138412802;
      v31 = v22;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_25543D000, v24, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Bridge suspended without setting fence, name:%@, isFenceSessionStarted:%@, isFenceAvailable:%@", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __55__IRProximityProvider_didBridgeSuspendStartedWithName___block_invoke_71(uint64_t a1)
{
  v2 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25543D000, v2, OS_LOG_TYPE_DEFAULT, "#proximity-provider, Fence completion called", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    IRDispatchAsyncWithStrongSelf(v5, v4, &__block_literal_global_6);
  }
}

- (void)didBridgeSuspendEndedWithName:(id)name
{
  nameCopy = name;
  queue = [(IRProximityProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__IRProximityProvider_didBridgeSuspendEndedWithName___block_invoke;
  v7[3] = &unk_2797E1168;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __53__IRProximityProvider_didBridgeSuspendEndedWithName___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_INFO, "#proximity-provider, Bridge session suspend ended: %@", &v9, 0xCu);
  }

  if ([IRProximityProvider isUWBProximityType:*(a1 + 32)])
  {
    [v3 _removeAllUwbDevicesAndClearFence];
  }

  if ([*(a1 + 32) isEqualToString:@"NIDevicePresence"])
  {
    v6 = [*(a1 + 40) proximityBridges];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
    [v7 run];
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isUWBProximityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqual:@"ProxControl"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqual:@"NIHomeDevice"];
  }

  return v4;
}

+ (BOOL)didContainer:(id)container changeWithUpdatetContainer:(id)updatetContainer andRangeThreshold:(double)threshold
{
  updatetContainerCopy = updatetContainer;
  containerCopy = container;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CBEAA8] now];
  nearbyDevices = [updatetContainerCopy nearbyDevices];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__IRProximityProvider_didContainer_changeWithUpdatetContainer_andRangeThreshold___block_invoke;
  v26[3] = &unk_2797E11B0;
  v27 = v9;
  thresholdCopy = threshold;
  v13 = v11;
  v28 = v13;
  v14 = v9;
  [nearbyDevices enumerateObjectsUsingBlock:v26];

  nearbyDevices2 = [containerCopy nearbyDevices];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __81__IRProximityProvider_didContainer_changeWithUpdatetContainer_andRangeThreshold___block_invoke_2;
  v22 = &unk_2797E11B0;
  thresholdCopy2 = threshold;
  v23 = v10;
  v24 = v13;
  v16 = v13;
  v17 = v10;
  [nearbyDevices2 enumerateObjectsUsingBlock:&v19];

  LOBYTE(v13) = [v14 isEqualToSet:{v17, v19, v20, v21, v22}];
  return v13 ^ 1;
}

void __81__IRProximityProvider_didContainer_changeWithUpdatetContainer_andRangeThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 range];
  v7 = [v4 copyWithReplacementRange:dbl_2554B2750[v5 < *(a1 + 48)]];

  v6 = [v7 copyWithReplacementMeasurementDate:*(a1 + 40)];
  [v3 addObject:v6];
}

void __81__IRProximityProvider_didContainer_changeWithUpdatetContainer_andRangeThreshold___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 range];
  v7 = [v4 copyWithReplacementRange:dbl_2554B2750[v5 < *(a1 + 48)]];

  v6 = [v7 copyWithReplacementMeasurementDate:*(a1 + 40)];
  [v3 addObject:v6];
}

void __35__IRProximityProvider_addObserver___block_invoke_cold_1(void **a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 allObjects];
  [v4 count];
  OUTLINED_FUNCTION_0_1(&dword_25543D000, v5, v6, "#proximity-provider, Add observer, num observers before = %lu", v7, v8, v9, v10, 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __38__IRProximityProvider_removeObserver___block_invoke_cold_1(void **a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0_1(&dword_25543D000, v4, v5, "#proximity-provider, Removing observer, num observers after = %lu", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

void __54__IRProximityProvider_didUpdateNearbyDevice_withName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#proximity-provider, Bridge updated device: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __48__IRProximityProvider_didRemoveDevice_withName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#proximity-provider, Updated cached nearby devices: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end