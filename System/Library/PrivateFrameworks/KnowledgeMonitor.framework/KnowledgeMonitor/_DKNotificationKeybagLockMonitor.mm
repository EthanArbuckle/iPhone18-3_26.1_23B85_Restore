@interface _DKNotificationKeybagLockMonitor
+ (id)_eventWithState:(id)state;
+ (id)log;
+ (int)getCurrentLockState;
+ (void)getCurrentLockState;
- (void)_activate;
- (void)_deactivate;
- (void)_receiveNotificationEvent:(id)event;
- (void)_resume;
- (void)_updateWithKeybagLocked:(id)locked timestamp:(double)timestamp;
- (void)receiveNotificationEvent:(id)event;
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
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_activated && !self->_donationQueueResumed)
  {
    dispatch_resume(self->_donationQueue);
    self->_donationQueueResumed = 1;
  }
}

+ (id)_eventWithState:(id)state
{
  stateCopy = state;
  if ([stateCopy BOOLValue])
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  bOOLValue = [stateCopy BOOLValue];

  [_DKNotificationKeybagLockMonitor setIsLocked:bOOLValue];
  v6 = MEMORY[0x277CFE1D8];
  keybagIsLockedStream = [MEMORY[0x277CFE298] keybagIsLockedStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:keybagIsLockedStream startDate:date endDate:distantFuture value:v4];

  return v10;
}

- (void)start
{
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___DKNotificationKeybagLockMonitor_start__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_activate
{
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

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
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___DKNotificationKeybagLockMonitor_stop__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_deactivate
{
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

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
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {
    v3 = +[_DKNotificationKeybagLockMonitor getCurrentLockState];
    if (v3 != -1)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      +[_DKNotificationKeybagLockMonitor setIsLocked:](_DKNotificationKeybagLockMonitor, "setIsLocked:", [v4 BOOLValue]);
    }
  }
}

- (void)_updateWithKeybagLocked:(id)locked timestamp:(double)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dispatch_assert_queue_V2(self->_donationQueue);
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = lockedCopy;
    v18 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_DEFAULT, "Writing keybagLocked event %{public}@ at %f", &v16, 0x16u);
  }

  source = self->_source;
  if (!source)
  {
    v9 = BiomeLibrary();
    device = [v9 Device];
    keybagLocked = [device KeybagLocked];
    source = [keybagLocked source];
    v13 = self->_source;
    self->_source = source;

    source = self->_source;
  }

  [(BMSource *)source sendEvent:lockedCopy timestamp:timestamp];
  lastEvent = self->_lastEvent;
  self->_lastEvent = lockedCopy;

  self->_lastUpdate = timestamp;
  v15 = *MEMORY[0x277D85DE8];
}

- (void)receiveNotificationEvent:(id)event
{
  eventCopy = event;
  queue = [(_DKMonitor *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___DKNotificationKeybagLockMonitor_receiveNotificationEvent___block_invoke;
  v10[3] = &unk_27856F0B0;
  v10[4] = self;
  v11 = eventCopy;
  v6 = v10;
  v7 = eventCopy;
  v8 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
  block[3] = &unk_27856F178;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(queue, block);
}

- (void)_receiveNotificationEvent:(id)event
{
  eventCopy = event;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_activated)
  {
    v6 = [eventCopy objectForKeyedSubscript:@"Notification"];
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
          currentEvent = [(_DKMonitor *)self currentEvent];

          if (!currentEvent)
          {
            v13 = [objc_opt_class() log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_22595A000, v13, OS_LOG_TYPE_INFO, "Keybag unlocked but we don't have a previous lock event. Creating an initial (boot) lock state.", v25, 2u);
            }

            v14 = MEMORY[0x277CBEAA8];
            processInfo = [MEMORY[0x277CCAC38] processInfo];
            [processInfo systemUptime];
            v17 = [v14 dateWithTimeIntervalSinceNow:-v16];

            v18 = MEMORY[0x277CFE1D8];
            keybagIsLockedStream = [MEMORY[0x277CFE298] keybagIsLockedStream];
            distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
            v21 = [MEMORY[0x277CFE1A0] yes];
            v22 = [v18 eventWithStream:keybagIsLockedStream startDate:v17 endDate:distantFuture value:v21];

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
  v3[1] = self;
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