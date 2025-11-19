@interface EDCategoryCoreAnalyticsLogger
+ (id)log;
- (BOOL)_isMailAccountBucketBarHidden:(id)a3;
- (EDCategoryCoreAnalyticsLogger)initWithBucketBarController:(id)a3;
- (double)_calculateBiomeETLToCAScheduleDeltaFrom:(id)a3;
- (double)_calculateScheduleDeltaFrom:(id)a3;
- (id)_blackPearlEnabledAccounts;
- (id)_convertModelMetadata:(id)a3;
- (id)_createMetadataPKWithUserDefaults:(id)a3;
- (id)_defaultModelMetadata;
- (id)_emSharedModelMetadataWithScheduledHour:(BOOL)a3;
- (id)_getCommmaSeparatedString:(id)a3;
- (id)_getMetadataIntValue:(id)a3;
- (id)_getMetadataStringValue:(id)a3;
- (id)_isAllInboxesCategoriesEnabled:(id)a3;
- (id)_mailboxFromMessage:(id)a3;
- (id)_modelMetadata:(id)a3;
- (id)_senderAddressFromMessage:(id)a3;
- (id)_senderDomainFromMessage:(id)a3;
- (id)_senderIDFromMessage:(id)a3;
- (id)setOfBlackPearlEnabledAccoutIdentifier;
- (int)_hourInUTC;
- (int64_t)_accountTypeForAccount:(id)a3;
- (int64_t)_accountTypeForMessage:(id)a3;
- (void)_logAccountPersonalPreferenceForBucketBar;
- (void)_logAccountPersonalPreferenceForScheduledHour;
- (void)_logAccountPersonalPreferenceWithEventName:(id)a3 scheduledHour:(id)a4 includeReceivingAccountDomain:(BOOL)a5;
- (void)_logBucketBarChanges;
- (void)_sendCategorizationAnalyticsForAppLaunchNotification:(id)a3;
- (void)dealloc;
- (void)etlFromBiomeToCA;
- (void)logFedStatRecategorizationEventForMessages:(id)a3 categoryChangeAction:(id)a4 categoryPersistence:(id)a5;
- (void)logModelMetadataForMessages:(id)a3 categoryPersistence:(id)a4;
- (void)logRecategorizationEventForMessages:(id)a3 categoryType:(unint64_t)a4 categoryPersistence:(id)a5 isHighImpactFlagChange:(BOOL)a6;
- (void)logReceiveEventForMessagesWithResult:(id)a3;
- (void)processCoreAnalyticsEvents;
- (void)scheduleNextAnalyticsBackgroundTask;
- (void)scheduleNextBiomeETLToCAScheduleBackgroundTask;
- (void)setAccountsProvider:(id)a3;
@end

@implementation EDCategoryCoreAnalyticsLogger

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EDCategoryCoreAnalyticsLogger_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_19 != -1)
  {
    dispatch_once(&log_onceToken_19, block);
  }

  v2 = log_log_19;

  return v2;
}

void __36__EDCategoryCoreAnalyticsLogger_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_19;
  log_log_19 = v1;
}

- (EDCategoryCoreAnalyticsLogger)initWithBucketBarController:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = EDCategoryCoreAnalyticsLogger;
  v6 = [(EDCategoryCoreAnalyticsLogger *)&v27 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v7;

    v9 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDCategoryCoreAnalyticsLogger.analyticsScheduler" qualityOfService:9];
    analyticsScheduler = v6->_analyticsScheduler;
    v6->_analyticsScheduler = v9;

    objc_storeStrong(&v6->_bucketBarController, a3);
    v11 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:0];
    receiveBiomeCollector = v6->_receiveBiomeCollector;
    v6->_receiveBiomeCollector = v11;

    v13 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:2];
    readBiomeCollector = v6->_readBiomeCollector;
    v6->_readBiomeCollector = v13;

    v15 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:1];
    recategorizeBiomeCollector = v6->_recategorizeBiomeCollector;
    v6->_recategorizeBiomeCollector = v15;

    v17 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:3];
    biomeCollector = v6->_biomeCollector;
    v6->_biomeCollector = v17;

    v19 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:4];
    biomeFedStatsCollector = v6->_biomeFedStatsCollector;
    v6->_biomeFedStatsCollector = v19;

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v6 selector:sel__sendCategorizationAnalyticsForAppLaunchNotification_ name:@"EDClientStateForegroundStateDidChange" object:0];

    [v5 addConfigurationObserver:v6];
    v22 = [EDCoreAnalyticAccountMapperService alloc];
    v23 = [(EDCategoryCoreAnalyticsLogger *)v6 accountsProvider];
    v24 = [(EDCoreAnalyticAccountMapperService *)v22 initWithAccountProvider:v23];
    accountMapperService = v6->_accountMapperService;
    v6->_accountMapperService = v24;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(EDCategoryCoreAnalyticsLogger *)self bucketBarController];
  [v3 removeConfigurationObserver:self];

  v4.receiver = self;
  v4.super_class = EDCategoryCoreAnalyticsLogger;
  [(EDCategoryCoreAnalyticsLogger *)&v4 dealloc];
}

- (id)_defaultModelMetadata
{
  v6[11] = *MEMORY[0x1E69E9840];
  v5[0] = @"trialExperimentIdentifier";
  v5[1] = @"trialExperimentDeploymentIdentifier";
  v6[0] = @"NA";
  v6[1] = @"-1";
  v5[2] = @"trialExperimentTreatmentIdentifier";
  v5[3] = @"trialRolloutIdentifier";
  v6[2] = @"NA";
  v6[3] = @"NA";
  v5[4] = @"trialRolloutDeploymentIdentifier";
  v5[5] = @"trialRolloutFactorPackIdentifier";
  v6[4] = @"-1";
  v6[5] = @"NA";
  v5[6] = @"blackPearlModelVersion";
  v5[7] = @"blackPearlSenderModelVersion";
  v6[6] = @"NA";
  v6[7] = @"NA";
  v5[8] = @"blackPearlBreakthroughVersion";
  v5[9] = @"blackPearlFinalRuleVersion";
  v6[8] = @"NA";
  v6[9] = @"NA";
  v5[10] = @"reasonCodes";
  v6[10] = @"NA";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:11];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_modelMetadata:(id)a3
{
  v44[11] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v43[0] = @"trialExperimentIdentifier";
    v7 = [v5 experimentID];
    v42 = v7;
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"NA";
    }

    v44[0] = v8;
    v43[1] = @"trialExperimentDeploymentIdentifier";
    v9 = [v6 experimentDeploymentID];
    v41 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"-1";
    }

    v44[1] = v10;
    v43[2] = @"trialExperimentTreatmentIdentifier";
    v11 = [v6 experimentTreatmentID];
    v40 = v11;
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"NA";
    }

    v44[2] = v12;
    v43[3] = @"trialRolloutIdentifier";
    v13 = [v6 rolloutID];
    v39 = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"NA";
    }

    v44[3] = v14;
    v43[4] = @"trialRolloutDeploymentIdentifier";
    v15 = [v6 rolloutDeploymentID];
    v38 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"-1";
    }

    v44[4] = v16;
    v43[5] = @"trialRolloutFactorPackIdentifier";
    v17 = [v6 rolloutFactorPackID];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"NA";
    }

    v44[5] = v19;
    v43[6] = @"blackPearlModelVersion";
    v20 = [v6 modelVersion];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"NA";
    }

    v44[6] = v22;
    v43[7] = @"blackPearlSenderModelVersion";
    v23 = [v6 senderModelVersion];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = @"NA";
    }

    v44[7] = v25;
    v43[8] = @"blackPearlBreakthroughVersion";
    v26 = [v6 tsModelVersion];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = @"NA";
    }

    v44[8] = v28;
    v43[9] = @"blackPearlFinalRuleVersion";
    v29 = [v6 finalRuleVersion];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = @"NA";
    }

    v44[9] = v31;
    v43[10] = @"reasonCodes";
    v32 = [v6 reasonCodes];
    if (v32)
    {
      v3 = [v6 reasonCodes];
      v33 = [v3 componentsJoinedByString:{@", "}];
    }

    else
    {
      v33 = &stru_1F45B4608;
    }

    v44[10] = v33;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:11];
    if (v32)
    {
    }
  }

  else
  {
    v34 = +[EDCategoryCoreAnalyticsLogger log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [EDCategoryCoreAnalyticsLogger _modelMetadata:];
    }

    v35 = [(EDCategoryCoreAnalyticsLogger *)self _defaultModelMetadata];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_convertModelMetadata:(id)a3
{
  v44[11] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v43[0] = @"trialExperimentIdentifier";
    v6 = [v4 objectForKey:@"experimentID"];
    v42 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"NA";
    }

    v44[0] = v7;
    v43[1] = @"trialExperimentDeploymentIdentifier";
    v8 = [v5 objectForKey:@"experimentDeploymentID"];
    v41 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"-1";
    }

    v44[1] = v9;
    v43[2] = @"trialExperimentTreatmentIdentifier";
    v10 = [v5 objectForKey:@"experimentTreatmentID"];
    v40 = v10;
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"NA";
    }

    v44[2] = v11;
    v43[3] = @"trialRolloutIdentifier";
    v12 = [v5 objectForKey:@"rolloutID"];
    v39 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"NA";
    }

    v44[3] = v13;
    v43[4] = @"trialRolloutDeploymentIdentifier";
    v14 = [v5 objectForKey:@"rolloutDeploymentID"];
    v38 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"-1";
    }

    v44[4] = v15;
    v43[5] = @"trialRolloutFactorPackIdentifier";
    v16 = [v5 objectForKey:@"rolloutFactorPackID"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = @"NA";
    }

    v44[5] = v18;
    v43[6] = @"blackPearlModelVersion";
    v19 = [v5 objectForKey:@"modelVersion"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"NA";
    }

    v44[6] = v21;
    v43[7] = @"blackPearlSenderModelVersion";
    v22 = [v5 objectForKey:@"senderModelVersion"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"NA";
    }

    v44[7] = v24;
    v43[8] = @"blackPearlBreakthroughVersion";
    v25 = [v5 objectForKey:@"tsModelVersion"];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = @"NA";
    }

    v44[8] = v27;
    v43[9] = @"blackPearlFinalRuleVersion";
    v28 = [v5 objectForKey:@"finalRuleVersion"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = @"NA";
    }

    v44[9] = v30;
    v43[10] = @"reasonCodes";
    v31 = @"reasonCodes";
    v32 = [v5 objectForKey:@"reasonCodes"];
    if (v32)
    {
      v31 = [v5 objectForKey:@"reasonCodes"];
      v33 = [(EDCategoryCoreAnalyticsLogger *)self _getCommmaSeparatedString:v31];
    }

    else
    {
      v33 = @"NA";
    }

    v44[10] = v33;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:11];
    if (v32)
    {
    }
  }

  else
  {
    v34 = +[EDCategoryCoreAnalyticsLogger log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [EDCategoryCoreAnalyticsLogger _convertModelMetadata:];
    }

    v35 = [(EDCategoryCoreAnalyticsLogger *)self _defaultModelMetadata];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (int)_hourInUTC
{
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v3 setTimeZone:v2];
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 components:32 fromDate:v4];

  LODWORD(v4) = [v5 hour];
  return v4;
}

- (id)_emSharedModelMetadataWithScheduledHour:(BOOL)a3
{
  v3 = a3;
  v28[10] = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [(EDCategoryCoreAnalyticsLogger *)self _createMetadataPKWithUserDefaults:v26];
  v25 = [v5 objectForKeyedSubscript:@"trialExperimentID"];
  v24 = [v5 objectForKeyedSubscript:@"trialExperimentDeploymentID"];
  v22 = [v5 objectForKeyedSubscript:@"trialExperimentTreatmentID"];
  v21 = [v5 objectForKeyedSubscript:@"trialRolloutID"];
  v23 = [v5 objectForKeyedSubscript:@"trialRolloutDeploymentID"];
  v6 = [v5 objectForKeyedSubscript:@"trialRolloutFactorpackID"];
  v7 = [v5 objectForKeyedSubscript:@"categorizationVersion"];
  v8 = [(EDCategoryCoreAnalyticsLogger *)self _hourInUTC];
  if (v3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v8];
  }

  else
  {
    v9 = @"50";
  }

  v10 = [v5 objectForKeyedSubscript:@"metadataPK"];
  IsLanguageSupported = EMBlackPearlIsLanguageSupported();
  v12 = @"0";
  if (IsLanguageSupported)
  {
    v12 = @"1";
  }

  v13 = v12;
  v28[0] = v25;
  v27[0] = @"trialExperimentIdentifier";
  v27[1] = @"trialExperimentDeploymentIdentifier";
  v14 = [v24 stringValue];
  v28[1] = v14;
  v28[2] = v22;
  v27[2] = @"trialExperimentTreatmentIdentifier";
  v27[3] = @"trialRolloutIdentifier";
  v28[3] = v21;
  v27[4] = @"trialRolloutDeploymentIdentifier";
  v15 = [v23 stringValue];
  v27[5] = @"trialRolloutFactorPackIdentifier";
  v27[6] = @"blackPearlCategorizationVersion";
  v28[4] = v15;
  v28[5] = v6;
  v27[7] = @"scheduledHour";
  v27[8] = @"metadataPrimaryKey";
  v28[6] = v7;
  v28[7] = v9;
  v27[9] = @"isDeviceBlackPearlEligible";
  v28[8] = v10;
  v28[9] = v13;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:10];

  v17 = [v16 mutableCopy];
  v18 = [(EDCategoryCoreAnalyticsLogger *)self _isAllInboxesCategoriesEnabled:v26];
  if (v18)
  {
    [v17 setObject:v18 forKeyedSubscript:@"isAllInboxesBlackPearlEnabled"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_isAllInboxesCategoriesEnabled:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDCategoryCoreAnalyticsLogger *)self accountsProvider];
  v6 = [v5 numberOfActiveAccounts];

  if (v6 >= 2)
  {
    v8 = [v4 objectForKey:*MEMORY[0x1E699AB40]];
    v9 = v8;
    if (v8 && ([v8 BOOLValue] & 1) == 0)
    {
      v7 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E699AED0] unifiedMailboxOfType:7 name:@"All Inboxes"];
      v11 = [(EDCategoryCoreAnalyticsLogger *)self bucketBarController];
      v16[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v13 = [v11 isBucketBarHiddenForMailboxes:v12];

      if (v13)
      {
        v7 = @"0";
      }

      else
      {
        v7 = @"1";
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_isMailAccountBucketBarHidden:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mailboxForType:7];
  if ([v5 conformsToProtocol:&unk_1F4628E00])
  {
    v6 = v5;
    v7 = [(EDCategoryCoreAnalyticsLogger *)self bucketBarController];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [v7 isBucketBarHiddenForMailboxes:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_createMetadataPKWithUserDefaults:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 objectForKey:@"BlackPearlExperimentID"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"NA";
  }

  v8 = v7;

  v39 = v8;
  [v4 setObject:v8 forKeyedSubscript:@"trialExperimentID"];
  v9 = [v3 objectForKey:@"BlackPearlExperimentDeploymentID"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"NA";
  }

  v12 = v11;

  v38 = v12;
  [v4 setObject:v12 forKeyedSubscript:@"trialExperimentDeploymentID"];
  v13 = [v3 objectForKey:@"BlackPearlExperimentTreatmentID"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"NA";
  }

  v16 = v15;

  v40 = v16;
  [v4 setObject:v16 forKeyedSubscript:@"trialExperimentTreatmentID"];
  v17 = [v3 objectForKey:@"BlackPearlRolloutID"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"NA";
  }

  v20 = v19;

  [v4 setObject:v20 forKeyedSubscript:@"trialRolloutID"];
  v21 = [v3 objectForKey:@"BlackPearlRolloutDeploymentID"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"NA";
  }

  v24 = v23;

  [v4 setObject:v24 forKeyedSubscript:@"trialRolloutDeploymentID"];
  v25 = [v3 objectForKey:@"BlackPearlRolloutFactorPackID"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"NA";
  }

  v28 = v27;

  [v4 setObject:v28 forKeyedSubscript:@"trialRolloutFactorpackID"];
  v29 = [v3 objectForKey:@"blackPearlCategorizationVersion"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = @"NA";
  }

  v32 = v31;

  [v4 setObject:v32 forKeyedSubscript:@"categorizationVersion"];
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@", v32, v8, v12, v40, v20, v24, v28];
  v34 = [v33 dataUsingEncoding:4];
  v35 = [v34 ef_md5Digest];
  v36 = [v35 ef_hexString];

  [v4 setObject:v36 forKeyedSubscript:@"metadataPK"];

  return v4;
}

- (id)_getCommmaSeparatedString:(id)a3
{
  v3 = [a3 componentsJoinedByString:{@", "}];

  return v3;
}

- (id)_getMetadataStringValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"NA";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (id)_getMetadataIntValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"-1";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)_sendCategorizationAnalyticsForAppLaunchNotification:(id)a3
{
  v4 = a3;
  v5 = [(EDCategoryCoreAnalyticsLogger *)self analyticsScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__EDCategoryCoreAnalyticsLogger__sendCategorizationAnalyticsForAppLaunchNotification___block_invoke;
  v7[3] = &unk_1E8250128;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performBlock:v7];
}

void __86__EDCategoryCoreAnalyticsLogger__sendCategorizationAnalyticsForAppLaunchNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"EDClientStateForegroundStateDidChangeKeyIsForeground"];
  v4 = [v3 BOOLValue];

  v5 = [v2 objectForKeyedSubscript:@"EDClientStateForegroundStateDidChangeKeyIsScheduled"];
  v6 = [v5 BOOLValue];

  v7 = +[EDCategoryCoreAnalyticsLogger log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __86__EDCategoryCoreAnalyticsLogger__sendCategorizationAnalyticsForAppLaunchNotification___block_invoke_cold_1(v4, v6, v7);
  }

  if (v4)
  {
    v8 = [*(a1 + 40) _emSharedModelMetadataWithScheduledHour:0];
    v9 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.categorization.mailapp.open" collectionData:v8];
    v10 = [*(a1 + 40) analyticsCollector];
    [v10 logOneTimeEvent:v9];
LABEL_7:

    goto LABEL_8;
  }

  if (v6)
  {
    v8 = [*(a1 + 40) _emSharedModelMetadataWithScheduledHour:1];
    v9 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.categorization.mailapp.open" collectionData:v8];
    v10 = [*(a1 + 40) analyticsCollector];
    [v10 logOneTimeEvent:v9];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)logFedStatRecategorizationEventForMessages:(id)a3 categoryChangeAction:(id)a4 categoryPersistence:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DFA8] set];
  v10 = [v8 categoryType];
  v11 = [v8 isModelCategoryRestoration] ^ 1;
  if (!v7)
  {
    LOBYTE(v11) = 1;
  }

  if ((v11 & 1) == 0 && [v7 count])
  {
    v12 = [v7 firstObject];
    v13 = [v12 category];
    [v13 subtype];
    v10 = EMCategoryFromSubtype();
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__EDCategoryCoreAnalyticsLogger_logFedStatRecategorizationEventForMessages_categoryChangeAction_categoryPersistence___block_invoke;
  v15[3] = &unk_1E82515B0;
  v15[4] = self;
  v14 = v9;
  v16 = v14;
  v17 = v10;
  [v7 enumerateObjectsUsingBlock:v15];
}

void __117__EDCategoryCoreAnalyticsLogger_logFedStatRecategorizationEventForMessages_categoryChangeAction_categoryPersistence___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _senderAddressFromMessage:?];
  if (v3 && ([*(a1 + 40) containsObject:v3] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [*(a1 + 32) _senderIDFromMessage:v13];
    [v4 setObject:v5 forKeyedSubscript:@"senderId"];

    v6 = [MEMORY[0x1E695DF58] _deviceLanguage];
    [v4 setObject:v6 forKeyedSubscript:@"language"];

    v7 = [*(a1 + 32) _senderDomainFromMessage:v13];
    [v4 setObject:v7 forKeyedSubscript:@"senderDomain"];

    [v4 setObject:&unk_1F45E65C8 forKeyedSubscript:@"recategorizationBy"];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    [v4 setObject:v8 forKeyedSubscript:@"currCategoryView"];

    v9 = MEMORY[0x1E696AD98];
    v10 = [v13 category];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "type")}];
    [v4 setObject:v11 forKeyedSubscript:@"prevCategoryView"];

    v12 = [*(a1 + 32) biomeFedStatsCollector];
    [v12 logRecategorizationFedStatsForMessage:v4];

    [*(a1 + 40) addObject:v3];
  }
}

- (void)logRecategorizationEventForMessages:(id)a3 categoryType:(unint64_t)a4 categoryPersistence:(id)a5 isHighImpactFlagChange:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:672];
  v13 = [(EDCategoryCoreAnalyticsLogger *)self analyticsScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __125__EDCategoryCoreAnalyticsLogger_logRecategorizationEventForMessages_categoryType_categoryPersistence_isHighImpactFlagChange___block_invoke;
  v17[3] = &unk_1E8251600;
  v14 = v10;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  v20 = self;
  v16 = v11;
  v23 = a6;
  v21 = v16;
  v22 = a4;
  [v13 performBlock:v17];
}

void __125__EDCategoryCoreAnalyticsLogger_logRecategorizationEventForMessages_categoryType_categoryPersistence_isHighImpactFlagChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __125__EDCategoryCoreAnalyticsLogger_logRecategorizationEventForMessages_categoryType_categoryPersistence_isHighImpactFlagChange___block_invoke_2;
  v8[3] = &unk_1E82515D8;
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v2;
  v4 = *(a1 + 56);
  v11 = *(a1 + 48);
  v5 = v4;
  v14 = *(a1 + 72);
  v6 = *(a1 + 64);
  v12 = v5;
  v13 = v6;
  v7 = v2;
  [v3 enumerateObjectsUsingBlock:v8];
}

void __125__EDCategoryCoreAnalyticsLogger_logRecategorizationEventForMessages_categoryType_categoryPersistence_isHighImpactFlagChange___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 dateReceived];
  v5 = [v4 ef_isLaterThanOrEqualDate:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) modelAnalyticsForMessage:{objc_msgSend(v3, "globalMessageID")}];
    v9 = [v7 _convertModelMetadata:v8];
    [v6 addEntriesFromDictionary:v9];

    [*(a1 + 40) setObject:&unk_1F45E65C8 forKeyedSubscript:@"recategorizationBy"];
    v10 = [v3 category];
    LOBYTE(v6) = [v10 isHighImpact];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "_loggingCategoryTypeFromType:isHighImpact:", *(a1 + 64), v6 & ~*(a1 + 72) & 1)}];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:@"currCategoryView"];

    v12 = MEMORY[0x1E696AD98];
    v13 = *(a1 + 48);
    v14 = [v3 category];
    v15 = [v14 type];
    v16 = [v3 category];
    v17 = [v12 numberWithInteger:{objc_msgSend(v13, "_loggingCategoryTypeFromType:isHighImpact:", v15, objc_msgSend(v16, "isHighImpact"))}];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"prevCategoryView"];

    v18 = [*(a1 + 48) _hashedGlobalMessageId:{objc_msgSend(v3, "globalMessageID")}];
    [*(a1 + 40) setObject:v18 forKeyedSubscript:@"messageId"];

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "_accountTypeForMessage:", v3)}];
    [*(a1 + 40) setObject:v19 forKeyedSubscript:@"receivingAccountDomain"];

    v20 = [v3 account];
    v21 = [v20 identifier];
    [*(a1 + 40) setObject:v21 forKeyedSubscript:@"accountId"];

    v22 = [*(a1 + 48) _senderIDFromMessage:v3];
    [*(a1 + 40) setObject:v22 forKeyedSubscript:@"senderId"];

    v23 = [MEMORY[0x1E695DF58] _deviceLanguage];
    [*(a1 + 40) setObject:v23 forKeyedSubscript:@"language"];

    v24 = [*(a1 + 48) _senderDomainFromMessage:v3];
    [*(a1 + 40) setObject:v24 forKeyedSubscript:@"senderDomain"];

    v25 = [*(a1 + 48) recategorizeBiomeCollector];
    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "globalMessageID")}];
    [v25 logRecategorizationEventForMessageID:v26 messageDictionary:*(a1 + 40)];

    v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "globalMessageID")}];
    [*(a1 + 40) setObject:v27 forKeyedSubscript:@"unhashedGlobalMessageIDs"];

    v28 = +[EDCategoryCoreAnalyticsLogger log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      v31 = 138412290;
      v32 = v29;
      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Recategorization event: %@", &v31, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)logReceiveEventForMessagesWithResult:(id)a3
{
  v4 = a3;
  v5 = [(EDCategoryCoreAnalyticsLogger *)self analyticsScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__EDCategoryCoreAnalyticsLogger_logReceiveEventForMessagesWithResult___block_invoke;
  v7[3] = &unk_1E8250128;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performBlock:v7];
}

void __70__EDCategoryCoreAnalyticsLogger_logReceiveEventForMessagesWithResult___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:672];
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__EDCategoryCoreAnalyticsLogger_logReceiveEventForMessagesWithResult___block_invoke_2;
  v8[3] = &unk_1E8251628;
  v9 = v3;
  v5 = v2;
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
}

void __70__EDCategoryCoreAnalyticsLogger_logReceiveEventForMessagesWithResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v51 = a2;
  v5 = a3;
  v6 = [v51 dateReceived];
  LODWORD(a3) = [v6 ef_isLaterThanOrEqualDate:*(a1 + 32)];

  if (a3)
  {
    v50 = v5;
    v7 = [v5 metadata];
    v8 = *(a1 + 40);
    v49 = v7;
    v9 = [*(a1 + 48) _modelMetadata:v7];
    [v8 addEntriesFromDictionary:v9];

    v10 = MEMORY[0x1E696AD98];
    v11 = *(a1 + 48);
    v12 = [v5 category];
    v13 = [v12 subtype];
    v14 = [v5 category];
    v15 = [v10 numberWithInteger:{objc_msgSend(v11, "_loggingPredecitedCategoryTypeFromType:isHighImpact:", v13, objc_msgSend(v14, "isHighImpact"))}];
    [*(a1 + 40) setObject:v15 forKeyedSubscript:@"predictedCategory"];

    v16 = MEMORY[0x1E696AD98];
    v17 = *(a1 + 48);
    v18 = [v5 category];
    v19 = [v18 type];
    v20 = [v5 category];
    v21 = [v16 numberWithInteger:{objc_msgSend(v17, "_loggingCategoryTypeFromType:isHighImpact:", v19, objc_msgSend(v20, "isHighImpact"))}];
    [*(a1 + 40) setObject:v21 forKeyedSubscript:@"currCategoryView"];

    v22 = [*(a1 + 48) _hashedGlobalMessageId:{objc_msgSend(v51, "globalMessageID")}];
    [*(a1 + 40) setObject:v22 forKeyedSubscript:@"messageId"];

    v23 = [v51 account];
    v24 = [v23 identifier];
    [*(a1 + 40) setObject:v24 forKeyedSubscript:@"accountId"];

    v25 = MEMORY[0x1E696AD98];
    v26 = [v51 dateReceived];
    [v26 timeIntervalSince1970];
    v27 = [v25 numberWithDouble:?];
    [*(a1 + 40) setObject:v27 forKeyedSubscript:@"receivedTimestamp"];

    v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "_accountTypeForMessage:", v51)}];
    [*(a1 + 40) setObject:v28 forKeyedSubscript:@"receivingAccountDomain"];

    v29 = MEMORY[0x1E696AD98];
    v30 = [v51 account];
    v31 = [v30 baseAccount];
    v32 = [v29 numberWithBool:{objc_msgSend(v31, "isAppleAccount")}];
    [*(a1 + 40) setObject:v32 forKeyedSubscript:@"hasIcloudAccountEnabled"];

    v33 = [v51 account];
    v34 = [v33 systemAccount];

    v48 = v34;
    v35 = [v34 accountPropertyForKey:@"kMCCCategoryIsNonPersonalAccountKey"];
    v36 = v35;
    if (v35)
    {
      if ([v35 BOOLValue])
      {
        v37 = @"0";
      }

      else
      {
        v37 = @"1";
      }

      [*(a1 + 40) setObject:v37 forKeyedSubscript:@"isMailAccountPersonalAccount"];
    }

    v38 = [MEMORY[0x1E695E000] em_userDefaults];
    v39 = [*(a1 + 48) _isAllInboxesCategoriesEnabled:v38];
    if (v39)
    {
      [*(a1 + 40) setObject:v39 forKeyedSubscript:@"isAllInboxesBlackPearlEnabled"];
    }

    v40 = [v51 account];
    if ([*(a1 + 48) _isMailAccountBucketBarHidden:v40])
    {
      v41 = @"0";
    }

    else
    {
      v41 = @"1";
    }

    v42 = v41;
    [*(a1 + 40) setObject:v42 forKeyedSubscript:@"isMailAccountBlackPearlEnabled"];
    v43 = [*(a1 + 48) _createMetadataPKWithUserDefaults:v38];
    v44 = [v43 objectForKeyedSubscript:@"metadataPK"];

    v45 = [v44 substringFromIndex:{objc_msgSend(v44, "length") - 4}];
    [*(a1 + 40) setObject:v45 forKeyedSubscript:@"metadataPrimaryKey"];
    v46 = [*(a1 + 48) receiveBiomeCollector];
    v47 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v51, "globalMessageID")}];
    [v46 logReceiveEventForMessageID:v47 messageDictionary:*(a1 + 40)];

    v5 = v50;
  }
}

- (int64_t)_accountTypeForMessage:(id)a3
{
  v4 = [a3 account];
  v5 = [v4 baseAccount];

  v6 = [(EDCategoryCoreAnalyticsLogger *)self _accountTypeForAccount:v5];
  return v6;
}

- (int64_t)_accountTypeForAccount:(id)a3
{
  v3 = a3;
  if ([v3 isAppleAccount])
  {
    v4 = 1;
  }

  else if ([v3 isGmailAccount])
  {
    v4 = 3;
  }

  else if ([v3 isYahooAccount])
  {
    v4 = 4;
  }

  else if ([v3 isExchangeAccount])
  {
    v4 = 2;
  }

  else if ([v3 isOutlookAccount])
  {
    v4 = 6;
  }

  else if ([v3 isAOLAccount])
  {
    v4 = 5;
  }

  else if ([v3 isAppleEmployeeAccount])
  {
    v4 = 0;
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

- (id)_senderIDFromMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 businessLogoID];
  if (v5)
  {

LABEL_4:
    v7 = [(EDCategoryCoreAnalyticsLogger *)self _senderAddressFromMessage:v4];
    goto LABEL_5;
  }

  v6 = [v4 brandIndicatorLocation];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)_senderAddressFromMessage:(id)a3
{
  v3 = [a3 from];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_senderDomainFromMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E699B240]);
  v6 = [(EDCategoryCoreAnalyticsLogger *)self _senderAddressFromMessage:v4];
  v7 = [v5 initWithString:v6];

  v8 = [v7 domain];

  return v8;
}

- (id)_mailboxFromMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 category];
  v5 = [v4 isHighImpact];

  if (v5)
  {
    v6 = @"Inbox";
  }

  else
  {
    v7 = [v3 category];
    v8 = [v7 type];

    if ((v8 - 1) >= 3)
    {
      v9 = [v3 mailbox];
      v10 = [v9 type];

      if ((v10 - 1) >= 7)
      {
        v6 = @"Other";
      }

      else
      {
        v6 = off_1E8251708[v10 - 1];
      }
    }

    else
    {
      v6 = @"BlackPearlMailbox";
    }
  }

  return v6;
}

- (void)logModelMetadataForMessages:(id)a3 categoryPersistence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__EDCategoryCoreAnalyticsLogger_logModelMetadataForMessages_categoryPersistence___block_invoke;
  v11[3] = &unk_1E8251650;
  v12 = v8;
  v13 = self;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
}

void __81__EDCategoryCoreAnalyticsLogger_logModelMetadataForMessages_categoryPersistence___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) modelAnalyticsForMessage:{objc_msgSend(v3, "globalMessageID")}];
  v7 = [v5 _convertModelMetadata:v6];
  [v4 addEntriesFromDictionary:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "globalMessageID")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"unhashedGlobalMessageIDs"];

  v9 = +[EDCategoryCoreAnalyticsLogger log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Feedback event: %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (double)_calculateScheduleDeltaFrom:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 setTimeZone:v4];
  v6 = [v5 components:224 fromDate:v3];
  v7 = [v6 hour];
  v8 = [v6 minute];
  v9 = [v6 second];
  if ([v6 hour] <= 22 && objc_msgSend(v6, "hour") >= 5)
  {
    if ([v6 hour] >= 11)
    {
      if ([v6 hour] >= 17)
      {
        v10 = 82800;
      }

      else
      {
        v10 = 61200;
      }
    }

    else
    {
      v10 = 39600;
    }
  }

  else
  {
    v10 = 18000;
  }

  if ([v6 hour] <= 22)
  {
    v11 = 0;
  }

  else
  {
    v11 = 86400;
  }

  v12 = +[EDCategoryCoreAnalyticsLogger log];
  v13 = v10 + -3600 * v7 - 60 * v8 - v9 + v11;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = [v6 hour];
    v18 = 2048;
    v19 = [v6 minute];
    v20 = 2048;
    v21 = [v6 second];
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling analytics task: datetimeNow = {%ld:%ld:%ld}, scheduleAfter = %ld", &v16, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (double)_calculateBiomeETLToCAScheduleDeltaFrom:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  v7 = [v5 components:224 fromDate:v3];
  v8 = [v7 hour];
  v9 = [v7 minute];
  v10 = [v7 second];
  if ([v7 hour] <= 22)
  {
    v11 = 82800;
  }

  else
  {
    v11 = 169200;
  }

  v12 = +[EDCategoryCoreAnalyticsLogger log];
  v13 = v11 - v10 - (3600 * v8 + 60 * v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = [v7 hour];
    v18 = 2048;
    v19 = [v7 minute];
    v20 = 2048;
    v21 = [v7 second];
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling Biome ETL-To-CA analytics task: datetimeNow = {%ld:%ld:%ld}, scheduleAfter = %ld", &v16, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)scheduleNextBiomeETLToCAScheduleBackgroundTask
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)scheduleNextAnalyticsBackgroundTask
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processCoreAnalyticsEvents
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"EDClientStateForegroundStateDidChangeKeyIsScheduled";
  v7[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EDClientStateForegroundStateDidChange" object:self userInfo:v3];

  [(EDCategoryCoreAnalyticsLogger *)self _logAccountPersonalPreferenceForScheduledHour];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)etlFromBiomeToCA
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSince1970];
  v6 = [v3 numberWithUnsignedLongLong:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") - 604800}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") - 86400}];
  v9 = +[EDCategoryCoreAnalyticsLogger log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v8;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Biome ETL-To-CA Before Query: startTSL1: %@, startTS: %@, endTS: %@", buf, 0x20u);
  }

  v10 = +[EDClientState sharedInstance];
  v11 = [v10 isForeground];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x1E695E000] em_userDefaults];
    v13 = [v12 valueForKey:*MEMORY[0x1E699AB80]];
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v16 = +[EDCategoryCoreAnalyticsLogger log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v15;
        v17 = "Biome ETL-To-CA Before Query: replaced endTS from user defaults lastForegroundedTimestamps: %@";
        v18 = v16;
        v19 = 12;
LABEL_9:
        _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {

      v16 = +[EDCategoryCoreAnalyticsLogger log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "Biome ETL-To-CA Before Query: replaced endTS with 0";
        v18 = v16;
        v19 = 2;
        goto LABEL_9;
      }
    }

    v6 = v14;
  }

  v20 = [v7 unsignedLongLongValue];
  if (v20 < [v6 unsignedLongLongValue])
  {
    v21 = [(EDCategoryCoreAnalyticsLogger *)self biomeFedStatsCollector];
    v22 = [(EDCategoryCoreAnalyticsLogger *)self setOfBlackPearlEnabledAccoutIdentifier];
    v23 = [v21 queryMessageGrainEvents:v8 startingAt:v7 endingAt:v6 andBPEnabledAccounts:v22];

    if (v23)
    {
      v24 = +[EDCategoryCoreAnalyticsLogger log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v23 count];
        *buf = 134217984;
        v32 = v25;
        v26 = "Biome ETL-To-CA After Query: rowCount %lu";
        v27 = v24;
        v28 = 12;
LABEL_17:
        _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else
    {
      v24 = +[EDCategoryCoreAnalyticsLogger log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Biome ETL-To-CA After Query: messageGrains=nil";
        v27 = v24;
        v28 = 2;
        goto LABEL_17;
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __49__EDCategoryCoreAnalyticsLogger_etlFromBiomeToCA__block_invoke;
    v30[3] = &unk_1E82516A0;
    v30[4] = self;
    [v23 enumerateObjectsUsingBlock:v30];
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __49__EDCategoryCoreAnalyticsLogger_etlFromBiomeToCA__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__EDCategoryCoreAnalyticsLogger_etlFromBiomeToCA__block_invoke_2;
  v9[3] = &unk_1E8251678;
  v5 = v4;
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = &v13;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  if (v14[3] <= 9)
  {
    v7 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.categorization.message.sampled" collectionData:v5];
    v8 = [*(a1 + 32) analyticsCollector];
    [v8 logOneTimeEvent:v7];
  }

  _Block_object_dispose(&v13, 8);
}

void __49__EDCategoryCoreAnalyticsLogger_etlFromBiomeToCA__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [@"messageId" isEqual:v9] ^ 1;
  if (!v5)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 40) _hashedGlobalMessageId:{objc_msgSend(v5, "unsignedIntValue")}];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
LABEL_9:

    goto LABEL_11;
  }

  v8 = [@"accountId" isEqual:v9] ^ 1;
  if (!v5)
  {
    LOBYTE(v8) = 1;
  }

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _findAccountMapping:v5];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
    goto LABEL_9;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v9];
LABEL_11:
}

- (void)_logAccountPersonalPreferenceForScheduledHour
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[EDCategoryCoreAnalyticsLogger _hourInUTC](self, "_hourInUTC")];
  [EDCategoryCoreAnalyticsLogger _logAccountPersonalPreferenceWithEventName:"_logAccountPersonalPreferenceWithEventName:scheduledHour:includeReceivingAccountDomain:" scheduledHour:@"com.apple.mail.categorization.account.preference" includeReceivingAccountDomain:?];
}

- (void)_logAccountPersonalPreferenceForBucketBar
{
  [(EDCategoryCoreAnalyticsLogger *)self _logAccountPersonalPreferenceWithEventName:@"com.apple.mail.categorization.account.preference.toggled" scheduledHour:0 includeReceivingAccountDomain:0];
  v8 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [(EDCategoryCoreAnalyticsLogger *)self _isAllInboxesCategoriesEnabled:?];
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKey:@"isAllInboxesBlackPearlEnabled"];
    v6 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.categorization.account.preference.toggled" collectionData:v5];
    v7 = [(EDCategoryCoreAnalyticsLogger *)self analyticsCollector];
    [v7 logOneTimeEvent:v6];
  }
}

- (void)_logAccountPersonalPreferenceWithEventName:(id)a3 scheduledHour:(id)a4 includeReceivingAccountDomain:(BOOL)a5
{
  v34 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v35 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = self;
  v7 = [(EDCategoryCoreAnalyticsLogger *)self accountsProvider];
  v8 = [v7 mailAccounts];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = *v41;
    v33 = @"kMCCCategoryIsNonPersonalAccountKey";
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{&unk_1F4628C10, v33}])
        {
          v13 = v12;
          if (([v13 isLocalAccount] & 1) == 0 && objc_msgSend(v13, "isActive"))
          {
            v14 = [v13 identifier];
            v15 = [(EDCategoryCoreAnalyticsLogger *)v37 _findAccountMapping:v14];

            v16 = [@"com.apple.mail.categorization.account.preference.toggled" isEqual:v36];
            v17 = v15 < 0x89 ? 1 : v16;
            if (v17)
            {
              v18 = objc_opt_new();
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
              v20 = [v19 stringValue];
              [v18 setObject:v20 forKey:@"accountId"];

              if (v35)
              {
                [v18 setObject:v35 forKey:@"scheduledHour"];
              }

              v21 = [v13 systemAccount];
              v22 = [v21 accountPropertyForKey:v33];
              v23 = v22;
              if (v22)
              {
                if ([v22 BOOLValue])
                {
                  v24 = @"0";
                }

                else
                {
                  v24 = @"1";
                }

                [v18 setObject:v24 forKey:@"isMailAccountPersonalAccount"];
              }

              if (v34)
              {
                v25 = [objc_alloc(MEMORY[0x1E699B1F0]) initWithSystemAccount:v21];
                v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EDCategoryCoreAnalyticsLogger _accountTypeForAccount:](v37, "_accountTypeForAccount:", v25)}];
                [v18 setObject:v26 forKeyedSubscript:@"receivingAccountDomain"];
              }

              else
              {
                v25 = +[EDCategoryCoreAnalyticsLogger log];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_INFO, "don't include kReceivingAccountDomain", buf, 2u);
                }
              }

              v27 = [(EDCategoryCoreAnalyticsLogger *)v37 _isMailAccountBucketBarHidden:v13];
              v28 = @"1";
              if (v27)
              {
                v28 = @"0";
              }

              v29 = v28;
              [v18 setObject:v29 forKey:@"isMailAccountBlackPearlEnabled"];
              v30 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:v36 collectionData:v18];
              v31 = [(EDCategoryCoreAnalyticsLogger *)v37 analyticsCollector];
              [v31 logOneTimeEvent:v30];
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (id)_blackPearlEnabledAccounts
{
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v4 = [(EDCategoryCoreAnalyticsLogger *)self accountsProvider];
  v5 = [v4 numberOfActiveAccounts];

  v6 = [(EDCategoryCoreAnalyticsLogger *)self _isAllInboxesCategoriesEnabled:v3];
  v7 = [(EDCategoryCoreAnalyticsLogger *)self accountsProvider];
  v8 = [v7 mailAccounts];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EDCategoryCoreAnalyticsLogger__blackPearlEnabledAccounts__block_invoke;
  v13[3] = &unk_1E82516C8;
  v13[4] = self;
  v15 = v5;
  v9 = v6;
  v14 = v9;
  v10 = [v8 ef_filter:v13];

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  return v11;
}

BOOL __59__EDCategoryCoreAnalyticsLogger__blackPearlEnabledAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive] && objc_msgSend(v3, "conformsToProtocol:", &unk_1F4628C10))
  {
    v4 = v3;
    v5 = ([v4 isLocalAccount] & 1) == 0 && (!objc_msgSend(*(a1 + 32), "_isMailAccountBucketBarHidden:", v4) || *(a1 + 48) >= 2uLL && (objc_msgSend(*(a1 + 40), "isEqualToString:", @"1") & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)setOfBlackPearlEnabledAccoutIdentifier
{
  v2 = [(EDCategoryCoreAnalyticsLogger *)self _blackPearlEnabledAccounts];
  v3 = [v2 ef_compactMap:&__block_literal_global_15];

  return v3;
}

id __71__EDCategoryCoreAnalyticsLogger_setOfBlackPearlEnabledAccoutIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a2 identifier];
  v4 = [v2 stringWithFormat:@"'%@'", v3];

  return v4;
}

- (void)setAccountsProvider:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_accountsProvider, a3);
  v5 = [(EDCategoryCoreAnalyticsLogger *)self accountMapperService];
  [v5 setAccountsProvider:v6];
}

- (void)_logBucketBarChanges
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%{public}@ - eventDictionary.count:%lu", buf, 0x16u);
}

void __86__EDCategoryCoreAnalyticsLogger__sendCategorizationAnalyticsForAppLaunchNotification___block_invoke_cold_1(char a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Core Analytics processing [foreground=%d] [scheduled=%d]", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

@end