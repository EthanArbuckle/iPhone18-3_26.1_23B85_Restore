@interface HDCloudSyncSharedSummarySynchronizeParticipantsOperation
- (void)main;
- (void)updateRequiredLocalEntries:(id)a3 participants:(id)a4 updatedAuthorizationRecords:(id)a5 updatedRecordIDs:(id)a6;
@end

@implementation HDCloudSyncSharedSummarySynchronizeParticipantsOperation

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 syncAvailability];
  v6 = [v5 shouldSyncSummarySharingPush];

  if (v6)
  {
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 cachedCloudState];
    v9 = [(HDCloudSyncOperation *)self configuration];
    v10 = [v9 repository];
    v11 = [v10 primaryCKContainer];
    v12 = [v11 containerIdentifier];
    v26 = 0;
    v13 = [v8 privateMetadataZoneForContainerID:v12 error:&v26];
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
    v20 = [(HDCloudSyncOperation *)self configuration];
    v21 = [(HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation *)v19 initWithConfiguration:v20 privateMetadataZone:v13 participants:v18];

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
    v28 = self;
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

- (void)updateRequiredLocalEntries:(id)a3 participants:(id)a4 updatedAuthorizationRecords:(id)a5 updatedRecordIDs:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [HDCloudSyncCompoundOperation alloc];
  v15 = [(HDCloudSyncOperation *)self configuration];
  v16 = [(HDCloudSyncCompoundOperation *)v14 initWithConfiguration:v15 cloudState:0 name:@"Synchronize Participants" continueOnSubOperationError:0];

  v17 = [HDCloudSyncSharedSummaryUpdateCodableEntryOperation alloc];
  v18 = [(HDCloudSyncOperation *)self configuration];
  v37 = [(HDCloudSyncSharedSummaryUpdateCodableEntryOperation *)v17 initWithConfiguration:v18 updatedLocalEntries:v13 isActive:0 shouldResolveCNContact:0];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v37 transitionHandler:0];
  v19 = [HDCloudSyncSharedSummaryParticipantProfileCreationOperation alloc];
  v20 = [(HDCloudSyncOperation *)self configuration];
  v36 = [(HDCloudSyncSharedSummaryParticipantProfileCreationOperation *)v19 initWithConfiguration:v20 participants:v12];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v36 transitionHandler:0];
  v21 = [HDCloudSyncSharedSummaryUpdateCodableEntryOperation alloc];
  v22 = [(HDCloudSyncOperation *)self configuration];
  v35 = [(HDCloudSyncSharedSummaryUpdateCodableEntryOperation *)v21 initWithConfiguration:v22 updatedLocalEntries:v13 isActive:1 shouldResolveCNContact:1];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v35 transitionHandler:0];
  v23 = [HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation alloc];
  v24 = [(HDCloudSyncOperation *)self configuration];
  v25 = [(HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation *)v23 initWithConfiguration:v24 participants:v12];

  [(HDCloudSyncCompoundOperation *)v16 addOperation:v25 transitionHandler:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __145__HDCloudSyncSharedSummarySynchronizeParticipantsOperation_updateRequiredLocalEntries_participants_updatedAuthorizationRecords_updatedRecordIDs___block_invoke;
  v38[3] = &unk_278620400;
  v39 = v10;
  v26 = v10;
  v27 = [v12 hk_map:v38];

  v28 = [v27 arrayByAddingObjectsFromArray:v11];

  v29 = [HDCloudSyncModifyRecordsOperation alloc];
  v30 = [(HDCloudSyncOperation *)self configuration];
  v31 = [(HDCloudSyncOperation *)self configuration];
  v32 = [v31 repository];
  v33 = [v32 primaryCKContainer];
  v34 = [(HDCloudSyncModifyRecordsOperation *)v29 initWithConfiguration:v30 container:v33 recordsToSave:v28 recordIDsToDelete:0];

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