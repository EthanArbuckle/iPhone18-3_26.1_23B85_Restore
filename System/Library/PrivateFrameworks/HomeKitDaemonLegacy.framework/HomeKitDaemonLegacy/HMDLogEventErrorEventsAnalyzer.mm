@interface HMDLogEventErrorEventsAnalyzer
+ (NSArray)errorEventsRequestGroupKeys;
+ (id)eventCounterNameForError:(id)error;
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventAnalyzerDataSource)dataSource;
- (HMDLogEventErrorEventsAnalyzer)initWithDataSource:(id)source;
- (id)errorEventsAnalyzedSummaryForDate:(id)date;
- (id)eventCounterRequestGroupNameForLogEvent:(id)event;
- (void)_handleAdditionalErrorsForAccessoryPairingLogEvent:(id)event logEventUnderlyingErrorGroupName:(id)name;
- (void)_handleAdditionalErrorsForCloudShareTrustManagerFailureLogEvent:(id)event logEventUnderlyingErrorGroupName:(id)name;
- (void)observeEvent:(id)event;
- (void)resetEventCountersForAllErrorEventRequestGroups;
- (void)submitAllFormattedErrorAggregationLogEvents;
- (void)submitErrorAggregationLogEventsForErrorEventGroup:(id)group;
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
  errorEventsRequestGroupKeys = [objc_opt_class() errorEventsRequestGroupKeys];
  v4 = [errorEventsRequestGroupKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(errorEventsRequestGroupKeys);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        [eventCountersManager resetEventCountersForRequestGroup:v8];

        eventCountersManager2 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v8];
        [eventCountersManager2 resetEventCountersForRequestGroup:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [errorEventsRequestGroupKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitErrorAggregationLogEventsForErrorEventGroup:(id)group
{
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  selfCopy = self;
  eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
  v18 = groupCopy;
  v7 = [eventCountersManager fetchEventCountersForRequestGroup:groupCopy];

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
          logEventSubmitter = [(HMDLogEventErrorEventsAnalyzer *)selfCopy logEventSubmitter];
          v15 = [v8 objectForKeyedSubscript:v13];
          v16 = [HMDErrorAggregationLogEvent createErrorEventForRequestGroup:v18 errorString:v13 errorCount:v15];
          [logEventSubmitter submitLogEvent:v16];
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
  dataSource = [(HMDLogEventErrorEventsAnalyzer *)self dataSource];
  cachedConfiguration = [dataSource cachedConfiguration];
  totalHomeCategoryBitMask = [cachedConfiguration totalHomeCategoryBitMask];

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
        eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v11 = [eventCountersManager fetchEventCounterForEventName:v6 requestGroup:v9];

        eventCountersManager2 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v13 = [eventCountersManager2 fetchEventCounterForEventName:@"Total Events" requestGroup:v9];

        if (totalHomeCategoryBitMask > 1 || v11)
        {
          logEventSubmitter = [(HMDLogEventErrorEventsAnalyzer *)self logEventSubmitter];
          v15 = totalHomeCategoryBitMask;
          v16 = v6;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
          v19 = [HMDErrorAggregationLogEvent createSummaryEventForRequestGroup:v9 totalErrorCount:v17 totalEventCount:v18];
          [logEventSubmitter submitLogEvent:v19];

          [(HMDLogEventErrorEventsAnalyzer *)self submitErrorAggregationLogEventsForErrorEventGroup:v9];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v9];
          [(HMDLogEventErrorEventsAnalyzer *)self submitErrorAggregationLogEventsForErrorEventGroup:v20];

          v6 = v16;
          totalHomeCategoryBitMask = v15;
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

- (id)errorEventsAnalyzedSummaryForDate:(id)date
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
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
        eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
        v7 = [eventCountersManager counterGroupForName:v5];

        v23 = v7;
        v8 = [v7 eventCountersForDate:dateCopy];
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

- (void)_handleAdditionalErrorsForCloudShareTrustManagerFailureLogEvent:(id)event logEventUnderlyingErrorGroupName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  trustManagerErrorCode = [eventCopy trustManagerErrorCode];

  if (trustManagerErrorCode)
  {
    v8 = MEMORY[0x277CCA9B8];
    trustManagerErrorCode2 = [eventCopy trustManagerErrorCode];
    v10 = [v8 errorWithDomain:@"HMDCloudShareTrustManagerErrorDomain" code:objc_msgSend(trustManagerErrorCode2 userInfo:{"integerValue"), 0}];

    eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    v12 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v10];
    [eventCountersManager incrementEventCounterForEventName:v12 requestGroup:nameCopy];
  }
}

- (void)_handleAdditionalErrorsForAccessoryPairingLogEvent:(id)event logEventUnderlyingErrorGroupName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  threadCommissioningError = [eventCopy threadCommissioningError];

  if (threadCommissioningError)
  {
    v8 = MEMORY[0x277CCACA8];
    threadCommissioningError2 = [eventCopy threadCommissioningError];
    v10 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:threadCommissioningError2];
    v11 = [v8 stringWithFormat:@"Thread_%@", v10];

    eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:v11 requestGroup:nameCopy];
  }
}

- (id)eventCounterRequestGroupNameForLogEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (eventCopy && (isKindOfClass & 1) != 0)
  {
    v5 = @"HMDCharacteristicReadWriteLogEvent";
    goto LABEL_62;
  }

  v6 = eventCopy;
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (eventCopy && (v7 & 1) != 0)
  {
    v5 = @"HAPPairVerifyLogEvent";
    goto LABEL_62;
  }

  v8 = v6;
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (eventCopy && (v9 & 1) != 0)
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

    isAddOperation = [v12 isAddOperation];
    if (isAddOperation)
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

  if (eventCopy && (v15 & 1) != 0)
  {
    v5 = @"HMDLogEventErrorEventsAnalyzerCloudSyncLegacyUploadRequestGroup";
    goto LABEL_62;
  }

  v16 = v14;
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if (eventCopy && (v17 & 1) != 0)
  {
    v5 = @"HMDCloudShareTrustManagerFailureLogEvent";
    goto LABEL_62;
  }

  v18 = v16;
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (eventCopy && (v19 & 1) != 0)
  {
    v5 = @"HMDDatabaseCKOperationCompletionEvent";
    goto LABEL_62;
  }

  v20 = v18;
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (eventCopy && (v21 & 1) != 0)
  {
    v5 = @"HMDBackingStoreCKOperationZoneCompletionLogEvent";
    goto LABEL_62;
  }

  v22 = v20;
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (eventCopy && (v23 & 1) != 0)
  {
    v5 = @"HMDCameraMetricsStreamLogEvent";
    goto LABEL_62;
  }

  v24 = v22;
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (eventCopy && (v25 & 1) != 0)
  {
    v5 = @"HMDCameraMetricsSnapshotLogEvent";
    goto LABEL_62;
  }

  v26 = v24;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (eventCopy && (v27 & 1) != 0)
  {
    v5 = @"HMDActionSetLogEvent";
    goto LABEL_62;
  }

  v28 = v26;
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();

  if (eventCopy && (v29 & 1) != 0)
  {
    v5 = @"HomeKitEventTriggerExecutionSessionLogEvent";
    goto LABEL_62;
  }

  v30 = v28;
  objc_opt_class();
  v31 = objc_opt_isKindOfClass();

  if (eventCopy && (v31 & 1) != 0)
  {
    v5 = @"HMDSiriCommandLogEvent";
    goto LABEL_62;
  }

  v32 = v30;
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (!eventCopy || (v33 & 1) == 0)
  {
    v37 = v32;
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    if (eventCopy && (v38 & 1) != 0)
    {
      v5 = @"HMDCameraRecordingUploadOperationLogEvent";
      goto LABEL_62;
    }

    v39 = v37;
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (eventCopy && (v40 & 1) != 0)
    {
      error = [v39 error];
      if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:error])
      {
LABEL_57:

LABEL_67:
        v5 = 0;
        goto LABEL_62;
      }

      error2 = [v39 error];
      if ([error2 code] == 14)
      {

        goto LABEL_57;
      }

      error3 = [v39 error];
      code = [error3 code];

      v49 = @"HMDCameraRecordingSessionCoordinationLogEvent";
      v50 = code == 1057;
    }

    else
    {
      v44 = v39;
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();

      v5 = 0;
      if (!eventCopy || (v45 & 1) == 0)
      {
        goto LABEL_62;
      }

      error4 = [v44 error];
      if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:error4])
      {

        goto LABEL_67;
      }

      error5 = [v44 error];
      code2 = [error5 code];

      v49 = @"HMDCameraRecordingSessionLogEvent";
      v50 = code2 == 14;
    }

    if (v50)
    {
      v5 = 0;
    }

    else
    {
      v5 = v49;
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
  return v5;
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  v4 = [(HMDLogEventErrorEventsAnalyzer *)self eventCounterRequestGroupNameForLogEvent:?];
  if (v4)
  {
    error = [eventCopy error];

    eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    v7 = eventCountersManager;
    if (error)
    {
      [eventCountersManager incrementEventCounterForEventName:@"Any Error" requestGroup:@"All Event Groups"];

      eventCountersManager = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
      v7 = eventCountersManager;
      v8 = @"Any Error";
      v9 = v4;
    }

    else
    {
      v8 = @"No Error";
      v9 = @"All Event Groups";
    }

    [eventCountersManager incrementEventCounterForEventName:v8 requestGroup:v9];

    eventCountersManager2 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager2 incrementEventCounterForEventName:@"Total Events" requestGroup:@"All Event Groups"];

    eventCountersManager3 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager3 incrementEventCounterForEventName:@"Total Events" requestGroup:v4];

    eventCountersManager4 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
    error2 = [eventCopy error];
    v14 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:error2];
    [eventCountersManager4 incrementEventCounterForEventName:v14 requestGroup:v4];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_UnderlyingError", v4];
    error3 = [eventCopy error];
    userInfo = [error3 userInfo];
    v18 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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
      eventCountersManager5 = [(HMDLogEventErrorEventsAnalyzer *)self eventCountersManager];
      v22 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v20];
      [eventCountersManager5 incrementEventCounterForEventName:v22 requestGroup:v15];
    }

    v23 = eventCopy;
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

- (HMDLogEventErrorEventsAnalyzer)initWithDataSource:(id)source
{
  v17[16] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HMDLogEventErrorEventsAnalyzer;
  v5 = [(HMDLogEventErrorEventsAnalyzer *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    legacyCountersManager = [sourceCopy legacyCountersManager];
    eventCountersManager = v6->_eventCountersManager;
    v6->_eventCountersManager = legacyCountersManager;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v6->_logEventSubmitter;
    v6->_logEventSubmitter = logEventSubmitter;

    dailyScheduler = [sourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v6];

    logEventDispatcher = [sourceCopy logEventDispatcher];
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
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:16];
    [logEventDispatcher addObserver:v6 forEventClasses:v13];

    [sourceCopy addThresholdTrigger:@"pairingFailureCount" forEventName:@"Any Error" requestGroup:@"HMDAddAccessoryPairingLogEvent" atThreshold:3];
    [sourceCopy addThresholdTrigger:@"cameraRecordingUploadErrorCount" forEventName:@"Any Error" requestGroup:@"HMDCameraRecordingUploadOperationLogEvent" atThreshold:1 uploadImmediately:1];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)managedEventCounterRequestGroups
{
  v2 = objc_opt_class();

  return [v2 errorEventsRequestGroupKeys];
}

+ (id)eventCounterNameForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    domain = [errorCopy domain];
    if (domain)
    {
      domain2 = [v4 domain];
    }

    else
    {
      domain2 = @"<No Domain>";
    }

    v8 = [v5 stringWithFormat:@"%@ %ld", domain2, objc_msgSend(v4, "code")];
    if (domain)
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
    dispatch_once(&errorEventsRequestGroupKeys_onceToken, &__block_literal_global_192282);
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