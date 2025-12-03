@interface HDCloudSyncManagerPipelineTask
- (BOOL)requiresExistingShareOwnerParticipant;
- (HDCloudSyncManagerPipelineTask)initWithManager:(id)manager context:(id)context;
- (HDCloudSyncManagerPipelineTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
- (void)cancel;
- (void)dealloc;
- (void)mainWithRepositories:(id)repositories error:(id)error;
@end

@implementation HDCloudSyncManagerPipelineTask

- (HDCloudSyncManagerPipelineTask)initWithManager:(id)manager context:(id)context
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncManagerPipelineTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion
{
  managerCopy = manager;
  assertionCopy = assertion;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = HDCloudSyncManagerPipelineTask;
  v13 = [(HDCloudSyncManagerRepositoryTask *)&v26 initWithManager:managerCopy context:context];
  v14 = v13;
  if (v13)
  {
    v13->_lock._os_unfair_lock_opaque = 0;
    if (assertionCopy)
    {
      profile = [managerCopy profile];
      database = [profile database];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = 0;
      v19 = [database cloneAccessibilityAssertion:assertionCopy ownerIdentifier:v18 error:&v25];
      v20 = v25;
      accessibilityAssertion = v14->_accessibilityAssertion;
      v14->_accessibilityAssertion = v19;
    }

    v22 = [completionCopy copy];
    completion = v14->_completion;
    v14->_completion = v22;
  }

  return v14;
}

- (void)dealloc
{
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDCloudSyncManagerPipelineTask;
  [(HDCloudSyncManagerPipelineTask *)&v3 dealloc];
}

- (void)mainWithRepositories:(id)repositories error:(id)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  repositoriesCopy = repositories;
  errorCopy = error;
  v9 = errorCopy;
  if (!repositoriesCopy)
  {
    if (errorCopy)
    {
      v55[0] = errorCopy;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
      [(HDCloudSyncManagerPipelineTask *)self didFailWithErrors:v35];
    }

    else
    {
      [(HDCloudSyncManagerPipelineTask *)self didFailWithErrors:MEMORY[0x277CBEBF8]];
    }

    selfCopy2 = self;
    v37 = 0;
    v38 = v9;
    goto LABEL_23;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __61__HDCloudSyncManagerPipelineTask_mainWithRepositories_error___block_invoke;
  v48[3] = &unk_27862FD08;
  v48[4] = self;
  v10 = [repositoriesCopy hk_map:v48];
  [(HDCloudSyncManagerPipelineTask *)self setPipelines:v10];

  pipelines = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v12 = [pipelines count];

  if (!v12)
  {
    [(HDCloudSyncManagerPipelineTask *)self didFinishWithSuccess];
    selfCopy2 = self;
    v37 = 1;
    v38 = 0;
LABEL_23:
    [(HDCloudSyncManagerPipelineTask *)selfCopy2 callCompletionWithSuccess:v37 error:v38];
    [(HDCloudSyncManagerTask *)self finish];
    goto LABEL_24;
  }

  if ([(HDCloudSyncManagerPipelineTask *)self requiresExistingShareOwnerParticipant])
  {
    manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
    v47 = 0;
    v14 = [manager shareOwnerParticipantWithError:&v47];
    v15 = v47;

    if (v14)
    {

      goto LABEL_6;
    }

    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@: Sync unavailable before setting a source share participant for this profile.", buf, 0xCu);
      if (v15)
      {
        goto LABEL_28;
      }
    }

    else if (v15)
    {
LABEL_28:
      v54 = v15;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      [(HDCloudSyncManagerPipelineTask *)self didFailWithErrors:v41];

      [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:0 error:v15];
      [(HDCloudSyncManagerTask *)self finish];

      goto LABEL_24;
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:729 class:objc_opt_class() selector:a2 format:@"Sync unavailable before setting a source share participant for this profile."];
    goto LABEL_28;
  }

LABEL_6:
  pipelines2 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v17 = 100 * [pipelines2 count];
  progress = [(HDCloudSyncManagerTask *)self progress];
  [progress setTotalUnitCount:v17];

  v19 = objc_alloc(MEMORY[0x277D10AC8]);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __61__HDCloudSyncManagerPipelineTask_mainWithRepositories_error___block_invoke_304;
  v46[3] = &unk_27862FD30;
  v46[4] = self;
  v22 = [v19 initWithDescription:v21 completion:v46];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  pipelines3 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v24 = [pipelines3 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(pipelines3);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        if ([(HDCloudSyncManagerTask *)self priority]== 100)
        {
          [v28 setIgnoreCloudKitOperationDelay:1];
        }

        v29 = [v28 beginWithTaskTree:v22];
        progress2 = [(HDCloudSyncManagerTask *)self progress];
        [progress2 addChild:v29 withPendingUnitCount:100];
      }

      v25 = [pipelines3 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v25);
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    pipelines4 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
    v34 = [pipelines4 count];
    *buf = 138543618;
    selfCopy4 = self;
    v51 = 2048;
    v52 = v34;
    _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning %ld pipelines.", buf, 0x16u);
  }

  [v22 begin];

LABEL_24:
  v39 = *MEMORY[0x277D85DE8];
}

id __61__HDCloudSyncManagerPipelineTask_mainWithRepositories_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pipelineForRepository:a2];
  if ([*(a1 + 32) runWhenSyncProhibited])
  {
    [v3 setContinueWhenSyncDisabled:1];
  }

  return v3;
}

void __61__HDCloudSyncManagerPipelineTask_mainWithRepositories_error___block_invoke_304(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 104));
  [*(*(a1 + 32) + 120) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 104));
  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished successfully.", &v17, 0xCu);
      }

      [*(a1 + 32) didFinishWithSuccess];
      [*(a1 + 32) callCompletionWithSuccess:1 error:0];
    }
  }

  else
  {
    v8 = [v5 allErrors];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v17 = 138543874;
      v18 = v10;
      v19 = 2048;
      v20 = [v8 count];
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed with %ld errors: %{public}@.", &v17, 0x20u);
    }

    [*(a1 + 32) didFailWithErrors:v8];
    v12 = *(a1 + 32);
    v13 = [v8 firstObject];
    [v12 callCompletionWithSuccess:0 error:v13];
  }

  [*(a1 + 32) finish];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)pipelineForRepository:(id)repository
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)cancel
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  pipelines = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v3 = [pipelines countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(pipelines);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [pipelines countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresExistingShareOwnerParticipant
{
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  profile = [manager profile];
  if ([profile profileType] == 3)
  {
    v5 = 1;
  }

  else
  {
    manager2 = [(HDCloudSyncManagerRepositoryTask *)self manager];
    profile2 = [manager2 profile];
    v5 = [profile2 profileType] == 2;
  }

  return v5;
}

@end