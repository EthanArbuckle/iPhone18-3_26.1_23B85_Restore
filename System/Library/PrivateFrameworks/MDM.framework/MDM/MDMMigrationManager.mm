@interface MDMMigrationManager
+ (id)_bootUUID;
- (BOOL)_handleNewCloudConfigIfNeeded:(id)needed currentCloudConfig:(id)config didPollFromDEP:(BOOL)p;
- (BOOL)_isFirstBoot;
- (BOOL)_shouldMigrateWithNewCloudConfig:(id)config currentCloudConfig:(id)cloudConfig isEligible:(BOOL *)eligible isMigrationNeeded:(BOOL *)needed;
- (BOOL)handleDeadlineActionForNagItem:(id)item;
- (MDMMigrationManager)init;
- (id)appliedGracePeriodToNagItem:(id)item;
- (void)_cancelMDMMigrationWithNewCloudConfig:(id)config;
- (void)_depPushReceived;
- (void)_evaluateMigrationStatusShouldPoll:(BOOL)poll completionHandler:(id)handler;
- (void)_retrieveAndStorePendingCloudConfigurationWithRetryCount:(unint64_t)count completionHandler:(id)handler;
- (void)_scheduleMDMMigrationWithNewCloudConfigDetails:(id)details;
- (void)nagWithCloudConfigDetails:(id)details;
- (void)startMonitoringDEPServerPushIfNeeded;
- (void)stopMonitoringDEPServerPush;
- (void)stopNagging;
@end

@implementation MDMMigrationManager

- (MDMMigrationManager)init
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MDMMigrationManager;
  v2 = [(MDMMigrationManager *)&v12 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = MDMMigrationDirectory();
    v5 = [defaultManager fileExistsAtPath:v4];

    if ((v5 & 1) == 0)
    {
      v6 = MDMMigrationDirectory();
      v13 = *MEMORY[0x277CCA180];
      v14[0] = &unk_2868503C8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v7 error:0];
    }

    v8 = +[MDMMigrationManager _bootUUID];
    bootUUID = v2->_bootUUID;
    v2->_bootUUID = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)startMonitoringDEPServerPushIfNeeded
{
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];
  v4 = MEMORY[0x277D031B0];
  details = [mEMORY[0x277D24640] details];
  LODWORD(v4) = [v4 isDeviceEligibleForMigrationWithExistingCloudConfig:details outReason:0];

  if (v4)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Start monitoring DEP push notification", v8, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__depPushReceived name:*MEMORY[0x277D245E0] object:0];
  }
}

- (void)stopMonitoringDEPServerPush
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Stop monitoring DEP push notification", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D245E0] object:0];
}

- (void)_evaluateMigrationStatusShouldPoll:(BOOL)poll completionHandler:(id)handler
{
  pollCopy = poll;
  handlerCopy = handler;
  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: evaluating migration status", buf, 2u);
  }

  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];

  mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
  details = [mEMORY[0x277D24640]2 details];

  v11 = *(DMCLogObjects() + 8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (pollCopy)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Polling new cloud config from cloud", buf, 2u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__MDMMigrationManager__evaluateMigrationStatusShouldPoll_completionHandler___block_invoke;
    v15[3] = &unk_27982BF28;
    v17 = handlerCopy;
    v15[4] = self;
    v16 = details;
    v18 = pollCopy;
    [(MDMMigrationManager *)self _retrieveAndStorePendingCloudConfigurationWithRetryCount:2 completionHandler:v15];

    readPendingCloudConfigDetails = v17;
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Using local pending cloud config", buf, 2u);
    }

    readPendingCloudConfigDetails = [MEMORY[0x277D031B0] readPendingCloudConfigDetails];
    v14 = [(MDMMigrationManager *)self _handleNewCloudConfigIfNeeded:readPendingCloudConfigDetails currentCloudConfig:details didPollFromDEP:0];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v14, 0);
    }
  }
}

void __76__MDMMigrationManager__evaluateMigrationStatusShouldPoll_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    [*(a1 + 32) _handleNewCloudConfigIfNeeded:v9 currentCloudConfig:*(a1 + 40) didPollFromDEP:*(a1 + 56)];
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

- (void)_retrieveAndStorePendingCloudConfigurationWithRetryCount:(unint64_t)count completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke;
  aBlock[3] = &unk_27982BF50;
  v14 = handlerCopy;
  countCopy = count;
  aBlock[4] = self;
  v7 = handlerCopy;
  v8 = _Block_copy(aBlock);
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_13;
  v11[3] = &unk_27982BFA0;
  v12 = v8;
  v10 = v8;
  [mEMORY[0x277D262A0] retrieveCloudConfigurationDetailsCompletionBlock:v11];
}

void __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: New pending cloud config stored.", buf, 2u);
    }

    v13 = *(a1[5] + 16);
    goto LABEL_10;
  }

  if (!a1[6])
  {
    v13 = *(a1[5] + 16);
LABEL_10:
    v13();
    goto LABEL_11;
  }

  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Retry retrieving cloud config...", buf, 2u);
  }

  v8 = dispatch_time(0, 1000000000);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_10;
  block[3] = &unk_27982BB68;
  v11 = a1[5];
  v10 = a1[6];
  block[4] = a1[4];
  v16 = v10;
  v15 = v11;
  dispatch_after(v8, v9, block);

LABEL_11:
}

void __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "MDMMigrationManager: Failed to retrieve cloud config with error: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Storing new cloud config", buf, 2u);
    }

    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_14;
    v10[3] = &unk_27982BF78;
    v12 = *(a1 + 32);
    v11 = v6;
    [v8 storePendingCloudConfigurationDetailsForMigration:v11 completionHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "MDMMigrationManager: Failed to store cloud config with error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_depPushReceived
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: DEP Push received", v4, 2u);
  }

  [(MDMMigrationManager *)self _evaluateMigrationStatusShouldPoll:1 completionHandler:0];
}

- (BOOL)_handleNewCloudConfigIfNeeded:(id)needed currentCloudConfig:(id)config didPollFromDEP:(BOOL)p
{
  pCopy = p;
  neededCopy = needed;
  v16 = 0;
  v9 = [(MDMMigrationManager *)self _shouldMigrateWithNewCloudConfig:neededCopy currentCloudConfig:config isEligible:&v16 + 1 isMigrationNeeded:&v16];
  if (v9)
  {
    [(MDMMigrationManager *)self _scheduleMDMMigrationWithNewCloudConfigDetails:neededCopy];
    goto LABEL_21;
  }

  if (!neededCopy || (v16 & 0x100) != 0)
  {
    if (!pCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:neededCopy];
    migrationDeadline = [v10 migrationDeadline];

    if (migrationDeadline || !pCopy)
    {
      if (migrationDeadline)
      {
        v12 = 0;
LABEL_12:
        v13 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Sending EndMigrationRequest", v15, 2u);
        }

        [MEMORY[0x277D031B0] makeEndMigrationRequestIfNeededWithCloudConfig:neededCopy success:v12 completionHandler:&__block_literal_global_0];
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if ((v16 & 1) == 0)
  {
    v12 = 1;
    goto LABEL_12;
  }

LABEL_15:
  if ((v16 & 1) == 0)
  {
    [(MDMMigrationManager *)self _cancelMDMMigrationWithNewCloudConfig:neededCopy];
  }

  if ((v16 & 0x100) == 0)
  {
    [(MDMMigrationManager *)self stopMonitoringDEPServerPush];
    if ([MEMORY[0x277D034F8] isMigrationEligibilityReportEnabled])
    {
      if (pCopy)
      {
        MDMSendMigrationEligibilityChangedNotification();
      }
    }
  }

LABEL_21:

  return v9;
}

- (BOOL)_shouldMigrateWithNewCloudConfig:(id)config currentCloudConfig:(id)cloudConfig isEligible:(BOOL *)eligible isMigrationNeeded:(BOOL *)needed
{
  configCopy = config;
  cloudConfigCopy = cloudConfig;
  if (eligible)
  {
    *eligible = 0;
  }

  if (needed)
  {
    *needed = 0;
  }

  if (![MEMORY[0x277D031B0] isDeviceEligibleForMigrationWithExistingCloudConfig:cloudConfigCopy outReason:0])
  {
    goto LABEL_14;
  }

  if (eligible)
  {
    *eligible = 1;
  }

  if (([MEMORY[0x277D031B0] isMigrationNeededWithExistingCloudConfig:cloudConfigCopy newCloudConfig:configCopy] & 1) == 0)
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Migration is not needed", v14, 2u);
    }

LABEL_14:
    currentEnrollmentStateSupportsMigration = 0;
    goto LABEL_15;
  }

  if (needed)
  {
    *needed = 1;
  }

  currentEnrollmentStateSupportsMigration = [MEMORY[0x277D031B0] currentEnrollmentStateSupportsMigration];
LABEL_15:

  return currentEnrollmentStateSupportsMigration;
}

- (void)_cancelMDMMigrationWithNewCloudConfig:(id)config
{
  [MEMORY[0x277D031B0] setUserInititiatedMigration:0];
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Cleaning up pending cloud config if needed...", v7, 2u);
  }

  if (config)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] storePendingCloudConfigurationDetailsForMigration:0 completionHandler:&__block_literal_global_19];
  }

  [(MDMMigrationManager *)self stopNagging];
}

void __61__MDMMigrationManager__cancelMDMMigrationWithNewCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v4 = "MDMMigrationManager: Failed to clean up pending cloud config with error: %{public}@";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_2561F5000, v5, v6, v4, &v9, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v4 = "MDMMigrationManager: Pending cloud config cleared.";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleMDMMigrationWithNewCloudConfigDetails:(id)details
{
  detailsCopy = details;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__MDMMigrationManager__scheduleMDMMigrationWithNewCloudConfigDetails___block_invoke;
  v6[3] = &unk_27982BAC8;
  v6[4] = self;
  v7 = detailsCopy;
  v5 = detailsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __70__MDMMigrationManager__scheduleMDMMigrationWithNewCloudConfigDetails___block_invoke(uint64_t a1)
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Scheduling nag with new cloud config.", v4, 2u);
  }

  return [*(a1 + 32) nagWithCloudConfigDetails:*(a1 + 40)];
}

- (void)nagWithCloudConfigDetails:(id)details
{
  v4 = MEMORY[0x277D24640];
  detailsCopy = details;
  v6 = [[v4 alloc] initWithCloudConfigDetails:detailsCopy];

  v7 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D24D10]];
  v8 = MEMORY[0x277D032C8];
  migrationDeadline = [v6 migrationDeadline];
  v10 = [v8 migrationNagItemWithDeadline:migrationDeadline actionURL:v7 deadlineURL:v7];

  nagScheduler = [(MDMMigrationManager *)self nagScheduler];

  if (nagScheduler)
  {
    nagScheduler2 = [(MDMMigrationManager *)self nagScheduler];
    v15 = 0;
    [nagScheduler2 startNaggingItem:v10 error:&v15];
    v13 = v15;
  }

  else
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "MDMMigrationManager: Cannot start nagging without a nag scheduler", buf, 2u);
    }
  }
}

- (void)stopNagging
{
  nagScheduler = [(MDMMigrationManager *)self nagScheduler];

  if (nagScheduler)
  {
    nagScheduler2 = [(MDMMigrationManager *)self nagScheduler];
    migrationNagItemID = [MEMORY[0x277D032C8] migrationNagItemID];
    migrationNagClientID = [MEMORY[0x277D032C8] migrationNagClientID];
    [nagScheduler2 stopNaggingItemWithID:migrationNagItemID clientID:migrationNagClientID];

    nagScheduler3 = [(MDMMigrationManager *)self nagScheduler];
    [nagScheduler3 evaluateNags];
  }

  else
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "MDMMigrationManager: Cannot stop nagging without a nag scheduler", buf, 2u);
    }
  }
}

- (BOOL)handleDeadlineActionForNagItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isMigrationNag] && (objc_msgSend(itemCopy, "deadline"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "compare:", v5), v5, v4, v6 == -1))
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = itemCopy;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Launching post-deadline system migration action for nag: %{public}@", &v15, 0xCu);
    }

    v11 = objc_opt_new();
    v12 = DMCLocalizedString();
    [v11 setTitle:v12];

    v13 = DMCLocalizedStringByDevice();
    [v11 setMessage:v13];

    v14 = DMCLocalizedString();
    [v11 setDefaultButtonText:v14];

    v7 = 1;
    [v11 setDisplayOnLockScreen:1];
    [v11 setCompletionBlock:&__block_literal_global_35];
    [MEMORY[0x277D032E0] displayAlert:v11];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)appliedGracePeriodToNagItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (![(MDMMigrationManager *)self _isFirstBoot])
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      bootUUID = [(MDMMigrationManager *)self bootUUID];
      v19 = 138543362;
      v20 = *&bootUUID;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Ignoring grace period because we already checked this boot: %{public}@", &v19, 0xCu);
    }

    goto LABEL_8;
  }

  if (![itemCopy isMigrationNag])
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  [MEMORY[0x277D03500] nagMigrationGracePeriod];
  v6 = v5;
  deadline = [itemCopy deadline];
  [deadline timeIntervalSinceNow];
  v9 = v8;

  if (v9 > v6)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = *&itemCopy;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Ignoring grace period for far out MDM migration nag: %{public}@", &v19, 0xCu);
    }

    goto LABEL_8;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v14 = [date dateByAddingTimeInterval:v6];

  v18 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134349570;
    v20 = v6;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = itemCopy;
    _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Applying %{public}f grace period (%{public}@) to MDM migration nag: %{public}@", &v19, 0x20u);
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_bootUUID
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0);
  v3 = 0;
  if (!v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_isFirstBoot
{
  bootUUID = [(MDMMigrationManager *)self bootUUID];

  if (bootUUID)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults stringForKey:@"DMCNagMigrationLastBootUUID"];

    bootUUID2 = [(MDMMigrationManager *)self bootUUID];
    v7 = [v5 isEqualToString:bootUUID2];

    if ((v7 & 1) == 0)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      bootUUID3 = [(MDMMigrationManager *)self bootUUID];
      [standardUserDefaults2 setObject:bootUUID3 forKey:@"DMCNagMigrationLastBootUUID"];
    }

    v10 = v7 ^ 1;
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "MDMMigrationManager: Failed to get boot UUID", v13, 2u);
    }

    return 0;
  }

  return v10;
}

@end