@interface HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation
- (BOOL)_mergeFoundEntry:(id)a3 withParticipant:(id)a4 error:(id *)a5;
- (HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation)initWithConfiguration:(id)a3 privateMetadataZone:(id)a4 participants:(id)a5;
- (id)_authorizationRecordForParticipant:(id)a3 error:(id *)a4;
- (id)_createSummarySharingEntryForParticipant:(id)a3 error:(id *)a4;
- (void)_mergeLocalAndCloudParticipant:(id)a3 completion:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation

- (HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation)initWithConfiguration:(id)a3 privateMetadataZone:(id)a4 participants:(id)a5
{
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation;
  v11 = [(HDCloudSyncOperation *)&v23 initWithConfiguration:a3 cloudState:0];
  if (v11)
  {
    v12 = [v10 copy];
    participantRecords = v11->_participantRecords;
    v11->_participantRecords = v12;

    objc_storeStrong(&v11->_privateMetadataZone, a4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedParticipantRecordIDs = v11->_updatedParticipantRecordIDs;
    v11->_updatedParticipantRecordIDs = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updatedLocalEntries = v11->_updatedLocalEntries;
    v11->_updatedLocalEntries = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updatedAuthorizationRecords = v11->_updatedAuthorizationRecords;
    v11->_updatedAuthorizationRecords = v18;

    v20 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v11->_taskGroup;
    v11->_taskGroup = v20;

    [(HDSynchronousTaskGroup *)v11->_taskGroup setDelegate:v11];
  }

  return v11;
}

- (void)main
{
  v16 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_participantRecords;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __71__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation_main__block_invoke;
        v10[3] = &unk_2786130B0;
        v10[4] = self;
        [(HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation *)self _mergeLocalAndCloudParticipant:v8 completion:v10];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v9 = *MEMORY[0x277D85DE8];
}

void __71__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation_main__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 144) finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to merge local and cloud participants: %{public}@", &v9, 0x16u);
    }

    [*(*(a1 + 32) + 144) failTaskWithError:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_mergeLocalAndCloudParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 repository];
  v10 = [v9 cloudSyncShimProvider];
  v11 = [v10 summarySharingEntryShim];

  v12 = [v6 UUID];
  v13 = [(HDCloudSyncOperation *)self configuration];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation__mergeLocalAndCloudParticipant_completion___block_invoke;
  v16[3] = &unk_27862A0E8;
  v17 = v6;
  v18 = v7;
  v16[4] = self;
  v14 = v6;
  v15 = v7;
  [v11 codableEntryWithUUID:v12 configuration:v13 completion:v16];
}

void __109__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation__mergeLocalAndCloudParticipant_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (([v6 hk_isHealthKitErrorWithCode:118] & 1) == 0)
    {
      (*(a1[6] + 16))();
      goto LABEL_8;
    }

    v11 = a1[4];
    v12 = a1[5];
    v15 = v7;
    v5 = [v11 _createSummarySharingEntryForParticipant:v12 error:&v15];
    v13 = v15;

    if (!v5)
    {
      (*(a1[6] + 16))();
      v7 = v13;
      goto LABEL_8;
    }

    v7 = v13;
  }

  v8 = a1[4];
  v9 = a1[5];
  v14 = v7;
  [v8 _mergeFoundEntry:v5 withParticipant:v9 error:&v14];
  v10 = v14;

  (*(a1[6] + 16))();
  v7 = v10;
LABEL_8:
}

- (id)_createSummarySharingEntryForParticipant:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 shareSetupMetadata];

  if (v7)
  {
    v8 = [v6 shareSetupMetadata];
  }

  else
  {
    v8 = 0;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = self;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No local entry found for participant: %@", buf, 0x16u);
  }

  v10 = [(HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation *)self _authorizationRecordForParticipant:v6 error:a4];
  if (v10)
  {
    v39 = v10;
    v11 = [v10 authorizationIdentifiers];
    v12 = HKSharingAuthorizationsFromAuthorizationIdentifiers();

    v36 = [HDCodableSummarySharingEntry alloc];
    v41 = [v6 UUID];
    v34 = [v6 invitationUUID];
    v32 = [v6 cloudKitIdentifier];
    v31 = [v6 contactIdentifier];
    v30 = [v6 allContactIdentifiers];
    v29 = [v6 firstName];
    v23 = [v6 lastName];
    v35 = [v6 userWheelchairMode];
    v38 = [v35 longValue];
    v33 = [v6 relationshipType];
    v25 = [v33 longValue];
    v28 = [v6 relationshipDirection];
    v24 = [v28 longValue];
    v27 = [v6 relationshipStatus];
    v13 = [v27 longValue];
    v26 = [v6 notificationStatus];
    v14 = [v26 longValue];
    [v6 entryModificationDate];
    v15 = v40 = self;
    v16 = [v6 entryInvitationDate];
    v17 = [v6 entryAcceptanceDate];
    v18 = [v6 ownerParticipant];
    v37 = [(HDCodableSummarySharingEntry *)v36 initWithUUID:v41 invitationUUID:v34 cloudKitIdentifier:v32 primaryContactIdentifier:v31 allContactIdentifiers:v30 firstName:v29 lastName:v23 sharingAuthorizations:v12 userWheelchairMode:v38 type:v25 direction:v24 status:v13 notificationStatus:v14 dateModified:v15 dateInvited:v16 dateAccepted:v17 setupMetadata:v8 ownerParticipant:v18];

    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v43 = v40;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Local save required for participant: %@", buf, 0x16u);
    }

    v20 = v37;
    [(NSMutableArray *)v40->_updatedLocalEntries addObject:v37];

    v10 = v39;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)_mergeFoundEntry:(id)a3 withParticipant:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 entryModificationDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  [v8 dateModified];
  v14 = v13;
  v15 = [v9 mergeWithLocalEntry:v8 error:a5];
  if (v15 <= 2)
  {
    v16 = v15 == 1;
    v17 = v15 != 1 && v15 == 2;
LABEL_16:
    v23 = [(HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation *)self _authorizationRecordForParticipant:v9 error:a5];
    v24 = v23;
    v22 = v23 != 0;
    if (!v23)
    {
LABEL_33:

      goto LABEL_34;
    }

    v43 = v16;
    v44 = v23 != 0;
    v25 = [v23 authorizationIdentifiers];
    v26 = [v8 sharingAuthorizations];
    v27 = HDAuthorizationIdentifiersFromCodableSharingAuthorizations(v26);

    v45 = v25;
    v28 = [MEMORY[0x277CBEB98] setWithArray:v25];
    v29 = v27;
    v30 = [MEMORY[0x277CBEB98] setWithArray:v27];
    LOBYTE(v25) = [v28 isEqual:v30];

    if ((v25 & 1) == 0)
    {
      if (v14 > v12)
      {
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC328];
        v32 = self;
        v22 = v44;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v47 = self;
          v48 = 2112;
          v49 = v24;
          _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Cloud save required for authorization: %@", buf, 0x16u);
        }

        [v24 replaceAuthorizationIdentifiers:v29];
        updatedAuthorizationRecords = self->_updatedAuthorizationRecords;
        v34 = [v24 record];
        [(NSMutableArray *)updatedAuthorizationRecords addObject:v34];

        goto LABEL_24;
      }

      v35 = [v45 mutableCopy];
      [v8 setAuthorizationCategories:v35];

      v36 = HDCodableSharingAuthorizationsFromAuthorizationIdentifiers(v45);
      [v8 setSharingAuthorizations:v36];

      v17 = 1;
    }

    v32 = self;
    v22 = v44;
LABEL_24:
    if (v43)
    {
      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v32;
        v48 = 2112;
        v49 = v9;
        _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Cloud save required for participant: %@", buf, 0x16u);
      }

      updatedParticipantRecordIDs = v32->_updatedParticipantRecordIDs;
      v39 = [v9 recordID];
      [(NSMutableSet *)updatedParticipantRecordIDs addObject:v39];
    }

    if (v17)
    {
      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v32;
        v48 = 2112;
        v49 = v9;
        _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Local save required for participant: %@", buf, 0x16u);
      }

      [(NSMutableArray *)v32->_updatedLocalEntries addObject:v8];
    }

    goto LABEL_33;
  }

  if (v15 == 3)
  {
    v16 = 1;
    v17 = 1;
    goto LABEL_16;
  }

  if (v15 != 5)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v18 = MEMORY[0x277CCC328];
  v19 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v47 = self;
    v48 = 2112;
    v49 = v9;
    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Participant: %@", buf, 0x16u);
  }

  _HKInitializeLogging();
  v20 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v47 = self;
    v48 = 2112;
    v49 = v8;
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Entry: %@", buf, 0x16u);
  }

  _HKInitializeLogging();
  v21 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v47 = self;
    _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: An error occured merging the participant and entry.", buf, 0xCu);
  }

  v22 = 1;
LABEL_34:

  v41 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_authorizationRecordForParticipant:(id)a3 error:(id *)a4
{
  v6 = a3;
  privateMetadataZone = self->_privateMetadataZone;
  if (privateMetadataZone)
  {
    v8 = objc_opt_class();
    v21 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __108__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation__authorizationRecordForParticipant_error___block_invoke;
    v19 = &unk_27861AD50;
    v20 = v6;
    v9 = [(HDCloudSyncCachedZone *)privateMetadataZone recordsForClass:v8 error:&v21 filter:&v16];
    v10 = v21;
    v11 = v10;
    if (v9)
    {
      v12 = [v9 firstObject];
    }

    else
    {
      v13 = v10;
      if (v13)
      {
        if (a4)
        {
          v14 = v13;
          *a4 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __108__HDCloudSyncSharedSummaryMergeLocalAndCloudParticipantsOperation__authorizationRecordForParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 participantRecordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end