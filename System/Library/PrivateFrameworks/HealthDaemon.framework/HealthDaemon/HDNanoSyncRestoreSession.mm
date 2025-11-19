@interface HDNanoSyncRestoreSession
- (HDNanoSyncRestoreSession)initWithSyncStore:(id)a3 sessionUUID:(id)a4;
- (void)addCompletionHandler:(id)a3;
- (void)dealloc;
- (void)scheduleTimeoutWithInterval:(double)a3 handler:(id)a4;
@end

@implementation HDNanoSyncRestoreSession

- (HDNanoSyncRestoreSession)initWithSyncStore:(id)a3 sessionUUID:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sessionUUID != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDNanoSyncRestoreSession;
  v10 = [(HDNanoSyncRestoreSession *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_nanoSyncStore, a3);
    objc_storeStrong(&v11->_sessionUUID, a4);
    v12 = [MEMORY[0x277CBEAA8] date];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    calendar = v11->_calendar;
    v11->_calendar = v14;
  }

  return v11;
}

- (void)dealloc
{
  [(_HKExpiringCompletionTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = HDNanoSyncRestoreSession;
  [(HDNanoSyncRestoreSession *)&v3 dealloc];
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    completionHandlers = self->_completionHandlers;
    v10 = v4;
    if (!completionHandlers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_completionHandlers;
      self->_completionHandlers = v6;

      completionHandlers = self->_completionHandlers;
    }

    v8 = [v10 copy];
    v9 = _Block_copy(v8);
    [(NSMutableArray *)completionHandlers addObject:v9];

    v4 = v10;
  }
}

- (void)scheduleTimeoutWithInterval:(double)a3 handler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"handler != NULL"}];
  }

  if (self->_timer)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_timer == nil"}];
  }

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x277CCDDB0]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HDNanoSyncRestoreSession_scheduleTimeoutWithInterval_handler___block_invoke;
  v13[3] = &unk_278628890;
  objc_copyWeak(&v14, &location);
  v9 = [v8 initWithCompletion:v13];
  timer = self->_timer;
  self->_timer = v9;

  [(_HKExpiringCompletionTimer *)self->_timer startWithTimeoutInterval:v7 handler:a3];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__HDNanoSyncRestoreSession_scheduleTimeoutWithInterval_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(WeakRetained + 8))
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:sel__finishWithError_ object:WeakRetained file:@"HDNanoSyncRestoreSession.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"_finished == NO"}];

      v6 = WeakRetained;
    }

    *(v6 + 8) = 1;
    v7 = [v6[7] copy];
    [WeakRetained[7] removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v16 + 1) + 8 * i) + 16))();
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end