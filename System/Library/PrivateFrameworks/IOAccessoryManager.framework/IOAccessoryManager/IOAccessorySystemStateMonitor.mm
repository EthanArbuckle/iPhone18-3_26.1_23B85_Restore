@interface IOAccessorySystemStateMonitor
- (IOAccessorySystemStateMonitor)init;
- (void)dealloc;
- (void)notifyEndpointsBootComplete:(BOOL)a3;
- (void)processBootState;
- (void)processDisplayState;
- (void)removeEndpointForService:(unsigned int)a3;
@end

@implementation IOAccessorySystemStateMonitor

- (IOAccessorySystemStateMonitor)init
{
  v35.receiver = self;
  v35.super_class = IOAccessorySystemStateMonitor;
  v2 = [(IOAccessorySystemStateMonitor *)&v35 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IOAccessoryManager.SystemStateMonitor", 0);
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v2 + 6) = v5;
    IONotificationPortSetDispatchQueue(v5, *(v2 + 7));
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = *(v2 + 6);
    v9 = IOServiceMatching("IOAccessoryIDBusSystemStates");
    IOServiceAddMatchingNotification(v8, "IOServiceFirstPublish", v9, ProcessPublishedEndpoints, v2, v2 + 4);
    v10 = *(v2 + 6);
    v11 = IOServiceMatching("IOAccessoryIDBusSystemStates");
    IOServiceAddMatchingNotification(v10, "IOServiceTerminate", v11, ProcessTerminatedEndpoints, v2, v2 + 5);
    v12 = *(v2 + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke;
    block[3] = &unk_279793120;
    v13 = v2;
    v34 = v13;
    dispatch_sync(v12, block);
    v14 = *(v2 + 7);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __37__IOAccessorySystemStateMonitor_init__block_invoke_2;
    v31 = &unk_279793370;
    v15 = v13;
    v32 = v15;
    *(v15 + 5) = IOPMScheduleUserActivityLevelNotificationWithTimeout();
    v16 = *(v2 + 7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_3;
    handler[3] = &unk_279793398;
    v17 = v15;
    v27 = v17;
    notify_register_dispatch("com.apple.RealitySimulation.DisplayRevealFirstBoot", v15 + 6, v16, handler);
    v18 = *(v2 + 7);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_4;
    v24[3] = &unk_279793398;
    v19 = v17;
    v25 = v19;
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", v17 + 7, v18, v24);
    v20 = *(v2 + 7);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_5;
    v22[3] = &unk_279793120;
    v23 = v19;
    dispatch_sync(v20, v22);
  }

  return v2;
}

uint64_t __37__IOAccessorySystemStateMonitor_init__block_invoke(uint64_t a1)
{
  ProcessPublishedEndpoints(*(a1 + 32), *(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = v2[5];

  return ProcessTerminatedEndpoints(v2, v3);
}

uint64_t __37__IOAccessorySystemStateMonitor_init__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) processDisplayState];
  v2 = *(a1 + 32);

  return [v2 processBootState];
}

- (void)dealloc
{
  if (self->_pmNotificationHandle)
  {
    IOPMUnregisterNotification();
    self->_pmNotificationHandle = 0;
  }

  displayNotifyToken = self->_displayNotifyToken;
  if (displayNotifyToken)
  {
    notify_cancel(displayNotifyToken);
    self->_displayNotifyToken = 0;
  }

  discoveryIterator = self->_discoveryIterator;
  if (discoveryIterator)
  {
    IOObjectRelease(discoveryIterator);
    self->_discoveryIterator = 0;
  }

  terminationIterator = self->_terminationIterator;
  if (terminationIterator)
  {
    IOObjectRelease(terminationIterator);
    self->_terminationIterator = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
    self->_notificationPort = 0;
  }

  v7.receiver = self;
  v7.super_class = IOAccessorySystemStateMonitor;
  [(IOAccessorySystemStateMonitor *)&v7 dealloc];
}

- (void)processDisplayState
{
  state64 = 0;
  notify_get_state(self->_displayNotifyToken, &state64);
  [(IOAccessorySystemStateMonitor *)self notifyEndpointsUserPresent:state64 != 0];
}

- (void)processBootState
{
  state64 = 0;
  notify_get_state(self->_bootToken, &state64);
  [(IOAccessorySystemStateMonitor *)self notifyEndpointsBootComplete:state64 != 0];
}

- (void)removeEndpointForService:(unsigned int)a3
{
  if (a3)
  {
    entryID = 0;
    if (!IORegistryEntryGetRegistryEntryID(a3, &entryID))
    {
      endpointMap = self->_endpointMap;
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
      [(NSMutableDictionary *)endpointMap setObject:0 forKeyedSubscript:v5];
    }
  }
}

- (void)notifyEndpointsBootComplete:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableDictionary *)self->_endpointMap count];
      *buf = 136315394;
      v16 = "[IOAccessorySystemStateMonitor notifyEndpointsBootComplete:]";
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s boot completed notifying %lu endpoints", buf, 0x16u);
    }

    OUTLINED_FUNCTION_4_1();
    v5 = self->_endpointMap;
    OUTLINED_FUNCTION_3_2();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_endpointMap objectForKeyedSubscript:*(v13 + 8 * v10)];
          [v11 notifyBootComplete];

          ++v10;
        }

        while (v8 != v10);
        OUTLINED_FUNCTION_3_2();
        v8 = [NSMutableDictionary countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v8);
    }

    self->_bootComplete = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addEndpointForService:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEndpointForService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEndpointForService:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEndpointForService:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEndpointForService:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end