@interface ULBluetoothMonitor
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)_bluetoothStateChangeHandler;
- (void)_invalidationHandler;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULBluetoothMonitor

- (void)startMonitoring:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_new();
  [(ULBluetoothMonitor *)self setController:v6];

  v7 = [(ULEventMonitor *)self queue];
  v8 = [(ULBluetoothMonitor *)self controller];
  [v8 setDispatchQueue:v7];

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __38__ULBluetoothMonitor_startMonitoring___block_invoke;
  v22[3] = &unk_2798D4080;
  objc_copyWeak(&v23, &location);
  v9 = [(ULBluetoothMonitor *)self controller];
  [v9 setInvalidationHandler:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__ULBluetoothMonitor_startMonitoring___block_invoke_6;
  v20[3] = &unk_2798D4080;
  objc_copyWeak(&v21, &location);
  v10 = [(ULBluetoothMonitor *)self controller];
  [v10 setInterruptionHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__ULBluetoothMonitor_startMonitoring___block_invoke_7;
  v18[3] = &unk_2798D4080;
  objc_copyWeak(&v19, &location);
  v11 = [(ULBluetoothMonitor *)self controller];
  [v11 setBluetoothStateChangedHandler:v18];

  v12 = [(ULBluetoothMonitor *)self controller];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__ULBluetoothMonitor_startMonitoring___block_invoke_2;
  v16[3] = &unk_2798D4200;
  objc_copyWeak(&v17, &location);
  [v12 activateWithCompletion:v16];

  [(ULBluetoothMonitor *)self setPowerOn:1];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBluetoothMonitor startMonitoring:];
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULBluetoothMonitor powerOn](self, "powerOn")}];
    *buf = 138412546;
    v26 = v4;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "[ULBluetoothMonitor]: Start monitoring: %@, powerOn: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __38__ULBluetoothMonitor_startMonitoring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULBluetoothMonitor_startMonitoring___block_invoke_cold_1();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "[ULBluetoothMonitor]: Invalidation called for bluetooth client", v3, 2u);
    }

    [WeakRetained _invalidationHandler];
  }
}

void __38__ULBluetoothMonitor_startMonitoring___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULBluetoothMonitor_startMonitoring___block_invoke_cold_1();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "[ULBluetoothMonitor]: Interruption called for bluetooth client", v3, 2u);
    }
  }
}

void __38__ULBluetoothMonitor_startMonitoring___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _bluetoothStateChangeHandler];
    WeakRetained = v2;
  }
}

void __38__ULBluetoothMonitor_startMonitoring___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULBluetoothMonitor_startMonitoring___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "[ULBluetoothMonitor]: activate with completion called with error: %@", &v7, 0xCu);
    }

    if (v3)
    {
      [WeakRetained _invalidationHandler];
    }

    else
    {
      [WeakRetained _bluetoothStateChangeHandler];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  if (onceToken_MicroLocation_Default != -1)
  {
    __38__ULBluetoothMonitor_startMonitoring___block_invoke_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "[ULBluetoothMonitor]: Stop monitoring: %@", &v8, 0xCu);
  }

  [(ULBluetoothMonitor *)self _invalidationHandler];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULBluetoothMonitorEventPowerOn];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULBluetoothMonitorEventPowerOn);
    [(ULBluetoothMonitorEventPowerOn *)v8 setPowerOn:[(ULBluetoothMonitor *)self powerOn]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_invalidationHandler
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ULBluetoothMonitor *)self controller];
  [v4 invalidate];

  [(ULBluetoothMonitor *)self setController:0];

  [(ULBluetoothMonitor *)self setPowerOn:0];
}

- (void)_bluetoothStateChangeHandler
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ULBluetoothMonitor *)self controller];
  v5 = [v4 bluetoothState];

  if (onceToken_MicroLocation_Default != -1)
  {
    __38__ULBluetoothMonitor_startMonitoring___block_invoke_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACA8];
    if (v5 > 0xA)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_2798D4220[v5];
    }

    v9 = v6;
    v10 = [v7 stringWithUTF8String:v8];
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "[ULBluetoothMonitor]: Bluetooth state: %@", &v14, 0xCu);
  }

  v11 = [(ULBluetoothMonitor *)self _checkPowerOnForBluetoothState:v5];
  if (v11 != [(ULBluetoothMonitor *)self powerOn])
  {
    [(ULBluetoothMonitor *)self setPowerOn:v11];
    v12 = objc_alloc_init(ULBluetoothMonitorEventPowerOn);
    [(ULBluetoothMonitorEventPowerOn *)v12 setPowerOn:[(ULBluetoothMonitor *)self powerOn]];
    [(ULEventMonitor *)self postEvent:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end