@interface DNDSDateIntervalLifetimeMonitor
- (id)updateForModeAssertions:(id)a3 date:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation DNDSDateIntervalLifetimeMonitor

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DNDSDateIntervalLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:v4];
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__DNDSDateIntervalLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [v4 lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" handler:v5];
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

- (id)updateForModeAssertions:(id)a3 date:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = DNDSLogDateIntervalLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v7;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  v38 = self;
  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  v40 = [MEMORY[0x277CBEB18] array];
  v39 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v6;
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
        v17 = [v16 details];
        v18 = [v17 lifetime];

        v19 = [v18 dateInterval];
        v20 = [v19 dnds_lifetimePhaseForDate:v7];
        if (v20 == 2)
        {
          v23 = [v16 UUID];
          [v39 addObject:v23];
        }

        else
        {
          if (v20 == 1)
          {
            v22 = [v16 UUID];
            [v40 addObject:v22];

            v21 = [v19 endDate];
          }

          else
          {
            if (v20)
            {
              goto LABEL_16;
            }

            v21 = [v19 startDate];
          }

          v23 = v21;
          v24 = [(NSDate *)v10 earlierDate:v21];

          v10 = v24;
        }

LABEL_16:
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  v25 = [MEMORY[0x277CBEAA8] distantFuture];
  v26 = [(NSDate *)v10 isEqualToDate:v25];

  v27 = [(NSDate *)v10 isEqualToDate:v38->_lifetimeTimerFireDate];
  v28 = [(DNDSBaseLifetimeMonitor *)v38 delegate];
  if (v26 || !v27)
  {
    v29 = DNDSLogDateIntervalLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = v38->_lifetimeTimerFireDate;
      *buf = 138543362;
      v47 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v31 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" userVisible:1];
    [v28 lifetimeMonitor:v38 setTimer:v31];

    v32 = v38->_lifetimeTimerFireDate;
    v38->_lifetimeTimerFireDate = 0;
  }

  if (!v26 && (v38->_lifetimeTimerFireDate == 0 || !v27))
  {
    v33 = DNDSLogDateIntervalLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogDateIntervalLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = v10;
      _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v34 = [[DNDSXPCTimer alloc] initWithFireDate:v10 serviceIdentifier:@"com.apple.donotdisturb.server.DateIntervalLifetimeMonitor.timer" userVisible:1];
    [v28 lifetimeMonitor:v38 setTimer:v34];

    objc_storeStrong(&v38->_lifetimeTimerFireDate, v10);
  }

  v35 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:v40 expiredUUIDs:v39];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

@end