@interface EFXPCAlarm
- (EFXPCAlarm)initWithScheduler:(id)a3 eventName:(id)a4 eventHandlerQueue:(id)a5;
- (void)beginReceivingEventsWithHandler:(id)a3;
- (void)eventDidFire:(id)a3;
- (void)invalidate;
- (void)unschedule;
@end

@implementation EFXPCAlarm

- (EFXPCAlarm)initWithScheduler:(id)a3 eventName:(id)a4 eventHandlerQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = EFXPCAlarm;
  v12 = [(EFXPCAlarm *)&v17 init];
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

- (void)beginReceivingEventsWithHandler:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = v9;
  if (self->_eventHandler)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EFXPCAlarm.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"_eventHandler == nil"}];

    v5 = v9;
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
  v5 = [(EFXPCAlarm *)self scheduler];
  v3 = [(EFXPCAlarm *)self eventName];
  [v5 unscheduleEventWithName:v3];

  v4 = [(EFXPCAlarm *)self test_schedulerObserver];

  if (v4)
  {
    v6 = [(EFXPCAlarm *)self test_schedulerObserver];
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)eventDidFire:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(EFXPCAlarm *)self eventHandler];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EFXPCAlarm.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];
  }

  v7 = [(EFXPCAlarm *)self eventHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EFXPCAlarm_eventDidFire___block_invoke;
  block[3] = &unk_1E824A368;
  v12 = v5;
  v13 = v6;
  block[4] = self;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __27__EFXPCAlarm_eventDidFire___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) fireDate];
  (*(v3 + 16))(v3, v2, v4, [*(a1 + 40) isUserVisible]);
}

@end