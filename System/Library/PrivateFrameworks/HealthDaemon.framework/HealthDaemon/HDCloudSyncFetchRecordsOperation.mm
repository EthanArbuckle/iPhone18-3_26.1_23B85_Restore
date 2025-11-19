@interface HDCloudSyncFetchRecordsOperation
- (HDCloudSyncFetchRecordsOperation)initWithConfiguration:(id)a3 container:(id)a4 recordIDs:(id)a5;
- (void)_fetchRecordsWithIDs:(void *)a3 container:(void *)a4 database:(void *)a5 completion:;
- (void)main;
@end

@implementation HDCloudSyncFetchRecordsOperation

- (HDCloudSyncFetchRecordsOperation)initWithConfiguration:(id)a3 container:(id)a4 recordIDs:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDCloudSyncFetchRecordsOperation;
  v11 = [(HDCloudSyncOperation *)&v16 initWithConfiguration:a3 cloudState:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, a4);
    objc_storeStrong(&v12->_recordIDs, a5);
    v12->_lock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v12->_taskGroup;
    v12->_taskGroup = v13;

    [(HDSynchronousTaskGroup *)v12->_taskGroup setDelegate:v12];
  }

  return v12;
}

- (void)main
{
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  recordIDs = self->_recordIDs;
  container = self->_container;
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 profileIdentifier];
  v8 = HDDatabaseForContainer(container, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HDCloudSyncFetchRecordsOperation_main__block_invoke;
  v9[3] = &unk_278613968;
  v9[4] = self;
  [(HDCloudSyncFetchRecordsOperation *)&self->super.super.isa _fetchRecordsWithIDs:container container:v8 database:v9 completion:?];
}

- (void)_fetchRecordsWithIDs:(void *)a3 container:(void *)a4 database:(void *)a5 completion:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if ([v9 count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v9];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke;
      v25[3] = &unk_2786240B8;
      v25[4] = a1;
      v14 = v10;
      v26 = v14;
      v15 = v11;
      v27 = v15;
      [v13 setPerRecordCompletionBlock:v25];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke_298;
      v21[3] = &unk_2786240E0;
      v21[4] = a1;
      v22 = v14;
      v16 = v15;
      v23 = v16;
      v24 = v12;
      [v13 setFetchRecordsCompletionBlock:v21];
      [a1[15] beginTask];
      v17 = [a1 configuration];
      v18 = [v17 cachedCloudState];
      [v18 setOperationCountForAnalytics:{objc_msgSend(v18, "operationCountForAnalytics") + 1}];

      v19 = [a1 configuration];
      v20 = [v19 operationGroup];
      [v13 setGroup:v20];

      [v16 hd_addOperation:v13];
    }

    else
    {
      v12[2](v12);
    }
  }
}

void __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (!a2 && [v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:26])
  {
    v8 = [a1[4] configuration];
    v9 = [v8 cachedCloudState];
    v10 = [a1[5] containerIdentifier];
    v11 = [a1[6] databaseScope];
    v27 = 0;
    v12 = [v9 resetServerChangeTokenForContainerIdentifier:v10 databaseScope:v11 error:&v27];
    v13 = v27;

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[4];
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v7;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset cache server change token after encountering unexpected zone-not-found error during record fetch (%{public}@)", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[4];
      *buf = 138543874;
      v29 = v26;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v13;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: FAILED attempting reset of cache server change token after encountering unexpected zone-not-found error during record fetch (%{public}@): %{public}@", buf, 0x20u);
    }

    v17 = [a1[4] configuration];
    v18 = [v17 repository];
    v19 = [v18 profile];
    v20 = [v19 daemon];
    v21 = [v20 analyticsSubmissionCoordinator];
    v22 = a1[4];
    v23 = [a1[5] containerIdentifier];
    v24 = HDCKDatabaseScopeToString([a1[6] databaseScope]);
    [v21 cloudCache_reportCacheDiscrepancyForOperation:v22 reason:@"Zone Not Found" containerIdentifier:v23 databaseScope:v24 error:v7];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v62 = a2;
  v57 = a3;
  if (v57)
  {
    _HKInitializeLogging();
    v5 = MEMORY[0x277CCC328];
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v53 = *(a1 + 32);
      v52 = *(a1 + 40);
      v54 = *(a1 + 48);
      v55 = v6;
      [v54 databaseScope];
      v56 = CKDatabaseScopeString();
      *buf = 138544130;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      *&buf[22] = 2114;
      v77 = v56;
      LOWORD(v78) = 2114;
      *(&v78 + 2) = v57;
      _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch records in container %{public}@ database %{public}@ with error %{public}@", buf, 0x2Au);
    }

    if ([v57 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 128);
      v9 = *(v7 + 104);
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v60 = v57;
      v12 = v8;
      v13 = v9;
      v14 = v11;
      v15 = v10;
      _HKInitializeLogging();
      v16 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v12 count];
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Limit exceeded fectching %ld records. Splitting record request in half and re-fetching.", buf, 0x16u);
      }

      if ([v12 count] < 2)
      {
        [*(v7 + 120) failTaskWithError:v60];
      }

      else
      {
        v19 = [v12 count] >> 1;
        v20 = [v12 subarrayWithRange:{0, v19}];
        v21 = [v12 subarrayWithRange:{v19, objc_msgSend(v12, "count") - v19}];
        v72[0] = 0;
        v72[1] = v72;
        v72[2] = 0x2020000000;
        v72[3] = 2;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke;
        v77 = &unk_278620590;
        *&v78 = v7;
        v79 = v72;
        v22 = v15;
        *(&v78 + 1) = v22;
        [(HDCloudSyncFetchRecordsOperation *)v7 _fetchRecordsWithIDs:v20 container:v13 database:v14 completion:buf];
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke_2;
        v69[3] = &unk_278620590;
        v69[4] = v7;
        v71 = v72;
        v70 = v22;
        [(HDCloudSyncFetchRecordsOperation *)v7 _fetchRecordsWithIDs:v21 container:v13 database:v14 completion:v69];
        [*(v7 + 120) finishTask];

        _Block_object_dispose(v72, 8);
      }

      goto LABEL_35;
    }

    v23 = [v57 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v23)
    {
      (*(*(a1 + 56) + 16))();
      [*(*(a1 + 32) + 120) failTaskWithError:v23];

      goto LABEL_35;
    }
  }

  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v62 allKeys];
  v24 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v24)
  {
    v61 = *v66;
    while (2)
    {
      v25 = 0;
      do
      {
        if (*v66 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v65 + 1) + 8 * v25);
        v27 = [HDCloudSyncZoneIdentifier alloc];
        v28 = [v26 zoneID];
        v29 = [*(*(a1 + 32) + 104) containerIdentifier];
        v30 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v27, "initForZone:container:scope:", v28, v29, [*(a1 + 48) databaseScope]);

        v31 = [HDCloudSyncCachedZone alloc];
        v32 = [*(a1 + 32) configuration];
        v33 = [v32 repository];
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 accessibilityAssertion];
        v36 = [(HDCloudSyncCachedZone *)v31 initForZoneIdentifier:v30 repository:v33 accessibilityAssertion:v35];

        v37 = [v62 objectForKeyedSubscript:v26];
        v64 = 0;
        LODWORD(v34) = [v36 addRecord:v37 error:&v64];
        v38 = v64;

        if (!v34)
        {
          (*(*(a1 + 56) + 16))();
          [*(*(a1 + 32) + 120) failTaskWithError:v38];

          goto LABEL_34;
        }

        os_unfair_lock_lock((*(a1 + 32) + 112));
        v39 = *(*(a1 + 32) + 136);
        if (v39)
        {
          v40 = [v62 objectForKeyedSubscript:v26];
          v63 = v38;
          v41 = (*(v39 + 16))(v39, v40, &v63);
          v42 = v63;

          if ((v41 & 1) == 0)
          {
            [v58 addObject:v42];
          }
        }

        else
        {
          v42 = v38;
        }

        os_unfair_lock_unlock((*(a1 + 32) + 112));

        ++v25;
      }

      while (v24 != v25);
      v24 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  if ([v58 count])
  {
    v43 = [v58 count];
    v44 = MEMORY[0x277CCA7E8];
    if (v43 != 1)
    {
      v44 = MEMORY[0x277CCA578];
    }

    v45 = *v44;
    if ([v58 count] == 1)
    {
      v46 = [v58 firstObject];
    }

    else
    {
      v46 = v58;
    }

    v47 = v46;
    v73[0] = *MEMORY[0x277CCA450];
    v73[1] = v45;
    v74[0] = @"Error processing fetched records";
    v74[1] = v46;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    (*(*(a1 + 56) + 16))();
    v49 = *(*(a1 + 32) + 120);
    v50 = [MEMORY[0x277CCA9B8] hk_error:100 userInfo:v48];
    [v49 failTaskWithError:v50];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(*(a1 + 32) + 120) finishTask];
  }

LABEL_34:

LABEL_35:
  v51 = *MEMORY[0x277D85DE8];
}

void __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 112));
  v2 = --*(*(a1[6] + 8) + 24);
  os_unfair_lock_unlock((a1[4] + 112));
  if (!v2)
  {
    v3 = *(a1[5] + 16);

    v3();
  }
}

void __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke_2(void *a1)
{
  os_unfair_lock_lock((a1[4] + 112));
  v2 = --*(*(a1[6] + 8) + 24);
  os_unfair_lock_unlock((a1[4] + 112));
  if (!v2)
  {
    v3 = *(a1[5] + 16);

    v3();
  }
}

@end