@interface HDCloudSyncObserverTaskServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (HDCloudSyncObserverTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (NSString)description;
- (id)_readRestoreCompletionDateWithError:(id)a1;
- (id)remote_retrieveProgressForIdentifier:(id)a3 completion:(id)a4;
- (id)remote_startSyncIfRestoreNotCompletedWithUUID:(id)a3 completion:(id)a4;
- (uint64_t)_queue_verifyCloudSyncEnabledWithError:(dispatch_queue_t *)a1;
- (uint64_t)_shouldNotifyObserverAboutRequest:(uint64_t)a1;
- (void)_cloudKitIdentityUpdated:(id)a3;
- (void)_queue_didFailToPopulateStatusWithError:(uint64_t)a1;
- (void)_queue_didUpdateSyncStatus;
- (void)_queue_didUpdateSyncStatusWithErrorRequiringUserAction:(uint64_t)a1;
- (void)_queue_didUpdateSyncStatusWithSyncEnabled:(uint64_t)a1;
- (void)_queue_instantiateCloudSyncObserverStatus:(uint64_t)a1;
- (void)_queue_syncDidStart;
- (void)_queue_updateSyncStatusWithBlock:(uint64_t)a1;
- (void)cloudSyncCoordinator:(id)a3 syncRequestDidCompleteForRequest:(id)a4 success:(BOOL)a5 error:(id)a6;
- (void)cloudSyncCoordinator:(id)a3 syncStartedForRequest:(id)a4 progress:(id)a5;
- (void)cloudSyncManager:(id)a3 didUpdateDataUploadRequestStatus:(int64_t)a4 startDate:(id)a5 endDate:(id)a6;
- (void)cloudSyncManager:(id)a3 didUpdateErrorRequiringUserAction:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateLastLitePushDate:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateLastPullDate:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateLastPulledUpdateDate:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateLastPushDate:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateRestoreCompletionDate:(id)a4;
- (void)cloudSyncManager:(id)a3 didUpdateSyncEnabled:(BOOL)a4;
- (void)connectionInvalidated;
- (void)remote_startObservingSyncRequestsMatchingFilter:(unint64_t)a3;
- (void)remote_startObservingSyncStatusWithCompletion:(id)a3;
- (void)remote_stopObservingSyncRequests;
@end

@implementation HDCloudSyncObserverTaskServer

- (HDCloudSyncObserverTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v12.receiver = self;
  v12.super_class = HDCloudSyncObserverTaskServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:a3 configuration:0 client:a5 delegate:a6];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_filter = 0;
    v6->_isObservingSyncRequests = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    progressTracker = v6->_progressTracker;
    v6->_progressTracker = v9;
  }

  return v6;
}

- (void)connectionInvalidated
{
  v3 = [(HDStandardTaskServer *)self profile];
  v4 = [v3 daemon];
  v5 = [v4 cloudSyncCoordinator];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277CBBF90] object:0];

  v8 = [(HDStandardTaskServer *)self profile];
  v7 = [v8 cloudSyncManager];
  [v7 removeObserver:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HDStandardTaskServer *)self client];
  v7 = [v6 profile];
  v8 = [v7 profileIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v8];

  return v9;
}

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = *MEMORY[0x277CCC8B0];
  v6 = a3;
  LOBYTE(v5) = [v6 hasRequiredEntitlement:v5 error:a4];
  LOBYTE(a4) = [v6 hasRequiredArrayEntitlement:*MEMORY[0x277CCC8C0] containing:*MEMORY[0x277CCBD30] error:a4];

  return (v5 | a4) & 1;
}

- (void)remote_startObservingSyncStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 cloudSyncManager];

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke;
    block[3] = &unk_278614160;
    block[4] = self;
    v9 = v6;
    v10 = v4;
    dispatch_sync(queue, block);
  }

  else
  {
    v4[2](v4);
  }
}

void __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke_2;
  v3[3] = &unk_278613150;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [(HDCloudSyncObserverTaskServer *)v2 _queue_instantiateCloudSyncObserverStatus:v3];
}

void __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__cloudKitIdentityUpdated_ name:*MEMORY[0x277CBBF90] object:0];

  [*(a1 + 40) addObserver:*(a1 + 32) queue:*(*(a1 + 32) + 40)];
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 40));
      if (*(v6 + 64) == 1)
      {
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v11 = v6;
          _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Observering sync status is YES. No need to inform client again.", buf, 0xCu);
        }
      }

      else
      {
        *(v6 + 64) = 1;
        [(HDCloudSyncObserverTaskServer *)v6 _queue_didUpdateSyncStatus];
      }
    }
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didFailToPopulateStatusWithError:v9];
  }

  (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_didFailToPopulateStatusWithError:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    *(a1 + 64) = 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HDCloudSyncObserverTaskServer__queue_didFailToPopulateStatusWithError___block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = a1;
    v5 = [a1 remoteObjectProxyWithErrorHandler:v6];
    [v5 clientRemote_didFailToPopulateStatusWithError:v4];
  }
}

- (void)_queue_instantiateCloudSyncObserverStatus:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (*(a1 + 48))
    {
      v3[2](v3, 1, 0);
    }

    else
    {
      v4 = [a1 profile];
      v5 = [v4 cloudSyncManager];

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke;
      v7[3] = &unk_27861AA30;
      v7[4] = a1;
      v8 = v5;
      v9 = v3;
      v6 = v5;
      [v6 accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:v7];
    }
  }
}

- (id)remote_startSyncIfRestoreNotCompletedWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke;
  v16[3] = &unk_278617440;
  v19 = v7;
  v16[4] = self;
  v17 = v6;
  v10 = v8;
  v18 = v10;
  v11 = v6;
  v12 = v7;
  dispatch_sync(queue, v16);
  v13 = v18;
  v14 = v10;

  return v10;
}

void __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v42 = 0;
  v4 = [(HDCloudSyncObserverTaskServer *)v2 _queue_verifyCloudSyncEnabledWithError:?];
  v5 = v42;
  v6 = *v3;
  if (v4)
  {
    v7 = [v6 profile];
    v8 = [v7 daemon];
    v9 = [v8 cloudSyncCoordinator];
    v10 = [v9 accountProvider];
    v11 = [v10 isAccountInManateeUnavailableCFUState];

    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hk_error:706 description:@"Manatee container is unavailable underlyingError:{device is in CFU state", v5}];

      [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didUpdateSyncStatusWithErrorRequiringUserAction:v12];
      (*(*(a1 + 56) + 16))();
      v5 = v12;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = MEMORY[0x277CBEAA8];
        v19 = v15;
        v20 = [v18 date];
        v21 = HKDiagnosticStringFromDate();
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        *&buf[22] = 2114;
        v52 = v21;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: start syncIfRestoreNotCompleted: date (%{public}@)", buf, 0x20u);
      }

      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_339;
      v40[3] = &unk_278614250;
      v41 = *(a1 + 56);
      v24 = v22;
      v25 = v40;
      if (v23)
      {
        dispatch_assert_queue_V2(*(v23 + 40));
        v50[0] = 0;
        v50[1] = v50;
        v50[2] = 0x2020000000;
        v50[3] = -1;
        v26 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
        v27 = objc_alloc(MEMORY[0x277D10AC8]);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke;
        v52 = &unk_27861A8C8;
        v56 = v50;
        v53 = v23;
        v28 = v24;
        v54 = v28;
        v55 = v25;
        v29 = [v27 initWithDescription:@"Determine if sync is complete enough stop stop waiting" completion:buf];
        v30 = v25;
        v31 = v24;
        v32 = *(v23 + 40);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_347;
        v46[3] = &unk_27861A990;
        v46[4] = v23;
        v49 = v50;
        v47 = v28;
        v33 = v26;
        v48 = v33;
        v34 = v32;
        v24 = v31;
        v25 = v30;
        [v29 addTaskOnQueue:v34 task:v46];
        v35 = *(v23 + 40);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_356;
        v43[3] = &unk_27861A9B8;
        v45 = v50;
        v43[4] = v23;
        v36 = v33;
        v44 = v36;
        [v29 addTaskOnQueue:v35 task:v43];
        [v29 begin];
        v37 = v44;
        v38 = v36;

        _Block_object_dispose(v50, 8);
      }

      else
      {
        v38 = 0;
      }

      [*(a1 + 48) addChild:v38 withPendingUnitCount:1];
    }
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)v6 _queue_didUpdateSyncStatusWithSyncEnabled:?];
    v13 = *(a1 + 56);
    v14 = [v5 hk_sanitizedError];
    (*(v13 + 16))(v13, 4, v14);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_verifyCloudSyncEnabledWithError:(dispatch_queue_t *)a1
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(a1[5]);
    v4 = [(dispatch_queue_t *)a1 profile];
    v5 = [v4 daemon];
    v6 = [v5 cloudSyncCoordinator];
    v14 = 0;
    v7 = [v6 canPerformCloudSyncWithError:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v16 = a1;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: syncIfRestoreNotCompleted triggered, but Health cloud sync is not enabled: %{public}@", buf, 0x16u);
      }

      v10 = v8;
      if (v10)
      {
        if (a2)
        {
          v11 = v10;
          *a2 = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_queue_didUpdateSyncStatusWithSyncEnabled:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithSyncEnabled___block_invoke;
    v4[3] = &unk_278618990;
    v4[4] = a1;
    v5 = a2;
    [(HDCloudSyncObserverTaskServer *)a1 _queue_updateSyncStatusWithBlock:v4];
  }
}

- (void)_queue_didUpdateSyncStatusWithErrorRequiringUserAction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __88__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithErrorRequiringUserAction___block_invoke;
    v4[3] = &unk_278613920;
    v4[4] = a1;
    v5 = v3;
    [(HDCloudSyncObserverTaskServer *)a1 _queue_updateSyncStatusWithBlock:v4];
  }
}

void __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_339(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)_queue_didUpdateSyncStatus
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (*(a1 + 64))
    {
      _HKInitializeLogging();
      v2 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 48);
        *buf = 138543618;
        v8 = a1;
        v9 = 2114;
        v10 = v3;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client didUpdateObserverWithSyncStatus: with status: %{public}@", buf, 0x16u);
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __59__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatus__block_invoke;
      v6[3] = &unk_2786138D0;
      v6[4] = a1;
      v4 = [a1 remoteObjectProxyWithErrorHandler:v6];
      [v4 clientRemote_didUpdateObserverWithSyncStatus:*(a1 + 48)];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __75__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithSyncEnabled___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (*(a1 + 40) != [*(*(a1 + 32) + 48) syncEnabled])
  {
    [*(*(a1 + 32) + 48) setSyncEnabled:?];
    v2 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatus];
  }
}

- (void)_queue_updateSyncStatusWithBlock:(uint64_t)a1
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 40));
  if (*(a1 + 48))
  {
    v3[2](v3);
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__HDCloudSyncObserverTaskServer__queue_updateSyncStatusWithBlock___block_invoke;
    v4[3] = &unk_2786173C8;
    v4[4] = a1;
    v5 = v3;
    [(HDCloudSyncObserverTaskServer *)a1 _queue_instantiateCloudSyncObserverStatus:v4];
  }
}

void __94__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithAccountSupportsSecureContainer___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (*(a1 + 40) != [*(*(a1 + 32) + 48) accountSupportsSecureContainer])
  {
    [*(*(a1 + 32) + 48) setAccountSupportsSecureContainer:?];
    v2 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatus];
  }
}

void __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPushDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastPushDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastPushDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPullDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastPullDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastPullDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __80__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastLitePushDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastLitePushDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastLitePushDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

uint64_t __84__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPulledUpdateDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v3 = [*(*(a1 + 32) + 48) lastPulledUpdateDate];
  if (!v3 || [*(a1 + 40) hk_isAfterDate:v3])
  {
    [*(*(a1 + 32) + 48) setLastPulledUpdateDate:*(a1 + 40)];
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didUpdateSyncStatus];
  }

  return MEMORY[0x2821F96F8]();
}

void __83__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithRestoreCompleteDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) restoreCompletionDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setRestoreCompletionDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __88__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithErrorRequiringUserAction___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) errorRequiringUserAction];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setErrorRequiringUserAction:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __59__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatus__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client didUpdateObserverWithSyncStatus: with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_syncDidStart
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(a1[5]);
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v3 = MEMORY[0x277CBEAA8];
      v4 = v2;
      v5 = [v3 date];
      v6 = HKDiagnosticStringFromDate();
      *buf = 138543618;
      v11 = a1;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncDidStart with date: (%{public}@", buf, 0x16u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__HDCloudSyncObserverTaskServer__queue_syncDidStart__block_invoke;
    v9[3] = &unk_2786138D0;
    v9[4] = a1;
    v7 = [(dispatch_queue_t *)a1 remoteObjectProxyWithErrorHandler:v9];
    [v7 clientRemote_syncDidStart];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__HDCloudSyncObserverTaskServer__queue_syncDidStart__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncDidStart with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __73__HDCloudSyncObserverTaskServer__queue_didFailToPopulateStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client didFailToPopulateStatusWithError with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (*(*(a1[7] + 8) + 24) == -1 && !a3)
  {
    v9 = a1[4];
    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = 0;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = __Block_byref_object_copy__48;
      v21[4] = __Block_byref_object_dispose__48;
      v22 = 0;
      v11 = *(v9 + 40);
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __63__HDCloudSyncObserverTaskServer__persistRestoreCompletionDate___block_invoke;
      v26 = &unk_27861A9E0;
      *&v27 = v9;
      v28 = v23;
      v12 = v10;
      *(&v27 + 1) = v12;
      v29 = v21;
      dispatch_sync(v11, block);

      _Block_object_dispose(v21, 8);
      _Block_object_dispose(v23, 8);
    }
  }

  v13 = a1[4];
  v14 = *(v13 + 56);
  *(v13 + 56) = 0;

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    v17 = a1[5];
    v18 = v15;
    v19 = _HKCloudSyncObserverStatusToString();
    *block = 138544130;
    *&block[4] = v16;
    *&block[12] = 2114;
    *&block[14] = v17;
    *&block[22] = 2114;
    v26 = v19;
    LOWORD(v27) = 2114;
    *(&v27 + 2) = v8;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: taskTree complete: status (%{public}@), error (%{public}@)", block, 0x2Au);
  }

  (*(a1[6] + 16))();

  v20 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_347(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v59 = 0;
  if (v7)
  {
    dispatch_assert_queue_V2(v7[5]);
    if ([(HDCloudSyncObserverTaskServer *)v7 _queue_verifyCloudSyncEnabledWithError:?])
    {
      *v60 = 0;
      v8 = [(HDCloudSyncObserverTaskServer *)v7 _readRestoreCompletionDateWithError:v60];
      v9 = *v60;
      v10 = v9;
      if (v8 || !v9)
      {
        if (v8)
        {
          _HKInitializeLogging();
          v12 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v7;
            *&buf[12] = 2114;
            *&buf[14] = v8;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync restore was already completed on %{public}@.", buf, 0x16u);
          }

          v11 = 2;
        }

        else
        {
          v13 = [(dispatch_queue_t *)v7 profile];
          v14 = [v13 cloudSyncManager];
          v15 = [v14 status];
          v16 = [v15 lastSuccessfulPullDate];
          v17 = v16 == 0;

          if (v17)
          {
            v11 = 1;
          }

          else
          {
            v11 = 3;
          }
        }
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = v59;
  v19 = [*(a1 + 32) profile];
  v20 = [v19 daemon];
  v21 = [v20 cloudSyncCoordinator];

  switch(v11)
  {
    case 4:
      *(*(*(a1 + 56) + 8) + 24) = 4;
      v6[2](v6, 1, v18);
      break;
    case 3:
      [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_syncDidStart];
      v6[2](v6, 0, 0);
      break;
    case 2:
      *(*(*(a1 + 56) + 8) + 24) = 2;
      v6[2](v6, 0, 0);
      break;
    default:
      if (v21)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v64 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2;
        aBlock[3] = &unk_27861A918;
        v22 = *(a1 + 40);
        aBlock[4] = *(a1 + 32);
        v57 = buf;
        v55 = v22;
        v23 = v6;
        v24 = *(a1 + 56);
        v56 = v23;
        v58 = v24;
        v25 = _Block_copy(aBlock);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_348;
        v52[3] = &unk_2786130D8;
        v26 = v25;
        v53 = v26;
        v27 = [v21 addCloudSyncProgressCompletion:v52];
        if (v27)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            v30 = *(a1 + 40);
            *v60 = 138543618;
            *&v60[4] = v29;
            v61 = 2114;
            v62 = v30;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: active sync in progress, observe it", v60, 0x16u);
          }

          v31 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:v27];
        }

        else
        {
          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 32);
            v34 = *(a1 + 40);
            *v60 = 138543618;
            *&v60[4] = v33;
            v61 = 2114;
            v62 = v34;
            _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: start a sync and observe it", v60, 0x16u);
          }

          [v21 prepareAllProfilesForPeriodicSyncAndRestore];
          v35 = [[HDCloudSyncContext alloc] initForPurpose:0 options:0 reason:7];
          v31 = [v21 syncAllProfilesWithContext:v35 completion:v26];
        }

        [*(a1 + 48) addChild:v31 withPendingUnitCount:1];
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 32);
          v38 = *(a1 + 40);
          *v60 = 138543618;
          *&v60[4] = v37;
          v61 = 2114;
          v62 = v38;
          _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: call client startHandler", v60, 0x16u);
        }

        [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_syncDidStart];
        v39 = [MEMORY[0x277CCABC8] keyPathWithRootObject:*(a1 + 48) path:"fractionCompleted"];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_352;
        v48[3] = &unk_27861A968;
        v40 = *(a1 + 40);
        v48[4] = *(a1 + 32);
        v41 = v40;
        v42 = *(a1 + 56);
        v49 = v41;
        v51 = v42;
        v43 = v26;
        v50 = v43;
        v44 = [v39 addObserverBlock:v48];
        v45 = *(a1 + 32);
        v46 = *(v45 + 56);
        *(v45 + 56) = v44;

        _Block_object_dispose(buf, 8);
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = -1;
        v6[2](v6, 3, 0);
      }

      break;
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_3;
  block[3] = &unk_27861A8F0;
  v16 = *(a1 + 56);
  block[4] = v7;
  v18 = a2;
  v13 = v6;
  v14 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v15 = v9;
  v17 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 64) + 8);
  if (*(v2 + 24) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v15 = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: syncCompletion already called", &v15, 0x16u);
    }
  }

  else
  {
    *(v2 + 24) = 1;
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 80);
      v10 = *(a1 + 48);
      v15 = 138544130;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 1026;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: syncCompletion called: result (%{public}id), error (%{public}@)", &v15, 0x26u);
    }

    if (*(a1 + 80) == 1)
    {
      v11 = *(*(a1 + 56) + 16);
    }

    else
    {
      v12 = *(*(a1 + 72) + 8);
      if (*(v12 + 24) == -1)
      {
        *(v12 + 24) = 0;
      }

      v13 = *(a1 + 48);
      v11 = *(*(a1 + 56) + 16);
    }

    v11();
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_348(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) != 0 || ([v5 hk_isHealthKitErrorWithCode:726] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_352(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2_353;
  block[3] = &unk_27861A940;
  block[4] = v5;
  v11 = v4;
  v12 = v3;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v8 = v3;
  dispatch_async(v6, block);
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2_353(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v20 = 0;
  if (v2)
  {
    dispatch_assert_queue_V2(v2[5]);
    if (([(HDCloudSyncObserverTaskServer *)v2 _queue_verifyCloudSyncEnabledWithError:?]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatusWithSyncEnabled:?];
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v20;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = v6;
    [v9 doubleValue];
    v12 = v11;
    v13 = _HKCloudSyncObserverStatusToString();
    *buf = 138544386;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2048;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: waitUUID %{public}@: observer block called: progress (%03.3f%%), status (%{public}@), error (%{public}@)", buf, 0x34u);
  }

  if (v3)
  {
    _HKInitializeLogging();
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = v14;
      v18 = _HKCloudSyncObserverStatusToString();
      *buf = 138544130;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: stop observer: status (%{public}@), error (%{public}@)", buf, 0x2Au);
    }

    *(*(a1[8] + 8) + 24) = 4;
    (*(a1[7] + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_356(void *a1, void *a2, void *a3)
{
  v13 = a3;
  if (*(*(a1[6] + 8) + 24) != 2)
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = a1[5];
      v7 = *(v5 + 40);
      v8 = v6;
      v9 = a2;
      dispatch_assert_queue_V2(v7);
      v10 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
      [v8 addChild:v10 withPendingUnitCount:1];

      v11 = *(v5 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke;
      v14[3] = &unk_278617958;
      v14[4] = v5;
      v15 = v10;
      v12 = v10;
      [v9 addTaskOnQueue:v11 task:v14];
    }
  }

  (*(v13 + 2))(v13, 0, 0);
}

- (id)_readRestoreCompletionDateWithError:(id)a1
{
  v2 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 profile];
    v5 = [v4 cloudSyncManager];
    v13 = 0;
    v6 = [v5 restoreCompletionDateWithError:&v13];
    v7 = v13;

    if (!v6 && v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v2;
        v16 = 2114;
        v17 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read the cloud sync restore status: %{public}@.", buf, 0x16u);
      }

      v2 = 0;
      goto LABEL_15;
    }

    if (v7)
    {
      if (!a2)
      {
        _HKLogDroppedError();
        if (!v6)
        {
LABEL_11:
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v15 = v2;
            _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Restore complete status not set.", buf, 0xCu);
          }
        }

LABEL_14:
        v2 = v6;
LABEL_15:

        goto LABEL_16;
      }

      v9 = v7;
      *a2 = v7;
    }

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke_2;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v8 = v4;
  v9 = [v7 mergeCloudSyncJournalsWithCompletion:v10];

  [*(a1 + 40) addChild:v9 withPendingUnitCount:1];
}

void __63__HDCloudSyncObserverTaskServer__persistRestoreCompletionDate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v13 = v4;
      _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Cloud sync restore was completed once successfully, we should not be restoring again.", buf, 0xCu);
    }
  }

  else
  {
    *(v2 + 65) = 1;
    v5 = [*(a1 + 32) profile];
    v6 = [v5 cloudSyncManager];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [v6 persistRestoreCompletionDate:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cloudKitIdentityUpdated:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received CKIdentityUpdateNotification", buf, 0xCu);
  }

  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 cloudSyncManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke;
  v8[3] = &unk_2786130B0;
  v8[4] = self;
  [v6 accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke_2;
  v4[3] = &unk_278618990;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    dispatch_assert_queue_V2(*(v1 + 40));
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __94__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithAccountSupportsSecureContainer___block_invoke;
    v3[3] = &unk_278618990;
    v3[4] = v1;
    v4 = v2;
    [(HDCloudSyncObserverTaskServer *)v1 _queue_updateSyncStatusWithBlock:v3];
  }
}

void __66__HDCloudSyncObserverTaskServer__queue_updateSyncStatusWithBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didFailToPopulateStatusWithError:v5];
  }
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2;
  block[3] = &unk_278618D50;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v14 = a2;
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v42 = *(a1 + 32);
      v41 = *(a1 + 40);
      *buf = 138543618;
      v54 = v41;
      v55 = 2114;
      v56 = v42;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read account D2D encryption availability with error %{public}@", buf, 0x16u);
    }

    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 48);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCD138]);
      v6 = *(a1 + 40);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      v4 = *(*(a1 + 40) + 48);
    }

    [v4 setAccountSupportsSecureContainer:*(a1 + 64)];
    v8 = [*(a1 + 40) profile];
    v9 = [v8 daemon];
    v10 = [v9 cloudSyncCoordinator];
    v11 = [v10 accountProvider];
    [*(*(a1 + 40) + 48) setAccountProhibitedForCloudSync:{objc_msgSend(v11, "primaryAccountIsProhibitedFromCloudSync")}];

    v12 = *(a1 + 40);
    v50 = 0;
    v13 = [(HDCloudSyncObserverTaskServer *)v12 _queue_verifyCloudSyncEnabledWithError:?];
    v14 = v50;
    [*(*(a1 + 40) + 48) setSyncEnabled:v13];
    if (v14)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 40);
        *buf = 138543618;
        v54 = v43;
        v55 = 2114;
        v56 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to verify cloud sync enabled with error %{public}@", buf, 0x16u);
      }
    }

    v16 = *(a1 + 40);
    v49 = 0;
    v17 = [(HDCloudSyncObserverTaskServer *)v16 _readRestoreCompletionDateWithError:?];
    v18 = v49;
    [*(*(a1 + 40) + 48) setRestoreCompletionDate:v17];

    if (v18)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 40);
        *buf = 138543618;
        v54 = v44;
        v55 = 2114;
        v56 = v18;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read restore completion date with error %{public}@", buf, 0x16u);
      }
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = [*(a1 + 40) profile];
      v22 = HDCloudSyncKeyValueDomainWithProfile(v21);

      v23 = @"HDCloudSyncKeyErrorRequiringUserAction";
      v52 = 0;
      v24 = [v22 dataForKey:v23 error:&v52];
      v25 = v52;
      v26 = v25;
      if (v24)
      {
        v46 = v18;
        v27 = v14;
        v28 = MEMORY[0x277CCAAC8];
        v29 = objc_opt_class();
        v51 = 0;
        v30 = [v28 unarchivedObjectOfClass:v29 fromData:v24 error:&v51];
        v31 = v51;
        v32 = v31;
        if (v30 || !v31)
        {
          v20 = v30;
          v35 = 0;
        }

        else
        {
          _HKInitializeLogging();
          v33 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v54 = v20;
            v55 = 2114;
            v56 = v32;
            _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive cloud sync error requiring user action: %{public}@", buf, 0x16u);
          }

          v34 = v32;
          v20 = 0;
          v35 = v32;
        }

        v14 = v27;
        v18 = v46;
      }

      else
      {
        if (v25)
        {
          _HKInitializeLogging();
          v36 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v54 = v20;
            v55 = 2114;
            v56 = v26;
            _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read cloud sync error requiring user action: %{public}@", buf, 0x16u);
          }
        }

        v35 = 0;
        v20 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = v35;
    [*(*(a1 + 40) + 48) setErrorRequiringUserAction:v20];

    if (v37)
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 40);
        *buf = 138543618;
        v54 = v45;
        v55 = 2114;
        v56 = v37;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read error requiring user action with error %{public}@", buf, 0x16u);
      }
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_359;
    v47[3] = &unk_27861AA08;
    v39 = *(a1 + 48);
    v47[4] = *(a1 + 40);
    v48 = *(a1 + 56);
    [v39 fetchSyncStatusWithCompletion:v47];
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_359(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2_360;
  v12[3] = &unk_278617468;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

uint64_t __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2_360(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch sync status with error %{public}@", &v15, 0x16u);
    }

    v3 = *(a1 + 32);
    result = (*(*(a1 + 56) + 16))();
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = [*(a1 + 48) lastSuccessfulPushDate];
    [*(*(a1 + 40) + 48) setLastPushDate:v6];

    v7 = [*(a1 + 48) lastSuccessfulPullDate];
    [*(*(a1 + 40) + 48) setLastPullDate:v7];

    v8 = [*(a1 + 48) lastSuccessfulLitePushDate];
    [*(*(a1 + 40) + 48) setLastLitePushDate:v8];

    v9 = [*(a1 + 40) profile];
    v10 = HDCloudSyncLastPulledUpdateDate(v9);
    [*(*(a1 + 40) + 48) setLastPulledUpdateDate:v10];

    v11 = *(*(a1 + 56) + 16);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  return result;
}

- (void)cloudSyncManager:(id)a3 didUpdateSyncEnabled:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatusWithSyncEnabled:a4];
}

- (void)cloudSyncManager:(id)a3 didUpdateLastPushDate:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPushDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)a3 didUpdateLastLitePushDate:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastLitePushDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)a3 didUpdateLastPullDate:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPullDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)a3 didUpdateLastPulledUpdateDate:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPulledUpdateDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)a3 didUpdateErrorRequiringUserAction:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatusWithErrorRequiringUserAction:v6];
}

- (void)cloudSyncManager:(id)a3 didUpdateRestoreCompletionDate:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithRestoreCompleteDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)a3 didUpdateDataUploadRequestStatus:(int64_t)a4 startDate:(id)a5 endDate:(id)a6
{
  v22 = a5;
  v9 = a6;
  dispatch_assert_queue_V2(self->_queue);
  status = self->_status;
  if (!status)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCD138]);
    v12 = self->_status;
    self->_status = v11;

    status = self->_status;
  }

  v13 = [(HKCloudSyncObserverStatus *)status dataUploadRequestStatus];
  v14 = v13 != a4;
  if (v13 != a4)
  {
    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestStatus:a4];
  }

  v15 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestStartDate];
  if (v15 == v22)
  {

    goto LABEL_12;
  }

  if (!v22)
  {

    goto LABEL_11;
  }

  v16 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestStartDate];
  v17 = [v16 isEqual:v22];

  if ((v17 & 1) == 0)
  {
LABEL_11:
    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestStartDate:v22];
    v14 = 1;
  }

LABEL_12:
  v18 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestCompletionDate];
  v19 = v18;
  if (v18 != v9)
  {
    if (v9)
    {
      v20 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestCompletionDate];
      v21 = [v20 isEqual:v9];

      if (v21)
      {
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_21:
        [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatus];
        goto LABEL_22;
      }
    }

    else
    {
    }

    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestCompletionDate:v9];
    goto LABEL_21;
  }

  if (v14)
  {
    goto LABEL_21;
  }

LABEL_22:
}

- (void)remote_startObservingSyncRequestsMatchingFilter:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__HDCloudSyncObserverTaskServer_remote_startObservingSyncRequestsMatchingFilter___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

_BYTE *__81__HDCloudSyncObserverTaskServer_remote_startObservingSyncRequestsMatchingFilter___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  result = *(a1 + 32);
  if ((result[80] & 1) == 0)
  {
    v3 = [result profile];
    v4 = [v3 daemon];
    v5 = [v4 cloudSyncCoordinator];
    [v5 addObserver:*(a1 + 32)];

    result = *(a1 + 32);
  }

  result[80] = 1;
  return result;
}

- (void)remote_stopObservingSyncRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDCloudSyncObserverTaskServer_remote_stopObservingSyncRequests__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

_BYTE *__65__HDCloudSyncObserverTaskServer_remote_stopObservingSyncRequests__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[80] == 1)
  {
    v3 = [result profile];
    v4 = [v3 daemon];
    v5 = [v4 cloudSyncCoordinator];
    [v5 removeObserver:*(a1 + 32)];

    result = *(a1 + 32);
  }

  result[80] = 0;
  return result;
}

- (id)remote_retrieveProgressForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__48;
  v21 = __Block_byref_object_dispose__48;
  v22 = objc_alloc_init(MEMORY[0x277CCAC48]);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HDCloudSyncObserverTaskServer_remote_retrieveProgressForIdentifier_completion___block_invoke;
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

void __81__HDCloudSyncObserverTaskServer_remote_retrieveProgressForIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = *(v3 + 40);
    v6 = v2;
    dispatch_assert_queue_V2(v5);
    v7 = [*(v3 + 88) objectForKeyedSubscript:v6];

    if (v7)
    {
      [v7 setInvalidationBlock:v4];
      v8 = [v7 progress];
    }

    else
    {
      v8 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
      v9 = *(v3 + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__HDCloudSyncObserverTaskServer__queue_retrieveProgressForIdentifier_completion___block_invoke;
      block[3] = &unk_278613658;
      v13 = v4;
      dispatch_async(v9, block);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
}

- (uint64_t)_shouldNotifyObserverAboutRequest:(uint64_t)a1
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 40));
  if (*(a1 + 80) == 1)
  {
    v4 = [v3 matchesFilter:*(a1 + 72)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __69__HDCloudSyncObserverTaskServer__queue_syncRequestDidStart_progress___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncRequestDidStart: with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __77__HDCloudSyncObserverTaskServer__queue_syncRequestDidComplete_success_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncRequestDidComplete:success:error: with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)cloudSyncCoordinator:(id)a3 syncStartedForRequest:(id)a4 progress:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncStartedForRequest_progress___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

void __85__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncStartedForRequest_progress___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    if ([(HDCloudSyncObserverTaskServer *)v1 _shouldNotifyObserverAboutRequest:v3])
    {
      v5 = [[HDCloudSyncObserverTaskServerStoredProgress alloc] initWithProgress:v4];
      v6 = *(v1 + 88);
      v7 = [v3 identifier];
      [v6 setObject:v5 forKeyedSubscript:v7];

      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x277CBEAA8];
        v10 = v8;
        v11 = [v9 date];
        v12 = HKDiagnosticStringFromDate();
        *v15 = 138543618;
        *&v15[4] = v1;
        *&v15[12] = 2114;
        *&v15[14] = v12;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncRequestDidStart: with date: (%{public}@", v15, 0x16u);
      }

      *v15 = MEMORY[0x277D85DD0];
      *&v15[8] = 3221225472;
      *&v15[16] = __69__HDCloudSyncObserverTaskServer__queue_syncRequestDidStart_progress___block_invoke;
      v16 = &unk_2786138D0;
      v17 = v1;
      v13 = [v1 remoteObjectProxyWithErrorHandler:v15];
      [v13 clientRemote_syncRequestDidStart:v3];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudSyncCoordinator:(id)a3 syncRequestDidCompleteForRequest:(id)a4 success:(BOOL)a5 error:(id)a6
{
  v9 = a4;
  v10 = a6;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncRequestDidCompleteForRequest_success_error___block_invoke;
  v14[3] = &unk_278617A98;
  v14[4] = self;
  v15 = v9;
  v17 = a5;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

void __101__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncRequestDidCompleteForRequest_success_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    v6 = *(v1 + 88);
    v7 = [v4 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = *(v1 + 88);
    v10 = [v4 identifier];
    [v9 setObject:0 forKeyedSubscript:v10];

    [v8 invalidate];
    if ([(HDCloudSyncObserverTaskServer *)v1 _shouldNotifyObserverAboutRequest:v4])
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x277CBEAA8];
        v13 = v11;
        v14 = [v12 date];
        v15 = HKDiagnosticStringFromDate();
        *v18 = 138543618;
        *&v18[4] = v1;
        *&v18[12] = 2114;
        *&v18[14] = v15;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncRequestDidComplete:success:error: with date: (%{public}@", v18, 0x16u);
      }

      *v18 = MEMORY[0x277D85DD0];
      *&v18[8] = 3221225472;
      *&v18[16] = __77__HDCloudSyncObserverTaskServer__queue_syncRequestDidComplete_success_error___block_invoke;
      v19 = &unk_2786138D0;
      v20 = v1;
      v16 = [v1 remoteObjectProxyWithErrorHandler:v18];
      [v16 clientRemote_syncRequestDidComplete:v4 success:v2 error:v5];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end