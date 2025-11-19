@interface HDCloudSyncSharedSummaryRevokeParticipantOperation
- (HDCloudSyncSharedSummaryRevokeParticipantOperation)initWithConfiguration:(id)a3 codableEntry:(id)a4;
- (id)_deleteZonesOperationForParticipant:(id)a3 error:(id *)a4;
- (id)_updatedParticipantRecordInZone:(id)a3 entry:(id)a4 error:(id *)a5;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryRevokeParticipantOperation

- (HDCloudSyncSharedSummaryRevokeParticipantOperation)initWithConfiguration:(id)a3 codableEntry:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HDCloudSyncSharedSummaryRevokeParticipantOperation;
  v7 = [(HDCloudSyncOperation *)&v11 initWithConfiguration:a3 cloudState:0];
  if (v7)
  {
    v8 = [v6 copy];
    codableEntry = v7->_codableEntry;
    v7->_codableEntry = v8;
  }

  return v7;
}

- (void)main
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 cachedCloudState];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 primaryCKContainer];
  v8 = [v7 containerIdentifier];
  v46 = 0;
  v9 = [v4 privateMetadataZoneForContainerID:v8 error:&v46];
  v10 = v46;

  if (v9)
  {
    codableEntry = self->_codableEntry;
    v45 = 0;
    v12 = [(HDCloudSyncSharedSummaryRevokeParticipantOperation *)self _updatedParticipantRecordInZone:v9 entry:codableEntry error:&v45];
    v13 = v45;
    if (v12)
    {
      v44 = 0;
      v14 = [(HDCloudSyncSharedSummaryRevokeParticipantOperation *)self _deleteZonesOperationForParticipant:v12 error:&v44];
      v15 = v44;
      if (v14)
      {
        v16 = [HDCloudSyncCompoundOperation alloc];
        v17 = [(HDCloudSyncOperation *)self configuration];
        v18 = [(HDCloudSyncCompoundOperation *)v16 initWithConfiguration:v17 cloudState:0 name:@"Revoke Participant" continueOnSubOperationError:0];

        [(HDCloudSyncCompoundOperation *)v18 addOperation:v14 transitionHandler:0];
        v40 = v15;
        v19 = [HDCloudSyncModifyRecordsOperation alloc];
        v20 = [(HDCloudSyncOperation *)self configuration];
        v39 = [(HDCloudSyncOperation *)self configuration];
        [v39 repository];
        v21 = v42 = v13;
        [v21 primaryCKContainer];
        v22 = v41 = v14;
        [v12 record];
        v23 = v43 = v10;
        v47 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        v24 = v9;
        v26 = v25 = v12;
        v27 = v19;
        v28 = v20;
        v29 = [(HDCloudSyncModifyRecordsOperation *)v27 initWithConfiguration:v20 container:v22 recordsToSave:v26 recordIDsToDelete:0];

        v12 = v25;
        v9 = v24;

        v10 = v43;
        v14 = v41;

        v13 = v42;
        [(HDCloudSyncCompoundOperation *)v18 addOperation:v29 transitionHandler:0];
        [(HDCloudSyncOperation *)self delegateToOperation:v18];

        v15 = v40;
      }

      else
      {
        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v37 = v33;
          v38 = [v9 zoneIdentifier];
          *buf = 138543874;
          v49 = self;
          v50 = 2114;
          v51 = v38;
          v52 = 2114;
          v53 = v15;
          _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to find zone for participant %{public}@, %{public}@", buf, 0x20u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v35 = v30;
        v36 = [v9 zoneIdentifier];
        *buf = 138543874;
        v49 = self;
        v50 = 2114;
        v51 = v36;
        v52 = 2114;
        v53 = v13;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to find participant record for %{public}@, %{public}@", buf, 0x20u);
      }

      if (v13)
      {
        v31 = 0;
        v32 = v13;
      }

      else
      {
        v31 = 1;
        v32 = 0;
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:v31 error:v32];
    }
  }

  else
  {
    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Private metadata zone not present."];
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_updatedParticipantRecordInZone:(id)a3 entry:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCAD78];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [v7 uuid];
  v12 = [v10 initWithUUIDString:v11];

  v13 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__HDCloudSyncSharedSummaryRevokeParticipantOperation__updatedParticipantRecordInZone_entry_error___block_invoke;
  v21[3] = &unk_27861AD28;
  v22 = v12;
  v14 = v12;
  v15 = [v9 recordsForClass:v13 error:a5 filter:v21];

  if (v15)
  {
    v16 = [v15 firstObject];
    v17 = v16;
    if (v16)
    {
      if ([v16 updateWithLocalEntry:v7 error:a5])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __98__HDCloudSyncSharedSummaryRevokeParticipantOperation__updatedParticipantRecordInZone_entry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_deleteZonesOperationForParticipant:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDCloudSyncOperation *)self configuration];
  v8 = [v7 repository];

  v9 = MEMORY[0x277CBC5F8];
  v10 = [v8 syncCircleIdentifier];
  v11 = [v6 UUID];

  v12 = [v9 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:v10 userIdentifier:v11];

  v13 = [v8 primaryCKContainer];
  v14 = [v13 containerIdentifier];
  v15 = [HDCloudSyncZoneIdentifier identifierForZone:v12 container:v14 scope:2];

  v16 = [(HDCloudSyncOperation *)self configuration];
  v17 = [v16 cachedCloudState];
  v35 = 0;
  v18 = [v17 zonesByIdentifierWithError:&v35];
  v19 = v35;

  if (v18 || !v19)
  {
    v22 = [v18 allValues];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __96__HDCloudSyncSharedSummaryRevokeParticipantOperation__deleteZonesOperationForParticipant_error___block_invoke;
    v33[3] = &unk_2786147D0;
    v23 = v15;
    v34 = v23;
    v24 = [v22 hk_filter:v33];

    if ([v24 count] >= 2)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v38 = self;
        v39 = 2114;
        v40 = v23;
        _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@ Retrieved multiple cached participant zones for identifier %{public}@. This is unexpected.", buf, 0x16u);
      }
    }

    v26 = [v24 firstObject];
    v27 = [HDCloudSyncDeleteZonesOperation alloc];
    v28 = [(HDCloudSyncOperation *)self configuration];
    v21 = [(HDCloudSyncDeleteZonesOperation *)v27 initWithConfiguration:v28 cloudState:0];

    if (v26)
    {
      v29 = [v26 zoneIdentifier];
      v36 = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [(HDCloudSyncDeleteZonesOperation *)v21 setZonesToDelete:v30];
    }
  }

  else if (a4)
  {
    v20 = v19;
    v21 = 0;
    *a4 = v19;
  }

  else
  {
    _HKLogDroppedError();
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __96__HDCloudSyncSharedSummaryRevokeParticipantOperation__deleteZonesOperationForParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType] == 3)
  {
    v4 = [v3 zoneIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end