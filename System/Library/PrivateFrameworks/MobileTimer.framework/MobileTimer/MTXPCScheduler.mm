@interface MTXPCScheduler
+ (MTXPCScheduler)xpcSchedulerWithEvent:(id)a3;
- (MTXPCScheduler)initWithEvent:(id)a3;
- (void)scheduleActivityWithCriteria:(id)a3 activityHandler:(id)a4 performImmediately:(BOOL)a5;
- (void)scheduleTimerForSeconds:(double)a3;
- (void)unscheduleActivity;
- (void)unscheduleTimer;
@end

@implementation MTXPCScheduler

+ (MTXPCScheduler)xpcSchedulerWithEvent:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithEvent:v4];

  return v5;
}

- (MTXPCScheduler)initWithEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTXPCScheduler;
  v5 = [(MTXPCScheduler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    eventName = v5->_eventName;
    v5->_eventName = v6;
  }

  return v5;
}

- (void)scheduleTimerForSeconds:(double)a3
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = time(0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * (ceil(a3) + v5));
  if (MTIsHorseman())
  {
    xpc_dictionary_set_BOOL(xdict, "UserVisible", 1);
  }

  [(NSString *)self->_eventName UTF8String];
  xpc_set_event();
}

- (void)unscheduleTimer
{
  [(NSString *)self->_eventName UTF8String];

  xpc_set_event();
}

- (void)scheduleActivityWithCriteria:(id)a3 activityHandler:(id)a4 performImmediately:(BOOL)a5
{
  v5 = a5;
  handler = a4;
  eventName = self->_eventName;
  v9 = a3;
  xpc_activity_register([(NSString *)eventName UTF8String], v9, handler);

  if (v5)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)unscheduleActivity
{
  v2 = [(NSString *)self->_eventName UTF8String];

  xpc_activity_unregister(v2);
}

@end