@interface HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState

- (void)main
{
  v25[1] = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profileType = [repository profileType];

  if (profileType == 1)
  {
    v6 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v8 = [(HDCloudSyncCompoundOperation *)v6 initWithConfiguration:configuration2 cloudState:0 name:@"Synchronize Shared Summary State" continueOnSubOperationError:0];

    v9 = objc_alloc(MEMORY[0x277CBC5E8]);
    v10 = MEMORY[0x277CBC5F8];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    syncCircleIdentifier = [repository2 syncCircleIdentifier];
    v14 = [v10 hd_privateMetadataZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
    v15 = [v9 initWithZoneID:v14];

    v16 = [HDCloudSyncCreateZonesOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    v25[0] = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration5 repository];
    primaryCKContainer = [repository3 primaryCKContainer];
    v22 = [(HDCloudSyncCreateZonesOperation *)v16 initWithConfiguration:configuration4 cloudState:0 zones:v18 container:primaryCKContainer];

    [(HDCloudSyncCompoundOperation *)v8 addOperation:v22 transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v8 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v8 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v8 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncOperation *)self delegateToOperation:v8];

    v23 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

@end