@interface ULRapportMonitor
- (void)_activateCompanionLinkClientAndSetHandlers;
- (void)_getIdentities;
- (void)_startMonitoringForDevices;
- (void)_startMonitoringForIdentities;
- (void)_stopMonitoringForDevices;
- (void)_stopMonitoringForIdentities;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULRapportMonitor

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[(ULEvent *)ULRapportMonitorEventIdentities];
  v6 = [monitoringCopy isEqual:v5];

  if (v6)
  {
    [(ULRapportMonitor *)self _startMonitoringForIdentities];
  }

  else
  {
    v7 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
    v8 = [monitoringCopy isEqual:v7];

    if (v8)
    {
      [(ULRapportMonitor *)self _startMonitoringForDevices];
    }
  }
}

- (void)stopMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[(ULEvent *)ULRapportMonitorEventIdentities];
  v6 = [monitoringCopy isEqual:v5];

  if (v6)
  {
    [(ULRapportMonitor *)self _stopMonitoringForIdentities];
  }

  else
  {
    v7 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
    v8 = [monitoringCopy isEqual:v7];

    if (v8)
    {
      [(ULRapportMonitor *)self _stopMonitoringForDevices];
    }
  }
}

- (void)_startMonitoringForIdentities
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D44150]);
  [(ULRapportMonitor *)self setClient:v3];

  queue = [(ULEventMonitor *)self queue];
  client = [(ULRapportMonitor *)self client];
  [client setDispatchQueue:queue];

  objc_initWeak(&location, self);
  notificationHelper = [(ULRapportMonitor *)self notificationHelper];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__ULRapportMonitor__startMonitoringForIdentities__block_invoke;
  v13 = &unk_2798D4348;
  objc_copyWeak(&v14, &location);
  [notificationHelper addObserverForNotificationName:@"com.apple.rapport.identitiesChanged" handler:&v10];

  [(ULRapportMonitor *)self _getIdentities:v10];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULRapportMonitor _startMonitoringForIdentities];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[(ULEvent *)ULRapportMonitorEventIdentities];
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@", buf, 0xCu);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __49__ULRapportMonitor__startMonitoringForIdentities__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _getIdentities];
  }
}

- (void)_startMonitoringForDevices
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  [(ULRapportMonitor *)self setCompanionLinkClient:v3];

  queue = [(ULEventMonitor *)self queue];
  companionLinkClient = [(ULRapportMonitor *)self companionLinkClient];
  [companionLinkClient setDispatchQueue:queue];

  controlFlags = [(ULRapportMonitor *)self controlFlags];
  companionLinkClient2 = [(ULRapportMonitor *)self companionLinkClient];
  [companionLinkClient2 setControlFlags:controlFlags];

  [(ULRapportMonitor *)self _activateCompanionLinkClientAndSetHandlers];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULRapportMonitor _startMonitoringForDevices];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringForIdentities
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULRapportMonitor _startMonitoringForDevices];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[(ULEvent *)ULRapportMonitorEventIdentities];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  notificationHelper = [(ULRapportMonitor *)self notificationHelper];
  [notificationHelper removeObserverForNotificationName:@"com.apple.rapport.identitiesChanged"];

  client = [(ULRapportMonitor *)self client];
  [client invalidate];

  [(ULRapportMonitor *)self setClient:0];
  [(ULRapportMonitor *)self setIdentities:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringForDevices
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULRapportMonitor _startMonitoringForDevices];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  companionLinkClient = [(ULRapportMonitor *)self companionLinkClient];
  [companionLinkClient invalidate];

  companionLinkClient2 = [(ULRapportMonitor *)self companionLinkClient];
  [companionLinkClient2 setDeviceFoundHandler:0];

  [(ULRapportMonitor *)self setCompanionLinkClient:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_getIdentities
{
  objc_initWeak(&location, self);
  client = [(ULRapportMonitor *)self client];
  identityTypeFlags = [(ULRapportMonitor *)self identityTypeFlags];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__ULRapportMonitor__getIdentities__block_invoke;
  v5[3] = &unk_2798D4370;
  objc_copyWeak(&v6, &location);
  [client getIdentitiesWithFlags:identityTypeFlags completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __34__ULRapportMonitor__getIdentities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    dispatch_assert_queue_V2(v9);

    if (v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportMonitor _startMonitoringForDevices];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "getIdentitiesWithFlags failed with error: %@", &v16, 0xCu);
      }

      [v8 _stopMonitoringForIdentities];
    }

    else
    {
      v11 = [v5 copy];
      [v8 setIdentities:v11];

      v12 = objc_alloc_init(ULRapportMonitorEventIdentities);
      v13 = [v8 identities];
      v14 = [v13 copy];
      [(ULRapportMonitorEventIdentities *)v12 setIdentities:v14];

      [v8 postEvent:v12];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_activateCompanionLinkClientAndSetHandlers
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ULRapportMonitor__activateCompanionLinkClientAndSetHandlers__block_invoke;
  v7[3] = &unk_2798D4398;
  objc_copyWeak(&v8, &location);
  companionLinkClient = [(ULRapportMonitor *)self companionLinkClient];
  [companionLinkClient setDeviceFoundHandler:v7];

  companionLinkClient2 = [(ULRapportMonitor *)self companionLinkClient];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ULRapportMonitor__activateCompanionLinkClientAndSetHandlers__block_invoke_2;
  v5[3] = &unk_2798D43C0;
  objc_copyWeak(&v6, &location);
  [companionLinkClient2 activateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__ULRapportMonitor__activateCompanionLinkClientAndSetHandlers__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    dispatch_assert_queue_V2(v5);

    v6 = objc_alloc_init(ULRapportMonitorEventDeviceFound);
    [(ULRapportMonitorEventDeviceFound *)v6 setDevice:v7];
    [v4 postEvent:v6];
  }
}

void __62__ULRapportMonitor__activateCompanionLinkClientAndSetHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    if (v3)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportMonitor _startMonitoringForDevices];
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "activateWithCompletion failed with error: %@", &v10, 0xCu);
      }

      [v5 _stopMonitoringForDevices];
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportMonitor _startMonitoringForDevices];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "RPCompanionLinkClient activated", &v10, 2u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end