@interface HDCloudSyncPipelineStageAttachments
- (void)main;
@end

@implementation HDCloudSyncPipelineStageAttachments

- (void)main
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:cloudState name:@"Sync Attachments" continueOnSubOperationError:0];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  profileType = [repository profileType];

  if (profileType == 1)
  {
    v10 = objc_alloc(MEMORY[0x277CBC5E8]);
    v11 = MEMORY[0x277CBC5F8];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    syncCircleIdentifier = [repository2 syncCircleIdentifier];
    v15 = [v11 hd_attachmentZoneIDWithSyncCircleIdentifier:syncCircleIdentifier];
    v16 = [v10 initWithZoneID:v15];

    v17 = [HDCloudSyncCreateZonesOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    v25[0] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration5 repository];
    primaryCKContainer = [repository3 primaryCKContainer];
    v23 = [(HDCloudSyncCreateZonesOperation *)v17 initWithConfiguration:configuration4 cloudState:0 zones:v19 container:primaryCKContainer];

    [(HDCloudSyncCompoundOperation *)v6 addOperation:v23 transitionHandler:0];
  }

  [(HDCloudSyncCompoundOperation *)v6 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v6 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v6 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v6 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v6 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncOperation *)self delegateToOperation:v6];

  v24 = *MEMORY[0x277D85DE8];
}

@end