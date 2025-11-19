@interface _DKNotificationWatchNearbyMonitor
+ (id)_eventWithNearbyDeviceCount:(unint64_t)a3;
- (void)deactivate;
- (void)dealloc;
- (void)receiveNotificationEvent:(id)a3;
- (void)setWatchIsNearby;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKNotificationWatchNearbyMonitor

- (void)dealloc
{
  [(_DKNotificationWatchNearbyMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNotificationWatchNearbyMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithNearbyDeviceCount:(unint64_t)a3
{
  if (a3)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  [_DKNotificationWatchNearbyMonitor setIsWatchNearby:a3 != 0];
  v5 = MEMORY[0x277CFE1D8];
  v6 = [MEMORY[0x277CFE298] watchNearbyStream];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [v5 eventWithStream:v6 startDate:v7 endDate:v8 value:v4];

  return v9;
}

- (void)setWatchIsNearby
{
  out_token = 0;
  v3 = [@"com.apple.coreduetd.nearbydeviceschanged" UTF8String];
  v4 = [(_DKMonitor *)self queue];
  notify_register_dispatch(v3, &out_token, v4, &__block_literal_global_10);

  v5 = 0;
  if (!notify_get_state(out_token, &v5))
  {
    [_DKNotificationWatchNearbyMonitor setIsWatchNearby:v5 != 0];
  }

  notify_cancel(out_token);
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = _DKNotificationWatchNearbyMonitor;
  if ([(_DKMonitor *)&v11 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    v3 = BiomeLibrary();
    v4 = [v3 Device];
    v5 = [v4 Wireless];
    v6 = [v5 DefaultPairedNearby];
    v7 = [v6 source];
    biome = self->_biome;
    self->_biome = v7;

    self->_token = -1;
    [(_DKNotificationWatchNearbyMonitor *)self setWatchIsNearby];
    v9 = [@"com.apple.coreduetd.nearbydeviceschanged" UTF8String];
    v10 = [(_DKMonitor *)self queue];
    notify_register_dispatch(v9, &self->_token, v10, &__block_literal_global_22);
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNotificationWatchNearbyMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNotificationWatchNearbyMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
  }
}

- (void)synchronouslyReflectCurrentValue
{
  if (!self->_enabled)
  {
    [(_DKNotificationWatchNearbyMonitor *)self setWatchIsNearby];
  }
}

- (void)receiveNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v7 = [v4 objectForKeyedSubscript:@"Notification"];
    v8 = [v7 isEqual:@"com.apple.coreduetd.nearbydeviceschanged"];

    if (v8)
    {
      v9 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_22595A000, v9, OS_LOG_TYPE_DEFAULT, "Received notification event for nearby devices changed!", v16, 2u);
      }

      v10 = [v4 objectForKeyedSubscript:@"_State"];
      v11 = [v10 unsignedIntegerValue];

      v12 = objc_alloc(MEMORY[0x277CF10D0]);
      v13 = [MEMORY[0x277CCABB0] numberWithInt:v11 != 0];
      v14 = [v12 initWithStarting:v13];

      [(BMSource *)self->_biome sendEvent:v14];
      v15 = [_DKNotificationWatchNearbyMonitor _eventWithNearbyDeviceCount:v11];
      [(_DKMonitor *)self setCurrentEvent:v15 inferHistoricalState:1];
    }
  }

  objc_autoreleasePoolPop(v6);
}

@end