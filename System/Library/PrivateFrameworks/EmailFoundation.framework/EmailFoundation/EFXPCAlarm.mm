@interface EFXPCAlarm
- (EFXPCAlarm)initWithScheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue;
- (void)beginReceivingEventsWithHandler:(id)handler;
- (void)eventDidFire:(id)fire;
- (void)invalidate;
- (void)unschedule;
@end

@implementation EFXPCAlarm

- (EFXPCAlarm)initWithScheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue
{
  schedulerCopy = scheduler;
  nameCopy = name;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = EFXPCAlarm;
  v12 = [(EFXPCAlarm *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scheduler, scheduler);
    v14 = [nameCopy copy];
    eventName = v13->_eventName;
    v13->_eventName = v14;

    objc_storeStrong(&v13->_eventHandlerQueue, queue);
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)beginReceivingEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = handlerCopy;
  if (self->_eventHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFXPCAlarm.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"_eventHandler == nil"}];

    v5 = handlerCopy;
  }

  v6 = [v5 copy];
  eventHandler = self->_eventHandler;
  self->_eventHandler = v6;

  os_unfair_lock_unlock(&self->_lock);
  [(EFXPCAlarmScheduler *)self->_scheduler addAlarm:self];
}

- (void)invalidate
{
  [(EFXPCAlarmScheduler *)self->_scheduler removeAlarm:self];
  os_unfair_lock_lock(&self->_lock);
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unschedule
{
  scheduler = [(EFXPCAlarm *)self scheduler];
  eventName = [(EFXPCAlarm *)self eventName];
  [scheduler unscheduleEventWithName:eventName];

  test_schedulerObserver = [(EFXPCAlarm *)self test_schedulerObserver];

  if (test_schedulerObserver)
  {
    test_schedulerObserver2 = [(EFXPCAlarm *)self test_schedulerObserver];
    (*(test_schedulerObserver2 + 2))(test_schedulerObserver2, 0, 0);
  }
}

- (void)eventDidFire:(id)fire
{
  fireCopy = fire;
  os_unfair_lock_lock(&self->_lock);
  eventHandler = [(EFXPCAlarm *)self eventHandler];
  os_unfair_lock_unlock(&self->_lock);
  if (!eventHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFXPCAlarm.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];
  }

  eventHandlerQueue = [(EFXPCAlarm *)self eventHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EFXPCAlarm_eventDidFire___block_invoke;
  block[3] = &unk_1E824A368;
  v12 = fireCopy;
  v13 = eventHandler;
  block[4] = self;
  v8 = fireCopy;
  v9 = eventHandler;
  dispatch_async(eventHandlerQueue, block);
}

void __27__EFXPCAlarm_eventDidFire___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) fireDate];
  (*(v3 + 16))(v3, v2, v4, [*(a1 + 40) isUserVisible]);
}

@end