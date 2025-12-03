@interface HDXPCAlarm
- (HDXPCAlarm)initWithProfileIdentifier:(id)identifier scheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue;
- (HDXPCAlarm)initWithScheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue;
- (void)beginReceivingEventsWithHandler:(id)handler;
- (void)eventDidFire:(id)fire;
- (void)invalidate;
- (void)unschedule;
@end

@implementation HDXPCAlarm

- (HDXPCAlarm)initWithScheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue
{
  schedulerCopy = scheduler;
  nameCopy = name;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HDXPCAlarm;
  v12 = [(HDXPCAlarm *)&v17 init];
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

- (HDXPCAlarm)initWithProfileIdentifier:(id)identifier scheduler:(id)scheduler eventName:(id)name eventHandlerQueue:(id)queue
{
  schedulerCopy = scheduler;
  queueCopy = queue;
  v12 = MEMORY[0x277CCACA8];
  nameCopy = name;
  identifier = [identifier identifier];
  v15 = [v12 stringWithFormat:@"%@ for HDProfile:%@", nameCopy, identifier];

  if ([v15 length] >= 0x81)
  {
    v16 = [v15 substringWithRange:{0, 128}];

    v15 = v16;
  }

  v17 = [(HDXPCAlarm *)self initWithScheduler:schedulerCopy eventName:v15 eventHandlerQueue:queueCopy];

  return v17;
}

- (void)beginReceivingEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_eventHandler)
  {
    [(HDXPCAlarm *)a2 beginReceivingEventsWithHandler:?];
  }

  v5 = [handlerCopy copy];
  eventHandler = self->_eventHandler;
  self->_eventHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
  [(HDXPCAlarmScheduler *)self->_scheduler addAlarm:self];
}

- (void)invalidate
{
  [(HDXPCAlarmScheduler *)self->_scheduler removeAlarm:self];
  os_unfair_lock_lock(&self->_lock);
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unschedule
{
  scheduler = [(HDXPCAlarm *)self scheduler];
  eventName = [(HDXPCAlarm *)self eventName];
  [scheduler unscheduleEventWithName:eventName];

  unitTest_schedulerObserver = [(HDXPCAlarm *)self unitTest_schedulerObserver];

  if (unitTest_schedulerObserver)
  {
    unitTest_schedulerObserver2 = [(HDXPCAlarm *)self unitTest_schedulerObserver];
    (*(unitTest_schedulerObserver2 + 2))(unitTest_schedulerObserver2, 0, 0);
  }
}

- (void)eventDidFire:(id)fire
{
  fireCopy = fire;
  os_unfair_lock_lock(&self->_lock);
  eventHandler = [(HDXPCAlarm *)self eventHandler];
  os_unfair_lock_unlock(&self->_lock);
  if (!eventHandler)
  {
    [(HDXPCAlarm *)a2 eventDidFire:?];
  }

  eventHandlerQueue = [(HDXPCAlarm *)self eventHandlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDXPCAlarm_eventDidFire___block_invoke;
  block[3] = &unk_2796BDA98;
  v11 = fireCopy;
  v12 = eventHandler;
  block[4] = self;
  v8 = fireCopy;
  v9 = eventHandler;
  dispatch_async(eventHandlerQueue, block);
}

void __27__HDXPCAlarm_eventDidFire___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) fireDate];
  (*(v3 + 16))(v3, v2, v4, [*(a1 + 40) isUserVisible]);
}

- (void)beginReceivingEventsWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCAlarm.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"_eventHandler == nil"}];
}

- (void)eventDidFire:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCAlarm.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];
}

@end