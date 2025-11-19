@interface HDCloudSyncSharedSummarySynchronizeCloudStateOperation
- (BOOL)_isActiveParticipant:(id)a3;
- (BOOL)_updateOwnerParticipantForParticipantRecord:(id)a3 zone:(id)a4 error:(id *)a5;
- (BOOL)_updateShareForAllNonOwnerParticipantsInZone:(id)a3 error:(id *)a4;
- (BOOL)_validateCloudStateForParticipantRecord:(id)a3 error:(id *)a4;
- (BOOL)_validateParticipantRecordCloudStateWithError:(id *)a3;
- (id)_currentZoneStateForParticipant:(id)a3 zone:(id)a4 error:(id *)a5;
- (id)_deleteInvalidZonesOperationWithError:(id *)a3;
- (id)_removeInvalidSharesOperationWithError:(id *)a3;
- (id)_zoneIdentifierForParticipant:(id)a3;
- (id)_zonesForParticipant:(id)a3 error:(id *)a4;
- (void)main;
@end

@implementation HDCloudSyncSharedSummarySynchronizeCloudStateOperation

- (void)main
{
  v81 = *MEMORY[0x277D85DE8];
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
    v76 = 0;
    v13 = [v8 privateMetadataZoneForContainerID:v12 error:&v76];
    v14 = v76;
    privateMetadataZone = self->_privateMetadataZone;
    self->_privateMetadataZone = v13;

    if (!self->_privateMetadataZone && v14)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
LABEL_38:

      goto LABEL_39;
    }

    v70 = v14;
    participantRecords = self->_participantRecords;
    self->_participantRecords = MEMORY[0x277CBEBF8];

    participantRecordsByUUID = self->_participantRecordsByUUID;
    self->_participantRecordsByUUID = MEMORY[0x277CBEC10];

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sharesToDelete = self->_sharesToDelete;
    self->_sharesToDelete = v19;

    v21 = self->_privateMetadataZone;
    if (v21)
    {
      v75 = 0;
      v22 = [(HDCloudSyncCachedZone *)v21 recordsForClass:objc_opt_class() error:&v75];
      v23 = v75;
      v24 = self->_participantRecords;
      self->_participantRecords = v22;

      if (!self->_participantRecords)
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v23];

        goto LABEL_38;
      }

      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_participantRecords;
        v27 = v25;
        v28 = [(NSArray *)v26 count];
        *buf = 138543618;
        v78 = self;
        v79 = 2048;
        v80 = v28;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Found %lu participant records in private metadata zone", buf, 0x16u);
      }

      v29 = [(NSArray *)self->_participantRecords hk_mapToDictionary:&__block_literal_global_93];
      v30 = self->_participantRecordsByUUID;
      self->_participantRecordsByUUID = v29;
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedParticipantRecordIDs = self->_updatedParticipantRecordIDs;
    self->_updatedParticipantRecordIDs = v31;

    v74 = 0;
    v33 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _validateParticipantRecordCloudStateWithError:&v74];
    v34 = v74;
    v35 = v34;
    if (v33)
    {
      v73 = v34;
      v36 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _removeInvalidSharesOperationWithError:&v73];
      v37 = v73;

      if (v36)
      {
        v72 = v37;
        v38 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _deleteInvalidZonesOperationWithError:&v72];
        v39 = v72;

        if (v38)
        {
          v69 = v39;
          v40 = [HDCloudSyncCompoundOperation alloc];
          v41 = [(HDCloudSyncOperation *)self configuration];
          v42 = [(HDCloudSyncCompoundOperation *)v40 initWithConfiguration:v41 cloudState:0 name:@"Synchronize Cloud Summary State" continueOnSubOperationError:0];

          v43 = [v36 deletedRecordIDs];
          v44 = [v43 count];

          if (v44)
          {
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v36 transitionHandler:0];
          }

          v45 = [v38 recordZoneIDsToDelete];
          v46 = [v45 count];

          if (v46)
          {
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v38 transitionHandler:0];
          }

          if ([(NSMutableSet *)self->_updatedParticipantRecordIDs count])
          {
            v47 = self->_participantRecords;
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke_298;
            v71[3] = &unk_278620400;
            v71[4] = self;
            v48 = [(NSArray *)v47 hk_map:v71];
            v49 = [HDCloudSyncModifyRecordsOperation alloc];
            [(HDCloudSyncOperation *)self configuration];
            v68 = v38;
            v51 = v50 = v42;
            v52 = [(HDCloudSyncOperation *)self configuration];
            v53 = [v52 repository];
            v54 = [v53 primaryCKContainer];
            v55 = [(HDCloudSyncModifyRecordsOperation *)v49 initWithConfiguration:v51 container:v54 recordsToSave:v48 recordIDsToDelete:0];

            v42 = v50;
            v38 = v68;
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v55 transitionHandler:0];
          }

          if ([(NSMutableSet *)self->_sharesToDelete count])
          {
            v56 = [(NSMutableSet *)self->_sharesToDelete hk_map:&__block_literal_global_303_0];
            v57 = [v56 allObjects];

            v58 = [HDCloudSyncModifyRecordsOperation alloc];
            v59 = [(HDCloudSyncOperation *)self configuration];
            v60 = [(HDCloudSyncOperation *)self configuration];
            v61 = [v60 repository];
            v62 = [v61 primaryCKContainer];
            v63 = [(HDCloudSyncModifyRecordsOperation *)v58 initWithConfiguration:v59 container:v62 scope:3 recordsToSave:0 recordIDsToDelete:v57];

            [(HDCloudSyncCompoundOperation *)v42 addOperation:v63 transitionHandler:0];
          }

          [(HDCloudSyncOperation *)self delegateToOperation:v42];

          v39 = v69;
          v14 = v70;
        }

        else
        {
          _HKInitializeLogging();
          v66 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v78 = self;
            v79 = 2114;
            v80 = v39;
            _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to compute invalid zones for removal: %{public}@", buf, 0x16u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v39];
        }

        v37 = v39;
      }

      else
      {
        _HKInitializeLogging();
        v65 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v78 = self;
          v79 = 2114;
          v80 = v37;
          _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to compute invalid shares for removal: %{public}@", buf, 0x16u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v37];
      }

      v35 = v37;
    }

    else
    {
      _HKInitializeLogging();
      v64 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v78 = self;
        v79 = 2114;
        v80 = v35;
        _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to validate participant records: %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v35];
    }

    goto LABEL_38;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v78 = self;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_39:
  v67 = *MEMORY[0x277D85DE8];
}

void __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 UUID];
  (a3)[2](v5, v7, v6);
}

id __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
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

- (BOOL)_validateCloudStateForParticipantRecord:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 relationshipType];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 relationshipType];
    v10 = [v9 longValue];

    if (!v10)
    {
      v12 = [v6 relationshipStatus];
      v13 = [v12 longValue];

      v14 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zonesForParticipant:v6 error:a4];
      v15 = v14;
      if (!v14)
      {
        v11 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v16 = [v14 firstObject];
      v17 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _currentZoneStateForParticipant:v6 zone:v16 error:a4];
      v18 = v17;
      if (!v17)
      {
        goto LABEL_10;
      }

      v19 = [v17 longValue];
      v20 = [v6 relationshipStatus];

      if (v20)
      {
        if ((v13 - 2) < 3)
        {
          v21 = [v6 relationshipDirection];
          if ([v21 longValue] == 1)
          {
            v22 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _updateShareForAllNonOwnerParticipantsInZone:v16 error:a4];

            if (!v22)
            {
LABEL_10:
              v11 = 0;
LABEL_19:

              goto LABEL_20;
            }

LABEL_18:
            v11 = 1;
            goto LABEL_19;
          }

LABEL_17:

          goto LABEL_18;
        }

        if (v13 == 1)
        {
          if (v19 >= 2)
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v33 = v32;
              v34 = HKStringForSharingStatus();
              v35 = HKStringForSharingStatus();
              *v47 = 138544130;
              *&v47[4] = self;
              *&v47[12] = 2112;
              *&v47[14] = v6;
              *&v47[22] = 2114;
              v48 = v34;
              LOWORD(v49) = 2114;
              *(&v49 + 2) = v35;
              _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Updating status from %{public}@ to %{public}@ due to zone state.", v47, 0x2Au);
            }

            [v6 setRelationshipStatus:v18];
          }

          v36 = [v6 relationshipDirection];
          if ([v36 longValue] == 1)
          {
            v37 = [v6 ownerParticipant];

            if (!v37)
            {
              if (![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _updateOwnerParticipantForParticipantRecord:v6 zone:v16 error:a4])
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          else
          {
          }

          if (v19 < 2)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        if (v13)
        {
          goto LABEL_18;
        }

        v29 = [v6 relationshipDirection];
        v30 = [v29 longValue];

        if (!v19)
        {
          goto LABEL_18;
        }

        if (v30)
        {
          if (v19 == 4)
          {
            goto LABEL_18;
          }

          _HKInitializeLogging();
          v31 = *MEMORY[0x277CCC328];
          if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v39 = [v6 entryInvitationDate];
          [v39 timeIntervalSinceReferenceDate];
          v41 = Current - v40;

          _HKInitializeLogging();
          v31 = *MEMORY[0x277CCC328];
          v42 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
          if (v41 < 3600.0 && v19 != 1)
          {
            if (v42)
            {
              v43 = v31;
              v44 = HKStringForSharingStatus();
              *v47 = 138543874;
              *&v47[4] = self;
              *&v47[12] = 2112;
              *&v47[14] = v6;
              *&v47[22] = 2114;
              v48 = v44;
              _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Ignoring new pending participant despite mismatch with zone status %{public}@.", v47, 0x20u);
            }

            goto LABEL_18;
          }

          if (!v42)
          {
            goto LABEL_15;
          }
        }

        v24 = v31;
        v45 = HKStringForSharingStatus();
        v46 = HKStringForSharingStatus();
        *v47 = 138544130;
        *&v47[4] = self;
        *&v47[12] = 2112;
        *&v47[14] = v6;
        *&v47[22] = 2114;
        v48 = v45;
        LOWORD(v49) = 2114;
        *(&v49 + 2) = v46;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Updating status from %{public}@ to %{public}@ due to zone state.", v47, 0x2Au);
      }

      else
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC328];
        if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
LABEL_15:
          [v6 setRelationshipStatus:{v18, *v47, *&v47[16], v48, v49}];
LABEL_16:
          updatedParticipantRecordIDs = self->_updatedParticipantRecordIDs;
          v21 = [v6 recordID];
          [(NSMutableSet *)updatedParticipantRecordIDs addObject:v21];
          goto LABEL_17;
        }

        v24 = v23;
        v25 = HKStringForSharingStatus();
        *v47 = 138543874;
        *&v47[4] = self;
        *&v47[12] = 2112;
        *&v47[14] = v6;
        *&v47[22] = 2114;
        v48 = v25;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Filling out initial status from zone state: %{public}@.", v47, 0x20u);
      }

      goto LABEL_15;
    }
  }

  v11 = 1;
LABEL_21:

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_zoneIdentifierForParticipant:(id)a3
{
  v4 = a3;
  v5 = [v4 relationshipDirection];
  if (v5)
  {
    v6 = [v4 relationshipDirection];
    v7 = [v6 longValue];
    v8 = 2;
    if (v7)
    {
      v8 = 3;
    }

    v20 = v8;
  }

  else
  {
    v20 = 2;
  }

  v9 = MEMORY[0x277CBC5F8];
  v10 = [(HDCloudSyncOperation *)self configuration];
  v11 = [v10 syncContainerPrefix];
  v12 = [v4 UUID];
  v13 = [v9 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:v11 userIdentifier:v12];
  v14 = [(HDCloudSyncOperation *)self configuration];
  v15 = [v14 repository];
  v16 = [v15 primaryCKContainer];
  v17 = [v16 containerIdentifier];
  v18 = [HDCloudSyncZoneIdentifier identifierForZone:v13 container:v17 scope:v20];

  return v18;
}

- (BOOL)_validateParticipantRecordCloudStateWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_participantRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _validateCloudStateForParticipantRecord:*(*(&v13 + 1) + 8 * i) error:a3, v13])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_zonesForParticipant:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zoneIdentifierForParticipant:v6];
  v8 = [v6 relationshipDirection];
  v23 = v7;
  if (v8)
  {
    v9 = [v6 relationshipDirection];
    if ([v9 longValue])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  v11 = [(HDCloudSyncOperation *)self configuration];
  v12 = [v11 cachedCloudState];
  v13 = [(HDCloudSyncOperation *)self configuration];
  v14 = [v13 repository];
  v15 = [v14 primaryCKContainer];
  v16 = [v15 containerIdentifier];
  v17 = [v12 zoneIdentifiersForContainerIdentifier:v16 databaseScope:v10 error:a4];

  if (v17)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__HDCloudSyncSharedSummarySynchronizeCloudStateOperation__zonesForParticipant_error___block_invoke;
    v24[3] = &unk_278620448;
    v18 = v23;
    v25 = v23;
    v26 = self;
    v19 = [v17 hk_map:v24];
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    v18 = v23;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = self;
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to load zones when looking for state for participant %@", buf, 0x16u);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __85__HDCloudSyncSharedSummarySynchronizeCloudStateOperation__zonesForParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEquivalentIgnoringOwnerToZone:*(a1 + 32)])
  {
    v4 = [HDCloudSyncCachedZone alloc];
    v5 = [*(a1 + 40) configuration];
    v6 = [v5 repository];
    v7 = [*(a1 + 40) configuration];
    v8 = [v7 accessibilityAssertion];
    v9 = [(HDCloudSyncCachedZone *)v4 initForZoneIdentifier:v3 repository:v6 accessibilityAssertion:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_currentZoneStateForParticipant:(id)a3 zone:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v40 = 0;
    v10 = [a4 zoneShareWithError:&v40];
    v11 = v40;
    v12 = v11;
    if (v10)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = [v10 participants];
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        v17 = &unk_283CB20D0;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            if ([v19 role] != 1)
            {
              if ([v19 acceptanceStatus] == 2)
              {
                goto LABEL_23;
              }

              if ([v19 acceptanceStatus] == 1)
              {
                v17 = &unk_283CB20E8;
LABEL_23:

                goto LABEL_35;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v20 = [v9 relationshipStatus];
      if ([v20 longValue] == 1)
      {
      }

      else
      {
        v28 = [v9 relationshipStatus];
        v29 = [v28 longValue];

        if (v29)
        {
LABEL_29:
          v17 = &unk_283CB2100;
LABEL_35:

          goto LABEL_36;
        }
      }

      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v43 = self;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find participant on share for %@: Marking as declined.", buf, 0x16u);
      }

      goto LABEL_29;
    }

    if (v11)
    {
      if (a5)
      {
        v26 = v11;
        v17 = 0;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      goto LABEL_35;
    }

    v27 = [v9 relationshipStatus];
    if ([v27 longValue] == 1)
    {
    }

    else
    {
      v31 = [v9 relationshipStatus];
      v32 = [v31 longValue];

      if (v32)
      {
LABEL_34:
        v17 = &unk_283CB20B8;
        goto LABEL_35;
      }
    }

    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v43 = self;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find share for %@: Marking as revoked.", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v21 = [v8 relationshipStatus];
  v22 = [v21 longValue];

  if (v22 == 1)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zoneIdentifierForParticipant:v9];
      *buf = 138543874;
      v43 = self;
      v44 = 2114;
      v45 = v25;
      v46 = 2112;
      v47 = v9;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find zone %{public}@ for %@: Marking as revoked", buf, 0x20u);
    }
  }

  v17 = &unk_283CB20B8;
LABEL_36:

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_updateShareForAllNonOwnerParticipantsInZone:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v33 = 0;
    v8 = [v6 zoneShareWithError:&v33];
    v9 = v33;
    if (v8)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = [v8 participants];
      v11 = [v10 copy];

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v26 = v9;
        v27 = v8;
        v28 = v7;
        v14 = 0;
        v15 = MEMORY[0x277CCC328];
        v16 = *v30;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            if ([v18 role] != 1)
            {
              _HKInitializeLogging();
              v19 = *v15;
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v36 = self;
                _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Participant on the share is not an owner.", buf, 0xCu);
              }

              if ([v18 acceptanceStatus] == 1 || objc_msgSend(v18, "acceptanceStatus") == 2)
              {
                _HKInitializeLogging();
                v20 = *v15;
                if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v36 = self;
                  v37 = 2112;
                  v38 = v18;
                  _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting share for participant %@.", buf, 0x16u);
                }

                v14 = 1;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v13);

        v9 = v26;
        if (v14)
        {
          v8 = v27;
          [(NSMutableSet *)self->_sharesToDelete addObject:v27];
          v21 = 1;
        }

        else
        {
          v21 = 1;
          v8 = v27;
        }

        v7 = v28;
        goto LABEL_31;
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v36 = self;
        v37 = 2112;
        v38 = v7;
        v39 = 2114;
        v40 = v9;
        _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find share for zone %@ with error %{public}@.", buf, 0x20u);
      }

      if (v9)
      {
        if (a4)
        {
          v23 = v9;
          v21 = 0;
          *a4 = v9;
        }

        else
        {
          _HKLogDroppedError();
          v21 = 0;
        }

        goto LABEL_31;
      }
    }

    v21 = 1;
LABEL_31:

    goto LABEL_32;
  }

  v21 = 1;
LABEL_32:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_updateOwnerParticipantForParticipantRecord:(id)a3 zone:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4)
  {
    v21 = 0;
    v9 = [a4 zoneShareWithError:&v21];
    v10 = v21;
    v11 = v10;
    if (v9)
    {
      v12 = [v9 participants];
      v13 = [v12 hk_firstObjectPassingTest:&__block_literal_global_317_3];

      if (v13)
      {
        [v8 setOwnerParticipant:v13];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v23 = self;
          v24 = 2112;
          v25 = v8;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Share contains no owner attempting to update owner participant for %@.", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v10)
      {
        if (a5)
        {
          v16 = v10;
          v15 = 0;
          *a5 = v11;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        goto LABEL_15;
      }

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = self;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No share for participant %@ when attempting to update owner participant.", buf, 0x16u);
      }
    }

    v15 = 1;
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No zone for participant %@ when attempting to update owner participant.", buf, 0x16u);
  }

  v15 = 1;
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_removeInvalidSharesOperationWithError:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 cachedCloudState];
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 repository];
  v10 = [v9 primaryCKContainer];
  v11 = [v10 containerIdentifier];
  v12 = [v7 zoneIdentifiersForContainerIdentifier:v11 databaseScope:3 error:a3];

  if (v12)
  {
    v42 = v5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v47;
      v41 = *MEMORY[0x277CBC020];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          v18 = [v17 zoneIdentifier];
          v44 = 0;
          v45 = 0;
          v19 = [v18 hd_isSharedSummaryZoneIDForUserIdentifier:&v45 syncCircleIdentifier:&v44];
          v20 = v45;
          v21 = v44;

          if (v19)
          {
            v22 = [(HDCloudSyncOperation *)self configuration];
            v23 = [v22 syncContainerPrefix];
            v24 = [v21 isEqualToString:v23];

            if (v24)
            {
              v25 = [(NSDictionary *)self->_participantRecordsByUUID objectForKeyedSubscript:v20];
              v26 = [v25 relationshipDirection];
              v27 = [v26 longValue];

              if (v27 == 1 && ![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _isActiveParticipant:v25])
              {
                v28 = objc_alloc(MEMORY[0x277CBC5D0]);
                v29 = [v17 zoneIdentifier];
                v30 = [v28 initWithRecordName:v41 zoneID:v29];

                [v42 addObject:v30];
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v14);
    }

    v31 = [HDCloudSyncModifyRecordsOperation alloc];
    v32 = [(HDCloudSyncOperation *)self configuration];
    v33 = [(HDCloudSyncOperation *)self configuration];
    v34 = [v33 repository];
    v35 = [v34 primaryCKContainer];
    v36 = v31;
    v5 = v42;
    v37 = [(HDCloudSyncModifyRecordsOperation *)v36 initWithConfiguration:v32 container:v35 scope:3 recordsToSave:0 recordIDsToDelete:v42];

    v12 = v40;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)_deleteInvalidZonesOperationWithError:(id *)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 cachedCloudState];
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 repository];
  v10 = [v9 primaryCKContainer];
  v11 = [v10 containerIdentifier];
  v12 = [v7 zoneIdentifiersForContainerIdentifier:v11 databaseScope:2 error:a3];

  if (v12)
  {
    v37 = v12;
    v38 = v5;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          v18 = [v17 zoneIdentifier];
          v40 = 0;
          v41 = 0;
          v19 = [v18 hd_isSharedSummaryZoneIDForUserIdentifier:&v41 syncCircleIdentifier:&v40];
          v20 = v41;
          v21 = v40;

          if (v19)
          {
            v22 = [(HDCloudSyncOperation *)self configuration];
            v23 = [v22 syncContainerPrefix];
            v24 = [v21 isEqualToString:v23];

            if (v24)
            {
              v25 = [(NSDictionary *)self->_participantRecordsByUUID objectForKeyedSubscript:v20];
              v26 = [v25 relationshipDirection];
              v27 = [v26 longValue];

              if (!v27 && ![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _isActiveParticipant:v25])
              {
                v28 = [v17 zoneIdentifier];
                [v38 addObject:v28];
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v14);
    }

    v29 = [HDCloudSyncModifyRecordZonesOperation alloc];
    v30 = [(HDCloudSyncOperation *)self configuration];
    v31 = [(HDCloudSyncOperation *)self configuration];
    v32 = [v31 repository];
    v33 = [v32 primaryCKContainer];
    v5 = v38;
    v34 = [(HDCloudSyncModifyRecordZonesOperation *)v29 initWithConfiguration:v30 container:v33 scope:2 recordZonesToSave:0 recordZoneIDsToDelete:v38];

    v12 = v37;
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)_isActiveParticipant:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 relationshipStatus];
    if ([v5 longValue])
    {
      v6 = [v4 relationshipStatus];
      v7 = [v6 longValue] == 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end