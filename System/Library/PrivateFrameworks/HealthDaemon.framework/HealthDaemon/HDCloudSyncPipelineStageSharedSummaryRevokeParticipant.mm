@interface HDCloudSyncPipelineStageSharedSummaryRevokeParticipant
- (HDCloudSyncPipelineStageSharedSummaryRevokeParticipant)initWithOutgoingSummarySharingEntry:(id)entry configuration:(id)configuration;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryRevokeParticipant

- (HDCloudSyncPipelineStageSharedSummaryRevokeParticipant)initWithOutgoingSummarySharingEntry:(id)entry configuration:(id)configuration
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = HDCloudSyncPipelineStageSharedSummaryRevokeParticipant;
  v7 = [(HDCloudSyncPipelineStage *)&v11 initWithConfiguration:configuration cloudState:0];
  if (v7)
  {
    v8 = [entryCopy copy];
    codableEntry = v7->_codableEntry;
    v7->_codableEntry = v8;
  }

  return v7;
}

- (void)main
{
  v3 = [HDCloudSyncSharedSummaryRevokeParticipantOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncSharedSummaryRevokeParticipantOperation *)v3 initWithConfiguration:configuration codableEntry:self->_codableEntry];

  [(HDCloudSyncOperation *)self delegateToOperation:v5];
}

@end