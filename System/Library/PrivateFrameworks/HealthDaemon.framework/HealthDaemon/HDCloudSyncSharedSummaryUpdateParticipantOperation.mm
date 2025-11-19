@interface HDCloudSyncSharedSummaryUpdateParticipantOperation
- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)a3;
- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)a3 codableEntry:(id)a4 authorizationIdentifiersToAdd:(id)a5 authorizationIdentifiersToDelete:(id)a6;
- (id)_createOrUpdateAuthorizationRecordInZone:(id)a3 participantRecord:(id)a4 error:(id *)a5;
- (id)_createOrUpdateParticipantRecordInZone:(id)a3 entry:(id)a4 error:(id *)a5;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryUpdateParticipantOperation

- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)a3 codableEntry:(id)a4 authorizationIdentifiersToAdd:(id)a5 authorizationIdentifiersToDelete:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HDCloudSyncSharedSummaryUpdateParticipantOperation;
  v13 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:a3 cloudState:0];
  if (v13)
  {
    v14 = [v10 copy];
    entry = v13->_entry;
    v13->_entry = v14;

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
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 cachedCloudState];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 primaryCKContainer];
  v8 = [v7 containerIdentifier];
  v41 = 0;
  v9 = [v4 privateMetadataZoneForContainerID:v8 error:&v41];
  v10 = v41;

  if (v9)
  {
    entry = self->_entry;
    v40 = 0;
    v12 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _createOrUpdateParticipantRecordInZone:v9 entry:entry error:&v40];
    v13 = v40;
    if (v12)
    {
      v39 = 0;
      v14 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _createOrUpdateAuthorizationRecordInZone:v9 participantRecord:v12 error:&v39];
      v15 = v39;
      if (v14)
      {
        v37 = [HDCloudSyncModifyRecordsOperation alloc];
        v16 = [(HDCloudSyncOperation *)self configuration];
        v33 = [(HDCloudSyncOperation *)self configuration];
        v17 = [v33 repository];
        [v17 primaryCKContainer];
        v18 = v36 = v13;
        [v12 record];
        v19 = v35 = v15;
        v42[0] = v19;
        [v14 record];
        v34 = v12;
        v21 = v20 = v14;
        v42[1] = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        v23 = [(HDCloudSyncModifyRecordsOperation *)v37 initWithConfiguration:v16 container:v18 recordsToSave:v22 recordIDsToDelete:0];
        v38 = v10;
        v24 = v23;

        v14 = v20;
        v12 = v34;

        v15 = v35;
        v13 = v36;

        [(HDCloudSyncOperation *)self delegateToOperation:v24];
        v10 = v38;
      }

      else
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v30 = v26;
          [v9 zoneIdentifier];
          v32 = v31 = v12;
          *buf = 138543874;
          v44 = self;
          v45 = 2114;
          v46 = v32;
          v47 = 2114;
          v48 = v15;
          _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to create or update authorization record for %{public}@, %{public}@", buf, 0x20u);

          v12 = v31;
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v28 = v25;
        v29 = [v9 zoneIdentifier];
        *buf = 138543874;
        v44 = self;
        v45 = 2114;
        v46 = v29;
        v47 = 2114;
        v48 = v13;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to create or update relationship record for %{public}@, %{public}@", buf, 0x20u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
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

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_createOrUpdateParticipantRecordInZone:(id)a3 entry:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = [v9 uuid];
  v12 = [v10 initWithUUIDString:v11];

  v13 = objc_opt_class();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateParticipantRecordInZone_entry_error___block_invoke;
  v28[3] = &unk_27861AD28;
  v14 = v12;
  v29 = v14;
  v15 = [v8 recordsForClass:v13 error:a5 filter:v28];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = [v15 firstObject];
  if (v17)
  {
    v18 = v17;
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v31 = self;
      v32 = 2113;
      v33 = v9;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating participant with entry %{private}@.", buf, 0x16u);
    }

    if ([v18 updateWithLocalEntry:v9 error:a5])
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    goto LABEL_13;
  }

  if (![(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _containsOnlyCategoriesToAddWithError:a5])
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v22 = [HDCloudSyncSharedSummaryParticipantRecord alloc];
  v23 = [v8 zoneIdentifier];
  v24 = [v23 zoneIdentifier];
  v21 = [(HDCloudSyncSharedSummaryParticipantRecord *)v22 initInZone:v24 codableEntry:v9];

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = self;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Adding new participant.", buf, 0xCu);
  }

LABEL_13:

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __105__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateParticipantRecordInZone_entry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_createOrUpdateAuthorizationRecordInZone:(id)a3 participantRecord:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v10 authorizationRecordIdentifier];
  v12 = off_27860E000;
  if (!v11)
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
LABEL_18:
    v27 = objc_alloc(v12[5]);
    v28 = [v9 zoneIdentifier];
    v29 = [v28 zoneIdentifier];
    a5 = [v27 initInZone:v29 UUID:v15 authorizationIdentifiers:self->_authorizationIdentifiersToAdd participantRecord:v10];

    [v10 setAuthorizationRecord:a5];
    goto LABEL_19;
  }

  v13 = v11;
  v14 = objc_opt_class();
  v38 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke;
  v36[3] = &unk_27861AD50;
  v15 = v13;
  v37 = v15;
  v16 = [v9 recordsForClass:v14 error:&v38 filter:v36];
  v17 = v38;
  if (v16)
  {
    v18 = [v16 firstObject];
    v19 = v18;
    v35 = v18 == 0;
    if (v18)
    {
      v34 = v17;
      [v18 updateAuthorizationWithIdentifiersToAdd:self->_authorizationIdentifiersToAdd identifiersToDelete:self->_authorizationIdentifiersToDelete];
      [v19 authorizationIdentifiers];
      v21 = v20 = self;
      v22 = [v21 count];

      if (v22)
      {
        a5 = v19;
        self = v20;
        v12 = off_27860E000;
        v17 = v34;
      }

      else
      {
        v25 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"There are no remaining authorization categories. You must remove the participant from the share instead."];
        self = v20;
        v12 = off_27860E000;
        v17 = v34;
        if (v25)
        {
          if (a5)
          {
            v26 = v25;
            *a5 = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        a5 = 0;
      }
    }

    v24 = v35;
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v32 = v23;
      v33 = [v9 zoneIdentifier];
      *buf = 138543874;
      v40 = self;
      v41 = 2114;
      v42 = v33;
      v43 = 2114;
      v44 = v17;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get authorization records for %{public}@, %{public}@", buf, 0x20u);
    }

    v24 = 0;
    a5 = 0;
  }

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_19:

  v30 = *MEMORY[0x277D85DE8];

  return a5;
}

uint64_t __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)a3
{
  v5 = [(NSArray *)self->_authorizationIdentifiersToDelete count];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Deleting authorization categories is not supported for new records"];
    if (v6)
    {
      if (a3)
      {
        v7 = v6;
        *a3 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5 == 0;
}

@end