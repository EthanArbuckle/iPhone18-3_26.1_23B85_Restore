@interface DNDSScheduleLifetimeMonitor
- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertionStartDate:(id)date date:(id)a5 scheduleSettings:(id)settings calendar:(id)calendar ignoreMatchScheduleStartDate:(BOOL)startDate;
- (id)updateForModeAssertions:(id)assertions date:(id)date;
- (void)setDelegate:(id)delegate;
@end

@implementation DNDSScheduleLifetimeMonitor

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DNDSScheduleLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__DNDSScheduleLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [delegateCopy lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" handler:v5];
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

- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertionStartDate:(id)date date:(id)a5 scheduleSettings:(id)settings calendar:(id)calendar ignoreMatchScheduleStartDate:(BOOL)startDate
{
  dateCopy = date;
  v14 = a5;
  settingsCopy = settings;
  calendarCopy = calendar;
  behavior = [lifetime behavior];
  if (behavior == 1)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalUntilEndOfScheduleForScheduleSettings:settingsCopy startDate:dateCopy calendar:calendarCopy];
    if (v18)
    {
      goto LABEL_11;
    }

    v23 = objc_alloc(MEMORY[0x277CCA970]);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v18 = [v23 initWithStartDate:dateCopy endDate:distantFuture];
    goto LABEL_9;
  }

  if (!behavior)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalForScheduleSettings:settingsCopy date:v14 calendar:calendarCopy];
    if (startDate)
    {
      goto LABEL_11;
    }

    distantFuture = [settingsCopy creationDate];
    if ([distantFuture compare:dateCopy] == -1)
    {
      v20 = [v18 containsDate:dateCopy];

      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = MEMORY[0x277CCA970];
      distantFuture = [v18 endDate];
      v22 = [v21 dnds_dateIntervalForScheduleSettings:settingsCopy date:distantFuture calendar:calendarCopy];

      v18 = v22;
    }

LABEL_9:

    goto LABEL_11;
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)updateForModeAssertions:(id)assertions date:(id)date
{
  v105 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dateCopy = date;
  selfCopy = self;
  queue = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = DNDSLogScheduleLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v104 = dateCopy;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  dataSource = [(DNDSBaseLifetimeMonitor *)selfCopy dataSource];
  calendar = selfCopy->_calendar;
  v85 = dateCopy;
  if (calendar)
  {
    v12 = calendar;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  }

  v84 = v12;
  v70 = dataSource;
  v76 = [dataSource scheduleSettingsByModeIdentifierForScheduleLifetimeMonitor:selfCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v13 = assertionsCopy;
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
        details = [v18 details];
        modeIdentifier = [details modeIdentifier];

        v21 = [dictionary objectForKeyedSubscript:modeIdentifier];
        bOOLValue = [v21 BOOLValue];

        details2 = [v18 details];
        lifetime = [details2 lifetime];

        v25 = MEMORY[0x277CCABB0];
        v26 = (bOOLValue & 1) != 0 || [lifetime behavior] == 1;
        v27 = [v25 numberWithInt:v26];
        [dictionary setObject:v27 forKey:modeIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
    }

    while (v15);
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
        details3 = [v29 details];
        modeIdentifier2 = [details3 modeIdentifier];

        if ([modeIdentifier2 isEqualToString:v74])
        {
          v32 = v72;

          modeIdentifier2 = v32;
        }

        v33 = [v76 objectForKeyedSubscript:modeIdentifier2];
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

        details4 = [v29 details];
        lifetime2 = [details4 lifetime];

        v39 = [dictionary objectForKeyedSubscript:modeIdentifier2];
        bOOLValue2 = [v39 BOOLValue];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v41 = v35;
        v42 = [v41 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (!v42)
        {
          uUID2 = v41;
LABEL_48:

          goto LABEL_50;
        }

        v43 = v42;
        v78 = modeIdentifier2;
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
            startDate = [v29 startDate];
            v48 = [(DNDSScheduleLifetimeMonitor *)selfCopy _activeDateIntervalForScheduleLifetime:lifetime2 assertionStartDate:startDate date:v85 scheduleSettings:v46 calendar:v84 ignoreMatchScheduleStartDate:bOOLValue2];

            if (v48)
            {
              v49 = [v48 dnds_lifetimePhaseForDate:v85];
              if (v49 == 2)
              {
                if ([(NSDate *)lifetime2 behavior]== 1)
                {
                  uUID = [v29 UUID];
                  [array2 addObject:uUID];
                }
              }

              else
              {
                if (v49 == 1)
                {
                  endDate = [v48 endDate];
                  v51 = [(NSDate *)distantFuture earlierDate:endDate];

                  v82 = 1;
                }

                else
                {
                  if (v49)
                  {
                    goto LABEL_40;
                  }

                  startDate2 = [v48 startDate];
                  v51 = [(NSDate *)distantFuture earlierDate:startDate2];
                }

                distantFuture = v51;
              }
            }

            else
            {
              v52 = DNDSLogScheduleLifetimeMonitor;
              if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v104 = lifetime2;
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
          uUID2 = [v29 UUID];
          [array addObject:uUID2];
          modeIdentifier2 = v78;
          j = v79;
          goto LABEL_48;
        }

        modeIdentifier2 = v78;
        j = v79;
LABEL_50:
      }

      v77 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v77);
  }

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  v58 = [(NSDate *)distantFuture isEqualToDate:distantFuture2];

  v59 = [(NSDate *)distantFuture isEqualToDate:selfCopy->_lifetimeTimerFireDate];
  delegate = [(DNDSBaseLifetimeMonitor *)selfCopy delegate];
  if (v58 || !v59)
  {
    v61 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = selfCopy->_lifetimeTimerFireDate;
      *buf = 138543362;
      v104 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v61, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v63 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v63];

    v64 = selfCopy->_lifetimeTimerFireDate;
    selfCopy->_lifetimeTimerFireDate = 0;
  }

  if (!v58 && (selfCopy->_lifetimeTimerFireDate == 0 || !v59))
  {
    v65 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = distantFuture;
      _os_log_impl(&dword_24912E000, v65, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v66 = [[DNDSXPCTimer alloc] initWithFireDate:distantFuture serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v66];

    objc_storeStrong(&selfCopy->_lifetimeTimerFireDate, distantFuture);
  }

  v67 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:array expiredUUIDs:array2];

  v68 = *MEMORY[0x277D85DE8];

  return v67;
}

@end