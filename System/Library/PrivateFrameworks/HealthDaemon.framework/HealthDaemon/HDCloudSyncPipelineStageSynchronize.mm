@interface HDCloudSyncPipelineStageSynchronize
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSynchronize

- (void)main
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:0 name:@"Synchronize" continueOnSubOperationError:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 repository];
  v8 = [v7 primaryCKContainer];
  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v9 repository];
  v11 = [v10 profileIdentifier];
  v12 = HDDatabaseForContainer(v8, v11);
  v13 = [v12 databaseScope];

  if (v13 == 2)
  {
    v14 = objc_alloc(MEMORY[0x277CBC5E8]);
    v15 = MEMORY[0x277CBC5F8];
    v16 = [(HDCloudSyncOperation *)self configuration];
    v17 = [v16 repository];
    v18 = [v17 syncCircleIdentifier];
    v19 = [v15 hd_unifiedSyncZoneIDForSyncCircleIdentifier:v18];
    v20 = [v14 initWithZoneID:v19];

    v21 = objc_alloc(MEMORY[0x277CBC5E8]);
    v22 = MEMORY[0x277CBC5F8];
    v23 = [(HDCloudSyncOperation *)self configuration];
    v24 = [v23 repository];
    v25 = [v24 syncCircleIdentifier];
    v26 = [v22 hd_privateMetadataZoneIDForSyncCircleIdentifier:v25];
    v27 = [v21 initWithZoneID:v26];

    v28 = [HDCloudSyncCreateZonesOperation alloc];
    v29 = [(HDCloudSyncOperation *)self configuration];
    v37[0] = v20;
    v37[1] = v27;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v31 = [(HDCloudSyncOperation *)self configuration];
    v32 = [v31 repository];
    v33 = [v32 primaryCKContainer];
    v34 = [(HDCloudSyncCreateZonesOperation *)v28 initWithConfiguration:v29 cloudState:0 zones:v30 container:v33];

    v35 = [(HDCloudSyncOperation *)v34 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v5 addOperation:v35 transitionHandler:0];
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v5];

  v36 = *MEMORY[0x277D85DE8];
}

@end