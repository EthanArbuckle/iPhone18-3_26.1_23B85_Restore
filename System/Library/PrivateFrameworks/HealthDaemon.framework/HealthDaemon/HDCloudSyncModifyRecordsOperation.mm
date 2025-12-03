@interface HDCloudSyncModifyRecordsOperation
- (HDCloudSyncModifyRecordsOperation)initWithConfiguration:(id)configuration container:(id)container recordsToSave:(id)save recordIDsToDelete:(id)delete;
- (HDCloudSyncModifyRecordsOperation)initWithConfiguration:(id)configuration container:(id)container scope:(int64_t)scope recordsToSave:(id)save recordIDsToDelete:(id)delete;
- (NSArray)deletedRecordIDs;
- (NSArray)savedRecords;
- (void)_limitExceededSavingRecords:(void *)records deletingRecordIDs:(void *)ds error:;
- (void)_saveRecords:(void *)records deleteRecords:;
@end

@implementation HDCloudSyncModifyRecordsOperation

- (HDCloudSyncModifyRecordsOperation)initWithConfiguration:(id)configuration container:(id)container recordsToSave:(id)save recordIDsToDelete:(id)delete
{
  deleteCopy = delete;
  saveCopy = save;
  containerCopy = container;
  configurationCopy = configuration;
  repository = [configurationCopy repository];
  profileIdentifier = [repository profileIdentifier];
  v16 = HDDatabaseForContainer(containerCopy, profileIdentifier);
  v17 = -[HDCloudSyncModifyRecordsOperation initWithConfiguration:container:scope:recordsToSave:recordIDsToDelete:](self, "initWithConfiguration:container:scope:recordsToSave:recordIDsToDelete:", configurationCopy, containerCopy, [v16 databaseScope], saveCopy, deleteCopy);

  return v17;
}

- (HDCloudSyncModifyRecordsOperation)initWithConfiguration:(id)configuration container:(id)container scope:(int64_t)scope recordsToSave:(id)save recordIDsToDelete:(id)delete
{
  containerCopy = container;
  saveCopy = save;
  deleteCopy = delete;
  v27.receiver = self;
  v27.super_class = HDCloudSyncModifyRecordsOperation;
  v16 = [(HDCloudSyncOperation *)&v27 initWithConfiguration:configuration cloudState:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_container, container);
    v18 = [containerCopy databaseWithDatabaseScope:scope];
    database = v17->_database;
    v17->_database = v18;

    objc_storeStrong(&v17->_recordsToSave, save);
    objc_storeStrong(&v17->_recordIDsToDelete, delete);
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    savedRecords = v17->_savedRecords;
    v17->_savedRecords = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deletedRecordIDs = v17->_deletedRecordIDs;
    v17->_deletedRecordIDs = v22;

    v17->_savePolicy = 0;
    v24 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v17->_taskGroup;
    v17->_taskGroup = v24;

    [(HDSynchronousTaskGroup *)v17->_taskGroup setDelegate:v17];
    v17->_lock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

- (void)_saveRecords:(void *)records deleteRecords:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  recordsCopy = records;
  if (self)
  {
    v7 = [v5 count];
    v8 = [recordsCopy count] + v7;
    if (v8)
    {
      if (v8 >= 375)
      {
        v9 = [v5 hk_mapToSet:&__block_literal_global_305_0];
        if (recordsCopy)
        {
          v10 = [recordsCopy hk_mapToSet:&__block_literal_global_308_0];
          v11 = v10;
          if (v9)
          {
            v12 = [v9 setByAddingObjectsFromSet:v10];

            v9 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        if ([v9 count] >= 2)
        {
          v19 = MEMORY[0x277CCA9B8];
          v20 = *MEMORY[0x277CBBF50];
          v33 = *MEMORY[0x277CCA450];
          v34[0] = @"Synthesized error for preemptive split.";
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
          v22 = [v19 errorWithDomain:v20 code:27 userInfo:v21];
          [(HDCloudSyncModifyRecordsOperation *)self _limitExceededSavingRecords:v5 deletingRecordIDs:recordsCopy error:v22];

LABEL_18:
          goto LABEL_19;
        }
      }

      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        *buf = 138543874;
        selfCopy = self;
        v29 = 2048;
        v30 = [v5 count];
        v31 = 2048;
        v32 = [recordsCopy count];
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld records and deleting %ld records.", buf, 0x20u);
      }

      v9 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v5 recordIDsToDelete:recordsCopy];
      if ([self markAsParticipantNeedsNewInvitationToken])
      {
        [v9 setMarkAsParticipantNeedsNewInvitationToken:{objc_msgSend(self, "markAsParticipantNeedsNewInvitationToken")}];
      }

      [v9 setSavePolicy:*(self + 168)];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __64__HDCloudSyncModifyRecordsOperation__saveRecords_deleteRecords___block_invoke_315;
      v24[3] = &unk_278616968;
      v24[4] = self;
      v25 = v5;
      v26 = recordsCopy;
      [v9 setModifyRecordsCompletionBlock:v24];
      configuration = [self configuration];
      cachedCloudState = [configuration cachedCloudState];
      [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

      configuration2 = [self configuration];
      operationGroup = [configuration2 operationGroup];
      [v9 setGroup:operationGroup];

      [*(self + 136) beginTask];
      [*(self + 112) hd_addOperation:v9];

      goto LABEL_18;
    }

    [*(self + 136) beginTask];
    [*(self + 136) finishTask];
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

void __57__HDCloudSyncModifyRecordsOperation__recordsSplitByZone___block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 copy];
  (a4)[2](v7, v8, v9);
}

void __59__HDCloudSyncModifyRecordsOperation__recordIDsSplitByZone___block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 copy];
  (a4)[2](v7, v8, v9);
}

- (void)_limitExceededSavingRecords:(void *)records deletingRecordIDs:(void *)ds error:
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = a2;
  recordsCopy = records;
  dsCopy = ds;
  selfCopy = self;
  if (self)
  {
    v9 = v7;
    v74 = v7;
    v75 = recordsCopy;
    if (v9)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v12 = v9;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v83;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v83 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v82 + 1) + 8 * i);
            recordID = [v18 recordID];
            zoneID = [recordID zoneID];

            v21 = [v11 objectForKeyedSubscript:zoneID];
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v11 setObject:v21 forKeyedSubscript:zoneID];
            }

            [v21 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v82 objects:buf count:16];
        }

        while (v15);
      }

      v10 = [v11 hk_map:&__block_literal_global_28];

      v9 = v12;
      v7 = v74;
    }

    else
    {
      v10 = 0;
    }

    v22 = recordsCopy;
    if (v22)
    {
      v72 = v9;
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v25 = v22;
      v26 = [v25 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v83;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v83 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v82 + 1) + 8 * j);
            zoneID2 = [v30 zoneID];
            v32 = [v24 objectForKeyedSubscript:zoneID2];
            if (!v32)
            {
              v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v24 setObject:v32 forKeyedSubscript:zoneID2];
            }

            [v32 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v82 objects:buf count:16];
        }

        while (v27);
      }

      v23 = [v24 hk_map:&__block_literal_global_296];

      v7 = v74;
      recordsCopy = v75;
      v9 = v72;
    }

    else
    {
      v23 = 0;
    }

    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allKeys = [v10 allKeys];
    [v33 addObjectsFromArray:allKeys];

    allKeys2 = [v23 allKeys];
    [v33 addObjectsFromArray:allKeys2];

    if ([v33 count] == 1)
    {
      v36 = v9;
      v37 = v22;
      v38 = dsCopy;
      v39 = [v36 count];
      if (([v37 count] + v39) > 1)
      {
        v73 = v38;
        firstObject = [v36 firstObject];
        recordID2 = [firstObject recordID];
        zoneID3 = [recordID2 zoneID];
        v55 = zoneID3;
        if (zoneID3)
        {
          zoneID4 = zoneID3;
        }

        else
        {
          [v37 firstObject];
          v70 = v37;
          v57 = v56 = recordsCopy;
          zoneID4 = [v57 zoneID];

          recordsCopy = v56;
          v37 = v70;
        }

        if ([selfCopy permitNonAtomicZoneSaves])
        {
          v38 = v73;
          if ([v36 count] && objc_msgSend(v37, "count"))
          {
            [(HDCloudSyncModifyRecordsOperation *)selfCopy _saveRecords:v36 deleteRecords:0];
            [(HDCloudSyncModifyRecordsOperation *)selfCopy _saveRecords:v37 deleteRecords:?];
          }

          else
          {
            _HKInitializeLogging();
            v59 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v88 = selfCopy;
              v89 = 2114;
              v90 = zoneID4;
              _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying by splitting into multiple operations for zone %{public}@.", buf, 0x16u);
            }

            v60 = [v36 hk_splitWithBucketCount:2];
            v61 = [v37 hk_splitWithBucketCount:2];
            v62 = [v60 objectAtIndexedSubscript:0];
            v63 = [v61 objectAtIndexedSubscript:0];
            [(HDCloudSyncModifyRecordsOperation *)selfCopy _saveRecords:v62 deleteRecords:v63];

            v64 = [v60 objectAtIndexedSubscript:1];
            v65 = [v61 objectAtIndexedSubscript:1];
            [(HDCloudSyncModifyRecordsOperation *)selfCopy _saveRecords:v64 deleteRecords:v65];

            recordsCopy = v75;
            v38 = v73;
          }
        }

        else
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC328];
          v38 = v73;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v88 = selfCopy;
            v89 = 2114;
            v90 = zoneID4;
            _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "%{public}@: Limit exceeded when syncing to a single zone (%{public}@), but non-atomic saves are not permitted.", buf, 0x16u);
          }

          [selfCopy[17] beginTask];
          [selfCopy[17] failTaskWithError:v73];
        }
      }

      else
      {
        _HKInitializeLogging();
        v40 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v67 = v40;
          v68 = [v36 count];
          v69 = [v37 count];
          *buf = 138544130;
          v88 = selfCopy;
          v89 = 2048;
          v90 = v68;
          v91 = 2048;
          v92 = v69;
          v93 = 2114;
          v94 = v38;
          _os_log_fault_impl(&dword_228986000, v67, OS_LOG_TYPE_FAULT, "%{public}@: Limit exceeded when we've already dropped down to minimal records per zone (%ld, %ld): %{public}@.", buf, 0x2Au);
        }

        [selfCopy[17] beginTask];
        [selfCopy[17] failTaskWithError:v38];
      }
    }

    else
    {
      _HKInitializeLogging();
      v41 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
        v43 = [v33 count];
        *buf = 138543618;
        v88 = selfCopy;
        v89 = 2048;
        v90 = v43;
        _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying with one operation per zone (%ld zones).", buf, 0x16u);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v36 = v33;
      v44 = [v36 countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = v7;
        v47 = *v79;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v79 != v47)
            {
              objc_enumerationMutation(v36);
            }

            v49 = *(*(&v78 + 1) + 8 * k);
            v50 = [v10 objectForKeyedSubscript:v49];
            v51 = [v23 objectForKeyedSubscript:v49];
            [(HDCloudSyncModifyRecordsOperation *)selfCopy _saveRecords:v50 deleteRecords:v51];
          }

          v45 = [v36 countByEnumeratingWithState:&v78 objects:v86 count:16];
        }

        while (v45);
        v7 = v46;
        recordsCopy = v75;
      }
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

id __64__HDCloudSyncModifyRecordsOperation__saveRecords_deleteRecords___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordID];
  v3 = [v2 zoneID];

  return v3;
}

void __64__HDCloudSyncModifyRecordsOperation__saveRecords_deleteRecords___block_invoke_315(uint64_t a1, void *a2, void *a3, void *a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = MEMORY[0x277CBBF50];
  if (v9 && [v9 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
  {
    [(HDCloudSyncModifyRecordsOperation *)*(a1 + 32) _limitExceededSavingRecords:*(a1 + 48) deletingRecordIDs:v10 error:?];
    [*(*(a1 + 32) + 136) finishTask];
    goto LABEL_60;
  }

  v12 = *(a1 + 32);
  v112 = 0;
  v103 = v7;
  v102 = v8;
  v13 = v10;
  v14 = v13;
  v100 = v10;
  v101 = v8;
  if (!v12)
  {
    goto LABEL_34;
  }

  if (!v10)
  {
    goto LABEL_35;
  }

  v15 = v13;
  if (+[HDCloudSyncTapToRadar isTapToRadarAllowed](HDCloudSyncTapToRadar, "isTapToRadarAllowed") && [v15 hd_containsCKMissingZoneError])
  {
    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (([v16 BOOLForKey:*MEMORY[0x277CCE2A0]] & 1) == 0)
    {
      v17 = *MEMORY[0x277CCE2A8];
      [v16 doubleForKey:*MEMORY[0x277CCE2A8]];
      v19 = v18;
      [MEMORY[0x277CBEAA8] date];
      v21 = v20 = v7;
      [v21 timeIntervalSinceReferenceDate];
      v23 = v22;

      v7 = v20;
      if (v19 + 14400.0 < v23)
      {
        [v16 setDouble:v17 forKey:v23];
        v134[0] = MEMORY[0x277D85DD0];
        v134[1] = 3221225472;
        v134[2] = __65__HDCloudSyncModifyRecordsOperation__evaluateErrorForTapToRadar___block_invoke;
        v134[3] = &unk_278613968;
        v135 = v15;
        [HDCloudSyncTapToRadar showTapToRadarRequestWithTitle:@"Health Cloud Sync Encountered an unexpected error" message:@"Please file a radar." proceed:v134 disable:&__block_literal_global_331 completion:&__block_literal_global_334];
      }
    }
  }

  if ([v15 hk_isErrorInDomain:*v11 code:2])
  {
    v94 = v14;
    v96 = a1;
    v98 = v7;
    v104 = v15;
    v24 = [v15 userInfo];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v25;
    v107 = [obj countByEnumeratingWithState:&v121 objects:v134 count:16];
    if (v107)
    {
      v105 = *v122;
      do
      {
        for (i = 0; i != v107; i = i + 1)
        {
          if (*v122 != v105)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v121 + 1) + 8 * i);
          v28 = [obj objectForKeyedSubscript:v27];
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v40 = *(v12 + 104);
            v41 = v29;
            v42 = [v40 containerIdentifier];
            [*(v12 + 112) databaseScope];
            v43 = CKDatabaseScopeString();
            *buf = 138544130;
            v127 = v12;
            v128 = 2114;
            v129 = v42;
            v130 = 2114;
            v131 = v43;
            v132 = 2114;
            v133 = v104;
            _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify records in container %{public}@, database %{public}@, error %{public}@", buf, 0x2Au);
          }

          v30 = [HDCloudSyncZoneIdentifier alloc];
          v31 = [v27 zoneID];
          v32 = [*(v12 + 104) containerIdentifier];
          v33 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v30, "initForZone:container:scope:", v31, v32, [*(v12 + 112) databaseScope]);

          v34 = [HDCloudSyncCachedZone alloc];
          v35 = [v12 configuration];
          v36 = [v35 repository];
          v37 = [v12 configuration];
          v38 = [v37 accessibilityAssertion];
          v39 = [(HDCloudSyncCachedZone *)v34 initForZoneIdentifier:v33 repository:v36 accessibilityAssertion:v38];

          [v39 handleCloudError:v28 operation:v12 container:*(v12 + 104) database:*(v12 + 112)];
        }

        v107 = [obj countByEnumeratingWithState:&v121 objects:v134 count:16];
      }

      while (v107);
    }

    a1 = v96;
    v7 = v98;
    v14 = v94;
    v15 = v104;
  }

  _HKInitializeLogging();
  v44 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v85 = *(v12 + 104);
    v86 = v44;
    v87 = [v85 containerIdentifier];
    [*(v12 + 112) databaseScope];
    v88 = CKDatabaseScopeString();
    *buf = 138544130;
    v127 = v12;
    v128 = 2114;
    v129 = v87;
    v130 = 2114;
    v131 = v88;
    v132 = 2114;
    v133 = v15;
    _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify records in container %{public}@, database %{public}@, error %{public}@", buf, 0x2Au);
  }

  v45 = [v15 hd_errorSurfacingFatalCloudKitPartialFailure];
  v46 = v45;
  if (!v45)
  {
    if ([v12 treatAnyErrorAsFatal])
    {
      _HKInitializeLogging();
      v48 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v89 = v7;
        v90 = *(v12 + 104);
        v91 = v48;
        v92 = [v90 containerIdentifier];
        [*(v12 + 112) databaseScope];
        v93 = CKDatabaseScopeString();
        *buf = 138544130;
        v127 = v12;
        v128 = 2114;
        v129 = v92;
        v130 = 2114;
        v131 = v93;
        v132 = 2114;
        v133 = v15;
        _os_log_error_impl(&dword_228986000, v91, OS_LOG_TYPE_ERROR, "%{public}@ Treating error as fatal for %{public}@, database %{public}@, error %{public}@", buf, 0x2Au);

        v7 = v89;
      }

      v49 = [v15 hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:&__block_literal_global_302_0];
      v50 = v49;
      if (!v49)
      {
        v49 = v15;
      }

      v112 = v49;

      goto LABEL_33;
    }

LABEL_35:
    v95 = v14;
    v97 = a1;
    v99 = v7;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v108 = v103;
    v52 = [v108 countByEnumeratingWithState:&v117 objects:buf count:16];
    if (v52)
    {
      v53 = v52;
      obja = *v118;
      while (2)
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v118 != obja)
          {
            objc_enumerationMutation(v108);
          }

          v55 = *(*(&v117 + 1) + 8 * j);
          v56 = [HDCloudSyncZoneIdentifier alloc];
          v57 = [v55 recordID];
          v58 = [v57 zoneID];
          v59 = [*(v12 + 104) containerIdentifier];
          v60 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v56, "initForZone:container:scope:", v58, v59, [*(v12 + 112) databaseScope]);

          v61 = [HDCloudSyncCachedZone alloc];
          v62 = [v12 configuration];
          v63 = [v62 repository];
          v64 = [v12 configuration];
          v65 = [v64 accessibilityAssertion];
          v66 = [(HDCloudSyncCachedZone *)v61 initForZoneIdentifier:v60 repository:v63 accessibilityAssertion:v65];

          LOBYTE(v62) = [v66 addRecord:v55 error:&v112];
          if ((v62 & 1) == 0)
          {
            v81 = v108;
LABEL_54:

            v51 = 0;
            goto LABEL_55;
          }
        }

        v53 = [v108 countByEnumeratingWithState:&v117 objects:buf count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v106 = v102;
    v67 = [v106 countByEnumeratingWithState:&v113 objects:v125 count:16];
    if (v67)
    {
      v68 = v67;
      objb = *v114;
      while (2)
      {
        for (k = 0; k != v68; ++k)
        {
          if (*v114 != objb)
          {
            objc_enumerationMutation(v106);
          }

          v70 = *(*(&v113 + 1) + 8 * k);
          v71 = [HDCloudSyncZoneIdentifier alloc];
          v72 = [v70 zoneID];
          v73 = [*(v12 + 104) containerIdentifier];
          v74 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v71, "initForZone:container:scope:", v72, v73, [*(v12 + 112) databaseScope]);

          v75 = [HDCloudSyncCachedZone alloc];
          v76 = [v12 configuration];
          v77 = [v76 repository];
          v78 = [v12 configuration];
          v79 = [v78 accessibilityAssertion];
          v80 = [(HDCloudSyncCachedZone *)v75 initForZoneIdentifier:v74 repository:v77 accessibilityAssertion:v79];

          LOBYTE(v76) = [v80 deleteRecordID:v70 error:&v112];
          if ((v76 & 1) == 0)
          {
            v81 = v106;
            goto LABEL_54;
          }
        }

        v68 = [v106 countByEnumeratingWithState:&v113 objects:v125 count:16];
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_lock((v12 + 144));
    [*(v12 + 120) addObjectsFromArray:v108];
    [*(v12 + 128) addObjectsFromArray:v106];
    os_unfair_lock_unlock((v12 + 144));
    v51 = 1;
LABEL_55:
    a1 = v97;
    v7 = v99;
    v14 = v95;
    goto LABEL_56;
  }

  v47 = v45;
  v112 = v46;
LABEL_33:

LABEL_34:
  v51 = 0;
LABEL_56:

  v82 = v112;
  v83 = *(*(a1 + 32) + 136);
  if (v51)
  {
    [v83 finishTask];
  }

  else
  {
    [v83 failTaskWithError:v82];
  }

  v10 = v100;
  v8 = v101;
LABEL_60:

  v84 = *MEMORY[0x277D85DE8];
}

- (NSArray)savedRecords
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_savedRecords copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)deletedRecordIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_deletedRecordIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __65__HDCloudSyncModifyRecordsOperation__evaluateErrorForTapToRadar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) description];
  [HDCloudSyncTapToRadar openTapToRadarWithTitle:@"[Cloud Sync] Encountered an unexpected cloud error" description:v1];
}

void __65__HDCloudSyncModifyRecordsOperation__evaluateErrorForTapToRadar___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setBool:1 forKey:*MEMORY[0x277CCE2A0]];
}

@end