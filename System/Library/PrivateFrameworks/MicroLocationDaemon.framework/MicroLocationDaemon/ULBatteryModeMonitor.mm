@interface ULBatteryModeMonitor
- (BOOL)_checkLowPowerMode;
- (ULBatteryModeMonitor)initWithNotificationHelper:(id)helper;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)_handleIOPSNotifyAdapterChangeNotification;
- (void)_handleNSProcessInfoPowerStateDidChangeNotification:(id)notification;
- (void)_startMonitoringForLowPowerMode;
- (void)_startMonitoringForUnlimitedPower;
- (void)_stopMonitoringForLowPowerMode;
- (void)_stopMonitoringForUnlimitedPower;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULBatteryModeMonitor

- (ULBatteryModeMonitor)initWithNotificationHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = ULBatteryModeMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULBatteryModeMonitor *)v5 setNotificationHelper:helperCopy];
  }

  return v6;
}

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
  v6 = [monitoringCopy isEqual:v5];

  if (v6)
  {
    [(ULBatteryModeMonitor *)self _startMonitoringForUnlimitedPower];
  }

  else
  {
    v7 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
    v8 = [monitoringCopy isEqual:v7];

    if (v8)
    {
      [(ULBatteryModeMonitor *)self _startMonitoringForLowPowerMode];
    }
  }
}

- (void)stopMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
  v6 = [monitoringCopy isEqual:v5];

  if (v6)
  {
    [(ULBatteryModeMonitor *)self _stopMonitoringForUnlimitedPower];
  }

  else
  {
    v7 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
    v8 = [monitoringCopy isEqual:v7];

    if (v8)
    {
      [(ULBatteryModeMonitor *)self _stopMonitoringForLowPowerMode];
    }
  }
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
  v7 = [nameCopy isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULBatteryModeMonitorEventUnlimitedPower);
    [(ULBatteryModeMonitorEventUnlimitedPower *)v8 setUnlimitedPower:[(ULBatteryModeMonitor *)self unlimitedPower]];
  }

  else
  {
    v9 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
    v10 = [nameCopy isEqual:v9];

    if (v10)
    {
      v8 = objc_alloc_init(ULBatteryModeMonitorEventLowPowerMode);
      [(ULBatteryModeMonitorEventUnlimitedPower *)v8 setLowPowerMode:[(ULBatteryModeMonitor *)self lowPowerMode]];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_startMonitoringForUnlimitedPower
{
  v19 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  notificationHelper = [(ULBatteryModeMonitor *)self notificationHelper];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __57__ULBatteryModeMonitor__startMonitoringForUnlimitedPower__block_invoke;
  v12 = &unk_2798D4080;
  objc_copyWeak(&v13, &location);
  [notificationHelper addObserverForNotificationName:@"com.apple.system.powermanagement.poweradapter" handler:&v9];

  [(ULBatteryModeMonitor *)self setUnlimitedPower:[(ULBatteryModeMonitor *)self _checkUnlimitedPower:v9]];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBatteryModeMonitor _startMonitoringForUnlimitedPower];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
    unlimitedPower = [(ULBatteryModeMonitor *)self unlimitedPower];
    v7 = @"NO";
    if (unlimitedPower)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, unlimitedPower: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__ULBatteryModeMonitor__startMonitoringForUnlimitedPower__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleIOPSNotifyAdapterChangeNotification];
    WeakRetained = v2;
  }
}

- (void)_startMonitoringForLowPowerMode
{
  v14 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleNSProcessInfoPowerStateDidChangeNotification_ name:*MEMORY[0x277CCA5E8] object:0];

  [(ULBatteryModeMonitor *)self setLowPowerMode:[(ULBatteryModeMonitor *)self _checkLowPowerMode]];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBatteryModeMonitor _startMonitoringForLowPowerMode];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
    lowPowerMode = [(ULBatteryModeMonitor *)self lowPowerMode];
    v8 = @"NO";
    if (lowPowerMode)
    {
      v8 = @"YES";
    }

    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, lowPowerMode: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringForUnlimitedPower
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBatteryModeMonitor _startMonitoringForLowPowerMode];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  notificationHelper = [(ULBatteryModeMonitor *)self notificationHelper];
  [notificationHelper removeObserverForNotificationName:@"com.apple.system.powermanagement.poweradapter"];

  [(ULBatteryModeMonitor *)self setUnlimitedPower:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringForLowPowerMode
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBatteryModeMonitor _startMonitoringForLowPowerMode];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

  [(ULBatteryModeMonitor *)self setLowPowerMode:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIOPSNotifyAdapterChangeNotification
{
  queue = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ULBatteryModeMonitor__handleIOPSNotifyAdapterChangeNotification__block_invoke;
  block[3] = &unk_2798D41D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__ULBatteryModeMonitor__handleIOPSNotifyAdapterChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkUnlimitedPower];
  if (v2 != [*(a1 + 32) unlimitedPower])
  {
    [*(a1 + 32) setUnlimitedPower:v2];
    v3 = objc_alloc_init(ULBatteryModeMonitorEventUnlimitedPower);
    [(ULBatteryModeMonitorEventUnlimitedPower *)v3 setUnlimitedPower:v2];
    [*(a1 + 32) postEvent:v3];
  }
}

- (void)_handleNSProcessInfoPowerStateDidChangeNotification:(id)notification
{
  queue = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ULBatteryModeMonitor__handleNSProcessInfoPowerStateDidChangeNotification___block_invoke;
  block[3] = &unk_2798D41D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __76__ULBatteryModeMonitor__handleNSProcessInfoPowerStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkLowPowerMode];
  if (v2 != [*(a1 + 32) lowPowerMode])
  {
    [*(a1 + 32) setLowPowerMode:v2];
    v3 = objc_alloc_init(ULBatteryModeMonitorEventLowPowerMode);
    [(ULBatteryModeMonitorEventLowPowerMode *)v3 setLowPowerMode:v2];
    [*(a1 + 32) postEvent:v3];
  }
}

- (BOOL)_checkLowPowerMode
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

@end