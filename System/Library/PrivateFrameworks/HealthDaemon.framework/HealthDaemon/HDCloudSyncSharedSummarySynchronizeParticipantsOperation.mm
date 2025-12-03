@interface HDCloudSyncSharedSummarySynchronizeParticipantsOperation
- (void)main;
- (void)updateRequiredLocalEntries:(id)entries participants:(id)participants updatedAuthorizationRecords:(id)records updatedRecordIDs:(id)ds;
@end

@implementation HDCloudSyncSharedSummarySynchronizeParticipantsOperation

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];
  shouldSyncSummarySharingPush = [syncAvailability shouldSyncSummarySharingPush];

  if (shouldSyncSummarySharingPush)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v26 = 0;
    v13 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v26];
    v14 = v26;

    if (!v13 && v14)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
LABEL_15:

      goto LABEL_16;
    }

    if (v13)
    {
      v25 = 0;
      v16 = [v13 recordsForClass:objc_opt_class() error:&v25];
      v17 = v25;
      v18 = v17;
      if (!v16)
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v17];
        goto LABEL_14;
      }

      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = [HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    v21 = [(HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation *)v19 initWithConfiguration:configuration4 privateMetadataZone:v13 participants:v18];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_main__block_invoke;
    v24[3] = &unk_278628BE0;
    v24[4] = self;
    [(HDCloudSyncOperation *)v21 setOnSuccess:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_main__block_invoke_2;
    v23[3] = &unk_278628C08;
    v23[4] = self;
    [(HDCloudSyncOperation *)v21 setOnError:v23];
    [(HDCloudSyncOperation *)v21 start];

LABEL_14:
    goto LABEL_15;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

void __64__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 updatedLocalEntries];
  v4 = [v3 participantRecords];
  v5 = [v3 updatedAuthorizationRecords];
  v6 = [v3 updatedParticipantRecordIDs];

  [v2 updateRequiredLocalEntries:v7 participants:v4 updatedAuthorizationRecords:v5 updatedRecordIDs:v6];
}

void __64__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[summary-sharing] Failed to merge local & cloud participants %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateRequiredLocalEntries:(id)entries participants:(id)participants updatedAuthorizationRecords:(id)records updatedRecordIDs:(id)ds
{
  dsCopy = ds;
  recordsCopy = records;
  participantsCopy = participants;
  entriesCopy = entries;
  v14 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v16 = [(HDCloudSyncCompoundOperation *)v14 initWithConfiguration:configuration cloudState:0 name:@"Synchronize Participants" continueOnSubOperationError:0];

  v17 = [HDCloudSyncSharedSummaryUpdateCodableEntryOperation alloc];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  v37 = [(HDCloudSyncSharedSummaryUpdateCodableEntryOperation *)v17 initWithConfiguration:configuration2 updatedLocalEntries:entriesCopy isActive:0 shouldResolveCNContact:0];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v37 transitionHandler:0];
  v19 = [HDCloudSyncSharedSummaryParticipantProfileCreationOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  v36 = [(HDCloudSyncSharedSummaryParticipantProfileCreationOperation *)v19 initWithConfiguration:configuration3 participants:participantsCopy];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v36 transitionHandler:0];
  v21 = [HDCloudSyncSharedSummaryUpdateCodableEntryOperation alloc];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  v35 = [(HDCloudSyncSharedSummaryUpdateCodableEntryOperation *)v21 initWithConfiguration:configuration4 updatedLocalEntries:entriesCopy isActive:1 shouldResolveCNContact:1];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v35 transitionHandler:0];
  v23 = [HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v25 = [(HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation *)v23 initWithConfiguration:configuration5 participants:participantsCopy];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v25 transitionHandler:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __145__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_updateRequiredLocalEntries_participants_updatedAuthorizationRecords_updatedRecordIDs___block_invoke;
  v38[3] = &unk_278620400;
  v39 = dsCopy;
  v26 = dsCopy;
  v27 = [participantsCopy hk_map:v38];

  v28 = [v27 arrayByAddingObjectsFromArray:recordsCopy];

  v29 = [HDCloudSyncModifyRecordsOperation alloc];
  configuration6 = [(HDCloudSyncOperation *)self configuration];
  configuration7 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration7 repository];
  primaryCKContainer = [repository primaryCKContainer];
  v34 = [(HDCloudSyncModifyRecordsOperation *)v29 initWithConfiguration:configuration6 container:primaryCKContainer recordsToSave:v28 recordIDsToDelete:0];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v34 transitionHandler:0];
  [(HDCloudSyncOperation *)self delegateToOperation:v16];
}

id __145__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_updateRequiredLocalEntries_participants_updatedAuthorizationRecords_updatedRecordIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 recordID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 record];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end