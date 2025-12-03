@interface HMDHH2AutoMigrationMonitor
+ (id)logCategory;
- (HMDHH2AutoMigrationMonitor)initWithHomeManager:(id)manager eligibilityChecker:(id)checker;
- (HMDHH2AutoMigrationMonitor)initWithHomeManager:(id)manager fmfHandler:(id)handler backgroundTaskScheduler:(id)scheduler eligibilityChecker:(id)checker featuresDataSource:(id)source logEventSubmitter:(id)submitter;
- (id)homeManager;
- (void)_attemptAutoMigrationWithCompletionHandler:(void *)handler;
- (void)_registerForBackgroundTask;
- (void)_unregisterForBackgroundTask;
- (void)attemptAutoMigrationWithCompletionHandler:(id)handler;
- (void)handleFMFStatusUpdatedNotification:(id)notification;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)submitEndMigrationEventWithAutoMigration:(void *)migration error:;
- (void)submitStartMigrationEventWithAutoMigration:(void *)migration;
@end

@implementation HMDHH2AutoMigrationMonitor

- (void)handleFMFStatusUpdatedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [HMDFMF fmfStatusWithDict:userInfo];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@FMF status changed to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([v6 value] == 2)
    {
      [(HMDHH2AutoMigrationMonitor *)selfCopy _registerForBackgroundTask];
    }

    else
    {
      [(HMDHH2AutoMigrationMonitor *)selfCopy _unregisterForBackgroundTask];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      userInfo2 = [notificationCopy userInfo];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = userInfo2;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find FMF status in notification user info: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_registerForBackgroundTask
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    workQueue = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDHH2AutoMigrationMonitor__registerForBackgroundTask__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)_unregisterForBackgroundTask
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    workQueue = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDHH2AutoMigrationMonitor__unregisterForBackgroundTask__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __58__HMDHH2AutoMigrationMonitor__unregisterForBackgroundTask__block_invoke(uint64_t a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v16 = 0;
  v4 = [Property cancelTaskRequestWithIdentifier:@"com.apple.homed.hh2.auto.migration" error:&v16];
  v5 = v16;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = @"com.apple.homed.hh2.auto.migration";
      v11 = "%{public}@Canceled background task request with identifier: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, buf, v14);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = @"com.apple.homed.hh2.auto.migration";
    v21 = 2112;
    v22 = v5;
    v11 = "%{public}@Failed to cancel background task request with identifier %@: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 32;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x277D85DE8];
}

void __56__HMDHH2AutoMigrationMonitor__registerForBackgroundTask__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = @"com.apple.homed.hh2.auto.migration";
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for background task with identifier: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 24, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = Property;
  v10 = [(HMDHH2AutoMigrationMonitor *)v8 homeManager];
  v11 = [v10 workQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__HMDHH2AutoMigrationMonitor__registerForBackgroundTask__block_invoke_29;
  v35[3] = &unk_27972F7D0;
  v35[4] = *(a1 + 32);
  [v9 registerForTaskWithIdentifier:@"com.apple.homed.hh2.auto.migration" usingQueue:v11 launchHandler:v35];

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v12, 24, 1);
  }

  v14 = [v13 taskRequestForIdentifier:@"com.apple.homed.hh2.auto.migration"];
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v18;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Background task request already exists: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v19 = [[HMDBackgroundSystemTaskRequest alloc] initWithIdentifier:@"com.apple.homed.hh2.auto.migration"];
    [(HMDBackgroundSystemTaskRequest *)v19 setRequiresInexpensiveNetworkConnectivity:1];
    [(HMDBackgroundSystemTaskRequest *)v19 setRequiresSignificantUserInactivity:1];
    [(HMDBackgroundSystemTaskRequest *)v19 setInterval:86400.0];
    [(HMDBackgroundSystemTaskRequest *)v19 interval];
    [(HMDBackgroundSystemTaskRequest *)v19 setMinDurationBetweenInstances:v20 * 0.8];
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v24;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Submitting background task request: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = *(a1 + 32);
    if (v26)
    {
      v26 = objc_getProperty(v26, v25, 24, 1);
    }

    v34 = 0;
    v27 = [v26 submitTaskRequest:v19 error:&v34];
    v28 = v34;
    if ((v27 & 1) == 0)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = *(a1 + 32);
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v32;
        v38 = 2114;
        v39 = v19;
        v40 = 2114;
        v41 = v28;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit task request %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)homeManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

void __56__HMDHH2AutoMigrationMonitor__registerForBackgroundTask__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_alloc(MEMORY[0x277D17E10]) initWithActivityName:@"com.apple.homed.hh2.auto.migration" definedInterval:0 activityShouldWake:86400.0 timeSinceLastRun:0.0];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 48, 1);
  }

  [Property submitLogEvent:v5];
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMDHH2AutoMigrationMonitor__registerForBackgroundTask__block_invoke_2;
  v9[3] = &unk_279734468;
  v10 = v3;
  v8 = v3;
  [(HMDHH2AutoMigrationMonitor *)v7 _attemptAutoMigrationWithCompletionHandler:v9];
}

- (void)_attemptAutoMigrationWithCompletionHandler:(void *)handler
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (handler)
  {
    v4 = objc_autoreleasePoolPush();
    handlerCopy = handler;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting auto migration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    Property = objc_getProperty(handlerCopy, v8, 32, 1);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke;
    v11[3] = &unk_27972F7F8;
    v11[4] = handlerCopy;
    v12 = v3;
    [Property fetchIsCurrentUserEligibleForAutoMigrationWithCompletion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) homeManager];
  if (!v4)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not starting HH2 migration because home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_40;
  }

  if (([v3 isEligible] & 1) == 0)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Not starting HH2 migration because current user is not eligible, but will check whether we can do dry run or not", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v36, 40, 1);
    }

    if ([Property isHH2MigrationDryRunEnabled])
    {
      v38 = [v4 homes];
      v39 = [v38 count];

      if (v39)
      {
        [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke_36;
        v77[3] = &unk_279733F30;
        v40 = *(a1 + 40);
        v77[4] = *(a1 + 32);
        v78 = v40;
        [v4 dryRunHH2MigrationWithCompletionHandler:v77];
        v41 = v78;
        goto LABEL_44;
      }

      v68 = objc_autoreleasePoolPush();
      v69 = *(a1 + 32);
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v71;
        _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_INFO, "%{public}@Not running dry run on empty account as it will fail in absence of keyed archive", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v68);
      [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
      v46 = *(a1 + 32);
      v47 = MEMORY[0x277CCA9B8];
      v48 = 2720;
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      v43 = *(a1 + 32);
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v45;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Not starting HH2 Dry Run Migration because Dry Run is disabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
      v46 = *(a1 + 32);
      v47 = MEMORY[0x277CCA9B8];
      v48 = 2724;
    }

    v63 = [v47 hmPrivateErrorWithCode:v48];
    v64 = v46;
    v65 = 0;
    goto LABEL_49;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v6 = [MEMORY[0x277D0F8E8] productInfo];
  v7 = [v6 softwareVersion];
  v8 = [v7 buildVersion];

  if (!v8)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = v5;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v52;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_FAULT, "%{public}@Should not get here, skipping auto migration due to missing build version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v49);
    v23 = 1;
    goto LABEL_35;
  }

  v9 = +[HMDHH2MigrationStateLogger autoMigrationAttempt];
  if (!v9)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = v5;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v57 = v56 = v3;
      *buf = 138543618;
      v80 = v57;
      v81 = 2114;
      v82 = v8;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@First auto migration attempt for build %{public}@", buf, 0x16u);

      v3 = v56;
    }

    objc_autoreleasePoolPop(v53);
    v23 = 0;
    goto LABEL_34;
  }

  v74 = v3;
  v10 = isInternalBuild();
  v11 = @"hh2AutoMigrationMaxAttempts";
  if (v10)
  {
    v11 = @"hh2InternalAutoMigrationMaxAttempts";
  }

  v12 = v11;
  v13 = [v9 integerValue];
  v14 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v73 = v12;
  v15 = [v14 preferenceForKey:v12];
  v16 = [v15 numberValue];
  v17 = [v16 integerValue];

  v18 = objc_autoreleasePoolPush();
  v19 = v5;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  v22 = v13 < v17;
  v23 = v13 >= v17;
  if (v22)
  {
    if (v21)
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v80 = v24;
      v81 = 2114;
      v82 = v9;
      v83 = 2114;
      v84 = v8;
      v25 = "%{public}@Last auto migration attempt count %{public}@ for current build %{public}@";
      goto LABEL_32;
    }
  }

  else if (v21)
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543874;
    v80 = v24;
    v81 = 2114;
    v82 = v9;
    v83 = 2114;
    v84 = v8;
    v25 = "%{public}@Maximum auto migration attempts (%{public}@) reached for current build %{public}@";
LABEL_32:
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, v25, buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v3 = v74;
LABEL_34:

LABEL_35:
LABEL_36:
  v58 = objc_autoreleasePoolPush();
  v59 = *(a1 + 32);
  v60 = HMFGetOSLogHandle();
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
  if (v23)
  {
    if (v61)
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v62;
      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Will not perform HH2 auto migration since we are at maximum number of attempts", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v58);
    [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2733];
LABEL_40:
    v63 = v31;
    v64 = v30;
    v65 = 1;
LABEL_49:
    [(HMDHH2AutoMigrationMonitor *)v64 submitEndMigrationEventWithAutoMigration:v65 error:v63];

    (*(*(a1 + 40) + 16))();
    goto LABEL_50;
  }

  if (v61)
  {
    v66 = HMFGetLogIdentifier();
    *buf = 138543362;
    v80 = v66;
    _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Starting HH2 migration because current user is eligible", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v58);
  [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitStartMigrationEventWithAutoMigration:?];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke_38;
  v75[3] = &unk_279733F30;
  v67 = *(a1 + 40);
  v75[4] = *(a1 + 32);
  v76 = v67;
  [v4 autoMigrateToHH2WithCompletionHandler:v75];
  v41 = v76;
LABEL_44:

LABEL_50:
  v72 = *MEMORY[0x277D85DE8];
}

- (void)submitStartMigrationEventWithAutoMigration:(void *)migration
{
  if (migration)
  {
    v4 = [[HMDHH2MigrationDailyTotalsLogEvent alloc] initStartWithAutoMigration:a2 dryRun:a2 ^ 1 attemptCount:0];
    [objc_getProperty(migration v3];
  }
}

- (void)submitEndMigrationEventWithAutoMigration:(void *)migration error:
{
  if (self)
  {
    migrationCopy = migration;
    v6 = [HMDHH2MigrationDailyTotalsLogEvent alloc];
    v7 = +[HMDHH2MigrationStateLogger autoMigrationAttempt];
    v9 = [(HMDHH2MigrationDailyTotalsLogEvent *)v6 initEndWithAutoMigration:a2 dryRun:a2 ^ 1 attemptCount:v7 error:migrationCopy];

    [objc_getProperty(self v8];
  }
}

void __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start HH2 dry run migration: %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitEndMigrationEventWithAutoMigration:v3 error:?];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully started HH2 Dry run migration", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __73__HMDHH2AutoMigrationMonitor__attemptAutoMigrationWithCompletionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = v6;
    if (!v5)
    {
      goto LABEL_16;
    }

    v8 = [v6 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCFD28]];

    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = [v7 code];
    if ((v10 - 2704) > 0x17)
    {
      goto LABEL_16;
    }

    if (((1 << (v10 + 112)) & 0xC00102) != 0)
    {

      goto LABEL_18;
    }

    if (v10 == 2704)
    {
      v15 = [v7 userInfo];
      v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      v19 = isTransientCloudKitError(v18);
      if (v19)
      {
LABEL_18:
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 32);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v25 = 138543618;
          v26 = v23;
          v27 = 2114;
          v28 = v7;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to start HH2 migration: %{public}@", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        [(HMDHH2AutoMigrationMonitor *)*(a1 + 32) submitEndMigrationEventWithAutoMigration:v7 error:?];
        goto LABEL_21;
      }
    }

    else
    {
LABEL_16:
    }

    +[HMDHH2MigrationStateLogger incrementAutoMigrationAttempt];
    goto LABEL_18;
  }

  +[HMDHH2MigrationStateLogger incrementAutoMigrationAttempt];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully started HH2 migration", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
LABEL_21:
  (*(*(a1 + 40) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

- (void)attemptAutoMigrationWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to attempt auto migration", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHH2AutoMigrationMonitor *)selfCopy _attemptAutoMigrationWithCompletionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to stop monitoring for HH2 auto-migration", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [defaultCenter removeObserver:selfCopy name:@"HMDFMFStatusUpdateNotification" object:Property];

  [(HMDHH2AutoMigrationMonitor *)selfCopy _unregisterForBackgroundTask];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoring
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to start monitoring for HH2 auto-migration", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  if ([Property isThisDesignatedFMFDevice])
  {
    [(HMDHH2AutoMigrationMonitor *)selfCopy _registerForBackgroundTask];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not registering for background task because this device is not designated FMF device", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (selfCopy)
  {
    v15 = objc_getProperty(selfCopy, v13, 16, 1);
  }

  else
  {
    v15 = 0;
  }

  [defaultCenter addObserver:selfCopy selector:sel_handleFMFStatusUpdatedNotification_ name:@"HMDFMFStatusUpdateNotification" object:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDHH2AutoMigrationMonitor)initWithHomeManager:(id)manager fmfHandler:(id)handler backgroundTaskScheduler:(id)scheduler eligibilityChecker:(id)checker featuresDataSource:(id)source logEventSubmitter:(id)submitter
{
  managerCopy = manager;
  handlerCopy = handler;
  schedulerCopy = scheduler;
  checkerCopy = checker;
  obj = source;
  sourceCopy = source;
  submitterCopy = submitter;
  submitterCopy2 = submitter;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!handlerCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!schedulerCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!checkerCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!sourceCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v20 = submitterCopy2;
  if (!submitterCopy2)
  {
LABEL_15:
    v24 = _HMFPreconditionFailure();
    return [(HMDHH2AutoMigrationMonitor *)v24 initWithHomeManager:v25 eligibilityChecker:v26, v27];
  }

  v30.receiver = self;
  v30.super_class = HMDHH2AutoMigrationMonitor;
  v21 = [(HMDHH2AutoMigrationMonitor *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_homeManager, managerCopy);
    objc_storeStrong(&v22->_fmfHandler, handler);
    objc_storeStrong(&v22->_taskScheduler, scheduler);
    objc_storeStrong(&v22->_eligibilityChecker, checker);
    objc_storeStrong(&v22->_featuresDataSource, obj);
    objc_storeStrong(&v22->_logEventSubmitter, submitterCopy);
  }

  return v22;
}

- (HMDHH2AutoMigrationMonitor)initWithHomeManager:(id)manager eligibilityChecker:(id)checker
{
  checkerCopy = checker;
  managerCopy = manager;
  fmfHandler = [managerCopy fmfHandler];
  v9 = objc_alloc_init(HMDBackgroundSystemTaskScheduler);
  v10 = objc_alloc_init(HMDFeaturesDataSource);
  logEventSubmitter = [managerCopy logEventSubmitter];
  v12 = [(HMDHH2AutoMigrationMonitor *)self initWithHomeManager:managerCopy fmfHandler:fmfHandler backgroundTaskScheduler:v9 eligibilityChecker:checkerCopy featuresDataSource:v10 logEventSubmitter:logEventSubmitter];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28_151256 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28_151256, &__block_literal_global_151257);
  }

  v3 = logCategory__hmf_once_v29_151258;

  return v3;
}

uint64_t __41__HMDHH2AutoMigrationMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29_151258;
  logCategory__hmf_once_v29_151258 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end