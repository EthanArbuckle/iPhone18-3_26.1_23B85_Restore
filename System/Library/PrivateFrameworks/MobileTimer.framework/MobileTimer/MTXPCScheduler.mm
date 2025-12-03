@interface MTXPCScheduler
+ (MTXPCScheduler)xpcSchedulerWithEvent:(id)event;
- (MTXPCScheduler)initWithEvent:(id)event;
- (void)scheduleActivityWithCriteria:(id)criteria activityHandler:(id)handler performImmediately:(BOOL)immediately;
- (void)scheduleTimerForSeconds:(double)seconds;
- (void)unscheduleActivity;
- (void)unscheduleTimer;
@end

@implementation MTXPCScheduler

+ (MTXPCScheduler)xpcSchedulerWithEvent:(id)event
{
  eventCopy = event;
  v5 = [[self alloc] initWithEvent:eventCopy];

  return v5;
}

- (MTXPCScheduler)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = MTXPCScheduler;
  v5 = [(MTXPCScheduler *)&v9 init];
  if (v5)
  {
    v6 = [eventCopy copy];
    eventName = v5->_eventName;
    v5->_eventName = v6;
  }

  return v5;
}

- (void)scheduleTimerForSeconds:(double)seconds
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = time(0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * (ceil(seconds) + v5));
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

- (void)scheduleActivityWithCriteria:(id)criteria activityHandler:(id)handler performImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  handler = handler;
  eventName = self->_eventName;
  criteriaCopy = criteria;
  xpc_activity_register([(NSString *)eventName UTF8String], criteriaCopy, handler);

  if (immediatelyCopy)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)unscheduleActivity
{
  uTF8String = [(NSString *)self->_eventName UTF8String];

  xpc_activity_unregister(uTF8String);
}

@end