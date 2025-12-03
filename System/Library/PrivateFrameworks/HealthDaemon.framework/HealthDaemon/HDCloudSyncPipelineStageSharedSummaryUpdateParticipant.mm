@interface HDCloudSyncPipelineStageSharedSummaryUpdateParticipant
- (HDCloudSyncPipelineStageSharedSummaryUpdateParticipant)initWithSummarySharingEntry:(id)entry configuration:(id)configuration authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryUpdateParticipant

- (HDCloudSyncPipelineStageSharedSummaryUpdateParticipant)initWithSummarySharingEntry:(id)entry configuration:(id)configuration authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete
{
  entryCopy = entry;
  addCopy = add;
  deleteCopy = delete;
  v21.receiver = self;
  v21.super_class = HDCloudSyncPipelineStageSharedSummaryUpdateParticipant;
  v13 = [(HDCloudSyncPipelineStage *)&v21 initWithConfiguration:configuration cloudState:0];
  if (v13)
  {
    v14 = [entryCopy copy];
    codableEntry = v13->_codableEntry;
    v13->_codableEntry = v14;

    v16 = [addCopy copy];
    authorizationIdentifiersToAdd = v13->_authorizationIdentifiersToAdd;
    v13->_authorizationIdentifiersToAdd = v16;

    v18 = [deleteCopy copy];
    authorizationIdentifiersToDelete = v13->_authorizationIdentifiersToDelete;
    v13->_authorizationIdentifiersToDelete = v18;
  }

  return v13;
}

- (void)main
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:cloudState name:@"Update Participant" continueOnSubOperationError:0];

  v7 = objc_alloc(MEMORY[0x277CBC5E8]);
  v8 = MEMORY[0x277CBC5F8];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  v12 = [v8 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
  v13 = [v7 initWithZoneID:v12];

  v14 = [HDCloudSyncCreateZonesOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  cloudState2 = [(HDCloudSyncOperation *)self cloudState];
  v26[0] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration4 repository];
  primaryCKContainer = [repository2 primaryCKContainer];
  v21 = [(HDCloudSyncCreateZonesOperation *)v14 initWithConfiguration:configuration3 cloudState:cloudState2 zones:v17 container:primaryCKContainer];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v21 transitionHandler:0];
  v22 = [HDCloudSyncSharedSummaryUpdateParticipantOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v24 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)v22 initWithConfiguration:configuration5 codableEntry:self->_codableEntry authorizationIdentifiersToAdd:self->_authorizationIdentifiersToAdd authorizationIdentifiersToDelete:self->_authorizationIdentifiersToDelete];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v24 transitionHandler:0];
  [(HDCloudSyncOperation *)self delegateToOperation:v6];

  v25 = *MEMORY[0x277D85DE8];
}

@end