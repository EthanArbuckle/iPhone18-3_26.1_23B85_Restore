@interface ULDisplayMonitor_OSX
- (BOOL)_checkClamshellMode;
- (BOOL)_checkScreenLocked;
- (BOOL)_checkScreenOn;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)_activateWithCompletion;
- (void)_clamshellModeChangedHandler;
- (void)_invalidationHandler;
- (void)_screenLockedChangedHandler;
- (void)_screenOnChangedHandler;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULDisplayMonitor_OSX

- (void)startMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_new();
  [(ULDisplayMonitor_OSX *)self setSystemMonitor:v6];

  v7 = [(ULEventMonitor *)self queue];
  v8 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v8 setDispatchQueue:v7];

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke;
  v24[3] = &unk_2798D4080;
  objc_copyWeak(&v25, &location);
  v9 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v9 setInvalidationHandler:v24];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_31;
  v22[3] = &unk_2798D4080;
  objc_copyWeak(&v23, &location);
  v10 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v10 setScreenOnChangedHandler:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_2;
  v20[3] = &unk_2798D4080;
  objc_copyWeak(&v21, &location);
  v11 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v11 setClamshellModeChangedHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_3;
  v18[3] = &unk_2798D4080;
  objc_copyWeak(&v19, &location);
  v12 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v12 setScreenLockedChangedHandler:v18];

  v13 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_4;
  v15[3] = &unk_2798D42F8;
  objc_copyWeak(&v17, &location);
  v14 = v4;
  v16 = v14;
  [v13 activateWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)stopMonitoring:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  [(ULDisplayMonitor_OSX *)self _invalidationHandler];
  if (onceToken_MicroLocation_Default != -1)
  {
    __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_cold_1();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = +[(ULEvent *)ULDisplayMonitorEventDisplayState_OSX];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULDisplayMonitorEventDisplayState_OSX];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULDisplayMonitorEventDisplayState_OSX);
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setScreenOn:[(ULDisplayMonitor_OSX *)self screenOn]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setScreenOnChanged:1];
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setClamshellMode:[(ULDisplayMonitor_OSX *)self clamshellMode]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setClamshellModeChanged:1];
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setScreenLocked:[(ULDisplayMonitor_OSX *)self screenLocked]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v8 setScreenLockedChanged:1];
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

  v4 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [v4 invalidate];

  [(ULDisplayMonitor_OSX *)self setSystemMonitor:0];
  [(ULDisplayMonitor_OSX *)self setScreenOn:0];
  [(ULDisplayMonitor_OSX *)self setClamshellMode:0];

  [(ULDisplayMonitor_OSX *)self setScreenLocked:0];
}

- (void)_screenOnChangedHandler
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  LODWORD(v3) = [(ULDisplayMonitor_OSX *)self screenOn];
  [(ULDisplayMonitor_OSX *)self setScreenOn:[(ULDisplayMonitor_OSX *)self _checkScreenOn]];
  if (v3 != [(ULDisplayMonitor_OSX *)self screenOn])
  {
    v4 = objc_alloc_init(ULDisplayMonitorEventDisplayState_OSX);
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOn:[(ULDisplayMonitor_OSX *)self screenOn]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOnChanged:1];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellMode:[(ULDisplayMonitor_OSX *)self clamshellMode]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellModeChanged:0];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLocked:[(ULDisplayMonitor_OSX *)self screenLocked]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLockedChanged:0];
    [(ULEventMonitor *)self postEvent:v4];
  }
}

- (void)_clamshellModeChangedHandler
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  LODWORD(v3) = [(ULDisplayMonitor_OSX *)self clamshellMode];
  [(ULDisplayMonitor_OSX *)self setClamshellMode:[(ULDisplayMonitor_OSX *)self _checkClamshellMode]];
  if (v3 != [(ULDisplayMonitor_OSX *)self clamshellMode])
  {
    v4 = objc_alloc_init(ULDisplayMonitorEventDisplayState_OSX);
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOn:[(ULDisplayMonitor_OSX *)self screenOn]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOnChanged:0];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellMode:[(ULDisplayMonitor_OSX *)self clamshellMode]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellModeChanged:1];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLocked:[(ULDisplayMonitor_OSX *)self screenLocked]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLockedChanged:0];
    [(ULEventMonitor *)self postEvent:v4];
  }
}

- (void)_screenLockedChangedHandler
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  LODWORD(v3) = [(ULDisplayMonitor_OSX *)self screenLocked];
  [(ULDisplayMonitor_OSX *)self setScreenLocked:[(ULDisplayMonitor_OSX *)self _checkScreenLocked]];
  if (v3 != [(ULDisplayMonitor_OSX *)self screenLocked])
  {
    v4 = objc_alloc_init(ULDisplayMonitorEventDisplayState_OSX);
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLocked:[(ULDisplayMonitor_OSX *)self screenLocked]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenLockedChanged:1];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOn:[(ULDisplayMonitor_OSX *)self screenOn]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setScreenOnChanged:0];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellMode:[(ULDisplayMonitor_OSX *)self clamshellMode]];
    [(ULDisplayMonitorEventDisplayState_OSX *)v4 setClamshellModeChanged:0];
    [(ULEventMonitor *)self postEvent:v4];
  }
}

- (void)_activateWithCompletion
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  [(ULDisplayMonitor_OSX *)self _screenOnChangedHandler];
  [(ULDisplayMonitor_OSX *)self _clamshellModeChangedHandler];

  [(ULDisplayMonitor_OSX *)self _screenLockedChangedHandler];
}

- (BOOL)_checkScreenOn
{
  v2 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  v3 = [v2 screenOn];

  return v3;
}

- (BOOL)_checkClamshellMode
{
  v2 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  v3 = [v2 clamshellMode];

  return v3;
}

- (BOOL)_checkScreenLocked
{
  v2 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  v3 = [v2 screenLocked];

  return v3;
}

@end