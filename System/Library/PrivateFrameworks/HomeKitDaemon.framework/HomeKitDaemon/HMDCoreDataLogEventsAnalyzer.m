@interface HMDCoreDataLogEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDCoreDataLogEventsAnalyzer)initWithDataSource:(id)a3;
- (id)addTTRThresholdTrigger:(id)a3 atThreshold:(int64_t)a4 displayReason:(id)a5 forEventName:(id)a6;
- (void)handleCloudKitOperationEvent:(id)a3;
- (void)handleCloudStoreTransactionEvent:(id)a3;
- (void)handleWorkingStoreTransactionEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
- (void)runDailyTask;
@end

@implementation HMDCoreDataLogEventsAnalyzer

- (void)runDailyTask
{
  v3 = [(HMDCoreDataLogEventsAnalyzer *)self cloudStoreReasonsEventGroup];
  v4 = [v3 eventCounters];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HMDCoreDataLogEventsAnalyzer_runDailyTask__block_invoke;
  v6[3] = &unk_2786845B8;
  v6[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  v5 = [(HMDCoreDataLogEventsAnalyzer *)self cloudStoreReasonsEventGroup];
  [v5 resetEventCounters];
}

void __44__HMDCoreDataLogEventsAnalyzer_runDailyTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v4 logEventSubmitter];
  v7 = [HMDCoreDataCloudStoreReasonsDailyLogEvent alloc];
  v8 = [v5 unsignedIntegerValue];

  v9 = [(HMDCoreDataCloudStoreReasonsDailyLogEvent *)v7 initWithReason:v6 reasonCount:v8];
  [v10 submitLogEvent:v9];
}

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [v2 resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [v7 setCloudStoreCoreDataTransactionCount:{objc_msgSend(v8, "fetchEventCounterForEventName:forDate:", @"CloudStoreCommitCount", v6)}];

  v9 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [v7 setWorkingStoreCoreDataTransactionCount:{objc_msgSend(v9, "fetchEventCounterForEventName:forDate:", @"WorkingStoreCommitCount", v6)}];

  v10 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [v7 setCoreDataCloudKitImportCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"CloudKitImportCount", v6)}];

  v12 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  v11 = [v12 fetchEventCounterForEventName:@"CloudKitExportCount" forDate:v6];

  [v7 setCoreDataCloudKitExportCount:v11];
}

- (void)handleCloudKitOperationEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = [v4 operationType];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataCloudKitOperationLogEvent, operationType: %lu", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 operationType];
  if (v9 == 1)
  {
    v10 = @"CloudKitImportCount";
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v10 = @"CloudKitExportCount";
LABEL_7:
    v11 = [(HMDCoreDataLogEventsAnalyzer *)v6 aggregationEventGroup];
    [v11 incrementEventCounterForEventName:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleWorkingStoreTransactionEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 transactionAuthor];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataWorkingStoreTransactionLogEvent, author: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDCoreDataLogEventsAnalyzer *)v6 aggregationEventGroup];
  [v10 incrementEventCounterForEventName:@"WorkingStoreCommitCount"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudStoreTransactionEvent:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [v5 incrementEventCounterForEventName:@"CloudStoreCommitCount"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v4 reasons];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138543874;
    v23 = v7;
    do
    {
      v10 = 0;
      v24 = v8;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [v4 reasons];
        v13 = [v12 countForObject:v11];

        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v17 = v9;
          v18 = v4;
          v20 = v19 = self;
          *buf = v23;
          v31 = v20;
          v32 = 2112;
          v33 = v11;
          v34 = 2048;
          v35 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataCloudStoreTransactionLogEvent with reason: %@ reasonCount: %lu", buf, 0x20u);

          self = v19;
          v4 = v18;
          v9 = v17;
          v8 = v24;
        }

        objc_autoreleasePoolPop(v14);
        v21 = [(HMDCoreDataLogEventsAnalyzer *)v15 cloudStoreReasonsEventGroup];
        [v21 incrementEventCounterForEventName:v11 withValue:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)observeEvent:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDCoreDataLogEventsAnalyzer *)self handleWorkingStoreTransactionEvent:v5];
  }

  else
  {
    v6 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      [(HMDCoreDataLogEventsAnalyzer *)self handleCloudStoreTransactionEvent:v8];
    }

    else
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        [(HMDCoreDataLogEventsAnalyzer *)self handleCloudKitOperationEvent:v11];
      }
    }
  }
}

- (id)addTTRThresholdTrigger:(id)a3 atThreshold:(int64_t)a4 displayReason:(id)a5 forEventName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [HMDCounterThresholdTTRTrigger alloc];
  v13 = [v11 radarInitiator];
  v14 = [(HMDCounterThresholdTTRTrigger *)v12 initWithThreshold:a4 displayReason:v10 radarInitiator:v13];

  v15 = [v11 legacyCountersManager];

  [v15 addObserver:v14 forEventName:v9 requestGroup:@"CoreDataAggregationEventGroup"];

  return v14;
}

- (HMDCoreDataLogEventsAnalyzer)initWithDataSource:(id)a3
{
  v29[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMDCoreDataLogEventsAnalyzer;
  v5 = [(HMDCoreDataLogEventsAnalyzer *)&v28 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    countersManager = v5->_countersManager;
    v5->_countersManager = v6;

    v8 = [v4 logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v8;

    v10 = [v4 legacyCountersManager];
    v11 = [v10 counterGroupForName:@"CoreDataAggregationEventGroup"];
    aggregationEventGroup = v5->_aggregationEventGroup;
    v5->_aggregationEventGroup = v11;

    v13 = [v4 legacyCountersManager];
    v14 = [v13 counterGroupForName:@"CoreDataCloudStoreReasonsGroup"];
    cloudStoreReasonsEventGroup = v5->_cloudStoreReasonsEventGroup;
    v5->_cloudStoreReasonsEventGroup = v14;

    [v4 addThresholdTrigger:@"coreDataCloudStoreCommitCount" forEventName:@"CloudStoreCommitCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:10];
    [v4 addThresholdTrigger:@"cloudKitImportCount" forEventName:@"CloudKitImportCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:10];
    [v4 addThresholdTrigger:@"cloudKitExportCount" forEventName:@"CloudKitExportCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:50];
    v16 = [v4 radarInitiator];

    if (v16)
    {
      v17 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:v4 atThreshold:10000 displayReason:@"we detected excessive working store commits" forEventName:@"WorkingStoreCommitCount"];
      workingStoreCommitTTRTrigger = v5->_workingStoreCommitTTRTrigger;
      v5->_workingStoreCommitTTRTrigger = v17;

      v19 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:v4 atThreshold:500 displayReason:@"we detected excessive CloudKit imports" forEventName:@"CloudKitImportCount"];
      cloudKitImportCountTTRTrigger = v5->_cloudKitImportCountTTRTrigger;
      v5->_cloudKitImportCountTTRTrigger = v19;

      v21 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:v4 atThreshold:500 displayReason:@"we detected excessive CloudKit exports" forEventName:@"CloudKitExportCount"];
      cloudKitExportCountTTRTrigger = v5->_cloudKitExportCountTTRTrigger;
      v5->_cloudKitExportCountTTRTrigger = v21;
    }

    v23 = [v4 logEventDispatcher];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v23 addObserver:v5 forEventClasses:v24];

    v25 = [v4 dailyScheduler];
    [v25 registerDailyTaskRunner:v5];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"CoreDataAggregationEventGroup";
  v5[1] = @"CoreDataCloudStoreReasonsGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end