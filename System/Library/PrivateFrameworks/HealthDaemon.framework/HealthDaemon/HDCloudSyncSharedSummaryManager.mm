@interface HDCloudSyncSharedSummaryManager
- (HDCloudSyncSharedSummaryManager)initWithProfile:(id)a3;
- (HDKeyValueDomain)_localKeyValueDomain;
- (id)pull:(id)a3;
- (id)push:(id)a3;
- (id)revokeParticipantWithOutgoingSummarySharingEntry:(id)a3 completion:(id)a4;
- (id)setupSharingWithOutgoingSummarySharingEntry:(id)a3 sharingAuthorizations:(id)a4 completion:(id)a5;
- (id)synchronizeWithCompletion:(id)a3;
- (void)scheduleBackgroundPush;
- (void)scheduleUrgentPush;
@end

@implementation HDCloudSyncSharedSummaryManager

- (HDCloudSyncSharedSummaryManager)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCloudSyncSharedSummaryManager;
  v5 = [(HDCloudSyncSharedSummaryManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)setupSharingWithOutgoingSummarySharingEntry:(id)a3 sharingAuthorizations:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained database];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v35 = 0;
  v15 = [v12 takeAccessibilityAssertionWithOwnerIdentifier:v14 timeout:&v35 error:300.0];
  v16 = v35;

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = [v17 cloudSyncManager];
  [v18 prepareForPeriodicSync];

  v19 = [[HDCloudSyncContext alloc] initForPurpose:10 options:64 reason:9];
  v20 = HKAuthorizationIdentifiersFromSharingAuthorizations();

  v21 = [HDCloudSyncSharedSummarySetupTask alloc];
  v22 = objc_loadWeakRetained(&self->_profile);
  v23 = [v22 cloudSyncManager];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __112__HDCloudSyncSharedSummaryManager_setupSharingWithOutgoingSummarySharingEntry_sharingAuthorizations_completion___block_invoke;
  v32[3] = &unk_27862F8A0;
  v33 = v15;
  v34 = v8;
  v24 = v8;
  v25 = v15;
  v26 = [(HDCloudSyncSharedSummarySetupTask *)v21 initWithManager:v23 context:v19 codableEntry:v10 authorizationIdentifiers:v20 accessibilityAssertion:v25 completion:v32];

  [(HDCloudSyncManagerTask *)v26 setPriority:100];
  v27 = objc_loadWeakRetained(&self->_profile);
  v28 = [v27 daemon];
  v29 = [v28 cloudSyncCoordinator];
  [v29 addManagerTask:v26];

  v30 = [(HDCloudSyncManagerTask *)v26 progress];

  return v30;
}

void __112__HDCloudSyncSharedSummaryManager_setupSharingWithOutgoingSummarySharingEntry_sharingAuthorizations_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  [*(a1 + 32) invalidate];
  v8 = *(a1 + 40);
  if (a3)
  {
    v9 = [v13 shareSetupMetadata];
    v10 = [v13 participantIdentity];
    v11 = [v10 userRecordID];
    v12 = [v11 recordName];
    (*(v8 + 16))(v8, v9, v12, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, 0, v7);
  }
}

- (id)synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26 = 0;
  v9 = [v6 takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v26 error:300.0];
  v10 = v26;

  v11 = [[HDCloudSyncContext alloc] initForPurpose:19 options:64 reason:27];
  v12 = [HDCloudSyncSharedSummarySynchronizeTask alloc];
  v13 = objc_loadWeakRetained(&self->_profile);
  v14 = [v13 cloudSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__HDCloudSyncSharedSummaryManager_synchronizeWithCompletion___block_invoke;
  v23[3] = &unk_27861A468;
  v24 = v9;
  v25 = v4;
  v15 = v4;
  v16 = v9;
  v17 = [(HDCloudSyncManagerPipelineTask *)v12 initWithManager:v14 context:v11 accessibilityAssertion:v16 completion:v23];

  v18 = objc_loadWeakRetained(&self->_profile);
  v19 = [v18 daemon];
  v20 = [v19 cloudSyncCoordinator];
  [v20 addManagerTask:v17];

  v21 = [(HDCloudSyncManagerTask *)v17 progress];

  return v21;
}

void __61__HDCloudSyncSharedSummaryManager_synchronizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)push:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [WeakRetained profileType];

  if (v7 == 1)
  {
    v8 = objc_loadWeakRetained(&self->_profile);
    v9 = [v8 database];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v35 = 0;
    v12 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:v11 timeout:&v35 error:300.0];
    v13 = v35;

    v14 = [[HDCloudSyncContext alloc] initForPurpose:2 options:64 reason:26];
    v15 = [HDCloudSyncSharedSummaryPushTask alloc];
    v16 = objc_loadWeakRetained(&self->_profile);
    v17 = [v16 cloudSyncManager];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __40__HDCloudSyncSharedSummaryManager_push___block_invoke;
    v31 = &unk_27862F8C8;
    v32 = v12;
    v33 = self;
    v34 = v5;
    v18 = v12;
    v19 = [(HDCloudSyncManagerPipelineTask *)v15 initWithManager:v17 context:v14 accessibilityAssertion:v18 completion:&v28];

    v20 = objc_loadWeakRetained(&self->_profile);
    v21 = [v20 daemon];
    v22 = [v21 cloudSyncCoordinator];
    [v22 addManagerTask:v19];

    v23 = [(HDCloudSyncManagerTask *)v19 progress];
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = self;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Push shared summaries called on non-primary profile. No work needed.", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Push shared summaries called on non-primary profile."];
    (*(v5 + 2))(v5, 0, v25);

    v23 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

void __40__HDCloudSyncSharedSummaryManager_push___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a4;
  [*(a1 + 32) invalidate];
  if (a3)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = v7;
    if (v6)
    {
      v9 = v7;
      v10 = [(HDCloudSyncSharedSummaryManager *)v6 _localKeyValueDomain];
      v16 = 0;
      v11 = [v10 setDate:v9 forKey:@"MostRecentPushDate" error:&v16];

      v12 = v16;
      if ((v11 & 1) == 0)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v18 = v6;
          v19 = 2114;
          v20 = v12;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to set most recent push date: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (id)pull:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [WeakRetained profileType];

  if (v7 == 2)
  {
    v8 = objc_loadWeakRetained(&self->_profile);
    v9 = [v8 database];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v31 = 0;
    v12 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:v11 timeout:&v31 error:300.0];
    v13 = v31;

    v14 = [[HDCloudSyncContext alloc] initForPurpose:3 options:64 reason:25];
    v15 = [HDCloudSyncSharedSummaryPullTask alloc];
    v16 = objc_loadWeakRetained(&self->_profile);
    v17 = [v16 cloudSyncManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__HDCloudSyncSharedSummaryManager_pull___block_invoke;
    v28[3] = &unk_27861A468;
    v29 = v12;
    v30 = v5;
    v18 = v12;
    v19 = [(HDCloudSyncManagerPipelineTask *)v15 initWithManager:v17 context:v14 accessibilityAssertion:v18 completion:v28];

    v20 = objc_loadWeakRetained(&self->_profile);
    v21 = [v20 daemon];
    v22 = [v21 cloudSyncCoordinator];
    [v22 addManagerTask:v19];

    v23 = [(HDCloudSyncManagerTask *)v19 progress];
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = self;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Pull shared summaries called on non-summary sharing profile. No work needed.", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Pull shared summaries called on non-summary sharing profile."];
    (*(v5 + 2))(v5, 0, v25);

    v23 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

void __40__HDCloudSyncSharedSummaryManager_pull___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)revokeParticipantWithOutgoingSummarySharingEntry:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v29 = 0;
  v12 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:v11 timeout:&v29 error:300.0];
  v13 = v29;

  v14 = [[HDCloudSyncContext alloc] initForPurpose:19 options:64 reason:11];
  v15 = [HDCloudSyncSharedSummaryRevokeParticipantTask alloc];
  v16 = objc_loadWeakRetained(&self->_profile);
  v17 = [v16 cloudSyncManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__HDCloudSyncSharedSummaryManager_revokeParticipantWithOutgoingSummarySharingEntry_completion___block_invoke;
  v26[3] = &unk_27862F8F0;
  v27 = v12;
  v28 = v6;
  v18 = v6;
  v19 = v12;
  v20 = [(HDCloudSyncSharedSummaryRevokeParticipantTask *)v15 initWithManager:v17 context:v14 codableEntry:v7 accessibilityAssertion:v19 completion:v26];

  [(HDCloudSyncManagerTask *)v20 setPriority:100];
  v21 = objc_loadWeakRetained(&self->_profile);
  v22 = [v21 daemon];
  v23 = [v22 cloudSyncCoordinator];
  [v23 addManagerTask:v20];

  v24 = [(HDCloudSyncManagerTask *)v20 progress];

  return v24;
}

void __95__HDCloudSyncSharedSummaryManager_revokeParticipantWithOutgoingSummarySharingEntry_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (HDKeyValueDomain)_localKeyValueDomain
{
  v2 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [(HDKeyValueDomain *)v2 initWithCategory:0 domainName:@"CloudSyncSharedSummary" profile:WeakRetained];

  return v4;
}

- (void)scheduleBackgroundPush
{
  v25 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = [(HDCloudSyncSharedSummaryManager *)self _localKeyValueDomain];
    v20 = 0;
    v4 = [v3 dateForKey:@"MostRecentPushDate" error:&v20];
    v5 = v20;
    v6 = v5;
    if (v4 || !v5)
    {
      v8 = v4;
    }

    else
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v6;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to lookup most recent sync date; using now: %{public}@", buf, 0x16u);
      }

      v8 = [MEMORY[0x277CBEAA8] date];
    }

    v18 = v8;

    [v18 timeIntervalSinceReferenceDate];
  }

  else
  {
    [0 timeIntervalSinceReferenceDate];
  }

  v10 = v9 + 7200.0;
  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v10 - v12;

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained daemon];
  v16 = [v15 cloudSyncCoordinator];
  [v16 scheduleSharedSummaryPushWithMaximumDelay:{fmax(v13, 30.0)}];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)scheduleUrgentPush
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v2 = [WeakRetained daemon];
  v3 = [v2 cloudSyncCoordinator];
  [v3 scheduleSharedSummaryPushWithMaximumDelay:*&_urgentLatency];
}

@end