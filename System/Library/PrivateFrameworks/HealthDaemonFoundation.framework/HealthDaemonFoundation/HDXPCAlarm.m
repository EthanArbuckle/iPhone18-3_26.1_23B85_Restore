@interface HDXPCAlarm
- (HDXPCAlarm)initWithProfileIdentifier:(id)a3 scheduler:(id)a4 eventName:(id)a5 eventHandlerQueue:(id)a6;
- (HDXPCAlarm)initWithScheduler:(id)a3 eventName:(id)a4 eventHandlerQueue:(id)a5;
- (void)beginReceivingEventsWithHandler:(id)a3;
- (void)eventDidFire:(id)a3;
- (void)invalidate;
- (void)unschedule;
@end

@implementation HDXPCAlarm

- (HDXPCAlarm)initWithScheduler:(id)a3 eventName:(id)a4 eventHandlerQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HDXPCAlarm;
  v12 = [(HDXPCAlarm *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scheduler, a3);
    v14 = [v10 copy];
    eventName = v13->_eventName;
    v13->_eventName = v14;

    objc_storeStrong(&v13->_eventHandlerQueue, a5);
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (HDXPCAlarm)initWithProfileIdentifier:(id)a3 scheduler:(id)a4 eventName:(id)a5 eventHandlerQueue:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [a3 identifier];
  v15 = [v12 stringWithFormat:@"%@ for HDProfile:%@", v13, v14];

  if ([v15 length] >= 0x81)
  {
    v16 = [v15 substringWithRange:{0, 128}];

    v15 = v16;
  }

  v17 = [(HDXPCAlarm *)self initWithScheduler:v10 eventName:v15 eventHandlerQueue:v11];

  return v17;
}

- (void)beginReceivingEventsWithHandler:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_eventHandler)
  {
    [(HDXPCAlarm *)a2 beginReceivingEventsWithHandler:?];
  }

  v5 = [v7 copy];
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
  v3 = [(HDXPCAlarm *)self scheduler];
  v4 = [(HDXPCAlarm *)self eventName];
  [v3 unscheduleEventWithName:v4];

  v5 = [(HDXPCAlarm *)self unitTest_schedulerObserver];

  if (v5)
  {
    v6 = [(HDXPCAlarm *)self unitTest_schedulerObserver];
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)eventDidFire:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(HDXPCAlarm *)self eventHandler];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    [(HDXPCAlarm *)a2 eventDidFire:?];
  }

  v7 = [(HDXPCAlarm *)self eventHandlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDXPCAlarm_eventDidFire___block_invoke;
  block[3] = &unk_2796BDA98;
  v11 = v5;
  v12 = v6;
  block[4] = self;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
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