@interface FPDConfigurationStore
+ (id)defaultStore;
+ (void)__test_only_reloadDefaultStore;
- (FPDConfigurationStore)init;
- (NSString)getTrialConfigurationState;
- (double)temporaryFileTrackingDelayForVariant:(id)a3;
- (id)loadTrialClient:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)loadFpfsConfigNamespace:(id)a3;
- (void)loadSpecDownloadNamespace:(id)a3;
- (void)refresh;
@end

@implementation FPDConfigurationStore

+ (id)defaultStore
{
  if (defaultStore_onceToken != -1)
  {
    +[FPDConfigurationStore defaultStore];
  }

  v3 = defaultStore;

  return v3;
}

void __37__FPDConfigurationStore_defaultStore__block_invoke()
{
  v0 = objc_alloc_init(FPDConfigurationStore);
  v1 = defaultStore;
  defaultStore = v0;
}

+ (void)__test_only_reloadDefaultStore
{
  v2 = objc_alloc_init(FPDConfigurationStore);
  v3 = defaultStore;
  defaultStore = v2;
}

- (FPDConfigurationStore)init
{
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = FPDConfigurationStore;
  v2 = [(FPDConfigurationStore *)&v26 init];
  if (v2)
  {
    v3 = time(0);
    v4 = [v2 loadTrialClient:1];
    *(v2 + 56) = v4 != 0;
    [v2 loadFpfsConfigNamespace:v4];
    [v2 loadSpecDownloadNamespace:v4];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = time(0);
      *buf = 134217984;
      v28 = v3 - v6;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Configuration store startup completed in %lu seconds", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
    v8 = [v7 integerForKey:@"ConfigurationStoreRefreshInterval"];
    v9 = v8 - 604801;
    v10 = 1000000000 * v8;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("FPDConfigurationStore refreshQueue", v11);
    v13 = *(v2 + 3);
    *(v2 + 3) = v12;

    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 3));
    if (v9 >= 0xFFFFFFFFFFF6D38FLL)
    {
      v15 = v10;
    }

    else
    {
      v15 = 86400000000000;
    }

    v16 = dispatch_time(0, v15);
    dispatch_source_set_timer(v14, v16, v15, 0x3B9ACA00uLL);
    dispatch_set_qos_class_fallback();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__FPDConfigurationStore_init__block_invoke;
    block[3] = &unk_1E83BE068;
    v17 = v2;
    v25 = v17;
    v18 = v14;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v18, v19);

    dispatch_activate(v18);
    v20 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = v17[4];
    v17[4] = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v2;
}

- (double)temporaryFileTrackingDelayForVariant:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_temporaryFileTrackingDelayPerVariant objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    defaultTemporaryFileTrackingDelay = v6;
  }

  else
  {
    defaultTemporaryFileTrackingDelay = self->_defaultTemporaryFileTrackingDelay;
  }

  return defaultTemporaryFileTrackingDelay;
}

- (id)loadTrialClient:(BOOL)a3
{
  v30 = a3;
  v49[2] = *MEMORY[0x1E69E9840];
  v35 = [MEMORY[0x1E69DB518] client];
  v49[0] = @"COREOS_FPFS_CONFIG";
  v49[1] = @"COREOS_FPFS_SPECULATIVE_DOWNLOADS";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v34 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v34)
  {
    v32 = *v37;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        v7 = [v35 rolloutIdentifiersWithNamespaceName:v5];
        v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        if (v7)
        {
          v9 = [v7 factorPackId];
          [v8 setObject:v9 forKeyedSubscript:@"factorPackId"];

          v10 = [v7 rolloutId];
          [v8 setObject:v10 forKeyedSubscript:@"rolloutId"];

          v11 = [v7 rampId];
          [v8 setObject:v11 forKeyedSubscript:@"rampId"];

          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v7 factorPackId];
            v14 = [v7 rolloutId];
            v15 = [v7 rampId];
            *buf = 138413058;
            v41 = v5;
            v42 = 2112;
            v43 = v13;
            v44 = 2112;
            v45 = v14;
            v46 = 2112;
            v47 = v15;
            _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] [Trial - %@] factor pack: %@, rollout: %@, ramp: %@", buf, 0x2Au);
          }
        }

        [v6 setObject:v8 forKeyedSubscript:@"rollout"];
        v16 = [v35 experimentIdentifiersWithNamespaceName:v5];
        v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        if (v16)
        {
          v18 = [v16 experimentId];
          [v17 setObject:v18 forKeyedSubscript:@"experimentId"];

          v19 = [v16 treatmentId];
          [v17 setObject:v19 forKeyedSubscript:@"treatmentId"];

          v20 = fp_current_or_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v16 experimentId];
            v22 = [v16 treatmentId];
            *buf = 138412802;
            v41 = v5;
            v42 = 2112;
            v43 = v21;
            v44 = 2112;
            v45 = v22;
            _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_INFO, "[INFO] [Trial - %@] experiment: %@, treatment: %@", buf, 0x20u);
          }
        }

        [v6 setObject:v17 forKeyedSubscript:@"experiment"];
        [v33 setObject:v6 forKeyedSubscript:v5];
      }

      v34 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v34);
  }

  v23 = self;
  objc_sync_enter(v23);
  v24 = [v33 copy];
  if (v30)
  {
    v25 = 40;
  }

  else
  {
    v25 = 48;
  }

  v26 = *(&v23->super.isa + v25);
  *(&v23->super.isa + v25) = v24;

  objc_sync_exit(v23);
  v27 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)loadFpfsConfigNamespace:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_trialTestFactor = fp_configuration_store_int_check(v4, @"testFactor", @"COREOS_FPFS_CONFIG", 1, 1, 0x7FFFFFFF);
  self->_hardConcurrentOperationLimit = fp_configuration_store_int_check(v4, @"hardConcurrentOperationLimit", @"COREOS_FPFS_CONFIG", 128, 1, 0x7FFFFFFF);
  self->_softConcurrentOperationLimit = fp_configuration_store_int_check(v4, @"softConcurrentOperationLimit", @"COREOS_FPFS_CONFIG", 32, 1, 0x7FFFFFFF);
  self->_hardConcurrentContentUpdateLimit = fp_configuration_store_int_check(v4, @"hardConcurrentContentUpdateLimit", @"COREOS_FPFS_CONFIG", 32, 1, 0x7FFFFFFF);
  self->_softConcurrentContentUpdateLimit = fp_configuration_store_int_check(v4, @"softConcurrentContentUpdateLimit", @"COREOS_FPFS_CONFIG", 16, 1, 0x7FFFFFFF);
  self->_hardConcurrentMetadataOnlyUpdateLimit = fp_configuration_store_int_check(v4, @"hardConcurrentMetadataOnlyUpdateLimit", @"COREOS_FPFS_CONFIG", 32, 1, 0x7FFFFFFF);
  self->_softConcurrentMetadataOnlyUpdateLimit = fp_configuration_store_int_check(v4, @"softConcurrentMetadataOnlyUpdateLimit", @"COREOS_FPFS_CONFIG", 16, 1, 0x7FFFFFFF);
  self->_hardConcurrentProvideFileLimit = fp_configuration_store_int_check(v4, @"hardConcurrentProvideFileLimit", @"COREOS_FPFS_CONFIG", 32, 1, 0x7FFFFFFF);
  self->_softConcurrentProvideFileLimit = fp_configuration_store_int_check(v4, @"softConcurrentProvideFileLimit", @"COREOS_FPFS_CONFIG", 16, 1, 0x7FFFFFFF);
  v5 = [v4 levelForFactor:@"userExtensionPackageAllowlist" withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v6 = [v5 stringValue];
  v7 = [v6 componentsSeparatedByString:@""];;
  v8 = v7;
  v9 = *MEMORY[0x1E6967530];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *MEMORY[0x1E6967530];
  }

  objc_storeStrong(&self->_userPackageExtensions, v10);

  self->_hasUpcallExecutionTimeLimits = fp_configuration_store_BOOL_check(v4, @"hasUpcallExecutionTimeLimits", 1);
  self->_upcallExecutionTimeLimitBase = fp_configuration_store_double_check(v4, @"upcallExecutionTimeLimitBase", 180.0, 0.0, 86400.0);
  self->_upcallExecutionTimeLimitPerKiloByte = fp_configuration_store_double_check(v4, @"upcallExecutionTimeLimitPerKiloByte", 0.005, 0.0, 3600.0);
  self->_upcallExcutionTimeLimitStaleProgress = fp_configuration_store_double_check(v4, @"upcallExcutionTimeLimitStaleProgress", 600.0, 0.0, 86400.0);
  self->_upcallExcutionTimeLimitProgressCancellationGracePeriod = fp_configuration_store_double_check(v4, @"upcallExcutionTimeLimitProgressCancellationGracePeriod", 15.0, 0.0, 3600.0);
  self->_errorGenerationUpdateSeconds = fp_configuration_store_int_check(v4, @"errorGenerationUpdateSeconds", @"COREOS_FPFS_CONFIG", 30, 1, 600);
  self->_lowPrioritySignalProviderChangesIntervalSeconds = fp_configuration_store_int_check(v4, @"lowPrioritySignalProviderChangesIntervalSeconds", @"COREOS_FPFS_CONFIG", 2, 1, 60);
  self->_vfsDirectoryListerLimit = fp_configuration_store_int_check(v4, @"vfsDirectoryListerLimit", @"COREOS_FPFS_CONFIG", 200, 1, 1000);
  self->_maxFSEventQueueSize = fp_configuration_store_int_check(v4, @"maxFSEventQueueSize", @"COREOS_FPFS_CONFIG", 1024, 128, 10240);
  self->_fseventProcessBatchSize = fp_configuration_store_int_check(v4, @"fseventProcessBatchSize", @"COREOS_FPFS_CONFIG", 64, 8, 256);
  self->_fseventsAggregationDelay = fp_configuration_store_double_check(v4, @"fseventsAggregationDelay", 0.2, 0.0, 3600.0);
  self->_maxLookupDepth = fp_configuration_store_int_check(v4, @"maxLookupDepth", @"COREOS_FPFS_CONFIG", 5, 1, 9);
  self->_partialReimportHierarchyLimit = fp_configuration_store_int_check(v4, @"partialReimportHierarchyLimit", @"COREOS_FPFS_CONFIG", 1000, 1, 10000000);
  self->_sqlDatabaseFlushIntervalMilliseconds = fp_configuration_store_int_check(v4, @"sqlDatabaseFlushIntervalMilliseconds", @"COREOS_FPFS_CONFIG", 100, 10, 1000);
  self->_sqlDatabaseVacuumBatchSize = fp_configuration_store_int_check(v4, @"sqlDatabaseVacuumBatchSize", @"COREOS_FPFS_CONFIG", 10485760, 0x100000, 104857600);
  self->_sqlDatabaseBatchDelay = fp_configuration_store_double_check(v4, @"sqlDatabaseBatchDelay", 0.5, 0.05, 5.0);
  self->_sqlDatabaseBatchChangeCount = fp_configuration_store_int_check(v4, @"sqlDatabaseBatchChangeCount", @"COREOS_FPFS_CONFIG", 100000, 10000, 1000000);
  self->_sqlDatabaseOnNextDurableFlushTriggerThreshold = fp_configuration_store_int_check(v4, @"sqlDatabaseOnNextDurableFlushTriggerThreshold", @"COREOS_FPFS_CONFIG", 220, 100, 800);
  self->_sqlDatabaseStatementCacheMaxCount = fp_configuration_store_int_check(v4, @"sqlDatabaseStatementCacheMaxCount", @"COREOS_FPFS_CONFIG", 300, 10, 0x7FFFFFFF);
  self->_sqlDatabaseStatementWarnTime = fp_configuration_store_int_check(v4, @"sqlDatabaseStatementWarnTime", @"COREOS_FPFS_CONFIG", 100000, 0, 0x7FFFFFFF);
  self->_sqlDatabaseBusyHandlerRetries = fp_configuration_store_int_check(v4, @"sqlDatabaseBusyHandlerRetries", @"COREOS_FPFS_CONFIG", 10, -1, 3600);
  self->_pendingSetMaxItemCount = fp_configuration_store_int_check(v4, @"pendingSetMaxItemCount", @"COREOS_FPFS_CONFIG", 1000, 2, 0x7FFFFFFF);
  self->_pendingSetRefreshInterval = fp_configuration_store_double_check(v4, @"pendingSetRefreshInterval", 1.0, 1.0, 86400.0);
  self->_pendingSetRegatherThreshold = fp_configuration_store_int_check(v4, @"pendingSetRegatherThreshold", @"COREOS_FPFS_CONFIG", self->_pendingSetMaxItemCount / 2, self->_pendingSetMaxItemCount / 2, self->_pendingSetMaxItemCount);
  self->_perfTelemetrySubSamplingPercentage = fp_configuration_store_int_check(v4, @"perfTelemetrySubSamplingPercentage", @"COREOS_FPFS_CONFIG", 80, 0, 100);
  v11 = [v4 levelForFactor:@"dynamicErrorSampleRatePerProvider" withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v12 = [v11 stringValue];
  v13 = [v12 componentsSeparatedByString:@""];;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &unk_1F4C62898;
  }

  objc_storeStrong(&self->_dynamicErrorSampleRatePerProvider, v15);

  self->_maxFPCKDatabaseChecks = fp_configuration_store_int_check(v4, @"maxFPCKDatabaseChecks", @"COREOS_FPFS_CONFIG", 60000, 0, 0x7FFFFFFF);
  self->_maxFPCKDatabaseChecksDiagnostic = fp_configuration_store_int_check(v4, @"maxFPCKDatabaseChecksDiagnostic", @"COREOS_FPFS_CONFIG", 2000, 0, 0x7FFFFFFF);
  self->_avoidNilErrorItemsForDetailedPayload = fp_configuration_store_BOOL_check(v4, @"avoidNilErrorItemsForDetailedPayload", 0);
  self->_hangingDownloadCancellationPromptEnabled = 0;
  self->_minimumDiskSpaceRequiredToBeGreedy = fp_configuration_store_int64_check(v4, @"diskSpaceMinimumRequiredToBeGreedy_ios", @"COREOS_FPFS_CONFIG", 0x80000000, 1, 0x7FFFFFFFFFFFFFFFLL);
  self->_relativeDiskSpaceRequiredToBeGreedy = fp_configuration_store_double_check(v4, @"diskSpaceRequiredToBeGreedyRelative_ios", 0.1, 0.0, 1.0);
  self->_diskSpaceRequiredToReturnToGreedyState = fp_configuration_store_int64_check(v4, @"diskSpaceRequiredToReturnToGreedyState_ios", @"COREOS_FPFS_CONFIG", 0x200000000, 1, 0x7FFFFFFFFFFFFFFFLL);
  self->_relativeDiskSpaceRequiredToReturnToGreedyState = fp_configuration_store_double_check(v4, @"diskSpaceRequiredToReturnToGreedyStateRelative_ios", 0.15, 0.0, 1.0);
  self->_diskSpaceCheckInterval = fp_configuration_store_int_check(v4, @"diskSpaceCheckInterval", @"COREOS_FPFS_CONFIG", 30, 0, 0x7FFFFFFF);
  self->_minTimeBetweenSpeculativeDownloadsPurgeSession = fp_configuration_store_int_check(v4, @"minTimeBetweenSpeculativeDownloadsPurgeSession_ios", @"COREOS_FPFS_CONFIG", 1200, 0, 0x7FFFFFFF);
  self->_minTimeToPreventDownloadsAfterReturningToGreedyState = fp_configuration_store_int_check(v4, @"minTimeToPreventDownloadsAfterReturningToGreedyState_ios", @"COREOS_FPFS_CONFIG", 86400, 0, 0x7FFFFFFF);
  self->_useCacheDeleteWhenReachingLowerBound = fp_configuration_store_BOOL_check(v4, @"useCacheDeleteWhenReachingLowerBound", 0);
  v48 = self;
  self->_timeForMarkingAnItemOnTheMacAsIndexed = fp_configuration_store_int_check(v4, @"timeForMarkingAnItemOnTheMacAsIndexed", @"COREOS_FPFS_CONFIG", 86400, 0, 0x7FFFFFFF);
  v16 = v4;
  v49 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = [&unk_1F4C628B0 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v52;
    v20 = @"temporaryFileTrackingDelay.%@";
    v21 = 0x1E696A000uLL;
    v22 = @"COREOS_FPFS_CONFIG";
    do
    {
      v23 = 0;
      v50 = v18;
      do
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(&unk_1F4C628B0);
        }

        v24 = *(*(&v51 + 1) + 8 * v23);
        v25 = [*(v21 + 3776) stringWithFormat:v20, v24];
        v26 = [v16 levelForFactor:v25 withNamespaceName:v22];
        v27 = v26;
        if (v26 && [v26 levelOneOfCase] == 15)
        {
          v28 = v19;
          v29 = v22;
          v30 = v20;
          v31 = v21;
          v32 = v16;
          [v27 doubleValue];
          v34 = v33;
          v35 = 1.0;
          if (v34 > 1.0)
          {
            v35 = v34;
            if (v34 >= 86400.0)
            {
              v35 = 86400.0;
            }
          }

          v36 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          [(NSMutableDictionary *)v49 setObject:v36 forKeyedSubscript:v24];

          v16 = v32;
          v21 = v31;
          v20 = v30;
          v22 = v29;
          v19 = v28;
          v18 = v50;
        }

        ++v23;
      }

      while (v18 != v23);
      v18 = [&unk_1F4C628B0 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v18);
  }

  v37 = v16;
  temporaryFileTrackingDelayPerVariant = v48->_temporaryFileTrackingDelayPerVariant;
  v48->_temporaryFileTrackingDelayPerVariant = v49;
  v39 = v49;

  v48->_defaultTemporaryFileTrackingDelay = fp_configuration_store_double_check(v37, @"temporaryFileTrackingDelay", 60.0, 1.0, 86400.0);
  v48->_minBatteryPercentageToAllowBackgroundDownloads = fp_configuration_store_int64_check(v37, @"minBatteryPercentageToAllowBackgroundDownloads", @"COREOS_FPFS_CONFIG", 50, 0, 100);
  v48->_maxFileSizeToDownloadSpeculativlyWhenBGSTSizeReportIsOff = fp_configuration_store_int64_check(v37, @"maxFileSizeToDownloadSpeculativlyWhenBGSTSizeReportIsOff", @"COREOS_FPFS_CONFIG", 0x100000000, 0, 0x7FFFFFFFFFFFFFFFLL);
  v40 = fp_configuration_store_string_check(v37, @"targetedSPSErrorsPayload", @"[]");
  targetedSPSErrorsPayload = v48->_targetedSPSErrorsPayload;
  v48->_targetedSPSErrorsPayload = v40;

  v48->_spsFeedbackRequestPromptTimeoutInSeconds = fp_configuration_store_int_check(v37, @"spsFeedbackRequestPromptTimeoutInSeconds", @"COREOS_FPFS_CONFIG", 172800, 0, 0x7FFFFFFF);
  v48->_spsFeedbackBackoffAfterSayingYesInSeconds = fp_configuration_store_int_check(v37, @"spsFeedbackBackoffAfterSayingYesInSeconds", @"COREOS_FPFS_CONFIG", 2678400, 0, 0x7FFFFFFF);
  v48->_spsFeedbackBackoffAfterOtherResponsesInSeconds = fp_configuration_store_int_check(v37, @"spsFeedbackBackoffAfterOtherResponsesInSeconds", @"COREOS_FPFS_CONFIG", 604800, 0, 0x7FFFFFFF);
  v48->_spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds = fp_configuration_store_int_check(v37, @"spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds", @"COREOS_FPFS_CONFIG", 2678400, 0, 0x7FFFFFFF);
  v48->_externalFeedbackAllowed = fp_configuration_store_BOOL_check(v37, @"externalFeedbackAllowed", 1);
  v42 = fp_configuration_store_string_check(v37, @"externalFeedbackDenyList", &stru_1F4C2FFD0);
  v43 = MEMORY[0x1E695DFD8];
  v44 = [v42 componentsSeparatedByString:@""];;
  v45 = [v43 setWithArray:v44];
  externalFeedbackDenyList = v48->_externalFeedbackDenyList;
  v48->_externalFeedbackDenyList = v45;

  v48->_residencyReasonEnablement = fp_configuration_store_int_check(v37, @"residencyReasonEnablement", @"COREOS_FPFS_CONFIG", 2, 0, 2);
  v48->_searchOnServerMaxNumberOfResults = fp_configuration_store_int64_check(v37, @"sosMaxPageSize", @"COREOS_FPFS_CONFIG", 200, 1, 10000);

  v47 = *MEMORY[0x1E69E9840];
}

- (void)loadSpecDownloadNamespace:(id)a3
{
  v4 = a3;
  self->_speculativeSetRecencyDays = fp_configuration_store_int_check(v4, @"speculativeSetRecencyDays", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 1000);
  self->_speculativeSetPageSize = fp_configuration_store_int_check(v4, @"speculativeSetPageSize", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 100, 1, 1000);
  self->_speculativeSetRefreshInterval = fp_configuration_store_int64_check(v4, @"speculativeSetRefreshInterval", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 60, 0, 86400);
  self->_speculativeSetMaximumDownloadsAllowed = fp_configuration_store_int_check(v4, @"speculativeSetMaximumDownloadsAllowed", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 1000000, 0, 1000000);
  self->_speculativeSetMaximumDownloadsRefreshInterval = fp_configuration_store_int64_check(v4, @"speculativeSetMaximumDownloadsRefreshInterval", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 86400, 0, 2592000);
  self->_speculativeSetCancelDownloadDelay = fp_configuration_store_int64_check(v4, @"speculativeSetCancelDownloadDelay", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 10, 0, 86400);
  self->_speculativeSetRefreshInheritedContentPolicyMaximumJobs = fp_configuration_store_int64_check(v4, @"speculativeSetRefreshInheritedContentPolicyMaximumJobs", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 10, 1, 100);
  self->_speculativeSetDownloadTextAge = fp_configuration_store_int_check(v4, @"speculativeSetDownloadTextAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);
  self->_speculativeSetDownloadImageAge = fp_configuration_store_int_check(v4, @"speculativeSetDownloadImageAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);
  self->_speculativeSetDownloadMovieAge = fp_configuration_store_int_check(v4, @"speculativeSetDownloadMovieAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);
  self->_speculativeSetDownloadAudioAge = fp_configuration_store_int_check(v4, @"speculativeSetDownloadAudioAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);
  self->_speculativeSetDownloadCompressedAge = fp_configuration_store_int_check(v4, @"speculativeDownloadSetCompressedAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);
  v5 = fp_configuration_store_int_check(v4, @"speculativeSetDownloadOtherAge", @"COREOS_FPFS_SPECULATIVE_DOWNLOADS", 90, 0, 0x7FFFFFFF);

  self->_speculativeSetDownloadOtherAge = v5;
}

- (NSString)getTrialConfigurationState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_trialConfigurationState;
  objc_sync_exit(v2);

  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:0];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v5;
}

- (void)refresh
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 allObjects];
  OUTLINED_FUNCTION_4_0(&dword_1CEFC7000, v2, v3, "[DEBUG] First: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  [(NSHashTable *)self->_observers addObject:v4];
  objc_sync_exit(v5);

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FPDConfigurationStore *)v4 addObserver:v6];
  }
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Added observer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end