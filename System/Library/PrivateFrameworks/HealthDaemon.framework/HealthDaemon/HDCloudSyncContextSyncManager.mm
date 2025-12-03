@interface HDCloudSyncContextSyncManager
- (HDCloudSyncContextSyncManager)initWithProfile:(id)profile;
- (id)pull:(id)pull;
- (id)push:(id)push;
@end

@implementation HDCloudSyncContextSyncManager

- (HDCloudSyncContextSyncManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDCloudSyncContextSyncManager;
  v5 = [(HDCloudSyncContextSyncManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)push:(id)push
{
  pushCopy = push;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26 = 0;
  v9 = [database takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v26 error:300.0];
  v10 = v26;

  v11 = [[HDCloudSyncContext alloc] initForPurpose:2 options:0 reason:28];
  v12 = [HDCloudSyncContextSyncPushTask alloc];
  v13 = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [v13 cloudSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__HDCloudSyncContextSyncManager_push___block_invoke;
  v23[3] = &unk_27861A468;
  v24 = v9;
  v25 = pushCopy;
  v15 = pushCopy;
  v16 = v9;
  v17 = [(HDCloudSyncManagerPipelineTask *)v12 initWithManager:cloudSyncManager context:v11 accessibilityAssertion:v16 completion:v23];

  v18 = objc_loadWeakRetained(&self->_profile);
  daemon = [v18 daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v17];

  progress = [(HDCloudSyncManagerTask *)v17 progress];

  return progress;
}

void __38__HDCloudSyncContextSyncManager_push___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)pull:(id)pull
{
  pullCopy = pull;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26 = 0;
  v9 = [database takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v26 error:300.0];
  v10 = v26;

  v11 = [[HDCloudSyncContext alloc] initForPurpose:3 options:64 reason:28];
  v12 = [HDCloudSyncContextSyncPullTask alloc];
  v13 = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [v13 cloudSyncManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__HDCloudSyncContextSyncManager_pull___block_invoke;
  v23[3] = &unk_27861A468;
  v24 = v9;
  v25 = pullCopy;
  v15 = pullCopy;
  v16 = v9;
  v17 = [(HDCloudSyncManagerPipelineTask *)v12 initWithManager:cloudSyncManager context:v11 accessibilityAssertion:v16 completion:v23];

  v18 = objc_loadWeakRetained(&self->_profile);
  daemon = [v18 daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v17];

  progress = [(HDCloudSyncManagerTask *)v17 progress];

  return progress;
}

void __38__HDCloudSyncContextSyncManager_pull___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

@end