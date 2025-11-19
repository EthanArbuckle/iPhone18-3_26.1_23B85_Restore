@interface HDCloudSyncManagerMedicalIDSyncTask
- (BOOL)combineWithTask:(id)a3;
- (id)pipelineForRepository:(id)a3;
- (void)didFailWithErrors:(id)a3;
- (void)didFinishWithSuccess;
@end

@implementation HDCloudSyncManagerMedicalIDSyncTask

- (id)pipelineForRepository:(id)a3
{
  v4 = a3;
  v5 = [HDCloudSyncPipeline alloc];
  v6 = [(HDCloudSyncManagerRepositoryTask *)self context];
  v7 = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  v8 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v9 = [v8 queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:v6 repository:v4 accessibilityAssertion:v7 queue:v9];

  v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  v12 = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:v12 cloudState:0];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageSynchronize alloc];
  v15 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:v15 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStageMedicalID alloc];
  v18 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
  [v10 addStage:v19];

  return v10;
}

- (void)didFinishWithSuccess
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  [v3 updateErrorRequiringUserAction:0];

  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:1 error:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) didFinishWithSuccess];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithErrors:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v6 = [v4 firstObject];
  [v5 updateErrorRequiringUserAction:v6];

  v7 = [v4 firstObject];
  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:0 error:v7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) didFailWithErrors:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)combineWithTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [(HDCloudSyncManagerRepositoryTask *)self context];
  v6 = [v4 context];
  if (([v5 isEquivalent:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v8 = [v7 profileIdentifier];
  v9 = [v4 manager];
  v10 = [v9 profileIdentifier];
  v11 = [v8 isEqual:v10];

  if (!v11)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  [v4 mirrorTask:self];
  v12 = 1;
LABEL_7:

  return v12;
}

@end