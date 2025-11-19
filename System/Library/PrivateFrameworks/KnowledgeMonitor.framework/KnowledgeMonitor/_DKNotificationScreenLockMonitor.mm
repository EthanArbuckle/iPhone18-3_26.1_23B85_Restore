@interface _DKNotificationScreenLockMonitor
+ (id)_BMEventWithState:(id)a3;
+ (id)_eventWithState:(id)a3;
- (void)dealloc;
- (void)receiveNotificationEvent:(id)a3;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKNotificationScreenLockMonitor

- (void)synchronouslyReflectCurrentValue
{
  v3 = [(_DKMonitor *)self currentEvent];

  if (!v3)
  {
    out_token = 0;
    v4 = [@"com.apple.springboard.lockstate" UTF8String];
    v5 = [(_DKMonitor *)self queue];
    notify_register_dispatch(v4, &out_token, v5, &__block_literal_global_4);

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

  [_DKNotificationScreenLockMonitor setIsLocked:v5];
  v6 = MEMORY[0x277CFE1D8];
  v7 = [MEMORY[0x277CFE298] deviceIsLockedStream];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:v7 startDate:v8 endDate:v9 value:v4];

  return v10;
}

+ (id)_BMEventWithState:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = objc_alloc(MEMORY[0x277CF1118]);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
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
    v4 = [v3 Device];
    v5 = [v4 ScreenLocked];
    v6 = [v5 source];
    source = self->_source;
    self->_source = v6;

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

- (void)receiveNotificationEvent:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v5 = [v11 objectForKeyedSubscript:@"Notification"];
    v6 = [v5 isEqual:@"com.apple.springboard.lockstate"];

    if (v6)
    {
      v7 = [v11 objectForKeyedSubscript:@"_State"];
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