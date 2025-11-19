@interface HMDHH2AutoMigrationEligibilityLogEventSubmitter
- (HMDHH2AutoMigrationEligibilityLogEventSubmitter)initWithEligibilityStatusDataSource:(id)a3 analyzerDataSource:(id)a4;
- (HMDHH2AutoMigrationEligibilityLogEventSubmitterDataSource)eligibilityStatusDataSource;
- (void)observeEvent:(id)a3;
- (void)runDailyTask;
- (void)submitHH2AutoMigrationEligibilityStatus;
@end

@implementation HMDHH2AutoMigrationEligibilityLogEventSubmitter

- (HMDHH2AutoMigrationEligibilityLogEventSubmitterDataSource)eligibilityStatusDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_eligibilityStatusDataSource);

  return WeakRetained;
}

- (void)runDailyTask
{
  v3 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDHH2AutoMigrationEligibilityLogEventSubmitter_runDailyTask__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)submitHH2AutoMigrationEligibilityStatus
{
  v3 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eligibilityStatusDataSource];
  v3 = [v2 hh2AutoMigrationEligibilityChecker];

  if (v3)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__179386;
    v36 = __Block_byref_object_dispose__179387;
    v37 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke_7;
    v29[3] = &unk_279733338;
    v31 = &v32;
    v5 = v4;
    v30 = v5;
    [v3 fetchIsCurrentUserEligibleForAutoMigrationWithCompletion:v29];
    dispatch_group_enter(v5);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__179386;
    v27 = __Block_byref_object_dispose__179387;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__179386;
    v21 = __Block_byref_object_dispose__179387;
    v22 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke_2;
    v13[3] = &unk_279733360;
    v15 = &v23;
    v16 = &v17;
    v6 = v5;
    v14 = v6;
    [v3 fetchIsCurrentUserEligibleForMigrationByOwnerWithCompletion:v13];
    v7 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v6, v7);
    v8 = [*(a1 + 32) userDefaults];
    v9 = [v8 BOOLForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];

    v10 = [HMDHH2AutoMigrationEligibilityStatusLogEvent alloc];
    v11 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)v10 initWithAutoMigrationEligibilityResult:v33[5] migrationByOwnerManualEligibilityResult:v24[5] migrationByOwnerAutoEligibilityResult:v18[5] didRunMigrationTaskOnCurrentBuild:v9 currentBuildStartedOnHH1:1];
    v12 = [*(a1 + 32) logEventSubmitter];
    [v12 submitLogEvent:v11];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v32, 8);
  }
}

void __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __90__HMDHH2AutoMigrationEligibilityLogEventSubmitter_submitHH2AutoMigrationEligibilityStatus__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v11 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 activityName];
    v9 = [v8 isEqualToString:@"com.apple.homed.hh2.auto.migration"];

    if (v9)
    {
      v10 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self userDefaults];
      [v10 setBool:1 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];
    }
  }
}

- (HMDHH2AutoMigrationEligibilityLogEventSubmitter)initWithEligibilityStatusDataSource:(id)a3 analyzerDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HMDHH2AutoMigrationEligibilityLogEventSubmitter;
  v8 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_eligibilityStatusDataSource, v6);
    v10 = [v7 logEventSubmitter];
    logEventSubmitter = v9->_logEventSubmitter;
    v9->_logEventSubmitter = v10;

    v12 = [v7 userDefaults];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = v12;

    v14 = [v7 dateProvider];
    dateProvider = v9->_dateProvider;
    v9->_dateProvider = v14;

    v16 = [v7 logEventDispatcher];
    v17 = [v16 clientQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = v17;

    v19 = [(NSUserDefaults *)v9->_userDefaults stringForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildSoftwareVersionKey"];
    if (!v19 || ([v7 currentSoftwareVersion], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, (v21 & 1) == 0))
    {
      v22 = v9->_userDefaults;
      v23 = [v7 currentSoftwareVersion];
      [(NSUserDefaults *)v22 setObject:v23 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildSoftwareVersionKey"];

      [(NSUserDefaults *)v9->_userDefaults setBool:0 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];
      [(NSUserDefaults *)v9->_userDefaults setBool:1 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildStartedOnHH1Key"];
    }

    v24 = [v7 logEventDispatcher];
    [v24 addObserver:v9 forEventClass:objc_opt_class()];

    v25 = [v7 dailyScheduler];
    [v25 registerDailyTaskRunner:v9];
  }

  return v9;
}

@end