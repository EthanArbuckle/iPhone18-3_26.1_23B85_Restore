@interface DNDSCalendarEventLifetimeMonitor
- (DNDSCalendarEventLifetimeMonitor)init;
- (id)_eventForCalendarEventLifetime:(id)a3 assertionStartDate:(id)a4;
- (id)_eventStoreCreatingIfNeeded;
- (id)activeDateIntervalForCalendarEventLifetime:(id)a3 assertionStartDate:(id)a4;
- (id)updateForModeAssertions:(id)a3 date:(id)a4;
- (void)_calendarEventStoreChangedWithNotification:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation DNDSCalendarEventLifetimeMonitor

- (DNDSCalendarEventLifetimeMonitor)init
{
  v5.receiver = self;
  v5.super_class = DNDSCalendarEventLifetimeMonitor;
  v2 = [(DNDSBaseLifetimeMonitor *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__calendarEventStoreChangedWithNotification_ name:*MEMORY[0x277CC5948] object:0];
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DNDSCalendarEventLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:v4];
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__DNDSCalendarEventLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [v4 lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __48__DNDSCalendarEventLifetimeMonitor_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained refreshMonitorForDate:v3];
  }
}

- (id)activeDateIntervalForCalendarEventLifetime:(id)a3 assertionStartDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDSCalendarEventLifetimeMonitor *)self _eventForCalendarEventLifetime:v7 assertionStartDate:v6];
  LOBYTE(self) = [v7 isOnlyDuringEvent];

  if (self)
  {
    v9 = [v8 startDate];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = [v8 endDate];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    if ([v10 compare:v11] == -1)
    {
      v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)updateForModeAssertions:(id)a3 date:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v65 = a4;
  v63 = self;
  v7 = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = DNDSLogCalendarEventLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = v65;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v62 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v67;
    *&v11 = 138543618;
    v60 = v11;
    v14 = self;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [v16 details];
        v18 = [v17 lifetime];

        v19 = [v16 startDate];
        v20 = [(DNDSCalendarEventLifetimeMonitor *)v14 activeDateIntervalForCalendarEventLifetime:v18 assertionStartDate:v19];

        if (!v20)
        {
          v29 = [v16 source];
          v30 = [v29 deviceIdentifier];

          if (v30)
          {
            v31 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
              v33 = [v18 eventUniqueID];
              v34 = [v16 UUID];
              *buf = v60;
              v71 = v33;
              v72 = 2114;
              v73 = v34;
              _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Unable to find matching event for synced assertion; eventIdentifier=%{public}@; assertionIdentifier=%{public}@", buf, 0x16u);

              v14 = v63;
            }

            v35 = [v16 UUID];
            [v62 addObject:v35];
          }

          else
          {
            v44 = [v16 UUID];
            [v61 addObject:v44];

            v45 = DNDSLogCalendarEventLifetimeMonitor;
            if (!os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            v35 = v45;
            v41 = [v18 eventUniqueID];
            *buf = 138543362;
            v71 = v41;
            v42 = v35;
            v43 = "No date interval for event; eventIdentifier=%{public}@";
LABEL_26:
            _os_log_impl(&dword_24912E000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0xCu);

            v14 = v63;
          }

          goto LABEL_28;
        }

        v21 = [v20 dnds_lifetimePhaseForDate:v65];
        if (v21 != 2)
        {
          if (v21 == 1)
          {
            v36 = [v16 UUID];
            [v62 addObject:v36];

            v37 = [v20 endDate];
            v23 = [(NSDate *)v9 earlierDate:v37];

            v38 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v38;
              v26 = [v18 eventUniqueID];
              *buf = 138543362;
              v71 = v26;
              v27 = v25;
              v28 = "Active date interval for event; eventIdentifier=%{public}@";
LABEL_20:
              _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);

              v14 = v63;
            }
          }

          else
          {
            if (v21)
            {
              goto LABEL_28;
            }

            v22 = [v20 startDate];
            v23 = [(NSDate *)v9 earlierDate:v22];

            v24 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              v26 = [v18 eventUniqueID];
              *buf = 138543362;
              v71 = v26;
              v27 = v25;
              v28 = "Pending date interval for event; eventIdentifier=%{public}@";
              goto LABEL_20;
            }
          }

          v9 = v23;
          goto LABEL_28;
        }

        v39 = [v16 UUID];
        [v61 addObject:v39];

        v40 = DNDSLogCalendarEventLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v40;
          v41 = [v18 eventUniqueID];
          *buf = 138543362;
          v71 = v41;
          v42 = v35;
          v43 = "Expired date interval for event; eventIdentifier=%{public}@";
          goto LABEL_26;
        }

LABEL_28:
      }

      v12 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (!v12)
      {
        goto LABEL_32;
      }
    }
  }

  v14 = self;
LABEL_32:

  v46 = [MEMORY[0x277CBEAA8] distantFuture];
  v47 = [(NSDate *)v9 isEqualToDate:v46];

  v48 = [(NSDate *)v9 isEqualToDate:v14->_lifetimeTimerFireDate];
  v49 = [(DNDSBaseLifetimeMonitor *)v14 delegate];
  if (v47 || !v48)
  {
    v50 = DNDSLogCalendarEventLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = v14->_lifetimeTimerFireDate;
      *buf = 138543362;
      v71 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v50, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v52 = [(DNDSCalendarEventLifetimeMonitor *)v14 _eventStore];
    [v52 reset];

    v53 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" userVisible:1];
    [v49 lifetimeMonitor:v14 setTimer:v53];

    v54 = v14->_lifetimeTimerFireDate;
    v14->_lifetimeTimerFireDate = 0;
  }

  if (!v47 && (v14->_lifetimeTimerFireDate == 0 || !v48))
  {
    v55 = DNDSLogCalendarEventLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v71 = v9;
      _os_log_impl(&dword_24912E000, v55, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v56 = [[DNDSXPCTimer alloc] initWithFireDate:v9 serviceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" userVisible:1];
    [v49 lifetimeMonitor:v14 setTimer:v56];

    objc_storeStrong(&v14->_lifetimeTimerFireDate, v9);
  }

  v57 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:v62 expiredUUIDs:v61];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (void)_calendarEventStoreChangedWithNotification:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] date];
  [(DNDSBaseLifetimeMonitor *)self refreshMonitorForDate:v4];
}

- (id)_eventStoreCreatingIfNeeded
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v4 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    v5 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__DNDSCalendarEventLifetimeMonitor__eventStoreCreatingIfNeeded__block_invoke;
    v10[3] = &unk_278F89F70;
    v11 = v5;
    v6 = v5;
    [(EKEventStore *)v4 requestFullAccessToEventsWithCompletion:v10];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = self->_eventStore;
    self->_eventStore = v4;
    v8 = v4;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

void __63__DNDSCalendarEventLifetimeMonitor__eventStoreCreatingIfNeeded__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DNDSLogCalendarEventLifetimeMonitor;
  if (a2)
  {
    if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = 1;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Requested access to events, granted=%{BOOL}d error=%{public}@", v8, 0x12u);
    }
  }

  else if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_ERROR))
  {
    __63__DNDSCalendarEventLifetimeMonitor__eventStoreCreatingIfNeeded__block_invoke_cold_1(v5, v6);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_eventForCalendarEventLifetime:(id)a3 assertionStartDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isOnlyDuringEvent])
  {
    v8 = [v6 occurrenceDate];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [v8 dateByAddingTimeInterval:900.0];
  v11 = [(DNDSCalendarEventLifetimeMonitor *)self _eventStoreCreatingIfNeeded];
  v12 = [v11 predicateForEventsWithStartDate:v9 endDate:v10 calendars:0];
  v13 = [v11 eventsMatchingPredicate:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__DNDSCalendarEventLifetimeMonitor__eventForCalendarEventLifetime_assertionStartDate___block_invoke;
  v18[3] = &unk_278F8A460;
  v19 = v6;
  v14 = v6;
  v15 = [v13 bs_filter:v18];
  v16 = [v15 firstObject];

  return v16;
}

uint64_t __86__DNDSCalendarEventLifetimeMonitor__eventForCalendarEventLifetime_assertionStartDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueId];
  v4 = [*(a1 + 32) eventUniqueID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __63__DNDSCalendarEventLifetimeMonitor__eventStoreCreatingIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = 0;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Requested access to events, granted=%{BOOL}d error=%{public}@", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end