@interface DNDSScheduleLifetimeMonitor
- (id)_activeDateIntervalForScheduleLifetime:(id)a3 assertionStartDate:(id)a4 date:(id)a5 scheduleSettings:(id)a6 calendar:(id)a7 ignoreMatchScheduleStartDate:(BOOL)a8;
- (id)updateForModeAssertions:(id)a3 date:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation DNDSScheduleLifetimeMonitor

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DNDSScheduleLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:v4];
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__DNDSScheduleLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [v4 lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __43__DNDSScheduleLifetimeMonitor_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained refreshMonitorForDate:v3];
  }
}

- (id)_activeDateIntervalForScheduleLifetime:(id)a3 assertionStartDate:(id)a4 date:(id)a5 scheduleSettings:(id)a6 calendar:(id)a7 ignoreMatchScheduleStartDate:(BOOL)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [a3 behavior];
  if (v17 == 1)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalUntilEndOfScheduleForScheduleSettings:v15 startDate:v13 calendar:v16];
    if (v18)
    {
      goto LABEL_11;
    }

    v23 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [MEMORY[0x277CBEAA8] distantFuture];
    v18 = [v23 initWithStartDate:v13 endDate:v19];
    goto LABEL_9;
  }

  if (!v17)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalForScheduleSettings:v15 date:v14 calendar:v16];
    if (a8)
    {
      goto LABEL_11;
    }

    v19 = [v15 creationDate];
    if ([v19 compare:v13] == -1)
    {
      v20 = [v18 containsDate:v13];

      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = MEMORY[0x277CCA970];
      v19 = [v18 endDate];
      v22 = [v21 dnds_dateIntervalForScheduleSettings:v15 date:v19 calendar:v16];

      v18 = v22;
    }

LABEL_9:

    goto LABEL_11;
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)updateForModeAssertions:(id)a3 date:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v86 = self;
  v8 = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = DNDSLogScheduleLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v104 = v7;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  v10 = [(DNDSBaseLifetimeMonitor *)v86 dataSource];
  calendar = v86->_calendar;
  v85 = v7;
  if (calendar)
  {
    v12 = calendar;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  }

  v84 = v12;
  v70 = v10;
  v76 = [v10 scheduleSettingsByModeIdentifierForScheduleLifetimeMonitor:v86];
  v80 = [MEMORY[0x277CBEB38] dictionary];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v96;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v96 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v95 + 1) + 8 * i);
        v19 = [v18 details];
        v20 = [v19 modeIdentifier];

        v21 = [v80 objectForKeyedSubscript:v20];
        v22 = [v21 BOOLValue];

        v23 = [v18 details];
        v24 = [v23 lifetime];

        v25 = MEMORY[0x277CCABB0];
        v26 = (v22 & 1) != 0 || [v24 behavior] == 1;
        v27 = [v25 numberWithInt:v26];
        [v80 setObject:v27 forKey:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
    }

    while (v15);
  }

  v83 = [MEMORY[0x277CBEAA8] distantFuture];
  v71 = [MEMORY[0x277CBEB18] array];
  v81 = [MEMORY[0x277CBEB18] array];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v13;
  v77 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v77)
  {
    v75 = *v92;
    v74 = *MEMORY[0x277D05868];
    v72 = *MEMORY[0x277D05830];
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v92 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v91 + 1) + 8 * j);
        v30 = [v29 details];
        v31 = [v30 modeIdentifier];

        if ([v31 isEqualToString:v74])
        {
          v32 = v72;

          v31 = v32;
        }

        v33 = [v76 objectForKeyedSubscript:v31];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v36 = +[DNDSScheduleSettings defaultScheduleSettings];
          v100 = v36;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
        }

        v37 = [v29 details];
        v38 = [v37 lifetime];

        v39 = [v80 objectForKeyedSubscript:v31];
        v40 = [v39 BOOLValue];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v41 = v35;
        v42 = [v41 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (!v42)
        {
          v56 = v41;
LABEL_48:

          goto LABEL_50;
        }

        v43 = v42;
        v78 = v31;
        v79 = j;
        v82 = 0;
        v44 = *v88;
        do
        {
          v45 = 0;
          do
          {
            if (*v88 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v87 + 1) + 8 * v45);
            v47 = [v29 startDate];
            v48 = [(DNDSScheduleLifetimeMonitor *)v86 _activeDateIntervalForScheduleLifetime:v38 assertionStartDate:v47 date:v85 scheduleSettings:v46 calendar:v84 ignoreMatchScheduleStartDate:v40];

            if (v48)
            {
              v49 = [v48 dnds_lifetimePhaseForDate:v85];
              if (v49 == 2)
              {
                if ([(NSDate *)v38 behavior]== 1)
                {
                  v54 = [v29 UUID];
                  [v81 addObject:v54];
                }
              }

              else
              {
                if (v49 == 1)
                {
                  v53 = [v48 endDate];
                  v51 = [(NSDate *)v83 earlierDate:v53];

                  v82 = 1;
                }

                else
                {
                  if (v49)
                  {
                    goto LABEL_40;
                  }

                  v50 = [v48 startDate];
                  v51 = [(NSDate *)v83 earlierDate:v50];
                }

                v83 = v51;
              }
            }

            else
            {
              v52 = DNDSLogScheduleLifetimeMonitor;
              if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v104 = v38;
                _os_log_impl(&dword_24912E000, v52, OS_LOG_TYPE_DEFAULT, "Skipping inactive lifetime, lifetime=%{public}@", buf, 0xCu);
              }
            }

LABEL_40:

            ++v45;
          }

          while (v43 != v45);
          v55 = [v41 countByEnumeratingWithState:&v87 objects:v99 count:16];
          v43 = v55;
        }

        while (v55);

        if (v82)
        {
          v56 = [v29 UUID];
          [v71 addObject:v56];
          v31 = v78;
          j = v79;
          goto LABEL_48;
        }

        v31 = v78;
        j = v79;
LABEL_50:
      }

      v77 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v77);
  }

  v57 = [MEMORY[0x277CBEAA8] distantFuture];
  v58 = [(NSDate *)v83 isEqualToDate:v57];

  v59 = [(NSDate *)v83 isEqualToDate:v86->_lifetimeTimerFireDate];
  v60 = [(DNDSBaseLifetimeMonitor *)v86 delegate];
  if (v58 || !v59)
  {
    v61 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = v86->_lifetimeTimerFireDate;
      *buf = 138543362;
      v104 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v61, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v63 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [v60 lifetimeMonitor:v86 setTimer:v63];

    v64 = v86->_lifetimeTimerFireDate;
    v86->_lifetimeTimerFireDate = 0;
  }

  if (!v58 && (v86->_lifetimeTimerFireDate == 0 || !v59))
  {
    v65 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = v83;
      _os_log_impl(&dword_24912E000, v65, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v66 = [[DNDSXPCTimer alloc] initWithFireDate:v83 serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [v60 lifetimeMonitor:v86 setTimer:v66];

    objc_storeStrong(&v86->_lifetimeTimerFireDate, v83);
  }

  v67 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:v71 expiredUUIDs:v81];

  v68 = *MEMORY[0x277D85DE8];

  return v67;
}

@end