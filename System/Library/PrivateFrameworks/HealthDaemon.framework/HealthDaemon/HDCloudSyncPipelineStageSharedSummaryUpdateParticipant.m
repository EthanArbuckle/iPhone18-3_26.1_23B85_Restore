@interface HDCloudSyncPipelineStageSharedSummaryUpdateParticipant
- (HDCloudSyncPipelineStageSharedSummaryUpdateParticipant)initWithSummarySharingEntry:(id)a3 configuration:(id)a4 authorizationIdentifiersToAdd:(id)a5 authorizationIdentifiersToDelete:(id)a6;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryUpdateParticipant

- (HDCloudSyncPipelineStageSharedSummaryUpdateParticipant)initWithSummarySharingEntry:(id)a3 configuration:(id)a4 authorizationIdentifiersToAdd:(id)a5 authorizationIdentifiersToDelete:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HDCloudSyncPipelineStageSharedSummaryUpdateParticipant;
  v13 = [(HDCloudSyncPipelineStage *)&v21 initWithConfiguration:a4 cloudState:0];
  if (v13)
  {
    v14 = [v10 copy];
    codableEntry = v13->_codableEntry;
    v13->_codableEntry = v14;

    v16 = [v11 copy];
    authorizationIdentifiersToAdd = v13->_authorizationIdentifiersToAdd;
    v13->_authorizationIdentifiersToAdd = v16;

    v18 = [v12 copy];
    authorizationIdentifiersToDelete = v13->_authorizationIdentifiersToDelete;
    v13->_authorizationIdentifiersToDelete = v18;
  }

  return v13;
}

- (void)main
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:v5 name:@"Update Participant" continueOnSubOperationError:0];

  v7 = objc_alloc(MEMORY[0x277CBC5E8]);
  v8 = MEMORY[0x277CBC5F8];
  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v9 repository];
  v11 = [v10 syncCircleIdentifier];
  v12 = [v8 hd_unifiedSyncZoneIDForSyncCircleIdentifier:v11];
  v13 = [v7 initWithZoneID:v12];

  v14 = [HDCloudSyncCreateZonesOperation alloc];
  v15 = [(HDCloudSyncOperation *)self configuration];
  v16 = [(HDCloudSyncOperation *)self cloudState];
  v26[0] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v18 = [(HDCloudSyncOperation *)self configuration];
  v19 = [v18 repository];
  v20 = [v19 primaryCKContainer];
  v21 = [(HDCloudSyncCreateZonesOperation *)v14 initWithConfiguration:v15 cloudState:v16 zones:v17 container:v20];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v21 transitionHandler:0];
  v22 = [HDCloudSyncSharedSummaryUpdateParticipantOperation alloc];
  v23 = [(HDCloudSyncOperation *)self configuration];
  v24 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)v22 initWithConfiguration:v23 codableEntry:self->_codableEntry authorizationIdentifiersToAdd:self->_authorizationIdentifiersToAdd authorizationIdentifiersToDelete:self->_authorizationIdentifiersToDelete];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v24 transitionHandler:0];
  [(HDCloudSyncOperation *)self delegateToOperation:v6];

  v25 = *MEMORY[0x277D85DE8];
}

@end