@interface HDCloudSyncManagerShowTask
- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context;
- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion;
- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
- (void)didFailWithErrors:(id)errors;
- (void)didFinishWithSuccess;
@end

@implementation HDCloudSyncManagerShowTask

- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion
{
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE660];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncManagerShowTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion
{
  completionCopy = completion;
  assertionCopy = assertion;
  managerCopy = manager;
  v15 = [context subContextByAddingOptions:64];
  v19.receiver = self;
  v19.super_class = HDCloudSyncManagerShowTask;
  v16 = [(HDCloudSyncManagerPipelineTask *)&v19 initWithManager:managerCopy context:v15 accessibilityAssertion:assertionCopy completion:completionCopy];

  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    intermediateRepositoryDescription = v16->_intermediateRepositoryDescription;
    v16->_intermediateRepositoryDescription = 0;

    v16->_updateCacheAndPrepareForSync = sync;
  }

  return v16;
}

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  v6 = [context subContextByAddingOptions:64];

  v7 = [HDCloudSyncPipeline alloc];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v10 = [(HDCloudSyncPipeline *)v7 initForContext:v6 repository:repositoryCopy accessibilityAssertion:0 queue:queue];

  if (self->_updateCacheAndPrepareForSync)
  {
    v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
    operationConfiguration = [v10 operationConfiguration];
    v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:operationConfiguration cloudState:0];
    [v10 addStage:v13];

    v14 = [HDCloudSyncPipelineStageSynchronize alloc];
    operationConfiguration2 = [v10 operationConfiguration];
    v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:operationConfiguration2 cloudState:0];
    [v10 addStage:v16];

    v17 = [HDCloudSyncPipelineStagePrepareForSync alloc];
    operationConfiguration3 = [v10 operationConfiguration];
    v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
    [v10 addStage:v19];
  }

  objc_initWeak(&location, self);
  v20 = [HDCloudSyncPipelineStageDescribe alloc];
  operationConfiguration4 = [v10 operationConfiguration];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __52__HDCloudSyncManagerShowTask_pipelineForRepository___block_invoke;
  v27 = &unk_278627DB8;
  objc_copyWeak(&v28, &location);
  v22 = [(HDCloudSyncPipelineStageDescribe *)v20 initWithConfiguration:operationConfiguration4 cloudState:0 respositoryDescriptionHandler:&v24];
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

- (void)didFailWithErrors:(id)errors
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(HDCloudSyncPipelineStageDescription *)self->_intermediateRepositoryDescription copy];
  objc_setProperty_atomic_copy(self, v5, v4, 160);

  intermediateRepositoryDescription = self->_intermediateRepositoryDescription;
  self->_intermediateRepositoryDescription = 0;

  os_unfair_lock_unlock(&self->_lock);
}

@end