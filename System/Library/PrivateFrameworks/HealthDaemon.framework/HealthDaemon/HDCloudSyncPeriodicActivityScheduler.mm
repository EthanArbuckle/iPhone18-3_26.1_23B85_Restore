@interface HDCloudSyncPeriodicActivityScheduler
+ (void)registerDisabledPeriodicActivitiesForUnsupportedDaemon:(id)daemon;
+ (void)setupTaskGroupForRequest:(id)request;
- (BOOL)cellularThresholdPassed;
- (HDCloudSyncPeriodicActivityScheduler)initWithCoordinator:(id)coordinator behavior:(id)behavior;
- (__CFString)_reportingDescriptionForError:(void *)error;
- (double)_timeSinceLastSyncSuccess;
- (id)syncContextForBackgroundTask:(id)task periodicSyncType:(int64_t)type;
- (int64_t)periodicActivityErrorCount;
- (uint64_t)_periodicActivityShouldTreatSyncErrorAsSuccess:(uint64_t)success;
- (void)_configureRequest:(uint64_t)request;
- (void)_persistPeriodicSyncError:(uint64_t)error;
- (void)_queue_createActivities;
- (void)_resetIntervalForTask:(uint64_t)task;
- (void)daemonReady:(id)ready;
- (void)disablePeriodicActivities;
- (void)performPeriodicActivity:(void *)activity completion:;
- (void)setupPeriodicActivities;
- (void)unitTest_performPeriodicSyncWithCompletion:(id)completion;
- (void)updatePeriodicActivitesWithResult:(int64_t)result minimumRetryInterval:(double)interval error:(id)error;
- (void)updatePeriodicActivitiesWithSyncSuccess:(BOOL)success;
- (void)updatePeriodicActivityCriteria;
@end

@implementation HDCloudSyncPeriodicActivityScheduler

- (HDCloudSyncPeriodicActivityScheduler)initWithCoordinator:(id)coordinator behavior:(id)behavior
{
  coordinatorCopy = coordinator;
  behaviorCopy = behavior;
  v21.receiver = self;
  v21.super_class = HDCloudSyncPeriodicActivityScheduler;
  v8 = [(HDCloudSyncPeriodicActivityScheduler *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinator, coordinatorCopy);
    v10 = HKCreateSerialUtilityDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_behavior, behavior);
    v12 = [HDCloudSyncPlatformConfiguration alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_coordinator);
    daemon = [WeakRetained daemon];
    primaryProfile = [daemon primaryProfile];
    v16 = [(HDCloudSyncPlatformConfiguration *)v12 initWithPrimaryProfile:primaryProfile behavior:behaviorCopy];
    platformConfiguration = v9->_platformConfiguration;
    v9->_platformConfiguration = v16;

    v18 = objc_loadWeakRetained(&v9->_coordinator);
    daemon2 = [v18 daemon];
    [daemon2 registerDaemonReadyObserver:v9 queue:v9->_queue];
  }

  return v9;
}

+ (void)registerDisabledPeriodicActivitiesForUnsupportedDaemon:(id)daemon
{
  v3 = MEMORY[0x277D10B10];
  systemScheduler = [daemon systemScheduler];
  [v3 registerDisabledTaskWithName:@"com.apple.healthd.sync.cloud.periodic" scheduler:systemScheduler loggingCategory:*MEMORY[0x277CCC328]];
}

- (void)updatePeriodicActivityCriteria
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivityCriteria__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivityCriteria__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) getRequest];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v20 = 0;
  v4 = [WeakRetained canPerformCloudSyncWithError:&v20];
  v5 = v20;

  if (v4)
  {
    [(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _configureRequest:v2];
    v6 = *(*(a1 + 32) + 56);
    v18 = v5;
    [v6 updateRequest:v2 error:&v18];
    v7 = v18;

    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 138543618;
        v22 = v9;
        v23 = 2114;
        v24 = v7;
        v10 = "%{public}@: Failed to update periodic activity request: %{public}@";
LABEL_12:
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = MEMORY[0x277CCC328];
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync unavailable due to %{public}@, canceling periodic activity request", buf, 0x16u);
    }

    v14 = *(*(a1 + 32) + 56);
    v19 = 0;
    [v14 cancelRequestAndReturnError:&v19];
    v15 = v19;
    if (v15)
    {
      v7 = v15;
      _HKInitializeLogging();
      v8 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138543618;
        v22 = v17;
        v23 = 2114;
        v24 = v7;
        v10 = "%{public}@: Failed to cancel sync activity due to %{public}@ when sync is unavailable.";
        goto LABEL_12;
      }

LABEL_9:
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_configureRequest:(uint64_t)request
{
  v8 = a2;
  if (request)
  {
    [v8 setPriority:2];
    [v8 setRequiresExternalPower:0];
    [v8 setRequiresNetworkConnectivity:1];
    [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v8];
    identifier = [v8 identifier];

    if (identifier == @"com.apple.healthd.sync.cloud.periodic")
    {
      v6 = v8;
      [v6 setRequiresProtectionClass:2];
      [v6 setInterval:{objc_msgSend(*(request + 48), "baseIntervalForPeriodicSyncActivity")}];
      [v6 interval];
      [v6 setMinDurationBetweenInstances:v7 * 0.8];
      [v6 setPriority:{objc_msgSend(*(request + 48), "priorityForPeriodicSyncTask")}];
    }

    else
    {
      identifier2 = [v8 identifier];

      if (identifier2 != @"com.apple.healthd.sync.cloud.userRequestedBackup")
      {
LABEL_7:
        [v8 setRequiresInexpensiveNetworkConnectivity:{objc_msgSend(*(request + 48), "requireInexpensiveNetworking")}];
        goto LABEL_8;
      }

      v5 = v8;
      [v5 setPriority:2];
      [v5 setUserRequestedBackupTask:1];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)updatePeriodicActivitesWithResult:(int64_t)result minimumRetryInterval:(double)interval error:(id)error
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivitesWithResult_minimumRetryInterval_error___block_invoke;
  block[3] = &unk_278629F30;
  block[4] = self;
  block[5] = result;
  *&block[6] = interval;
  dispatch_async(queue, block);
}

void __101__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivitesWithResult_minimumRetryInterval_error___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1[5])
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = a1[6];
      v9 = 138543618;
      v10 = v3;
      v11 = 2050;
      v12 = v4;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring minimum retry interval of %{public}f when updating periodic activities.", &v9, 0x16u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = a1[4];
    v7 = *(v6 + 56);
    v8 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncPeriodicActivityScheduler *)v6 _resetIntervalForTask:v7];
  }
}

- (void)_resetIntervalForTask:(uint64_t)task
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (task)
  {
    v4 = *(task + 56);
    v17 = 0;
    [v4 cancelRequestAndReturnError:&v17];
    v5 = v17;
    if (v5)
    {
      v6 = v5;
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = v7;
      identifier = [v3 identifier];
      *buf = 138543618;
      taskCopy2 = task;
      v20 = 2114;
      v21 = identifier;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: failed to cancel background task request for %{public}@", buf, 0x16u);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CF07D8]);
      identifier2 = [v3 identifier];
      v8 = [v10 initWithIdentifier:identifier2];

      [(HDCloudSyncPeriodicActivityScheduler *)task _configureRequest:v8];
      v12 = *(task + 56);
      v16 = 0;
      [v12 submitRequest:v8 error:&v16];
      v6 = v16;
      if (!v6)
      {
        goto LABEL_7;
      }

      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      identifier = v13;
      identifier3 = [v3 identifier];
      *buf = 138543618;
      taskCopy2 = task;
      v20 = 2114;
      v21 = identifier3;
      _os_log_error_impl(&dword_228986000, identifier, OS_LOG_TYPE_ERROR, "%{public}@: failed to reset interval for background task %{public}@", buf, 0x16u);
    }

LABEL_7:
    goto LABEL_8;
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createActivities
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 24));
    if ([*(self + 48) shouldRegisterForPeriodicSyncActivities])
    {
      objc_initWeak(location, self);
      v2 = objc_alloc(MEMORY[0x277D10B10]);
      v3 = MEMORY[0x277CCC328];
      v4 = *MEMORY[0x277CCC328];
      WeakRetained = objc_loadWeakRetained((self + 8));
      daemon = [WeakRetained daemon];
      systemScheduler = [daemon systemScheduler];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke;
      v32[3] = &unk_278624EB0;
      objc_copyWeak(&v33, location);
      v8 = [v2 initWithName:@"com.apple.healthd.sync.cloud.periodic" loggingCategory:v4 scheduler:systemScheduler handler:v32 condition:0];
      v9 = *(self + 56);
      *(self + 56) = v8;

      v10 = objc_alloc(MEMORY[0x277D10B10]);
      v11 = *v3;
      v12 = objc_loadWeakRetained((self + 8));
      daemon2 = [v12 daemon];
      systemScheduler2 = [daemon2 systemScheduler];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke_2;
      v30[3] = &unk_278624EB0;
      objc_copyWeak(&v31, location);
      v15 = [v10 initWithName:@"com.apple.healthd.sync.cloud.userRequestedBackup" loggingCategory:v11 scheduler:systemScheduler2 handler:v30 condition:0];
      v16 = *(self + 32);
      *(self + 32) = v15;

      getRequest = [*(self + 32) getRequest];
      if (!getRequest)
      {
        v18 = objc_alloc(MEMORY[0x277CF07D8]);
        identifier = [*(self + 32) identifier];
        getRequest = [v18 initWithIdentifier:identifier];

        [(HDCloudSyncPeriodicActivityScheduler *)self _configureRequest:getRequest];
        [*(self + 32) submitRequest:getRequest error:0];
      }

      v20 = objc_alloc(MEMORY[0x277D10B00]);
      v21 = *v3;
      v22 = objc_loadWeakRetained((self + 8));
      daemon3 = [v22 daemon];
      systemScheduler3 = [daemon3 systemScheduler];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke_3;
      v28[3] = &unk_278620518;
      objc_copyWeak(&v29, location);
      v25 = [v20 initWithName:@"com.apple.healthd.sync.cloud.initial-restore.fastpass" loggingCategory:v21 scheduler:systemScheduler3 handler:v28];
      v26 = *(self + 40);
      *(self + 40) = v25;

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    else
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Skipping registering periodic sync activities for unsupported device", location, 2u);
      }
    }
  }
}

void __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDCloudSyncPeriodicActivityScheduler *)WeakRetained performPeriodicActivity:v6 completion:v5];
}

- (void)performPeriodicActivity:(void *)activity completion:
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  activityCopy = activity;
  if (self)
  {
    _HKInitializeLogging();
    v7 = MEMORY[0x277CCC328];
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v36 = 2114;
      v37 = v5;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Triggered to Perform Periodic Activity: %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(self + 1);
    daemon = [WeakRetained daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    [analyticsSubmissionCoordinator cloudSync_reportPeriodicSyncStartForType:0];

    Current = CFAbsoluteTimeGetCurrent();
    v13 = objc_loadWeakRetained(self + 1);
    v33 = 0;
    LOBYTE(analyticsSubmissionCoordinator) = [v13 markAllClientSyncRequestsAsInProgress:&v33];
    v14 = v33;

    if ((analyticsSubmissionCoordinator & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v36 = 2114;
        v37 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error marking all client sync requests in progress %{public}@", buf, 0x16u);
      }
    }

    v16 = objc_loadWeakRetained(self + 1);
    [v16 prepareAllProfilesForPeriodicSyncAndRestore];

    v17 = [self syncContextForBackgroundTask:v5 periodicSyncType:0];
    v18 = v17;
    if (v17)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __75__HDCloudSyncPeriodicActivityScheduler_performPeriodicActivity_completion___block_invoke;
      v27 = &unk_278629FD0;
      selfCopy3 = self;
      v29 = v17;
      v32 = Current;
      v30 = v5;
      v31 = activityCopy;
      v19 = [HDMaintenanceOperation maintenanceOperationWithName:@"Periodic Cloud Sync" asynchronousBlock:&v24];
      [v19 setFaultOnTimeout:{0, v24, v25, v26, v27, selfCopy3}];
      v20 = objc_loadWeakRetained(self + 1);
      daemon2 = [v20 daemon];
      maintenanceWorkCoordinator = [daemon2 maintenanceWorkCoordinator];
      [maintenanceWorkCoordinator enqueueMaintenanceOperation:v19];
    }

    else
    {
      (*(activityCopy + 2))(activityCopy, 0, 0);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDCloudSyncPeriodicActivityScheduler *)WeakRetained performPeriodicActivity:v6 completion:v5];
}

void __63__HDCloudSyncPeriodicActivityScheduler__queue_createActivities__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  v8 = v5;
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277CCC328];
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = WeakRetained;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync triggered to perform initial restore activity.", buf, 0xCu);
    }

    v11 = objc_loadWeakRetained(WeakRetained + 1);
    v31 = 0;
    v12 = [v11 markAllClientSyncRequestsAsInProgress:&v31];
    v13 = v31;

    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      v14 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = WeakRetained;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Error marking all client sync requests in progress %{public}@", buf, 0x16u);
      }
    }

    v15 = objc_loadWeakRetained(WeakRetained + 1);
    [v15 prepareAllProfilesForPeriodicSyncAndRestore];

    v29 = [objc_alloc(MEMORY[0x277CCD220]) initWithPush:1 pull:1];
    v28 = objc_alloc_init(MEMORY[0x277CCDA40]);
    v16 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:1 lite:0];
    v17 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v16 contextSyncRequest:v29 stateSyncRequest:v28 medicalIDSyncRequest:0 summarySharingSyncRequest:0];
    v18 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v17) reason:33 backgroundTask:v7];
    [v18 setSyncRequest:v17];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __73__HDCloudSyncPeriodicActivityScheduler_performInitialRestore_completion___block_invoke;
    v33 = &unk_278629F80;
    v34 = WeakRetained;
    v35 = v18;
    v36 = v7;
    v37 = v8;
    v19 = v18;
    v20 = [HDMaintenanceOperation maintenanceOperationWithName:@"FastPass restore sync" asynchronousBlock:buf];
    [v20 setFaultOnTimeout:0];
    v21 = v7;
    v22 = v8;
    v23 = objc_loadWeakRetained(WeakRetained + 1);
    [v23 daemon];
    v25 = v24 = v13;
    v26 = [v25 maintenanceWorkCoordinator];
    [v26 enqueueMaintenanceOperation:v20];

    v8 = v22;
    v7 = v21;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setupPeriodicActivities
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDCloudSyncPeriodicActivityScheduler_setupPeriodicActivities__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__HDCloudSyncPeriodicActivityScheduler_setupPeriodicActivities__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v10 = 0;
  v3 = [WeakRetained canPerformCloudSyncWithError:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v6 = [v5 syncStatusProvider];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__HDCloudSyncPeriodicActivityScheduler_setupPeriodicActivities__block_invoke_2;
    v9[3] = &unk_278613968;
    v9[4] = *(a1 + 32);
    [v6 updateCachedLastSyncDatesWithCompletion:v9];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Sync unavailable; setting up periodic activity with default values: %{public}@", buf, 0xCu);
    }

    [(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _queue_createActivities];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__HDCloudSyncPeriodicActivityScheduler_setupPeriodicActivities__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDCloudSyncPeriodicActivityScheduler_setupPeriodicActivities__block_invoke_3;
  block[3] = &unk_278613968;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)disablePeriodicActivities
{
  v3 = MEMORY[0x277D10B10];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  systemScheduler = [daemon systemScheduler];
  v7 = MEMORY[0x277CCC328];
  [v3 registerDisabledTaskWithName:@"com.apple.healthd.sync.cloud.periodic" scheduler:systemScheduler loggingCategory:*MEMORY[0x277CCC328]];

  v8 = MEMORY[0x277D10B10];
  v9 = objc_loadWeakRetained(&self->_coordinator);
  daemon2 = [v9 daemon];
  systemScheduler2 = [daemon2 systemScheduler];
  [v8 registerDisabledTaskWithName:@"com.apple.healthd.sync.cloud.userRequestedBackup" scheduler:systemScheduler2 loggingCategory:*v7];

  v12 = MEMORY[0x277D10B10];
  v15 = objc_loadWeakRetained(&self->_coordinator);
  daemon3 = [v15 daemon];
  systemScheduler3 = [daemon3 systemScheduler];
  [v12 registerDisabledTaskWithName:@"com.apple.healthd.sync.cloud.initial-restore.fastpass" scheduler:systemScheduler3 loggingCategory:*v7];
}

- (int64_t)periodicActivityErrorCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HDCloudSyncPeriodicActivityScheduler_periodicActivityErrorCount__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __66__HDCloudSyncPeriodicActivityScheduler_periodicActivityErrorCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) errorCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updatePeriodicActivitiesWithSyncSuccess:(BOOL)success
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivitiesWithSyncSuccess___block_invoke;
  v4[3] = &unk_278618990;
  successCopy = success;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __80__HDCloudSyncPeriodicActivityScheduler_updatePeriodicActivitiesWithSyncSuccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    [(HDCloudSyncPeriodicActivityScheduler *)v2 _resetIntervalForTask:?];
  }

  else
  {
    [v2 updatePeriodicActivityCriteria];
  }
}

void __73__HDCloudSyncPeriodicActivityScheduler_performInitialRestore_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Initial restore now starting from maintenance coordinator.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDCloudSyncPeriodicActivityScheduler_performInitialRestore_completion___block_invoke_322;
  v11[3] = &unk_278629F58;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = *(a1 + 56);
  v8 = v3;
  v9 = [WeakRetained syncAllProfilesWithContext:v7 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __73__HDCloudSyncPeriodicActivityScheduler_performInitialRestore_completion___block_invoke_322(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
LABEL_6:
    v7 = *(a1 + 32);
    if (v7)
    {
      dispatch_async(*(v7 + 24), &__block_literal_global_200);
    }

    goto LABEL_19;
  }

  if ([(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _periodicActivityShouldTreatSyncErrorAsSuccess:v5])
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Treating cloud sync error as success for periodic activity: %{public}@", &v14, 0x16u);
    }

    v5 = 0;
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:124 description:{@"Initial restore sync failed, but did not provide an error"}];
  }

  if ([*(a1 + 40) shouldDefer])
  {
    v8 = 2 * ([*(a1 + 40) expirationReason] != 1);
  }

  if (![v5 hk_isHealthKitError] || objc_msgSend(v5, "code") != 701)
  {
    v9 = [v5 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v10)
    {
      if ([v5 code] != 3)
      {
        [v5 code];
      }
    }
  }

  [(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _persistPeriodicSyncError:v5];
LABEL_19:
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained clearClientSyncRequestsQueue];

  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_periodicActivityShouldTreatSyncErrorAsSuccess:(uint64_t)success
{
  v3 = a2;
  v4 = v3;
  if (success)
  {
    success = [v3 hd_isCloudKitErrorQuotaExceeded];
  }

  return success;
}

- (void)_persistPeriodicSyncError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    v5 = *(error + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__HDCloudSyncPeriodicActivityScheduler__persistPeriodicSyncError___block_invoke;
    v6[3] = &unk_278613920;
    v6[4] = error;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __75__HDCloudSyncPeriodicActivityScheduler_performPeriodicActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HDCloudSyncPeriodicActivityScheduler_performPeriodicActivity_completion___block_invoke_2;
  v8[3] = &unk_278629FA8;
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v11 = v3;
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v6 = v3;
  v7 = [WeakRetained syncAllProfilesWithContext:v9 completion:v8];
}

void __75__HDCloudSyncPeriodicActivityScheduler_performPeriodicActivity_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
  if (a2)
  {
LABEL_6:
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = [WeakRetained daemon];
    v10 = [v9 analyticsSubmissionCoordinator];
    [v10 cloudSync_reportPeriodicSyncSuccessAfterDuration:0 type:v6];

    v11 = *(a1 + 32);
    v12 = 0.0;
    if (v11)
    {
      dispatch_async(*(v11 + 24), &__block_literal_global_200);
    }

    goto LABEL_22;
  }

  if ([(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _periodicActivityShouldTreatSyncErrorAsSuccess:v5])
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = 138543618;
      v25 = v23;
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Treating cloud sync error as success for periodic activity: %{public}@", &v24, 0x16u);
    }

    v5 = 0;
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:124 description:{@"Periodic sync failed, but did not provide an error"}];
  }

  v13 = [*(a1 + 40) backgroundTask];
  [v13 shouldDefer];

  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [v14 daemon];
  v16 = [v15 analyticsSubmissionCoordinator];
  [v16 cloudSync_reportPeriodicSyncFailureWithError:v5 duration:0 type:v6];

  v17 = [v5 domain];
  LODWORD(v15) = [v17 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v15)
  {
    v18 = [v5 userInfo];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

    objc_opt_class();
    v12 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      v12 = v20;
    }

    if ([v5 code] != 3)
    {
      [v5 code];
    }
  }

  else
  {
    v12 = 0.0;
    if ([v5 hk_isHealthKitError] && objc_msgSend(v5, "code") != 701 && objc_msgSend(v5, "hk_isDatabaseAccessibilityError"))
    {
      [*(*(a1 + 32) + 48) isConfiguredForLiteSync];
    }
  }

  [(HDCloudSyncPeriodicActivityScheduler *)*(a1 + 32) _persistPeriodicSyncError:v5];
LABEL_22:
  v21 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v21 clearClientSyncRequestsQueue];

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) setMinimumRetryInterval:v12];
  (*(*(a1 + 64) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)setupTaskGroupForRequest:(id)request
{
  requestCopy = request;
  [requestCopy setGroupName:@"com.apple.healthd.sync.cloud"];
  [requestCopy setGroupConcurrencyLimit:1];
}

- (id)syncContextForBackgroundTask:(id)task periodicSyncType:(int64_t)type
{
  v85 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v6 = taskCopy;
  if (*&self == 0.0)
  {
    goto LABEL_52;
  }

  getRequest = [taskCopy getRequest];
  v8 = getRequest;
  if (getRequest)
  {
    requiresInexpensiveNetworkConnectivity = [getRequest requiresInexpensiveNetworkConnectivity];
  }

  else
  {
    requiresInexpensiveNetworkConnectivity = 1;
  }

  if ([(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration requireInexpensiveNetworking]|| requiresInexpensiveNetworkConnectivity & 1 | ![(HDCloudSyncPeriodicActivityScheduler *)self cellularThresholdPassed])
  {

    v10 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v77 = 138543362;
      v78 = *&self;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cellular access requested for activity because cellular threshold has passed", &v77, 0xCu);
    }

    v10 = 1024;
  }

  if (![(_HKBehavior *)self->_behavior supportsPeriodicFullCloudSync])
  {
    goto LABEL_15;
  }

  Sync = [(HDCloudSyncPeriodicActivityScheduler *)self _timeSinceLastSyncSuccess];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  syncStatusProvider = [WeakRetained syncStatusProvider];
  syncStatus = [syncStatusProvider syncStatus];
  lastSuccessfulPullDate = [syncStatus lastSuccessfulPullDate];

  v17 = objc_loadWeakRetained(&self->_coordinator);
  syncStatusProvider2 = [v17 syncStatusProvider];
  syncStatus2 = [syncStatusProvider2 syncStatus];
  lastSuccessfulPushDate = [syncStatus2 lastSuccessfulPushDate];

  if (lastSuccessfulPullDate)
  {
    if (lastSuccessfulPushDate && Sync <= 28800.0)
    {
LABEL_15:
      v21 = objc_loadWeakRetained(&self->_coordinator);
      syncStatusProvider3 = [v21 syncStatusProvider];
      syncStatus3 = [syncStatusProvider3 syncStatus];

      if (![(_HKBehavior *)self->_behavior supportsPeriodicLiteCloudSync])
      {
LABEL_51:

        goto LABEL_52;
      }

      lastSuccessfulLitePushDate = [syncStatus3 lastSuccessfulLitePushDate];

      if (!lastSuccessfulLitePushDate)
      {

LABEL_41:
        isConfiguredForLiteSync = [(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration isConfiguredForLiteSync];
        v47 = [objc_alloc(MEMORY[0x277CCD220]) initWithPush:1 pull:1];
        if (isConfiguredForLiteSync)
        {
          v48 = objc_alloc_init(MEMORY[0x277CCDA40]);
          v49 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:-[HDCloudSyncPlatformConfiguration canLiteSyncPull](self->_platformConfiguration lite:{"canLiteSyncPull"), 1}];
        }

        else
        {
          v49 = 0;
          v48 = 0;
        }

        v50 = 32;
        goto LABEL_45;
      }

      if ([(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration shouldRestrictSyncInSleepFocus])
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v77 = 138543362;
          v78 = *&self;
          _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Device is in sleep focus mode, not triggering lite sync", &v77, 0xCu);
        }

        goto LABEL_51;
      }

      Current = CFAbsoluteTimeGetCurrent();
      [(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration liteSyncThreshold];
      v53 = v52;
      if ([(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration participateInCoordinatedSync])
      {
        v54 = objc_loadWeakRetained(&self->_coordinator);
        daemon = [v54 daemon];
        primaryProfile = [daemon primaryProfile];
        v57 = HDCloudSyncLastSuccessfulPushDateForCoordinatedSync(primaryProfile);

        if (v57)
        {
          [v57 timeIntervalSinceReferenceDate];
          v59 = Current - v58;
          if (Current - v58 < 3600.0)
          {
            _HKInitializeLogging();
            v73 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
            {
              v77 = 134217984;
              v78 = v59 / 60.0;
              _os_log_debug_impl(&dword_228986000, v73, OS_LOG_TYPE_DEBUG, "Skipping Lite Sync on Watch because paired phone last synced %f minutes ago", &v77, 0xCu);
            }

            goto LABEL_51;
          }
        }
      }

      lastSuccessfulPushDate2 = [syncStatus3 lastSuccessfulPushDate];
      [lastSuccessfulPushDate2 timeIntervalSinceReferenceDate];
      v62 = Current - v61;

      lastSuccessfulLitePushDate2 = [syncStatus3 lastSuccessfulLitePushDate];
      [lastSuccessfulLitePushDate2 timeIntervalSinceReferenceDate];
      v65 = Current - v64;

      if (v62 < v65)
      {
        v65 = v62;
      }

      if (v65 > v53)
      {
        goto LABEL_41;
      }

LABEL_52:
      _HKInitializeLogging();
      v74 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v44 = v74;
        identifier = [v6 identifier];
        v77 = 138543618;
        v78 = *&self;
        v79 = 2114;
        v80 = identifier;
        v46 = "%{public}@: Performing No-op for activity %{public}@";
        goto LABEL_54;
      }

      goto LABEL_55;
    }
  }

  v26 = objc_loadWeakRetained(&self->_coordinator);
  syncStatusProvider4 = [v26 syncStatusProvider];
  syncStatus4 = [syncStatusProvider4 syncStatus];
  lastSuccessfulPushDate3 = [syncStatus4 lastSuccessfulPushDate];

  v33 = 1;
  if (lastSuccessfulPushDate3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:lastSuccessfulPushDate3];
    v32 = v31;

    if (v32 < 7200.0)
    {
      v33 = 0;
    }
  }

  v34 = objc_loadWeakRetained(&self->_coordinator);
  syncStatusProvider5 = [v34 syncStatusProvider];
  syncStatus5 = [syncStatusProvider5 syncStatus];
  lastSuccessfulPullDate2 = [syncStatus5 lastSuccessfulPullDate];

  if (lastSuccessfulPullDate2)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:lastSuccessfulPullDate2];
    v40 = v39;

    v41 = v40 > 900.0;
    v42 = v40 > 900.0 || v33;
    if ((v42 & 1) == 0)
    {
      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        identifier = [v6 identifier];
        v77 = 138543618;
        v78 = *&self;
        v79 = 2114;
        v80 = identifier;
        v46 = "%{public}@: No Push and Pull required. Performing No-op for activity %{public}@";
LABEL_54:
        _os_log_impl(&dword_228986000, v44, OS_LOG_TYPE_DEFAULT, v46, &v77, 0x16u);
      }

LABEL_55:
      v68 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v41 = 1;
  }

  v47 = [objc_alloc(MEMORY[0x277CCD220]) initWithPush:1 pull:1];
  v48 = objc_alloc_init(MEMORY[0x277CCDA40]);
  v49 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:v33 pull:v41 lite:0];
  v50 = 0;
LABEL_45:
  v67 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v49 contextSyncRequest:v47 stateSyncRequest:v48 medicalIDSyncRequest:0 summarySharingSyncRequest:0];
  v68 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v67) | v10 reason:v50 backgroundTask:v6];
  [v68 setSyncRequest:v67];
  _HKInitializeLogging();
  v69 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v70 = v69;
    v71 = HKCloudSyncReasonToString();
    identifier2 = [v6 identifier];
    v77 = 138544130;
    v78 = *&self;
    v79 = 2114;
    v80 = v71;
    v81 = 2114;
    v82 = v68;
    v83 = 2114;
    v84 = identifier2;
    _os_log_impl(&dword_228986000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing %{public}@ with context %{public}@ for activity %{public}@", &v77, 0x2Au);
  }

LABEL_56:
  v75 = *MEMORY[0x277D85DE8];

  return v68;
}

- (__CFString)_reportingDescriptionForError:(void *)error
{
  v39 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCBDB0]];

  if (v3)
  {
    if ([errorCopy code] == 100)
    {
      userInfo = [errorCopy userInfo];
      v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v5)
      {
        v6 = [HDCloudSyncPeriodicActivityScheduler _reportingDescriptionForError:v5];
      }

      else
      {
        v25 = MEMORY[0x277CCACA8];
        userInfo2 = [errorCopy userInfo];
        v27 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
        v28 = v27;
        if (v27)
        {
          v6 = [v25 stringWithFormat:@"HealthKit Internal Failure: %@", v27];
        }

        else
        {
          v29 = [errorCopy description];
          v6 = [v25 stringWithFormat:@"HealthKit Internal Failure: %@", v29];
        }
      }

      goto LABEL_27;
    }

LABEL_19:
    v6 = [errorCopy description];
    goto LABEL_27;
  }

  domain2 = [errorCopy domain];
  v8 = *MEMORY[0x277CBBF50];
  v9 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v9 || [errorCopy code] != 2)
  {
    goto LABEL_19;
  }

  v33 = errorCopy;
  v10 = errorCopy;
  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"CloudKit Partial Error:"];
  v32 = v10;
  userInfo3 = [v10 userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v34 + 1) + 8 * v18);
      v20 = [v14 objectForKeyedSubscript:v19];
      domain3 = [v20 domain];
      v22 = [domain3 isEqualToString:v8];

      if (!v22)
      {
        goto LABEL_15;
      }

      code = [v20 code];
      if (code != 11)
      {
        break;
      }

LABEL_16:

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v16)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    if (code == 110)
    {

      v6 = @"Manatee Unavailable (Within CloudKit Partial Error)";
      goto LABEL_23;
    }

LABEL_15:
    v24 = [v20 description];
    [v11 appendFormat:@"\n\t%@ => %@", v19, v24];

    goto LABEL_16;
  }

LABEL_18:

  v6 = v11;
LABEL_23:

  errorCopy = v33;
LABEL_27:

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)cellularThresholdPassed
{
  Sync = [(HDCloudSyncPeriodicActivityScheduler *)self _timeSinceLastSyncSuccess];
  [(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration cellularSyncThreshold];
  return Sync > v4;
}

- (double)_timeSinceLastSyncSuccess
{
  if (!self)
  {
    return 0.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  WeakRetained = objc_loadWeakRetained((self + 8));
  syncStatusProvider = [WeakRetained syncStatusProvider];
  syncStatus = [syncStatusProvider syncStatus];
  lastSuccessfulPullDate = [syncStatus lastSuccessfulPullDate];

  v7 = objc_loadWeakRetained((self + 8));
  syncStatusProvider2 = [v7 syncStatusProvider];
  syncStatus2 = [syncStatusProvider2 syncStatus];
  lastSuccessfulPushDate = [syncStatus2 lastSuccessfulPushDate];

  v11 = objc_loadWeakRetained((self + 8));
  syncStatusProvider3 = [v11 syncStatusProvider];
  syncStatus3 = [syncStatusProvider3 syncStatus];
  lastSuccessfulLitePushDate = [syncStatus3 lastSuccessfulLitePushDate];

  [lastSuccessfulPushDate timeIntervalSinceReferenceDate];
  v16 = Current - v15;
  [lastSuccessfulLitePushDate timeIntervalSinceReferenceDate];
  v18 = Current - v17;
  if (v16 >= v18)
  {
    v16 = v18;
  }

  [lastSuccessfulPullDate timeIntervalSinceReferenceDate];
  v20 = Current - v19;
  if (v16 >= v20)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  return v21;
}

void __66__HDCloudSyncPeriodicActivityScheduler__persistPeriodicSyncError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_7;
  }

  v2 = [HDCloudSyncPeriodicActivityScheduler _reportingDescriptionForError:?];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 stringWithFormat:@"[%@] %@", v5, v3];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v7 stringArrayForKey:@"HDLongTimeWithoutSuccessfulCloudSyncPeriodicSyncErrorStrings"];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v9 insertObject:v6 atIndex:0];
      if ([v9 count] >= 0x1D)
      {
        [v9 removeLastObject];
      }
    }

    else
    {
      v14 = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    }

    [v7 setObject:v9 forKey:@"HDLongTimeWithoutSuccessfulCloudSyncPeriodicSyncErrorStrings"];
  }

  else
  {
LABEL_7:
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Skipping persistence of error: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __73__HDCloudSyncPeriodicActivityScheduler__resetPersistedPeriodicSyncErrors__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 removeObjectForKey:@"HDLongTimeWithoutSuccessfulCloudSyncPeriodicSyncErrorStrings"];
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(HDCloudSyncPlatformConfiguration *)self->_platformConfiguration shouldRegisterForPeriodicSyncActivities])
  {
    v4 = MEMORY[0x277D10B10];
    WeakRetained = objc_loadWeakRetained(&self->_coordinator);
    daemon = [WeakRetained daemon];
    systemScheduler = [daemon systemScheduler];
    [v4 registerDisabledTaskWithName:@"com.apple.healthd.sync.cloud.periodic" scheduler:systemScheduler loggingCategory:*MEMORY[0x277CCC328]];
  }
}

- (void)unitTest_performPeriodicSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  periodicSyncTask = self->_periodicSyncTask;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HDCloudSyncPeriodicActivityScheduler_unitTest_performPeriodicSyncWithCompletion___block_invoke;
  v7[3] = &unk_278614250;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HDCloudSyncPeriodicActivityScheduler *)&self->super.isa performPeriodicActivity:v7 completion:?];
}

@end