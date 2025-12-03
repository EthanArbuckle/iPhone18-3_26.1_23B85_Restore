@interface HMDHH2AutoMigrationEligibilityLogEventSubmitter
- (HMDHH2AutoMigrationEligibilityLogEventSubmitter)initWithEligibilityStatusDataSource:(id)source analyzerDataSource:(id)dataSource;
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
  workQueue = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDHH2AutoMigrationEligibilityLogEventSubmitter_runDailyTask__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)submitHH2AutoMigrationEligibilityStatus
{
  v9 = [[HMDHH2AutoMigrationEligibilityResult alloc] initWithStatus:2048 iCloudAccountStatus:0 unsupportedDevices:0 hasOnlyEmptyHomes:0 numberOwnedNonEmptyHomes:0 numberUnownedSharedHomes:0 numberOwnedSharedHomes:0];
  userDefaults = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self userDefaults];
  v4 = [userDefaults BOOLForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];

  userDefaults2 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self userDefaults];
  v6 = [userDefaults2 BOOLForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildStartedOnHH1Key"];

  v7 = [[HMDHH2AutoMigrationEligibilityStatusLogEvent alloc] initWithAutoMigrationEligibilityResult:v9 migrationByOwnerManualEligibilityResult:v9 migrationByOwnerAutoEligibilityResult:v9 didRunMigrationTaskOnCurrentBuild:v4 currentBuildStartedOnHH1:v6];
  logEventSubmitter = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v7];
}

- (HMDHH2AutoMigrationEligibilityLogEventSubmitter)initWithEligibilityStatusDataSource:(id)source analyzerDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v27.receiver = self;
  v27.super_class = HMDHH2AutoMigrationEligibilityLogEventSubmitter;
  v8 = [(HMDHH2AutoMigrationEligibilityLogEventSubmitter *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_eligibilityStatusDataSource, sourceCopy);
    logEventSubmitter = [dataSourceCopy logEventSubmitter];
    logEventSubmitter = v9->_logEventSubmitter;
    v9->_logEventSubmitter = logEventSubmitter;

    userDefaults = [dataSourceCopy userDefaults];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = userDefaults;

    dateProvider = [dataSourceCopy dateProvider];
    dateProvider = v9->_dateProvider;
    v9->_dateProvider = dateProvider;

    logEventDispatcher = [dataSourceCopy logEventDispatcher];
    clientQueue = [logEventDispatcher clientQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = clientQueue;

    v19 = [(NSUserDefaults *)v9->_userDefaults stringForKey:@"HMDHH2AutoMigrationRunOnCurrentBuildSoftwareVersionKey"];
    if (!v19 || ([dataSourceCopy currentSoftwareVersion], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, (v21 & 1) == 0))
    {
      v22 = v9->_userDefaults;
      currentSoftwareVersion = [dataSourceCopy currentSoftwareVersion];
      [(NSUserDefaults *)v22 setObject:currentSoftwareVersion forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildSoftwareVersionKey"];

      [(NSUserDefaults *)v9->_userDefaults setBool:0 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildFlagKey"];
      [(NSUserDefaults *)v9->_userDefaults setBool:0 forKey:@"HMDHH2AutoMigrationRunOnCurrentBuildStartedOnHH1Key"];
    }

    logEventDispatcher2 = [dataSourceCopy logEventDispatcher];
    [logEventDispatcher2 addObserver:v9 forEventClass:objc_opt_class()];

    dailyScheduler = [dataSourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v9];
  }

  return v9;
}

@end