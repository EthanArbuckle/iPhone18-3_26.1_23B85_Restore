@interface HDCloudSyncUpdateCachedZonesOperation
- (HDCloudSyncUpdateCachedZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (uint64_t)_updateCKCachedZonesWithServerChangeToken:(void *)a3 recordZonesIDsToAdd:(void *)a4 recordZonesIDsToDelete:(void *)a5 container:(void *)a6 database:(void *)a7 error:;
- (void)fetchChangesForContainer:(id)a3 database:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedZonesOperation

- (HDCloudSyncUpdateCachedZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncUpdateCachedZonesOperation;
  v4 = [(HDCloudSyncOperation *)&v8 initWithConfiguration:a3 cloudState:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v30 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 allCKContainers];
  v6 = [v5 allObjects];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 count];
    v10 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v25 = self;
    v26 = 2048;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning fetches for private database in %ld containers: %{public}@", buf, 0x20u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v16 privateCloudDatabase];
        [(HDCloudSyncUpdateCachedZonesOperation *)self fetchChangesForContainer:v16 database:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchChangesForContainer:(id)a3 database:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2810000000;
  v50[3] = &unk_22929BC4D;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__2;
  v48[4] = __Block_byref_object_dispose__2;
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__2;
  v46[4] = __Block_byref_object_dispose__2;
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 cachedCloudState];
  v10 = [v6 containerIdentifier];
  v45 = 0;
  v11 = [v9 serverChangeTokenForContainerIdentifier:v10 databaseScope:objc_msgSend(v7 error:{"databaseScope"), &v45}];
  v12 = v45;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = [v6 containerIdentifier];
      v25 = [v7 databaseScope];
      *buf = 138544130;
      v53 = self;
      v54 = 2114;
      v55 = v24;
      v56 = 2048;
      v57 = v25;
      v58 = 2114;
      v59 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch server change token for container %{public}@, database, %ld, %{public}@", buf, 0x2Au);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:v11];
  [v14 setFetchAllChanges:1];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke;
  v44[3] = &unk_278613768;
  v44[4] = v50;
  v44[5] = v48;
  [v14 setRecordZoneWithIDChangedBlock:v44];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_2;
  v43[3] = &unk_278613768;
  v43[4] = v50;
  v43[5] = v46;
  [v14 setRecordZoneWithIDWasDeletedBlock:v43];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_3;
  v42[3] = &unk_278613768;
  v42[4] = v50;
  v42[5] = v46;
  [v14 setRecordZoneWithIDWasPurgedBlock:v42];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_4;
  v36[3] = &unk_278613790;
  v40 = v48;
  v41 = v46;
  v39 = v50;
  v36[4] = self;
  v15 = v6;
  v37 = v15;
  v16 = v7;
  v38 = v16;
  [v14 setChangeTokenUpdatedBlock:v36];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_299;
  v29 = &unk_2786137B8;
  v34 = v48;
  v35 = v46;
  v33 = v50;
  v30 = self;
  v17 = v15;
  v31 = v17;
  v18 = v16;
  v32 = v18;
  [v14 setFetchDatabaseChangesCompletionBlock:&v26];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask:v26];
  v19 = [(HDCloudSyncOperation *)self configuration];
  v20 = [v19 cachedCloudState];
  [v20 setOperationCountForAnalytics:{objc_msgSend(v20, "operationCountForAnalytics") + 1}];

  v21 = [(HDCloudSyncOperation *)self configuration];
  v22 = [v21 operationGroup];
  [v14 setGroup:v22];

  [v18 hd_addOperation:v14];
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_4(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = [*(*(*(a1 + 64) + 8) + 40) copy];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 72) + 8) + 40) copy];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v25 = 0;
  v16 = [(HDCloudSyncUpdateCachedZonesOperation *)v13 _updateCKCachedZonesWithServerChangeToken:v4 recordZonesIDsToAdd:v5 recordZonesIDsToDelete:v9 container:v14 database:v15 error:&v25];

  v17 = v25;
  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v18;
      v23 = [v20 containerIdentifier];
      [*(a1 + 48) databaseScope];
      v24 = CKDatabaseScopeString();
      *buf = 138544386;
      v27 = v21;
      v28 = 2080;
      v29 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke_4";
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to cache zones for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_updateCKCachedZonesWithServerChangeToken:(void *)a3 recordZonesIDsToAdd:(void *)a4 recordZonesIDsToDelete:(void *)a5 container:(void *)a6 database:(void *)a7 error:
{
  v140 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v98 = a4;
  v97 = a5;
  v96 = a6;
  v101 = a1;
  if (a1)
  {
    v15 = [v14 count];
    v16 = MEMORY[0x277CCC328];
    v95 = v13;
    v92 = a7;
    if (v15 || [v98 count])
    {
      _HKInitializeLogging();
      v17 = *v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v14 count];
        v20 = [v98 count];
        [v96 databaseScope];
        v21 = CKDatabaseScopeString();
        v22 = [v97 containerIdentifier];
        *buf = 138544386;
        v131 = a1;
        v132 = 2048;
        v133 = v19;
        v134 = 2048;
        v135 = v20;
        v136 = 2114;
        v137 = v21;
        v138 = 2114;
        v139 = v22;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld modified and %ld deleted zone changes for %{public}@ database in %{public}@", buf, 0x34u);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      obj = v14;
      v23 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
      v24 = MEMORY[0x277CCC328];
      if (v23)
      {
        v25 = v23;
        v26 = 0;
        v27 = *v112;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v112 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v111 + 1) + 8 * i);
            _HKInitializeLogging();
            v30 = *v24;
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v131 = v26;
              v132 = 2114;
              v133 = v29;
              _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Modified:\t%ld: + %{public}@", buf, 0x16u);
            }

            ++v26;
          }

          v25 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
        }

        while (v25);
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v31 = v98;
      v32 = [v31 countByEnumeratingWithState:&v107 objects:v122 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = 0;
        v35 = *v108;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v108 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v107 + 1) + 8 * j);
            _HKInitializeLogging();
            v38 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v131 = v34;
              v132 = 2114;
              v133 = v37;
              _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Deleted: \t%ld: + %{public}@", buf, 0x16u);
            }

            ++v34;
          }

          v33 = [v31 countByEnumeratingWithState:&v107 objects:v122 count:16];
        }

        while (v33);
      }

      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __151__HDCloudSyncUpdateCachedZonesOperation__updateCKCachedZonesWithServerChangeToken_recordZonesIDsToAdd_recordZonesIDsToDelete_container_database_error___block_invoke;
      v105[3] = &unk_2786137E0;
      v106 = v31;
      v14 = [obj hk_filter:v105];

      v13 = v95;
    }

    v39 = [v101 configuration];
    v40 = [v39 cachedCloudState];
    [v40 setChangedZonesCount:{objc_msgSend(v40, "changedZonesCount") + objc_msgSend(v14, "count")}];

    v41 = [v101 configuration];
    v42 = [v41 cachedCloudState];
    [v42 setDeletedZonesCount:{objc_msgSend(v42, "deletedZonesCount") + objc_msgSend(v98, "count")}];

    v43 = [v97 containerIdentifier];
    obja = [v96 databaseScope];
    v44 = v14;
    v94 = v98;
    v93 = v13;
    v45 = v43;
    v46 = v44;
    v47 = v45;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v14 = v46;
    v48 = [v14 countByEnumeratingWithState:&v118 objects:buf count:16];
    v102 = v14;
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v119;
      while (2)
      {
        v52 = 0;
        v53 = v50;
        do
        {
          if (*v119 != v51)
          {
            objc_enumerationMutation(v102);
          }

          v54 = v47;
          v55 = [[HDCloudSyncZoneIdentifier alloc] initForZone:*(*(&v118 + 1) + 8 * v52) container:v47 scope:obja];
          v56 = [v101 configuration];
          v57 = [v56 cachedCloudState];
          v117 = v53;
          v58 = [v57 addZoneWithIdentifier:v55 error:&v117];
          v50 = v117;

          if ((v58 & 1) == 0)
          {
            _HKInitializeLogging();
            v59 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v124 = 138543874;
              v125 = v101;
              v126 = 2114;
              v127 = v55;
              v128 = 2114;
              v129 = v50;
              _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "%{public}@ Failed to add cached record zone %{public}@, %{public}@", v124, 0x20u);
            }

            v50 = v50;
            v14 = v102;
            v47 = v54;
            if (v50)
            {
              if (v92)
              {
                v60 = v50;
                *v92 = v50;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v124[0] = v50 == 0;
            goto LABEL_43;
          }

          ++v52;
          v53 = v50;
          v47 = v54;
        }

        while (v49 != v52);
        v14 = v102;
        v49 = [v102 countByEnumeratingWithState:&v118 objects:buf count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v50 = 0;
    }

    v124[0] = 1;
LABEL_43:

    v61 = v124[0];
    if (v61 != 1)
    {
      goto LABEL_65;
    }

    v62 = v94;
    v91 = v47;
    v63 = v47;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v118 objects:buf count:16];
    v99 = v64;
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v100 = *v119;
      while (2)
      {
        v68 = 0;
        v69 = v67;
        do
        {
          if (*v119 != v100)
          {
            objc_enumerationMutation(v99);
          }

          v70 = v63;
          v71 = [[HDCloudSyncZoneIdentifier alloc] initForZone:*(*(&v118 + 1) + 8 * v68) container:v63 scope:obja];
          v72 = [HDCloudSyncCachedZone alloc];
          v73 = [v101 configuration];
          v74 = [v73 repository];
          v75 = [v101 configuration];
          v76 = [v75 accessibilityAssertion];
          v77 = [(HDCloudSyncCachedZone *)v72 initForZoneIdentifier:v71 repository:v74 accessibilityAssertion:v76];

          v117 = v69;
          LOBYTE(v76) = [v77 deleteZoneWithError:&v117];
          v67 = v117;

          if ((v76 & 1) == 0)
          {
            _HKInitializeLogging();
            v78 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v124 = 138543874;
              v125 = v101;
              v126 = 2114;
              v127 = v71;
              v128 = 2114;
              v129 = v67;
              _os_log_error_impl(&dword_228986000, v78, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete cached record zone %{public}@, %{public}@", v124, 0x20u);
            }

            v67 = v67;
            v14 = v102;
            v63 = v70;
            v64 = v99;
            if (v67)
            {
              if (v92)
              {
                v79 = v67;
                *v92 = v67;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v124[0] = v67 == 0;
            goto LABEL_62;
          }

          ++v68;
          v69 = v67;
          v63 = v70;
        }

        while (v66 != v68);
        v64 = v99;
        v66 = [v99 countByEnumeratingWithState:&v118 objects:buf count:16];
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v67 = 0;
    }

    v124[0] = 1;
    v14 = v102;
LABEL_62:

    v80 = v124[0];
    v47 = v91;
    if (v80 == 1)
    {
      v81 = [v101 configuration];
      v82 = [v81 cachedCloudState];
      v116 = 0;
      v83 = [v82 setServerChangeToken:v93 containerIdentifier:v63 databaseScope:obja error:&v116];
      v84 = v116;

      if (v83)
      {

LABEL_75:
        v115 = 1;
        v13 = v95;
        goto LABEL_68;
      }

      _HKInitializeLogging();
      v87 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v131 = v101;
        v132 = 2114;
        v133 = v63;
        v134 = 2048;
        v135 = obja;
        v136 = 2114;
        v137 = v84;
        _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cached server change token for container %{public}@, database, %ld, %{public}@", buf, 0x2Au);
      }

      v88 = v84;
      if (!v88)
      {

        goto LABEL_75;
      }

      v89 = v88;
      if (v92)
      {
        v90 = v88;
        *v92 = v89;
      }

      else
      {
        _HKLogDroppedError();
      }

      v13 = v95;
    }

    else
    {
LABEL_65:

      v13 = v95;
    }
  }

  v115 = 0;
LABEL_68:

  result = v115;
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_299(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(*(a1 + 56) + 8);
  v8 = a2;
  os_unfair_lock_lock(v7 + 8);
  v9 = [*(*(*(a1 + 64) + 8) + 40) copy];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(*(*(a1 + 72) + 8) + 40) copy];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v81 = 0;
  v20 = [(HDCloudSyncUpdateCachedZonesOperation *)v17 _updateCKCachedZonesWithServerChangeToken:v8 recordZonesIDsToAdd:v9 recordZonesIDsToDelete:v13 container:v18 database:v19 error:&v81];

  v21 = v81;
  v22 = MEMORY[0x277CCC328];
  if (v6)
  {
    v78 = v20;
    _HKInitializeLogging();
    v23 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v57 = v13;
      v58 = *(a1 + 32);
      v59 = *(a1 + 40);
      v60 = v23;
      v61 = [v59 containerIdentifier];
      [*(a1 + 48) databaseScope];
      CKDatabaseScopeString();
      v63 = v62 = v21;
      *buf = 138544386;
      v83 = v58;
      v84 = 2080;
      v85 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke";
      v86 = 2114;
      v87 = v61;
      v88 = 2114;
      v89 = v63;
      v90 = 2114;
      v91 = v6;
      _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to fetch database changes for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);

      v13 = v57;
      v21 = v62;
    }

    v79 = v13;
    if ([v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:21])
    {
      v75 = v6;
      v76 = v21;
      v77 = v9;
      os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
      [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
      v24 = [*(a1 + 32) configuration];
      v25 = [v24 cachedCloudState];
      v26 = [*(a1 + 40) containerIdentifier];
      v27 = [*(a1 + 48) databaseScope];
      v80 = 0;
      v28 = [v25 resetServerChangeTokenForContainerIdentifier:v26 databaseScope:v27 error:&v80];
      v29 = v80;

      if ((v28 & 1) == 0)
      {
        _HKInitializeLogging();
        v30 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          v69 = *(a1 + 32);
          v70 = *(a1 + 40);
          v71 = v30;
          v72 = [v70 containerIdentifier];
          [*(a1 + 48) databaseScope];
          v73 = CKDatabaseScopeString();
          *buf = 138544130;
          v83 = v69;
          v84 = 2114;
          v85 = v72;
          v86 = 2114;
          v87 = v73;
          v88 = 2114;
          v89 = v29;
          _os_log_error_impl(&dword_228986000, v71, OS_LOG_TYPE_ERROR, " %{public}@ Failed to delete %{public}@ %{public}@ from cache in response to CKErrorChangeTokenExpired, error %{public}@", buf, 0x2Au);
        }
      }

      v31 = [*(a1 + 32) configuration];
      v32 = [v31 repository];
      v33 = [v32 profile];
      v34 = [v33 daemon];
      v35 = [v34 analyticsSubmissionCoordinator];
      v74 = v29;
      v36 = v22;
      v37 = *(a1 + 32);
      v38 = [*(a1 + 40) containerIdentifier];
      [*(a1 + 48) databaseScope];
      v39 = CKDatabaseScopeString();
      v40 = v37;
      v22 = v36;
      v6 = v75;
      [v35 cloudCache_reportCacheDiscrepancyForOperation:v40 reason:&stru_283BF39C8 containerIdentifier:v38 databaseScope:v39 error:v75];

      v21 = v76;
      v9 = v77;
      v13 = v79;
    }

    v41 = [v6 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v41)
    {
      v42 = v21;
      v43 = v9;
      v44 = v6;
      v45 = v22;
      v46 = *(a1 + 40);
      v47 = [*(a1 + 32) configuration];
      v48 = [v47 repository];
      v49 = [v48 primaryCKContainer];

      v50 = v46 == v49;
      v22 = v45;
      v6 = v44;
      v9 = v43;
      v21 = v42;
      v13 = v79;
      if (v50)
      {
        [*(*(a1 + 32) + 104) failTaskWithError:v41];

        goto LABEL_17;
      }
    }

    v20 = v78;
  }

  if (v20)
  {
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v51 = *v22;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v65 = *(a1 + 32);
    v64 = *(a1 + 40);
    v66 = v51;
    v67 = [v64 containerIdentifier];
    [*(a1 + 48) databaseScope];
    v68 = CKDatabaseScopeString();
    *buf = 138544386;
    v83 = v65;
    v84 = 2080;
    v85 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke";
    v86 = 2114;
    v87 = v67;
    v88 = 2114;
    v89 = v68;
    v90 = 2114;
    v91 = v21;
    _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to cache zones for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);
  }

  v52 = *(a1 + 40);
  v53 = [*(a1 + 32) configuration];
  v54 = [v53 repository];
  v55 = [v54 primaryCKContainer];

  if (v52 == v55)
  {
    [*(*(a1 + 32) + 104) failTaskWithError:v21];
  }

  else
  {
LABEL_16:
    [*(*(a1 + 32) + 104) finishTask];
  }

LABEL_17:

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __151__HDCloudSyncUpdateCachedZonesOperation__updateCKCachedZonesWithServerChangeToken_recordZonesIDsToAdd_recordZonesIDsToDelete_container_database_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "\tZone %{public}@ was both modified and deleted and will be ignored.", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

@end