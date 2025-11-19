@interface HMDCloudSyncLogEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDCloudSyncLogEventsAnalyzer)initWithDataSource:(id)a3;
- (id)cloudSyncAnalysisResultForDate:(id)a3;
- (void)handleDecryptionCompletedEvent:(id)a3;
- (void)handleFetchLogEvent:(id)a3;
- (void)handleIncomingCloudPushLogEvent:(id)a3;
- (void)handleMaximumDelayLogEvent:(id)a3;
- (void)handleRecordOperationLogEvent:(id)a3;
- (void)handleUploadLogEvent:(id)a3;
- (void)handleUploadReasonLogEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetDataSource;
@end

@implementation HMDCloudSyncLogEventsAnalyzer

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a3;
  v7 = [(HMDCloudSyncLogEventsAnalyzer *)self cloudSyncAnalysisResultForDate:a4];
  [v6 setCloudSyncPushCount:{objc_msgSend(v7, "incomingPushCount")}];
  [v6 setCloudSyncFetchCount:{objc_msgSend(v7, "legacyFetchCount")}];
  [v6 setCloudSyncUploadCount:{objc_msgSend(v7, "legacyUploadCount")}];
  [v6 setCloudSyncUploadErrorCount:{objc_msgSend(v7, "legacyUploadErrorCount")}];
  [v6 setHomeDataBytesFetched:{objc_msgSend(v7, "bytesFetched")}];
  [v6 setHomeDataBytesPushed:{objc_msgSend(v7, "bytesPushed")}];
  [v6 setLegacyHomeDataBytesFetched:{objc_msgSend(v7, "legacyBytesFetched")}];
  [v6 setLegacyHomeDataBytesPushed:{objc_msgSend(v7, "legacyBytesPushed")}];
  [v6 setCloudSyncDecryptionFailedCount:{objc_msgSend(v7, "decryptionFailedCount")}];
  [v6 setCloudSyncLastDecryptionFailed:{objc_msgSend(v7, "lastDecryptionFailed")}];
  [v6 setCloudSyncMaximumDelayReached:{objc_msgSend(v7, "uploadMaximumDelayReached")}];
}

- (void)resetDataSource
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [objc_opt_class() managedEventCounterRequestGroups];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
        [v9 resetEventCountersForRequestGroup:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cloudSyncAnalysisResultForDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDCloudSyncAnalysisResultLogEvent);
  v6 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = [v6 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

  -[HMDCloudSyncAnalysisResultLogEvent setUploadMaximumDelayReached:](v5, "setUploadMaximumDelayReached:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadMaximumDelayReached" forDate:v4] != 0);
  v8 = [(HMDCloudSyncLogEventsAnalyzer *)self flagsManager];
  v26 = [v8 flagForName:@"HMDCloudSyncLogEventsAnalyzerLastDecryptionFailed" periodicity:1];

  -[HMDCloudSyncAnalysisResultLogEvent setLastDecryptionFailed:](v5, "setLastDecryptionFailed:", [v26 bitsForDate:v4 bitCount:1 outValidBitCount:0] != 0);
  -[HMDCloudSyncAnalysisResultLogEvent setIncomingPushCount:](v5, "setIncomingPushCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setFetchCount:](v5, "setFetchCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyFetchCount:](v5, "setLegacyFetchCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setFetchErrorCount:](v5, "setFetchErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchErrorCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyFetchErrorCount:](v5, "setLegacyFetchErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchErrorCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setUploadCount:](v5, "setUploadCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyUploadCount:](v5, "setLegacyUploadCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setUploadErrorCount:](v5, "setUploadErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyUploadErrorCount:](v5, "setLegacyUploadErrorCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setDecryptionFailedCount:](v5, "setDecryptionFailedCount:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerDecryptionFailedCount" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setBytesFetched:](v5, "setBytesFetched:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerHomeDataBytesFetched" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setBytesPushed:](v5, "setBytesPushed:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerHomeDataBytesPushed" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyBytesFetched:](v5, "setLegacyBytesFetched:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesFetched" forDate:v4]);
  -[HMDCloudSyncAnalysisResultLogEvent setLegacyBytesPushed:](v5, "setLegacyBytesPushed:", [v7 fetchEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesPushed" forDate:v4]);
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v11 = [v10 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadReasonRequestGroupKey"];

  v12 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v13 = [v12 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadNoPushReasonRequestGroupKey"];

  v14 = [v11 eventCountersForDate:v4];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__HMDCloudSyncLogEventsAnalyzer_cloudSyncAnalysisResultForDate___block_invoke;
  v27[3] = &unk_27972E0D0;
  v28 = v13;
  v29 = v4;
  v30 = v9;
  v15 = v9;
  v16 = v4;
  v25 = v13;
  [v14 enumerateKeysAndObjectsUsingBlock:v27];
  v17 = [v15 copy];
  [(HMDCloudSyncAnalysisResultLogEvent *)v5 setLegacyUploadReasonCountMap:v17];

  v18 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v19 = [v18 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorRequestGroupKey"];
  v20 = [v19 eventCountersForDate:v16];
  [(HMDCloudSyncAnalysisResultLogEvent *)v5 setUploadErrorCountMap:v20];

  v21 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v22 = [v21 counterGroupForName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorRequestGroupKey"];
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

- (void)handleRecordOperationLogEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isLegacy];
    v9 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v10 = [v7 size];
    if (v8)
    {
      v11 = @"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesPushed";
    }

    else
    {
      v11 = @"HMDCloudSyncLogEventsAnalyzerHomeDataBytesPushed";
    }

    [v9 incrementEventCounterForEventName:v11 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" withValue:v10];
  }

  v18 = v4;
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
    v14 = [v13 isLegacy];
    v15 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v16 = [v13 size];
    if (v14)
    {
      v17 = @"HMDCloudSyncLogEventsAnalyzerLegacyHomeDataBytesFetched";
    }

    else
    {
      v17 = @"HMDCloudSyncLogEventsAnalyzerHomeDataBytesFetched";
    }

    [v15 incrementEventCounterForEventName:v17 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" withValue:v16];
  }
}

- (void)handleDecryptionCompletedEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudSyncLogEventsAnalyzer *)self flagsManager];
  v7 = [v5 flagForName:@"HMDCloudSyncLogEventsAnalyzerLastDecryptionFailed" periodicity:1];

  LODWORD(v5) = [v4 didDecryptionFail];
  if (v5)
  {
    v6 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerDecryptionFailedCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    [v7 setCurrentBit];
  }

  else
  {
    [v7 clearCurrentBit];
  }
}

- (void)handleMaximumDelayLogEvent:(id)a3
{
  v3 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  [v3 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadMaximumDelayReached" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];
}

- (void)handleUploadReasonLogEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 saveReason];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138544386;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      v20 = 2048;
      v21 = [v4 legacyPushCount];
      v22 = 2048;
      v23 = [v4 homeZonePushCount];
      v24 = 2048;
      v25 = [v4 homeManagerPushCount];
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[HMDCloudSyncLogEventsAnalyzer] Received upload reason: %{public}@ Count for legacy: %ld homeZone: %ld homeManager: %ld", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [v4 legacyPushCount];
    v11 = v10;
    if (v10 < 1)
    {
      v11 = -v10;
      v12 = [(HMDCloudSyncLogEventsAnalyzer *)v7 eventCountersManager];
      v13 = [v4 saveReason];
      v14 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadNoPushReasonRequestGroupKey";
    }

    else
    {
      v12 = [(HMDCloudSyncLogEventsAnalyzer *)v7 eventCountersManager];
      v13 = [v4 saveReason];
      v14 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadReasonRequestGroupKey";
    }

    [v12 incrementEventCounterForEventName:v13 requestGroup:v14 withValue:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUploadLogEvent:(id)a3
{
  v20 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = v6;
  if (v5)
  {
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v8 = [v5 error];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [v9 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v10 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v5 error];
    v13 = [v12 domain];
    v14 = [v5 error];
    v15 = [v11 stringWithFormat:@"%@ %tu", v13, objc_msgSend(v14, "code")];
    v16 = @"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorRequestGroupKey";
  }

  else
  {
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v17 = [v20 error];

    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [v18 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v10 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    v19 = MEMORY[0x277CCACA8];
    v12 = [v20 error];
    v13 = [v12 domain];
    v14 = [v20 error];
    v15 = [v19 stringWithFormat:@"%@ %tu", v13, objc_msgSend(v14, "code")];
    v16 = @"HMDCloudSyncLogEventsAnalyzerUploadErrorRequestGroupKey";
  }

  [v10 incrementEventCounterForEventName:v15 requestGroup:v16];

LABEL_10:
}

- (void)handleFetchLogEvent:(id)a3
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
  v6 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  v7 = v6;
  if (v5)
  {
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v8 = [v5 error];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = @"HMDCloudSyncLogEventsAnalyzerLegacyFetchErrorCount";
  }

  else
  {
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

    v10 = [v12 error];

    if (!v10)
    {
      goto LABEL_10;
    }

    v9 = @"HMDCloudSyncLogEventsAnalyzerFetchErrorCount";
  }

  v11 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
  [v11 incrementEventCounterForEventName:v9 requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];

LABEL_10:
}

- (void)handleIncomingCloudPushLogEvent:(id)a3
{
  v4 = [a3 topic];
  v5 = [v4 isEqualToString:@"com.apple.icloud-container.com.apple.willowd"];

  if (v5)
  {
    v6 = [(HMDCloudSyncLogEventsAnalyzer *)self eventCountersManager];
    [v6 incrementEventCounterForEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey"];
  }
}

- (void)observeEvent:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v9 = v4;
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
    [(HMDCloudSyncLogEventsAnalyzer *)v6 handleIncomingCloudPushLogEvent:v11];
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
      [(HMDCloudSyncLogEventsAnalyzer *)v6 handleFetchLogEvent:v14];
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
        [(HMDCloudSyncLogEventsAnalyzer *)v6 handleUploadLogEvent:v17];
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
          [(HMDCloudSyncLogEventsAnalyzer *)v6 handleUploadReasonLogEvent:v20];
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
            [(HMDCloudSyncLogEventsAnalyzer *)v6 handleMaximumDelayLogEvent:v23];
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
              [(HMDCloudSyncLogEventsAnalyzer *)v6 handleDecryptionCompletedEvent:v26];
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
                [(HMDCloudSyncLogEventsAnalyzer *)v6 handleRecordOperationLogEvent:v29];
              }

              else
              {
                context = objc_autoreleasePoolPush();
                v35 = v6;
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

- (HMDCloudSyncLogEventsAnalyzer)initWithDataSource:(id)a3
{
  v21[10] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HMDCloudSyncLogEventsAnalyzer;
  v5 = [(HMDCloudSyncLogEventsAnalyzer *)&v20 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = v6;

    v8 = [v4 flagsManager];
    flagsManager = v5->_flagsManager;
    v5->_flagsManager = v8;

    v10 = [v4 logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v10;

    v12 = [v4 dateProvider];
    dateProvider = v5->_dateProvider;
    v5->_dateProvider = v12;

    v14 = [v4 deviceStateProvider];
    deviceStateProvider = v5->_deviceStateProvider;
    v5->_deviceStateProvider = v14;

    v16 = [v4 logEventDispatcher];
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
    [v16 addObserver:v5 forEventClasses:v17];

    [v4 addThresholdTrigger:@"cloudSyncPushCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerIncomingPushCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [v4 addThresholdTrigger:@"cloudSyncFetchCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [v4 addThresholdTrigger:@"cloudSyncFetchCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerFetchCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:100];
    [v4 addThresholdTrigger:@"cloudSyncUploadCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10];
    [v4 addThresholdTrigger:@"cloudSyncUploadCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerUploadCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10];
    [v4 addThresholdTrigger:@"cloudSyncUploadErrorCount" forEventName:@"HMDCloudSyncLogEventsAnalyzerLegacyUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10 uploadImmediately:1];
    [v4 addThresholdTrigger:@"cloudSyncUploadErrorCountV2" forEventName:@"HMDCloudSyncLogEventsAnalyzerUploadErrorCount" requestGroup:@"HMDCloudSyncLogEventsAnalyzerOperationsRequestGroupKey" atThreshold:10 uploadImmediately:1];
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