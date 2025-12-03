@interface _DKNotificationWatchNearbyMonitor
+ (id)_eventWithNearbyDeviceCount:(unint64_t)count;
- (void)deactivate;
- (void)dealloc;
- (void)receiveNotificationEvent:(id)event;
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

+ (id)_eventWithNearbyDeviceCount:(unint64_t)count
{
  if (count)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v4 = ;
  [_DKNotificationWatchNearbyMonitor setIsWatchNearby:count != 0];
  v5 = MEMORY[0x277CFE1D8];
  watchNearbyStream = [MEMORY[0x277CFE298] watchNearbyStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [v5 eventWithStream:watchNearbyStream startDate:date endDate:distantFuture value:v4];

  return v9;
}

- (void)setWatchIsNearby
{
  out_token = 0;
  uTF8String = [@"com.apple.coreduetd.nearbydeviceschanged" UTF8String];
  queue = [(_DKMonitor *)self queue];
  notify_register_dispatch(uTF8String, &out_token, queue, &__block_literal_global_10);

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
    device = [v3 Device];
    wireless = [device Wireless];
    defaultPairedNearby = [wireless DefaultPairedNearby];
    source = [defaultPairedNearby source];
    biome = self->_biome;
    self->_biome = source;

    self->_token = -1;
    [(_DKNotificationWatchNearbyMonitor *)self setWatchIsNearby];
    uTF8String = [@"com.apple.coreduetd.nearbydeviceschanged" UTF8String];
    queue = [(_DKMonitor *)self queue];
    notify_register_dispatch(uTF8String, &self->_token, queue, &__block_literal_global_22);
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

- (void)receiveNotificationEvent:(id)event
{
  eventCopy = event;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v7 = [eventCopy objectForKeyedSubscript:@"Notification"];
    v8 = [v7 isEqual:@"com.apple.coreduetd.nearbydeviceschanged"];

    if (v8)
    {
      contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_22595A000, contextChannel, OS_LOG_TYPE_DEFAULT, "Received notification event for nearby devices changed!", v16, 2u);
      }

      v10 = [eventCopy objectForKeyedSubscript:@"_State"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      v12 = objc_alloc(MEMORY[0x277CF10D0]);
      v13 = [MEMORY[0x277CCABB0] numberWithInt:unsignedIntegerValue != 0];
      v14 = [v12 initWithStarting:v13];

      [(BMSource *)self->_biome sendEvent:v14];
      v15 = [_DKNotificationWatchNearbyMonitor _eventWithNearbyDeviceCount:unsignedIntegerValue];
      [(_DKMonitor *)self setCurrentEvent:v15 inferHistoricalState:1];
    }
  }

  objc_autoreleasePoolPop(v6);
}

@end