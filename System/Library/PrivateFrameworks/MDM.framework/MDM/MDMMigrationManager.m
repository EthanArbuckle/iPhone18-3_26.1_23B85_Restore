@interface MDMMigrationManager
+ (id)_bootUUID;
- (BOOL)_handleNewCloudConfigIfNeeded:(id)a3 currentCloudConfig:(id)a4 didPollFromDEP:(BOOL)a5;
- (BOOL)_isFirstBoot;
- (BOOL)_shouldMigrateWithNewCloudConfig:(id)a3 currentCloudConfig:(id)a4 isEligible:(BOOL *)a5 isMigrationNeeded:(BOOL *)a6;
- (BOOL)handleDeadlineActionForNagItem:(id)a3;
- (MDMMigrationManager)init;
- (id)appliedGracePeriodToNagItem:(id)a3;
- (void)_cancelMDMMigrationWithNewCloudConfig:(id)a3;
- (void)_depPushReceived;
- (void)_evaluateMigrationStatusShouldPoll:(BOOL)a3 completionHandler:(id)a4;
- (void)_retrieveAndStorePendingCloudConfigurationWithRetryCount:(unint64_t)a3 completionHandler:(id)a4;
- (void)_scheduleMDMMigrationWithNewCloudConfigDetails:(id)a3;
- (void)nagWithCloudConfigDetails:(id)a3;
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
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = MDMMigrationDirectory();
    v5 = [v3 fileExistsAtPath:v4];

    if ((v5 & 1) == 0)
    {
      v6 = MDMMigrationDirectory();
      v13 = *MEMORY[0x277CCA180];
      v14[0] = &unk_2868503C8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v3 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v7 error:0];
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
  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  [v3 refreshDetailsFromDisk];
  v4 = MEMORY[0x277D031B0];
  v5 = [v3 details];
  LODWORD(v4) = [v4 isDeviceEligibleForMigrationWithExistingCloudConfig:v5 outReason:0];

  if (v4)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Start monitoring DEP push notification", v8, 2u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel__depPushReceived name:*MEMORY[0x277D245E0] object:0];
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

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D245E0] object:0];
}

- (void)_evaluateMigrationStatusShouldPoll:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: evaluating migration status", buf, 2u);
  }

  v8 = [MEMORY[0x277D24640] sharedConfiguration];
  [v8 refreshDetailsFromDisk];

  v9 = [MEMORY[0x277D24640] sharedConfiguration];
  v10 = [v9 details];

  v11 = *(DMCLogObjects() + 8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v4)
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
    v17 = v6;
    v15[4] = self;
    v16 = v10;
    v18 = v4;
    [(MDMMigrationManager *)self _retrieveAndStorePendingCloudConfigurationWithRetryCount:2 completionHandler:v15];

    v13 = v17;
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Using local pending cloud config", buf, 2u);
    }

    v13 = [MEMORY[0x277D031B0] readPendingCloudConfigDetails];
    v14 = [(MDMMigrationManager *)self _handleNewCloudConfigIfNeeded:v13 currentCloudConfig:v10 didPollFromDEP:0];
    if (v6)
    {
      (*(v6 + 2))(v6, v14, 0);
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

- (void)_retrieveAndStorePendingCloudConfigurationWithRetryCount:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke;
  aBlock[3] = &unk_27982BF50;
  v14 = v6;
  v15 = a3;
  aBlock[4] = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x277D262A0] sharedConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__MDMMigrationManager__retrieveAndStorePendingCloudConfigurationWithRetryCount_completionHandler___block_invoke_13;
  v11[3] = &unk_27982BFA0;
  v12 = v8;
  v10 = v8;
  [v9 retrieveCloudConfigurationDetailsCompletionBlock:v11];
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

- (BOOL)_handleNewCloudConfigIfNeeded:(id)a3 currentCloudConfig:(id)a4 didPollFromDEP:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16 = 0;
  v9 = [(MDMMigrationManager *)self _shouldMigrateWithNewCloudConfig:v8 currentCloudConfig:a4 isEligible:&v16 + 1 isMigrationNeeded:&v16];
  if (v9)
  {
    [(MDMMigrationManager *)self _scheduleMDMMigrationWithNewCloudConfigDetails:v8];
    goto LABEL_21;
  }

  if (!v8 || (v16 & 0x100) != 0)
  {
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:v8];
    v11 = [v10 migrationDeadline];

    if (v11 || !v5)
    {
      if (v11)
      {
        v12 = 0;
LABEL_12:
        v13 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Sending EndMigrationRequest", v15, 2u);
        }

        [MEMORY[0x277D031B0] makeEndMigrationRequestIfNeededWithCloudConfig:v8 success:v12 completionHandler:&__block_literal_global_0];
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
    [(MDMMigrationManager *)self _cancelMDMMigrationWithNewCloudConfig:v8];
  }

  if ((v16 & 0x100) == 0)
  {
    [(MDMMigrationManager *)self stopMonitoringDEPServerPush];
    if ([MEMORY[0x277D034F8] isMigrationEligibilityReportEnabled])
    {
      if (v5)
      {
        MDMSendMigrationEligibilityChangedNotification();
      }
    }
  }

LABEL_21:

  return v9;
}

- (BOOL)_shouldMigrateWithNewCloudConfig:(id)a3 currentCloudConfig:(id)a4 isEligible:(BOOL *)a5 isMigrationNeeded:(BOOL *)a6
{
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (![MEMORY[0x277D031B0] isDeviceEligibleForMigrationWithExistingCloudConfig:v10 outReason:0])
  {
    goto LABEL_14;
  }

  if (a5)
  {
    *a5 = 1;
  }

  if (([MEMORY[0x277D031B0] isMigrationNeededWithExistingCloudConfig:v10 newCloudConfig:v9] & 1) == 0)
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Migration is not needed", v14, 2u);
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (a6)
  {
    *a6 = 1;
  }

  v11 = [MEMORY[0x277D031B0] currentEnrollmentStateSupportsMigration];
LABEL_15:

  return v11;
}

- (void)_cancelMDMMigrationWithNewCloudConfig:(id)a3
{
  [MEMORY[0x277D031B0] setUserInititiatedMigration:0];
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Cleaning up pending cloud config if needed...", v7, 2u);
  }

  if (a3)
  {
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    [v6 storePendingCloudConfigurationDetailsForMigration:0 completionHandler:&__block_literal_global_19];
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

- (void)_scheduleMDMMigrationWithNewCloudConfigDetails:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__MDMMigrationManager__scheduleMDMMigrationWithNewCloudConfigDetails___block_invoke;
  v6[3] = &unk_27982BAC8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)nagWithCloudConfigDetails:(id)a3
{
  v4 = MEMORY[0x277D24640];
  v5 = a3;
  v6 = [[v4 alloc] initWithCloudConfigDetails:v5];

  v7 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D24D10]];
  v8 = MEMORY[0x277D032C8];
  v9 = [v6 migrationDeadline];
  v10 = [v8 migrationNagItemWithDeadline:v9 actionURL:v7 deadlineURL:v7];

  v11 = [(MDMMigrationManager *)self nagScheduler];

  if (v11)
  {
    v12 = [(MDMMigrationManager *)self nagScheduler];
    v15 = 0;
    [v12 startNaggingItem:v10 error:&v15];
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
  v3 = [(MDMMigrationManager *)self nagScheduler];

  if (v3)
  {
    v4 = [(MDMMigrationManager *)self nagScheduler];
    v5 = [MEMORY[0x277D032C8] migrationNagItemID];
    v6 = [MEMORY[0x277D032C8] migrationNagClientID];
    [v4 stopNaggingItemWithID:v5 clientID:v6];

    v8 = [(MDMMigrationManager *)self nagScheduler];
    [v8 evaluateNags];
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

- (BOOL)handleDeadlineActionForNagItem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isMigrationNag] && (objc_msgSend(v3, "deadline"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "compare:", v5), v5, v4, v6 == -1))
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v3;
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

- (id)appliedGracePeriodToNagItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(MDMMigrationManager *)self _isFirstBoot])
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(MDMMigrationManager *)self bootUUID];
      v19 = 138543362;
      v20 = *&v13;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Ignoring grace period because we already checked this boot: %{public}@", &v19, 0xCu);
    }

    goto LABEL_8;
  }

  if (![v4 isMigrationNag])
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  [MEMORY[0x277D03500] nagMigrationGracePeriod];
  v6 = v5;
  v7 = [v4 deadline];
  [v7 timeIntervalSinceNow];
  v9 = v8;

  if (v9 > v6)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = *&v4;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMMigrationManager: Ignoring grace period for far out MDM migration nag: %{public}@", &v19, 0xCu);
    }

    goto LABEL_8;
  }

  v17 = [MEMORY[0x277CBEAA8] date];
  v14 = [v17 dateByAddingTimeInterval:v6];

  v18 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134349570;
    v20 = v6;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = v4;
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
  v3 = [(MDMMigrationManager *)self bootUUID];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 stringForKey:@"DMCNagMigrationLastBootUUID"];

    v6 = [(MDMMigrationManager *)self bootUUID];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v9 = [(MDMMigrationManager *)self bootUUID];
      [v8 setObject:v9 forKey:@"DMCNagMigrationLastBootUUID"];
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