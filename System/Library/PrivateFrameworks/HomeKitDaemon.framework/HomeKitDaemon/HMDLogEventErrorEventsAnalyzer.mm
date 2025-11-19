@interface HMDLogEventErrorEventsAnalyzer
+ (NSArray)errorEventsRequestGroupKeys;
+ (id)eventCounterNameForError:(id)a3;
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventAnalyzerDataSource)dataSource;
- (HMDLogEventErrorEventsAnalyzer)initWithDataSource:(id)a3;
- (id)errorEventsAnalyzedSummaryForDate:(id)a3;
- (id)eventCounterRequestGroupNameForLogEvent:(id)a3;
- (void)_handleAdditionalErrorsForAccessoryPairingLogEvent:(id)a3 logEventUnderlyingErrorGroupName:(id)a4;
- (void)_handleAdditionalErrorsForCloudShareTrustManagerFailureLogEvent:(id)a3 logEventUnderlyingErrorGroupName:(id)a4;
- (void)observeEvent:(id)a3;
- (void)resetEventCountersForAllErrorEventRequestGroups;
- (void)submitAllFormattedErrorAggregationLogEvents;
- (void)submitErrorAggregationLogEventsForErrorEventGroup:(id)a3;
@end

@implementation HMDLogEventErrorEventsAnalyzer

- (HMDLogEventAnalyzerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)resetEventCountersForAllErrorEventRequestGroups
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [objc_opt_class() errorEventsRequestGroupKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        [v9 resetEventCountersForRequestGroup:v8];

        v10 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v8];
        [v10 resetEventCountersForRequestGroup:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitErrorAggregationLogEventsForErrorEventGroup:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v6 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
  v18 = v4;
  v7 = [v6 fetchEventCountersForRequestGroup:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 isEqualToString:@"Total Events"] & 1) == 0)
        {
          v14 = [(HMDLogEventErrorEventsAnalyzer *)v5 logEventSubmitter];
          v15 = [v8 objectForKeyedSubscript:v13];
          v16 = [HMDErrorAggregationLogEvent createErrorEventForRequestGroup:v18 errorString:v13 errorCount:v15];
          [v14 submitLogEvent:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitAllFormattedErrorAggregationLogEvents
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDLogEventErrorEventsAnalyzer *)self dataSource];
  v4 = [v3 cachedConfiguration];
  v5 = [v4 totalHomeCategoryBitMask];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [objc_opt_class() errorEventsRequestGroupKeys];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v6 = @"Any Error";
    v7 = *v26;
    v22 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v11 = [v10 fetchEventCounterForEventName:v6 requestGroup:v9];

        v12 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v13 = [v12 fetchEventCounterForEventName:@"Total Events" requestGroup:v9];

        if (v5 > 1 || v11)
        {
          v14 = [(HMDLogEventErrorEventsAnalyzer *)self logEventSubmitter];
          v15 = v5;
          v16 = v6;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
          v19 = [HMDErrorAggregationLogEvent createSummaryEventForRequestGroup:v9 totalErrorCount:v17 totalEventCount:v18];
          [v14 submitLogEvent:v19];

          [(HMDLogEventErrorEventsAnalyzer *)self submitErrorAggregationLogEventsForErrorEventGroup:v9];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v9];
          [(HMDLogEventErrorEventsAnalyzer *)self submitErrorAggregationLogEventsForErrorEventGroup:v20];

          v6 = v16;
          v5 = v15;
          v7 = v22;
        }

        ++v8;
      }

      while (v24 != v8);
      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  [(HMDLogEventErrorEventsAnalyzer *)self resetEventCountersForAllErrorEventRequestGroups];
  v21 = *MEMORY[0x277D85DE8];
}

- (id)errorEventsAnalyzedSummaryForDate:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [objc_opt_class() errorEventsRequestGroupKeys];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v19 = *v29;
    v3 = @"Aggregated error counts: \n";
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v6 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v7 = [v6 counterGroupForName:v5];

        v23 = v7;
        v8 = [v7 eventCountersForDate:v21];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            v12 = 0;
            v13 = v3;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v24 + 1) + 8 * v12);
              v15 = [v8 objectForKeyedSubscript:v14];
              v3 = [(__CFString *)v13 stringByAppendingFormat:@"   Error: %@ Event: %@ Count: %@ \n", v14, v5, v15];

              ++v12;
              v13 = v3;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v10);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v3 = @"Aggregated error counts: \n";
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_handleAdditionalErrorsForCloudShareTrustManagerFailureLogEvent:(id)a3 logEventUnderlyingErrorGroupName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 trustManagerErrorCode];

  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [v13 trustManagerErrorCode];
    v10 = [v8 errorWithDomain:@"HMDCloudShareTrustManagerErrorDomain" code:objc_msgSend(v9 userInfo:{"integerValue"), 0}];

    v11 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    v12 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v10];
    [v11 incrementEventCounterForEventName:v12 requestGroup:v6];
  }
}

- (void)_handleAdditionalErrorsForAccessoryPairingLogEvent:(id)a3 logEventUnderlyingErrorGroupName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 threadCommissioningError];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v13 threadCommissioningError];
    v10 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v9];
    v11 = [v8 stringWithFormat:@"Thread_%@", v10];

    v12 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [v12 incrementEventCounterForEventName:v11 requestGroup:v6];
  }
}

- (id)eventCounterRequestGroupNameForLogEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v5 = @"HMDCharacteristicReadWriteLogEvent";
    goto LABEL_62;
  }

  v6 = v3;
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v3 && (v7 & 1) != 0)
  {
    v5 = @"HAPPairVerifyLogEvent";
    goto LABEL_62;
  }

  v8 = v6;
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v3 && (v9 & 1) != 0)
  {
    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 isAddOperation];
    if (v13)
    {
      v5 = @"HMDAddAccessoryPairingLogEvent";
    }

    else
    {
      v5 = @"HMDRemoveAccessoryPairingLogEvent";
    }

    goto LABEL_62;
  }

  v14 = v8;
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v3 && (v15 & 1) != 0)
  {
    v5 = @"HMDLogEventErrorEventsAnalyzerCloudSyncLegacyUploadRequestGroup";
    goto LABEL_62;
  }

  v16 = v14;
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if (v3 && (v17 & 1) != 0)
  {
    v5 = @"HMDCloudShareTrustManagerFailureLogEvent";
    goto LABEL_62;
  }

  v18 = v16;
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v3 && (v19 & 1) != 0)
  {
    v5 = @"HMDDatabaseCKOperationCompletionEvent";
    goto LABEL_62;
  }

  v20 = v18;
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v3 && (v21 & 1) != 0)
  {
    v5 = @"HMDBackingStoreCKOperationZoneCompletionLogEvent";
    goto LABEL_62;
  }

  v22 = v20;
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v3 && (v23 & 1) != 0)
  {
    v5 = @"HMDCameraMetricsStreamLogEvent";
    goto LABEL_62;
  }

  v24 = v22;
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v3 && (v25 & 1) != 0)
  {
    v5 = @"HMDCameraMetricsSnapshotLogEvent";
    goto LABEL_62;
  }

  v26 = v24;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v3 && (v27 & 1) != 0)
  {
    v5 = @"HMDActionSetLogEvent";
    goto LABEL_62;
  }

  v28 = v26;
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();

  if (v3 && (v29 & 1) != 0)
  {
    v5 = @"HomeKitEventTriggerExecutionSessionLogEvent";
    goto LABEL_62;
  }

  v30 = v28;
  objc_opt_class();
  v31 = objc_opt_isKindOfClass();

  if (v3 && (v31 & 1) != 0)
  {
    v5 = @"HMDSiriCommandLogEvent";
    goto LABEL_62;
  }

  v32 = v30;
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (!v3 || (v33 & 1) == 0)
  {
    v37 = v32;
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    if (v3 && (v38 & 1) != 0)
    {
      v5 = @"HMDCameraRecordingUploadOperationLogEvent";
      goto LABEL_62;
    }

    v39 = v37;
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v3 && (v40 & 1) != 0)
    {
      v41 = [v39 error];
      if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:v41])
      {
LABEL_57:

LABEL_75:
        v5 = 0;
        goto LABEL_62;
      }

      v42 = [v39 error];
      if ([v42 code] == 14)
      {

        goto LABEL_57;
      }

      v54 = [v39 error];
      v55 = [v54 code];

      v52 = @"HMDCameraRecordingSessionCoordinationLogEvent";
      v53 = v55 == 1057;
    }

    else
    {
      v47 = v39;
      objc_opt_class();
      v48 = objc_opt_isKindOfClass();

      v5 = 0;
      if (!v3 || (v48 & 1) == 0)
      {
        goto LABEL_62;
      }

      v49 = [v47 error];
      if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:v49])
      {

        goto LABEL_75;
      }

      v50 = [v47 error];
      v51 = [v50 code];

      v52 = @"HMDCameraRecordingSessionLogEvent";
      v53 = v51 == 14;
    }

    if (v53)
    {
      v5 = 0;
    }

    else
    {
      v5 = v52;
    }

    goto LABEL_62;
  }

  v34 = v32;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  if ([v36 transportType] == 6)
  {
    v5 = @"txRapportRemoteMessageLogEvent";
  }

  else if ([v36 transportType] == 2)
  {
    v5 = @"txIDSRemoteMessageLogEvent";
  }

  else
  {
    v5 = 0;
  }

LABEL_62:
  v43 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;

  if (v45)
  {
    if ([v45 operationType] == 1)
    {
      v5 = @"CoreDataCloudKitImportEvent";
    }

    else if ([v45 operationType] == 2)
    {
      v5 = @"CoreDataCloudKitExportEvent";
    }
  }

  return v5;
}

- (void)observeEvent:(id)a3
{
  v29 = a3;
  v4 = [(HMDLogEventErrorEventsAnalyzer *)self eventCounterRequestGroupNameForLogEvent:?];
  if (v4)
  {
    v5 = [v29 error];

    v6 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    v7 = v6;
    if (v5)
    {
      [v6 incrementEventCounterForEventName:@"Any Error" requestGroup:@"All Event Groups"];

      v6 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
      v7 = v6;
      v8 = @"Any Error";
      v9 = v4;
    }

    else
    {
      v8 = @"No Error";
      v9 = @"All Event Groups";
    }

    [v6 incrementEventCounterForEventName:v8 requestGroup:v9];

    v10 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [v10 incrementEventCounterForEventName:@"Total Events" requestGroup:@"All Event Groups"];

    v11 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [v11 incrementEventCounterForEventName:@"Total Events" requestGroup:v4];

    v12 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    v13 = [v29 error];
    v14 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v13];
    [v12 incrementEventCounterForEventName:v14 requestGroup:v4];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v4];
    v16 = [v29 error];
    v17 = [v16 userInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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
      v21 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
      v22 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v20];
      [v21 incrementEventCounterForEventName:v22 requestGroup:v15];
    }

    v23 = v29;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      [(HMDLogEventErrorEventsAnalyzer *)self _handleAdditionalErrorsForAccessoryPairingLogEvent:v25 logEventUnderlyingErrorGroupName:v15];
    }

    else
    {
      v26 = v23;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (v28)
      {
        [(HMDLogEventErrorEventsAnalyzer *)self _handleAdditionalErrorsForCloudShareTrustManagerFailureLogEvent:v28 logEventUnderlyingErrorGroupName:v15];
      }
    }
  }
}

- (HMDLogEventErrorEventsAnalyzer)initWithDataSource:(id)a3
{
  v17[17] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMDLogEventErrorEventsAnalyzer;
  v5 = [(HMDLogEventErrorEventsAnalyzer *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = [v4 legacyCountersManager];
    eventCountersManager = v6->_eventCountersManager;
    v6->_eventCountersManager = v7;

    v9 = [v4 logEventSubmitter];
    logEventSubmitter = v6->_logEventSubmitter;
    v6->_logEventSubmitter = v9;

    v11 = [v4 dailyScheduler];
    [v11 registerDailyTaskRunner:v6];

    v12 = [v4 logEventDispatcher];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v17[5] = objc_opt_class();
    v17[6] = objc_opt_class();
    v17[7] = objc_opt_class();
    v17[8] = objc_opt_class();
    v17[9] = objc_opt_class();
    v17[10] = objc_opt_class();
    v17[11] = objc_opt_class();
    v17[12] = objc_opt_class();
    v17[13] = objc_opt_class();
    v17[14] = objc_opt_class();
    v17[15] = objc_opt_class();
    v17[16] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:17];
    [v12 addObserver:v6 forEventClasses:v13];

    [v4 addThresholdTrigger:@"pairingFailureCount" forEventName:@"Any Error" requestGroup:@"HMDAddAccessoryPairingLogEvent" atThreshold:3];
    [v4 addThresholdTrigger:@"cameraRecordingUploadErrorCount" forEventName:@"Any Error" requestGroup:@"HMDCameraRecordingUploadOperationLogEvent" atThreshold:1 uploadImmediately:1];
    [v4 addThresholdTrigger:@"cloudKitImportErrorCount" forEventName:@"Any Error" requestGroup:@"CoreDataCloudKitImportEvent" atThreshold:1];
    [v4 addThresholdTrigger:@"cloudKitExportErrorCount" forEventName:@"Any Error" requestGroup:@"CoreDataCloudKitExportEvent" atThreshold:1];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)managedEventCounterRequestGroups
{
  v2 = objc_opt_class();

  return [v2 errorEventsRequestGroupKeys];
}

+ (id)eventCounterNameForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v3 domain];
    if (v6)
    {
      v7 = [v4 domain];
    }

    else
    {
      v7 = @"<No Domain>";
    }

    v8 = [v5 stringWithFormat:@"%@ %ld", v7, objc_msgSend(v4, "code")];
    if (v6)
    {
    }
  }

  else
  {
    v8 = @"No Error";
  }

  return v8;
}

+ (NSArray)errorEventsRequestGroupKeys
{
  if (errorEventsRequestGroupKeys_onceToken != -1)
  {
    dispatch_once(&errorEventsRequestGroupKeys_onceToken, &__block_literal_global_282094);
  }

  v3 = errorEventsRequestGroupKeys_errorEventsRequestGroupKeys;

  return v3;
}

void __61__HMDLogEventErrorEventsAnalyzer_errorEventsRequestGroupKeys__block_invoke()
{
  v3[21] = *MEMORY[0x277D85DE8];
  v3[0] = @"HMDLogEventErrorEventsAnalyzerCloudSyncLegacyUploadRequestGroup";
  v3[1] = @"HMDCloudShareTrustManagerFailureLogEvent";
  v3[2] = @"HMDDatabaseCKOperationCompletionEvent";
  v3[3] = @"HMDBackingStoreCKOperationZoneCompletionLogEvent";
  v3[4] = @"HMDCameraRecordingUploadOperationLogEvent";
  v3[5] = @"HMDCameraMetricsStreamLogEvent";
  v3[6] = @"HMDCameraMetricsSnapshotLogEvent";
  v3[7] = @"HMDAddAccessoryPairingLogEvent";
  v3[8] = @"HMDRemoveAccessoryPairingLogEvent";
  v3[9] = @"HMDCharacteristicReadWriteLogEvent";
  v3[10] = @"HMDActionSetLogEvent";
  v3[11] = @"HomeKitEventTriggerExecutionSessionLogEvent";
  v3[12] = @"HMDSiriCommandLogEvent";
  v3[13] = @"HMDCameraRecordingSessionCoordinationLogEvent";
  v3[14] = @"HMDCameraRecordingSessionLogEvent";
  v3[15] = @"HAPPairVerifyLogEvent";
  v3[16] = @"CoreDataCloudKitImportEvent";
  v3[17] = @"CoreDataCloudKitExportEvent";
  v3[18] = @"txRapportRemoteMessageLogEvent";
  v3[19] = @"txIDSRemoteMessageLogEvent";
  v3[20] = @"All Event Groups";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:21];
  v1 = errorEventsRequestGroupKeys_errorEventsRequestGroupKeys;
  errorEventsRequestGroupKeys_errorEventsRequestGroupKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end