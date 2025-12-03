@interface HMDLogEventCountingAnalyzer
- (HMDEventCounterGroup)currentDayCountersGroup;
- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider systemInfo:(id)info queue:(id)queue;
- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider systemInfo:(id)info queue:(id)queue loggingPeriodicitySeconds:(unint64_t)seconds tickSecondsProviderBlock:(id)block periodicCountersLoggingBlock:(id)self0;
- (id)periodicSnapshotAtCurrentTickSeconds:(unint64_t)seconds;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
- (void)incrementDailyCountersForEventName:(id)name;
- (void)incrementPeriodicCountersForEventName:(id)name;
- (void)observeEvent:(id)event;
- (void)observeEvent:(id)event withCurrentTickSeconds:(unint64_t)seconds;
- (void)runDailyTask;
@end

@implementation HMDLogEventCountingAnalyzer

- (HMDEventCounterGroup)currentDayCountersGroup
{
  v3 = [HMDDateCounterGroupSpecifier alloc];
  dateProvider = [(HMDLogEventCountingAnalyzer *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v6 = [(HMDDateCounterGroupSpecifier *)v3 initWithGroupName:@"HMDLogEventCountingAnalyzerDailyGroupName" date:startOfCurrentDay];

  countersManager = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v8 = [countersManager counterGroupForSpecifier:v6];

  return v8;
}

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDLogEventCountingAnalyzer_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_278681218;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
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

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDLogEventCountingAnalyzer *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDLogEventCountingAnalyzer_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_278681218;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
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
  queue = [(HMDLogEventCountingAnalyzer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDLogEventCountingAnalyzer_runDailyTask__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)incrementDailyCountersForEventName:(id)name
{
  nameCopy = name;
  currentDayCountersGroup = [(HMDLogEventCountingAnalyzer *)self currentDayCountersGroup];
  [currentDayCountersGroup incrementEventCounterForEventName:nameCopy];
}

- (void)incrementPeriodicCountersForEventName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_currentPeriodCounters objectForKeyedSubscript:nameCopy];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(NSMutableDictionary *)self->_currentPeriodCounters objectForKeyedSubscript:nameCopy];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_currentPeriodCounters setObject:v7 forKeyedSubscript:nameCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_currentPeriodCounters setObject:&unk_283E74048 forKeyedSubscript:nameCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)periodicSnapshotAtCurrentTickSeconds:(unint64_t)seconds
{
  os_unfair_lock_lock_with_options();
  if (seconds - self->_tickSecondsLastLogged >= self->_loggingPeriodicitySeconds)
  {
    v5 = [(NSMutableDictionary *)self->_currentPeriodCounters copy];
    [(NSMutableDictionary *)self->_currentPeriodCounters removeAllObjects];
    self->_tickSecondsLastLogged = seconds;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)observeEvent:(id)event withCurrentTickSeconds:(unint64_t)seconds
{
  eventCopy = event;
  queue = [(HMDLogEventCountingAnalyzer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = objc_opt_class();
  v12 = NSStringFromClass(v8);
  [(HMDLogEventCountingAnalyzer *)self incrementPeriodicCountersForEventName:v12];
  [(HMDLogEventCountingAnalyzer *)self incrementDailyCountersForEventName:v12];
  v9 = [(HMDLogEventCountingAnalyzer *)self periodicSnapshotAtCurrentTickSeconds:seconds];
  if (v9)
  {
    periodicCountersSnapshotBlock = [(HMDLogEventCountingAnalyzer *)self periodicCountersSnapshotBlock];
    serialNumber = [(HMDLogEventCountingAnalyzer *)self serialNumber];
    (periodicCountersSnapshotBlock)[2](periodicCountersSnapshotBlock, v9, serialNumber);
  }
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDLogEventCountingAnalyzer_observeEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __44__HMDLogEventCountingAnalyzer_observeEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 tickSecondsProviderBlock];
  [v1 observeEvent:v2 withCurrentTickSeconds:v3[2]()];
}

- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider systemInfo:(id)info queue:(id)queue loggingPeriodicitySeconds:(unint64_t)seconds tickSecondsProviderBlock:(id)block periodicCountersLoggingBlock:(id)self0
{
  managerCopy = manager;
  schedulerCopy = scheduler;
  providerCopy = provider;
  infoCopy = info;
  queueCopy = queue;
  blockCopy = block;
  loggingBlockCopy = loggingBlock;
  v35.receiver = self;
  v35.super_class = HMDLogEventCountingAnalyzer;
  v22 = [(HMDLogEventCountingAnalyzer *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_countersManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentPeriodCounters = v23->_currentPeriodCounters;
    v23->_currentPeriodCounters = dictionary;

    objc_storeStrong(&v23->_dateProvider, provider);
    v26 = isInternalBuild();
    if (v26)
    {
      serialNumber = [infoCopy serialNumber];
    }

    else
    {
      serialNumber = 0;
    }

    objc_storeStrong(&v23->_serialNumber, serialNumber);
    if (v26)
    {
    }

    objc_storeStrong(&v23->_queue, queue);
    v23->_loggingPeriodicitySeconds = seconds;
    v28 = _Block_copy(blockCopy);
    tickSecondsProviderBlock = v23->_tickSecondsProviderBlock;
    v23->_tickSecondsProviderBlock = v28;

    v23->_tickSecondsLastLogged = (*(v23->_tickSecondsProviderBlock + 2))();
    v30 = _Block_copy(loggingBlockCopy);
    periodicCountersSnapshotBlock = v23->_periodicCountersSnapshotBlock;
    v23->_periodicCountersSnapshotBlock = v30;

    [schedulerCopy registerDailyTaskRunner:v23];
  }

  return v23;
}

- (HMDLogEventCountingAnalyzer)initWithEventCountersManager:(id)manager dailyScheduler:(id)scheduler dateProvider:(id)provider systemInfo:(id)info queue:(id)queue
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__HMDLogEventCountingAnalyzer_initWithEventCountersManager_dailyScheduler_dateProvider_systemInfo_queue___block_invoke_2;
  v14[3] = &unk_2786804B8;
  selfCopy = self;
  v12 = [(HMDLogEventCountingAnalyzer *)selfCopy initWithEventCountersManager:manager dailyScheduler:scheduler dateProvider:provider systemInfo:info queue:queue loggingPeriodicitySeconds:900 tickSecondsProviderBlock:&__block_literal_global_207585 periodicCountersLoggingBlock:v14];

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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Logging Period = %d Minutes] Metric event counts on current device: %@ %@", &v12, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

@end