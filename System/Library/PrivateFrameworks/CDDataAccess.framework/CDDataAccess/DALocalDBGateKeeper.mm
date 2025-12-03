@interface DALocalDBGateKeeper
+ (id)sharedGateKeeper;
- (BOOL)_canWakenWaiter:(id)waiter;
- (DALocalDBGateKeeper)init;
- (id)stateString;
- (void)_abortWaiterForWrappers:(id)wrappers;
- (void)_notifyWaitersForDataclasses:(id)dataclasses;
- (void)_registerWaiter:(id)waiter forDataclassLocks:(int64_t)locks preempt:(BOOL)preempt completionHandler:(id)handler;
- (void)_sendAllClearNotifications;
- (void)_setUnitTestHackRunLoopMode:(id)mode;
- (void)claimedOwnershipOfDataclasses:(int64_t)dataclasses;
- (void)dealloc;
- (void)relinquishLocksForWaiter:(id)waiter dataclasses:(int64_t)dataclasses moreComing:(BOOL)coming;
- (void)setEventsLockHolder:(id)holder;
- (void)unregisterWaiterForDataclassLocks:(id)locks;
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

- (void)setEventsLockHolder:(id)holder
{
  holderCopy = holder;
  eventsLockHolder = self->_eventsLockHolder;
  p_eventsLockHolder = &self->_eventsLockHolder;
  if (eventsLockHolder != holderCopy)
  {
    v8 = holderCopy;
    objc_storeStrong(p_eventsLockHolder, holder);
    holderCopy = v8;
  }
}

- (BOOL)_canWakenWaiter:(id)waiter
{
  waiterCopy = waiter;
  dataclasses = [waiterCopy dataclasses];
  waiterNum = [waiterCopy waiterNum];
  if ((dataclasses & 0x14) == 0)
  {
    goto LABEL_6;
  }

  if (!self->_eventsLockHolder)
  {
    v7 = waiterNum;
    v8 = [(NSMutableArray *)self->_eventsWaiters objectAtIndexedSubscript:0];
    waiterNum2 = [v8 waiterNum];

    if (waiterNum2 == v7)
    {
      waiter = [waiterCopy waiter];
      [(DALocalDBGateKeeper *)self setEventsLockHolder:waiter];

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

- (void)_abortWaiterForWrappers:(id)wrappers
{
  v43 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  v5 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = wrappersCopy;
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

        waiter = [v11 waiter];
        waiterID = [waiter waiterID];

        if (waiterID)
        {
          [(NSMutableSet *)self->_waiterIDsExpectingEventsLock removeObject:waiterID];
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
  allValues = [v5 allValues];
  v16 = [allValues countByEnumeratingWithState:&v29 objects:v41 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v19))
        {
          dataclasses = [v21 dataclasses];
          waiter2 = [v21 waiter];
          *buf = 134218242;
          v38 = dataclasses;
          v39 = 2112;
          v40 = waiter2;
          _os_log_impl(&dword_24244C000, v22, v19, "Aborting locks for dataclasses %lx to %@", buf, 0x16u);
        }

        completionHandler = [v21 completionHandler];
        completionHandler[2](completionHandler, [v21 dataclasses], 0);
      }

      v17 = [allValues countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWaitersForDataclasses:(id)dataclasses
{
  v32 = *MEMORY[0x277D85DE8];
  dataclassesCopy = dataclasses;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v20 = _os_activity_create(&dword_24244C000, "DALocalDBGateKeeper notifyWaiters", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v20, &state);
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intValue = [dataclassesCopy intValue];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 134217984;
    v28 = intValue;
    _os_log_impl(&dword_24244C000, v7, v8, "Notifying waiters for dataclasses %ldd", buf, 0xCu);
  }

  if ((intValue & 0x14) != 0 && !selfCopy->_eventsLockHolder && [(NSMutableArray *)selfCopy->_eventsWaiters count])
  {
    v9 = [(NSMutableArray *)selfCopy->_eventsWaiters objectAtIndexedSubscript:0];
    if ([(DALocalDBGateKeeper *)selfCopy _canWakenWaiter:v9])
    {
      [v4 addObject:v9];
    }
  }

  objc_sync_exit(selfCopy);

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
          dataclasses = [v14 dataclasses];
          waiter = [v14 waiter];
          *buf = 134218242;
          v28 = dataclasses;
          v29 = 2112;
          v30 = waiter;
          _os_log_impl(&dword_24244C000, v15, v8, "Granting locks for dataclasses %lx to %@", buf, 0x16u);
        }

        completionHandler = [v14 completionHandler];
        completionHandler[2](completionHandler, [v14 dataclasses], 1);
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v11);
  }

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_registerWaiter:(id)waiter forDataclassLocks:(int64_t)locks preempt:(BOOL)preempt completionHandler:(id)handler
{
  preemptCopy = preempt;
  v32 = *MEMORY[0x277D85DE8];
  waiterCopy = waiter;
  handlerCopy = handler;
  v12 = DALoggingwithCategory();
  v13 = MEMORY[0x277CF3AF0];
  v14 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v12, v14))
  {
    *buf = 138412546;
    v29 = waiterCopy;
    v30 = 2048;
    locksCopy = locks;
    _os_log_impl(&dword_24244C000, v12, v14, "registerWaiter %@ forDataclassLocks %lx", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = objc_opt_new();
  [v16 setCompletionHandler:handlerCopy];
  [v16 setWaiter:waiterCopy];
  [v16 setDataclasses:locks];
  isInHoldingPattern = [MEMORY[0x277CF3AC8] isInHoldingPattern];
  if (isInHoldingPattern)
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
    [(DALocalDBGateKeeper *)selfCopy _abortWaiterForWrappers:v20];

    goto LABEL_10;
  }

  if ((locks & 0x14) == 0)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  eventsWaiters = selfCopy->_eventsWaiters;
  v22 = selfCopy->_eventsLockHolder == 0;
  if (preemptCopy)
  {
    [(NSMutableArray *)eventsWaiters insertObject:v16 atIndex:0];
  }

  else
  {
    [(NSMutableArray *)eventsWaiters addObject:v16];
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  if (!(isInHoldingPattern & 1 | !v22))
  {
    if (selfCopy->_unitTestHackRunLoopMode)
    {
      unitTestHackRunLoopMode = selfCopy->_unitTestHackRunLoopMode;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&unitTestHackRunLoopMode count:1];
      [(DALocalDBGateKeeper *)selfCopy _setUnitTestHackRunLoopMode:0];
    }

    else
    {
      v23 = runLoopModesToPerformDelayedSelectorsIn();
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:locks];
    [selfCopy da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v24 afterDelay:v23 inModes:0.0];
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

- (void)unregisterWaiterForDataclassLocks:(id)locks
{
  v30 = *MEMORY[0x277D85DE8];
  locksCopy = locks;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v29 = locksCopy;
    _os_log_impl(&dword_24244C000, v5, v6, "unregisterWaiterForDataclassLocks %@", buf, 0xCu);
  }

  v7 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &selfCopy->super.isa;
  eventsWaiters = selfCopy->_eventsWaiters;
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
            waiter = [v14 waiter];
            v16 = [waiter isEqual:locksCopy];

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

  v17 = [p_isa[2] isEqual:locksCopy];
  objc_sync_exit(p_isa);

  if (v17)
  {
    [p_isa relinquishLocksForWaiter:locksCopy dataclasses:20 moreComing:0];
  }

  [p_isa _abortWaiterForWrappers:v7];
  [p_isa _sendAllClearNotifications];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)relinquishLocksForWaiter:(id)waiter dataclasses:(int64_t)dataclasses moreComing:(BOOL)coming
{
  comingCopy = coming;
  v24 = *MEMORY[0x277D85DE8];
  waiterCopy = waiter;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412546;
    v21 = waiterCopy;
    v22 = 2048;
    dataclassesCopy = dataclasses;
    _os_log_impl(&dword_24244C000, v10, v11, "relinquishing locks for waiter %@ dataclasses %lx", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((dataclasses & 0x14) != 0)
  {
    if (([(DADataclassLockWatcher *)selfCopy->_eventsLockHolder isEqual:waiterCopy]& 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DALocalDBGateKeeper.m" lineNumber:448 description:{@"Waiter %@ tried to relinquish a lock for data class %ld, but it was held by another waiter: %@", waiterCopy, dataclasses, selfCopy->_eventsLockHolder}];
    }

    [(DALocalDBGateKeeper *)selfCopy setEventsLockHolder:0];
    waiterID = [waiterCopy waiterID];

    if (waiterID)
    {
      waiterIDsExpectingEventsLock = selfCopy->_waiterIDsExpectingEventsLock;
      [waiterCopy waiterID];
      if (comingCopy)
        v15 = {;
        [(NSMutableSet *)waiterIDsExpectingEventsLock addObject:v15];
      }

      else
        v15 = {;
        [(NSMutableSet *)waiterIDsExpectingEventsLock removeObject:v15];
      }
    }
  }

  objc_sync_exit(selfCopy);

  [(DALocalDBGateKeeper *)selfCopy _sendAllClearNotifications];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:dataclasses];
  v17 = runLoopModesToPerformDelayedSelectorsIn();
  [selfCopy da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v16 afterDelay:v17 inModes:0.0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)claimedOwnershipOfDataclasses:(int64_t)dataclasses
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    dataclassesCopy = dataclasses;
    _os_log_impl(&dword_24244C000, v5, v6, "Claiming ownership of dataclasses 0x%lx", &v8, 0xCu);
  }

  if ((dataclasses & 4) != 0)
  {
    self->_claimedOwnershipOfEvents = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2854B2770];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v3 appendFormat:@"_eventsLockHolder %@\n", selfCopy->_eventsLockHolder];
  [v3 appendFormat:@"_eventsWaiters %@\n", selfCopy->_eventsWaiters];
  [v3 appendFormat:@"_waiterIDsExpectingEventsLock %@\n", selfCopy->_waiterIDsExpectingEventsLock];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setUnitTestHackRunLoopMode:(id)mode
{
  modeCopy = mode;
  unitTestHackRunLoopMode = self->_unitTestHackRunLoopMode;
  p_unitTestHackRunLoopMode = &self->_unitTestHackRunLoopMode;
  if (unitTestHackRunLoopMode != modeCopy)
  {
    v8 = modeCopy;
    objc_storeStrong(p_unitTestHackRunLoopMode, mode);
    modeCopy = v8;
  }
}

@end