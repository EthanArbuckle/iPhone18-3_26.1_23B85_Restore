@interface ULInternalNotifyMonitor
- (ULInternalNotifyMonitor)initWithNotificationHelper:(id)helper;
- (id)_identifierFromEventName:(id)name;
- (void)_handleNotificationForEventName:(id)name;
- (void)_startMonitoringForEventName:(id)name identifier:(id)identifier;
- (void)_stopMonitoringForEventName:(id)name identifier:(id)identifier;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULInternalNotifyMonitor

- (ULInternalNotifyMonitor)initWithNotificationHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = ULInternalNotifyMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULInternalNotifyMonitor *)v5 setNotificationHelper:helperCopy];
  }

  return v6;
}

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(ULInternalNotifyMonitor *)self _identifierFromEventName:monitoringCopy];
  [(ULInternalNotifyMonitor *)self _startMonitoringForEventName:monitoringCopy identifier:v6];
}

- (void)stopMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(ULInternalNotifyMonitor *)self _identifierFromEventName:monitoringCopy];
  [(ULInternalNotifyMonitor *)self _stopMonitoringForEventName:monitoringCopy identifier:v6];
}

- (void)_startMonitoringForEventName:(id)name identifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  notificationHelper = [(ULInternalNotifyMonitor *)self notificationHelper];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ULInternalNotifyMonitor__startMonitoringForEventName_identifier___block_invoke;
  v12[3] = &unk_2798D42F8;
  objc_copyWeak(&v14, &location);
  v9 = nameCopy;
  v13 = v9;
  [notificationHelper addObserverForNotificationName:identifierCopy handler:v12];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULInternalNotifyMonitor _startMonitoringForEventName:identifier:];
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@", buf, 0xCu);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void __67__ULInternalNotifyMonitor__startMonitoringForEventName_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleNotificationForEventName:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_stopMonitoringForEventName:(id)name identifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULInternalNotifyMonitor _stopMonitoringForEventName:identifier:];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = nameCopy;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v11, 0xCu);
  }

  notificationHelper = [(ULInternalNotifyMonitor *)self notificationHelper];
  [notificationHelper removeObserverForNotificationName:identifierCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ULInternalNotifyMonitor__handleNotificationForEventName___block_invoke;
  v7[3] = &unk_2798D4280;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_async(queue, v7);
}

void __59__ULInternalNotifyMonitor__handleNotificationForEventName___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSClassFromString(*(a1 + 32)));
  [*(a1 + 40) postEvent:v2];
}

- (id)_identifierFromEventName:(id)name
{
  nameCopy = name;
  v4 = +[(ULEvent *)ULInternalNotifyMonitorEventLocalize];
  v5 = [nameCopy isEqual:v4];

  if (v5)
  {
    v6 = @"com.apple.milod.action-localize";
  }

  else
  {
    v7 = +[(ULEvent *)ULInternalNotifyMonitorEventRecord];
    v8 = [nameCopy isEqual:v7];

    if (v8)
    {
      v6 = @"com.apple.milod.action-record";
    }

    else
    {
      v9 = +[(ULEvent *)ULInternalNotifyMonitorEventPurge];
      v10 = [nameCopy isEqual:v9];

      if (v10)
      {
        v6 = @"com.apple.milod.action-purge";
      }

      else
      {
        v11 = +[(ULEvent *)ULInternalNotifyMonitorEventSettingsRefresh];
        v12 = [nameCopy isEqual:v11];

        if (v12)
        {
          v6 = @"com.apple.milod.action-settings-refresh";
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

@end