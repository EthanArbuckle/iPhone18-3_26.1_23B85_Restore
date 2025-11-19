@interface HDCloudSyncManagerShowTask
- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4;
- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 completion:(id)a6;
- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 updateCacheAndPrepareForSync:(BOOL)a6 completion:(id)a7;
- (id)pipelineForRepository:(id)a3;
- (void)didFailWithErrors:(id)a3;
- (void)didFinishWithSuccess;
@end

@implementation HDCloudSyncManagerShowTask

- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 completion:(id)a6
{
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE660];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncManagerShowTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 updateCacheAndPrepareForSync:(BOOL)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [a4 subContextByAddingOptions:64];
  v19.receiver = self;
  v19.super_class = HDCloudSyncManagerShowTask;
  v16 = [(HDCloudSyncManagerPipelineTask *)&v19 initWithManager:v14 context:v15 accessibilityAssertion:v13 completion:v12];

  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    intermediateRepositoryDescription = v16->_intermediateRepositoryDescription;
    v16->_intermediateRepositoryDescription = 0;

    v16->_updateCacheAndPrepareForSync = a6;
  }

  return v16;
}

- (id)pipelineForRepository:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncManagerRepositoryTask *)self context];
  v6 = [v5 subContextByAddingOptions:64];

  v7 = [HDCloudSyncPipeline alloc];
  v8 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v9 = [v8 queue];
  v10 = [(HDCloudSyncPipeline *)v7 initForContext:v6 repository:v4 accessibilityAssertion:0 queue:v9];

  if (self->_updateCacheAndPrepareForSync)
  {
    v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
    v12 = [v10 operationConfiguration];
    v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:v12 cloudState:0];
    [v10 addStage:v13];

    v14 = [HDCloudSyncPipelineStageSynchronize alloc];
    v15 = [v10 operationConfiguration];
    v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:v15 cloudState:0];
    [v10 addStage:v16];

    v17 = [HDCloudSyncPipelineStagePrepareForSync alloc];
    v18 = [v10 operationConfiguration];
    v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
    [v10 addStage:v19];
  }

  objc_initWeak(&location, self);
  v20 = [HDCloudSyncPipelineStageDescribe alloc];
  v21 = [v10 operationConfiguration];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __52__HDCloudSyncManagerShowTask_pipelineForRepository___block_invoke;
  v27 = &unk_278627DB8;
  objc_copyWeak(&v28, &location);
  v22 = [(HDCloudSyncPipelineStageDescribe *)v20 initWithConfiguration:v21 cloudState:0 respositoryDescriptionHandler:&v24];
  [v10 addStage:{v22, v24, v25, v26, v27}];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v10;
}

void __52__HDCloudSyncManagerShowTask_pipelineForRepository___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 34);
    v5 = *&WeakRetained[36]._os_unfair_lock_opaque;
    if (v5)
    {
      v6 = [v5 mergeWithDescription:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = *&WeakRetained[36]._os_unfair_lock_opaque;
    *&WeakRetained[36]._os_unfair_lock_opaque = v6;

    os_unfair_lock_unlock(WeakRetained + 34);
  }
}

- (void)didFinishWithSuccess
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDCloudSyncPipelineStageDescription *)self->_intermediateRepositoryDescription copy];
  objc_setProperty_atomic_copy(self, v4, v3, 160);

  intermediateRepositoryDescription = self->_intermediateRepositoryDescription;
  self->_intermediateRepositoryDescription = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didFailWithErrors:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(HDCloudSyncPipelineStageDescription *)self->_intermediateRepositoryDescription copy];
  objc_setProperty_atomic_copy(self, v5, v4, 160);

  intermediateRepositoryDescription = self->_intermediateRepositoryDescription;
  self->_intermediateRepositoryDescription = 0;

  os_unfair_lock_unlock(&self->_lock);
}

@end