@interface HMDHH2AutoMigrationEligibilityLogEventSubmitter
- (HMDHH2AutoMigrationEligibilityLogEventSubmitter)initWithEligibilityStatusDataSource:(id)a3 analyzerDataSource:(id)a4;
- (HMDHH2AutoMigrationEligibilityLogEventSubmitterDataSource)eligibilityStatusDataSource;
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
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)submitHH2AutoMigrationEligibilityStatus
{
  v9 = [[HMDHH2AutoMigrationEligibilityResult alloc] initWithStatus:2048 iCloudAccountStatus:0 unsupportedDevices:0 hasOnlyEmptyHomes:0 numberOwnedNonEmptyHomes:0 numberUnownedSharedHomes:0 numberOwnedSharedHomes:0];
  v3 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self userDefaults];
  v4 = [v3 BOOLForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];

  v5 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self userDefaults];
  v6 = [v5 BOOLForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildStartedOnHH1Key"];

  v7 = [[HMDHH2AutoMigrationEligibilityStatusLogEvent alloc] initWithAutoMigrationEligibilityResult:v9 migrationByOwnerManualEligibilityResult:v9 migrationByOwnerAutoEligibilityResult:v9 didRunMigrationTaskOnCurrentBuild:v4 currentBuildStartedOnHH1:v6];
  v8 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self logEventSubmitter];
  [v8 submitLogEvent:v7];
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
      [(NSUserDefaults *)v9->_userDefaults setBool:0 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildStartedOnHH1Key"];
    }

    v24 = [v7 logEventDispatcher];
    [v24 addObserver:v9 forEventClass:objc_opt_class()];

    v25 = [v7 dailyScheduler];
    [v25 registerDailyTaskRunner:v9];
  }

  return v9;
}

@end