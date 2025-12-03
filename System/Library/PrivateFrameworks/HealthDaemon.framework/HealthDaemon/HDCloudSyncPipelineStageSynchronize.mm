@interface HDCloudSyncPipelineStageSynchronize
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSynchronize

- (void)main
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Synchronize" continueOnSubOperationError:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration3 repository];
  profileIdentifier = [repository2 profileIdentifier];
  v12 = HDDatabaseForContainer(primaryCKContainer, profileIdentifier);
  databaseScope = [v12 databaseScope];

  if (databaseScope == 2)
  {
    v14 = objc_alloc(MEMORY[0x277CBC5E8]);
    v15 = MEMORY[0x277CBC5F8];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration4 repository];
    syncCircleIdentifier = [repository3 syncCircleIdentifier];
    v19 = [v15 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
    v20 = [v14 initWithZoneID:v19];

    v21 = objc_alloc(MEMORY[0x277CBC5E8]);
    v22 = MEMORY[0x277CBC5F8];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository4 = [configuration5 repository];
    syncCircleIdentifier2 = [repository4 syncCircleIdentifier];
    v26 = [v22 hd_privateMetadataZoneIDForSyncCircleIdentifier:syncCircleIdentifier2];
    v27 = [v21 initWithZoneID:v26];

    v28 = [HDCloudSyncCreateZonesOperation alloc];
    configuration6 = [(HDCloudSyncOperation *)self configuration];
    v37[0] = v20;
    v37[1] = v27;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    configuration7 = [(HDCloudSyncOperation *)self configuration];
    repository5 = [configuration7 repository];
    primaryCKContainer2 = [repository5 primaryCKContainer];
    v34 = [(HDCloudSyncCreateZonesOperation *)v28 initWithConfiguration:configuration6 cloudState:0 zones:v30 container:primaryCKContainer2];

    operationIgnoringErrors = [(HDCloudSyncOperation *)v34 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v5 addOperation:operationIgnoringErrors transitionHandler:0];
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v5];

  v36 = *MEMORY[0x277D85DE8];
}

@end