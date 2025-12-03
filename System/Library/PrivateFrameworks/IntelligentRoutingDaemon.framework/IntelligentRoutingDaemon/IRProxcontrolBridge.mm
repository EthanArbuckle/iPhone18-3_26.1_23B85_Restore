@interface IRProxcontrolBridge
- (IRProxcontrolBridge)initWithDelegate:(id)delegate name:(id)name;
- (IRProximityBridgeDelegateProtocol)delegate;
- (void)_createProxControlObserver;
- (void)_runProxControlObserver;
- (void)invalidate;
- (void)run;
@end

@implementation IRProxcontrolBridge

- (IRProxcontrolBridge)initWithDelegate:(id)delegate name:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IRProxcontrolBridge;
  v8 = [(IRProxcontrolBridge *)&v12 self];

  if (v8)
  {
    [(IRProxcontrolBridge *)v8 setName:nameCopy];
    [(IRProxcontrolBridge *)v8 setDelegate:delegateCopy];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.intelligentroutingd.proxcontrol-bridge", v9);
    [(IRProxcontrolBridge *)v8 setQueue:v10];
  }

  return v8;
}

- (void)_createProxControlObserver
{
  v3 = [(NSString *)self->_name copy];
  pclControlsObserver = [(IRProxcontrolBridge *)self pclControlsObserver];

  if (!pclControlsObserver)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(MEMORY[0x277D435E0]);
    [(IRProxcontrolBridge *)self setPclControlsObserver:v5];

    queue = self->_queue;
    pclControlsObserver2 = [(IRProxcontrolBridge *)self pclControlsObserver];
    [pclControlsObserver2 setDispatchQueue:queue];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__IRProxcontrolBridge__createProxControlObserver__block_invoke;
    v19[3] = &unk_2797E1038;
    objc_copyWeak(&v21, &location);
    v8 = v3;
    v20 = v8;
    pclControlsObserver3 = [(IRProxcontrolBridge *)self pclControlsObserver];
    [pclControlsObserver3 setDeviceLost:v19];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_35;
    v16[3] = &unk_2797E1038;
    objc_copyWeak(&v18, &location);
    v10 = v8;
    v17 = v10;
    pclControlsObserver4 = [(IRProxcontrolBridge *)self pclControlsObserver];
    [pclControlsObserver4 setDeviceUpdated:v16];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_36;
    v13[3] = &unk_2797E1060;
    objc_copyWeak(&v15, &location);
    v14 = v10;
    pclControlsObserver5 = [(IRProxcontrolBridge *)self pclControlsObserver];
    [pclControlsObserver5 setInvalidationHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    v7 = [IRNearbyDeviceDO alloc];
    v8 = [v3 mediaRouteID];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [(IRNearbyDeviceDO *)v7 initWithRange:0 idsIdentifier:v8 mediaRemoteIdentifier:v9 proximityType:v10 measurementDate:1000.0];

    v12 = [v5 delegate];
    v13 = [v5 name];
    [v12 didRemoveDevice:v11 withName:v13];

    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_cold_1();
    }
  }
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    v7 = [v3 distance];

    if (v7)
    {
      v8 = [IRNearbyDeviceDO alloc];
      v9 = [v3 distance];
      [v9 doubleValue];
      v11 = v10;
      v12 = [v3 mediaRouteID];
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x277CBEAA8] now];
      v15 = [(IRNearbyDeviceDO *)v8 initWithRange:0 idsIdentifier:v12 mediaRemoteIdentifier:v13 proximityType:v14 measurementDate:v11];

      v16 = [v5 delegate];
      [v16 didUpdateNearbyDevice:v15 withName:*(a1 + 32)];
    }

    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_35_cold_1();
    }
  }
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    v7 = [v5 delegate];
    [v7 didBridgeFail:*(a1 + 32)];

    v8 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_36_cold_1(v8, v3);
    }
  }
}

- (void)_runProxControlObserver
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "#proxcontrol-bridge, Starting proximity control session", buf, 2u);
  }

  pclControlsObserver = [(IRProxcontrolBridge *)self pclControlsObserver];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__IRProxcontrolBridge__runProxControlObserver__block_invoke;
  v5[3] = &unk_2797E1088;
  objc_copyWeak(&v6, &location);
  [pclControlsObserver activateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__IRProxcontrolBridge__runProxControlObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    if (v6)
    {
      v7 = [v5 queue];
      dispatch_assert_queue_V2(v7);

      v8 = [v5 name];
      if (v3)
      {
        [v6 didBridgeFail:v8];

        v9 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          __46__IRProxcontrolBridge__runProxControlObserver__block_invoke_cold_1(v9, v3);
        }
      }

      else
      {
        [v6 didBridgeRunSuccesfully:v8];

        v10 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_INFO, "#proxcontrol-bridge, Activated PCLockscreenControlsObserver", v11, 2u);
        }
      }
    }
  }
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  queue = [(IRProxcontrolBridge *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__IRProxcontrolBridge_invalidate__block_invoke;
  v4[3] = &unk_2797E0C18;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __33__IRProxcontrolBridge_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained pclControlsObserver];
    [v2 invalidate];

    [v3 setPclControlsObserver:0];
    WeakRetained = v3;
  }
}

- (void)run
{
  objc_initWeak(&location, self);
  queue = [(IRProxcontrolBridge *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__IRProxcontrolBridge_run__block_invoke;
  v4[3] = &unk_2797E0C18;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __26__IRProxcontrolBridge_run__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained pclControlsObserver];

    WeakRetained = v3;
    if (!v2)
    {
      [v3 _createProxControlObserver];
      [v3 _runProxControlObserver];
      WeakRetained = v3;
    }
  }
}

- (IRProximityBridgeDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEBUG, "#proxcontrol-bridge, PCLockscreenControlsObserver:deviceLost: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_35_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEBUG, "#proxcontrol-bridge, PCLockscreenControlsObserver:deviceUpdated: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__IRProxcontrolBridge__createProxControlObserver__block_invoke_36_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25543D000, v5, v6, "#proxcontrol-bridge, [ErrorId - Prox control invalidated] PCLockscreenControlsObserver:invalidationHandler: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __46__IRProxcontrolBridge__runProxControlObserver__block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25543D000, v5, v6, "#proxcontrol-bridge, [ErrorId - Prox Control activation error] PCLockscreenControlsObserver:activateWithCompletion: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end