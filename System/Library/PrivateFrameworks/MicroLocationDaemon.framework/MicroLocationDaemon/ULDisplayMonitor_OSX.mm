@interface ULDisplayMonitor_OSX
- (BOOL)_checkClamshellMode;
- (BOOL)_checkScreenLocked;
- (BOOL)_checkScreenOn;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)_activateWithCompletion;
- (void)_clamshellModeChangedHandler;
- (void)_invalidationHandler;
- (void)_screenLockedChangedHandler;
- (void)_screenOnChangedHandler;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULDisplayMonitor_OSX

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_opt_new();
  [(ULDisplayMonitor_OSX *)self setSystemMonitor:v6];

  queue2 = [(ULEventMonitor *)self queue];
  systemMonitor = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor setDispatchQueue:queue2];

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke;
  v24[3] = &unk_2798D4080;
  objc_copyWeak(&v25, &location);
  systemMonitor2 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor2 setInvalidationHandler:v24];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_31;
  v22[3] = &unk_2798D4080;
  objc_copyWeak(&v23, &location);
  systemMonitor3 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor3 setScreenOnChangedHandler:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_2;
  v20[3] = &unk_2798D4080;
  objc_copyWeak(&v21, &location);
  systemMonitor4 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor4 setClamshellModeChangedHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_3;
  v18[3] = &unk_2798D4080;
  objc_copyWeak(&v19, &location);
  systemMonitor5 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor5 setScreenLockedChangedHandler:v18];

  systemMonitor6 = [(ULDisplayMonitor_OSX *)self systemMonitor];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_4;
  v15[3] = &unk_2798D42F8;
  objc_copyWeak(&v17, &location);
  v14 = monitoringCopy;
  v16 = v14;
  [systemMonitor6 activateWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)stopMonitoring:(id)monitoring
{
  v11 = *MEMORY[0x277D85DE8];
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

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

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULDisplayMonitorEventDisplayState_OSX];
  v7 = [nameCopy isEqual:v6];

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
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  systemMonitor = [(ULDisplayMonitor_OSX *)self systemMonitor];
  [systemMonitor invalidate];

  [(ULDisplayMonitor_OSX *)self setSystemMonitor:0];
  [(ULDisplayMonitor_OSX *)self setScreenOn:0];
  [(ULDisplayMonitor_OSX *)self setClamshellMode:0];

  [(ULDisplayMonitor_OSX *)self setScreenLocked:0];
}

- (void)_screenOnChangedHandler
{
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  LODWORD(queue) = [(ULDisplayMonitor_OSX *)self screenOn];
  [(ULDisplayMonitor_OSX *)self setScreenOn:[(ULDisplayMonitor_OSX *)self _checkScreenOn]];
  if (queue != [(ULDisplayMonitor_OSX *)self screenOn])
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
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  LODWORD(queue) = [(ULDisplayMonitor_OSX *)self clamshellMode];
  [(ULDisplayMonitor_OSX *)self setClamshellMode:[(ULDisplayMonitor_OSX *)self _checkClamshellMode]];
  if (queue != [(ULDisplayMonitor_OSX *)self clamshellMode])
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
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  LODWORD(queue) = [(ULDisplayMonitor_OSX *)self screenLocked];
  [(ULDisplayMonitor_OSX *)self setScreenLocked:[(ULDisplayMonitor_OSX *)self _checkScreenLocked]];
  if (queue != [(ULDisplayMonitor_OSX *)self screenLocked])
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
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ULDisplayMonitor_OSX *)self _screenOnChangedHandler];
  [(ULDisplayMonitor_OSX *)self _clamshellModeChangedHandler];

  [(ULDisplayMonitor_OSX *)self _screenLockedChangedHandler];
}

- (BOOL)_checkScreenOn
{
  systemMonitor = [(ULDisplayMonitor_OSX *)self systemMonitor];
  screenOn = [systemMonitor screenOn];

  return screenOn;
}

- (BOOL)_checkClamshellMode
{
  systemMonitor = [(ULDisplayMonitor_OSX *)self systemMonitor];
  clamshellMode = [systemMonitor clamshellMode];

  return clamshellMode;
}

- (BOOL)_checkScreenLocked
{
  systemMonitor = [(ULDisplayMonitor_OSX *)self systemMonitor];
  screenLocked = [systemMonitor screenLocked];

  return screenLocked;
}

@end