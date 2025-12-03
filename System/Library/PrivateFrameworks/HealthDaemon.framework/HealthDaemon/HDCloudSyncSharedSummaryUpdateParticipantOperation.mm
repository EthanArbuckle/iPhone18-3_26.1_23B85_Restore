@interface HDCloudSyncSharedSummaryUpdateParticipantOperation
- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)error;
- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete;
- (id)_createOrUpdateAuthorizationRecordInZone:(id)zone participantRecord:(id)record error:(id *)error;
- (id)_createOrUpdateParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryUpdateParticipantOperation

- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete
{
  entryCopy = entry;
  addCopy = add;
  deleteCopy = delete;
  v21.receiver = self;
  v21.super_class = HDCloudSyncSharedSummaryUpdateParticipantOperation;
  v13 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:0];
  if (v13)
  {
    v14 = [entryCopy copy];
    entry = v13->_entry;
    v13->_entry = v14;

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
  v49 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v41 = 0;
  v9 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v41];
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
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        configuration4 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration4 repository];
        [repository2 primaryCKContainer];
        v18 = v36 = v13;
        [v12 record];
        v19 = v35 = v15;
        v42[0] = v19;
        [v14 record];
        v34 = v12;
        v21 = v20 = v14;
        v42[1] = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        v23 = [(HDCloudSyncModifyRecordsOperation *)v37 initWithConfiguration:configuration3 container:v18 recordsToSave:v22 recordIDsToDelete:0];
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
          selfCopy2 = self;
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
        zoneIdentifier = [v9 zoneIdentifier];
        *buf = 138543874;
        selfCopy2 = self;
        v45 = 2114;
        v46 = zoneIdentifier;
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

- (id)_createOrUpdateParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  entryCopy = entry;
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [entryCopy uuid];
  v12 = [v10 initWithUUIDString:uuid];

  v13 = objc_opt_class();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateParticipantRecordInZone_entry_error___block_invoke;
  v28[3] = &unk_27861AD28;
  v14 = v12;
  v29 = v14;
  v15 = [zoneCopy recordsForClass:v13 error:error filter:v28];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  firstObject = [v15 firstObject];
  if (firstObject)
  {
    v18 = firstObject;
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      selfCopy2 = self;
      v32 = 2113;
      v33 = entryCopy;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating participant with entry %{private}@.", buf, 0x16u);
    }

    if ([v18 updateWithLocalEntry:entryCopy error:error])
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

  if (![(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _containsOnlyCategoriesToAddWithError:error])
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v22 = [HDCloudSyncSharedSummaryParticipantRecord alloc];
  zoneIdentifier = [zoneCopy zoneIdentifier];
  v23ZoneIdentifier = [zoneIdentifier zoneIdentifier];
  v21 = [(HDCloudSyncSharedSummaryParticipantRecord *)v22 initInZone:v23ZoneIdentifier codableEntry:entryCopy];

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
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

- (id)_createOrUpdateAuthorizationRecordInZone:(id)zone participantRecord:(id)record error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  recordCopy = record;
  authorizationRecordIdentifier = [recordCopy authorizationRecordIdentifier];
  v12 = off_27860E000;
  if (!authorizationRecordIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
LABEL_18:
    v27 = objc_alloc(v12[5]);
    zoneIdentifier = [zoneCopy zoneIdentifier];
    v28ZoneIdentifier = [zoneIdentifier zoneIdentifier];
    error = [v27 initInZone:v28ZoneIdentifier UUID:uUID authorizationIdentifiers:self->_authorizationIdentifiersToAdd participantRecord:recordCopy];

    [recordCopy setAuthorizationRecord:error];
    goto LABEL_19;
  }

  v13 = authorizationRecordIdentifier;
  v14 = objc_opt_class();
  v38 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke;
  v36[3] = &unk_27861AD50;
  uUID = v13;
  v37 = uUID;
  v16 = [zoneCopy recordsForClass:v14 error:&v38 filter:v36];
  v17 = v38;
  if (v16)
  {
    firstObject = [v16 firstObject];
    v19 = firstObject;
    v35 = firstObject == 0;
    if (firstObject)
    {
      v34 = v17;
      [firstObject updateAuthorizationWithIdentifiersToAdd:self->_authorizationIdentifiersToAdd identifiersToDelete:self->_authorizationIdentifiersToDelete];
      [v19 authorizationIdentifiers];
      v21 = v20 = self;
      v22 = [v21 count];

      if (v22)
      {
        error = v19;
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
          if (error)
          {
            v26 = v25;
            *error = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        error = 0;
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
      zoneIdentifier2 = [zoneCopy zoneIdentifier];
      *buf = 138543874;
      selfCopy = self;
      v41 = 2114;
      v42 = zoneIdentifier2;
      v43 = 2114;
      v44 = v17;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get authorization records for %{public}@, %{public}@", buf, 0x20u);
    }

    v24 = 0;
    error = 0;
  }

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_19:

  v30 = *MEMORY[0x277D85DE8];

  return error;
}

uint64_t __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)error
{
  v5 = [(NSArray *)self->_authorizationIdentifiersToDelete count];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Deleting authorization categories is not supported for new records"];
    if (v6)
    {
      if (error)
      {
        v7 = v6;
        *error = v6;
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