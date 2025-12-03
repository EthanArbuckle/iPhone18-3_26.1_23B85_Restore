@interface DNDSCalendarEventLifetimeMonitor
- (DNDSCalendarEventLifetimeMonitor)init;
- (id)_eventForCalendarEventLifetime:(id)lifetime assertionStartDate:(id)date;
- (id)_eventStoreCreatingIfNeeded;
- (id)activeDateIntervalForCalendarEventLifetime:(id)lifetime assertionStartDate:(id)date;
- (id)updateForModeAssertions:(id)assertions date:(id)date;
- (void)_calendarEventStoreChangedWithNotification:(id)notification;
- (void)setDelegate:(id)delegate;
@end

@implementation DNDSCalendarEventLifetimeMonitor

- (DNDSCalendarEventLifetimeMonitor)init
{
  v5.receiver = self;
  v5.super_class = DNDSCalendarEventLifetimeMonitor;
  v2 = [(DNDSBaseLifetimeMonitor *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__calendarEventStoreChangedWithNotification_ name:*MEMORY[0x277CC5948] object:0];
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DNDSCalendarEventLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__DNDSCalendarEventLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [delegateCopy lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" handler:v5];
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

- (id)activeDateIntervalForCalendarEventLifetime:(id)lifetime assertionStartDate:(id)date
{
  dateCopy = date;
  lifetimeCopy = lifetime;
  v8 = [(DNDSCalendarEventLifetimeMonitor *)self _eventForCalendarEventLifetime:lifetimeCopy assertionStartDate:dateCopy];
  LOBYTE(self) = [lifetimeCopy isOnlyDuringEvent];

  if (self)
  {
    startDate = [v8 startDate];
  }

  else
  {
    startDate = dateCopy;
  }

  v10 = startDate;
  endDate = [v8 endDate];
  v12 = endDate;
  v13 = 0;
  if (v10 && endDate)
  {
    if ([v10 compare:endDate] == -1)
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

- (id)updateForModeAssertions:(id)assertions date:(id)date
{
  v75 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dateCopy = date;
  selfCopy = self;
  queue = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = DNDSLogCalendarEventLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = dateCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = assertionsCopy;
  v10 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v67;
    *&v11 = 138543618;
    v60 = v11;
    selfCopy3 = self;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        details = [v16 details];
        lifetime = [details lifetime];

        startDate = [v16 startDate];
        v20 = [(DNDSCalendarEventLifetimeMonitor *)selfCopy3 activeDateIntervalForCalendarEventLifetime:lifetime assertionStartDate:startDate];

        if (!v20)
        {
          source = [v16 source];
          deviceIdentifier = [source deviceIdentifier];

          if (deviceIdentifier)
          {
            v31 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
              eventUniqueID = [lifetime eventUniqueID];
              uUID = [v16 UUID];
              *buf = v60;
              v71 = eventUniqueID;
              v72 = 2114;
              v73 = uUID;
              _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Unable to find matching event for synced assertion; eventIdentifier=%{public}@; assertionIdentifier=%{public}@", buf, 0x16u);

              selfCopy3 = selfCopy;
            }

            uUID2 = [v16 UUID];
            [array addObject:uUID2];
          }

          else
          {
            uUID3 = [v16 UUID];
            [array2 addObject:uUID3];

            v45 = DNDSLogCalendarEventLifetimeMonitor;
            if (!os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            uUID2 = v45;
            eventUniqueID2 = [lifetime eventUniqueID];
            *buf = 138543362;
            v71 = eventUniqueID2;
            v42 = uUID2;
            v43 = "No date interval for event; eventIdentifier=%{public}@";
LABEL_26:
            _os_log_impl(&dword_24912E000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0xCu);

            selfCopy3 = selfCopy;
          }

          goto LABEL_28;
        }

        v21 = [v20 dnds_lifetimePhaseForDate:dateCopy];
        if (v21 != 2)
        {
          if (v21 == 1)
          {
            uUID4 = [v16 UUID];
            [array addObject:uUID4];

            endDate = [v20 endDate];
            v23 = [(NSDate *)distantFuture earlierDate:endDate];

            v38 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v38;
              eventUniqueID3 = [lifetime eventUniqueID];
              *buf = 138543362;
              v71 = eventUniqueID3;
              v27 = v25;
              v28 = "Active date interval for event; eventIdentifier=%{public}@";
LABEL_20:
              _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);

              selfCopy3 = selfCopy;
            }
          }

          else
          {
            if (v21)
            {
              goto LABEL_28;
            }

            startDate2 = [v20 startDate];
            v23 = [(NSDate *)distantFuture earlierDate:startDate2];

            v24 = DNDSLogCalendarEventLifetimeMonitor;
            if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              eventUniqueID3 = [lifetime eventUniqueID];
              *buf = 138543362;
              v71 = eventUniqueID3;
              v27 = v25;
              v28 = "Pending date interval for event; eventIdentifier=%{public}@";
              goto LABEL_20;
            }
          }

          distantFuture = v23;
          goto LABEL_28;
        }

        uUID5 = [v16 UUID];
        [array2 addObject:uUID5];

        v40 = DNDSLogCalendarEventLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          uUID2 = v40;
          eventUniqueID2 = [lifetime eventUniqueID];
          *buf = 138543362;
          v71 = eventUniqueID2;
          v42 = uUID2;
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

  selfCopy3 = self;
LABEL_32:

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  v47 = [(NSDate *)distantFuture isEqualToDate:distantFuture2];

  v48 = [(NSDate *)distantFuture isEqualToDate:selfCopy3->_lifetimeTimerFireDate];
  delegate = [(DNDSBaseLifetimeMonitor *)selfCopy3 delegate];
  if (v47 || !v48)
  {
    v50 = DNDSLogCalendarEventLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = selfCopy3->_lifetimeTimerFireDate;
      *buf = 138543362;
      v71 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v50, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    _eventStore = [(DNDSCalendarEventLifetimeMonitor *)selfCopy3 _eventStore];
    [_eventStore reset];

    v53 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy3 setTimer:v53];

    v54 = selfCopy3->_lifetimeTimerFireDate;
    selfCopy3->_lifetimeTimerFireDate = 0;
  }

  if (!v47 && (selfCopy3->_lifetimeTimerFireDate == 0 || !v48))
  {
    v55 = DNDSLogCalendarEventLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogCalendarEventLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v71 = distantFuture;
      _os_log_impl(&dword_24912E000, v55, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v56 = [[DNDSXPCTimer alloc] initWithFireDate:distantFuture serviceIdentifier:@"com.apple.donotdisturb.server.CalendarEventLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy3 setTimer:v56];

    objc_storeStrong(&selfCopy3->_lifetimeTimerFireDate, distantFuture);
  }

  v57 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:array expiredUUIDs:array2];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (void)_calendarEventStoreChangedWithNotification:(id)notification
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DNDSBaseLifetimeMonitor *)self refreshMonitorForDate:date];
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

- (id)_eventForCalendarEventLifetime:(id)lifetime assertionStartDate:(id)date
{
  lifetimeCopy = lifetime;
  dateCopy = date;
  if ([lifetimeCopy isOnlyDuringEvent])
  {
    occurrenceDate = [lifetimeCopy occurrenceDate];
  }

  else
  {
    occurrenceDate = dateCopy;
  }

  v9 = occurrenceDate;
  v10 = [occurrenceDate dateByAddingTimeInterval:900.0];
  _eventStoreCreatingIfNeeded = [(DNDSCalendarEventLifetimeMonitor *)self _eventStoreCreatingIfNeeded];
  v12 = [_eventStoreCreatingIfNeeded predicateForEventsWithStartDate:v9 endDate:v10 calendars:0];
  v13 = [_eventStoreCreatingIfNeeded eventsMatchingPredicate:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__DNDSCalendarEventLifetimeMonitor__eventForCalendarEventLifetime_assertionStartDate___block_invoke;
  v18[3] = &unk_278F8A460;
  v19 = lifetimeCopy;
  v14 = lifetimeCopy;
  v15 = [v13 bs_filter:v18];
  firstObject = [v15 firstObject];

  return firstObject;
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