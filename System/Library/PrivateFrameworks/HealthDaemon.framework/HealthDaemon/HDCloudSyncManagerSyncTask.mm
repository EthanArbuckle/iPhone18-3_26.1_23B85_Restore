@interface HDCloudSyncManagerSyncTask
- (BOOL)combineWithTask:(id)task;
- (id)pipelineForRepository:(id)repository;
- (void)didFailWithErrors:(id)errors;
- (void)didFinishWithSuccess;
@end

@implementation HDCloudSyncManagerSyncTask

- (id)pipelineForRepository:(id)repository
{
  v184 = *MEMORY[0x277D85DE8];
  repositoryCopy = repository;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    context = [(HDCloudSyncManagerRepositoryTask *)self context];
    v180 = 138543618;
    selfCopy = self;
    v182 = 2114;
    v183 = context;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting cloud sync task with context %{public}@", &v180, 0x16u);
  }

  v8 = [HDCloudSyncPipeline alloc];
  context2 = [(HDCloudSyncManagerRepositoryTask *)self context];
  accessibilityAssertion = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v13 = [(HDCloudSyncPipeline *)v8 initForContext:context2 repository:repositoryCopy accessibilityAssertion:accessibilityAssertion queue:queue];

  v14 = v13;
  v15 = v14;
  if (self)
  {
    context3 = [(HDCloudSyncManagerRepositoryTask *)self context];
    options = [context3 options];

    if ((options & 0x800) == 0)
    {
      v18 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
      operationConfiguration = [v15 operationConfiguration];
      v20 = [(HDCloudSyncPipelineStage *)v18 initWithConfiguration:operationConfiguration cloudState:0];
      [v15 addStage:v20];
    }

    v21 = v15;
    v22 = [HDCloudSyncDetectSyncDisabledOperation alloc];
    operationConfiguration2 = [v21 operationConfiguration];
    v24 = [(HDCloudSyncOperation *)v22 initWithConfiguration:operationConfiguration2 cloudState:0];

    asPipelineStage = [(HDCloudSyncOperation *)v24 asPipelineStage];
    [v21 addStage:asPipelineStage];

    v26 = repositoryCopy;
    v27 = v21;
    context4 = [(HDCloudSyncManagerRepositoryTask *)self context];
    syncRequest = [context4 syncRequest];
    if (syncRequest)
    {
      v30 = syncRequest;
      contextSyncRequest = [syncRequest contextSyncRequest];

      if (!contextSyncRequest)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    syncAvailability = [v26 syncAvailability];
    shouldSyncDeviceContext = [syncAvailability shouldSyncDeviceContext];

    if (shouldSyncDeviceContext)
    {
      context5 = [(HDCloudSyncManagerRepositoryTask *)self context];
      syncRequest2 = [context5 syncRequest];

      if (!syncRequest2)
      {
        v50 = [HDCloudSyncPipelineStageContextSyncPush alloc];
        operationConfiguration3 = [v27 operationConfiguration];
        v49 = [(HDCloudSyncPipelineStage *)v50 initWithConfiguration:operationConfiguration3 cloudState:0];

        [(HDCloudSyncPipelineStage *)v49 setCriticalFailureOnError:0];
        [v27 addStage:v49];
        v52 = [HDCloudSyncPipelineStageContextSyncPull alloc];
        operationConfiguration4 = [v27 operationConfiguration];
        v54 = [(HDCloudSyncPipelineStage *)v52 initWithConfiguration:operationConfiguration4 cloudState:0];

        [(HDCloudSyncPipelineStage *)v54 setCriticalFailureOnError:0];
        [v27 addStage:v54];

        goto LABEL_16;
      }

      context6 = [(HDCloudSyncManagerRepositoryTask *)self context];
      syncRequest3 = [context6 syncRequest];
      contextSyncRequest2 = [syncRequest3 contextSyncRequest];
      push = [contextSyncRequest2 push];

      if (push)
      {
        v40 = [HDCloudSyncPipelineStageContextSyncPush alloc];
        operationConfiguration5 = [v27 operationConfiguration];
        v42 = [(HDCloudSyncPipelineStage *)v40 initWithConfiguration:operationConfiguration5 cloudState:0];

        [(HDCloudSyncPipelineStage *)v42 setCriticalFailureOnError:0];
        [v27 addStage:v42];
      }

      context7 = [(HDCloudSyncManagerRepositoryTask *)self context];
      syncRequest4 = [context7 syncRequest];
      contextSyncRequest3 = [syncRequest4 contextSyncRequest];
      pull = [contextSyncRequest3 pull];

      if (pull)
      {
        v47 = [HDCloudSyncPipelineStageContextSyncPull alloc];
        operationConfiguration6 = [v27 operationConfiguration];
        v49 = [(HDCloudSyncPipelineStage *)v47 initWithConfiguration:operationConfiguration6 cloudState:0];

        [(HDCloudSyncPipelineStage *)v49 setCriticalFailureOnError:0];
        [v27 addStage:v49];
LABEL_16:
      }
    }
  }

  else
  {

    v172 = repositoryCopy;
    v173 = v15;
  }

LABEL_17:

  v55 = repositoryCopy;
  v56 = v15;
  v57 = v56;
  if (!self)
  {

    v174 = v57;
    v175 = v174;

    v176 = v55;
    v177 = v175;
    goto LABEL_50;
  }

  context8 = [(HDCloudSyncManagerRepositoryTask *)self context];
  syncRequest5 = [context8 syncRequest];
  if (syncRequest5)
  {
    v60 = syncRequest5;
    stateSyncRequest = [syncRequest5 stateSyncRequest];

    if (!stateSyncRequest)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  syncAvailability2 = [v55 syncAvailability];
  shouldSyncStateEntities = [syncAvailability2 shouldSyncStateEntities];

  if (shouldSyncStateEntities)
  {
    v64 = [HDCloudSyncPipelineStageStateSync alloc];
    operationConfiguration7 = [v57 operationConfiguration];
    v66 = [(HDCloudSyncPipelineStage *)v64 initWithConfiguration:operationConfiguration7 cloudState:0];

    [(HDCloudSyncPipelineStage *)v66 setCriticalFailureOnError:0];
    [v57 addStage:v66];
  }

LABEL_23:

  v67 = v57;
  context9 = [(HDCloudSyncManagerRepositoryTask *)self context];
  syncRequest6 = [context9 syncRequest];
  v70 = syncRequest6;
  if (!syncRequest6 || ([(HDCloudSyncPipelineStageSynchronize *)syncRequest6 summarySharingSyncRequest], v71 = objc_claimAutoreleasedReturnValue(), v71, v71) || ([(HDCloudSyncPipelineStageSynchronize *)v70 medicalIDSyncRequest], v72 = objc_claimAutoreleasedReturnValue(), v72, v72))
  {

    goto LABEL_27;
  }

  changesSyncRequest = [(HDCloudSyncPipelineStageSynchronize *)v70 changesSyncRequest];

  if (!changesSyncRequest)
  {

    goto LABEL_28;
  }

  changesSyncRequest2 = [(HDCloudSyncPipelineStageSynchronize *)v70 changesSyncRequest];
  lite = [changesSyncRequest2 lite];

  if ((lite & 1) == 0)
  {
LABEL_27:
    v73 = [HDCloudSyncPipelineStageSynchronize alloc];
    context9 = [v67 operationConfiguration];
    v70 = [(HDCloudSyncPipelineStage *)v73 initWithConfiguration:context9 cloudState:0];
    [v67 addStage:v70];
LABEL_28:
  }

  v74 = v67;
  context10 = [(HDCloudSyncManagerRepositoryTask *)self context];
  syncRequest7 = [context10 syncRequest];
  if (!syncRequest7)
  {

LABEL_33:
    context11 = [(HDCloudSyncManagerRepositoryTask *)self context];
    options2 = [context11 options];

    if ((options2 & 0x200) == 0)
    {
      v83 = [HDCloudSyncPipelineStageCheckForRequiredProfileDeletion alloc];
      context10 = [v74 operationConfiguration];
      v77 = [(HDCloudSyncPipelineStage *)v83 initWithConfiguration:context10 cloudState:0];
      [v74 addStage:v77];
LABEL_36:

      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v77 = syncRequest7;
  changesSyncRequest3 = [(HDCloudSyncPipelineStageCheckForRequiredProfileDeletion *)syncRequest7 changesSyncRequest];

  if (!changesSyncRequest3)
  {

    goto LABEL_36;
  }

  changesSyncRequest4 = [(HDCloudSyncPipelineStageCheckForRequiredProfileDeletion *)v77 changesSyncRequest];
  lite2 = [changesSyncRequest4 lite];

  if ((lite2 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:

  v84 = v55;
  v85 = v74;
  syncAvailability3 = [v84 syncAvailability];
  if ([syncAvailability3 shouldSyncSummarySharingPull])
  {
  }

  else
  {
    syncAvailability4 = [v84 syncAvailability];
    shouldSyncSummarySharingPush = [syncAvailability4 shouldSyncSummarySharingPush];

    if (!shouldSyncSummarySharingPush)
    {
      goto LABEL_50;
    }
  }

  context12 = [(HDCloudSyncManagerRepositoryTask *)self context];
  syncRequest8 = [(HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState *)context12 syncRequest];
  v91 = v84;
  if (!syncRequest8 || ([syncRequest8 summarySharingSyncRequest], v92 = objc_claimAutoreleasedReturnValue(), v92, v92))
  {

    goto LABEL_43;
  }

  changesSyncRequest5 = [syncRequest8 changesSyncRequest];

  if (!changesSyncRequest5)
  {

    goto LABEL_48;
  }

  changesSyncRequest6 = [syncRequest8 changesSyncRequest];
  lite3 = [changesSyncRequest6 lite];

  if ((lite3 & 1) == 0)
  {
LABEL_43:
    v93 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
    operationConfiguration8 = [v85 operationConfiguration];
    context12 = [(HDCloudSyncPipelineStage *)v93 initWithConfiguration:operationConfiguration8 cloudState:0];

    [(HDCloudSyncPipelineStage *)context12 setCriticalFailureOnError:0];
    syncAvailability5 = [v91 syncAvailability];
    shouldSyncSummarySharingPull = [syncAvailability5 shouldSyncSummarySharingPull];

    if (shouldSyncSummarySharingPull)
    {
      v97 = off_27860DEA0;
    }

    else
    {
      syncAvailability6 = [v91 syncAvailability];
      shouldSyncSummarySharingPush2 = [syncAvailability6 shouldSyncSummarySharingPush];

      if (!shouldSyncSummarySharingPush2)
      {
LABEL_49:

        goto LABEL_50;
      }

      v97 = off_27860DEA8;
    }

    v100 = objc_alloc(*v97);
    operationConfiguration9 = [v85 operationConfiguration];
    syncRequest8 = [v100 initWithConfiguration:operationConfiguration9 cloudState:0];

    [syncRequest8 setCriticalFailureOnError:0];
    [v85 addStage:context12];
    [v85 addStage:syncRequest8];
LABEL_48:

    goto LABEL_49;
  }

LABEL_50:

  v102 = v55;
  v103 = v57;
  v104 = v103;
  if (self)
  {
    context13 = [(HDCloudSyncManagerRepositoryTask *)self context];
    syncRequest9 = [(HDCloudSyncPipelineStageMedicalID *)context13 syncRequest];
    v107 = v102;
    behavior = [v107 behavior];
    supportsMedicalIDSync = [behavior supportsMedicalIDSync];

    if (supportsMedicalIDSync)
    {
      if (!syncRequest9 || ([syncRequest9 medicalIDSyncRequest], v110 = objc_claimAutoreleasedReturnValue(), v110, v110))
      {

LABEL_55:
        syncAvailability7 = [v107 syncAvailability];
        shouldSyncMedicalID = [syncAvailability7 shouldSyncMedicalID];

        if (!shouldSyncMedicalID)
        {
          goto LABEL_65;
        }

        v113 = [HDCloudSyncPipelineStageMedicalID alloc];
        operationConfiguration10 = [v104 operationConfiguration];
        context13 = [(HDCloudSyncPipelineStage *)v113 initWithConfiguration:operationConfiguration10 cloudState:0];

        [(HDCloudSyncPipelineStage *)context13 setCriticalFailureOnError:0];
        [v104 addStage:context13];
        goto LABEL_64;
      }

      changesSyncRequest7 = [syncRequest9 changesSyncRequest];

      if (changesSyncRequest7)
      {
        changesSyncRequest8 = [syncRequest9 changesSyncRequest];
        lite4 = [changesSyncRequest8 lite];

        if (lite4)
        {
LABEL_65:

          v121 = v107;
          v122 = v104;
          context14 = [(HDCloudSyncManagerRepositoryTask *)self context];
          syncRequest10 = [context14 syncRequest];
          if (syncRequest10)
          {
            v125 = syncRequest10;
            changesSyncRequest9 = [syncRequest10 changesSyncRequest];

            if (!changesSyncRequest9)
            {
              goto LABEL_85;
            }
          }

          else
          {
          }

          syncAvailability8 = [v121 syncAvailability];
          if ([syncAvailability8 shouldPush])
          {
          }

          else
          {
            syncAvailability9 = [v121 syncAvailability];
            shouldPull = [syncAvailability9 shouldPull];

            if (!shouldPull)
            {
              goto LABEL_85;
            }
          }

          v130 = [HDCloudSyncPipelineStagePush alloc];
          operationConfiguration11 = [v122 operationConfiguration];
          v132 = [(HDCloudSyncPipelineStagePush *)v130 initWithConfiguration:operationConfiguration11 cloudState:0];

          [(HDCloudSyncPipelineStage *)v132 setCriticalFailureOnError:0];
          v133 = [HDCloudSyncPipelineStagePull alloc];
          operationConfiguration12 = [v122 operationConfiguration];
          v135 = [(HDCloudSyncPipelineStagePull *)v133 initWithConfiguration:operationConfiguration12 cloudState:0];

          [(HDCloudSyncPipelineStage *)v135 setCriticalFailureOnError:0];
          context15 = [(HDCloudSyncManagerRepositoryTask *)self context];
          isFastPushOrPull = [context15 isFastPushOrPull];

          v138 = [HDCloudSyncPipelineStagePrepareForSync alloc];
          operationConfiguration13 = [v122 operationConfiguration];
          v140 = [(HDCloudSyncPipelineStage *)v138 initWithConfiguration:operationConfiguration13 cloudState:0];
          [v122 addStage:v140];

          if (isFastPushOrPull)
          {
            context16 = [(HDCloudSyncManagerRepositoryTask *)self context];
            if (([context16 options] & 0x80) != 0)
            {
              syncAvailability10 = [v121 syncAvailability];
              shouldPush = [syncAvailability10 shouldPush];

              if (shouldPush)
              {
                v148 = [HDCloudSyncDeleteStoreOnChildOperation alloc];
                operationConfiguration14 = [v122 operationConfiguration];
                v150 = [(HDCloudSyncOperation *)v148 initWithConfiguration:operationConfiguration14 cloudState:0];
                asPipelineStage2 = [(HDCloudSyncOperation *)v150 asPipelineStage];
                [v122 addStage:asPipelineStage2];

                [v122 addStage:v132];
              }
            }

            else
            {
            }

            context17 = [(HDCloudSyncManagerRepositoryTask *)self context];
            if (([context17 options] & 0x1000) == 0)
            {

LABEL_84:
              goto LABEL_85;
            }

            syncAvailability11 = [v121 syncAvailability];
            shouldPull2 = [syncAvailability11 shouldPull];

            if (!shouldPull2)
            {
              goto LABEL_84;
            }
          }

          else
          {
            syncAvailability12 = [v121 syncAvailability];
            shouldPush2 = [syncAvailability12 shouldPush];

            if (shouldPush2)
            {
              [v122 addStage:v132];
            }

            syncAvailability13 = [v121 syncAvailability];
            shouldPull3 = [syncAvailability13 shouldPull];

            if (!shouldPull3)
            {
              goto LABEL_84;
            }
          }

          [v122 addStage:v135];
          goto LABEL_84;
        }

        goto LABEL_55;
      }
    }

LABEL_64:
    goto LABEL_65;
  }

  v178 = v102;
  v179 = v104;
LABEL_85:

  v155 = v102;
  v156 = v104;
  if (!self)
  {
    goto LABEL_96;
  }

  context18 = [(HDCloudSyncManagerRepositoryTask *)self context];
  syncRequest11 = [context18 syncRequest];
  v159 = v155;
  v160 = v159;
  if (syncRequest11)
  {
    changesSyncRequest10 = [(HDCloudSyncPipelineStageAttachments *)syncRequest11 changesSyncRequest];

    if (!changesSyncRequest10)
    {

LABEL_94:
      goto LABEL_95;
    }

    changesSyncRequest11 = [(HDCloudSyncPipelineStageAttachments *)syncRequest11 changesSyncRequest];
    lite5 = [changesSyncRequest11 lite];

    if (lite5)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  context18 = [(HDCloudSyncManagerRepositoryTask *)self context];
  if (([context18 options] & 0x800) == 0)
  {
    syncAvailability14 = [v160 syncAvailability];
    shouldSyncAttachments = [syncAvailability14 shouldSyncAttachments];

    if (!shouldSyncAttachments)
    {
      goto LABEL_96;
    }

    v166 = [HDCloudSyncPipelineStageAttachments alloc];
    context18 = [v156 operationConfiguration];
    syncRequest11 = [(HDCloudSyncPipelineStage *)v166 initWithConfiguration:context18 cloudState:0];
    [v156 addStage:syncRequest11];
    goto LABEL_94;
  }

LABEL_95:

LABEL_96:
  v167 = *MEMORY[0x277D85DE8];

  return v156;
}

- (void)didFinishWithSuccess
{
  v15 = *MEMORY[0x277D85DE8];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  [manager updateErrorRequiringUserAction:0];

  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:1 error:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mirroringTasks = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v5 = [mirroringTasks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mirroringTasks);
        }

        [*(*(&v10 + 1) + 8 * v8++) didFinishWithSuccess];
      }

      while (v6 != v8);
      v6 = [mirroringTasks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithErrors:(id)errors
{
  v19 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  firstObject = [errorsCopy firstObject];
  [manager updateErrorRequiringUserAction:firstObject];

  firstObject2 = [errorsCopy firstObject];
  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:0 error:firstObject2];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mirroringTasks = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v9 = [mirroringTasks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(mirroringTasks);
        }

        [*(*(&v14 + 1) + 8 * v12++) didFailWithErrors:errorsCopy];
      }

      while (v10 != v12);
      v10 = [mirroringTasks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)combineWithTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  context2 = [taskCopy context];
  if (([context isEquivalent:context2] & 1) == 0)
  {

    goto LABEL_6;
  }

  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  profile = [manager profile];
  profileIdentifier = [profile profileIdentifier];
  manager2 = [taskCopy manager];
  profile2 = [manager2 profile];
  profileIdentifier2 = [profile2 profileIdentifier];
  v15 = [profileIdentifier isEqual:profileIdentifier2];

  if (!v15)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  [taskCopy mirrorTask:self];
  v13 = 1;
LABEL_7:

  return v13;
}

@end