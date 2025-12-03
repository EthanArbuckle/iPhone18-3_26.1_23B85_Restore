@interface HDCloudSyncUpdateCachedRecordsOperation
- (HDCloudSyncUpdateCachedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (NSArray)invalidRecordIDs;
- (uint64_t)_updateCKCachedZoneForZone:(void *)zone recordsToAdd:(void *)add recordIDsToDelete:(void *)delete serverChangeToken:(unsigned int)token fetchComplete:(void *)complete container:(void *)container database:(void *)database error:;
- (void)_fetchChangesForRecordZoneIDs:(void *)ds container:(void *)container database:;
- (void)_limitExceededFetchingChangesForRecordZoneIDs:(void *)ds container:(void *)container database:(void *)database error:;
- (void)fetchRecordZoneChangesForContainer:(id)container database:(id)database;
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedRecordsOperation

- (HDCloudSyncUpdateCachedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncUpdateCachedRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:configuration cloudState:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invalidRecordIDs = v4->_invalidRecordIDs;
    v4->_invalidRecordIDs = v7;

    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)main
{
  v18 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  v6 = [allCKContainers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allCKContainers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        privateCloudDatabase = [v10 privateCloudDatabase];
        [(HDCloudSyncUpdateCachedRecordsOperation *)self fetchRecordZoneChangesForContainer:v10 database:privateCloudDatabase];
      }

      v7 = [allCKContainers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)invalidRecordIDs
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSMutableSet *)self->_invalidRecordIDs allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)fetchRecordZoneChangesForContainer:(id)container database:(id)database
{
  containerCopy = container;
  databaseCopy = database;
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [containerCopy containerIdentifier];
  v26 = 0;
  v11 = [cachedCloudState zoneIdentifiersRequiringFetchForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(databaseCopy error:{"databaseScope"), &v26}];
  v12 = v26;

  if (v11 || !v12)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration2 repository];
    syncAvailability = [repository syncAvailability];

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __87__HDCloudSyncUpdateCachedRecordsOperation_fetchRecordZoneChangesForContainer_database___block_invoke;
    v24 = &unk_278616300;
    v25 = syncAvailability;
    v16 = syncAvailability;
    v17 = [v11 hk_filter:&v21];
    v18 = [v17 mutableCopy];

    v19 = [v18 hk_map:&__block_literal_global_27];
    v20 = v19;
    if (v19 && [v19 count])
    {
      [(HDCloudSyncUpdateCachedRecordsOperation *)&self->super.super.isa _fetchChangesForRecordZoneIDs:v20 container:containerCopy database:databaseCopy];
    }
  }

  else
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v12];
  }
}

uint64_t __87__HDCloudSyncUpdateCachedRecordsOperation_fetchRecordZoneChangesForContainer_database___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldSyncSummarySharingPush"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 zoneIdentifier];
    v9 = 0;
    v10 = 0;
    v6 = [v5 hd_isSharedSummaryZoneIDForUserIdentifier:&v10 syncCircleIdentifier:&v9];
    v7 = v10;

    v4 = v6 ^ 1u;
  }

  return v4;
}

- (void)_fetchChangesForRecordZoneIDs:(void *)ds container:(void *)container database:
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dsCopy = ds;
  containerCopy = container;
  if (self)
  {
    [self[13] beginTask];
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2810000000;
    v69[3] = &unk_22929BC4D;
    v70 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x3032000000;
    v67[3] = __Block_byref_object_copy__25;
    v67[4] = __Block_byref_object_dispose__25;
    v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = __Block_byref_object_copy__25;
    v65[4] = __Block_byref_object_dispose__25;
    v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = __Block_byref_object_copy__25;
    v63[4] = __Block_byref_object_dispose__25;
    v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (v7 && [v7 count])
    {
      if ([v7 count] < 0x190)
      {
        containerIdentifier = [dsCopy containerIdentifier];
        databaseScope = [containerCopy databaseScope];
        v16 = containerIdentifier;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __108__HDCloudSyncUpdateCachedRecordsOperation__configurationsByRecordZoneIDs_containerIdentifier_databaseScope___block_invoke;
        v74 = &unk_2786168B8;
        v17 = v16;
        *(&v75 + 1) = self;
        v76 = databaseScope;
        *&v75 = v17;
        v35 = [v7 hk_mapToDictionary:buf];

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          containerIdentifier2 = [dsCopy containerIdentifier];
          [containerCopy databaseScope];
          v20 = CKDatabaseScopeString();
          v21 = [v7 count];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = containerIdentifier2;
          *&buf[22] = 2114;
          v74 = v20;
          LOWORD(v75) = 2048;
          *(&v75 + 2) = v21;
          _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@: Beginning fetch of %ld record zone changes", buf, 0x2Au);
        }

        v34 = dsCopy;
        v22 = [objc_alloc(MEMORY[0x277CBC3B8]) initWithRecordZoneIDs:v7 configurationsByRecordZoneID:v35];
        [v22 setFetchAllChanges:1];
        [v22 setShouldFetchAssetContents:0];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke;
        v57[3] = &unk_278616780;
        v57[4] = self;
        v23 = dsCopy;
        v58 = v23;
        v24 = containerCopy;
        v59 = v24;
        v60 = v69;
        v61 = v63;
        v62 = v67;
        [v22 setRecordWasChangedBlock:v57];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_305;
        v56[3] = &unk_2786167A8;
        v56[4] = v69;
        v56[5] = v65;
        [v22 setRecordWithIDWasDeletedBlock:v56];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2;
        v48[3] = &unk_278616820;
        v25 = v23;
        v49 = v25;
        v26 = v24;
        v50 = v26;
        selfCopy = self;
        v52 = v69;
        v53 = v63;
        v54 = v67;
        v55 = v65;
        [v22 setRecordZoneChangeTokensUpdatedBlock:v48];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_313;
        v40[3] = &unk_278616848;
        v27 = v25;
        v41 = v27;
        v28 = v26;
        v42 = v28;
        selfCopy2 = self;
        v44 = v69;
        v45 = v63;
        v46 = v67;
        v47 = v65;
        [v22 setRecordZoneFetchCompletionBlock:v40];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_317;
        v36[3] = &unk_278616890;
        v36[4] = self;
        v37 = v27;
        v29 = v28;
        v38 = v29;
        v39 = v7;
        [v22 setFetchRecordZoneChangesCompletionBlock:v36];
        configuration = [self configuration];
        cachedCloudState = [configuration cachedCloudState];
        [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

        configuration2 = [self configuration];
        operationGroup = [configuration2 operationGroup];
        [v22 setGroup:operationGroup];

        [v29 hd_addOperation:v22];
        dsCopy = v34;

        goto LABEL_7;
      }

      v10 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v72 = @"Synthesized error for preemptive split.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277CBBF50] code:27 userInfo:v11];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _limitExceededFetchingChangesForRecordZoneIDs:v7 container:dsCopy database:containerCopy error:v12];
    }

    [self[13] finishTask];
LABEL_7:
    _Block_object_dispose(v63, 8);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v69, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_limitExceededFetchingChangesForRecordZoneIDs:(void *)ds container:(void *)container database:(void *)database error:
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dsCopy = ds;
  containerCopy = container;
  databaseCopy = database;
  if (self)
  {
    v13 = [v9 count];
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v13 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = 138543362;
        selfCopy2 = self;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Received limit exceeded error for a single record zone. This is unexpected.", &v21, 0xCu);
      }

      [*(self + 104) beginTask];
      [*(self + 104) failTaskWithError:databaseCopy];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
        v21 = 138543618;
        selfCopy2 = self;
        v23 = 2048;
        v24 = [v9 count];
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying by splitting record zone request in half and re-fetching (%ld zones).", &v21, 0x16u);
      }

      v17 = [v9 hk_splitWithBucketCount:2];
      v18 = [v17 objectAtIndexedSubscript:0];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _fetchChangesForRecordZoneIDs:v18 container:dsCopy database:containerCopy];

      v19 = [v17 objectAtIndexedSubscript:1];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _fetchChangesForRecordZoneIDs:v19 container:dsCopy database:containerCopy];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = 138543874;
      v24 = v22;
      v25 = 2114;
      v26 = v7;
      v27 = 2114;
      v28 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: recordWasChangedBlock failed to fetch changes for record %{public}@, %{public}@", &v23, 0x20u);
    }

    v11 = [HDCloudSyncZoneIdentifier alloc];
    v12 = [v7 zoneID];
    v13 = [*(a1 + 40) containerIdentifier];
    v14 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v11, "initForZone:container:scope:", v12, v13, [*(a1 + 48) databaseScope]);

    v15 = [HDCloudSyncCachedZone alloc];
    v16 = [*(a1 + 32) configuration];
    v17 = [v16 repository];
    v18 = [*(a1 + 32) configuration];
    v19 = [v18 accessibilityAssertion];
    v20 = [(HDCloudSyncCachedZone *)v15 initForZoneIdentifier:v14 repository:v17 accessibilityAssertion:v19];

    [v20 handleCloudError:v9 operation:*(a1 + 32) container:*(a1 + 40) database:*(a1 + 48)];
    if ([v9 hd_shouldPreventCloudKitCacheUpdate])
    {
      os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
      [*(*(*(a1 + 64) + 8) + 40) addObject:v14];
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    }
  }

  else if (v8)
  {
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    [*(*(*(a1 + 72) + 8) + 40) addObject:v8];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [HDCloudSyncZoneIdentifier alloc];
  v8 = [*(a1 + 32) containerIdentifier];
  v9 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v7, "initForZone:container:scope:", v6, v8, [*(a1 + 40) databaseScope]);

  v10 = [HDCloudSyncCachedZone alloc];
  v11 = [*(a1 + 48) configuration];
  v12 = [v11 repository];
  v13 = [*(a1 + 48) configuration];
  v14 = [v13 accessibilityAssertion];
  v15 = [(HDCloudSyncCachedZone *)v10 initForZoneIdentifier:v9 repository:v12 accessibilityAssertion:v14];

  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if ([*(*(*(a1 + 64) + 8) + 40) containsObject:v9])
  {
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      v19 = v16;
      v20 = [v18 containerIdentifier];
      [*(a1 + 40) databaseScope];
      v21 = CKDatabaseScopeString();
      *buf = 138544386;
      v47 = v17;
      v48 = 2080;
      v49 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_2";
      v50 = 2114;
      v51 = v9;
      v52 = 2114;
      v53 = v20;
      v54 = 2114;
      v55 = v21;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneChangeTokensUpdatedBlock with incomplete zone %{public}@, container %{public}@, database %{public}@.", buf, 0x34u);
    }
  }

  else
  {
    v22 = *(*(*(a1 + 72) + 8) + 40);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_307;
    v44[3] = &unk_2786167D0;
    v23 = v15;
    v45 = v23;
    v24 = [v22 hk_filter:v44];
    v25 = [v24 copy];

    [*(*(*(a1 + 72) + 8) + 40) removeObjectsInArray:v25];
    v26 = *(*(*(a1 + 80) + 8) + 40);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_309;
    v42[3] = &unk_2786167F8;
    v27 = v23;
    v43 = v27;
    v28 = [v26 hk_filter:v42];
    v29 = [v28 copy];

    [*(*(*(a1 + 80) + 8) + 40) removeObjectsInArray:v29];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    v31 = *(a1 + 40);
    v30 = *(a1 + 48);
    v32 = *(a1 + 32);
    v41 = 0;
    LOBYTE(v27) = [(HDCloudSyncUpdateCachedRecordsOperation *)v30 _updateCKCachedZoneForZone:v27 recordsToAdd:v25 recordIDsToDelete:v29 serverChangeToken:v5 fetchComplete:0 container:v32 database:v31 error:&v41];
    v33 = v41;
    if ((v27 & 1) == 0)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 48);
        v36 = *(a1 + 32);
        v37 = v34;
        v38 = [v36 containerIdentifier];
        [*(a1 + 40) databaseScope];
        v39 = CKDatabaseScopeString();
        *buf = 138544642;
        v47 = v40;
        v48 = 2080;
        v49 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_3";
        v50 = 2114;
        v51 = v9;
        v52 = 2114;
        v53 = v38;
        v54 = 2114;
        v55 = v39;
        v56 = 2114;
        v57 = v33;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneChangeTokensUpdatedBlock failed to cache records for zone %{public}@, container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_307(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 zoneID];
  v5 = [*(a1 + 32) zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_309(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [*(a1 + 32) zoneIdentifier];
  v5 = [v4 zoneIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (uint64_t)_updateCKCachedZoneForZone:(void *)zone recordsToAdd:(void *)add recordIDsToDelete:(void *)delete serverChangeToken:(unsigned int)token fetchComplete:(void *)complete container:(void *)container database:(void *)database error:
{
  v149 = *MEMORY[0x277D85DE8];
  v15 = a2;
  zoneCopy = zone;
  addCopy = add;
  deleteCopy = delete;
  completeCopy = complete;
  containerCopy = container;
  v21 = 0;
  selfCopy = self;
  if (self && deleteCopy)
  {
    v109 = v15;
    v107 = deleteCopy;
    v22 = containerCopy;
    configuration = [selfCopy configuration];
    cachedCloudState = [configuration cachedCloudState];
    [cachedCloudState setChangedRecordsCount:{objc_msgSend(cachedCloudState, "changedRecordsCount") + objc_msgSend(zoneCopy, "count")}];

    configuration2 = [selfCopy configuration];
    cachedCloudState2 = [configuration2 cachedCloudState];
    [cachedCloudState2 setDeletedRecordsCount:{objc_msgSend(cachedCloudState2, "deletedRecordsCount") + objc_msgSend(addCopy, "count")}];

    v106 = completeCopy;
    v27 = completeCopy;
    v105 = v22;
    v112 = v22;
    v28 = zoneCopy;
    v108 = addCopy;
    v29 = addCopy;
    v111 = v27;
    if ([v28 count] || objc_msgSend(v29, "count"))
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        containerIdentifier = [v27 containerIdentifier];
        v33 = [v28 count];
        v34 = [v29 count];
        [v112 databaseScope];
        v35 = CKDatabaseScopeString();
        *buf = 138544386;
        v140 = selfCopy;
        v141 = 2114;
        v142 = containerIdentifier;
        v143 = 2048;
        v144 = v33;
        v27 = v111;
        v145 = 2048;
        v146 = v34;
        v147 = 2114;
        v148 = v35;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld changed records and %ld deleted records in database %{public}@. Updating cache.", buf, 0x34u);
      }
    }

    containerIdentifier2 = [v27 containerIdentifier];
    databaseScope = [v112 databaseScope];
    v37 = v28;
    v113 = v29;
    v38 = containerIdentifier2;
    v39 = v37;
    v40 = v38;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = v39;
    v41 = [obj countByEnumeratingWithState:&v125 objects:buf count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v126;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v126 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v125 + 1) + 8 * i);
          *&v121 = MEMORY[0x277D85DD0];
          *(&v121 + 1) = 3221225472;
          *&v122 = __119__HDCloudSyncUpdateCachedRecordsOperation__addRecordToCacheWithChangedRecords_containerIdentifier_databaseScope_error___block_invoke;
          *(&v122 + 1) = &unk_2786168E0;
          *&v123 = v45;
          v46 = v40;
          v47 = v40;
          *&v124 = selfCopy;
          *(&v124 + 1) = databaseScope;
          *(&v123 + 1) = v47;
          v48 = HKWithAutoreleasePool();

          if (!v48)
          {

            v21 = 0;
            deleteCopy = v107;
            addCopy = v108;
            containerCopy = v105;
            completeCopy = v106;
            v15 = v109;
            goto LABEL_68;
          }

          v40 = v46;
        }

        v42 = [obj countByEnumeratingWithState:&v125 objects:buf count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v104 = zoneCopy;
    if ([obj count])
    {
      v103 = v40;
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
        v51 = [obj count];
        *v132 = 138543618;
        *&v132[4] = selfCopy;
        *&v132[12] = 2048;
        *&v132[14] = v51;
        _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated cache with %ld changed records:", v132, 0x16u);
      }

      v130 = 0u;
      v131 = 0u;
      memset(v129, 0, sizeof(v129));
      v52 = obj;
      v53 = [v52 countByEnumeratingWithState:v129 objects:v133 count:16];
      v54 = MEMORY[0x277CCC328];
      if (v53)
      {
        v55 = v53;
        v56 = 0;
        v57 = **&v129[16];
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (**&v129[16] != v57)
            {
              objc_enumerationMutation(v52);
            }

            v59 = *(*&v129[8] + 8 * j);
            _HKInitializeLogging();
            v60 = *v54;
            if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v60;
              recordID = [v59 recordID];
              *v132 = 67109378;
              *&v132[4] = v56;
              *&v132[8] = 2114;
              *&v132[10] = recordID;
              _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "\t\t%3d. %{public}@", v132, 0x12u);

              ++v56;
              v54 = MEMORY[0x277CCC328];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              _HKInitializeLogging();
              v63 = *v54;
              if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
                v65 = [v59 description];
                *v132 = 138543362;
                *&v132[4] = v65;
                _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "Participant Record Status %{public}@", v132, 0xCu);
              }
            }
          }

          v55 = [v52 countByEnumeratingWithState:v129 objects:v133 count:16];
        }

        while (v55);
      }

      v40 = v103;
    }

    else
    {
    }

    v66 = v113;
    v119 = v40;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v67 = v66;
    v68 = [v67 countByEnumeratingWithState:&v125 objects:buf count:16];
    v114 = v67;
    if (v68)
    {
      v69 = v68;
      v70 = 0;
      v120 = *v126;
      while (2)
      {
        v71 = 0;
        v72 = v70;
        do
        {
          if (*v126 != v120)
          {
            objc_enumerationMutation(v114);
          }

          v73 = *(*(&v125 + 1) + 8 * v71);
          v74 = [HDCloudSyncZoneIdentifier alloc];
          zoneID = [v73 zoneID];
          v76 = [(HDCloudSyncZoneIdentifier *)v74 initForZone:zoneID container:v119 scope:databaseScope];

          v77 = [HDCloudSyncCachedZone alloc];
          configuration3 = [selfCopy configuration];
          repository = [configuration3 repository];
          configuration4 = [selfCopy configuration];
          accessibilityAssertion = [configuration4 accessibilityAssertion];
          v82 = [(HDCloudSyncCachedZone *)v77 initForZoneIdentifier:v76 repository:repository accessibilityAssertion:accessibilityAssertion];

          *v132 = v72;
          LOBYTE(repository) = [v82 deleteRecordID:v73 error:v132];
          v70 = *v132;

          if ((repository & 1) == 0)
          {
            _HKInitializeLogging();
            v83 = *MEMORY[0x277CCC328];
            databaseCopy2 = database;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v133 = 138543874;
              v134 = selfCopy;
              v135 = 2114;
              v136 = v73;
              v137 = 2114;
              v138 = v70;
              _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete cached recordID %{public}@, %{public}@", v133, 0x20u);
            }

            v85 = v70;
            v86 = v85;
            addCopy = v108;
            v15 = v109;
            zoneCopy = v104;
            deleteCopy = v107;
            if (v85)
            {
              if (database)
              {
                v87 = v85;
                *database = v86;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v129[0] = v86 == 0;
            v99 = v114;

            goto LABEL_64;
          }

          ++v71;
          v72 = v70;
        }

        while (v69 != v71);
        v67 = v114;
        v69 = [v114 countByEnumeratingWithState:&v125 objects:buf count:16];
        if (v69)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v70 = 0;
    }

    v117 = v70;

    if ([v67 count])
    {
      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v89 = v88;
        v90 = [v114 count];
        *v133 = 138543618;
        v134 = selfCopy;
        v135 = 2048;
        v136 = v90;
        _os_log_impl(&dword_228986000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated cache with %ld deleted records:", v133, 0x16u);
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v91 = v114;
      v92 = [v91 countByEnumeratingWithState:&v121 objects:v133 count:16];
      if (v92)
      {
        v93 = v92;
        v94 = 0;
        v95 = *v122;
        do
        {
          for (k = 0; k != v93; ++k)
          {
            if (*v122 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v97 = *(*(&v121 + 1) + 8 * k);
            _HKInitializeLogging();
            v98 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *v129 = 67109378;
              *&v129[4] = v94;
              *&v129[8] = 2114;
              *&v129[10] = v97;
              _os_log_impl(&dword_228986000, v98, OS_LOG_TYPE_DEFAULT, "\t\t%3d. %{public}@", v129, 0x12u);
              ++v94;
            }
          }

          v93 = [v91 countByEnumeratingWithState:&v121 objects:v133 count:16];
        }

        while (v93);
      }
    }

    v129[0] = 1;
    addCopy = v108;
    v15 = v109;
    zoneCopy = v104;
    deleteCopy = v107;
    databaseCopy2 = database;
    v86 = v117;
    v99 = v114;
LABEL_64:

    v100 = v129[0];
    completeCopy = v106;
    if (v100 == 1)
    {
      v21 = [v15 setServerChangeToken:deleteCopy fetchComplete:token error:databaseCopy2];
    }

    else
    {
      v21 = 0;
    }

    containerCopy = v105;
  }

LABEL_68:

  v101 = *MEMORY[0x277D85DE8];
  return v21;
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_313(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a2;
  v13 = [HDCloudSyncZoneIdentifier alloc];
  v14 = [*(a1 + 32) containerIdentifier];
  v15 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v13, "initForZone:container:scope:", v12, v14, [*(a1 + 40) databaseScope]);

  v16 = [HDCloudSyncCachedZone alloc];
  v17 = [*(a1 + 48) configuration];
  v18 = [v17 repository];
  v19 = [*(a1 + 48) configuration];
  v20 = [v19 accessibilityAssertion];
  v21 = [(HDCloudSyncCachedZone *)v16 initForZoneIdentifier:v15 repository:v18 accessibilityAssertion:v20];

  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if (![*(*(*(a1 + 64) + 8) + 40) containsObject:v15])
  {
    v29 = *(*(*(a1 + 72) + 8) + 40);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_314;
    v61[3] = &unk_2786167D0;
    v30 = v21;
    v62 = v30;
    v31 = [v29 hk_filter:v61];
    v32 = [v31 copy];

    [*(*(*(a1 + 72) + 8) + 40) removeObjectsInArray:v32];
    v33 = *(*(*(a1 + 80) + 8) + 40);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_315;
    v59[3] = &unk_2786167F8;
    v34 = v30;
    v60 = v34;
    v35 = [v33 hk_filter:v59];
    v36 = [v35 copy];

    [*(*(*(a1 + 80) + 8) + 40) removeObjectsInArray:v36];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    v38 = *(a1 + 40);
    v37 = *(a1 + 48);
    if (v11)
    {
      v39 = 0;
    }

    else
    {
      v39 = a5 ^ 1;
    }

    v40 = *(a1 + 32);
    v57 = v10;
    v58 = 0;
    v41 = [(HDCloudSyncUpdateCachedRecordsOperation *)v37 _updateCKCachedZoneForZone:v34 recordsToAdd:v32 recordIDsToDelete:v36 serverChangeToken:v10 fetchComplete:v39 container:v40 database:v38 error:&v58];
    v42 = v58;
    v43 = MEMORY[0x277CCC328];
    if ((v41 & 1) == 0 && (_HKInitializeLogging(), v44 = *v43, os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR)))
    {
      v51 = *(a1 + 32);
      v54 = *(a1 + 48);
      loga = v44;
      v49 = [v51 containerIdentifier];
      [*(a1 + 40) databaseScope];
      v52 = CKDatabaseScopeString();
      *buf = 138544642;
      v64 = v54;
      v65 = 2080;
      v66 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_3";
      v67 = 2114;
      v68 = v15;
      v69 = 2114;
      v70 = v49;
      v71 = 2114;
      v72 = v52;
      v73 = 2114;
      v74 = v42;
      _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneFetchCompletionBlock failed to cache records for zone %{public}@, container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);

      if (v11)
      {
        goto LABEL_10;
      }
    }

    else if (v11)
    {
LABEL_10:
      _HKInitializeLogging();
      v45 = *v43;
      if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 48);
        v47 = *(a1 + 32);
        log = v45;
        v50 = [v47 containerIdentifier];
        [*(a1 + 40) databaseScope];
        v48 = CKDatabaseScopeString();
        *buf = 138544642;
        v64 = v53;
        v65 = 2080;
        v66 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
        v67 = 2114;
        v68 = v15;
        v69 = 2114;
        v70 = v50;
        v71 = 2114;
        v72 = v48;
        v73 = 2114;
        v74 = v11;
        _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "%{public}@ %s: recordZoneFetchCompletionBlock failed for zone %{public}@ in container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);
      }

      [v34 handleCloudError:v11 operation:*(a1 + 48) container:*(a1 + 32) database:*(a1 + 40)];
    }

    v10 = v57;
    goto LABEL_14;
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v23 = v10;
    v24 = *(a1 + 48);
    v25 = *(a1 + 32);
    v26 = v22;
    v27 = [v25 containerIdentifier];
    [*(a1 + 40) databaseScope];
    v28 = CKDatabaseScopeString();
    *buf = 138544386;
    v64 = v24;
    v10 = v23;
    v65 = 2080;
    v66 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
    v67 = 2114;
    v68 = v15;
    v69 = 2114;
    v70 = v27;
    v71 = 2114;
    v72 = v28;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneFetchCompletionBlock with incomplete zone %{public}@, container %{public}@, database %{public}@.", buf, 0x34u);
  }

LABEL_14:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_314(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 zoneID];
  v5 = [*(a1 + 32) zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_315(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [*(a1 + 32) zoneIdentifier];
  v5 = [v4 zoneIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_317(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = v4;
      v16 = [v13 containerIdentifier];
      [*(a1 + 48) databaseScope];
      v17 = CKDatabaseScopeString();
      v18 = 138544386;
      v19 = v14;
      v20 = 2080;
      v21 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v3;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed for container %{public}@, database %{public}@, %{public}@", &v18, 0x34u);
    }

    if ([v3 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      [(HDCloudSyncUpdateCachedRecordsOperation *)*(a1 + 32) _limitExceededFetchingChangesForRecordZoneIDs:*(a1 + 40) container:*(a1 + 48) database:v3 error:?];
    }

    else
    {
      v5 = [v3 hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:&__block_literal_global_321];
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = [*(a1 + 32) configuration];
        v8 = [v7 repository];
        v9 = [v8 primaryCKContainer];

        if (v6 == v9)
        {
          v11 = *(*(a1 + 32) + 104);
          v12 = [v5 hd_errorSurfacingFatalCloudKitPartialFailure];
          [v11 failTaskWithError:v12];

          goto LABEL_10;
        }
      }
    }
  }

  [*(*(a1 + 32) + 104) finishTask];
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_318(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v4)
  {
    v5 = [v2 code];
    v6 = v5 == 112;
    if (v5 == 22)
    {
      v6 = 1;
    }

    v7 = v5 == 11 || v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __108__HDCloudSyncUpdateCachedRecordsOperation__configurationsByRecordZoneIDs_containerIdentifier_databaseScope___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v5 container:*(a1 + 32) scope:*(a1 + 48)];
  v8 = [HDCloudSyncCachedZone alloc];
  v9 = [*(a1 + 40) configuration];
  v10 = [v9 repository];
  v11 = [*(a1 + 40) configuration];
  v12 = [v11 accessibilityAssertion];
  v13 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:v7 repository:v10 accessibilityAssertion:v12];

  v21 = 0;
  v14 = [v13 serverChangeTokenWithError:&v21];
  v15 = v21;
  v16 = v15;
  if (!v14)
  {
    if (v15)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        *buf = 138543874;
        v23 = v20;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v16;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve previous server change token for %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v18 setPreviousServerChangeToken:v14];
  [v18 setResultsLimit:0];
  [v18 setDesiredKeys:0];
  v6[2](v6, v5, v18);

  v19 = *MEMORY[0x277D85DE8];
}

BOOL __119__HDCloudSyncUpdateCachedRecordsOperation__addRecordToCacheWithChangedRecords_containerIdentifier_databaseScope_error___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [HDCloudSyncZoneIdentifier alloc];
  v5 = [*(a1 + 32) recordID];
  v6 = [v5 zoneID];
  v7 = [(HDCloudSyncZoneIdentifier *)v4 initForZone:v6 container:*(a1 + 40) scope:*(a1 + 56)];

  v8 = [HDCloudSyncCachedZone alloc];
  v9 = [*(a1 + 48) configuration];
  v10 = [v9 repository];
  v11 = [*(a1 + 48) configuration];
  v12 = [v11 accessibilityAssertion];
  v13 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:v7 repository:v10 accessibilityAssertion:v12];

  v14 = *(a1 + 32);
  v26 = 0;
  LOBYTE(v10) = [v13 addRecord:v14 error:&v26];
  v15 = v26;
  if (v10)
  {
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 48);
    v25 = *(a1 + 32);
    *buf = 138543874;
    v28 = v24;
    v29 = 2114;
    v30 = v25;
    v31 = 2114;
    v32 = v15;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cache record %{public}@, %{public}@", buf, 0x20u);
  }

  if ([v15 code] == 713)
  {
    goto LABEL_7;
  }

  if ([v15 code] == 709)
  {
    os_unfair_lock_lock((*(a1 + 48) + 120));
    v17 = *(*(a1 + 48) + 112);
    v18 = [*(a1 + 32) recordID];
    [v17 addObject:v18];

    os_unfair_lock_unlock((*(a1 + 48) + 120));
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v22 = v15;
  v19 = v22 == 0;
  if (v22)
  {
    if (a2)
    {
      v23 = v22;
      *a2 = v22;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_8:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end