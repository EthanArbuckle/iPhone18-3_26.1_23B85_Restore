@interface DALocalDBGateKeeper
+ (id)sharedGateKeeper;
- (BOOL)_canWakenWaiter:(id)a3;
- (DALocalDBGateKeeper)init;
- (id)stateString;
- (void)_abortWaiterForWrappers:(id)a3;
- (void)_notifyWaitersForDataclasses:(id)a3;
- (void)_registerWaiter:(id)a3 forDataclassLocks:(int64_t)a4 preempt:(BOOL)a5 completionHandler:(id)a6;
- (void)_sendAllClearNotifications;
- (void)_setUnitTestHackRunLoopMode:(id)a3;
- (void)claimedOwnershipOfDataclasses:(int64_t)a3;
- (void)dealloc;
- (void)relinquishLocksForWaiter:(id)a3 dataclasses:(int64_t)a4 moreComing:(BOOL)a5;
- (void)setEventsLockHolder:(id)a3;
- (void)unregisterWaiterForDataclassLocks:(id)a3;
@end

@implementation DALocalDBGateKeeper

+ (id)sharedGateKeeper
{
  if (sharedGateKeeper_onceToken != -1)
  {
    +[DALocalDBGateKeeper sharedGateKeeper];
  }

  v3 = sharedGateKeeper___sharedGateKeeper;

  return v3;
}

uint64_t __39__DALocalDBGateKeeper_sharedGateKeeper__block_invoke()
{
  sharedGateKeeper___sharedGateKeeper = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DALocalDBGateKeeper)init
{
  v6.receiver = self;
  v6.super_class = DALocalDBGateKeeper;
  v2 = [(DALocalDBGateKeeper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setEventsWaiters:v3];

    v4 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setWaiterIDsExpectingEventsLock:v4];
  }

  return v2;
}

- (void)dealloc
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_1();
  [v5 handleFailureInMethod:a2 object:a3 file:@"DALocalDBGateKeeper.m" lineNumber:96 description:{@"DALocalDBGateKeeper is shutting down, but the following accounts are still waiting on the dataclass lock for dataclass type %lx.  Account %@"}];
}

- (void)setEventsLockHolder:(id)a3
{
  v5 = a3;
  eventsLockHolder = self->_eventsLockHolder;
  p_eventsLockHolder = &self->_eventsLockHolder;
  if (eventsLockHolder != v5)
  {
    v8 = v5;
    objc_storeStrong(p_eventsLockHolder, a3);
    v5 = v8;
  }
}

- (BOOL)_canWakenWaiter:(id)a3
{
  v4 = a3;
  v5 = [v4 dataclasses];
  v6 = [v4 waiterNum];
  if ((v5 & 0x14) == 0)
  {
    goto LABEL_6;
  }

  if (!self->_eventsLockHolder)
  {
    v7 = v6;
    v8 = [(NSMutableArray *)self->_eventsWaiters objectAtIndexedSubscript:0];
    v9 = [v8 waiterNum];

    if (v9 == v7)
    {
      v11 = [v4 waiter];
      [(DALocalDBGateKeeper *)self setEventsLockHolder:v11];

      [(NSMutableArray *)self->_eventsWaiters removeObjectAtIndex:0];
LABEL_6:
      v10 = 1;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)_abortWaiterForWrappers:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "waiterNum")}];
        [v5 setObject:v11 forKeyedSubscript:v12];

        v13 = [v11 waiter];
        v14 = [v13 waiterID];

        if (v14)
        {
          [(NSMutableSet *)self->_waiterIDsExpectingEventsLock removeObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v8);
  }

  v28 = v6;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = v5;
  v15 = [v5 allValues];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    v19 = *(MEMORY[0x277CF3AF0] + 6);
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v19))
        {
          v23 = [v21 dataclasses];
          v24 = [v21 waiter];
          *buf = 134218242;
          v38 = v23;
          v39 = 2112;
          v40 = v24;
          _os_log_impl(&dword_24244C000, v22, v19, "Aborting locks for dataclasses %lx to %@", buf, 0x16u);
        }

        v25 = [v21 completionHandler];
        v25[2](v25, [v21 dataclasses], 0);
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWaitersForDataclasses:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v20 = _os_activity_create(&dword_24244C000, "DALocalDBGateKeeper notifyWaiters", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v20, &state);
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v21 intValue];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 134217984;
    v28 = v6;
    _os_log_impl(&dword_24244C000, v7, v8, "Notifying waiters for dataclasses %ldd", buf, 0xCu);
  }

  if ((v6 & 0x14) != 0 && !v5->_eventsLockHolder && [(NSMutableArray *)v5->_eventsWaiters count])
  {
    v9 = [(NSMutableArray *)v5->_eventsWaiters objectAtIndexedSubscript:0];
    if ([(DALocalDBGateKeeper *)v5 _canWakenWaiter:v9])
    {
      [v4 addObject:v9];
    }
  }

  objc_sync_exit(v5);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = DALoggingwithCategory();
        if (os_log_type_enabled(v15, v8))
        {
          v16 = [v14 dataclasses];
          v17 = [v14 waiter];
          *buf = 134218242;
          v28 = v16;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_24244C000, v15, v8, "Granting locks for dataclasses %lx to %@", buf, 0x16u);
        }

        v18 = [v14 completionHandler];
        v18[2](v18, [v14 dataclasses], 1);
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v11);
  }

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_registerWaiter:(id)a3 forDataclassLocks:(int64_t)a4 preempt:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = DALoggingwithCategory();
  v13 = MEMORY[0x277CF3AF0];
  v14 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v12, v14))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_24244C000, v12, v14, "registerWaiter %@ forDataclassLocks %lx", buf, 0x16u);
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = objc_opt_new();
  [v16 setCompletionHandler:v11];
  [v16 setWaiter:v10];
  [v16 setDataclasses:a4];
  v17 = [MEMORY[0x277CF3AC8] isInHoldingPattern];
  if (v17)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v13 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_24244C000, v18, v19, "Not allowing waiter %@ to get the gate, as we're in a holding pattern", buf, 0xCu);
    }

    v27 = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [(DALocalDBGateKeeper *)v15 _abortWaiterForWrappers:v20];

    goto LABEL_10;
  }

  if ((a4 & 0x14) == 0)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  eventsWaiters = v15->_eventsWaiters;
  v22 = v15->_eventsLockHolder == 0;
  if (v7)
  {
    [(NSMutableArray *)eventsWaiters insertObject:v16 atIndex:0];
  }

  else
  {
    [(NSMutableArray *)eventsWaiters addObject:v16];
  }

LABEL_11:

  objc_sync_exit(v15);
  if (!(v17 & 1 | !v22))
  {
    if (v15->_unitTestHackRunLoopMode)
    {
      unitTestHackRunLoopMode = v15->_unitTestHackRunLoopMode;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&unitTestHackRunLoopMode count:1];
      [(DALocalDBGateKeeper *)v15 _setUnitTestHackRunLoopMode:0];
    }

    else
    {
      v23 = runLoopModesToPerformDelayedSelectorsIn();
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v15 da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v24 afterDelay:v23 inModes:0.0];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_sendAllClearNotifications
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_claimedOwnershipOfEvents || [(NSMutableArray *)self->_eventsWaiters count]|| self->_eventsLockHolder || [(NSMutableSet *)self->_waiterIDsExpectingEventsLock count])
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v3, v4))
    {
      claimedOwnershipOfEvents = self->_claimedOwnershipOfEvents;
      v6 = [(NSMutableArray *)self->_eventsWaiters count];
      eventsLockHolder = self->_eventsLockHolder;
      v8 = [(NSMutableSet *)self->_waiterIDsExpectingEventsLock count];
      v10[0] = 67109888;
      v10[1] = claimedOwnershipOfEvents;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = eventsLockHolder;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_24244C000, v3, v4, "Not notifying for events.  Claimed %d waiters count %lu holder %p expectant waiters %lu", v10, 0x26u);
    }
  }

  else
  {
    self->_claimedOwnershipOfEvents = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterWaiterForDataclassLocks:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_24244C000, v5, v6, "unregisterWaiterForDataclassLocks %@", buf, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = self;
  objc_sync_enter(v8);
  p_isa = &v8->super.isa;
  eventsWaiters = v8->_eventsWaiters;
  [MEMORY[0x277CBEA60] arrayWithObjects:&eventsWaiters count:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v21 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 count];
        if (v12 >= 1)
        {
          v13 = (v12 & 0x7FFFFFFF) + 1;
          do
          {
            v14 = [v11 objectAtIndexedSubscript:v13 - 2];
            v15 = [v14 waiter];
            v16 = [v15 isEqual:v4];

            if (v16)
            {
              [v7 addObject:v14];
              [v11 removeObjectAtIndex:v13 - 2];
            }

            --v13;
          }

          while (v13 > 1);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = [p_isa[2] isEqual:v4];
  objc_sync_exit(p_isa);

  if (v17)
  {
    [p_isa relinquishLocksForWaiter:v4 dataclasses:20 moreComing:0];
  }

  [p_isa _abortWaiterForWrappers:v7];
  [p_isa _sendAllClearNotifications];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)relinquishLocksForWaiter:(id)a3 dataclasses:(int64_t)a4 moreComing:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412546;
    v21 = v9;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_24244C000, v10, v11, "relinquishing locks for waiter %@ dataclasses %lx", buf, 0x16u);
  }

  v12 = self;
  objc_sync_enter(v12);
  if ((a4 & 0x14) != 0)
  {
    if (([(DADataclassLockWatcher *)v12->_eventsLockHolder isEqual:v9]& 1) == 0)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a2 object:v12 file:@"DALocalDBGateKeeper.m" lineNumber:448 description:{@"Waiter %@ tried to relinquish a lock for data class %ld, but it was held by another waiter: %@", v9, a4, v12->_eventsLockHolder}];
    }

    [(DALocalDBGateKeeper *)v12 setEventsLockHolder:0];
    v13 = [v9 waiterID];

    if (v13)
    {
      waiterIDsExpectingEventsLock = v12->_waiterIDsExpectingEventsLock;
      [v9 waiterID];
      if (v5)
        v15 = {;
        [(NSMutableSet *)waiterIDsExpectingEventsLock addObject:v15];
      }

      else
        v15 = {;
        [(NSMutableSet *)waiterIDsExpectingEventsLock removeObject:v15];
      }
    }
  }

  objc_sync_exit(v12);

  [(DALocalDBGateKeeper *)v12 _sendAllClearNotifications];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17 = runLoopModesToPerformDelayedSelectorsIn();
  [v12 da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v16 afterDelay:v17 inModes:0.0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)claimedOwnershipOfDataclasses:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_24244C000, v5, v6, "Claiming ownership of dataclasses 0x%lx", &v8, 0xCu);
  }

  if ((a3 & 4) != 0)
  {
    self->_claimedOwnershipOfEvents = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2854B2770];
  v4 = self;
  objc_sync_enter(v4);
  [v3 appendFormat:@"_eventsLockHolder %@\n", v4->_eventsLockHolder];
  [v3 appendFormat:@"_eventsWaiters %@\n", v4->_eventsWaiters];
  [v3 appendFormat:@"_waiterIDsExpectingEventsLock %@\n", v4->_waiterIDsExpectingEventsLock];
  objc_sync_exit(v4);

  return v3;
}

- (void)_setUnitTestHackRunLoopMode:(id)a3
{
  v5 = a3;
  unitTestHackRunLoopMode = self->_unitTestHackRunLoopMode;
  p_unitTestHackRunLoopMode = &self->_unitTestHackRunLoopMode;
  if (unitTestHackRunLoopMode != v5)
  {
    v8 = v5;
    objc_storeStrong(p_unitTestHackRunLoopMode, a3);
    v5 = v8;
  }
}

@end