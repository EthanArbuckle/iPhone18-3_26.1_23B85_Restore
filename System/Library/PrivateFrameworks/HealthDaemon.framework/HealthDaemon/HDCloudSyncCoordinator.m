@interface HDCloudSyncCoordinator
- (BOOL)canPerformCloudSyncWithError:(id *)a3;
- (BOOL)markAllClientSyncRequestsAsInProgress:(id *)a3;
- (BOOL)scheduleSyncForAllProfilesViaGatedBackgroundTask:(BOOL)a3 context:(id)a4 reason:(id)a5 error:(id *)a6;
- (HDCloudSyncCoordinator)initWithDaemon:(id)a3;
- (HDDaemon)daemon;
- (double)nextCloudKitOperationDelay;
- (id)_mergeCloudSyncJournalsForProfile:(id)a3 taskTree:(id)a4;
- (id)_mergeCloudSyncJournalsWithTaskTree:(id)a3;
- (id)_primaryProfile;
- (id)_queue_syncProfilesWithIdentifiers:(void *)a3 context:(void *)a4 completion:;
- (id)addCloudSyncProgressCompletion:(id)a3;
- (id)diagnosticDescription;
- (id)fetchCloudDescriptionWithContext:(id)a3 updateCacheAndPrepareForSync:(BOOL)a4 completion:(id)a5;
- (id)mergeCloudSyncJournalsAndNotifyObservers:(id)a3 syncRequestCompleted:(id)a4 success:(BOOL)a5 error:(id)a6;
- (id)mergeCloudSyncJournalsWithCompletion:(id)a3;
- (id)progressOfActiveSyncTask;
- (id)resetAllProfilesWithContext:(id)a3 completion:(id)a4;
- (id)stateSyncDomainForSubscriptionIdentifier;
- (id)stateSyncEntityClasses;
- (id)syncAllProfilesWithContext:(id)a3 completion:(id)a4;
- (int64_t)compareTask:(id)a3 withTask:(id)a4 queue:(id)a5;
- (uint64_t)_setupSyncRequestWithContext:(void *)a3 reason:(void *)a4 error:;
- (void)_setupCloudSyncSupportIfRequired;
- (void)_syncAllProfilesViaGatedBackgroundTask:(void *)a3 completion:;
- (void)_syncAllProfilesViaGatedBackgroundTaskWithCompletion:(uint64_t)a1;
- (void)addObserver:(id)a3;
- (void)clearClientSyncRequestsQueue;
- (void)cloudSyncSupportStatusDidChange;
- (void)daemonReady:(id)a3;
- (void)databaseJournalMergeDidCompleteForProfile:(id)a3 type:(int64_t)a4;
- (void)dealloc;
- (void)delayNextCloudKitOperation:(double)a3;
- (void)invalidate;
- (void)notifyObservers:(id)a3 syncRequestCompleted:(id)a4 success:(BOOL)a5 error:(id)a6;
- (void)notifyObservers:(id)a3 syncRequestStarted:(id)a4 withProgress:(id)a5;
- (void)prepareAllProfilesForPeriodicSyncAndRestore;
- (void)profileDidBecomeReady:(id)a3;
- (void)scheduleSharedSummaryPushWithMaximumDelay:(double)a3;
- (void)syncAllProfilesViaGatedBackgroundTask:(BOOL)a3 context:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)unitTest_performClientGatedSyncActivity:(id)a3;
- (void)unitTest_setStateSyncEntityClasses:(id)a3;
@end

@implementation HDCloudSyncCoordinator

- (HDCloudSyncCoordinator)initWithDaemon:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = HDCloudSyncCoordinator;
  v5 = [(HDCloudSyncCoordinator *)&v34 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(HDCloudSyncManagerTaskQueue);
    syncTaskQueue = v6->_syncTaskQueue;
    v6->_syncTaskQueue = v9;

    [(HDCloudSyncManagerTaskQueue *)v6->_syncTaskQueue setDelegate:v6];
    v11 = [HDCloudSyncPeriodicActivityScheduler alloc];
    v12 = [(HDCloudSyncCoordinator *)v6 daemon];
    v13 = [v12 behavior];
    v14 = [(HDCloudSyncPeriodicActivityScheduler *)v11 initWithCoordinator:v6 behavior:v13];
    periodicActivityScheduler = v6->_periodicActivityScheduler;
    v6->_periodicActivityScheduler = v14;

    v16 = [HDCloudSyncAccountProvider alloc];
    v17 = [(HDCloudSyncCoordinator *)v6 daemon];
    v18 = [v17 behavior];
    v19 = [(HDCloudSyncAccountProvider *)v16 initWithCoordinator:v6 behavior:v18];
    accountProvider = v6->_accountProvider;
    v6->_accountProvider = v19;

    v21 = [HDCloudSyncStatusProvider alloc];
    v22 = [(HDCloudSyncCoordinator *)v6 daemon];
    v23 = [v22 behavior];
    v24 = [(HDCloudSyncStatusProvider *)v21 initWithCoordinator:v6 behavior:v23];
    syncStatusProvider = v6->_syncStatusProvider;
    v6->_syncStatusProvider = v24;

    v26 = [HDCloudSyncSubscriptionNotificationHandler alloc];
    v27 = [(HDCloudSyncCoordinator *)v6 daemon];
    v28 = [v27 behavior];
    v29 = [(HDCloudSyncSubscriptionNotificationHandler *)v26 initWithCoordinator:v6 behavior:v28];
    subscriptionNotificationHandler = v6->_subscriptionNotificationHandler;
    v6->_subscriptionNotificationHandler = v29;

    v31 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v31 addObject:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    [WeakRetained registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)daemonReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v5 = [WeakRetained primaryProfile];
  v6 = [v5 database];
  [v6 addDatabaseJournalMergeObserver:self journalType:2 queue:self->_queue];

  v8 = objc_loadWeakRetained(&self->_daemon);
  v7 = [v8 primaryProfile];
  [v7 registerProfileReadyObserver:self queue:self->_queue];
}

- (void)profileDidBecomeReady:(id)a3
{
  v25 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
  v4 = objc_alloc(MEMORY[0x277CCD738]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = MEMORY[0x277CCC328];
  v8 = [v4 initWithName:v6 loggingCategory:*MEMORY[0x277CCC328]];
  observers = self->_observers;
  self->_observers = v8;

  v10 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.healthd.sync.client.request"];
  [v10 setRequiresProtectionClass:4];
  [v10 setRequiresNetworkConnectivity:1];
  [v10 setRequiresBuddyComplete:1];
  [v10 setPriority:2];
  [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v10];
  _HKInitializeLogging();
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277D10B08]);
  v12 = *v7;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v14 = [WeakRetained systemScheduler];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke;
  v28[3] = &unk_2786194C8;
  objc_copyWeak(&v29, &location);
  v15 = [v11 initWithDefaultRequest:v10 loggingCategory:v12 scheduler:v14 handler:v28];
  clientGatedSyncBackgroundTask = self->_clientGatedSyncBackgroundTask;
  self->_clientGatedSyncBackgroundTask = v15;

  v17 = [objc_alloc(MEMORY[0x277D10AD0]) initWithAvailableQuota:3 maximumQuota:3 refillInterval:1800.0 minimumInterval:60.0 lastTrigger:0.0];
  [(HDOneShotBackgroundTask *)self->_clientGatedSyncBackgroundTask setQuota:v17];

  v18 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.healthd.sync.cloud.summary.push"];
  [v18 setRequiresProtectionClass:1];
  [v18 setRequiresNetworkConnectivity:1];
  [v18 setPriority:2];
  [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v18];
  v19 = objc_alloc(MEMORY[0x277D10B08]);
  v20 = *MEMORY[0x277CCC328];
  v21 = objc_loadWeakRetained(&self->_daemon);
  v22 = [v21 systemScheduler];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke_2;
  v26[3] = &unk_2786194C8;
  objc_copyWeak(&v27, &location);
  v23 = [v19 initWithDefaultRequest:v18 loggingCategory:v20 scheduler:v22 handler:v26];
  sharedSummaryPushBackgroundTask = self->_sharedSummaryPushBackgroundTask;
  self->_sharedSummaryPushBackgroundTask = v23;

  [(HDOneShotBackgroundTask *)self->_sharedSummaryPushBackgroundTask setRescheduleWhileRunning:1];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_setupCloudSyncSupportIfRequired
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 168));
    v3 = [WeakRetained behavior];
    v4 = [v3 supportsCloudSync];

    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel__setupCloudSyncSupportIfRequired);
      v8 = v7;
      v9 = @"NO";
      *v12 = 138543874;
      *&v12[4] = a1;
      *&v12[12] = 2114;
      if (v4)
      {
        v9 = @"YES";
      }

      *&v12[14] = v7;
      *&v12[22] = 2114;
      v13 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ : %{public}@", v12, 0x20u);
    }

    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 15) == 1 && *(a1 + 14) == v4)
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      *(a1 + 15) = 1;
      *(a1 + 14) = v4;
      os_unfair_lock_unlock((a1 + 8));
      if (v4)
      {
        v10 = *(a1 + 128);
        *v12 = MEMORY[0x277D85DD0];
        *&v12[8] = 3221225472;
        *&v12[16] = __49__HDCloudSyncCoordinator__enableCloudSyncSupport__block_invoke;
        v13 = &unk_278613968;
        v14 = a1;
        dispatch_async(v10, v12);
      }

      else
      {
        [*(a1 + 152) disablePeriodicActivities];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDCloudSyncCoordinator *)WeakRetained _syncAllProfilesViaGatedBackgroundTaskWithCompletion:v4];
}

- (void)_syncAllProfilesViaGatedBackgroundTaskWithCompletion:(uint64_t)a1
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v31 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__41;
    v35 = __Block_byref_object_dispose__41;
    v36 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 168));
    v5 = [WeakRetained primaryProfile];
    v6 = [v5 database];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __78__HDCloudSyncCoordinator__computeCoalescedSyncContext_coalescedRequest_error___block_invoke;
    v32[3] = &unk_278618610;
    v32[4] = buf;
    v7 = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:v6 error:&v31 block:v32];

    if (v7)
    {
      v8 = [HDCloudSyncContext alloc];
      v9 = [(HDCloudSyncContext *)v8 initForPurpose:0 options:HDOptionsForRequest(*(*&buf[8] + 40)) reason:1 backgroundTask:*(a1 + 80)];
      [v9 setSyncRequest:*(*&buf[8] + 40)];
      v10 = v9;
      v11 = *(*&buf[8] + 40);
      v12 = v11;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    _Block_object_dispose(buf, 8);

    v13 = v9;
    v14 = v11;
    v15 = v31;
    v16 = v15;
    if (v7)
    {
      v17 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:2];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __79__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTaskWithCompletion___block_invoke;
      v26 = &unk_278619590;
      v27 = a1;
      v18 = v14;
      v28 = v18;
      v29 = v17;
      v30 = v3;
      v19 = v17;
      v20 = [a1 syncAllProfilesWithContext:v13 completion:&v23];
      [v19 addChild:v20 withPendingUnitCount:{1, v23, v24, v25, v26, v27}];
      [a1 notifyObservers:*(a1 + 88) syncRequestStarted:v18 withProgress:v19];
    }

    else
    {
      if (v15)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Error fetching computing coalesced sync context %@", buf, 0x16u);
        }
      }

      (*(v3 + 2))(v3, 0, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 21);
    v7 = [v6 behavior];
    v8 = [v7 supportsSharedSummarySync];

    if (v8)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 21);
      v10 = [v9 profileManager];
      v11 = [v10 allProfileIdentifiers];
      v12 = [v11 hk_firstObjectPassingTest:&__block_literal_global_487];

      if (v12)
      {
        v13 = objc_loadWeakRetained(WeakRetained + 21);
        v14 = [v13 profileManager];
        v15 = [v14 profileForIdentifier:v12];

        v16 = [v15 cloudSyncManager];
        v17 = [v16 sharedSummaryManager];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v23 = __61__HDCloudSyncCoordinator__pushSharedSummariesWithCompletion___block_invoke_2;
        v24 = &unk_2786130D8;
        v25 = v5;
        v18 = [v17 push:&buf];
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to push shared summaries. Primary profile not found."];
        (*(v5 + 2))(v5, 1, v15);
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = WeakRetained;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Device ineligible for pushing shared summaries", &buf, 0xCu);
      }

      (*(v5 + 2))(v5, 0, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cloudSyncSupportStatusDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v4 = [WeakRetained behavior];
  [v4 resetSupportsCloudSync];

  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
}

- (void)dealloc
{
  [(HDCloudSyncCoordinator *)self invalidate];
  observers = self->_observers;
  self->_observers = 0;

  v4.receiver = self;
  v4.super_class = HDCloudSyncCoordinator;
  [(HDCloudSyncCoordinator *)&v4 dealloc];
}

- (void)invalidate
{
  [(HKObserverSet *)self->_observers unregisterAllObservers];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v4 = [WeakRetained primaryProfile];
  v5 = [v4 database];
  [v5 removeDatabaseJournalMergeObserver:self journalType:2];

  v6 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v6 removeObject:self];
}

- (double)nextCloudKitOperationDelay
{
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock(&self->_lock);
  v4 = fmax(self->_lock_nextAvailableOperationStartTime - Current, 0.0);
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)delayNextCloudKitOperation:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  lock_nextAvailableOperationStartTime = Current + a3;
  os_unfair_lock_lock(&self->_lock);
  if (Current + a3 < self->_lock_nextAvailableOperationStartTime)
  {
    lock_nextAvailableOperationStartTime = self->_lock_nextAvailableOperationStartTime;
  }

  self->_lock_nextAvailableOperationStartTime = lock_nextAvailableOperationStartTime;
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = v7;
    v10 = [[v8 alloc] initWithTimeIntervalSinceReferenceDate:lock_nextAvailableOperationStartTime];
    v12 = 138544130;
    v13 = self;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = lock_nextAvailableOperationStartTime - Current;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: CloudKit operation delay of %0.2lfs requested; next available operation start is in %0.2lfs at %{public}@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)scheduleSyncForAllProfilesViaGatedBackgroundTask:(BOOL)a3 context:(id)a4 reason:(id)a5 error:(id *)a6
{
  v7 = a3;
  v15 = 0;
  v9 = [(HDCloudSyncCoordinator *)&self->super.isa _setupSyncRequestWithContext:a4 reason:a5 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTask:v7 completion:&__block_literal_global_46];
  }

  else
  {
    v12 = v10;
    if (v12)
    {
      if (a6)
      {
        v13 = v12;
        *a6 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9;
}

- (uint64_t)_setupSyncRequestWithContext:(void *)a3 reason:(void *)a4 error:
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_37;
  }

  v9 = v7;
  if ([v9 reason] == 1)
  {
    v10 = [a1[19] platformConfiguration];
    v11 = [v10 isConfiguredForLiteSync];

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v44 = v24;
        [v9 reason];
        v45 = HKCloudSyncReasonToString();
        *buf = 138543618;
        v50 = a1;
        v51 = 2114;
        v52 = v45;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@: Incoming sync request with reason: %{public}@ is disabled because no iPad is present in context", buf, 0x16u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = @"Sync requests disabled because no iPad is present in context";
      goto LABEL_13;
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 21);
  v13 = [WeakRetained behavior];
  v14 = [v13 supportsBackgroundSyncRequests];

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [v9 reason];
      v21 = HKCloudSyncReasonToString();
      *buf = 138543618;
      v50 = a1;
      v51 = 2114;
      v52 = v21;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Incoming sync request with reason: %{public}@. Sync requests disabled by behavior", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Sync requests disabled by behavior";
LABEL_13:
    v25 = [v22 hk_error:111 description:v23];
    v17 = v25;
    if (v25)
    {
      v26 = v25;
    }

    goto LABEL_16;
  }

  v48 = 0;
  v15 = [a1 canPerformCloudSyncWithError:&v48];
  v16 = v48;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v39 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v50 = a1;
    v51 = 2114;
    v52 = v9;
    v53 = 2114;
    v54 = v16;
    _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ \n Sync requested on client gated activity, but is not permitted. %{public}@", buf, 0x20u);
  }

  v40 = v16;
  v17 = v40;
  if (v40)
  {
    v41 = v40;
    v16 = v17;
    goto LABEL_17;
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  v18 = 0;
LABEL_18:

  v27 = v17;
  v28 = v27;
  if ((v18 & 1) == 0)
  {
    v34 = v27;
    if (v34)
    {
      if (a4)
      {
        v36 = v34;
        *a4 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_35;
  }

  v46 = a4;
  v29 = [v9 syncRequest];
  v30 = [MEMORY[0x277CBEAA8] date];
  v31 = objc_loadWeakRetained(a1 + 21);
  v32 = [v31 primaryProfile];
  v47 = v28;
  v33 = [HDCachedSyncRequestEntity insertSyncRequest:v29 reason:v8 date:v30 profile:v32 error:&v47];
  v34 = v47;

  if (!v33)
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v50 = a1;
      v51 = 2114;
      v52 = v34;
      _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting sync request %{public}@", buf, 0x16u);
    }

    v34 = v34;
    if (v34)
    {
      if (v46)
      {
        v38 = v34;
        *v46 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_35:

    v35 = 0;
    goto LABEL_36;
  }

  v35 = 1;
LABEL_36:

LABEL_37:
  v42 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)_syncAllProfilesViaGatedBackgroundTask:(void *)a3 completion:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 80);
    if (a2)
    {
      v16 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTask_completion___block_invoke;
      v14[3] = &unk_278614250;
      v8 = &v15;
      v15 = v5;
      v9 = &v16;
      [v7 submitRequestWithMaximumDelay:&v16 error:v14 completion:1800.0];
    }

    else
    {
      v13 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTask_completion___block_invoke_2;
      v11[3] = &unk_278614250;
      v8 = &v12;
      v12 = v5;
      v9 = &v13;
      [v7 runImmediatelyAndReturnError:&v13 completion:v11];
    }

    v10 = *v9;

    if (v10)
    {
      (v6)[2](v6, 0, v10);
    }
  }
}

- (void)syncAllProfilesViaGatedBackgroundTask:(BOOL)a3 context:(id)a4 reason:(id)a5 completion:(id)a6
{
  v8 = a3;
  v12 = 0;
  v10 = a6;
  LOBYTE(a4) = [(HDCloudSyncCoordinator *)&self->super.isa _setupSyncRequestWithContext:a4 reason:a5 error:&v12];
  v11 = v12;
  if (a4)
  {
    [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTask:v8 completion:v10];
  }

  else
  {
    (*(v10 + 2))(v10, 0, v11);
  }
}

- (id)syncAllProfilesWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HDCloudSyncCoordinator_syncAllProfilesWithContext_completion___block_invoke;
  v13[3] = &unk_2786194F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __64__HDCloudSyncCoordinator_syncAllProfilesWithContext_completion___block_invoke(uint64_t a1)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    [*(v2 + 160) checkLastSyncDate];
    v53 = 0;
    v6 = [v2 canPerformCloudSyncWithError:&v53];
    v7 = v53;
    v8 = v7;
    if (v6)
    {
      v46 = v7;
      dispatch_assert_queue_V2(*(v2 + 128));
      v9 = [(HDCloudSyncCoordinator *)v2 _primaryProfile];
      v10 = HDCloudSyncRestorePhaseSyncCompleteStartDate(v9);
      v11 = [*(v2 + 160) lastSuccessfulPullDate];
      v12 = v11 | v10;

      if (!v12)
      {
        v13 = [MEMORY[0x277CBEAA8] now];
        HDSetCloudSyncRestorePhaseSyncCompleteStartDate(v13, v9);
      }

      v14 = kHDEventNameCloudSync;
      v62[0] = @"reason";
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reason")}];
      v62[1] = @"options";
      v63[0] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "options")}];
      v63[1] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      HDPowerLog(v14, v17, 1);

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = HKDiagnosticStringFromDate();
      v21 = [v18 stringWithFormat:@"%@, date=%@", v4, v20];
      v22 = *(v2 + 48);
      *(v2 + 48) = v21;

      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v2 + 48);
        *buf = 138543618;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: start syncAllProfiles: %{public}@", buf, 0x16u);
      }

      v25 = _HKLogPersistedSignposts();
      v26 = _HKLogSignpostIDGenerate();

      _HKInitializeLogging();
      v27 = _HKLogPersistedSignposts();
      v28 = os_signpost_enabled(v27);

      if (v28)
      {
        v29 = _HKLogPersistedSignposts();
        v30 = v29;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 138543362;
          *&buf[4] = v4;
          _os_signpost_emit_with_name_impl(&dword_228986000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v26, "cloud-sync", " enableTelemetry=YES %{public}@", buf, 0xCu);
        }
      }

      v31 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v2 activityName:@"Sync"];
      v33 = (v2 + 32);
      v32 = *(v2 + 32);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke;
      v55 = &unk_278619518;
      v56 = v2;
      v61 = v32 == 0;
      v48 = v4;
      v34 = v4;
      v57 = v34;
      v60 = v26;
      v35 = v31;
      v58 = v35;
      v47 = v5;
      v59 = v5;
      v36 = _Block_copy(buf);
      WeakRetained = objc_loadWeakRetained((v2 + 168));
      v38 = [WeakRetained profileManager];
      v39 = [v38 allProfileIdentifiers];

      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_378;
      v49[3] = &unk_278619540;
      v40 = v36;
      v52 = v40;
      v49[4] = v2;
      v41 = v39;
      v50 = v41;
      v51 = v34;
      v2 = [(HDCloudSyncCoordinator *)v2 _queue_syncProfilesWithIdentifiers:v41 context:v51 completion:v49];
      if (!v32)
      {
        objc_storeStrong(v33, v2);
      }

      v5 = v47;
      v4 = v48;
      v8 = v46;
    }

    else
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync triggered, but is not permitted. %{public}@", buf, 0x16u);
      }

      (*(v5 + 2))(v5, 0, v8);
      v2 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
    }
  }

  v43 = *(*(a1 + 56) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v2;
  v45 = *MEMORY[0x277D85DE8];
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 128);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2;
  block[3] = &unk_278614228;
  v16 = *(a1 + 72);
  block[4] = v7;
  v17 = a2;
  v11 = v6;
  v12 = v5;
  v15 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v8, block);
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;

    v4 = *(*(a1 + 32) + 40);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    v4 = 0;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = HKDiagnosticStringFromDate();
  v11 = v10;
  v12 = @"NO";
  if (*(a1 + 81))
  {
    v12 = @"YES";
  }

  v13 = [v7 stringWithFormat:@"%@, date=%@, success=%@, error=%@", v8, v10, v12, *(a1 + 48)];
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = v13;

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 56);
    *buf = 138543618;
    v48 = v17;
    v49 = 2114;
    v50 = v18;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: finish syncAllProfiles: %{public}@", buf, 0x16u);
  }

  v19 = kHDEventNameCloudSync;
  v45[0] = @"reason";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "reason")}];
  v46[0] = v20;
  v45[1] = @"options";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "options")}];
  v46[1] = v21;
  v45[2] = @"result";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 81)];
  v46[2] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  HDPowerLog(v19, v23, 3);

  _HKInitializeLogging();
  v24 = _HKLogPersistedSignposts();
  LODWORD(v19) = os_signpost_enabled(v24);

  if (v19)
  {
    v25 = _HKLogPersistedSignposts();
    v26 = v25;
    v27 = *(a1 + 72);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = *(a1 + 40);
      v29 = *(a1 + 81);
      *buf = 138543618;
      v48 = v28;
      v49 = 1024;
      LODWORD(v50) = v29;
      _os_signpost_emit_with_name_impl(&dword_228986000, v26, OS_SIGNPOST_INTERVAL_END, v27, "cloud-sync", " enableTelemetry=YES %{public}@, success=%{BOOL}d", buf, 0x12u);
    }
  }

  [*(a1 + 56) invalidate];
  [*(*(a1 + 32) + 152) updatePeriodicActivitiesWithSyncSuccess:*(a1 + 81)];
  v30 = *(a1 + 81);
  v31 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = v4;
  v33 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(a1 + 81);
        v38 = *(a1 + 48);
        (*(*(*(&v40 + 1) + 8 * v36++) + 16))();
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v34);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_378(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
    v7 = [WeakRetained profileManager];
    v8 = [v7 allProfileIdentifiers];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2_379;
    v16[3] = &unk_278615BC8;
    v17 = *(a1 + 40);
    v9 = [v8 hk_filter:v16];

    if ([v9 count])
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 128);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_3;
      block[3] = &unk_278613680;
      block[4] = v10;
      v13 = v9;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v11, block);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_queue_syncProfilesWithIdentifiers:(void *)a3 context:(void *)a4 completion:
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v31 = a3;
  v8 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 128));
    if ([v7 count])
    {
      v9 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke;
      v41[3] = &unk_278619568;
      v41[4] = a1;
      v25 = v8;
      v42 = v8;
      [v9 setDidFinish:v41];
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v45 = v7;
        v46 = 2114;
        v47 = v31;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling cloud sync for profiles %{public}@: %{public}@", buf, 0x16u);
      }

      v30 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v7, "count")}];
      [v9 beginTask];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v7;
      obj = v7;
      v32 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v32)
      {
        v29 = *v38;
        v27 = a1;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v37 + 1) + 8 * i);
            [v9 beginTask];
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v34 = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_383;
            v35 = &unk_2786130B0;
            v36 = v9;
            v13 = v12;
            v14 = v31;
            v15 = v33;
            if (!v13)
            {
              v22 = [MEMORY[0x277CCA890] currentHandler];
              [v22 handleFailureInMethod:sel__syncProfile_context_completion_ object:v27 file:@"HDCloudSyncCoordinator.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

              a1 = v27;
            }

            WeakRetained = objc_loadWeakRetained((a1 + 168));
            v17 = [WeakRetained profileManager];
            v18 = [v17 profileForIdentifier:v13];

            if (v18 && ([a1 shouldSyncProfile:v18] & 1) != 0)
            {
              v19 = [v18 cloudSyncManager];
              v20 = v19;
              if (v19)
              {
                [v19 syncWithContext:v14 completion:v15];
              }

              else
              {
                (v34)(v15, 1, 0);
                [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
              }
              v21 = ;

              a1 = v27;
            }

            else
            {
              (v34)(v15, 1, 0);
              v21 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
            }

            [v30 addChild:v21 withPendingUnitCount:1];
          }

          v32 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v32);
      }

      [v9 finishTask];
      v8 = v25;
      v7 = v26;
    }

    else
    {
      (*(v8 + 2))(v8, 1, 0);
      v30 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
    }
  }

  else
  {
    v30 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v30;
}

void __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  v7 = *(*(a1 + 32) + 160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_2;
  v10[3] = &unk_278616460;
  v13 = a3;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [v7 updateCachedLastSyncDatesWithCompletion:v10];
}

void __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 1, 0);
  }

  else
  {
    v4 = [*(a1 + 32) firstObject];
    (*(v1 + 16))(v1, 0, v4);
  }
}

uint64_t __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_383(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

BOOL __78__HDCloudSyncCoordinator__computeCoalescedSyncContext_coalescedRequest_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [HDCachedSyncRequestEntity fetchCoalescedSyncRequest:&obj transaction:v5 error:a3];
  objc_storeStrong((v6 + 40), obj);
  v8 = v7 && [HDCachedSyncRequestEntity markPendingRequestsAsInProgress:v5 error:a3];

  return v8;
}

void __79__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTaskWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[11];
  v8 = a3;
  v9 = [v5 mergeCloudSyncJournalsAndNotifyObservers:v7 syncRequestCompleted:v6 success:a2 error:v8];
  [*(a1 + 48) addChild:v9 withPendingUnitCount:1];
  [*(a1 + 32) clearClientSyncRequestsQueue];
  (*(*(a1 + 56) + 16))();
}

- (void)clearClientSyncRequestsQueue
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v4 = [WeakRetained primaryProfile];
  v11 = 0;
  v5 = [HDCachedSyncRequestEntity clearInProgressSyncRequests:v4 error:&v11];
  v6 = v11;

  v7 = MEMORY[0x277CCC328];
  if (!v5)
  {
    _HKInitializeLogging();
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error clearing all in progress sync requests %@", buf, 0x16u);
    }
  }

  _HKInitializeLogging();
  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing client sync request queue", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)markAllClientSyncRequestsAsInProgress:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v5 = [WeakRetained primaryProfile];
  v6 = [v5 database];
  LOBYTE(a3) = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:v6 error:a3 block:&__block_literal_global_400];

  return a3;
}

- (void)prepareAllProfilesForPeriodicSyncAndRestore
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v3 = [WeakRetained profileManager];

  v4 = [v3 allProfileIdentifiers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 profileForIdentifier:*(*(&v12 + 1) + 8 * v8)];
        v10 = [v9 cloudSyncManager];
        [v10 prepareForPeriodicSync];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)resetAllProfilesWithContext:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke;
  v42[3] = &unk_2786152A8;
  v28 = v6;
  v43 = v28;
  [v7 setDidFinish:v42];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v46 = self;
    v47 = 2114;
    v48 = v32;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning cloud reset for all profiles: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v10 = [WeakRetained profileManager];

  v27 = v10;
  v11 = [v10 allProfileIdentifiers];
  [v7 beginTask];
  v31 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v11, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v11;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v33)
  {
    v30 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        [v7 beginTask];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v35 = __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke_401;
        v36 = &unk_2786130B0;
        v37 = v7;
        v14 = v13;
        v15 = v32;
        v16 = v34;
        if (self)
        {
          if (!v14)
          {
            v23 = [MEMORY[0x277CCA890] currentHandler];
            [v23 handleFailureInMethod:sel__resetProfile_context_completion_ object:self file:@"HDCloudSyncCoordinator.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];
          }

          v17 = objc_loadWeakRetained(&self->_daemon);
          v18 = [v17 profileManager];
          v19 = [v18 profileForIdentifier:v14];

          if (v19 && [(HDCloudSyncCoordinator *)self shouldSyncProfile:v19])
          {
            v20 = [v19 cloudSyncManager];
            v21 = v20;
            if (v20)
            {
              [v20 resetWithContext:v15 completion:v16];
            }

            else
            {
              (v35)(v16, 1, 0);
              [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
            }
            v22 = ;
          }

          else
          {
            (v35)(v16, 1, 0);
            v22 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
          }
        }

        else
        {
          v22 = 0;
        }

        [v31 addChild:v22 withPendingUnitCount:1];
        ++v12;
      }

      while (v33 != v12);
      v24 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      v33 = v24;
    }

    while (v24);
  }

  [v7 finishTask];
  v25 = *MEMORY[0x277D85DE8];

  return v31;
}

void __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 1, 0);
  }

  else
  {
    v7 = [a4 firstObject];
    (*(v4 + 16))(v4, 0, v7);
  }
}

uint64_t __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke_401(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

- (id)fetchCloudDescriptionWithContext:(id)a3 updateCacheAndPrepareForSync:(BOOL)a4 completion:(id)a5
{
  v32 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v6 = a5;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v36;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling fetch of cloud description for all profiles with context %{public}@", buf, 0xCu);
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2810000000;
  v53[3] = &unk_22929BC4D;
  v54 = 0;
  _HKInitializeLogging();
  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning fetch of cloud description for all profiles with context %{public}@", buf, 0x16u);
  }

  v10 = [(HDCloudSyncAccountProvider *)self->_accountProvider getPersistedAccountInfo];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__41;
  v58 = __Block_byref_object_dispose__41;
  v59 = objc_alloc_init(HDCloudSyncPipelineStageDescription);
  v11 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke;
  v48[3] = &unk_2786195B8;
  v51 = v53;
  v52 = buf;
  v30 = v10;
  v49 = v30;
  v29 = v6;
  v50 = v29;
  [v11 setDidFinish:v48];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v31 = [WeakRetained profileManager];

  v13 = [v31 allProfileIdentifiers];
  v35 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v13, "count")}];
  [v11 beginTask];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v14)
  {
    v34 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        [v11 beginTask];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v39 = __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke_2;
        v40 = &unk_2786195E0;
        v41 = v11;
        v42 = v53;
        v43 = buf;
        v17 = v16;
        v18 = v36;
        v19 = v38;
        if (!v17)
        {
          v26 = [MEMORY[0x277CCA890] currentHandler];
          [v26 handleFailureInMethod:sel__fetchDescriptionForProfile_context_updateCacheAndPrepareForSync_completion_ object:self file:@"HDCloudSyncCoordinator.m" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];
        }

        v20 = objc_loadWeakRetained(&self->_daemon);
        v21 = [v20 profileManager];
        v22 = [v21 profileForIdentifier:v17];

        if (v22 && [(HDCloudSyncCoordinator *)self shouldSyncProfile:v22])
        {
          v23 = [v22 cloudSyncManager];
          v24 = v23;
          if (v23)
          {
            [v23 fetchDescriptionWithContext:v18 updateCacheAndPrepareForSync:v32 completion:v19];
          }

          else
          {
            v39(v19, 0, 0);
            [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
          }
          v25 = ;
        }

        else
        {
          v39(v19, 0, 0);
          v25 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
        }

        [v35 addChild:v25 withPendingUnitCount:1];
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v14);
  }

  [v11 finishTask];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v53, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v35;
}

void __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v17 = a4;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  v6 = *(*(*(a1 + 56) + 8) + 40);
  [*(a1 + 32) accountPartition];
  v7 = CKStringFromPartition();
  v8 = [*(a1 + 32) hasValidCredentials];
  [*(a1 + 32) accountStatus];
  v9 = CKStringFromAccountStatus();
  [*(a1 + 32) deviceToDeviceEncryptionAvailability];
  v10 = CKStringFromDeviceToDeviceEncryptionStatus();
  v11 = [v6 setAccountInfoPartition:v7 hasValidCredentials:v8 accountStatus:v9 encryptionStatus:v10];

  v12 = objc_alloc_init(HDCloudSyncPipelineStageDescription);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v15 = *(a1 + 40);
  if (a3)
  {
    (*(v15 + 16))(v15, v11, 0);
  }

  else
  {
    v16 = [v17 firstObject];
    (*(v15 + 16))(v15, v11, v16);
  }
}

void __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) failTaskWithError:v5];
  }

  else
  {
    if (v12)
    {
      os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = [v7 mergeWithDescription:v12];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      else
      {
        v11 = v12;
        v10 = *(v6 + 40);
        *(v6 + 40) = v11;
      }

      os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
    }

    [*(a1 + 32) finishTask];
  }
}

- (id)progressOfActiveSyncTask
{
  v2 = [(HDCloudSyncManagerTaskQueue *)self->_syncTaskQueue activeTask];
  v3 = [v2 progress];

  return v3;
}

- (id)addCloudSyncProgressCompletion:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__41;
  v26 = __Block_byref_object_dispose__41;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __57__HDCloudSyncCoordinator_addCloudSyncProgressCompletion___block_invoke;
  v13 = &unk_278619608;
  v14 = self;
  v16 = &v22;
  v6 = v4;
  v15 = v6;
  v17 = &v18;
  dispatch_sync(queue, &v10);
  if ((v19[3] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:726 description:{@"No sync in progress.", v10, v11, v12, v13, v14}];
    (*(v6 + 2))(v6, 0, v7);
  }

  v8 = v23[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __57__HDCloudSyncCoordinator_addCloudSyncProgressCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v1);
    v3 = *(*(a1 + 32) + 40);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1 + 32) + 40);
    }

    v7 = [*(a1 + 40) copy];
    v8 = _Block_copy(v7);
    [v3 addObject:v8];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (BOOL)canPerformCloudSyncWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = [WeakRetained behavior];
  v7 = [v6 supportsCloudSync];

  if ((v7 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:111 format:@"Cloud sync not supported on this device."];
    LOBYTE(a3) = 0;
    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDCloudSyncAccountProvider *)self->_accountProvider computeCanPerformCloudSyncForPrimaryAccount:a3];
  LODWORD(a3) = v8;
  if (self->_lock_cloudSyncEnabled == v8)
  {
    lock_hasComputedCloudSyncEnabled = self->_lock_hasComputedCloudSyncEnabled;
    self->_lock_hasComputedCloudSyncEnabled = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_hasComputedCloudSyncEnabled)
    {
      goto LABEL_12;
    }
  }

  else
  {
    self->_lock_cloudSyncEnabled = v8;
    self->_lock_hasComputedCloudSyncEnabled = 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = "disabled";
    if (a3)
    {
      v11 = "ENABLED";
    }

    v14 = 138543618;
    v15 = self;
    v16 = 2080;
    v17 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync %s", &v14, 0x16u);
  }

  [(HDCloudSyncPeriodicActivityScheduler *)self->_periodicActivityScheduler updatePeriodicActivityCriteria];
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return a3;
}

- (id)stateSyncEntityClasses
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
  if (!lock_stateSyncEntityClasses)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
    if (!lock_stateSyncEntityClasses)
    {
      v4 = HDBuiltinStateSyncEntities();
      v5 = [v4 mutableCopy];

      WeakRetained = objc_loadWeakRetained(&self->_daemon);
      v7 = [WeakRetained pluginManager];
      v8 = [v7 pluginsConformingToProtocol:&unk_283D711A8];
      v9 = [v8 allValues];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v23 + 1) + 8 * v14) stateSyncEntityClasses];
            [v5 addObjectsFromArray:v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      v16 = [v5 copy];
      v17 = self->_lock_stateSyncEntityClasses;
      self->_lock_stateSyncEntityClasses = v16;

      lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
    }
  }

  v18 = lock_stateSyncEntityClasses;
  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)stateSyncDomainForSubscriptionIdentifier
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = HDCloudSyncMedicationsStateChangedSubscriptionIdentifier;
  v6[0] = @"CloudSyncStateEntityDomainMedications";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)compareTask:(id)a3 withTask:(id)a4 queue:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 priority];
  if (v8 <= [v7 priority])
  {
    v10 = [v6 priority];
    v9 = v10 < [v7 priority];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_primaryProfile
{
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 168));
    v4 = [v5 primaryProfile];
  }

  return v4;
}

- (void)scheduleSharedSummaryPushWithMaximumDelay:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling shared summaries push with delay %lf.", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HDCloudSyncCoordinator_scheduleSharedSummaryPushWithMaximumDelay___block_invoke;
  v8[3] = &unk_2786138F8;
  v8[4] = self;
  *&v8[5] = a3;
  dispatch_sync(queue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __68__HDCloudSyncCoordinator_scheduleSharedSummaryPushWithMaximumDelay___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  v3 = *(a1 + 40);
  v8 = 0;
  [v2 submitRequestWithMaximumDelay:&v8 error:&__block_literal_global_479 completion:v3];
  v4 = v8;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to schedule shared summary push due to error: %{public}@.", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)databaseJournalMergeDidCompleteForProfile:(id)a3 type:(int64_t)a4
{
  v5 = [a3 profileType];
  if (self && v5 == 1)
  {
    dispatch_assert_queue_V2(self->_queue);
    v14 = [(HDCloudSyncCoordinator *)self _primaryProfile];
    v6 = HDCloudSyncRestorePhaseSyncCompleteEndDate(v14);
    v7 = HDCloudSyncRestorePhaseMergeCompleteEndDate(v14);
    if (!v7 && v6)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = HDCloudSyncRestorePhaseSyncCompleteStartDate(v14);
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;
      v11 = [v14 daemon];
      v12 = [v11 analyticsSubmissionCoordinator];
      [v12 cloudSync_reportRestoreForProfile:v14 startDate:v8 endDate:v7 duration:1 finishedJournalMerge:v10];

      HDSetCloudSyncRestorPhaseMergeCompleteEndDate(v7, v14);
    }

    if (v7)
    {
      v13 = [v14 database];
      [v13 removeDatabaseJournalMergeObserver:self journalType:2];
    }
  }
}

- (void)addObserver:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  v6 = [(HDCloudSyncCoordinator *)self queue];
  [(HKObserverSet *)observers registerObserver:v5 queue:v6];
}

- (void)notifyObservers:(id)a3 syncRequestStarted:(id)a4 withProgress:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDCloudSyncCoordinator_notifyObservers_syncRequestStarted_withProgress___block_invoke;
  v12[3] = &unk_278619670;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a3 notifyObservers:v12];
}

void __74__HDCloudSyncCoordinator_notifyObservers_syncRequestStarted_withProgress___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:a1[6]];
    [v6 cloudSyncCoordinator:v3 syncStartedForRequest:v4 progress:v5];
  }
}

- (void)notifyObservers:(id)a3 syncRequestCompleted:(id)a4 success:(BOOL)a5 error:(id)a6
{
  v10 = a4;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HDCloudSyncCoordinator_notifyObservers_syncRequestCompleted_success_error___block_invoke;
  v14[3] = &unk_278619698;
  v14[4] = self;
  v15 = v10;
  v17 = a5;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [a3 notifyObservers:v14];
}

void __77__HDCloudSyncCoordinator_notifyObservers_syncRequestCompleted_success_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudSyncCoordinator:*(a1 + 32) syncRequestDidCompleteForRequest:*(a1 + 40) success:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)unitTest_performClientGatedSyncActivity:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HDCloudSyncCoordinator_unitTest_performClientGatedSyncActivity___block_invoke;
  v6[3] = &unk_278614250;
  v7 = v4;
  v5 = v4;
  [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTaskWithCompletion:v6];
}

- (void)unitTest_setStateSyncEntityClasses:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
  self->_lock_stateSyncEntityClasses = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v9 = 0;
  v4 = [(HDCloudSyncCoordinator *)self canPerformCloudSyncWithError:&v9];
  v5 = v9;
  v6 = @"NO";
  if (v4)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"\nCloudSync Enabled: %@ \nStarted: %@\nEnded: %@\n", v6, self->_latestSyncStartLog, self->_latestSyncEndLog];

  return v7;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (id)mergeCloudSyncJournalsAndNotifyObservers:(id)a3 syncRequestCompleted:(id)a4 success:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
  if ([v10 count])
  {
    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __125__HDCloudSyncCoordinator_CloudSyncJournalMerge__mergeCloudSyncJournalsAndNotifyObservers_syncRequestCompleted_success_error___block_invoke;
      v16[3] = &unk_278613630;
      v16[4] = self;
      v17 = v10;
      v18 = v11;
      v14 = [(HDCloudSyncCoordinator *)self mergeCloudSyncJournalsWithCompletion:v16];
      [v13 addChild:v14 withPendingUnitCount:1];
    }

    else
    {
      [v13 setCompletedUnitCount:1];
      [(HDCloudSyncCoordinator *)self notifyObservers:v10 syncRequestCompleted:v11 success:0 error:v12];
    }
  }

  else
  {
    [v13 setCompletedUnitCount:1];
  }

  return v13;
}

- (id)mergeCloudSyncJournalsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync journal merge attempt starting.", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D10AC8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HDCloudSyncCoordinator_CloudSyncJournalMerge__mergeCloudSyncJournalsWithCompletion___block_invoke;
  v12[3] = &unk_27861A120;
  v13 = v4;
  v7 = v4;
  v8 = [v6 initWithDescription:@"Merge pending cloud sync journals" completion:v12];
  v9 = [(HDCloudSyncCoordinator *)self _mergeCloudSyncJournalsWithTaskTree:v8];
  [v8 begin];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_mergeCloudSyncJournalsWithTaskTree:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDCloudSyncCoordinator *)self daemon];
  v6 = [v5 profileManager];
  v7 = [v6 allProfileIdentifiers];

  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(HDCloudSyncCoordinator *)self _mergeCloudSyncJournalsForProfile:*(*(&v17 + 1) + 8 * i) taskTree:v4, v17];
        [v8 addChild:v14 withPendingUnitCount:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_mergeCloudSyncJournalsForProfile:(id)a3 taskTree:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCAC48];
  v8 = a4;
  v9 = [v7 discreteProgressWithTotalUnitCount:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke;
  v15[3] = &unk_27861A170;
  v15[4] = self;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
  [v8 addTask:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) daemon];
  v8 = [v7 profileManager];
  v9 = [v8 profileForIdentifier:*(a1 + 40)];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = MEMORY[0x277CCC328];
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Merging cloud sync journal for profile %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    v13 = [v9 database];
    v25 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_301;
    v22[3] = &unk_27861A148;
    v14 = v9;
    v23 = v14;
    v24 = buf;
    v15 = [v13 performWithJournalType:2 error:&v25 block:v22];
    v16 = v25;

    [*(a1 + 48) setCompletedUnitCount:1];
    if (v15)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *v26 = 138543874;
        v27 = v21;
        v28 = 2114;
        v29 = v14;
        v30 = 2114;
        v31 = v16;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to merge cloud sync journals for profile %{public}@: %{public}@", v26, 0x20u);
      }

      v17 = 1;
      v18 = v16;
    }

    (v6)[2](v6, v17, v18);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1 + 48) setCompletedUnitCount:1];
    v6[2](v6, 0, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

BOOL __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_301(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_2;
  v7[3] = &unk_278618610;
  v7[4] = *(a1 + 40);
  v5 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v4 error:a2 block:v7];

  return v5;
}

@end