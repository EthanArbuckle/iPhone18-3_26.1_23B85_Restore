@interface _DKNotificationScreenLockMonitor
+ (id)_BMEventWithState:(id)state;
+ (id)_eventWithState:(id)state;
- (void)dealloc;
- (void)receiveNotificationEvent:(id)event;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKNotificationScreenLockMonitor

- (void)synchronouslyReflectCurrentValue
{
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {
    out_token = 0;
    uTF8String = [@"com.apple.springboard.lockstate" UTF8String];
    queue = [(_DKMonitor *)self queue];
    notify_register_dispatch(uTF8String, &out_token, queue, &__block_literal_global_4);

    v6 = 0;
    if (!notify_get_state(out_token, &v6))
    {
      [_DKNotificationScreenLockMonitor setIsLocked:v6 != 0];
    }

    notify_cancel(out_token);
  }
}

- (void)dealloc
{
  [(_DKNotificationScreenLockMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNotificationScreenLockMonitor;
  [(_DKMonitor *)&v3 dealloc];
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

  [_DKNotificationScreenLockMonitor setIsLocked:bOOLValue];
  v6 = MEMORY[0x277CFE1D8];
  deviceIsLockedStream = [MEMORY[0x277CFE298] deviceIsLockedStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:deviceIsLockedStream startDate:date endDate:distantFuture value:v4];

  return v10;
}

+ (id)_BMEventWithState:(id)state
{
  bOOLValue = [state BOOLValue];
  v4 = objc_alloc(MEMORY[0x277CF1118]);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v6 = [v4 initWithStarting:v5];

  return v6;
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = _DKNotificationScreenLockMonitor;
  if ([(_DKMonitor *)&v8 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    device = [v3 Device];
    screenLocked = [device ScreenLocked];
    source = [screenLocked source];
    source = self->_source;
    self->_source = source;

    self->_enabled = 1;
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNotificationScreenLockMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNotificationScreenLockMonitor *)self deactivate];
  }
}

- (void)receiveNotificationEvent:(id)event
{
  eventCopy = event;
  v4 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v5 = [eventCopy objectForKeyedSubscript:@"Notification"];
    v6 = [v5 isEqual:@"com.apple.springboard.lockstate"];

    if (v6)
    {
      v7 = [eventCopy objectForKeyedSubscript:@"_State"];
      if (v7)
      {
        v8 = v7;
        v9 = [_DKNotificationScreenLockMonitor _eventWithState:v7];
        [(_DKMonitor *)self setCurrentEvent:v9 inferHistoricalState:1];

        v10 = [_DKNotificationScreenLockMonitor _BMEventWithState:v8];
        [(BMSource *)self->_source sendEvent:v10];
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

@end