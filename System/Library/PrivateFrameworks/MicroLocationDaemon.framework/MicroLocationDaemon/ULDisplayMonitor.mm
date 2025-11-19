@interface ULDisplayMonitor
- (BOOL)_checkDisplayOnFromLayout:(id)a3;
- (BOOL)_checkScreenLockedFromLayout:(id)a3;
- (id)_checkAppInFocusFromLayout:(id)a3;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)_didUpdateDisplayLayout:(id)a3;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULDisplayMonitor

- (void)startMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D0AD08];
  v7 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__ULDisplayMonitor_startMonitoring___block_invoke;
  v14[3] = &unk_2798D42A8;
  objc_copyWeak(&v15, &location);
  [v7 setTransitionHandler:v14];
  objc_destroyWeak(&v15);
  v8 = [v6 monitorWithConfiguration:v7];
  [(ULDisplayMonitor *)self setDisplayLayoutMinitor:v8];

  v9 = dispatch_time(0, 100000000);
  v10 = [(ULEventMonitor *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__ULDisplayMonitor_startMonitoring___block_invoke_3;
  v12[3] = &unk_2798D4280;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_after(v9, v10, v12);

  objc_destroyWeak(&location);
}

void __36__ULDisplayMonitor_startMonitoring___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__ULDisplayMonitor_startMonitoring___block_invoke_2;
    v8[3] = &unk_2798D4280;
    v8[4] = v6;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __36__ULDisplayMonitor_startMonitoring___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) displayLayoutMinitor];
  v3 = [v2 currentLayout];

  if (!v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __36__ULDisplayMonitor_startMonitoring___block_invoke_3_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "DisplayMonitor got currentLayout nil", &v14, 2u);
    }
  }

  [*(a1 + 32) _didUpdateDisplayLayout:v3];
  if (onceToken_MicroLocation_Default != -1)
  {
    __36__ULDisplayMonitor_startMonitoring___block_invoke_3_cold_2();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 appInFocus];
    if ([*(a1 + 32) displayOn])
    {
      v10 = @"On";
    }

    else
    {
      v10 = @"Off";
    }

    v11 = [*(a1 + 32) screenLocked];
    v12 = @"Unlocked";
    v14 = 138413058;
    v15 = v7;
    v16 = 2112;
    if (v11)
    {
      v12 = @"Locked";
    }

    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, appInFocus: %@, display: %@, screen: %@", &v14, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ULDisplayMonitor *)self displayLayoutMinitor];
  [v6 invalidate];

  [(ULDisplayMonitor *)self setDisplayLayoutMinitor:0];
  [(ULDisplayMonitor *)self setAppInFocus:0];
  [(ULDisplayMonitor *)self setDisplayOn:0];
  [(ULDisplayMonitor *)self setScreenLocked:0];
  if (onceToken_MicroLocation_Default != -1)
  {
    __36__ULDisplayMonitor_startMonitoring___block_invoke_3_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULDisplayMonitorEventDisplayState];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULDisplayMonitorEventDisplayState);
    v9 = [(ULDisplayMonitor *)self appInFocus];
    [(ULDisplayMonitorEventDisplayState *)v8 setAppInFocus:v9];

    [(ULDisplayMonitorEventDisplayState *)v8 setAppInFocusChanged:1];
    [(ULDisplayMonitorEventDisplayState *)v8 setDisplayOn:[(ULDisplayMonitor *)self displayOn]];
    [(ULDisplayMonitorEventDisplayState *)v8 setDisplayOnChanged:1];
    [(ULDisplayMonitorEventDisplayState *)v8 setScreenLocked:[(ULDisplayMonitor *)self screenLocked]];
    [(ULDisplayMonitorEventDisplayState *)v8 setScreenLockedChanged:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_didUpdateDisplayLayout:(id)a3
{
  v17 = a3;
  v4 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = v17;
  if (v17)
  {
    v6 = [(ULDisplayMonitor *)self appInFocus];
    v7 = [(ULDisplayMonitor *)self _checkAppInFocusFromLayout:v17];
    [(ULDisplayMonitor *)self setAppInFocus:v7];

    v8 = [(ULDisplayMonitor *)self appInFocus];
    if (v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v9 = [(ULDisplayMonitor *)self appInFocus];
      v10 = [v6 isEqual:v9] ^ 1;
    }

    v11 = [(ULDisplayMonitor *)self displayOn];
    [(ULDisplayMonitor *)self setDisplayOn:[(ULDisplayMonitor *)self _checkDisplayOnFromLayout:v17]];
    v12 = v11 ^ [(ULDisplayMonitor *)self displayOn];
    v13 = [(ULDisplayMonitor *)self screenLocked];
    [(ULDisplayMonitor *)self setScreenLocked:[(ULDisplayMonitor *)self _checkScreenLockedFromLayout:v17]];
    v14 = v13 ^ [(ULDisplayMonitor *)self screenLocked];
    if ((v10 & 1) != 0 || (v12 & 1) != 0 || v14)
    {
      v15 = objc_alloc_init(ULDisplayMonitorEventDisplayState);
      v16 = [(ULDisplayMonitor *)self appInFocus];
      [(ULDisplayMonitorEventDisplayState *)v15 setAppInFocus:v16];

      [(ULDisplayMonitorEventDisplayState *)v15 setAppInFocusChanged:v10];
      [(ULDisplayMonitorEventDisplayState *)v15 setDisplayOn:[(ULDisplayMonitor *)self displayOn]];
      [(ULDisplayMonitorEventDisplayState *)v15 setDisplayOnChanged:v12];
      [(ULDisplayMonitorEventDisplayState *)v15 setScreenLocked:[(ULDisplayMonitor *)self screenLocked]];
      [(ULDisplayMonitorEventDisplayState *)v15 setScreenLockedChanged:v14];
      [(ULEventMonitor *)self postEvent:v15];
    }

    v5 = v17;
  }
}

- (id)_checkAppInFocusFromLayout:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v6 = [v4 elements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ULDisplayMonitor__checkAppInFocusFromLayout___block_invoke;
  v9[3] = &unk_2798D42D0;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__ULDisplayMonitor__checkAppInFocusFromLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 bundleIdentifier];
  if (v6 && [v11 layoutRole] == 1)
  {
    v7 = [v11 isUIApplicationElement];

    if (v7)
    {
      v8 = [v11 bundleIdentifier];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *a4 = 1;
    }
  }

  else
  {
  }
}

- (BOOL)_checkDisplayOnFromLayout:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 displayBacklightLevel];
  return v6 > 0;
}

- (BOOL)_checkScreenLockedFromLayout:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [v4 elements];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ULDisplayMonitor__checkScreenLockedFromLayout___block_invoke;
  v8[3] = &unk_2798D42D0;
  v8[4] = &v9;
  [v6 enumerateObjectsUsingBlock:v8];

  LOBYTE(v6) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __49__ULDisplayMonitor__checkScreenLockedFromLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqual:*MEMORY[0x277D0ABA0]];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_cold_1();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "Invalidation called for system handling", v3, 2u);
    }

    [WeakRetained _invalidationHandler];
  }
}

void __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _screenOnChangedHandler];
    WeakRetained = v2;
  }
}

void __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _clamshellModeChangedHandler];
    WeakRetained = v2;
  }
}

void __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _screenLockedChangedHandler];
    WeakRetained = v2;
  }
}

void __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _activateWithCompletion];
    if (onceToken_MicroLocation_Default != -1)
    {
      __40__ULDisplayMonitor_OSX_startMonitoring___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      if ([v3 screenOn])
      {
        v7 = @"On";
      }

      else
      {
        v7 = @"Off";
      }

      if ([v3 clamshellMode])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v11 = 138413058;
      if ([v3 screenLocked])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v12 = v5;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "System monitor activated, Start monitoring: %@, screenOn: %@, clamshellMode: %@, screenLocked: %@", &v11, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end