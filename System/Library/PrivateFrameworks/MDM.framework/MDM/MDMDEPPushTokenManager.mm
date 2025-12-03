@interface MDMDEPPushTokenManager
- (BOOL)_queue_isSyncNeededWithAppToken:(id)token eligibleForMigration:(BOOL)migration shouldForce:(BOOL)force;
- (MDMDEPPushTokenManager)initWithPushServiceManager:(id)manager networkMonitor:(id)monitor;
- (id)_noPushTokenError;
- (id)_queue_deadlineToSync;
- (id)_queue_lastPushTokenHash;
- (id)_queue_lastSyncedEligibility;
- (id)_queue_lastestPushTokenHashToSync;
- (id)depPushToken;
- (void)_depPushReceived;
- (void)_migrationEligibilityChanged;
- (void)_queue_retryPushTokenSync;
- (void)_queue_scheduleAppTokenSync;
- (void)_queue_scheduleMandatoryDEPPushTokenSyncWithDelay:(double)delay reason:(id)reason isRetry:(BOOL)retry;
- (void)_queue_setDeadlineToSync:(id)sync;
- (void)_queue_setLastPushTokenHash:(id)hash;
- (void)_queue_setLastSyncedEligibility:(id)eligibility;
- (void)_queue_setLastestPushTokenHashToSync:(id)sync;
- (void)_queue_startMonitoringDEPPushTokenChange;
- (void)_queue_syncPushTokenShouldForce:(BOOL)force shouldScheduleRetry:(BOOL)retry reason:(id)reason backgroundTask:(id)task completionHandler:(id)handler;
- (void)pushServiceManager:(id)manager didReceiveAppToken:(id)token forTopic:(id)topic environment:(unint64_t)environment;
- (void)pushServiceManager:(id)manager didReceiveMessageForTopic:(id)topic userInfo:(id)info environment:(unint64_t)environment;
- (void)pushServiceManager:(id)manager didReceivePublicToken:(id)token forEnvironment:(unint64_t)environment;
- (void)scheduleMandatoryDEPPushTokenSyncWithRandomDelay:(BOOL)delay;
- (void)schedulePeriodicMandatoryDEPPushTokenSync;
- (void)startMonitoringDEPPushTokenChangeShouldForce:(BOOL)force;
- (void)syncDEPPushTokenWithDelay:(double)delay completion:(id)completion;
@end

@implementation MDMDEPPushTokenManager

- (MDMDEPPushTokenManager)initWithPushServiceManager:(id)manager networkMonitor:(id)monitor
{
  v31[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  monitorCopy = monitor;
  v29.receiver = self;
  v29.super_class = MDMDEPPushTokenManager;
  v9 = [(MDMDEPPushTokenManager *)&v29 init];
  if (v9)
  {
    v10 = dispatch_queue_create("MDMDEPPushTokenManager_worker_queue", 0);
    workerQueue = v9->_workerQueue;
    v9->_workerQueue = v10;

    objc_storeStrong(&v9->_pushServiceManager, manager);
    objc_storeStrong(&v9->_networkMonitor, monitor);
    v9->_syncInterval = 300.0;
    v12 = objc_alloc(MEMORY[0x277D03568]);
    v13 = MDMDEPTokenSyncPropertiesFilePath();
    v14 = [v12 initWithFilePath:v13 excludesFromBackup:1];
    syncInfoPlist = v9->_syncInfoPlist;
    v9->_syncInfoPlist = v14;

    v16 = objc_alloc(MEMORY[0x277D03568]);
    v17 = MDMDEPTokenSyncActivitiesFilePath();
    v18 = [v16 initWithFilePath:v17 excludesFromBackup:1];
    syncActivityPlist = v9->_syncActivityPlist;
    v9->_syncActivityPlist = v18;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = MDMDEPPushServiceDirectory();
    v22 = [defaultManager fileExistsAtPath:v21];

    if ((v22 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = MDMDEPPushServiceDirectory();
      v30 = *MEMORY[0x277CCA180];
      v31[0] = &unk_2868503B0;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      [defaultManager2 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:v25 error:0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__migrationEligibilityChanged name:*MEMORY[0x277D24600] object:0];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)startMonitoringDEPPushTokenChangeShouldForce:(BOOL)force
{
  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__MDMDEPPushTokenManager_startMonitoringDEPPushTokenChangeShouldForce___block_invoke;
  v6[3] = &unk_27982BB18;
  forceCopy = force;
  v6[4] = self;
  dispatch_async(workerQueue, v6);
}

void __71__MDMDEPPushTokenManager_startMonitoringDEPPushTokenChangeShouldForce___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  if ([v2 isSupervised] && (objc_msgSend(v2, "isTeslaEnrolled") & 1) != 0 || *(a1 + 40) == 1)
  {
    [*(a1 + 32) _queue_startMonitoringDEPPushTokenChange];
  }

  else
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: shouldSyncToken is NO.", v4, 2u);
    }

    [*(a1 + 32) _queue_setLastestPushTokenHashToSync:0];
  }
}

- (id)depPushToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MDMDEPPushTokenManager_depPushToken__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(workerQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__MDMDEPPushTokenManager_depPushToken__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)syncDEPPushTokenWithDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MDMDEPPushTokenManager_syncDEPPushTokenWithDelay_completion___block_invoke;
  block[3] = &unk_27982BB68;
  block[4] = self;
  v10 = completionCopy;
  delayCopy = delay;
  v8 = completionCopy;
  dispatch_async(workerQueue, block);
}

uint64_t __63__MDMDEPPushTokenManager_syncDEPPushTokenWithDelay_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSyncRequestCompletionHandler:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _queue_retryPushTokenSyncAfterInterval:1 shouldForce:0 shouldScheduleRetry:1 shouldCallCompletion:@"syncDEPPushTokenWithDelay:completion: called" reason:v3];
}

- (void)scheduleMandatoryDEPPushTokenSyncWithRandomDelay:(BOOL)delay
{
  v4 = 0;
  if (delay)
  {
    [(MDMDEPPushTokenManager *)self _randomDelay];
    v4 = v5;
  }

  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__MDMDEPPushTokenManager_scheduleMandatoryDEPPushTokenSyncWithRandomDelay___block_invoke;
  v7[3] = &unk_27982BB90;
  v7[4] = self;
  v7[5] = v4;
  dispatch_async(workerQueue, v7);
}

- (void)schedulePeriodicMandatoryDEPPushTokenSync
{
  [MEMORY[0x277D03500] depPushTokenPeriodicSyncIntervalWithDefaultValue:604800.0];
  v4 = v3;
  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__MDMDEPPushTokenManager_schedulePeriodicMandatoryDEPPushTokenSync__block_invoke;
  v6[3] = &unk_27982BB90;
  v6[5] = v4;
  v6[4] = self;
  dispatch_async(workerQueue, v6);
}

uint64_t __67__MDMDEPPushTokenManager_schedulePeriodicMandatoryDEPPushTokenSync__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: scheduling periodic DEP push token sync with delay: %.1f", &v6, 0xCu);
  }

  result = [*(a1 + 32) _queue_scheduleMandatoryDEPPushTokenSyncWithDelay:@"schedulePeriodicMandatoryDEPPushTokenSync called" reason:0 isRetry:*(a1 + 40)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_startMonitoringDEPPushTokenChange
{
  if (!-[MDMDEPPushTokenManager isMonitoringTokenChanges](self, "isMonitoringTokenChanges") && ([MEMORY[0x277D03538] isSharediPad] & 1) == 0)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Start monitoring for app push token changes...", v7, 2u);
    }

    [(MDMDEPPushTokenManager *)self setIsMonitoringTokenChanges:1];
    pushServiceManager = [(MDMDEPPushTokenManager *)self pushServiceManager];
    [pushServiceManager addPushServiceObserver:self];

    pushServiceManager2 = [(MDMDEPPushTokenManager *)self pushServiceManager];
    [pushServiceManager2 startListeningForDEPPushMessage];

    pushServiceManager3 = [(MDMDEPPushTokenManager *)self pushServiceManager];
    [pushServiceManager3 requestAppTokenForTopic:0x2868486F0 environment:0];
  }
}

- (void)_queue_syncPushTokenShouldForce:(BOOL)force shouldScheduleRetry:(BOOL)retry reason:(id)reason backgroundTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  appToken = [(MDMDEPPushTokenManager *)self appToken];
  if ([appToken length])
  {
    networkMonitor = [(MDMDEPPushTokenManager *)self networkMonitor];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke;
    v17[3] = &unk_27982BC08;
    v17[4] = self;
    forceCopy = force;
    v19 = handlerCopy;
    v18 = taskCopy;
    retryCopy = retry;
    [networkMonitor waitForNetworkWithCompletionHandler:v17];
  }

  else
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "MDMDEPPushTokenManager: Push token is not available.", buf, 2u);
    }

    _noPushTokenError = [(MDMDEPPushTokenManager *)self _noPushTokenError];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, _noPushTokenError);

    [taskCopy setCompleted];
  }
}

void __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_2;
  v3[3] = &unk_27982BC08;
  v3[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  v7 = *(a1 + 57);
  dispatch_async(v2, v3);
}

void __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) appToken];
  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  v4 = [v3 details];

  if ([MEMORY[0x277D034F8] isMigrationEligibilityReportEnabled])
  {
    v20 = 0;
    v5 = [MEMORY[0x277D031B0] isDeviceEligibleForMigrationWithExistingCloudConfig:v4 outReason:&v20];
    v6 = v20;
  }

  else
  {
    v5 = [MEMORY[0x277D034F8] isMDMMigrationEnabled];
    v6 = 0;
  }

  if ([*(a1 + 32) _queue_isSyncNeededWithAppToken:v2 eligibleForMigration:v5 shouldForce:*(a1 + 56)])
  {
    v7 = [v2 DMCSHA256Hash];
    [*(a1 + 32) _queue_setLastestPushTokenHashToSync:v7];
    v8 = objc_opt_new();
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v6;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Syncing DEP push token... reason: %{public}@, eligible for migration: %d", buf, 0x12u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_36;
    v13[3] = &unk_27982BBE0;
    v13[4] = *(a1 + 32);
    v14 = v2;
    v15 = v7;
    v16 = *(a1 + 40);
    v18 = *(a1 + 57);
    v19 = v5;
    v17 = *(a1 + 48);
    v10 = v7;
    [v8 syncDEPPushToken:v14 pushTopic:0x2868486F0 eligibleForMigration:v5 eligibilityDescription:v6 completionBlock:v13];
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: DEP push token sync is not necessary.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setCompleted];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_36(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) workerQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_2_37;
  v17[3] = &unk_27982BBB8;
  v23 = a2;
  v18 = v7;
  v19 = v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v24 = *(a1 + 72);
  *&v13 = v12;
  *(&v13 + 1) = *(a1 + 32);
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v20 = v14;
  v21 = v13;
  v22 = *(a1 + 64);
  v15 = v8;
  v16 = v7;
  dispatch_async(v9, v17);
}

uint64_t __118__MDMDEPPushTokenManager__queue_syncPushTokenShouldForce_shouldScheduleRetry_reason_backgroundTask_completionHandler___block_invoke_2_37(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    [*(a1 + 72) setSyncInterval:300.0];
    v2 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v29 = v3;
      _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Push token sync succeed. Response: %{public}@", buf, 0xCu);
    }

    [*(a1 + 72) _queue_setLastPushTokenHash:*(a1 + 56)];
    v4 = *(a1 + 72);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 90)];
    [v4 _queue_setLastSyncedEligibility:v5];

    v6 = objc_opt_new();
    v7 = *MEMORY[0x277D03318];
    v24[0] = @"Token";
    v24[1] = @"Token hash";
    v25 = vbslq_s8(vceqzq_s64(*(a1 + 48)), vdupq_n_s64(&stru_2868451F0), *(a1 + 48));
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:v24 count:2];
    [v6 logRegularEventForTopic:v7 reason:@"App Push Token Synced" details:v8];

    [*(a1 + 72) _queue_setDeadlineToSync:0];
    if (!*(a1 + 56) || ([*(a1 + 72) _queue_lastestPushTokenHashToSync], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToData:", *(a1 + 56)), v9, v10))
    {
      [*(a1 + 72) _queue_setLastestPushTokenHashToSync:0];
    }

    [*(a1 + 64) setCompleted];
    [*(a1 + 72) setRetryPushTokenSyncTask:0];
    if (*(a1 + 89) == 1)
    {
      [*(a1 + 72) schedulePeriodicMandatoryDEPPushTokenSync];
    }
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "MDMDEPPushTokenManager: Failed to upload push token with reponse: %{public}@, error: %{public}@", buf, 0x16u);
    }

    v14 = objc_opt_new();
    v15 = *MEMORY[0x277D03318];
    v16 = *(a1 + 40);
    v26[0] = @"Token";
    v26[1] = @"Token hash";
    v27 = vbslq_s8(vceqzq_s64(*(a1 + 48)), vdupq_n_s64(&stru_2868451F0), *(a1 + 48));
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:v26 count:2];
    [v14 logErrorEventForTopic:v15 reason:@"App Push Token Sync Failed" error:v16 details:v17];

    [*(a1 + 64) setCompleted];
    if (*(a1 + 89) == 1)
    {
      v18 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Retrying push token sync...", buf, 2u);
      }

      [*(a1 + 72) _queue_retryPushTokenSync];
    }
  }

  v19 = *(a1 + 88);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  result = (*(*(a1 + 80) + 16))();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_scheduleMandatoryDEPPushTokenSyncWithDelay:(double)delay reason:(id)reason isRetry:(BOOL)retry
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(MDMDEPPushTokenManager *)self isMonitoringTokenChanges])
  {
    v9 = [objc_alloc(MEMORY[0x277D03558]) initWithReason:@"Schedule mandatory DEP push token sync"];
    v10 = fmax(delay, 0.0);
    if (!retry)
    {
      _queue_deadlineToSync = [(MDMDEPPushTokenManager *)self _queue_deadlineToSync];
      v12 = _queue_deadlineToSync;
      if (_queue_deadlineToSync)
      {
        [_queue_deadlineToSync timeIntervalSinceNow];
        v14 = fmax(v13, 0.0);
      }

      else
      {
        v14 = 1.79769313e308;
      }

      if (v10 >= v14)
      {
        v10 = v14;
      }
    }

    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v10;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: scheduling mandatory DEP push token sync with delay: %.1f", &v18, 0xCu);
    }

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v10];
    [(MDMDEPPushTokenManager *)self _queue_setDeadlineToSync:v16];

    [(MDMDEPPushTokenManager *)self _queue_retryPushTokenSyncAfterInterval:1 shouldForce:1 shouldScheduleRetry:0 shouldCallCompletion:reasonCopy reason:v10];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleAppTokenSync
{
  _queue_lastPushTokenHash = [(MDMDEPPushTokenManager *)self _queue_lastPushTokenHash];
  _queue_deadlineToSync = [(MDMDEPPushTokenManager *)self _queue_deadlineToSync];
  if (_queue_deadlineToSync)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEBUG, "MDMDEPPushTokenManager: _scheduleAppTokenSync schedule forced sync due to deadline", buf, 2u);
    }

    [_queue_deadlineToSync timeIntervalSinceNow];
    v7 = fmax(v6, 0.0);
  }

  else if (_queue_lastPushTokenHash)
  {
    [(MDMDEPPushTokenManager *)self schedulePeriodicMandatoryDEPPushTokenSync];
    v7 = 0.0;
  }

  else
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_DEBUG, "MDMDEPPushTokenManager: _scheduleAppTokenSync schedule sync with random delay due to no deadline", v10, 2u);
    }

    [(MDMDEPPushTokenManager *)self _randomDelay];
    v7 = v9;
    [(MDMDEPPushTokenManager *)self _queue_setDeadlineToSync:0];
  }

  [(MDMDEPPushTokenManager *)self _queue_retryPushTokenSyncAfterInterval:_queue_deadlineToSync != 0 shouldForce:1 shouldScheduleRetry:0 shouldCallCompletion:@"Push token received" reason:v7];
}

- (void)_queue_retryPushTokenSync
{
  [(MDMDEPPushTokenManager *)self syncInterval];
  [(MDMDEPPushTokenManager *)self _queue_scheduleMandatoryDEPPushTokenSyncWithDelay:@"Push token sync failed" reason:1 isRetry:?];
  [(MDMDEPPushTokenManager *)self syncInterval];
  v4 = v3 + v3;
  if (v4 > 86400.0)
  {
    v4 = 86400.0;
  }

  [(MDMDEPPushTokenManager *)self setSyncInterval:v4];
}

void __125__MDMDEPPushTokenManager__queue_retryPushTokenSyncAfterInterval_shouldForce_shouldScheduleRetry_shouldCallCompletion_reason___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      v9 = [WeakRetained syncRequestCompletionHandler];

      if (v9)
      {
        v10 = [v8 syncRequestCompletionHandler];
        (v10)[2](v10, v11, v6);

        [v8 setSyncRequestCompletionHandler:0];
      }
    }
  }
}

void __125__MDMDEPPushTokenManager__queue_retryPushTokenSyncAfterInterval_shouldForce_shouldScheduleRetry_shouldCallCompletion_reason___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __125__MDMDEPPushTokenManager__queue_retryPushTokenSyncAfterInterval_shouldForce_shouldScheduleRetry_shouldCallCompletion_reason___block_invoke_2;
    block[3] = &unk_27982BC58;
    block[4] = v5;
    v11 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

- (BOOL)_queue_isSyncNeededWithAppToken:(id)token eligibleForMigration:(BOOL)migration shouldForce:(BOOL)force
{
  migrationCopy = migration;
  tokenCopy = token;
  _queue_lastPushTokenHash = [(MDMDEPPushTokenManager *)self _queue_lastPushTokenHash];
  dMCSHA256Hash = [tokenCopy DMCSHA256Hash];

  v11 = [dMCSHA256Hash isEqualToData:_queue_lastPushTokenHash];
  _queue_lastSyncedEligibility = [(MDMDEPPushTokenManager *)self _queue_lastSyncedEligibility];
  v13 = _queue_lastSyncedEligibility;
  if (_queue_lastSyncedEligibility)
  {
    bOOLValue = [_queue_lastSyncedEligibility BOOLValue];
    v15 = 1;
    if (v11)
    {
      if (((bOOLValue ^ migrationCopy) & 1) == 0 && !force)
      {
        v16 = *(DMCLogObjects() + 8);
        v15 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Nothing has changed since last sync", v18, 2u);
          v15 = 0;
        }
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_depPushReceived
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Received message from DEP server, fetching cloud config again...", v3, 2u);
  }

  MDMSendDEPPushReceivedNotification();
}

- (void)_migrationEligibilityChanged
{
  workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MDMDEPPushTokenManager__migrationEligibilityChanged__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

uint64_t __54__MDMDEPPushTokenManager__migrationEligibilityChanged__block_invoke(uint64_t a1)
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: migration eligibility might have changed, will check if we need to sync push token again...", v4, 2u);
  }

  return [*(a1 + 32) _queue_retryPushTokenSyncAfterInterval:0 shouldForce:1 shouldScheduleRetry:0 shouldCallCompletion:@"Migration eligibility changed" reason:0.0];
}

- (id)_queue_lastPushTokenHash
{
  v11 = *MEMORY[0x277D85DE8];
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v8 = 0;
  v3 = [syncInfoPlist retrieveValueForKey:@"LastPushTokenHash" error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to get lastPushTokenHash with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_queue_setLastPushTokenHash:(id)hash
{
  v12 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v9 = 0;
  [syncInfoPlist saveValue:hashCopy forKey:@"LastPushTokenHash" error:&v9];

  v6 = v9;
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Failed to set lastPushTokenHash with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setDeadlineToSync:(id)sync
{
  v12 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v9 = 0;
  [syncInfoPlist saveValue:syncCopy forKey:@"DeadlineToSync" error:&v9];

  v6 = v9;
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Failed to set deadlineToSync with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_queue_deadlineToSync
{
  v11 = *MEMORY[0x277D85DE8];
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v8 = 0;
  v3 = [syncInfoPlist retrieveValueForKey:@"DeadlineToSync" error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to get deadlineToSync with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_queue_setLastSyncedEligibility:(id)eligibility
{
  v12 = *MEMORY[0x277D85DE8];
  eligibilityCopy = eligibility;
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v9 = 0;
  [syncInfoPlist saveValue:eligibilityCopy forKey:@"LastSyncedEligibility" error:&v9];

  v6 = v9;
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Failed to set lastSyncedEligibility with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_queue_lastSyncedEligibility
{
  v11 = *MEMORY[0x277D85DE8];
  syncInfoPlist = [(MDMDEPPushTokenManager *)self syncInfoPlist];
  v8 = 0;
  v3 = [syncInfoPlist retrieveValueForKey:@"LastSyncedEligibility" error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to get lastSyncedEligibility with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_queue_setLastestPushTokenHashToSync:(id)sync
{
  v16[1] = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  syncActivityPlist = [(MDMDEPPushTokenManager *)self syncActivityPlist];
  v6 = syncActivityPlist;
  if (syncCopy)
  {
    v15 = @"LatestPushTokenHashToSync";
    v16[0] = syncCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = 0;
    [v6 saveKeyValuePairs:v7 error:&v11];
    v8 = v11;
  }

  else
  {
    v12 = 0;
    [syncActivityPlist clearAllKeyValueStorageWithError:&v12];
    v8 = v12;
  }

  if (v8)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Failed to set lastestPushTokenHash with error: %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_queue_lastestPushTokenHashToSync
{
  v11 = *MEMORY[0x277D85DE8];
  syncActivityPlist = [(MDMDEPPushTokenManager *)self syncActivityPlist];
  v8 = 0;
  v3 = [syncActivityPlist retrieveValueForKey:@"LatestPushTokenHashToSync" error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to get lastestPushTokenHash with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_noPushTokenError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12127 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)pushServiceManager:(id)manager didReceiveAppToken:(id)token forTopic:(id)topic environment:(unint64_t)environment
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  topicCopy = topic;
  v11 = topicCopy;
  if (!environment && [topicCopy isEqualToString:0x2868486F0])
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = tokenCopy;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMDEPPushTokenManager: Received app token for topic: %{public}@, appToken: %{public}@", buf, 0x16u);
    }

    workerQueue = [(MDMDEPPushTokenManager *)self workerQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__MDMDEPPushTokenManager_pushServiceManager_didReceiveAppToken_forTopic_environment___block_invoke;
    v15[3] = &unk_27982BAC8;
    v15[4] = self;
    v16 = tokenCopy;
    dispatch_async(workerQueue, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __85__MDMDEPPushTokenManager_pushServiceManager_didReceiveAppToken_forTopic_environment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appToken];
  v3 = [v2 isEqualToData:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setAppToken:*(a1 + 40)];
    v4 = *(a1 + 32);

    [v4 _queue_scheduleAppTokenSync];
  }
}

- (void)pushServiceManager:(id)manager didReceiveMessageForTopic:(id)topic userInfo:(id)info environment:(unint64_t)environment
{
  if (!environment && [topic isEqualToString:0x2868486F0])
  {

    [(MDMDEPPushTokenManager *)self _depPushReceived];
  }
}

- (void)pushServiceManager:(id)manager didReceivePublicToken:(id)token forEnvironment:(unint64_t)environment
{
  v11 = *MEMORY[0x277D85DE8];
  if (!environment)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[MDMDEPPushTokenManager pushServiceManager:didReceivePublicToken:forEnvironment:]";
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEBUG, "MDMDEPPushTokenManager: %s", &v9, 0xCu);
    }

    pushServiceManager = [(MDMDEPPushTokenManager *)self pushServiceManager];
    [pushServiceManager requestAppTokenForTopic:0x2868486F0 environment:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end