@interface _DKNotificationKeybagLockMonitor
+ (id)_eventWithState:(id)a3;
+ (id)log;
+ (int)getCurrentLockState;
+ (void)getCurrentLockState;
- (void)_activate;
- (void)_deactivate;
- (void)_receiveNotificationEvent:(id)a3;
- (void)_resume;
- (void)_updateWithKeybagLocked:(id)a3 timestamp:(double)a4;
- (void)receiveNotificationEvent:(id)a3;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKNotificationKeybagLockMonitor

+ (int)getCurrentLockState
{
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  if (v2 < 4)
  {
    return dword_22598EE50[v2];
  }

  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    +[(_DKNotificationKeybagLockMonitor *)v3];
  }

  return -1;
}

+ (id)log
{
  if (log_onceToken_0 != -1)
  {
    +[_DKNotificationKeybagLockMonitor log];
  }

  v3 = log_log_0;

  return v3;
}

- (void)_resume
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  if (self->_activated && !self->_donationQueueResumed)
  {
    dispatch_resume(self->_donationQueue);
    self->_donationQueueResumed = 1;
  }
}

+ (id)_eventWithState:(id)a3
{
  v3 = a3;
  if ([v3 BOOLValue])
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  v5 = [v3 BOOLValue];

  [_DKNotificationKeybagLockMonitor setIsLocked:v5];
  v6 = MEMORY[0x277CFE1D8];
  v7 = [MEMORY[0x277CFE298] keybagIsLockedStream];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:v7 startDate:v8 endDate:v9 value:v4];

  return v10;
}

- (void)start
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___DKNotificationKeybagLockMonitor_start__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_activate
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_DEFAULT, "activate", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("_DKNotificationKeybagLockMonitor.donations", v5);
  donationQueue = self->_donationQueue;
  self->_donationQueue = v6;

  dispatch_suspend(self->_donationQueue);
  self->_donationQueueResumed = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = +[_DKNotificationKeybagLockMonitor getCurrentLockState];
  v10 = objc_alloc(MEMORY[0x277CF10E8]);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v12 = [v10 initWithStarting:v11];

  v13 = self->_donationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___DKNotificationKeybagLockMonitor__activate__block_invoke;
  block[3] = &unk_27856F300;
  block[4] = self;
  v16 = v12;
  v17 = Current;
  v14 = v12;
  dispatch_async(v13, block);
  self->_activated = 1;
  if (MKBDeviceUnlockedSinceBoot())
  {
    [(_DKNotificationKeybagLockMonitor *)self _resume];
  }
}

- (void)stop
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___DKNotificationKeybagLockMonitor_stop__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_deactivate
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  self->_activated = 0;
  if (!self->_donationQueueResumed)
  {
    dispatch_resume(self->_donationQueue);
  }

  donationQueue = self->_donationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___DKNotificationKeybagLockMonitor__deactivate__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_barrier_sync(donationQueue, block);
  v5 = self->_donationQueue;
  self->_donationQueue = 0;
}

- (void)synchronouslyReflectCurrentValue
{
  v2 = [(_DKMonitor *)self currentEvent];

  if (!v2)
  {
    v3 = +[_DKNotificationKeybagLockMonitor getCurrentLockState];
    if (v3 != -1)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      +[_DKNotificationKeybagLockMonitor setIsLocked:](_DKNotificationKeybagLockMonitor, "setIsLocked:", [v4 BOOLValue]);
    }
  }
}

- (void)_updateWithKeybagLocked:(id)a3 timestamp:(double)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_donationQueue);
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v6;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_DEFAULT, "Writing keybagLocked event %{public}@ at %f", &v16, 0x16u);
  }

  source = self->_source;
  if (!source)
  {
    v9 = BiomeLibrary();
    v10 = [v9 Device];
    v11 = [v10 KeybagLocked];
    v12 = [v11 source];
    v13 = self->_source;
    self->_source = v12;

    source = self->_source;
  }

  [(BMSource *)source sendEvent:v6 timestamp:a4];
  lastEvent = self->_lastEvent;
  self->_lastEvent = v6;

  self->_lastUpdate = a4;
  v15 = *MEMORY[0x277D85DE8];
}

- (void)receiveNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = [(_DKMonitor *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___DKNotificationKeybagLockMonitor_receiveNotificationEvent___block_invoke;
  v10[3] = &unk_27856F0B0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  v7 = v4;
  v8 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
  block[3] = &unk_27856F178;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(v5, block);
}

- (void)_receiveNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_activated)
  {
    v6 = [v4 objectForKeyedSubscript:@"Notification"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D28B30]];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = +[_DKNotificationKeybagLockMonitor getCurrentLockState];
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(_DKNotificationKeybagLockMonitor *)v10 _receiveNotificationEvent:v11];
      }

      if (v10 != -1)
      {
        if (!v10)
        {
          v12 = [(_DKMonitor *)self currentEvent];

          if (!v12)
          {
            v13 = [objc_opt_class() log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_22595A000, v13, OS_LOG_TYPE_INFO, "Keybag unlocked but we don't have a previous lock event. Creating an initial (boot) lock state.", v25, 2u);
            }

            v14 = MEMORY[0x277CBEAA8];
            v15 = [MEMORY[0x277CCAC38] processInfo];
            [v15 systemUptime];
            v17 = [v14 dateWithTimeIntervalSinceNow:-v16];

            v18 = MEMORY[0x277CFE1D8];
            v19 = [MEMORY[0x277CFE298] keybagIsLockedStream];
            v20 = [MEMORY[0x277CBEAA8] distantFuture];
            v21 = [MEMORY[0x277CFE1A0] yes];
            v22 = [v18 eventWithStream:v19 startDate:v17 endDate:v20 value:v21];

            [(_DKMonitor *)self setCurrentEvent:v22 inferHistoricalState:0];
          }
        }

        v23 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        v24 = [_DKNotificationKeybagLockMonitor _eventWithState:v23];
        [(_DKMonitor *)self setCurrentEvent:v24 inferHistoricalState:1];

        [(_DKNotificationKeybagLockMonitor *)self _enqueueKeybagLockedUpdate:v10 timestamp:Current];
      }
    }
  }
}

+ (void)getCurrentLockState
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_22595A000, a2, OS_LOG_TYPE_FAULT, "Unexpected lock state %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_receiveNotificationEvent:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "Keybag lock state: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end