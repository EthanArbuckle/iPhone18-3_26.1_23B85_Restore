@interface HDNanoSyncRestoreSession
- (HDNanoSyncRestoreSession)initWithSyncStore:(id)store sessionUUID:(id)d;
- (void)addCompletionHandler:(id)handler;
- (void)dealloc;
- (void)scheduleTimeoutWithInterval:(double)interval handler:(id)handler;
@end

@implementation HDNanoSyncRestoreSession

- (HDNanoSyncRestoreSession)initWithSyncStore:(id)store sessionUUID:(id)d
{
  storeCopy = store;
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sessionUUID != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDNanoSyncRestoreSession;
  v10 = [(HDNanoSyncRestoreSession *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_nanoSyncStore, store);
    objc_storeStrong(&v11->_sessionUUID, d);
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v11->_startDate;
    v11->_startDate = date;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    calendar = v11->_calendar;
    v11->_calendar = currentCalendar;
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

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    completionHandlers = self->_completionHandlers;
    v10 = handlerCopy;
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

    handlerCopy = v10;
  }
}

- (void)scheduleTimeoutWithInterval:(double)interval handler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"handler != NULL"}];
  }

  if (self->_timer)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDNanoSyncRestoreSession.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_timer == nil"}];
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

  [(_HKExpiringCompletionTimer *)self->_timer startWithTimeoutInterval:handlerCopy handler:interval];
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