@interface DNDSDateIntervalLifetimeMonitor
- (id)updateForModeAssertions:(id)assertions date:(id)date;
- (void)setDelegate:(id)delegate;
@end

@implementation DNDSDateIntervalLifetimeMonitor

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DNDSDateIntervalLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__DNDSDateIntervalLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [delegateCopy lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __47__DNDSDateIntervalLifetimeMonitor_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained refreshMonitorForDate:v3];
  }
}

- (id)updateForModeAssertions:(id)assertions date:(id)date
{
  v48 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dateCopy = date;
  queue = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = DNDSLogDateIntervalLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = dateCopy;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  selfCopy = self;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = assertionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        details = [v16 details];
        lifetime = [details lifetime];

        dateInterval = [lifetime dateInterval];
        v20 = [dateInterval dnds_lifetimePhaseForDate:dateCopy];
        if (v20 == 2)
        {
          uUID = [v16 UUID];
          [array2 addObject:uUID];
        }

        else
        {
          if (v20 == 1)
          {
            uUID2 = [v16 UUID];
            [array addObject:uUID2];

            endDate = [dateInterval endDate];
          }

          else
          {
            if (v20)
            {
              goto LABEL_16;
            }

            endDate = [dateInterval startDate];
          }

          uUID = endDate;
          v24 = [(NSDate *)distantFuture earlierDate:endDate];

          distantFuture = v24;
        }

LABEL_16:
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  v26 = [(NSDate *)distantFuture isEqualToDate:distantFuture2];

  v27 = [(NSDate *)distantFuture isEqualToDate:selfCopy->_lifetimeTimerFireDate];
  delegate = [(DNDSBaseLifetimeMonitor *)selfCopy delegate];
  if (v26 || !v27)
  {
    v29 = DNDSLogDateIntervalLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = selfCopy->_lifetimeTimerFireDate;
      *buf = 138543362;
      v47 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v31 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v31];

    v32 = selfCopy->_lifetimeTimerFireDate;
    selfCopy->_lifetimeTimerFireDate = 0;
  }

  if (!v26 && (selfCopy->_lifetimeTimerFireDate == 0 || !v27))
  {
    v33 = DNDSLogDateIntervalLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = distantFuture;
      _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v34 = [[DNDSXPCTimer alloc] initWithFireDate:distantFuture serviceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v34];

    objc_storeStrong(&selfCopy->_lifetimeTimerFireDate, distantFuture);
  }

  v35 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:array expiredUUIDs:array2];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

@end