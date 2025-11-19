@interface HDCloudSyncModifyRecordZonesOperation
- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)a3 container:(id)a4 recordZonesToSave:(id)a5 recordZoneIDsToDelete:(id)a6;
- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)a3 container:(id)a4 scope:(int64_t)a5 recordZonesToSave:(id)a6 recordZoneIDsToDelete:(id)a7;
- (void)_limitExceededForSavingRecordZones:(id)a3 deletingRecordZoneIDs:(id)a4 error:(id)a5;
- (void)_saveRecordZones:(id)a3 deleteRecordZoneIDs:(id)a4;
@end

@implementation HDCloudSyncModifyRecordZonesOperation

- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)a3 container:(id)a4 recordZonesToSave:(id)a5 recordZoneIDsToDelete:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 repository];
  v15 = [v14 profileIdentifier];
  v16 = HDDatabaseForContainer(v12, v15);
  v17 = -[HDCloudSyncModifyRecordZonesOperation initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:](self, "initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:", v13, v12, [v16 databaseScope], v11, v10);

  return v17;
}

- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)a3 container:(id)a4 scope:(int64_t)a5 recordZonesToSave:(id)a6 recordZoneIDsToDelete:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = HDCloudSyncModifyRecordZonesOperation;
  v16 = [(HDCloudSyncOperation *)&v23 initWithConfiguration:a3 cloudState:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_container, a4);
    v18 = [v13 databaseWithDatabaseScope:a5];
    database = v17->_database;
    v17->_database = v18;

    objc_storeStrong(&v17->_recordZonesToSave, a6);
    objc_storeStrong(&v17->_recordZoneIDsToDelete, a7);
    v20 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v17->_taskGroup;
    v17->_taskGroup = v20;

    [(HDSynchronousTaskGroup *)v17->_taskGroup setDelegate:v17];
  }

  return v17;
}

- (void)_saveRecordZones:(id)a3 deleteRecordZoneIDs:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v8 = [v6 count];
  v9 = [v7 count] + v8;
  if (!v9)
  {
LABEL_10:
    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
    goto LABEL_14;
  }

  if (v9 >= 400)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CBBF50];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Synthesized error for preemptive split.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v15 = [v12 errorWithDomain:v13 code:27 userInfo:v14];
    [(HDCloudSyncModifyRecordZonesOperation *)self _limitExceededForSavingRecordZones:v10 deletingRecordZoneIDs:v11 error:v15];

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    *buf = 138543874;
    v28 = self;
    v29 = 2048;
    v30 = [v6 count];
    v31 = 2048;
    v32 = [v7 count];
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld zones, deleting %ld zones", buf, 0x20u);
  }

  v18 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:v6 recordZoneIDsToDelete:v7];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__HDCloudSyncModifyRecordZonesOperation__saveRecordZones_deleteRecordZoneIDs___block_invoke;
  v24[3] = &unk_278616968;
  v24[4] = self;
  v25 = v6;
  v26 = v7;
  [v18 setModifyRecordZonesCompletionBlock:v24];
  v19 = [(HDCloudSyncOperation *)self configuration];
  v20 = [v19 cachedCloudState];
  [v20 setOperationCountForAnalytics:{objc_msgSend(v20, "operationCountForAnalytics") + 1}];

  v21 = [(HDCloudSyncOperation *)self configuration];
  v22 = [v21 operationGroup];
  [v18 setGroup:v22];

  [(CKDatabase *)self->_database hd_addOperation:v18];
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

void __78__HDCloudSyncModifyRecordZonesOperation__saveRecordZones_deleteRecordZoneIDs___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v41 = *(v40 + 104);
      v42 = v10;
      v43 = [v41 containerIdentifier];
      [*(*(a1 + 32) + 112) databaseScope];
      v44 = CKDatabaseScopeString();
      *buf = 138544130;
      v66 = v40;
      v67 = 2114;
      v68 = v43;
      v69 = 2114;
      v70 = v44;
      v71 = 2114;
      v72 = v9;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify record zones in container %{public}@, database %{public}@, error %{public}@", buf, 0x2Au);
    }

    if ([v9 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      [*(a1 + 32) _limitExceededForSavingRecordZones:*(a1 + 40) deletingRecordZoneIDs:*(a1 + 48) error:v9];
      [*(*(a1 + 32) + 120) finishTask];
      goto LABEL_31;
    }

    v11 = [v9 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v11)
    {
      v12 = v11;
      [*(*(a1 + 32) + 120) failTaskWithError:v11];

      goto LABEL_31;
    }
  }

  v45 = v9;
  v46 = v7;
  v47 = v8;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v51 = *v60;
    while (2)
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * v16);
        v19 = [HDCloudSyncZoneIdentifier alloc];
        v20 = [v18 zoneID];
        v21 = [*(*(a1 + 32) + 104) containerIdentifier];
        v22 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v19, "initForZone:container:scope:", v20, v21, [*(*(a1 + 32) + 112) databaseScope]);

        v23 = [*(a1 + 32) configuration];
        v24 = [v23 cachedCloudState];
        v58 = v17;
        v25 = [v24 addZoneWithIdentifier:v22 error:&v58];
        v15 = v58;

        if (!v25)
        {
          [*(*(a1 + 32) + 120) failTaskWithError:v15];

          v26 = obj;
LABEL_29:

          goto LABEL_30;
        }

        ++v16;
        v17 = v15;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v47;
  v52 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v52)
  {
    obja = *v55;
    while (2)
    {
      v27 = 0;
      v28 = v15;
      do
      {
        if (*v55 != obja)
        {
          objc_enumerationMutation(v48);
        }

        v29 = *(*(&v54 + 1) + 8 * v27);
        v30 = [HDCloudSyncZoneIdentifier alloc];
        v31 = [*(*(a1 + 32) + 104) containerIdentifier];
        v32 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v30, "initForZone:container:scope:", v29, v31, [*(*(a1 + 32) + 112) databaseScope]);

        v33 = [HDCloudSyncCachedZone alloc];
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 repository];
        v36 = [*(a1 + 32) configuration];
        v37 = [v36 accessibilityAssertion];
        v38 = [(HDCloudSyncCachedZone *)v33 initForZoneIdentifier:v32 repository:v35 accessibilityAssertion:v37];

        v53 = v28;
        LODWORD(v36) = [v38 deleteZoneWithError:&v53];
        v15 = v53;

        if (!v36)
        {
          [*(*(a1 + 32) + 120) failTaskWithError:v15];

          v26 = v48;
          goto LABEL_29;
        }

        ++v27;
        v28 = v15;
      }

      while (v52 != v27);
      v52 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 120) finishTask];
LABEL_30:

  v7 = v46;
  v8 = v47;
  v9 = v45;
LABEL_31:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_limitExceededForSavingRecordZones:(id)a3 deletingRecordZoneIDs:(id)a4 error:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  if (([v9 count] + v11) > 1)
  {
    if ([v8 count] && objc_msgSend(v9, "count"))
    {
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:v8 deleteRecordZoneIDs:0];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:0 deleteRecordZoneIDs:v9];
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v22 = 138543874;
        v23 = self;
        v24 = 2048;
        v25 = [v8 count];
        v26 = 2048;
        v27 = [v9 count];
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying by splitting record zone request in half and re-fetching (%ld zone saves, %ld zone deletions).", &v22, 0x20u);
      }

      v15 = [v8 hk_splitWithBucketCount:2];
      v16 = [v9 hk_splitWithBucketCount:2];
      v17 = [v15 objectAtIndexedSubscript:0];
      v18 = [v16 objectAtIndexedSubscript:0];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:v17 deleteRecordZoneIDs:v18];

      v19 = [v15 objectAtIndexedSubscript:1];
      v20 = [v16 objectAtIndexedSubscript:1];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:v19 deleteRecordZoneIDs:v20];
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v22 = 138543362;
      v23 = self;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Received limit exceeded error for a single record zone modification. This is unexpected.", &v22, 0xCu);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v10];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end