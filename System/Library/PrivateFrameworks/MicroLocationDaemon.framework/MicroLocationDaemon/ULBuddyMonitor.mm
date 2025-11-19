@interface ULBuddyMonitor
- (ULBuddyMonitor)initWithNotificationHelper:(id)a3;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)_handleBuddyCompleteNotification;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULBuddyMonitor

- (ULBuddyMonitor)initWithNotificationHelper:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULBuddyMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULBuddyMonitor *)v5 setNotificationHelper:v4];
  }

  return v6;
}

- (void)startMonitoring:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  [(ULBuddyMonitor *)self setBuddyComplete:[(ULBuddyMonitor *)self _checkBuddyComplete]];
  if (![(ULBuddyMonitor *)self buddyComplete])
  {
    objc_initWeak(location, self);
    v6 = [(ULBuddyMonitor *)self notificationHelper];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__ULBuddyMonitor_startMonitoring___block_invoke;
    v12[3] = &unk_2798D4080;
    objc_copyWeak(&v13, location);
    [v6 addObserverForNotificationName:*MEMORY[0x277D4D9E8] handler:v12];

    [(ULBuddyMonitor *)self setBuddyComplete:[(ULBuddyMonitor *)self _checkBuddyComplete]];
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBuddyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(ULBuddyMonitor *)self buddyComplete];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *location = 138412546;
    *&location[4] = v4;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, buddyComplete: %@", location, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __34__ULBuddyMonitor_startMonitoring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleBuddyCompleteNotification];
    WeakRetained = v2;
  }
}

- (void)stopMonitoring:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ULBuddyMonitor *)self notificationHelper];
  [v6 removeObserverForNotificationName:*MEMORY[0x277D4D9E8]];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBuddyMonitor stopMonitoring:];
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

  v6 = +[(ULEvent *)ULBuddyMonitorEventBuddyComplete];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULBuddyMonitorEventBuddyComplete);
    [(ULBuddyMonitorEventBuddyComplete *)v8 setBuddyComplete:[(ULBuddyMonitor *)self buddyComplete]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleBuddyCompleteNotification
{
  v3 = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ULBuddyMonitor__handleBuddyCompleteNotification__block_invoke;
  block[3] = &unk_2798D41D8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __50__ULBuddyMonitor__handleBuddyCompleteNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBuddyComplete:1];
  v2 = objc_alloc_init(ULBuddyMonitorEventBuddyComplete);
  [(ULBuddyMonitorEventBuddyComplete *)v2 setBuddyComplete:1];
  [*(a1 + 32) postEvent:v2];
}

@end