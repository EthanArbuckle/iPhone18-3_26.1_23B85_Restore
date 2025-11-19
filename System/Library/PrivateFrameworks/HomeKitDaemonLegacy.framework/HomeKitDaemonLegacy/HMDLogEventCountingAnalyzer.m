@interface HMDLogEventCountingAnalyzer
- (HMDEventCounterGroup)currentDayCountersGroup;
- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5 systemInfo:(id)a6 queue:(id)a7;
- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5 systemInfo:(id)a6 queue:(id)a7 loggingPeriodicitySeconds:(unint64_t)a8 tickSecondsProviderBlock:(id)a9 periodicCountersLoggingBlock:(id)a10;
- (id)periodicSnapshotAtCurrentTickSeconds:(unint64_t)a3;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
- (void)incrementDailyCountersForEventName:(id)a3;
- (void)incrementPeriodicCountersForEventName:(id)a3;
- (void)observeEvent:(id)a3;
- (void)observeEvent:(id)a3 withCurrentTickSeconds:(unint64_t)a4;
- (void)runDailyTask;
@end

@implementation HMDLogEventCountingAnalyzer

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDLogEventCountingAnalyzer_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
}

BOOL __55__HMDLogEventCountingAnalyzer_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 groupName];
    if ([v7 isEqualToString:@"HMDLogEventCountingAnalyzerDailyGroupName"])
    {
      v8 = [v6 date];
      v9 = [v8 compare:*(a1 + 32)] == 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDLogEventCountingAnalyzer_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
}

BOOL __56__HMDLogEventCountingAnalyzer_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 groupName];
    if ([v7 isEqualToString:@"HMDLogEventCountingAnalyzerDailyGroupName"])
    {
      v8 = [v6 date];
      v9 = [v8 compare:*(a1 + 32)] == -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)runDailyTask
{
  v3 = [(HMDLogEventCountingAnalyzer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDLogEventCountingAnalyzer_runDailyTask__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__HMDLogEventCountingAnalyzer_runDailyTask__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dateProvider];
  v5 = [v2 startOfDayByAddingDayCount:-5];

  [*(a1 + 32) deleteCountersBeforeDate:v5];
  v3 = [*(a1 + 32) dateProvider];
  v4 = [v3 startOfDayByAddingDayCount:1];

  [*(a1 + 32) deleteCountersAfterDate:v4];
}

- (HMDEventCounterGroup)currentDayCountersGroup
{
  v3 = [HMDDateCounterGroupSpecifier alloc];
  v4 = [(HMDLogEventCountingAnalyzer *)self dateProvider];
  v5 = [v4 startOfCurrentDay];
  v6 = [(HMDDateCounterGroupSpecifier *)v3 initWithGroupName:@"HMDLogEventCountingAnalyzerDailyGroupName" date:v5];

  v7 = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v8 = [v7 counterGroupForSpecifier:v6];

  return v8;
}

- (void)incrementDailyCountersForEventName:(id)a3
{
  v4 = a3;
  v5 = [(HMDLogEventCountingAnalyzer *)self currentDayCountersGroup];
  [v5 incrementEventCounterForEventName:v4];
}

- (void)incrementPeriodicCountersForEventName:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_currentPeriodCounters objectForKeyedSubscript:v8];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(NSMutableDictionary *)self->_currentPeriodCounters objectForKeyedSubscript:v8];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_currentPeriodCounters setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    [(NSMutableDictionary *)self->_currentPeriodCounters setObject:&unk_286627D90 forKeyedSubscript:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)periodicSnapshotAtCurrentTickSeconds:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (a3 - self->_tickSecondsLastLogged >= self->_loggingPeriodicitySeconds)
  {
    v5 = [(NSMutableDictionary *)self->_currentPeriodCounters copy];
    [(NSMutableDictionary *)self->_currentPeriodCounters removeAllObjects];
    self->_tickSecondsLastLogged = a3;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)observeEvent:(id)a3 withCurrentTickSeconds:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDLogEventCountingAnalyzer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_opt_class();
  v12 = NSStringFromClass(v8);
  [(HMDLogEventCountingAnalyzer *)self incrementPeriodicCountersForEventName:v12];
  [(HMDLogEventCountingAnalyzer *)self incrementDailyCountersForEventName:v12];
  v9 = [(HMDLogEventCountingAnalyzer *)self periodicSnapshotAtCurrentTickSeconds:a4];
  if (v9)
  {
    v10 = [(HMDLogEventCountingAnalyzer *)self periodicCountersSnapshotBlock];
    v11 = [(HMDLogEventCountingAnalyzer *)self serialNumber];
    (v10)[2](v10, v9, v11);
  }
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDLogEventCountingAnalyzer_observeEvent___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__HMDLogEventCountingAnalyzer_observeEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 tickSecondsProviderBlock];
  [v1 observeEvent:v2 withCurrentTickSeconds:v3[2]()];
}

- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5 systemInfo:(id)a6 queue:(id)a7 loggingPeriodicitySeconds:(unint64_t)a8 tickSecondsProviderBlock:(id)a9 periodicCountersLoggingBlock:(id)a10
{
  v34 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v35.receiver = self;
  v35.super_class = HMDLogEventCountingAnalyzer;
  v22 = [(HMDLogEventCountingAnalyzer *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_countersManager, a3);
    v24 = [MEMORY[0x277CBEB38] dictionary];
    currentPeriodCounters = v23->_currentPeriodCounters;
    v23->_currentPeriodCounters = v24;

    objc_storeStrong(&v23->_dateProvider, a5);
    v26 = isInternalBuild();
    if (v26)
    {
      v27 = [v18 serialNumber];
    }

    else
    {
      v27 = 0;
    }

    objc_storeStrong(&v23->_serialNumber, v27);
    if (v26)
    {
    }

    objc_storeStrong(&v23->_queue, a7);
    v23->_loggingPeriodicitySeconds = a8;
    v28 = _Block_copy(v20);
    tickSecondsProviderBlock = v23->_tickSecondsProviderBlock;
    v23->_tickSecondsProviderBlock = v28;

    v23->_tickSecondsLastLogged = (*(v23->_tickSecondsProviderBlock + 2))();
    v30 = _Block_copy(v21);
    periodicCountersSnapshotBlock = v23->_periodicCountersSnapshotBlock;
    v23->_periodicCountersSnapshotBlock = v30;

    [v16 registerDailyTaskRunner:v23];
  }

  return v23;
}

- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5 systemInfo:(id)a6 queue:(id)a7
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__HMDLogEventCountingAnalyzer_initWithEventCountersManager_dailyScheduler_dateProvider_systemInfo_queue___block_invoke_2;
  v14[3] = &unk_279725348;
  v15 = self;
  v12 = [(HMDLogEventCountingAnalyzer *)v15 initWithEventCountersManager:a3 dailyScheduler:a4 dateProvider:a5 systemInfo:a6 queue:a7 loggingPeriodicitySeconds:900 tickSecondsProviderBlock:&__block_literal_global_37603 periodicCountersLoggingBlock:v14];

  return v12;
}

void __105__HMDLogEventCountingAnalyzer_initWithEventCountersManager_dailyScheduler_dateProvider_systemInfo_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138544130;
    v13 = v10;
    v14 = 1024;
    v15 = 15;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Logging Period = %d Minutes] Metric event counts on current device: %@ %@", &v12, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

@end