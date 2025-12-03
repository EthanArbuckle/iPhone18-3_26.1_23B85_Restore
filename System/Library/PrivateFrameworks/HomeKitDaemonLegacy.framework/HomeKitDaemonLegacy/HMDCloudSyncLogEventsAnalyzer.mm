@interface HMDCloudSyncLogEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDCloudSyncLogEventsAnalyzer)initWithDataSource:(id)source;
- (id)cloudSyncAnalysisResultForDate:(id)date;
- (void)handleDecryptionCompletedEvent:(id)event;
- (void)handleFetchLogEvent:(id)event;
- (void)handleIncomingCloudPushLogEvent:(id)event;
- (void)handleMaximumDelayLogEvent:(id)event;
- (void)handleRecordOperationLogEvent:(id)event;
- (void)handleUploadLogEvent:(id)event;
- (void)handleUploadReasonLogEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetDataSource;
@end

@implementation HMDCloudSyncLogEventsAnalyzer

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  eventCopy = event;
  v7 = [(HMDCloudSyncLogEventsAnalyzer *)self cloudSyncAnalysisResultForDate:date];
  [eventCopy setCloudSyncPushCount:{objc_msgSend(v7, "incomingPushCount")}];
  [eventCopy setCloudSyncFetchCount:{objc_msgSend(v7, "legacyFetchCount")}];
  [eventCopy setCloudSyncUploadCount:{objc_msgSend(v7, "legacyUploadCount")}];
  [eventCopy setCloudSyncUploadErrorCount:{objc_msgSend(v7, "legacyUploadErrorCount")}];
  [eventCopy setHomeDataBytesFetched:{objc_msgSend(v7, "bytesFetched")}];
  [eventCopy setHomeDataBytesPushed:{objc_msgSend(v7, "bytesPushed")}];
  [eventCopy setLegacyHomeDataBytesFetched:{objc_msgSend(v7, "legacyBytesFetched")}];
  [eventCopy setLegacyHomeDataBytesPushed:{objc_msgSend(v7, "legacyBytesPushed")}];
  [eventCopy setCloudSyncDecryptionFailedCount:{objc_msgSend(v7, "decryptionFailedCount")}];
  [eventCopy setCloudSyncLastDecryptionFailed:{objc_msgSend(v7, "lastDecryptionFailed")}];
  [eventCopy setCloudSyncMaximumDelayReached:{objc_msgSend(v7, "uploadMaximumDelayReached")}];
}

- (void)resetDataSource
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  managedEventCounterRequestGroups = [objc_opt_class() managedEventCounterRequestGroups];
  v4 = [managedEventCounterRequestGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(managedEventCounterRequestGroups);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
        [eventCountersManager resetEventCountersForRequestGroup:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [managedEventCounterRequestGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cloudSyncAnalysisResultForDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(HMDCloudSyncAnalysisResultLogEvent);
  eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = [eventCountersManager counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

  -[HMDCloudSyncAnalysisResultLogEvent setUploadMaximumDelayReached:](v5, "setUploadMaximumDelayReached:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadMaximumDelayReached" forDate:dateCopy] != 0);
  flagsManager = [(HMDCloudSyncLogEventsAnalyzer *)self flagsManager];
  v26 = [flagsManager flagForName:@"HMDCloudSyncLogEventsAnalyzerLastDecryptionFailed" periodicity:1];

  -[HMDCloudSyncAnalysisResultLogEvent setLastDecryptionFailed:](v5, "setLastDecryptionFailed:", [v26 bitsForDate:dateCopy bitCount:1 outValidBitCount:0] != 0);
  -[HMDCloudSyncAnalysisResultLogEvent setIncomingPushCount:](v5, "setIncomingPushCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setFetchCount:](v5, "setFetchCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyFetchCount:](v5, "setLegacyFetchCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setFetchErrorCount:](v5, "setFetchErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchErrorCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyFetchErrorCount:](v5, "setLegacyFetchErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchErrorCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setUploadCount:](v5, "setUploadCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyUploadCount:](v5, "setLegacyUploadCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setUploadErrorCount:](v5, "setUploadErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyUploadErrorCount:](v5, "setLegacyUploadErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setDecryptionFailedCount:](v5, "setDecryptionFailedCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerDecryptionFailedCount" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setBytesFetched:](v5, "setBytesFetched:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerHomeDataBytesFetched" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setBytesPushed:](v5, "setBytesPushed:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerHomeDataBytesPushed" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyBytesFetched:](v5, "setLegacyBytesFetched:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesFetched" forDate:dateCopy]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyBytesPushed:](v5, "setLegacyBytesPushed:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesPushed" forDate:dateCopy]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  eventCountersManager2 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v11 = [eventCountersManager2 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadReasonRequestGroupKey"];

  eventCountersManager3 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v13 = [eventCountersManager3 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadNoPushReasonRequestGroupKey"];

  v14 = [v11 eventCountersForDate:dateCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__HMDCloudSyncLogEventsAnalyzer_cloudSyncAnalysisResultForDate___block_invoke;
  v27[3] = &unk_27972E0D0;
  v28 = v13;
  v29 = dateCopy;
  v30 = dictionary;
  v15 = dictionary;
  v16 = dateCopy;
  v25 = v13;
  [v14 enumerateKeysAndObjectsUsingBlock:v27];
  v17 = [v15 copy];
  [(HMDCloudSyncAnalysisResultLogEvent *)v5 setLegacyUploadReasonCountMap:v17];

  eventCountersManager4 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v19 = [eventCountersManager4 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorRequestGroupKey"];
  v20 = [v19 eventCountersForDate:v16];
  [(HMDCloudSyncAnalysisResultLogEvent *)v5 setUploadErrorCountMap:v20];

  eventCountersManager5 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v22 = [eventCountersManager5 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorRequestGroupKey"];
  v23 = [v22 eventCountersForDate:v16];
  [(HMDCloudSyncAnalysisResultLogEvent *)v5 setLegacyUploadErrorCountMap:v23];

  return v5;
}

void __64__HMDCloudSyncLogEventsAnalyzer_cloudSyncAnalysisResultForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 unsignedIntegerValue];
  if (v5 - [*(a1 + 32) fetchEventCounterForEventName:v7 forDate:*(a1 + 40)] >= 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [*(a1 + 48) setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)handleRecordOperationLogEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    isLegacy = [v6 isLegacy];
    eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v10 = [v7 size];
    if (isLegacy)
    {
      v11 = @"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesPushed";
    }

    else
    {
      v11 = @"HMDCloudSyncLogEventsAnalyzerHomeDataBytesPushed";
    }

    [eventCountersManager incrementEventCounterForEventName:v11 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" withValue:v10];
  }

  v18 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    isLegacy2 = [v13 isLegacy];
    eventCountersManager2 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v16 = [v13 size];
    if (isLegacy2)
    {
      v17 = @"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesFetched";
    }

    else
    {
      v17 = @"HMDCloudSyncLogEventsAnalyzerHomeDataBytesFetched";
    }

    [eventCountersManager2 incrementEventCounterForEventName:v17 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" withValue:v16];
  }
}

- (void)handleDecryptionCompletedEvent:(id)event
{
  eventCopy = event;
  flagsManager = [(HMDCloudSyncLogEventsAnalyzer *)self flagsManager];
  v7 = [flagsManager flagForName:@"HMDCloudSyncLogEventsAnalyzerLastDecryptionFailed" periodicity:1];

  LODWORD(flagsManager) = [eventCopy didDecryptionFail];
  if (flagsManager)
  {
    eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerDecryptionFailedCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    [v7 setCurrentBit];
  }

  else
  {
    [v7 clearCurrentBit];
  }
}

- (void)handleMaximumDelayLogEvent:(id)event
{
  eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadMaximumDelayReached" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];
}

- (void)handleUploadReasonLogEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  saveReason = [eventCopy saveReason];
  if (saveReason)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138544386;
      v17 = v9;
      v18 = 2114;
      v19 = saveReason;
      v20 = 2048;
      legacyPushCount = [eventCopy legacyPushCount];
      v22 = 2048;
      homeZonePushCount = [eventCopy homeZonePushCount];
      v24 = 2048;
      homeManagerPushCount = [eventCopy homeManagerPushCount];
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[HMDCloudSyncLogEventsAnalyzer] Received upload reason: %{public}@ Count for legacy: %ld homeZone: %ld homeManager: %ld", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v6);
    legacyPushCount2 = [eventCopy legacyPushCount];
    v11 = legacyPushCount2;
    if (legacyPushCount2 < 1)
    {
      v11 = -legacyPushCount2;
      eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)selfCopy eventCountersManager];
      saveReason2 = [eventCopy saveReason];
      v14 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadNoPushReasonRequestGroupKey";
    }

    else
    {
      eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)selfCopy eventCountersManager];
      saveReason2 = [eventCopy saveReason];
      v14 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadReasonRequestGroupKey";
    }

    [eventCountersManager incrementEventCounterForEventName:saveReason2 requestGroup:v14 withValue:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUploadLogEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = eventCountersManager;
  if (v5)
  {
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    error = [v5 error];

    if (!error)
    {
      goto LABEL_10;
    }

    eventCountersManager2 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    eventCountersManager3 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v11 = MEMORY[0x277CCACA8];
    error2 = [v5 error];
    domain = [error2 domain];
    error3 = [v5 error];
    v15 = [v11 stringWithFormat:@"%@ %tu", domain, objc_msgSend(error3, "code")];
    v16 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorRequestGroupKey";
  }

  else
  {
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    error4 = [eventCopy error];

    if (!error4)
    {
      goto LABEL_10;
    }

    eventCountersManager4 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager4 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    eventCountersManager3 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v19 = MEMORY[0x277CCACA8];
    error2 = [eventCopy error];
    domain = [error2 domain];
    error3 = [eventCopy error];
    v15 = [v19 stringWithFormat:@"%@ %tu", domain, objc_msgSend(error3, "code")];
    v16 = @"HMDCloudSyncLogEventsAnalyzerUploadErrorRequestGroupKey";
  }

  [eventCountersManager3 incrementEventCounterForEventName:v15 requestGroup:v16];

LABEL_10:
}

- (void)handleFetchLogEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = eventCountersManager;
  if (v5)
  {
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    error = [v5 error];

    if (!error)
    {
      goto LABEL_10;
    }

    v9 = @"HMDCloudSyncLogEventsAnalyzerLegacyFetchErrorCount";
  }

  else
  {
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    error2 = [eventCopy error];

    if (!error2)
    {
      goto LABEL_10;
    }

    v9 = @"HMDCloudSyncLogEventsAnalyzerFetchErrorCount";
  }

  eventCountersManager2 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager2 incrementEventCounterForEventName:v9 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

LABEL_10:
}

- (void)handleIncomingCloudPushLogEvent:(id)event
{
  topic = [event topic];
  v5 = [topic isEqualToString:@"com.apple.icloud-container.com.apple.willowd"];

  if (v5)
  {
    eventCountersManager = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];
  }
}

- (void)observeEvent:(id)event
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v8;
    v38 = 2112;
    v39 = objc_opt_class();
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[CloudSyncLogEventsAnalyzer] Processing Cloud Event: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = eventCopy;
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
    [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleIncomingCloudPushLogEvent:v11];
  }

  else
  {
    v12 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleFetchLogEvent:v14];
    }

    else
    {
      v15 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleUploadLogEvent:v17];
      }

      else
      {
        v18 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleUploadReasonLogEvent:v20];
        }

        else
        {
          v21 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          if (v23)
          {
            [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleMaximumDelayLogEvent:v23];
          }

          else
          {
            v24 = v21;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }

            v26 = v25;

            if (v26)
            {
              [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleDecryptionCompletedEvent:v26];
            }

            else
            {
              v27 = v24;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v28;

              if (v29)
              {
                [(HMDCloudSyncLogEventsAnalyzer *)selfCopy handleRecordOperationLogEvent:v29];
              }

              else
              {
                context = objc_autoreleasePoolPush();
                v35 = selfCopy;
                v30 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v33 = HMFGetLogIdentifier();
                  v31 = objc_opt_class();
                  *buf = 138543618;
                  v37 = v33;
                  v38 = 2112;
                  v39 = v31;
                  _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Event class: %@ matched none of the handlers in HMDCloudSyncLogEventsAnalyzer", buf, 0x16u);
                }

                objc_autoreleasePoolPop(context);
              }
            }
          }
        }
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (HMDCloudSyncLogEventsAnalyzer)initWithDataSource:(id)source
{
  v21[10] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = HMDCloudSyncLogEventsAnalyzer;
  v5 = [(HMDCloudSyncLogEventsAnalyzer *)&v20 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = legacyCountersManager;

    flagsManager = [sourceCopy flagsManager];
    flagsManager = v5->_flagsManager;
    v5->_flagsManager = flagsManager;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = logEventSubmitter;

    dateProvider = [sourceCopy dateProvider];
    dateProvider = v5->_dateProvider;
    v5->_dateProvider = dateProvider;

    deviceStateProvider = [sourceCopy deviceStateProvider];
    deviceStateProvider = v5->_deviceStateProvider;
    v5->_deviceStateProvider = deviceStateProvider;

    logEventDispatcher = [sourceCopy logEventDispatcher];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v21[4] = objc_opt_class();
    v21[5] = objc_opt_class();
    v21[6] = objc_opt_class();
    v21[7] = objc_opt_class();
    v21[8] = objc_opt_class();
    v21[9] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:10];
    [logEventDispatcher addObserver:v5 forEventClasses:v17];

    [sourceCopy addThresholdTrigger:@"cloudSyncPushCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [sourceCopy addThresholdTrigger:@"cloudSyncFetchCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [sourceCopy addThresholdTrigger:@"cloudSyncFetchCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [sourceCopy addThresholdTrigger:@"cloudSyncUploadCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"cloudSyncUploadCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"cloudSyncUploadErrorCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10 uploadImmediately:1];
    [sourceCopy addThresholdTrigger:@"cloudSyncUploadErrorCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10 uploadImmediately:1];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey";
  v5[1] = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadReasonRequestGroupKey";
  v5[2] = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadNoPushReasonRequestGroupKey";
  v5[3] = @"HMDCloudSyncLogEventsAnalyzerUploadErrorRequestGroupKey";
  v5[4] = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorRequestGroupKey";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end