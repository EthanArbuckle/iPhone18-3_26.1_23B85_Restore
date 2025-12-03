@interface SGRTCLogging
+ (BOOL)_createEmptyFileAtPath:(id)path;
+ (double)round:(double)round toSignificantFigures:(int64_t)figures;
+ (id)_deepCopy:(id)copy;
+ (id)_deepMutableContainersCopy:(id)copy;
+ (id)aggregateSummaryBucketizedLaunchCountsForApps:(id)apps afterDate:(id)date;
+ (id)bucketizeIntegersForAggregateSummary:(id)summary;
+ (id)dateByAppendingDaysToCurrentDate:(double)date;
+ (id)defaultLogger;
+ (id)descriptionForOriginType:(unint64_t)type;
+ (id)launchCountsForApps:(id)apps afterDate:(id)date limit:(unint64_t)limit;
+ (id)launchCountsForApps:(id)apps afterDate:(id)date lowerBucket:(unint64_t)bucket bucketSize:(unint64_t)size bucketLimit:(unint64_t)limit;
+ (id)locationTypeForEntity:(id)entity;
+ (id)locationTypeForHandle:(id)handle latitude:(double)latitude longitude:(double)longitude airportCode:(id)code address:(id)address label:(id)label;
+ (id)locationTypeForRealtimeEvent:(id)event;
+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit;
+ (unint64_t)bucketizeIntegerForAggregateSummary:(unint64_t)summary;
+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate;
- (BOOL)incrementAndUpgradeInteractionSummaryForEventKey:(id)key interactionKey:(id)interactionKey parentEntity:(id)entity;
- (BOOL)removeInteractionsSummaryLogsFromLogs:(id)logs;
- (BOOL)resetExtractionLogs;
- (BOOL)resetInteractionsLogs;
- (BOOL)resetInteractionsSummaryLogs;
- (BOOL)resetLogs;
- (BOOL)storeToDisk;
- (SGRTCLogging)init;
- (SGRTCLogging)initWithCoder:(id)coder;
- (SGRTCLogging)initWithFilename:(id)filename;
- (double)storeAge;
- (id)_calendarUsageLast2Weeks;
- (id)_createRTCReporting;
- (id)_descriptionForActionType:(unsigned __int16)type;
- (id)_descriptionForBundleId:(id)id;
- (id)_descriptionForExtractionStatus:(unsigned __int16)status;
- (id)_descriptionForInterface:(unsigned __int16)interface;
- (id)_descriptionForMessageEventDissectorExtractionStatus:(unsigned __int16)status;
- (id)_interactionAttributesForEntity:(id)entity parentEntity:(id)parentEntity;
- (id)_interactionAttributesForRealtimeEvent:(id)event parentEntity:(id)entity;
- (id)_interactionAttributesForTags:(id)tags parentEntity:(id)entity;
- (id)_mapsUsageLast2Weeks;
- (id)allowlistedLogFromLog:(id)log;
- (id)assetVersionsForMLMessageEvent;
- (id)bucketizedRemindersCreatedAfterDate:(id)date endDate:(id)endDate;
- (id)cappedDeliveryEntityCountsCreatedBetweenStartDate:(id)date endDate:(id)endDate;
- (id)cappedDeliveryEntityCountsCreatedBetweenStartDate:(id)date endDate:(id)endDate store:(id)store;
- (id)descriptionForEntityType:(int64_t)type;
- (id)descriptionForSGRTCCategory:(unsigned __int16)category;
- (id)loggedExtractions;
- (id)loggedExtractionsDescription;
- (id)loggedInteractions;
- (id)loggedInteractionsDescription;
- (id)loggedInteractionsSummary;
- (id)loggedInteractionsSummaryDescription;
- (id)logsToSendWithInteractionSummaryRange:(_NSRange *)range;
- (id)trialIdsForStructuredEvent;
- (unint64_t)loggedExtractionsEventsCount;
- (void)_updateLocationTypeFromInteractionsSummaryForEventKey:(id)key locationType:(id)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enrichAggregateSummaryLog:(id)log;
- (void)enrichInteractionSummaryLog:(id)log;
- (void)enrichReminderInteractionSummaryLog:(id)log;
- (void)logAggregateSummaryForInteraction:(id)interaction;
- (void)logAndIncrementEventCountForDictionary:(id)dictionary;
- (void)logEventInteractionForEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (void)logEventInteractionForRealtimeEvent:(id)event parentEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (void)logMLMessageEventInteractionForEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (void)logNewInteractionSummaryWithDictionary:(id)dictionary;
- (void)logNewInteractionWithDictionary:(id)dictionary;
- (void)sendRTCLogsWithShouldContinueBlock:(id)block completion:(id)completion;
- (void)updateAndScheduleDiskWrite;
@end

@implementation SGRTCLogging

- (BOOL)storeToDisk
{
  v4 = os_transaction_create();
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Persisting some logs to disk!", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__SGRTCLogging_storeToDisk__block_invoke;
  v9[3] = &unk_27894D978;
  v9[5] = buf;
  v9[6] = a2;
  v9[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v11[24];
  _Block_object_dispose(buf, 8);

  return v7;
}

void __27__SGRTCLogging_storeToDisk__block_invoke(void *a1, void *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1[4] + 16) stringByAppendingPathExtension:@"tmp"];
  if (!v4)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a1[6] object:a1[4] file:@"SGRTCLogging.m" lineNumber:1232 description:{@"Invalid parameter not satisfying: %@", @"tmpPath"}];
  }

  v5 = v3[1];
  v6 = v3[2];
  v35[0] = @"loggedExtractions";
  v35[1] = @"loggedInteractions";
  v36[0] = v5;
  v36[1] = v6;
  v36[2] = v3[3];
  v7 = MEMORY[0x277D425D8];
  v35[2] = @"loggedInteractionsSummary";
  v35[3] = @"storeAge";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(v3 + 4)];
  v36[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v30 = 0;
  v10 = [v7 fileBackedDataWithPropertyList:v9 writtenToPath:v4 error:&v30];
  v11 = v30;

  *(*(a1[5] + 8) + 24) = v10 != 0;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1[4] + 16)];
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v29 = v11;
    v15 = [v12 replaceItemAtURL:v13 withItemAtURL:v14 backupItemName:0 options:0 resultingItemURL:0 error:&v29];
    v16 = v29;

    *(*(a1[5] + 8) + 24) = v15;
    if (*(*(a1[5] + 8) + 24))
    {
      v17 = [MEMORY[0x277D425D8] propertyListWithData:v10 error:0];
      if (!v17)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a1[6] object:a1[4] file:@"SGRTCLogging.m" lineNumber:1252 description:{@"Invalid parameter not satisfying: %@", @"plp"}];
      }

      v18 = [v17 objectForKeyedSubscript:@"loggedExtractions"];
      v19 = [v18 mutableCopy];
      v20 = v3[1];
      v3[1] = v19;

      v21 = [v17 objectForKeyedSubscript:@"loggedInteractions"];
      v22 = [v21 mutableCopy];
      v23 = v3[2];
      v3[2] = v22;

      goto LABEL_11;
    }
  }

  else
  {
    v16 = v11;
  }

  v24 = sgLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    v26 = @"NULL";
    if (v10)
    {
      v26 = @"nonnull";
    }

    *buf = 138412546;
    v32 = v26;
    v33 = 2112;
    v34 = v16;
    _os_log_fault_impl(&dword_231E60000, v24, OS_LOG_TYPE_FAULT, "Failure in [SGRTCLogging storeToDisk] (plpData is %@), error: %@", buf, 0x16u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
}

void __20__SGRTCLogging_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained storeToDisk];
}

- (id)assetVersionsForMLMessageEvent
{
  v2 = objc_opt_new();
  if (+[SGMessageEventDissector mobileAssetsEnabled])
  {
    v3 = +[SGAsset regionAsset];
    assetVersion = [v3 assetVersion];

    if (!assetVersion)
    {
      goto LABEL_16;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:assetVersion];
    [v2 setObject:v5 forKeyedSubscript:@"mobileAssetsVersion"];
  }

  else
  {
    v5 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    treatmentId = [v5 treatmentId];
    experimentId = [v5 experimentId];
    deploymentId = [v5 deploymentId];
    rolloutIdentifiers = [v5 rolloutIdentifiers];
    rolloutId = [rolloutIdentifiers rolloutId];

    rolloutIdentifiers2 = [v5 rolloutIdentifiers];
    rampId = [rolloutIdentifiers2 rampId];

    if ([treatmentId length])
    {
      [v2 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
    }

    if ([experimentId length])
    {
      [v2 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];
    }

    if (deploymentId)
    {
      [v2 setObject:deploymentId forKeyedSubscript:@"trialDeploymentId"];
    }

    if ([rolloutId length])
    {
      [v2 setObject:rolloutId forKeyedSubscript:@"trialRolloutId"];
    }

    if ([rampId length])
    {
      [v2 setObject:rampId forKeyedSubscript:@"trialRampId"];
    }
  }

LABEL_16:

  return v2;
}

- (id)trialIdsForStructuredEvent
{
  v2 = objc_opt_new();
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  treatmentId = [v3 treatmentId];
  experimentId = [v3 experimentId];
  deploymentId = [v3 deploymentId];
  if ([treatmentId length])
  {
    [v2 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
  }

  if ([experimentId length])
  {
    [v2 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];
  }

  if (deploymentId)
  {
    [v2 setObject:deploymentId forKeyedSubscript:@"trialDeploymentId"];
  }

  return v2;
}

- (id)_descriptionForBundleId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:*MEMORY[0x277D021C0]])
  {
    v4 = @"email";
  }

  else if ([idCopy isEqualToString:*MEMORY[0x277D021D0]])
  {
    v4 = @"sms";
  }

  else if ([idCopy isEqualToString:*MEMORY[0x277D021F8]])
  {
    v4 = @"webpage";
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)descriptionForEntityType:(int64_t)type
{
  if (type > 15)
  {
    if (type != 16)
    {
      if (type == 18)
      {
        return @"webpage";
      }

      return @"unknown";
    }

    return @"interaction";
  }

  else
  {
    if (type != 5)
    {
      if (type == 13)
      {
        return @"sms";
      }

      return @"unknown";
    }

    return @"email";
  }
}

- (id)descriptionForSGRTCCategory:(unsigned __int16)category
{
  if ((category - 5) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27894DB00[(category - 5)];
  }
}

- (id)_descriptionForActionType:(unsigned __int16)type
{
  if (type > 0xDu)
  {
    return @"unknown";
  }

  else
  {
    return off_27894DA90[type];
  }
}

- (id)_descriptionForInterface:(unsigned __int16)interface
{
  if (interface > 0x1Au)
  {
    return @"unknown";
  }

  else
  {
    return off_27894D9B8[interface];
  }
}

- (id)_descriptionForMessageEventDissectorExtractionStatus:(unsigned __int16)status
{
  v3 = @"unknown";
  if (status == 1)
  {
    v3 = @"fail";
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return @"event";
  }
}

- (id)_descriptionForExtractionStatus:(unsigned __int16)status
{
  if (status > 3u)
  {
    return @"unknown";
  }

  else
  {
    return off_27894D998[status];
  }
}

- (id)loggedInteractionsSummaryDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13877;
  v10 = __Block_byref_object_dispose__13878;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SGRTCLogging_loggedInteractionsSummaryDescription__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __52__SGRTCLogging_loggedInteractionsSummaryDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 24) description];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)loggedInteractionsDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13877;
  v10 = __Block_byref_object_dispose__13878;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SGRTCLogging_loggedInteractionsDescription__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__SGRTCLogging_loggedInteractionsDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) description];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)loggedExtractionsDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13877;
  v10 = __Block_byref_object_dispose__13878;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SGRTCLogging_loggedExtractionsDescription__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SGRTCLogging_loggedExtractionsDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) description];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (double)storeAge
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __24__SGRTCLogging_storeAge__block_invoke;
  v8[3] = &unk_27894D7A8;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v4 - v6;
}

double __24__SGRTCLogging_storeAge__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)removeInteractionsSummaryLogsFromLogs:(id)logs
{
  logsCopy = logs;
  if ([logsCopy count])
  {
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SGRTCLogging_removeInteractionsSummaryLogsFromLogs___block_invoke;
    v8[3] = &unk_27894D818;
    v9 = logsCopy;
    [(_PASLock *)lock runWithLockAcquired:v8];
    storeToDisk = [(SGRTCLogging *)self storeToDisk];
  }

  else
  {
    storeToDisk = 1;
  }

  return storeToDisk;
}

void __54__SGRTCLogging_removeInteractionsSummaryLogsFromLogs___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3[3] removeObject:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetInteractionsLogs
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_303];

  return [(SGRTCLogging *)self storeToDisk];
}

void __37__SGRTCLogging_resetInteractionsLogs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[2];
  v2[2] = v3;
}

- (BOOL)resetInteractionsSummaryLogs
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_301];

  return [(SGRTCLogging *)self storeToDisk];
}

void __44__SGRTCLogging_resetInteractionsSummaryLogs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[3];
  v2[3] = v3;
}

- (BOOL)resetExtractionLogs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SGRTCLogging_resetExtractionLogs__block_invoke;
  v6[3] = &unk_27894D760;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = *(v8 + 24) == 1 && [(SGRTCLogging *)self storeToDisk];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __35__SGRTCLogging_resetExtractionLogs__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  v4[4] = v5;
  v6 = objc_opt_new();
  v7 = v4[1];
  v4[1] = v6;

  v8 = *(a1 + 32);
  if (([objc_opt_class() _createEmptyFileAtPath:*(v8 + 16)] & 1) == 0)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Couldn't create the privacy-aware store for Suggestions.", v10, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)resetLogs
{
  if (![(SGRTCLogging *)self resetExtractionLogs]|| ![(SGRTCLogging *)self resetInteractionsLogs])
  {
    return 0;
  }

  return [(SGRTCLogging *)self resetInteractionsSummaryLogs];
}

- (void)sendRTCLogsWithShouldContinueBlock:(id)block completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "RTCLogging: Sending privacy-aware suggestions log over the network", buf, 2u);
  }

  [(SGRTCLogging *)self logAggregateSummaryForInteraction:@"rtcLogsSent"];
  v28 = 0uLL;
  v9 = [(SGRTCLogging *)self logsToSendWithInteractionSummaryRange:&v28];
  v10 = [v9 count] == 0;
  v11 = sgLogHandle();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "RTCLogging: No RTC logs to send this time. Skipping.", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v9 count];
      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "RTCLogging: Selected logs (%lu): %@", buf, 0x16u);
    }

    _createRTCReporting = [(SGRTCLogging *)self _createRTCReporting];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v30 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke;
    v17[3] = &unk_27894D950;
    v21 = completionCopy;
    v18 = v9;
    v22 = blockCopy;
    selfCopy = self;
    v14 = _createRTCReporting;
    v20 = v14;
    v23 = buf;
    v24 = v26;
    v25 = v28;
    [v14 startConfigurationWithCompletionHandler:v17];

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v59 = a2;
  if (v59)
  {
    v63 = objc_opt_new();
    v62 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = *(a1 + 32);
    v67 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v67)
    {
      v65 = 0;
      v66 = *v81;
      *&v3 = 138412290;
      v58 = v3;
LABEL_4:
      v4 = 0;
      while (1)
      {
        if (*v81 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v80 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        if (((*(*(a1 + 64) + 16))() & 1) == 0)
        {
          v53 = sgLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *v74 = 0;
            _os_log_impl(&dword_231E60000, v53, OS_LOG_TYPE_INFO, "RTCLogging: Aborting sending of logs as shouldContinueBlock returned NO", v74, 2u);
          }

          (*(*(a1 + 56) + 16))();
          objc_autoreleasePoolPop(context);

          goto LABEL_59;
        }

        *v74 = 0;
        v75 = v74;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__13877;
        v78 = __Block_byref_object_dispose__13878;
        v79 = v5;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v87 = 0x3032000000;
        v88 = __Block_byref_object_copy__13877;
        v89 = __Block_byref_object_dispose__13878;
        v90 = 0;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke_284;
        v73[3] = &unk_27894D928;
        v73[4] = &buf;
        v73[5] = v74;
        v6 = MEMORY[0x2383809F0](v73);
        _Block_object_dispose(&buf, 8);

        v7 = [*(v75 + 5) objectForKeyedSubscript:@"categoryLog"];
        v8 = [*(a1 + 40) descriptionForSGRTCCategory:5];
        v9 = [v7 isEqualToString:v8];

        if (v9)
        {
          v10 = 5;
          goto LABEL_28;
        }

        v11 = [*(a1 + 40) descriptionForSGRTCCategory:6];
        v12 = [v7 isEqualToString:v11];

        if (v12)
        {
          v10 = 6;
          goto LABEL_28;
        }

        v13 = [*(a1 + 40) descriptionForSGRTCCategory:7];
        v14 = [v7 isEqualToString:v13];

        v15 = *(a1 + 40);
        if (v14)
        {
          v16 = v6[2](v6);
          [v15 enrichInteractionSummaryLog:v16];

          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke_2;
          v72[3] = &unk_278951348;
          v72[4] = *(a1 + 40);
          v17 = [v63 resultNonnullWithBlock:v72];
          v18 = v6[2](v6);
          [v18 setObject:v17 forKeyedSubscript:@"usageMaps"];

          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke_3;
          v71[3] = &unk_278951370;
          v71[4] = *(a1 + 40);
          v19 = [v62 resultNonnullWithBlock:v71];
          v20 = v6[2](v6);
          [v20 setObject:v19 forKeyedSubscript:@"usageCalendar"];

          v10 = 7;
          goto LABEL_28;
        }

        v21 = [*(a1 + 40) descriptionForSGRTCCategory:8];
        v22 = [v7 isEqualToString:v21];

        if (v22)
        {
          v10 = 8;
        }

        else
        {
          v23 = [*(a1 + 40) descriptionForSGRTCCategory:9];
          v24 = [v7 isEqualToString:v23];

          if (v24)
          {
            v10 = 9;
          }

          else
          {
            v25 = [*(a1 + 40) descriptionForSGRTCCategory:10];
            v26 = [v7 isEqualToString:v25];

            v27 = *(a1 + 40);
            if (v26)
            {
              v28 = v6[2](v6);
              [v27 enrichReminderInteractionSummaryLog:v28];
              v10 = 10;
            }

            else
            {
              v29 = [*(a1 + 40) descriptionForSGRTCCategory:11];
              v30 = [v7 isEqualToString:v29];

              if (!v30)
              {
                v10 = 0xFFFFLL;
                goto LABEL_28;
              }

              v31 = *(a1 + 40);
              v28 = v6[2](v6);
              [v31 enrichAggregateSummaryLog:v28];
              v10 = 11;
            }
          }
        }

        v32 = +[SGAsset localeAsset];
        v33 = [v32 assetVersion];
        v34 = &unk_284749500;
        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = MEMORY[0x277CCABB0];
          v61 = +[SGAsset localeAsset];
          v60 = [v35 numberWithUnsignedInteger:{objc_msgSend(v61, "assetVersion")}];
          v34 = v60;
        }

        v36 = v6[2](v6);
        [v36 setObject:v34 forKeyedSubscript:@"localeAssetVersion"];

        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
        }

LABEL_28:
        v37 = [*(a1 + 40) allowlistedLogFromLog:{*(v75 + 5), v58}];
        v38 = *(a1 + 48);
        v70 = 0;
        v39 = [v38 sendMessageWithCategory:v10 type:0 payload:v37 error:&v70];
        v40 = v70;
        v41 = v40;
        if ((v39 & 1) == 0)
        {
          v43 = sgLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v58;
            *(&buf + 4) = v41;
            _os_log_error_impl(&dword_231E60000, v43, OS_LOG_TYPE_ERROR, "RTCLogging: Unable to send logs: %@", &buf, 0xCu);
          }

          goto LABEL_38;
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        if (v65)
        {
          v42 = v40;
        }

        else
        {
          v84 = @"storeAge";
          v44 = MEMORY[0x277CCABB0];
          v45 = *(a1 + 48);
          [*(a1 + 40) storeAge];
          v46 = [v44 numberWithDouble:?];
          v85 = v46;
          v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v69 = v41;
          v48 = [v45 sendMessageWithCategory:2 type:0 payload:v47 error:&v69];
          v42 = v69;

          if ((v48 & 1) == 0)
          {
            v43 = sgLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = v58;
              *(&buf + 4) = v42;
              _os_log_error_impl(&dword_231E60000, v43, OS_LOG_TYPE_ERROR, "RTCLogging: Unable to send logs for storeAge: %@", &buf, 0xCu);
            }

            v65 = 1;
            v41 = v42;
LABEL_38:

            v42 = v41;
            goto LABEL_39;
          }
        }

        v65 = 1;
LABEL_39:

        _Block_object_dispose(v74, 8);
        objc_autoreleasePoolPop(context);
        if (v67 == ++v4)
        {
          v49 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
          v67 = v49;
          if (v49)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v50 = objc_autoreleasePoolPush();
      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 48) flushMessages];
      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        [*(a1 + 40) resetExtractionLogs];
        [*(a1 + 40) resetInteractionsLogs];
        v51 = *(a1 + 40);
        v52 = [*(a1 + 32) subarrayWithRange:{*(a1 + 88), *(a1 + 96)}];
        [v51 removeInteractionsSummaryLogsFromLogs:v52];
      }

      else
      {
        v52 = sgLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_231E60000, v52, OS_LOG_TYPE_ERROR, "RTCLogging: Unable to flush logs", v74, 2u);
        }
      }

      objc_autoreleasePoolPop(v50);
      v56 = *(a1 + 56);
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v55 = *(*(*(a1 + 80) + 8) + 24);
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v55 = 0;
      v56 = *(a1 + 56);
    }

    (*(v56 + 16))(v56, v55 & 1, 0);
LABEL_59:
  }

  else
  {
    v54 = sgLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 0;
      _os_log_impl(&dword_231E60000, v54, OS_LOG_TYPE_DEFAULT, "RTCLogging: No RTC backends found, no logs will be sent at this time.", v74, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v57 = *MEMORY[0x277D85DE8];
}

id __62__SGRTCLogging_sendRTCLogsWithShouldContinueBlock_completion___block_invoke_284(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 32) + 8) + 40));
    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

- (id)_createRTCReporting
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:CFAbsoluteTimeGetCurrent()];
  v3 = +[SGAsset asset];
  assetVersion = [v3 assetVersion];

  v5 = *MEMORY[0x277D44030];
  v22[0] = &unk_2847494E8;
  v6 = *MEMORY[0x277D44040];
  v21[0] = v5;
  v21[1] = v6;
  if (assetVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = assetVersion;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v9 = *MEMORY[0x277D44080];
  v22[1] = v8;
  v22[2] = v2;
  v10 = *MEMORY[0x277D44010];
  v21[2] = v9;
  v21[3] = v10;
  v22[3] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D44098];
  v19[0] = *MEMORY[0x277D44090];
  v19[1] = v12;
  v13 = *MEMORY[0x277D02460];
  v20[0] = @"Suggestions";
  v20[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = objc_alloc(MEMORY[0x277D43FE0]);
  v16 = [v15 initWithSessionInfo:v11 userInfo:v14 frameworksToCheck:MEMORY[0x277CBEBF8]];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)logsToSendWithInteractionSummaryRange:(_NSRange *)range
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13877;
  v18 = __Block_byref_object_dispose__13878;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = "";
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SGRTCLogging_logsToSendWithInteractionSummaryRange___block_invoke;
  v7[3] = &unk_27894D900;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  if (range)
  {
    *range = v9[2];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);

  return v5;
}

void __54__SGRTCLogging_logsToSendWithInteractionSummaryRange___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24[1] mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v24[2])
  {
    v6 = v24[2];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v6];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [*(a1 + 32) descriptionForSGRTCCategory:7];
  v10 = [*(a1 + 32) descriptionForSGRTCCategory:10];
  v11 = [*(a1 + 32) descriptionForSGRTCCategory:11];
  v12 = [v8 initWithObjects:{v9, v10, v11, 0}];

  objc_autoreleasePoolPop(v7);
  v13 = [*(*(*(a1 + 40) + 8) + 40) count];
  v14 = *(*(a1 + 48) + 8);
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  if ([v24[3] count])
  {
    v15 = 0;
    do
    {
      v16 = [v24[3] objectAtIndexedSubscript:v15];
      v17 = [v16 objectForKeyedSubscript:@"categoryLog"];

      if ([v12 containsObject:v17])
      {
        v18 = objc_opt_new();
        v19 = [v24[3] objectAtIndexedSubscript:v15];
        v20 = [v19 objectForKeyedSubscript:@"expirationDate"];
        v21 = [v18 compare:v20];

        if (v21 == 1)
        {
          v22 = [v24[3] objectAtIndexedSubscript:v15];
          v23 = [SGRTCLogging _deepCopy:v22];

          if (v23)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v23];
            ++*(*(*(a1 + 48) + 8) + 40);
          }
        }
      }

      ++v15;
    }

    while (v15 < [v24[3] count]);
  }
}

- (id)allowlistedLogFromLog:(id)log
{
  logCopy = log;
  v4 = [logCopy mutableCopy];
  [v4 setObject:0 forKeyedSubscript:@"eventKey"];
  [v4 setObject:0 forKeyedSubscript:@"eventDuplicateKey"];
  [v4 setObject:0 forKeyedSubscript:@"expirationDate"];
  [v4 setObject:0 forKeyedSubscript:@"creationDate"];
  v5 = [v4 count];
  if (v5 == [logCopy count])
  {
    v6 = logCopy;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (void)logAggregateSummaryForInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (![SGRTCLogging incrementAndUpgradeInteractionSummaryForEventKey:"incrementAndUpgradeInteractionSummaryForEventKey:interactionKey:parentEntity:" interactionKey:@"aggregateSummary" parentEntity:?])
  {
    v4 = [objc_opt_class() dateByAppendingDaysToCurrentDate:28.0];
    v5 = objc_opt_new();
    v6 = [(SGRTCLogging *)self createInteractionSummaryForEventKey:@"aggregateSummary" expirationDate:v4 interactionKey:interactionCopy interactionAttributes:v5 rtcCategory:11];

    [(SGRTCLogging *)self logNewInteractionSummaryWithDictionary:v6];
  }
}

- (void)logEventInteractionForRealtimeEvent:(id)event parentEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  eventCopy = event;
  entityCopy = entity;
  interactionsWriteQueue = self->_interactionsWriteQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SGRTCLogging_logEventInteractionForRealtimeEvent_parentEntity_interface_actionType___block_invoke;
  v15[3] = &unk_278955778;
  v15[4] = self;
  v16 = eventCopy;
  v17 = entityCopy;
  interfaceCopy = interface;
  typeCopy = type;
  v13 = entityCopy;
  v14 = eventCopy;
  dispatch_async(interactionsWriteQueue, v15);
}

- (void)logMLMessageEventInteractionForEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  entityCopy = entity;
  interactionsWriteQueue = self->_interactionsWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SGRTCLogging_logMLMessageEventInteractionForEntity_interface_actionType___block_invoke;
  block[3] = &unk_27894D8D8;
  block[4] = self;
  v12 = entityCopy;
  interfaceCopy = interface;
  typeCopy = type;
  v10 = entityCopy;
  dispatch_async(interactionsWriteQueue, block);
}

- (void)logEventInteractionForEntity:(id)entity interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  entityCopy = entity;
  interactionsWriteQueue = self->_interactionsWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SGRTCLogging_logEventInteractionForEntity_interface_actionType___block_invoke;
  block[3] = &unk_27894D8D8;
  block[4] = self;
  v12 = entityCopy;
  interfaceCopy = interface;
  typeCopy = type;
  v10 = entityCopy;
  dispatch_async(interactionsWriteQueue, block);
}

- (void)logNewInteractionWithDictionary:(id)dictionary
{
  v13 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = dictionaryCopy;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "RTCLogging: log new interaction: %@", buf, 0xCu);
  }

  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SGRTCLogging_logNewInteractionWithDictionary___block_invoke;
  v9[3] = &unk_27894D818;
  v10 = dictionaryCopy;
  v7 = dictionaryCopy;
  [(_PASLock *)lock runWithLockAcquired:v9];
  [(SGRTCLogging *)self updateAndScheduleDiskWrite];

  v8 = *MEMORY[0x277D85DE8];
}

void __48__SGRTCLogging_logNewInteractionWithDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = [*(a1 + 32) copy];
  [v2 addObject:v3];
}

- (void)logNewInteractionSummaryWithDictionary:(id)dictionary
{
  v13 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = dictionaryCopy;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "RTCLogging: log new interaction summary: %@", buf, 0xCu);
  }

  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SGRTCLogging_logNewInteractionSummaryWithDictionary___block_invoke;
  v9[3] = &unk_27894D818;
  v10 = dictionaryCopy;
  v7 = dictionaryCopy;
  [(_PASLock *)lock runWithLockAcquired:v9];
  [(SGRTCLogging *)self updateAndScheduleDiskWrite];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logAndIncrementEventCountForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SGRTCLogging_logAndIncrementEventCountForDictionary___block_invoke;
  v7[3] = &unk_27894D818;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [(SGRTCLogging *)self updateAndScheduleDiskWrite];
}

void __55__SGRTCLogging_logAndIncrementEventCountForDictionary___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9[1] count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v9[1] objectAtIndexedSubscript:v3];
      v5 = [v4 objectForKeyedSubscript:@"eventsCount"];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:@"eventsCount"];
      if ([v4 isEqual:*(a1 + 32)])
      {
        break;
      }

      if (++v3 >= [v9[1] count])
      {
        goto LABEL_5;
      }
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + 1}];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"eventsCount"];

    v8 = [*(a1 + 32) copy];
    [v9[1] setObject:v8 atIndexedSubscript:v3];
  }

  else
  {
LABEL_5:
    [*(a1 + 32) setObject:&unk_2847494D0 forKeyedSubscript:@"eventsCount"];
    v6 = v9[1];
    v4 = [*(a1 + 32) copy];
    [v6 addObject:v4];
  }
}

- (void)_updateLocationTypeFromInteractionsSummaryForEventKey:(id)key locationType:(id)type
{
  keyCopy = key;
  typeCopy = type;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SGRTCLogging__updateLocationTypeFromInteractionsSummaryForEventKey_locationType___block_invoke;
  v11[3] = &unk_27894D8B0;
  v9 = keyCopy;
  v12 = v9;
  v10 = typeCopy;
  v13 = v10;
  v14 = &v15;
  [(_PASLock *)lock runWithLockAcquired:v11];
  if (*(v16 + 24) == 1)
  {
    [(SGRTCLogging *)self updateAndScheduleDiskWrite];
  }

  _Block_object_dispose(&v15, 8);
}

void __83__SGRTCLogging__updateLocationTypeFromInteractionsSummaryForEventKey_locationType___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  if ([v12[3] count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v12[3] objectAtIndexedSubscript:v3];
      v5 = [v4 objectForKeyedSubscript:@"eventKey"];
      v6 = [v5 isEqual:a1[4]];

      if (v6)
      {
        v7 = [v12[3] objectAtIndexedSubscript:v3];
        v8 = [v7 objectForKeyedSubscript:@"locationType"];
        v9 = [v8 isEqual:a1[5]];

        if ((v9 & 1) == 0)
        {
          break;
        }
      }

      if (++v3 >= [v12[3] count])
      {
        goto LABEL_8;
      }
    }

    v10 = a1[5];
    v11 = [v12[3] objectAtIndexedSubscript:v3];
    [v11 setObject:v10 forKeyedSubscript:@"locationType"];

    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_8:
}

- (BOOL)incrementAndUpgradeInteractionSummaryForEventKey:(id)key interactionKey:(id)interactionKey parentEntity:(id)entity
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  interactionKeyCopy = interactionKey;
  entityCopy = entity;
  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = interactionKeyCopy;
    *&buf[12] = 2112;
    *&buf[14] = keyCopy;
    _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "RTCLogging: log and increment interaction key: %@, for eventKey: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v28 = 0;
  lock = self->_lock;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__SGRTCLogging_incrementAndUpgradeInteractionSummaryForEventKey_interactionKey_parentEntity___block_invoke;
  v21[3] = &unk_27894D888;
  v13 = keyCopy;
  v22 = v13;
  v14 = interactionKeyCopy;
  v23 = v14;
  v15 = entityCopy;
  v24 = v15;
  selfCopy = self;
  v26 = buf;
  [(_PASLock *)lock runWithLockAcquired:v21];
  if (*(*&buf[8] + 24) == 1)
  {
    [(SGRTCLogging *)self updateAndScheduleDiskWrite];
  }

  else
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "RTCLogging: can't find eventKey in loggedInteractionsSummary dictionary", v20, 2u);
    }
  }

  v17 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __93__SGRTCLogging_incrementAndUpgradeInteractionSummaryForEventKey_interactionKey_parentEntity___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  if ([v18[3] count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v18[3] objectAtIndexedSubscript:v3];
      v5 = [v4 objectForKeyedSubscript:@"eventKey"];
      v6 = [v5 isEqual:*(a1 + 32)];

      if (v6)
      {
        break;
      }

      if (++v3 >= [v18[3] count])
      {
        goto LABEL_10;
      }
    }

    v7 = [v18[3] objectAtIndexedSubscript:v3];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "unsignedIntegerValue") + 1}];
    v10 = [v18[3] objectAtIndexedSubscript:v3];
    [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];

    if (*(a1 + 48))
    {
      v11 = [v18[3] objectAtIndexedSubscript:v3];
      v12 = [v11 objectForKeyedSubscript:@"documentType"];
      v13 = [v12 isEqual:@"unknown"];

      if (v13)
      {
        v14 = *(a1 + 56);
        v15 = [*(a1 + 48) duplicateKey];
        v16 = [v14 descriptionForEntityType:{objc_msgSend(v15, "entityType")}];
        v17 = [v18[3] objectAtIndexedSubscript:v3];
        [v17 setObject:v16 forKeyedSubscript:@"documentType"];
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_10:
}

- (id)_calendarUsageLast2Weeks
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SGRTCLogging__calendarUsageLast2Weeks__block_invoke;
  v11[3] = &unk_27894D860;
  v11[4] = &v12;
  [MEMORY[0x277CC5A40] sg_usingSharedStoreForReadingOnly:v11];
  v2 = v13[3];
  if (v2 >= 1.0)
  {
    v4 = 50.0;
    if (v2 < 50.0)
    {
      v4 = round(v2 + v2) * 0.5;
    }
  }

  else
  {
    [SGRTCLogging round:1 toSignificantFigures:?];
    v4 = v3;
  }

  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v13[3]];
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "RTCLogging: usageCalendar: %@, (%@ Calendar events found)", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __40__SGRTCLogging__calendarUsageLast2Weeks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_opt_new();
  [v3 eventsPerWeekAroundDate:v6];
  v5 = v4;

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (id)_mapsUsageLast2Weeks
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D021C8];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:-1209600.0];
  v6 = [v2 launchCountForBundleId:v3 afterDate:v5 limit:5];

  v7 = @"low";
  if (v6 > 4)
  {
    v7 = @"high";
  }

  if (v6 - 1 >= 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"medium";
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "RTCLogging: usageMaps: %@, (%@ Maps launch in past 2 weeks)", &v13, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)enrichInteractionSummaryLog:(id)log
{
  v19 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v4 = [logCopy objectForKeyedSubscript:@"creationDate"];
  if (v4)
  {
    v6 = *MEMORY[0x277D021C8];
    v16[0] = *MEMORY[0x277D021D0];
    v5 = v16[0];
    v16[1] = v6;
    v8 = *MEMORY[0x277D021C0];
    v17 = *MEMORY[0x277D021A0];
    v7 = v17;
    v18 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v10 = [objc_opt_class() launchCountsForApps:v9 afterDate:v4 lowerBucket:10 bucketSize:3 bucketLimit:50];
    v11 = [v10 objectForKeyedSubscript:v6];
    [logCopy setObject:v11 forKeyedSubscript:@"launchCountMaps"];

    v12 = [v10 objectForKeyedSubscript:v7];
    [logCopy setObject:v12 forKeyedSubscript:@"launchCountCalendar"];

    v13 = [v10 objectForKeyedSubscript:v5];
    [logCopy setObject:v13 forKeyedSubscript:@"launchCountMessages"];

    v14 = [v10 objectForKeyedSubscript:v8];
    [logCopy setObject:v14 forKeyedSubscript:@"launchCountMail"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)bucketizedRemindersCreatedAfterDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = [SGRemindersAdapter remindersCreatedBetweenStartDate:dateCopy endDate:endDateCopy];
  [endDateCopy timeIntervalSinceDate:dateCopy];
  v9 = v8;

  if (v7)
  {
    v10 = ceil(v7 / (v9 / 604800.0));
    if (v10 > 0.0 && v10 < 1.84467441e19)
    {
      v7 = v10;
      if (v10 >= 0xB)
      {
        v7 = [objc_opt_class() bucketizeInteger:v7 withBucketSize:10 limit:50];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = MEMORY[0x277CCABB0];

  return [v12 numberWithUnsignedInteger:v7];
}

- (id)cappedDeliveryEntityCountsCreatedBetweenStartDate:(id)date endDate:(id)endDate store:(id)store
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  storeCopy = store;
  v10 = objc_opt_new();
  v30 = storeCopy;
  v31 = dateCopy;
  v11 = [storeCopy entityKeyCountsForEntityType:24 startDate:dateCopy endDate:endDateCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        second = [*(*(&v36 + 1) + 8 * i) second];
        unsignedIntegerValue = [second unsignedIntegerValue];

        if (unsignedIntegerValue >= 0xA)
        {
          v18 = 10;
        }

        else
        {
          v18 = unsignedIntegerValue;
        }

        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGDelivery_ctNumSame_%lu", v18];
        [v10 addObject:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "countForObject:", v26)}];
        [v20 setObject:v27 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)cappedDeliveryEntityCountsCreatedBetweenStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = +[SGSqlEntityStore defaultStore];
  v9 = [(SGRTCLogging *)self cappedDeliveryEntityCountsCreatedBetweenStartDate:dateCopy endDate:endDateCopy store:v8];

  return v9;
}

- (void)enrichAggregateSummaryLog:(id)log
{
  v36[5] = *MEMORY[0x277D85DE8];
  logCopy = log;
  v5 = [logCopy objectForKeyedSubscript:@"creationDate"];
  if (v5)
  {
    v6 = *MEMORY[0x277D021D0];
    v35[0] = *MEMORY[0x277D021F0];
    v35[1] = v6;
    v36[0] = @"launchCountReminders";
    v36[1] = @"launchCountMessages";
    v7 = *MEMORY[0x277D021C0];
    v35[2] = *MEMORY[0x277D021A0];
    v35[3] = v7;
    v36[2] = @"launchCountCalendar";
    v36[3] = @"launchCountMail";
    v35[4] = *MEMORY[0x277D021C8];
    v36[4] = @"launchCountMaps";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
    v9 = objc_opt_class();
    allKeys = [v8 allKeys];
    v11 = [v9 aggregateSummaryBucketizedLaunchCountsForApps:allKeys afterDate:v5];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:{v17, v30}];
          v19 = [v12 objectForKeyedSubscript:v17];
          [logCopy setObject:v18 forKeyedSubscript:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    v20 = MEMORY[0x277CCABB0];
    v21 = objc_opt_class();
    v22 = objc_opt_new();
    v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "bucketizeIntegerForAggregateSummary:", +[SGRemindersAdapter remindersCreatedBetweenStartDate:endDate:](SGRemindersAdapter, "remindersCreatedBetweenStartDate:endDate:", v5, v22))}];
    [logCopy setObject:v23 forKeyedSubscript:@"remindersCountStats"];

    defaultLanguage = [MEMORY[0x277D02548] defaultLanguage];
    v25 = defaultLanguage;
    if (defaultLanguage)
    {
      v26 = defaultLanguage;
    }

    else
    {
      v26 = @"unknown";
    }

    [logCopy setObject:v26 forKeyedSubscript:{@"deviceLanguage", v30}];

    v27 = objc_opt_new();
    v28 = [(SGRTCLogging *)self cappedDeliveryEntityCountsCreatedBetweenStartDate:v5 endDate:v27];

    [logCopy addEntriesFromDictionary:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)enrichReminderInteractionSummaryLog:(id)log
{
  v15[1] = *MEMORY[0x277D85DE8];
  logCopy = log;
  v5 = [logCopy objectForKeyedSubscript:@"creationDate"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 dateByAddingTimeInterval:-1209600.0];
    v8 = objc_opt_class();
    v15[0] = *MEMORY[0x277D021D0];
    v9 = v15[0];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [v8 launchCountsForApps:v10 afterDate:v7 lowerBucket:1 bucketSize:10 bucketLimit:50];
    v12 = [v11 objectForKeyedSubscript:v9];
    [logCopy setObject:v12 forKeyedSubscript:@"launchCountMessages"];

    v13 = [(SGRTCLogging *)self bucketizedRemindersCreatedAfterDate:v7 endDate:v6];
    [logCopy setObject:v13 forKeyedSubscript:@"remindersCountStats"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_interactionAttributesForEntity:(id)entity parentEntity:(id)parentEntity
{
  parentEntityCopy = parentEntity;
  entityCopy = entity;
  tags = [entityCopy tags];
  v9 = [(SGRTCLogging *)self _interactionAttributesForTags:tags parentEntity:parentEntityCopy];

  v10 = [SGRTCLogging locationTypeForEntity:entityCopy];

  [v9 setObject:v10 forKeyedSubscript:@"locationType"];

  return v9;
}

- (id)_interactionAttributesForRealtimeEvent:(id)event parentEntity:(id)entity
{
  entityCopy = entity;
  eventCopy = event;
  event = [eventCopy event];
  tags = [event tags];
  v10 = sgMap();

  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v10];
  v12 = [(SGRTCLogging *)self _interactionAttributesForTags:v11 parentEntity:entityCopy];

  v13 = [SGRTCLogging locationTypeForRealtimeEvent:eventCopy];

  [v12 setObject:v13 forKeyedSubscript:@"locationType"];

  return v12;
}

- (id)_interactionAttributesForTags:(id)tags parentEntity:(id)entity
{
  v78 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  entityCopy = entity;
  duplicateKey = [entityCopy duplicateKey];
  selfCopy = self;
  v8 = -[SGRTCLogging descriptionForEntityType:](self, "descriptionForEntityType:", [duplicateKey entityType]);

  extractedFlight = [MEMORY[0x277D01FA0] extractedFlight];
  v10 = [tagsCopy containsObject:extractedFlight];

  if (v10)
  {
    v11 = @"flight";
  }

  else
  {
    extractedBus = [MEMORY[0x277D01FA0] extractedBus];
    v13 = [tagsCopy containsObject:extractedBus];

    if (v13)
    {
      v11 = @"bus";
    }

    else
    {
      extractedTrain = [MEMORY[0x277D01FA0] extractedTrain];
      v15 = [tagsCopy containsObject:extractedTrain];

      if (v15)
      {
        v11 = @"train";
      }

      else
      {
        extractedBoat = [MEMORY[0x277D01FA0] extractedBoat];
        v17 = [tagsCopy containsObject:extractedBoat];

        if (v17)
        {
          v11 = @"boat";
        }

        else
        {
          extractedHotel = [MEMORY[0x277D01FA0] extractedHotel];
          v19 = [tagsCopy containsObject:extractedHotel];

          if (v19)
          {
            v11 = @"hotel";
          }

          else
          {
            extractedCarRental = [MEMORY[0x277D01FA0] extractedCarRental];
            v21 = [tagsCopy containsObject:extractedCarRental];

            if (v21)
            {
              v11 = @"carRental";
            }

            else
            {
              extractedTicket = [MEMORY[0x277D01FA0] extractedTicket];
              v23 = [tagsCopy containsObject:extractedTicket];

              if (v23)
              {
                v11 = @"ticket";
              }

              else
              {
                extractedMovie = [MEMORY[0x277D01FA0] extractedMovie];
                v25 = [tagsCopy containsObject:extractedMovie];

                if (v25)
                {
                  v11 = @"movie";
                }

                else
                {
                  extractedFood = [MEMORY[0x277D01FA0] extractedFood];
                  v27 = [tagsCopy containsObject:extractedFood];

                  if (v27)
                  {
                    v11 = @"food";
                  }

                  else
                  {
                    extractedSocial = [MEMORY[0x277D01FA0] extractedSocial];
                    v29 = [tagsCopy containsObject:extractedSocial];

                    if (v29)
                    {
                      v11 = @"social";
                    }

                    else
                    {
                      extractedAppointment = [MEMORY[0x277D01FA0] extractedAppointment];
                      v31 = [tagsCopy containsObject:extractedAppointment];

                      v11 = @"unknown";
                      if (v31)
                      {
                        v11 = @"appointment";
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v64 = v11;
  v70 = v8;
  allDay = [MEMORY[0x277D01FA0] allDay];
  v63 = [tagsCopy containsObject:allDay];

  extractedEventCancellation = [MEMORY[0x277D01FA0] extractedEventCancellation];
  v62 = [tagsCopy containsObject:extractedEventCancellation];

  fromSync = [MEMORY[0x277D01FA0] fromSync];
  v61 = [tagsCopy containsObject:fromSync];

  allowGeocode = [MEMORY[0x277D02098] allowGeocode];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = tagsCopy;
  v35 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v72;
    v66 = *MEMORY[0x277D02448];
    v39 = @"unknown";
    v40 = @"unknown";
    v69 = @"unknown";
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v72 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v71 + 1) + 8 * i);
        if ([v42 isTemplateName])
        {
          value = [v42 value];

          v39 = value;
        }

        if ([v42 isDomain])
        {
          value2 = [v42 value];

          v40 = value2;
        }

        if ([v42 isEventMetadata])
        {
          eventMetadata = [v42 eventMetadata];
          v46 = eventMetadata;
          if (eventMetadata)
          {
            v47 = [eventMetadata objectForKeyedSubscript:v66];

            v48 = [(SGRTCLogging *)selfCopy _descriptionForBundleId:v47];

            v69 = v47;
            v70 = v48;
          }
        }

        fromInteraction = [MEMORY[0x277D01FA0] fromInteraction];
        v50 = [v42 isEqualToEntityTag:fromInteraction];

        v37 |= v50;
      }

      v36 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v36);
  }

  else
  {
    v37 = 0;
    v39 = @"unknown";
    v40 = @"unknown";
    v69 = @"unknown";
  }

  v75[0] = @"eventCategory";
  v75[1] = @"documentType";
  v76[0] = v64;
  v76[1] = v70;
  v75[2] = @"templateName";
  v75[3] = @"domain";
  v76[2] = v39;
  v76[3] = v40;
  v75[4] = @"isAllDay";
  v51 = [MEMORY[0x277CCABB0] numberWithBool:v63];
  v76[4] = v51;
  v75[5] = @"isCancelled";
  v52 = [MEMORY[0x277CCABB0] numberWithBool:v62];
  v76[5] = v52;
  v75[6] = @"isFromSync";
  v53 = [MEMORY[0x277CCABB0] numberWithBool:v61];
  v76[6] = v53;
  v75[7] = @"isSplashScreenAcknowledged";
  v54 = [MEMORY[0x277CCABB0] numberWithBool:allowGeocode];
  v76[7] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:8];
  v56 = [v55 mutableCopy];

  if (v37)
  {
    v57 = [(SGRTCLogging *)selfCopy descriptionForEntityType:16];
    [v56 setObject:v57 forKeyedSubscript:@"documentType"];

    if (v69)
    {
      if (([(__CFString *)v69 isEqualToString:@"unknown"]& 1) == 0)
      {
        [v56 setObject:v69 forKeyedSubscript:@"bundleID"];
      }
    }
  }

  v58 = *MEMORY[0x277D85DE8];

  return v56;
}

- (void)updateAndScheduleDiskWrite
{
  persistenceTimerSource = self->_persistenceTimerSource;
  v3 = dispatch_time(0, 10000000000);

  dispatch_source_set_timer(persistenceTimerSource, v3, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SGRTCLogging_encodeWithCoder___block_invoke;
  v7[3] = &unk_27894D818;
  v8 = coderCopy;
  v6 = coderCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __32__SGRTCLogging_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v5 = a2;
  [v3 encodeObject:v4 forKey:@"loggedExtractions"];
  [*(a1 + 32) encodeObject:*(v5 + 2) forKey:@"loggedInteractions"];
  [*(a1 + 32) encodeObject:*(v5 + 3) forKey:@"loggedInteractionsSummary"];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCABB0];
  v8 = v5[4];

  v9 = [v7 numberWithDouble:v8];
  [v6 encodeObject:v9 forKey:@"storeAge"];
}

- (SGRTCLogging)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(SGRTCLogging *)self init];
  if (v6)
  {
    context = objc_autoreleasePoolPush();
    v20 = a2;
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(context);
    lock = v6->_lock;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __30__SGRTCLogging_initWithCoder___block_invoke;
    v21[3] = &unk_27894D7F0;
    v22 = coderCopy;
    v23 = v15;
    v25 = v20;
    v24 = v6;
    v17 = v15;
    [(_PASLock *)lock runWithLockAcquired:v21];
  }

  return v6;
}

void __30__SGRTCLogging_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) decodeObjectOfClasses:*(a1 + 40) forKey:@"loggedExtractions"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = *(v3 + 1);
  *(v3 + 1) = v6;

  v8 = *(v3 + 1);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"[guardedData->_loggedExtractions isKindOfClass:NSMutableArray.class]"}];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = *(v3 + 1);
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"[loggedExtraction isKindOfClass:NSDictionary.class]"}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v11);
  }

  v16 = [*(a1 + 32) decodeObjectOfClasses:*(a1 + 40) forKey:@"loggedInteractions"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = *(v3 + 2);
  *(v3 + 2) = v18;

  v20 = *(v3 + 2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"[guardedData->_loggedInteractions isKindOfClass:NSMutableArray.class]"}];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = *(v3 + 2);
  v22 = [v21 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v52;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v51 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = [MEMORY[0x277CCA890] currentHandler];
          [v27 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"[loggedInteraction isKindOfClass:NSDictionary.class]"}];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v23);
  }

  v28 = [*(a1 + 32) decodeObjectOfClasses:*(a1 + 40) forKey:@"loggedInteractionsSummary"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = objc_opt_new();
  }

  v31 = *(v3 + 3);
  *(v3 + 3) = v30;

  v32 = *(v3 + 3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    [v46 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"[guardedData->_loggedInteractionsSummary isKindOfClass:NSMutableArray.class]"}];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = *(v3 + 3);
  v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v47 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = [MEMORY[0x277CCA890] currentHandler];
          [v39 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SGRTCLogging.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"[loggedInteractionSummary isKindOfClass:NSMutableDictionary.class]"}];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v35);
  }

  v40 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"storeAge"];
  [v40 doubleValue];
  *(v3 + 4) = v41;

  if (*(v3 + 4) == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *(v3 + 4) = v42;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (unint64_t)loggedExtractionsEventsCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SGRTCLogging_loggedExtractionsEventsCount__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__SGRTCLogging_loggedExtractionsEventsCount__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a2 + 8);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) objectForKeyedSubscript:{@"eventsCount", v10}];
        *(*(*(a1 + 32) + 8) + 24) += [v8 integerValue];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)loggedInteractionsSummary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13877;
  v11 = __Block_byref_object_dispose__13878;
  v12 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SGRTCLogging_loggedInteractionsSummary__block_invoke;
  v6[3] = &unk_27894D7A8;
  v6[4] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v3 = objc_autoreleasePoolPush();
  v4 = [v8[5] sortedArrayUsingComparator:&__block_literal_global_134];
  objc_autoreleasePoolPop(v3);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__SGRTCLogging_loggedInteractionsSummary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SGRTCLogging _deepCopy:*(a2 + 24)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __41__SGRTCLogging_loggedInteractionsSummary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"categoryLog"];
  v6 = [v4 objectForKeyedSubscript:@"categoryLog"];

  v7 = [v6 compare:v5];
  return v7;
}

- (id)loggedInteractions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13877;
  v10 = __Block_byref_object_dispose__13878;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SGRTCLogging_loggedInteractions__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__SGRTCLogging_loggedInteractions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SGRTCLogging _deepCopy:*(a2 + 16)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)loggedExtractions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13877;
  v10 = __Block_byref_object_dispose__13878;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SGRTCLogging_loggedExtractions__block_invoke;
  v5[3] = &unk_27894D7A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__SGRTCLogging_loggedExtractions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)dealloc
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGRTCLogging going away now", buf, 2u);
  }

  dispatch_source_cancel(self->_persistenceTimerSource);
  v4.receiver = self;
  v4.super_class = SGRTCLogging;
  [(SGRTCLogging *)&v4 dealloc];
}

- (SGRTCLogging)initWithFilename:(id)filename
{
  filenameCopy = filename;
  v6 = [(SGRTCLogging *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, filename);
  }

  return v7;
}

- (SGRTCLogging)init
{
  v22.receiver = self;
  v22.super_class = SGRTCLogging;
  v2 = [(SGRTCLogging *)&v22 init];
  v3 = v2;
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    v5 = objc_alloc(MEMORY[0x277D425F8]);
    v6 = objc_opt_new();
    v7 = [v5 initWithGuardedData:v6];
    lock = v3->_lock;
    v3->_lock = v7;

    [(_PASLock *)v3->_lock runWithLockAcquired:&__block_literal_global_125];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.suggestd.interactions-write-queue", v9);
    interactionsWriteQueue = v3->_interactionsWriteQueue;
    v3->_interactionsWriteQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_BACKGROUND, 0);
    v14 = dispatch_queue_create("rtc-persist", v13);

    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14);
    persistenceTimerSource = v3->_persistenceTimerSource;
    v3->_persistenceTimerSource = v15;

    objc_initWeak(&location, v3);
    v17 = v3->_persistenceTimerSource;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __20__SGRTCLogging_init__block_invoke_2;
    v19[3] = &unk_278955AC0;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v17, v19);
    dispatch_resume(v3->_persistenceTimerSource);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __20__SGRTCLogging_init__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = objc_opt_new();
  v3 = v9[1];
  v9[1] = v2;

  v4 = objc_opt_new();
  v5 = v9[2];
  v9[2] = v4;

  v6 = objc_opt_new();
  v7 = v9[3];
  v9[3] = v6;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9[4] = v8;
}

+ (id)descriptionForOriginType:(unint64_t)type
{
  if (type - 1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27894DB38[type - 1];
  }
}

+ (BOOL)_createEmptyFileAtPath:(id)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = *MEMORY[0x277CCA1B0];
  v10[0] = *MEMORY[0x277CCA1A0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager createFileAtPath:pathCopy contents:0 attributes:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)defaultLogger
{
  if (defaultLogger_onceToken != -1)
  {
    dispatch_once(&defaultLogger_onceToken, &__block_literal_global_14055);
  }

  v3 = defaultLogger_sharedLogger;

  return v3;
}

void __29__SGRTCLogging_defaultLogger__block_invoke()
{
  v0 = [SGPaths suggestionsDirectoryFile:@"privacyAwareLogging.ser"];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v1 fileExistsAtPath:v0])
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v2 attributesOfItemAtPath:v0 error:0];
    v4 = [v3 fileSize];

    if (v4)
    {
      *buf = 0;
      v24 = buf;
      v25 = 0x2020000000;
      v26 = 0;
      v5 = [MEMORY[0x277D425D8] dictionaryWithPath:v0 error:0];
      if (v5)
      {
        v6 = [[SGRTCLogging alloc] initWithFilename:v0];
        v7 = defaultLogger_sharedLogger;
        defaultLogger_sharedLogger = v6;

        v8 = *(defaultLogger_sharedLogger + 8);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __29__SGRTCLogging_defaultLogger__block_invoke_2;
        v20[3] = &unk_27894D760;
        v21 = v5;
        v22 = buf;
        [v8 runWithLockAcquired:v20];
      }

      if ((v24[24] & 1) == 0)
      {
        v9 = defaultLogger_sharedLogger;
        defaultLogger_sharedLogger = 0;

        v10 = sgLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to read stored logs using legacy fallback", v19, 2u);
        }

        v11 = objc_alloc(MEMORY[0x277CCAAC8]);
        v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v0 options:1 error:0];
        v13 = [v11 initForReadingFromData:v12 error:0];

        [v13 setDecodingFailurePolicy:0];
        v14 = [v13 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308] error:0];
        v15 = defaultLogger_sharedLogger;
        defaultLogger_sharedLogger = v14;

        if (defaultLogger_sharedLogger)
        {
          objc_storeStrong((defaultLogger_sharedLogger + 16), v0);
        }
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

  if (!defaultLogger_sharedLogger)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "New logging store", buf, 2u);
    }

    v17 = [[SGRTCLogging alloc] initWithFilename:v0];
    v18 = defaultLogger_sharedLogger;
    defaultLogger_sharedLogger = v17;
  }
}

void __29__SGRTCLogging_defaultLogger__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"loggedExtractions"];
  if ((__29__SGRTCLogging_defaultLogger__block_invoke_3(v3) & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"loggedInteractions"];
  if ((__29__SGRTCLogging_defaultLogger__block_invoke_3(v4) & 1) == 0)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"loggedInteractionsSummary"];
  if ((__29__SGRTCLogging_defaultLogger__block_invoke_3(v5) & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"storeAge"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_9:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"loggedExtractions"];
    v9 = [v8 mutableCopy];
    v10 = v19[1];
    v19[1] = v9;

    v11 = [*(a1 + 32) objectForKeyedSubscript:@"loggedInteractions"];
    v12 = [v11 mutableCopy];
    v13 = v19[2];
    v19[2] = v12;

    v14 = [*(a1 + 32) objectForKeyedSubscript:@"loggedInteractionsSummary"];
    v15 = [SGRTCLogging _deepMutableContainersCopy:v14];

    v16 = v19[3];
    v19[3] = v15;

    v17 = [*(a1 + 32) objectForKeyedSubscript:@"storeAge"];
    [v17 doubleValue];
    v19[4] = v18;
  }
}

uint64_t __29__SGRTCLogging_defaultLogger__block_invoke_3(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 count])
    {
      v3 = 0;
      do
      {
        v4 = objc_autoreleasePoolPush();
        v5 = [v2 objectAtIndexedSubscript:v3];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        objc_autoreleasePoolPop(v4);
        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        ++v3;
      }

      while (v3 < [v2 count]);
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)_deepMutableContainersCopy:(id)copy
{
  copyCopy = copy;
  v4 = objc_autoreleasePoolPush();
  DeepCopy = CFPropertyListCreateDeepCopy(0, copyCopy, 1uLL);
  objc_autoreleasePoolPop(v4);

  return DeepCopy;
}

+ (id)_deepCopy:(id)copy
{
  copyCopy = copy;
  v4 = objc_autoreleasePoolPush();
  DeepCopy = CFPropertyListCreateDeepCopy(0, copyCopy, 0);
  objc_autoreleasePoolPop(v4);

  return DeepCopy;
}

+ (id)dateByAppendingDaysToCurrentDate:(double)date
{
  v4 = objc_opt_new();
  v5 = [v4 dateByAddingTimeInterval:date * 86400.0];

  return v5;
}

+ (id)locationTypeForRealtimeEvent:(id)event
{
  event = [event event];
  locations = [event locations];

  if ([locations count])
  {
    v6 = [locations objectAtIndexedSubscript:0];
    handle = [v6 handle];
    [v6 latitude];
    v9 = v8;
    [v6 longitude];
    v11 = v10;
    airportCode = [v6 airportCode];
    address = [v6 address];
    label = [v6 label];
    v15 = [self locationTypeForHandle:handle latitude:airportCode longitude:address airportCode:label address:v9 label:v11];
  }

  else
  {
    v15 = @"unknown";
  }

  return v15;
}

+ (id)locationTypeForEntity:(id)entity
{
  locations = [entity locations];
  allObjects = [locations allObjects];

  if ([allObjects count])
  {
    v6 = [allObjects objectAtIndexedSubscript:0];
    handle = [v6 handle];
    [v6 latitude];
    v9 = v8;
    [v6 longitude];
    v11 = v10;
    airportCode = [v6 airportCode];
    address = [v6 address];
    label = [v6 label];
    v15 = [self locationTypeForHandle:handle latitude:airportCode longitude:address airportCode:label address:v9 label:v11];
  }

  else
  {
    v15 = @"unknown";
  }

  return v15;
}

+ (id)locationTypeForHandle:(id)handle latitude:(double)latitude longitude:(double)longitude airportCode:(id)code address:(id)address label:(id)label
{
  if (handle)
  {
    return @"geocoded";
  }

  if (latitude == 0.0 && longitude == 0.0)
  {
    v9 = @"unknown";
    if (label)
    {
      v9 = @"label";
    }

    v10 = @"address";
    if (label)
    {
      v11 = address == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v10 = @"addressWithLabel";
    }

    if (address)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v12 = @"coordinates";
    if (label)
    {
      v13 = address == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v12 = @"addressWithCoordinatesWithLabel";
    }

    if (code)
    {
      return @"airportCodeWithCoordinates";
    }

    else
    {
      return v12;
    }
  }
}

+ (id)launchCountsForApps:(id)apps afterDate:(id)date lowerBucket:(unint64_t)bucket bucketSize:(unint64_t)size bucketLimit:(unint64_t)limit
{
  v11 = [self launchCountsForApps:apps afterDate:date limit:limit];
  allKeys = [v11 allKeys];
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__SGRTCLogging_Helpers__launchCountsForApps_afterDate_lowerBucket_bucketSize_bucketLimit___block_invoke;
  v18[3] = &unk_27894E640;
  v19 = v11;
  bucketCopy = bucket;
  selfCopy = self;
  sizeCopy = size;
  limitCopy = limit;
  v14 = v11;
  v15 = [allKeys _pas_mappedArrayWithTransform:v18];

  v16 = [v13 initWithObjects:v15 forKeys:allKeys];

  return v16;
}

id __90__SGRTCLogging_Helpers__launchCountsForApps_afterDate_lowerBucket_bucketSize_bucketLimit___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 unsignedIntegerValue];
  if (v4 <= *(a1 + 40))
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "bucketizeInteger:withBucketSize:limit:", v4, *(a1 + 56), *(a1 + 64))}];
  }

  v6 = v5;

  return v6;
}

+ (id)launchCountsForApps:(id)apps afterDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  appsCopy = apps;
  v9 = objc_opt_new();
  v10 = [v9 launchCountsForBundleIds:appsCopy afterDate:dateCopy limit:limit];

  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SGRTCLogging_Helpers__launchCountsForApps_afterDate_limit___block_invoke;
  v16[3] = &unk_278954C78;
  v17 = v10;
  v12 = v10;
  v13 = [appsCopy _pas_mappedArrayWithTransform:v16];

  v14 = [v11 initWithObjects:v13 forKeys:appsCopy];

  return v14;
}

uint64_t __61__SGRTCLogging_Helpers__launchCountsForApps_afterDate_limit___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) countForObject:a2];

  return [v2 numberWithUnsignedInteger:v3];
}

+ (id)aggregateSummaryBucketizedLaunchCountsForApps:(id)apps afterDate:(id)date
{
  v5 = [self launchCountsForApps:apps afterDate:date limit:100];
  v6 = [self bucketizeIntegersForAggregateSummary:v5];

  return v6;
}

+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate
{
  v5 = MEMORY[0x277CBEA80];
  andDateCopy = andDate;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [v9 components:16 fromDate:dateCopy toDate:andDateCopy options:0];

  v11 = [v10 day];
  return v11;
}

+ (double)round:(double)round toSignificantFigures:(int64_t)figures
{
  result = 0.0;
  if (round != 0.0)
  {
    roundCopy = -round;
    if (round >= 0.0)
    {
      roundCopy = round;
    }

    v8 = log10(roundCopy);
    v9 = __exp10((figures - vcvtpd_s64_f64(v8)));
    return llround(v9 * round) / v9;
  }

  return result;
}

+ (id)bucketizeIntegersForAggregateSummary:(id)summary
{
  summaryCopy = summary;
  allKeys = [summaryCopy allKeys];
  v6 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62__SGRTCLogging_Helpers__bucketizeIntegersForAggregateSummary___block_invoke;
  v14 = &unk_27894E618;
  v15 = summaryCopy;
  selfCopy = self;
  v7 = summaryCopy;
  v8 = [allKeys _pas_mappedArrayWithTransform:&v11];

  v9 = [v6 initWithObjects:v8 forKeys:{allKeys, v11, v12, v13, v14}];

  return v9;
}

id __62__SGRTCLogging_Helpers__bucketizeIntegersForAggregateSummary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "bucketizeIntegerForAggregateSummary:", objc_msgSend(v4, "unsignedIntegerValue"))}];

  return v5;
}

+ (unint64_t)bucketizeIntegerForAggregateSummary:(unint64_t)summary
{
  if (summary >= 0xB)
  {
    return [self bucketizeInteger:? withBucketSize:? limit:?];
  }

  else
  {
    return summary;
  }
}

+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit
{
  if (!size)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRTCLogging+Helpers.m" lineNumber:26 description:@"bucketSize must be > 0"];
  }

  if (integer <= limit)
  {
    return (integer + size - 1) / size * size;
  }

  return limit;
}

@end