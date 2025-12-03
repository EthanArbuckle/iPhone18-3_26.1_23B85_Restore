@interface _DKNotificationTimeZoneChangeMonitor
+ (id)log;
- (_DKNotificationTimeZoneChangeMonitor)init;
- (void)_updateWithTimeZone:(id)zone timestamp:(double)timestamp;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)enqueueTimeZoneUpdate;
- (void)receiveNotificationEvent:(id)event;
- (void)start;
- (void)stop;
@end

@implementation _DKNotificationTimeZoneChangeMonitor

+ (id)log
{
  if (log_onceToken_3 != -1)
  {
    +[_DKNotificationTimeZoneChangeMonitor log];
  }

  v3 = log_log_3;

  return v3;
}

- (_DKNotificationTimeZoneChangeMonitor)init
{
  v7.receiver = self;
  v7.super_class = _DKNotificationTimeZoneChangeMonitor;
  v2 = [(_DKMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("_DKNotificationTimeZoneChangeMonitor.donations", v3);
    donationQueue = v2->_donationQueue;
    v2->_donationQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(_DKNotificationTimeZoneChangeMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNotificationTimeZoneChangeMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKNotificationTimeZoneChangeMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    [(_DKNotificationTimeZoneChangeMonitor *)self activate];
  }
}

- (void)activate
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "activate", buf, 2u);
  }

  dispatch_suspend(self->_donationQueue);
  self->_resumed = 0;
  Current = CFAbsoluteTimeGetCurrent();
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v6 = objc_alloc(MEMORY[0x277CF1130]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(systemTimeZone, "secondsFromGMT")}];
  name = [systemTimeZone name];
  v9 = [v6 initWithSecondsFromGMT:v7 name:name];

  donationQueue = self->_donationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48___DKNotificationTimeZoneChangeMonitor_activate__block_invoke;
  block[3] = &unk_27856F300;
  block[4] = self;
  v14 = v9;
  v15 = Current;
  v11 = v9;
  dispatch_async(donationQueue, block);
  self->_enabled = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48___DKNotificationTimeZoneChangeMonitor_activate__block_invoke_30;
  v12[3] = &unk_27856F060;
  v12[4] = self;
  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:v12];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNotificationTimeZoneChangeMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNotificationTimeZoneChangeMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  if (!self->_resumed)
  {
    self->_cancel = 1;
    dispatch_resume(self->_donationQueue);
  }

  donationQueue = self->_donationQueue;

  dispatch_barrier_sync(donationQueue, &__block_literal_global_34);
}

- (void)_updateWithTimeZone:(id)zone timestamp:(double)timestamp
{
  v19 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  dispatch_assert_queue_V2(self->_donationQueue);
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = zoneCopy;
    v17 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_DEFAULT, "Writing timezone event %@ at %f", &v15, 0x16u);
  }

  timeZone = self->_timeZone;
  self->_timeZone = zoneCopy;
  v9 = zoneCopy;

  self->_lastUpdate = timestamp;
  v10 = BiomeLibrary();
  device = [v10 Device];
  timeZone = [device TimeZone];
  source = [timeZone source];
  [source sendEvent:v9 timestamp:timestamp];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enqueueTimeZoneUpdate
{
  Current = CFAbsoluteTimeGetCurrent();
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v5 = objc_alloc(MEMORY[0x277CF1130]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(systemTimeZone, "secondsFromGMT")}];
  name = [systemTimeZone name];
  v8 = [v5 initWithSecondsFromGMT:v6 name:name];

  donationQueue = self->_donationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___DKNotificationTimeZoneChangeMonitor_enqueueTimeZoneUpdate__block_invoke;
  block[3] = &unk_27856F300;
  block[4] = self;
  v12 = v8;
  v13 = Current;
  v10 = v8;
  dispatch_async(donationQueue, block);
}

- (void)receiveNotificationEvent:(id)event
{
  eventCopy = event;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v7 = [eventCopy objectForKeyedSubscript:@"Notification"];
    v8 = [v7 isEqual:@"SignificantTimeChangeNotification"];

    if (v8)
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_22595A000, v9, OS_LOG_TYPE_DEFAULT, "Received notification event for time zone changed!", v10, 2u);
      }

      [(_DKNotificationTimeZoneChangeMonitor *)self enqueueTimeZoneUpdate];
    }
  }

  objc_autoreleasePoolPop(v6);
}

@end