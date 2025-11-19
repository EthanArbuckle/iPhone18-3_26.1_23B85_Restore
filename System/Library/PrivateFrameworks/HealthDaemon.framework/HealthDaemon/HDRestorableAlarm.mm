@interface HDRestorableAlarm
- (BOOL)removeAllEventsWithError:(id *)a3;
- (BOOL)removeEvents:(id)a3 error:(id *)a4;
- (BOOL)scheduleEvents:(id)a3 error:(id *)a4;
- (HDRestorableAlarm)initWithProfile:(id)a3 clientIdentifier:(id)a4 eventHandlerQueue:(id)a5;
- (HDRestorableAlarm)initWithScheduler:(id)a3 clientIdentifier:(id)a4 eventHandlerQueue:(id)a5;
- (id)allScheduledEventsWithError:(id *)a3;
- (id)diagnosticDescription;
- (id)eventWithIdentifier:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5;
- (id)eventWithIdentifier:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5 clientOptions:(unint64_t)a6;
- (id)eventWithIdentifier:(id)a3 dueDateComponents:(id)a4 eventOptions:(unint64_t)a5;
- (id)eventWithIdentifier:(id)a3 dueDateComponents:(id)a4 eventOptions:(unint64_t)a5 clientOptions:(unint64_t)a6;
- (id)replaceAllScheduledEventsWithEvents:(id)a3 error:(id *)a4;
- (void)beginReceivingEventsWithHandler:(id)a3;
- (void)checkForDueEventsWithCompletion:(id)a3;
- (void)eventsDidFire:(id)a3;
- (void)invalidate;
@end

@implementation HDRestorableAlarm

- (HDRestorableAlarm)initWithProfile:(id)a3 clientIdentifier:(id)a4 eventHandlerQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 alarmScheduler];
  v11 = [(HDRestorableAlarm *)self initWithScheduler:v10 clientIdentifier:v9 eventHandlerQueue:v8];

  return v11;
}

- (HDRestorableAlarm)initWithScheduler:(id)a3 clientIdentifier:(id)a4 eventHandlerQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HDRestorableAlarm;
  v12 = [(HDRestorableAlarm *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scheduler, a3);
    v14 = [v10 copy];
    clientIdentifier = v13->_clientIdentifier;
    v13->_clientIdentifier = v14;

    objc_storeStrong(&v13->_eventHandlerQueue, a5);
    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outstandingEventIdentifiers = v13->_outstandingEventIdentifiers;
    v13->_outstandingEventIdentifiers = v16;
  }

  return v13;
}

- (void)beginReceivingEventsWithHandler:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_eventsHandler)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDRestorableAlarm.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_eventsHandler == nil"}];
  }

  v5 = [v8 copy];
  eventsHandler = self->_eventsHandler;
  self->_eventsHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
  [(HDRestorableAlarmSchedulerProtocol *)self->_scheduler addAlarm:self];
}

- (void)invalidate
{
  [(HDRestorableAlarmSchedulerProtocol *)self->_scheduler removeAlarm:self];
  os_unfair_lock_lock(&self->_lock);
  eventsHandler = self->_eventsHandler;
  self->_eventsHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)eventWithIdentifier:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HDAlarmEvent alloc];
  v11 = [(HDRestorableAlarm *)self clientIdentifier];
  v12 = [(HDAlarmEvent *)v10 initWithClientIdentifier:v11 eventIdentifier:v9 dueDate:v8 eventOptions:a5];

  return v12;
}

- (id)eventWithIdentifier:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5 clientOptions:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [HDAlarmEvent alloc];
  v13 = [(HDRestorableAlarm *)self clientIdentifier];
  v14 = [(HDAlarmEvent *)v12 initWithClientIdentifier:v13 eventIdentifier:v11 dueDate:v10 eventOptions:a5 clientOptions:a6];

  return v14;
}

- (id)eventWithIdentifier:(id)a3 dueDateComponents:(id)a4 eventOptions:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HDAlarmEvent alloc];
  v11 = [(HDRestorableAlarm *)self clientIdentifier];
  v12 = [(HDAlarmEvent *)v10 initWithClientIdentifier:v11 eventIdentifier:v9 dueDateComponents:v8 eventOptions:a5];

  return v12;
}

- (id)eventWithIdentifier:(id)a3 dueDateComponents:(id)a4 eventOptions:(unint64_t)a5 clientOptions:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [HDAlarmEvent alloc];
  v13 = [(HDRestorableAlarm *)self clientIdentifier];
  v14 = [(HDAlarmEvent *)v12 initWithClientIdentifier:v13 eventIdentifier:v11 dueDateComponents:v10 eventOptions:a5 clientOptions:a6];

  return v14;
}

- (id)allScheduledEventsWithError:(id *)a3
{
  scheduler = self->_scheduler;
  v5 = [(HDRestorableAlarm *)self clientIdentifier];
  v6 = [(HDRestorableAlarmSchedulerProtocol *)scheduler scheduledEventsForClientIdentifier:v5 error:a3];

  return v6;
}

- (BOOL)scheduleEvents:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2048;
    v26 = [v6 count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduled %lu new events", buf, 0x16u);
  }

  v8 = [(HDRestorableAlarmSchedulerProtocol *)self->_scheduler scheduleEvents:v6 error:a4];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        outstandingEventIdentifiers = self->_outstandingEventIdentifiers;
        v15 = [*(*(&v18 + 1) + 8 * v13) eventIdentifier];
        [(NSMutableSet *)outstandingEventIdentifiers removeObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)removeEvents:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2048;
    v26 = [v6 count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing %lu events", buf, 0x16u);
  }

  v8 = [(HDRestorableAlarmSchedulerProtocol *)self->_scheduler removeEvents:v6 error:a4];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        outstandingEventIdentifiers = self->_outstandingEventIdentifiers;
        v15 = [*(*(&v18 + 1) + 8 * v13) eventIdentifier];
        [(NSMutableSet *)outstandingEventIdentifiers removeObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)replaceAllScheduledEventsWithEvents:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2048;
    v16 = [v6 count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Replacing all scheduled events with %lu new events", &v13, 0x16u);
  }

  scheduler = self->_scheduler;
  v9 = [(HDRestorableAlarm *)self clientIdentifier];
  v10 = [(HDRestorableAlarmSchedulerProtocol *)scheduler replaceAllScheduledEventsWithClientIdentifier:v9 newEvents:v6 error:a4];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_outstandingEventIdentifiers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)removeAllEventsWithError:(id *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing all scheduled events", &v11, 0xCu);
  }

  scheduler = self->_scheduler;
  v7 = [(HDRestorableAlarm *)self clientIdentifier];
  v8 = [(HDRestorableAlarmSchedulerProtocol *)scheduler removeAllEventsWithClientIdentifier:v7 error:a3];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_outstandingEventIdentifiers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)checkForDueEventsWithCompletion:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HDRestorableAlarm_checkForDueEventsWithCompletion___block_invoke;
  v7[3] = &unk_278628BB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HDRestorableAlarmSchedulerProtocol *)scheduler checkForDueEventsImmediatelyWithCompletion:v7];
}

void __53__HDRestorableAlarm_checkForDueEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  v7 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HDRestorableAlarm_checkForDueEventsWithCompletion___block_invoke_2;
  v11[3] = &unk_278626178;
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v9 = *(a1 + 32);
  v14 = a3;
  v11[4] = v9;
  v10 = v6;
  dispatch_async(v7, v11);
}

- (void)eventsDidFire:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  os_unfair_lock_lock(&self->_lock);
  v22 = _Block_copy(self->_eventsHandler);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        outstandingEventIdentifiers = self->_outstandingEventIdentifiers;
        v13 = [v11 eventIdentifier];
        LODWORD(outstandingEventIdentifiers) = [(NSMutableSet *)outstandingEventIdentifiers containsObject:v13];

        if (outstandingEventIdentifiers)
        {
          _HKInitializeLogging();
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v11 eventIdentifier];
            *buf = 138543618;
            v31 = self;
            v32 = 2114;
            v33 = v15;
            _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping notification for in-flight event %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v16 = self->_outstandingEventIdentifiers;
          v17 = [v11 eventIdentifier];
          [(NSMutableSet *)v16 addObject:v17];

          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v5 count])
  {
    if (!v22)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"HDRestorableAlarm.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"eventsHandler != nil"}];
    }

    eventHandlerQueue = self->_eventHandlerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__HDRestorableAlarm_eventsDidFire___block_invoke;
    block[3] = &unk_278616488;
    v25 = v22;
    block[4] = self;
    v24 = v5;
    dispatch_async(eventHandlerQueue, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HDRestorableAlarm *)self description];
  [v3 addObject:v4];

  os_unfair_lock_lock(&self->_lock);
  [v3 addObject:@"\tOutstanding event identifiers:"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_outstandingEventIdentifiers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@", *(*(&v14 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v3 componentsJoinedByString:@"\n"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end