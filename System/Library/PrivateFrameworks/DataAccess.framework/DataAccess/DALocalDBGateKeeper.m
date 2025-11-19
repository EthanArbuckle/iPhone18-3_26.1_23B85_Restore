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
- (void)setContactsLockHolder:(id)a3;
- (void)setEventsLockHolder:(id)a3;
- (void)setNotesLockHolder:(id)a3;
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
  v10.receiver = self;
  v10.super_class = DALocalDBGateKeeper;
  v2 = [(DALocalDBGateKeeper *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setEventsWaiters:v3];

    v4 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setWaiterIDsExpectingEventsLock:v4];

    v5 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setContactsWaiters:v5];

    v6 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setNotesWaiters:v6];

    v7 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setWaiterIDsExpectingContactsLock:v7];

    v8 = objc_opt_new();
    [(DALocalDBGateKeeper *)v2 setWaiterIDsExpectingNotesLock:v8];
  }

  return v2;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_1();
  v2 = v0;
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:32 object:v2 file:? lineNumber:? description:?];
}

- (void)setContactsLockHolder:(id)a3
{
  v5 = a3;
  contactsLockHolder = self->_contactsLockHolder;
  p_contactsLockHolder = &self->_contactsLockHolder;
  v6 = contactsLockHolder;
  if (contactsLockHolder != v5)
  {
    v11 = v5;
    if (v5)
    {
      v9 = +[DAPriorityManager sharedManager];
      [v9 requestPriority:1 forClient:v11 dataclasses:2];

      v6 = *p_contactsLockHolder;
    }

    if (v6)
    {
      v10 = +[DAPriorityManager sharedManager];
      [v10 requestPriority:0 forClient:*p_contactsLockHolder dataclasses:2];
    }

    objc_storeStrong(p_contactsLockHolder, a3);
    v5 = v11;
  }
}

- (void)setEventsLockHolder:(id)a3
{
  v5 = a3;
  eventsLockHolder = self->_eventsLockHolder;
  p_eventsLockHolder = &self->_eventsLockHolder;
  v6 = eventsLockHolder;
  if (eventsLockHolder != v5)
  {
    v11 = v5;
    if (v5)
    {
      v9 = +[DAPriorityManager sharedManager];
      [v9 requestPriority:1 forClient:v11 dataclasses:20];

      v6 = *p_eventsLockHolder;
    }

    if (v6)
    {
      v10 = +[DAPriorityManager sharedManager];
      [v10 requestPriority:0 forClient:*p_eventsLockHolder dataclasses:20];
    }

    objc_storeStrong(p_eventsLockHolder, a3);
    v5 = v11;
  }
}

- (void)setNotesLockHolder:(id)a3
{
  v5 = a3;
  notesLockHolder = self->_notesLockHolder;
  p_notesLockHolder = &self->_notesLockHolder;
  v6 = notesLockHolder;
  if (notesLockHolder != v5)
  {
    v11 = v5;
    if (v5)
    {
      v9 = +[DAPriorityManager sharedManager];
      [v9 requestPriority:1 forClient:v11 dataclasses:32];

      v6 = *p_notesLockHolder;
    }

    if (v6)
    {
      v10 = +[DAPriorityManager sharedManager];
      [v10 requestPriority:0 forClient:*p_notesLockHolder dataclasses:32];
    }

    objc_storeStrong(p_notesLockHolder, a3);
    v5 = v11;
  }
}

- (BOOL)_canWakenWaiter:(id)a3
{
  v4 = a3;
  v5 = [v4 dataclasses];
  v6 = [v4 waiterNum];
  v7 = 1;
  if ((v5 & 2) != 0)
  {
    if (self->_contactsLockHolder || (-[NSMutableArray objectAtIndexedSubscript:](self->_contactsWaiters, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 waiterNum], v8, v9 != v6))
    {
      v7 = 0;
    }
  }

  v10 = v5 & 0x14;
  if ((v5 & 0x14) != 0 && (self->_eventsLockHolder || (-[NSMutableArray objectAtIndexedSubscript:](self->_eventsWaiters, "objectAtIndexedSubscript:", 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 waiterNum], v11, v12 != v6)))
  {
    v7 = 0;
    v13 = 0;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    if (!v7)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_25;
    }

    v13 = 1;
    goto LABEL_18;
  }

  if (self->_notesLockHolder)
  {
    goto LABEL_15;
  }

  v14 = [(NSMutableArray *)self->_notesWaiters objectAtIndexedSubscript:0];
  v15 = [v14 waiterNum];

  v13 = 0;
  if (v15 == v6 && v7)
  {
LABEL_18:
    if ((v5 & 2) != 0)
    {
      v16 = [v4 waiter];
      [(DALocalDBGateKeeper *)self setContactsLockHolder:v16];

      [(NSMutableArray *)self->_contactsWaiters removeObjectAtIndex:0];
    }

    if (v10)
    {
      v17 = [v4 waiter];
      [(DALocalDBGateKeeper *)self setEventsLockHolder:v17];

      [(NSMutableArray *)self->_eventsWaiters removeObjectAtIndex:0];
    }

    if (!v13)
    {
      v18 = [v4 waiter];
      [(DALocalDBGateKeeper *)self setNotesLockHolder:v18];

      [(NSMutableArray *)self->_notesWaiters removeObjectAtIndex:0];
    }

    v13 = 1;
  }

LABEL_25:

  return v13;
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
          [(NSMutableSet *)self->_waiterIDsExpectingContactsLock removeObject:v14];
          [(NSMutableSet *)self->_waiterIDsExpectingEventsLock removeObject:v14];
          [(NSMutableSet *)self->_waiterIDsExpectingNotesLock removeObject:v14];
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
    v19 = *(MEMORY[0x277D03988] + 6);
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
          _os_log_impl(&dword_24844D000, v22, v19, "Aborting locks for dataclasses %lx to %@", buf, 0x16u);
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
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v6 = self;
  objc_sync_enter(v6);
  v23 = v4;
  LODWORD(self) = [v4 intValue];
  v7 = DALoggingwithCategory();
  v8 = self;
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 134217984;
    v29 = v8;
    _os_log_impl(&dword_24844D000, v7, v9, "Notifying waiters for dataclasses %ldd", buf, 0xCu);
  }

  if ((v8 & 2) != 0 && !v6->_contactsLockHolder && [(NSMutableArray *)v6->_contactsWaiters count])
  {
    v10 = [(NSMutableArray *)v6->_contactsWaiters objectAtIndexedSubscript:0];
    if ([(DALocalDBGateKeeper *)v6 _canWakenWaiter:v10])
    {
      [v5 addObject:v10];
    }
  }

  if ((v8 & 0x14) != 0 && !v6->_eventsLockHolder && [(NSMutableArray *)v6->_eventsWaiters count])
  {
    v11 = [(NSMutableArray *)v6->_eventsWaiters objectAtIndexedSubscript:0];
    if ([(DALocalDBGateKeeper *)v6 _canWakenWaiter:v11])
    {
      [v5 addObject:v11];
    }
  }

  if ((v8 & 0x20) != 0 && !v6->_notesLockHolder && [(NSMutableArray *)v6->_notesWaiters count])
  {
    v12 = [(NSMutableArray *)v6->_notesWaiters objectAtIndexedSubscript:0];
    if ([(DALocalDBGateKeeper *)v6 _canWakenWaiter:v12])
    {
      [v5 addObject:v12];
    }
  }

  objc_sync_exit(v6);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = DALoggingwithCategory();
        if (os_log_type_enabled(v18, v9))
        {
          v19 = [v17 dataclasses];
          v20 = [v17 waiter];
          *buf = 134218242;
          v29 = v19;
          v30 = 2112;
          v31 = v20;
          _os_log_impl(&dword_24844D000, v18, v9, "Granting locks for dataclasses %lx to %@", buf, 0x16u);
        }

        v21 = [v17 completionHandler];
        v21[2](v21, [v17 dataclasses], 1);
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_registerWaiter:(id)a3 forDataclassLocks:(int64_t)a4 preempt:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = DALoggingwithCategory();
  v13 = MEMORY[0x277D03988];
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v14))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_24844D000, v12, v14, "registerWaiter %@ forDataclassLocks %lx", buf, 0x16u);
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = objc_opt_new();
  [v16 setCompletionHandler:v11];
  [v16 setWaiter:v10];
  [v16 setDataclasses:a4];
  v17 = [MEMORY[0x277D03910] isInHoldingPattern];
  if (v17)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v13 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_24844D000, v18, v19, "Not allowing waiter %@ to get the gate, as we're in a holding pattern", buf, 0xCu);
    }

    v27 = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [(DALocalDBGateKeeper *)v15 _abortWaiterForWrappers:v20];

    goto LABEL_7;
  }

  if ((a4 & 2) == 0)
  {
    if ((a4 & 0x14) == 0)
    {
      if ((a4 & 0x20) == 0)
      {
LABEL_7:
        v21 = 0;
        goto LABEL_8;
      }

      v21 = v15->_notesLockHolder == 0;
      if (!v7)
      {
        goto LABEL_30;
      }

LABEL_21:
      [(NSMutableArray *)v15->_notesWaiters insertObject:v16 atIndex:0];
      goto LABEL_8;
    }

    v21 = v15->_eventsLockHolder == 0;
    if (!v7)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  contactsWaiters = v15->_contactsWaiters;
  v21 = v15->_contactsLockHolder == 0;
  if (v7)
  {
    [(NSMutableArray *)contactsWaiters insertObject:v16 atIndex:0];
    if ((a4 & 0x14) == 0)
    {
LABEL_19:
      if ((a4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      v21 = v15->_notesLockHolder == 0;
      goto LABEL_21;
    }

    v21 = v15->_eventsLockHolder == 0;
LABEL_18:
    [(NSMutableArray *)v15->_eventsWaiters insertObject:v16 atIndex:0];
    goto LABEL_19;
  }

  [(NSMutableArray *)contactsWaiters addObject:v16];
  if ((a4 & 0x14) != 0)
  {
    v21 = v15->_eventsLockHolder == 0;
LABEL_27:
    [(NSMutableArray *)v15->_eventsWaiters addObject:v16];
  }

  if ((a4 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v21 = v15->_notesLockHolder == 0;
LABEL_30:
  [(NSMutableArray *)v15->_notesWaiters addObject:v16];
LABEL_8:

  objc_sync_exit(v15);
  if (!(v17 & 1 | !v21))
  {
    if (v15->_unitTestHackRunLoopMode)
    {
      unitTestHackRunLoopMode = v15->_unitTestHackRunLoopMode;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&unitTestHackRunLoopMode count:1];
      [(DALocalDBGateKeeper *)v15 _setUnitTestHackRunLoopMode:0];
    }

    else
    {
      v22 = runLoopModesToPerformDelayedSelectorsIn();
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v15 da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v24 afterDelay:v22 inModes:0.0];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_sendAllClearNotifications
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D03988];
  if (!self->_claimedOwnershipOfContacts || [(NSMutableArray *)self->_contactsWaiters count]|| self->_contactsLockHolder || [(NSMutableSet *)self->_waiterIDsExpectingContactsLock count])
  {
    v4 = DALoggingwithCategory();
    v5 = *(v3 + 7);
    if (os_log_type_enabled(v4, v5))
    {
      claimedOwnershipOfContacts = self->_claimedOwnershipOfContacts;
      v7 = [(NSMutableArray *)self->_contactsWaiters count];
      contactsLockHolder = self->_contactsLockHolder;
      v9 = [(NSMutableSet *)self->_waiterIDsExpectingContactsLock count];
      v31 = 67109888;
      v32 = claimedOwnershipOfContacts;
      v33 = 2048;
      v34 = v7;
      v35 = 2048;
      v36 = contactsLockHolder;
      v37 = 2048;
      v38 = v9;
      _os_log_impl(&dword_24844D000, v4, v5, "Not notifying for contacts.  Claimed %d waiters count %lu holder %p expectant waiters %lu", &v31, 0x26u);
    }
  }

  else
  {
    v23 = DALoggingwithCategory();
    v24 = *(v3 + 6);
    if (os_log_type_enabled(v23, v24))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_24844D000, v23, v24, "Letting everyone know we're done with contacts", &v31, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CE9AE0], 0, 0, 1u);
    self->_claimedOwnershipOfContacts = 0;
  }

  if (!self->_claimedOwnershipOfEvents || [(NSMutableArray *)self->_eventsWaiters count]|| self->_eventsLockHolder || [(NSMutableSet *)self->_waiterIDsExpectingEventsLock count])
  {
    v10 = DALoggingwithCategory();
    v11 = *(v3 + 7);
    if (os_log_type_enabled(v10, v11))
    {
      claimedOwnershipOfEvents = self->_claimedOwnershipOfEvents;
      v13 = [(NSMutableArray *)self->_eventsWaiters count];
      eventsLockHolder = self->_eventsLockHolder;
      v15 = [(NSMutableSet *)self->_waiterIDsExpectingEventsLock count];
      v31 = 67109888;
      v32 = claimedOwnershipOfEvents;
      v33 = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = eventsLockHolder;
      v37 = 2048;
      v38 = v15;
      _os_log_impl(&dword_24844D000, v10, v11, "Not notifying for events.  Claimed %d waiters count %lu holder %p expectant waiters %lu", &v31, 0x26u);
    }
  }

  else
  {
    v26 = DALoggingwithCategory();
    v27 = *(v3 + 6);
    if (os_log_type_enabled(v26, v27))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_24844D000, v26, v27, "Letting everyone know we're done with events", &v31, 2u);
    }

    v28 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v28, *MEMORY[0x277CF7710], 0, 0, 1u);
    self->_claimedOwnershipOfEvents = 0;
  }

  if (!self->_claimedOwnershipOfNotes || [(NSMutableArray *)self->_notesWaiters count]|| self->_notesLockHolder || [(NSMutableSet *)self->_waiterIDsExpectingNotesLock count])
  {
    v16 = DALoggingwithCategory();
    v17 = *(v3 + 7);
    if (os_log_type_enabled(v16, v17))
    {
      claimedOwnershipOfNotes = self->_claimedOwnershipOfNotes;
      v19 = [(NSMutableArray *)self->_notesWaiters count];
      notesLockHolder = self->_notesLockHolder;
      v21 = [(NSMutableSet *)self->_waiterIDsExpectingNotesLock count];
      v31 = 67109888;
      v32 = claimedOwnershipOfNotes;
      v33 = 2048;
      v34 = v19;
      v35 = 2048;
      v36 = notesLockHolder;
      v37 = 2048;
      v38 = v21;
      _os_log_impl(&dword_24844D000, v16, v17, "Not notifying for notes.  Claimed %d waiters count %lu holder %p expectant waiters %lu", &v31, 0x26u);
    }
  }

  else
  {
    v29 = DALoggingwithCategory();
    v30 = *(v3 + 6);
    if (os_log_type_enabled(v29, v30))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_24844D000, v29, v30, "Letting everyone know we're done with notes", &v31, 2u);
    }

    self->_claimedOwnershipOfNotes = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)unregisterWaiterForDataclassLocks:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v33 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "unregisterWaiterForDataclassLocks %@", buf, 0xCu);
  }

  v7 = objc_opt_new();
  v23 = self;
  objc_sync_enter(v23);
  eventsWaiters = v23->_eventsWaiters;
  v31[0] = v23->_contactsWaiters;
  v31[1] = eventsWaiters;
  v31[2] = v23->_notesWaiters;
  [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v25 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
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

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v17 = [(DADataclassLockWatcher *)v23->_contactsLockHolder isEqual:v4];
  v18 = [(DADataclassLockWatcher *)v23->_eventsLockHolder isEqual:v4];
  v19 = [(DADataclassLockWatcher *)v23->_notesLockHolder isEqual:v4];
  v20 = 2;
  if (!v17)
  {
    v20 = 0;
  }

  if (v18)
  {
    v20 |= 0x14uLL;
  }

  if (v19)
  {
    v21 = v20 | 0x20;
  }

  else
  {
    v21 = v20;
  }

  objc_sync_exit(v23);
  if (v21)
  {
    [(DALocalDBGateKeeper *)v23 relinquishLocksForWaiter:v4 dataclasses:v21 moreComing:0];
  }

  [(DALocalDBGateKeeper *)v23 _abortWaiterForWrappers:v7];
  [(DALocalDBGateKeeper *)v23 _sendAllClearNotifications];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)relinquishLocksForWaiter:(id)a3 dataclasses:(int64_t)a4 moreComing:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412546;
    v29 = v9;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_24844D000, v10, v11, "relinquishing locks for waiter %@ dataclasses %lx", buf, 0x16u);
  }

  v12 = self;
  objc_sync_enter(v12);
  if ((a4 & 2) != 0)
  {
    if (([(DADataclassLockWatcher *)v12->_contactsLockHolder isEqual:v9]& 1) == 0)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:v12 file:@"DALocalDBGateKeeper.m" lineNumber:421 description:{@"Waiter %@ tried to relinquish a lock for data class %ld, but it was held by another waiter: %@", v9, a4, v12->_contactsLockHolder}];
    }

    [(DALocalDBGateKeeper *)v12 setContactsLockHolder:0];
    v13 = [v9 waiterID];

    if (v13)
    {
      waiterIDsExpectingContactsLock = v12->_waiterIDsExpectingContactsLock;
      v15 = [v9 waiterID];
      if (v5)
      {
        [(NSMutableSet *)waiterIDsExpectingContactsLock addObject:v15];
      }

      else
      {
        [(NSMutableSet *)waiterIDsExpectingContactsLock removeObject:v15];
      }
    }
  }

  if ((a4 & 0x14) != 0)
  {
    if (([(DADataclassLockWatcher *)v12->_eventsLockHolder isEqual:v9]& 1) == 0)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:v12 file:@"DALocalDBGateKeeper.m" lineNumber:434 description:{@"Waiter %@ tried to relinquish a lock for data class %ld, but it was held by another waiter: %@", v9, a4, v12->_eventsLockHolder}];
    }

    [(DALocalDBGateKeeper *)v12 setEventsLockHolder:0];
    v16 = [v9 waiterID];

    if (v16)
    {
      waiterIDsExpectingEventsLock = v12->_waiterIDsExpectingEventsLock;
      v18 = [v9 waiterID];
      if (v5)
      {
        [(NSMutableSet *)waiterIDsExpectingEventsLock addObject:v18];
      }

      else
      {
        [(NSMutableSet *)waiterIDsExpectingEventsLock removeObject:v18];
      }
    }
  }

  if ((a4 & 0x20) != 0)
  {
    if (([(DADataclassLockWatcher *)v12->_notesLockHolder isEqual:v9]& 1) == 0)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:v12 file:@"DALocalDBGateKeeper.m" lineNumber:447 description:{@"Waiter %@ tried to relinquish a lock for data class %ld, but it was held by another waiter: %@", v9, a4, v12->_notesLockHolder}];
    }

    [(DALocalDBGateKeeper *)v12 setNotesLockHolder:0];
    v19 = [v9 waiterID];

    if (v19)
    {
      waiterIDsExpectingNotesLock = v12->_waiterIDsExpectingNotesLock;
      [v9 waiterID];
      if (v5)
        v21 = {;
        [(NSMutableSet *)waiterIDsExpectingNotesLock addObject:v21];
      }

      else
        v21 = {;
        [(NSMutableSet *)waiterIDsExpectingNotesLock removeObject:v21];
      }
    }
  }

  objc_sync_exit(v12);

  [(DALocalDBGateKeeper *)v12 _sendAllClearNotifications];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v23 = runLoopModesToPerformDelayedSelectorsIn();
  [v12 da_addNullRunLoopSourceAndPerformSelector:sel__notifyWaitersForDataclasses_ withObject:v22 afterDelay:v23 inModes:0.0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)claimedOwnershipOfDataclasses:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_24844D000, v5, v6, "Claiming ownership of dataclasses 0x%lx", &v8, 0xCu);
  }

  if ((a3 & 2) == 0)
  {
    if ((a3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    self->_claimedOwnershipOfEvents = 1;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  self->_claimedOwnershipOfContacts = 1;
  if ((a3 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((a3 & 0x20) != 0)
  {
LABEL_6:
    self->_claimedOwnershipOfNotes = 1;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_285AA6518];
  v4 = self;
  objc_sync_enter(v4);
  [v3 appendFormat:@"_contactsLockHolder %@\n", v4->_contactsLockHolder];
  [v3 appendFormat:@"_contactsWaiters %@\n", v4->_contactsWaiters];
  [v3 appendFormat:@"_waiterIDsExpectingContactsLock %@\n", v4->_waiterIDsExpectingContactsLock];
  [v3 appendFormat:@"_eventsLockHolder %@\n", v4->_eventsLockHolder];
  [v3 appendFormat:@"_eventsWaiters %@\n", v4->_eventsWaiters];
  [v3 appendFormat:@"_waiterIDsExpectingEventsLock %@\n", v4->_waiterIDsExpectingEventsLock];
  [v3 appendFormat:@"_notesLockHolder %@\n", v4->_notesLockHolder];
  [v3 appendFormat:@"_notesWaiters %@\n", v4->_notesWaiters];
  [v3 appendFormat:@"_waiterIDsExpectingNotesLock %@\n", v4->_waiterIDsExpectingNotesLock];
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