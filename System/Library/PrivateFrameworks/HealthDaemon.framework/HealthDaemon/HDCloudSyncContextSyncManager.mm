@interface HDCloudSyncContextSyncManager
- (HDCloudSyncContextSyncManager)initWithProfile:(id)a3;
- (id)pull:(id)a3;
- (id)push:(id)a3;
@end

@implementation HDCloudSyncContextSyncManager

- (HDCloudSyncContextSyncManager)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCloudSyncContextSyncManager;
  v5 = [(HDCloudSyncContextSyncManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)push:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26 = 0;
  v9 = [v6 takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v26 error:300.0];
  v10 = v26;

  v11 = [[HDCloudSyncContext alloc] initForPurpose:2 options:0 reason:28];
  v12 = [HDCloudSyncContextSyncPushTask alloc];
  v13 = objc_loadWeakRetained(&self->_profile);
  v14 = [v13 cloudSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__HDCloudSyncContextSyncManager_push___block_invoke;
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

void __38__HDCloudSyncContextSyncManager_push___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)pull:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26 = 0;
  v9 = [v6 takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v26 error:300.0];
  v10 = v26;

  v11 = [[HDCloudSyncContext alloc] initForPurpose:3 options:64 reason:28];
  v12 = [HDCloudSyncContextSyncPullTask alloc];
  v13 = objc_loadWeakRetained(&self->_profile);
  v14 = [v13 cloudSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__HDCloudSyncContextSyncManager_pull___block_invoke;
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

void __38__HDCloudSyncContextSyncManager_pull___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

@end