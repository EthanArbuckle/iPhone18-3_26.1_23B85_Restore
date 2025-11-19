@interface HDCloudSyncCachedZone
- (BOOL)_deleteZoneWithError:(void *)a1;
- (BOOL)_enumerateRecordsAndDeleteWithError:(void *)a1;
- (BOOL)addRecord:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordID:(id)a3 error:(id *)a4;
- (BOOL)deleteZoneWithError:(id *)a3;
- (BOOL)recordsForClass:(Class)a3 epoch:(int64_t)a4 error:(id *)a5 enumerationHandler:(id)a6;
- (BOOL)resetZoneServerChangeTokenWithError:(id *)a3;
- (HDCloudSyncRepository)repository;
- (HDCloudSyncSerializedRecord)_serializedRecordForUnprotectedDBData:(void *)a3 protectedDBData:(uint64_t)a4 error:;
- (id)_recordForEntity:(void *)a3 class:(void *)a4 unprotectedData:(void *)a5 transaction:(void *)a6 error:;
- (id)cloudSyncRecordForCKRecord:(id)a3 error:(id *)a4;
- (id)initForZoneIdentifier:(id)a3 repository:(id)a4 accessibilityAssertion:(id)a5;
- (id)recordForRecordID:(id)a3 class:(Class)a4 error:(id *)a5;
- (id)recordsForClass:(Class)a3 error:(id *)a4 filter:(id)a5;
- (id)serverChangeTokenWithError:(id *)a3;
- (id)zoneShareWithError:(id *)a3;
- (int64_t)containsRecordWithRecordID:(id)a3 error:(id *)a4;
- (int64_t)containsRecordsWithError:(id *)a3;
- (int64_t)needsFetchWithError:(id *)a3;
- (void)handleCloudError:(id)a3 operation:(id)a4 container:(id)a5 database:(id)a6;
@end

@implementation HDCloudSyncCachedZone

- (id)initForZoneIdentifier:(id)a3 repository:(id)a4 accessibilityAssertion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDCloudSyncCachedZone;
  v11 = [(HDCloudSyncCachedZone *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    zoneIdentifier = v11->_zoneIdentifier;
    v11->_zoneIdentifier = v12;

    v11->_zoneType = [(HDCloudSyncZoneIdentifier *)v11->_zoneIdentifier type];
    objc_storeWeak(&v11->_repository, v9);
    objc_storeStrong(&v11->_accessibilityAssertion, a5);
  }

  return v11;
}

- (id)serverChangeTokenWithError:(id *)a3
{
  v19 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v4 = [v19 containerIdentifier];
  v18 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v5 = [v18 scope];
  v17 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v6 = [v17 zoneIdentifier];
  v7 = [v6 zoneName];
  v8 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v9 = [v8 zoneIdentifier];
  v10 = [v9 ownerName];
  v11 = [(HDCloudSyncCachedZone *)self repository];
  v12 = [v11 profile];
  v13 = [v12 legacyRepositoryProfile];
  v14 = [HDCachedCKRecordZoneEntity serverChangeTokenForContainerIdentifier:v4 databaseScope:v5 zoneName:v7 ownerName:v10 profile:v13 error:a3];

  return v14;
}

- (BOOL)deleteZoneWithError:(id *)a3
{
  v5 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v6 = v5;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v8 = [v5 contextWithAccessibilityAssertion:accessibilityAssertion];

  v9 = [(HDCloudSyncCachedZone *)self repository];
  v10 = [v9 profile];
  v11 = [v10 database];
  v14[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__HDCloudSyncCachedZone_deleteZoneWithError___block_invoke;
  v15[3] = &unk_278616048;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HDCloudSyncCachedZone_deleteZoneWithError___block_invoke_2;
  v14[3] = &unk_27862A4A8;
  v12 = [v11 performTransactionWithContext:v8 error:a3 block:v15 inaccessibilityHandler:v14];

  return v12;
}

- (BOOL)_deleteZoneWithError:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v31 = [a1 zoneIdentifier];
    v24 = [v31 containerIdentifier];
    v29 = [v2 zoneIdentifier];
    v22 = [v29 scope];
    v27 = [v2 zoneIdentifier];
    v26 = [v27 zoneIdentifier];
    v4 = [v26 zoneName];
    v5 = [v2 zoneIdentifier];
    v6 = [v5 zoneIdentifier];
    v7 = [v6 ownerName];
    v8 = [v2 repository];
    v9 = [v8 profile];
    v10 = [v9 legacyRepositoryProfile];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__HDCloudSyncCachedZone__deleteZoneWithError___block_invoke;
    v33[3] = &unk_27862A608;
    v33[4] = v2;
    v11 = v22;
    v23 = a2;
    LODWORD(a2) = [HDCachedCKRecordEntity enumerateRecordIDsWithContainerIdentifier:v24 databaseScope:v11 zoneName:v4 ownerName:v7 profile:v10 error:a2 enumerationHandler:v33];

    if (a2)
    {
      v32 = [v2 zoneIdentifier];
      v12 = [v32 containerIdentifier];
      v30 = [v2 zoneIdentifier];
      v25 = [v30 scope];
      v28 = [v2 zoneIdentifier];
      v13 = [v28 zoneIdentifier];
      v14 = [v13 zoneName];
      v15 = [v2 zoneIdentifier];
      v16 = [v15 zoneIdentifier];
      v17 = [v16 ownerName];
      v18 = [v2 repository];
      v19 = [v18 profile];
      v20 = [v19 legacyRepositoryProfile];
      v2 = [HDCachedCKRecordZoneEntity deleteZoneWithContainerIdentifier:v12 databaseScope:v25 zoneName:v14 ownerName:v17 profile:v20 error:v23];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (void)handleCloudError:(id)a3 operation:(id)a4 container:(id)a5 database:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if ([v10 hk_isHealthKitErrorWithCode:725])
    {
      v36 = 0;
      v14 = [(HDCloudSyncCachedZone *)self resetZoneServerChangeTokenWithError:&v36];
      v33 = v36;
      if (!v14)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v31 = v15;
          v32 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          *&buf[22] = 2114;
          v38 = v33;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, " %{public}@ Failed to set serverChangeToken to nil for zone %{public}@, %{public}@", buf, 0x20u);
        }
      }

      v16 = [(HDCloudSyncCachedZone *)self repository];
      v17 = [v16 profile];
      v18 = [v17 daemon];
      v19 = [v18 analyticsSubmissionCoordinator];
      v20 = [v12 containerIdentifier];
      v21 = HDCKDatabaseScopeToString([v13 databaseScope]);
      [v19 cloudCache_reportCacheDiscrepancyForOperation:v11 reason:@"Unexpected cache discrepency" containerIdentifier:v20 databaseScope:v21 error:v10];
    }

    else
    {
      v22 = [v10 domain];
      v23 = [v22 isEqualToString:*MEMORY[0x277CBBF50]];

      if (v23)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v38 = __Block_byref_object_copy__168;
        v39 = __Block_byref_object_dispose__168;
        v40 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __71__HDCloudSyncCachedZone_handleCloudError_operation_container_database___block_invoke;
        v35[3] = &unk_27862A4D0;
        v35[4] = self;
        v35[5] = buf;
        [v10 hd_enumerateCloudKitPartialErrorsWithHandler:v35];
        if (*(*&buf[8] + 40))
        {
          v24 = [(HDCloudSyncCachedZone *)self repository];
          v25 = [v24 profile];
          v26 = [v25 daemon];
          v27 = [v26 analyticsSubmissionCoordinator];
          v28 = [v12 containerIdentifier];
          v29 = HDCKDatabaseScopeToString([v13 databaseScope]);
          [v27 cloudCache_reportCacheDiscrepancyForOperation:v11 reason:&stru_283BF39C8 containerIdentifier:v28 databaseScope:v29 error:*(*&buf[8] + 40)];
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __71__HDCloudSyncCachedZone_handleCloudError_operation_container_database___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *MEMORY[0x277CBBF50];
  if ([v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:26])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v8 = *(a1 + 32);
    v67 = 0;
    v9 = [v8 deleteZoneWithError:&v67];
    v10 = v67;
    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 138543618;
        v69 = v44;
        v70 = 2114;
        v71 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete zone after encountering zone-not-found error: %{public}@", buf, 0x16u);
      }
    }

    *a3 = 1;
  }

  v60 = v7;
  v61 = v4;
  if ([v6 hk_isErrorInDomain:v7 code:21])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v12 = *(a1 + 32);
    v66 = 0;
    v13 = [v12 resetZoneServerChangeTokenWithError:&v66];
    v14 = v66;
    if ((v13 & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 138543874;
        v69 = v45;
        v70 = 2114;
        v71 = v6;
        v72 = 2114;
        v73 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset server change token after encountering %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [*(a1 + 32) repository];
    v18 = [v17 profile];
    v19 = [v18 legacyRepositoryProfile];
    v65 = v14;
    v20 = HDSetCloudSyncAttachmentManagementUUID(v16, v19, &v65);
    v21 = v65;

    if ((v20 & 1) == 0)
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 32);
        *buf = 138543874;
        v69 = v46;
        v70 = 2114;
        v71 = v6;
        v72 = 2114;
        v73 = v21;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to reset attachment UUID after encountering %{public}@: %{public}@", buf, 0x20u);
      }
    }

    *a3 = 1;

    v7 = v60;
    v4 = v61;
  }

  if ([v6 hk_isErrorInDomain:v7 code:11])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v23 = *(a1 + 32);
    v64 = 0;
    v24 = [v23 resetZoneServerChangeTokenWithError:&v64];
    v25 = v64;
    if ((v24 & 1) == 0)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v47 = *(a1 + 32);
        *buf = 138543874;
        v69 = v47;
        v70 = 2114;
        v71 = v6;
        v72 = 2114;
        v73 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset server change token after encountering %{public}@: %{public}@", buf, 0x20u);
      }
    }

    *a3 = 1;
  }

  if ([v6 hk_isErrorInDomain:v7 code:112])
  {
    v58 = v6;
    v59 = a3;
    v57 = [*(a1 + 32) zoneIdentifier];
    v52 = [v57 containerIdentifier];
    v55 = [*(a1 + 32) zoneIdentifier];
    v53 = [v55 scope];
    v54 = [*(a1 + 32) zoneIdentifier];
    v27 = [v54 zoneIdentifier];
    v28 = [v27 zoneName];
    v29 = [*(a1 + 32) zoneIdentifier];
    v30 = [v29 zoneIdentifier];
    v31 = [v30 ownerName];
    v32 = [*(a1 + 32) repository];
    v33 = [v32 profile];
    v34 = [v33 legacyRepositoryProfile];
    v63 = 0;
    v56 = a1;
    v35 = [HDCachedCKRecordZoneEntity setZoneEntityState:1 containerIdentifier:v52 databaseScope:v53 zoneName:v28 ownerName:v31 profile:v34 error:&v63];
    v36 = v63;

    v37 = v36;
    a1 = v56;

    if (!v35)
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v48 = *(v56 + 32);
        *buf = 138543618;
        v69 = v48;
        v70 = 2114;
        v71 = v37;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark zone as missing identity: %{public}@", buf, 0x16u);
      }
    }

    a3 = v59;
    *v59 = 1;

    v6 = v58;
    v7 = v60;
    v4 = v61;
  }

  if ([v6 hk_isErrorInDomain:v7 code:14])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v39 = *(a1 + 32);
    v62 = 0;
    v40 = [v39 resetZoneServerChangeTokenWithError:&v62];
    v41 = v62;
    if ((v40 & 1) == 0)
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 32);
        v50 = v42;
        v51 = [v49 zoneIdentifier];
        *buf = 138543874;
        v69 = v49;
        v70 = 2114;
        v71 = v51;
        v72 = 2114;
        v73 = v41;
        _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, " %{public}@ Failed to set serverChangeToken to nil for zone %{public}@, %{public}@", buf, 0x20u);
      }
    }

    *a3 = 1;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetZoneServerChangeTokenWithError:(id *)a3
{
  v29 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v23 = [v29 containerIdentifier];
  v28 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v22 = [v28 scope];
  v27 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v26 = [v27 zoneIdentifier];
  v5 = [v26 zoneName];
  v24 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v6 = [v24 zoneIdentifier];
  v7 = [v6 ownerName];
  v8 = [(HDCloudSyncCachedZone *)self repository];
  v9 = [v8 userRecordName];
  v10 = [(HDCloudSyncCachedZone *)self repository];
  v11 = [v10 profile];
  v12 = [v11 legacyRepositoryProfile];
  v25 = [HDCachedCKRecordZoneEntity insertOrUpdateWithContainerIdentifier:v23 databaseScope:v22 zoneName:v5 ownerName:v7 userRecordName:v9 serverChangeToken:0 fetchComplete:MEMORY[0x277CBEC28] profile:v12 error:a3];

  if (!v25)
  {
    return 0;
  }

  v13 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v14 = v13;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v16 = [v13 contextWithAccessibilityAssertion:accessibilityAssertion];

  v17 = [(HDCloudSyncCachedZone *)self repository];
  v18 = [v17 profile];
  v19 = [v18 database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__HDCloudSyncCachedZone_resetZoneServerChangeTokenWithError___block_invoke;
  v31[3] = &unk_278616048;
  v31[4] = self;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HDCloudSyncCachedZone_resetZoneServerChangeTokenWithError___block_invoke_2;
  v30[3] = &unk_27862A4A8;
  v30[4] = self;
  v20 = [v19 performTransactionWithContext:v16 error:a3 block:v31 inaccessibilityHandler:v30];

  return v20;
}

- (BOOL)_enumerateRecordsAndDeleteWithError:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v16 = [a1 zoneIdentifier];
    v13 = [v16 containerIdentifier];
    v15 = [v2 zoneIdentifier];
    v12 = [v15 scope];
    v14 = [v2 zoneIdentifier];
    v3 = [v14 zoneIdentifier];
    v4 = [v3 zoneName];
    v5 = [v2 zoneIdentifier];
    v6 = [v5 zoneIdentifier];
    v7 = [v6 ownerName];
    v8 = [v2 repository];
    v9 = [v8 profile];
    v10 = [v9 legacyRepositoryProfile];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__HDCloudSyncCachedZone__enumerateRecordsAndDeleteWithError___block_invoke;
    v18[3] = &unk_27862A608;
    v18[4] = v2;
    v2 = [HDCachedCKRecordEntity enumerateRecordIDsWithContainerIdentifier:v13 databaseScope:v12 zoneName:v4 ownerName:v7 profile:v10 error:a2 enumerationHandler:v18];
  }

  return v2;
}

- (int64_t)needsFetchWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(HDCloudSyncCachedZone *)self repository];
  v6 = [v5 profile];
  v7 = [v6 database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HDCloudSyncCachedZone_needsFetchWithError___block_invoke;
  v10[3] = &unk_278619398;
  v10[4] = self;
  v10[5] = &v11;
  LODWORD(a3) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performReadTransactionWithHealthDatabase:v7 error:a3 block:v10];

  if (a3)
  {
    v8 = v12[3];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __45__HDCloudSyncCachedZone_needsFetchWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v18 = [v4 zoneIdentifier];
  v6 = [v18 containerIdentifier];
  v17 = [*(a1 + 32) zoneIdentifier];
  v7 = [v17 scope];
  v8 = [*(a1 + 32) zoneIdentifier];
  v9 = [v8 zoneIdentifier];
  v10 = [v9 zoneName];
  v11 = [*(a1 + 32) zoneIdentifier];
  v12 = [v11 zoneIdentifier];
  v13 = [v12 ownerName];
  v14 = [HDCachedCKRecordZoneEntity requiresFetchForZoneWithContainerIdentifier:v6 databaseScope:v7 zoneName:v10 ownerName:v13 transaction:v5 error:a3];

  *(*(*(a1 + 40) + 8) + 24) = v14;
  return 1;
}

- (id)zoneShareWithError:(id *)a3
{
  v23 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v19 = [v23 containerIdentifier];
  v22 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v18 = [v22 scope];
  v21 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v20 = [v21 zoneIdentifier];
  v4 = [v20 zoneName];
  v5 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [v6 ownerName];
  v8 = *MEMORY[0x277CBC020];
  v9 = [(HDCloudSyncCachedZone *)self repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v24 = 0;
  v12 = [HDCachedCKRecordEntity recordDataWithContainerIdentifier:v19 databaseScope:v18 zoneName:v4 ownerName:v7 recordName:v8 profile:v11 error:&v24];
  v13 = v24;

  if (v12 || !v13)
  {
    if (v12)
    {
      v15 = [MEMORY[0x277CBC680] hd_shareWithSystemData:v12 error:a3];
      goto LABEL_9;
    }
  }

  else
  {
    if (a3)
    {
      v14 = v13;
      v15 = 0;
      *a3 = v13;
      goto LABEL_9;
    }

    _HKLogDroppedError();
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (BOOL)recordsForClass:(Class)a3 epoch:(int64_t)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v11 = a6;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"HDCloudSyncCachedZone.m" lineNumber:311 description:@"recordsForClass must be called with the subclass of HDCloudSyncRecord"];
  }

  v12 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v13 = v12;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v15 = [v12 contextWithAccessibilityAssertion:accessibilityAssertion];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke;
  aBlock[3] = &unk_27862A540;
  aBlock[4] = self;
  v36 = a3;
  v37 = a4;
  v16 = v11;
  v35 = v16;
  v17 = _Block_copy(aBlock);
  v18 = [(HDCloudSyncCachedZone *)self repository];
  v19 = [v18 profile];
  v20 = [v19 database];
  v33 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke_329;
  v31[3] = &unk_27861A528;
  v32 = v17;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke_2_330;
  v29[3] = &unk_278618968;
  v21 = v32;
  v30 = v21;
  v22 = [v20 performTransactionWithContext:v15 error:&v33 block:v31 inaccessibilityHandler:v29];
  v23 = v33;

  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v25 = v23;
    v24 = v25 == 0;
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
  }

  return v24;
}

BOOL __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v25 = [*(a1 + 32) zoneIdentifier];
  v19 = [v25 containerIdentifier];
  v24 = [*(a1 + 32) zoneIdentifier];
  v18 = [v24 scope];
  v23 = [*(a1 + 32) zoneIdentifier];
  v22 = [v23 zoneIdentifier];
  v17 = [v22 zoneName];
  v20 = [*(a1 + 32) zoneIdentifier];
  v5 = [v20 zoneIdentifier];
  v6 = [v5 ownerName];
  v7 = [*(a1 + 48) recordType];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 32) repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke_2;
  v26[3] = &unk_27862A518;
  v26[4] = *(a1 + 32);
  v27 = v4;
  v16 = *(a1 + 40);
  v12 = v16;
  v28 = v16;
  v13 = v4;
  v14 = [HDCachedCKRecordEntity enumerateRecordIDAndDataWithContainerIdentifier:v19 databaseScope:v18 zoneName:v17 ownerName:v6 recordType:v7 recordName:0 epoch:v8 profile:v11 error:a3 enumerationHandler:v26];

  return v14;
}

uint64_t __72__HDCloudSyncCachedZone_recordsForClass_epoch_error_enumerationHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v32 = 0;
  v14 = [(HDCloudSyncCachedZone *)v12 _recordForEntity:a2 class:v11 unprotectedData:a4 transaction:v13 error:&v32];
  v15 = v32;
  v16 = v15;
  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (v17)
  {
    if (v14)
    {
      v18 = (*(*(a1 + 48) + 16))();
    }

    else
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v27 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v28 = "protected";
        }

        else
        {
          v28 = "unprotected";
        }

        v29 = v20;
        v30 = [v10 recordName];
        v31 = [*(a1 + 32) zoneIdentifier];
        *buf = 138544130;
        v34 = v27;
        v35 = 2080;
        v36 = v28;
        v37 = 2114;
        v38 = v30;
        v39 = 2114;
        v40 = v31;
        _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "%{public}@ No cloud sync record found during %s transaction for record name: %{public}@, zone: %{public}@", buf, 0x2Au);
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = [v10 recordName];
      v23 = [v21 hk_error:118 format:{@"No cloud sync record found during protected transaction for record name: %@", v22}];
      v18 = v23 == 0;
      if (v23)
      {
        if (a6)
        {
          v24 = v23;
          *a6 = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else if (a6)
  {
    v19 = v15;
    v18 = 0;
    *a6 = v16;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_recordForEntity:(void *)a3 class:(void *)a4 unprotectedData:(void *)a5 transaction:(void *)a6 error:
{
  v60 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (a1)
  {
    v15 = [v13 protectedDatabase];

    if (v15)
    {
      v16 = [HDCachedSecureCKRecordEntity protectedRecordDataForUnprotectedEntity:v11 transaction:v14 error:a6];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(HDCloudSyncCachedZone *)a1 _serializedRecordForUnprotectedDBData:v12 protectedDBData:v16 error:a6];
    if (v17)
    {
      if ([a3 isEqual:objc_opt_class()])
      {
        v50 = v16;
        v18 = [(HDCloudSyncRecord *)HDCloudSyncStoreRecord initWithSerializedRecord:v17 error:a6];
        v19 = [a1 zoneIdentifier];
        v20 = [v19 type];

        if (v20 > 3)
        {
          if (v20 > 5)
          {
            if (v20 == 6)
            {
              v25 = MEMORY[0x277CCA9B8];
              v26 = objc_opt_class();
              v27 = @"Attempt to fetch sequence records for State Sync zone.";
              goto LABEL_27;
            }

            if (v20 == 7)
            {
              v25 = MEMORY[0x277CCA9B8];
              v26 = objc_opt_class();
              v27 = @"Attempt to fetch sequence records for Context sync zone.";
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          if (v20 == 4)
          {
            v25 = MEMORY[0x277CCA9B8];
            v26 = objc_opt_class();
            v27 = @"Attempt to fetch sequence records for Private Metadata zone.";
          }

          else
          {
            v25 = MEMORY[0x277CCA9B8];
            v26 = objc_opt_class();
            v27 = @"Attempt to fetch sequence records for Attachment zone.";
          }
        }

        else
        {
          if (v20 <= 1)
          {
            if (!v20)
            {
              v25 = MEMORY[0x277CCA9B8];
              v26 = objc_opt_class();
              v27 = @"Attempt to fetch sequence records for Master zone.";
              goto LABEL_27;
            }

            if (v20 == 1)
            {
              v21 = [a1 zoneIdentifier];
              v22 = [v21 zoneIdentifier];
              v23 = [HDCloudSyncSequenceRecord recordIDsWithIndividualZoneID:v22];
LABEL_33:

              if (v23)
              {
                v46 = v14;
                v48 = v11;
                v49 = v12;
                v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v31 = [a1 repository];
                v32 = [v31 profile];
                v33 = [v32 database];
                v55[0] = MEMORY[0x277D85DD0];
                v55[1] = 3221225472;
                v55[2] = __64__HDCloudSyncCachedZone__addSequenceRecordsToStoreRecord_error___block_invoke;
                v55[3] = &unk_278615D40;
                v34 = v23;
                v56 = v34;
                v57 = a1;
                v35 = v30;
                v58 = v35;
                LODWORD(v30) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v33 error:a6 block:v55];

                if (v30)
                {
                  v44 = v34;
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v36 = v35;
                  v37 = [v36 countByEnumeratingWithState:&v51 objects:v59 count:16];
                  v12 = v49;
                  v16 = v50;
                  v14 = v46;
                  if (v37)
                  {
                    v38 = v37;
                    v39 = *v52;
                    do
                    {
                      for (i = 0; i != v38; ++i)
                      {
                        if (*v52 != v39)
                        {
                          objc_enumerationMutation(v36);
                        }

                        [v18 addSequenceHeaderRecord:*(*(&v51 + 1) + 8 * i)];
                      }

                      v38 = [v36 countByEnumeratingWithState:&v51 objects:v59 count:16];
                    }

                    while (v38);
                  }

                  v41 = v18;
                  v34 = v44;
                }

                else
                {
                  v41 = 0;
                  v12 = v49;
                  v16 = v50;
                  v14 = v46;
                }

                v11 = v48;
              }

              else
              {

                v41 = 0;
                v16 = v50;
              }

              v24 = v41;

              goto LABEL_47;
            }

LABEL_26:
            v25 = MEMORY[0x277CCA9B8];
            v26 = objc_opt_class();
            v27 = @"Attempt to fetch sequence records for unknown zone type.";
            goto LABEL_27;
          }

          if (v20 == 2)
          {
            v21 = [v18 ownerIdentifier];
            v22 = [v18 storeIdentifier];
            v47 = [a1 zoneIdentifier];
            v28 = [v47 zoneIdentifier];
            v45 = [HDCloudSyncSequenceRecord recordIDsForOwnerIdentifier:v21 storeIdentifier:v22 zoneID:v28];

            v23 = v45;
            goto LABEL_33;
          }

          v25 = MEMORY[0x277CCA9B8];
          v26 = objc_opt_class();
          v27 = @"Attempt to fetch sequence records for Shared Summary zone.";
        }

LABEL_27:
        v22 = [v25 hk_errorForInvalidArgument:@"@" class:v26 selector:sel__sequenceRecordIDsForStoreRecord_error_ format:v27];
        if (v22)
        {
          if (a6)
          {
            v29 = v22;
            v23 = 0;
            *a6 = v22;
          }

          else
          {
            _HKLogDroppedError();
            v23 = 0;
          }

          v21 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        goto LABEL_33;
      }

      v24 = [a3 initWithSerializedRecord:v17 error:a6];
    }

    else
    {
      v24 = 0;
    }

LABEL_47:

    goto LABEL_48;
  }

  v24 = 0;
LABEL_48:

  v42 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)recordsForClass:(Class)a3 error:(id *)a4 filter:(id)a5
{
  v9 = a5;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"HDCloudSyncCachedZone.m" lineNumber:371 description:@"recordsForClass must be called with the subclass of HDCloudSyncRecord"];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = v11;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v14 = [v11 contextWithAccessibilityAssertion:accessibilityAssertion];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke;
  aBlock[3] = &unk_27862A590;
  aBlock[4] = self;
  v37 = a3;
  v15 = v9;
  v36 = v15;
  v16 = v10;
  v35 = v16;
  v17 = _Block_copy(aBlock);
  v18 = [(HDCloudSyncCachedZone *)self repository];
  v19 = [v18 profile];
  v20 = [v19 database];
  v33 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke_334;
  v31[3] = &unk_27861A528;
  v32 = v17;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke_2_335;
  v29[3] = &unk_278618968;
  v21 = v32;
  v30 = v21;
  v22 = [v20 performTransactionWithContext:v14 error:&v33 block:v31 inaccessibilityHandler:v29];
  v23 = v33;

  if (v22)
  {
    v24 = v16;
  }

  else
  {
    v25 = v23;
    if (v25)
    {
      if (a4)
      {
        v26 = v25;
        *a4 = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v24 = 0;
  }

  return v24;
}

BOOL __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = [*(a1 + 32) zoneIdentifier];
  v19 = [v24 containerIdentifier];
  v23 = [*(a1 + 32) zoneIdentifier];
  v18 = [v23 scope];
  v22 = [*(a1 + 32) zoneIdentifier];
  v21 = [v22 zoneIdentifier];
  v17 = [v21 zoneName];
  v20 = [*(a1 + 32) zoneIdentifier];
  v6 = [v20 zoneIdentifier];
  v7 = [v6 ownerName];
  v8 = [*(a1 + 56) recordType];
  v9 = [*(a1 + 32) repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke_2;
  v25[3] = &unk_27862A568;
  v25[4] = *(a1 + 32);
  v26 = v5;
  v16 = *(a1 + 48);
  v12 = v16;
  v28 = v16;
  v27 = *(a1 + 40);
  v13 = v5;
  v14 = [HDCachedCKRecordEntity enumerateRecordIDAndDataWithContainerIdentifier:v19 databaseScope:v18 zoneName:v17 ownerName:v7 recordType:v8 recordName:0 epoch:0 profile:v11 error:a3 enumerationHandler:v25];

  return v14;
}

BOOL __54__HDCloudSyncCachedZone_recordsForClass_error_filter___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v32 = 0;
  v14 = [(HDCloudSyncCachedZone *)v12 _recordForEntity:a2 class:v11 unprotectedData:a4 transaction:v13 error:&v32];
  v15 = v32;
  v16 = v15;
  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (v17)
  {
    if (v14)
    {
      if ((*(*(a1 + 56) + 16))())
      {
        [*(a1 + 48) addObject:v14];
      }

      v18 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v27 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v28 = "protected";
        }

        else
        {
          v28 = "unprotected";
        }

        v29 = v20;
        v30 = [v10 recordName];
        v31 = [*(a1 + 32) zoneIdentifier];
        *buf = 138544130;
        v34 = v27;
        v35 = 2080;
        v36 = v28;
        v37 = 2114;
        v38 = v30;
        v39 = 2114;
        v40 = v31;
        _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "%{public}@ No cloud sync record found during %s transaction for record name: %{public}@, zone: %{public}@", buf, 0x2Au);
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = [v10 recordName];
      v23 = [v21 hk_error:118 format:{@"No cloud sync record found during protected transaction for record name: %@", v22}];
      v18 = v23 == 0;
      if (v23)
      {
        if (a6)
        {
          v24 = v23;
          *a6 = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else if (a6)
  {
    v19 = v15;
    v18 = 0;
    *a6 = v16;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)recordForRecordID:(id)a3 class:(Class)a4 error:(id *)a5
{
  v9 = a3;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"HDCloudSyncCachedZone.m" lineNumber:437 description:@"recordForRecordID must be called with the subclass of HDCloudSyncRecord"];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__168;
  v41 = __Block_byref_object_dispose__168;
  v42 = 0;
  v10 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v12 = accessibilityAssertion;
  v13 = [v10 contextWithAccessibilityAssertion:v12];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke;
  aBlock[3] = &unk_27862A5E0;
  aBlock[4] = self;
  v36 = a4;
  v14 = v9;
  v34 = v14;
  v35 = &v37;
  v15 = _Block_copy(aBlock);
  v16 = [(HDCloudSyncCachedZone *)self repository];
  v17 = [v16 profile];
  v18 = [v17 database];
  v32 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke_344;
  v30[3] = &unk_27861A528;
  v31 = v15;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke_2_345;
  v28[3] = &unk_278618968;
  v19 = v31;
  v29 = v19;
  v20 = [v18 performTransactionWithContext:v13 error:&v32 block:v30 inaccessibilityHandler:v28];
  v21 = v32;

  if (v20)
  {
    v22 = v38[5];
  }

  else
  {
    v23 = v21;
    v24 = v23;
    if (v23)
    {
      if (a5)
      {
        v25 = v23;
        *a5 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v22 = 0;
  }

  _Block_object_dispose(&v37, 8);

  return v22;
}

BOOL __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = [*(a1 + 32) zoneIdentifier];
  v18 = [v24 containerIdentifier];
  v23 = [*(a1 + 32) zoneIdentifier];
  v17 = [v23 scope];
  v22 = [*(a1 + 32) zoneIdentifier];
  v21 = [v22 zoneIdentifier];
  v16 = [v21 zoneName];
  v20 = [*(a1 + 32) zoneIdentifier];
  v19 = [v20 zoneIdentifier];
  v6 = [v19 ownerName];
  v7 = [*(a1 + 56) recordType];
  v8 = [*(a1 + 40) recordName];
  v9 = [*(a1 + 32) repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke_2;
  v25[3] = &unk_27862A5B8;
  v12 = *(a1 + 32);
  v27 = *(a1 + 48);
  v25[4] = v12;
  v26 = v5;
  v13 = v5;
  v14 = [HDCachedCKRecordEntity enumerateRecordIDAndDataWithContainerIdentifier:v18 databaseScope:v17 zoneName:v16 ownerName:v6 recordType:v7 recordName:v8 epoch:0 profile:v11 error:a3 enumerationHandler:v25];

  return v14;
}

BOOL __55__HDCloudSyncCachedZone_recordForRecordID_class_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v34 = 0;
  v14 = [(HDCloudSyncCachedZone *)v12 _recordForEntity:a2 class:v11 unprotectedData:a4 transaction:v13 error:&v34];
  v15 = v34;
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v14;

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v15 == 0;
  }

  if (v19)
  {
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v29 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v30 = "protected";
        }

        else
        {
          v30 = "unprotected";
        }

        v31 = v22;
        v32 = [v10 recordName];
        v33 = [*(a1 + 32) zoneIdentifier];
        *buf = 138544130;
        v36 = v29;
        v37 = 2080;
        v38 = v30;
        v39 = 2114;
        v40 = v32;
        v41 = 2114;
        v42 = v33;
        _os_log_fault_impl(&dword_228986000, v31, OS_LOG_TYPE_FAULT, "%{public}@ No cloud sync record found during %s transaction for record name: %{public}@, zone: %{public}@", buf, 0x2Au);
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = [v10 recordName];
      v25 = [v23 hk_error:118 format:{@"No cloud sync record found during transaction for record name: %@", v24}];
      v20 = v25 == 0;
      if (v25)
      {
        if (a6)
        {
          v26 = v25;
          *a6 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else if (a6)
  {
    v21 = v15;
    v20 = 0;
    *a6 = v15;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)cloudSyncRecordForCKRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = HDCloudSyncRecordClassForRecord(v6, a4);
  if (!v7)
  {
    v23 = 0;
    goto LABEL_38;
  }

  if (!self)
  {
    goto LABEL_19;
  }

  v35 = 0;
  v8 = [v7 recordWithCKRecord:v6 error:&v35];
  v9 = v35;
  v10 = v9;
  if (!v8)
  {
    v24 = [MEMORY[0x277CCA9B8] hk_error:709 description:@"Record initialization failed." underlyingError:v9];
    if (v24)
    {
      if (a4)
      {
        v25 = v24;
        *a4 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_19:
    v11 = 0;
LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = v8;
  v12 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  if (![v12 type])
  {

    goto LABEL_15;
  }

  v13 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v14 = [v13 type];

  if (v14 == 3)
  {
LABEL_15:
    v26 = MEMORY[0x277CCA9B8];
    v22 = [v11 storeIdentifier];
    [v26 hk_assignError:a4 code:719 format:{@"%@: Unexpected store record %@ in master zone.", self, v22, v34}];
    goto LABEL_16;
  }

  v15 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  if ([v15 type] == 1)
  {
    v16 = [v11 storeIdentifier];
    v17 = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier zoneIdentifier];
    v18 = [v17 hd_storeIdentifier];
    v19 = [v16 isEqual:v18];

    if ((v19 & 1) == 0)
    {
      v20 = MEMORY[0x277CCA9B8];
      zoneIdentifier = self->_zoneIdentifier;
      v22 = [v11 storeIdentifier];
      [v20 hk_assignError:a4 code:719 format:{@"%@: Store record for zone %@ has unexpected store identifier %@", self, zoneIdentifier, v22}];
LABEL_16:

LABEL_35:
      goto LABEL_36;
    }
  }

  else
  {
  }

LABEL_22:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v11 = v8;
  v27 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  if (![v27 type])
  {

    goto LABEL_32;
  }

  v28 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v29 = [v28 type];

  if (v29 == 3)
  {
LABEL_32:
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:719 format:{@"%@: Unexpected sequence record %@ in master zone.", self, v11}];
    goto LABEL_35;
  }

LABEL_26:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v30 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
    if ([v30 type])
    {
      v31 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
      v32 = [v31 type];

      if (v32 != 3)
      {

        goto LABEL_30;
      }
    }

    else
    {
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:719 format:{@"%@: Unexpected change record %@ in master zone.", self, v11}];
    goto LABEL_35;
  }

LABEL_30:
  v11 = v8;
  v23 = v11;
LABEL_37:

LABEL_38:

  return v23;
}

- (BOOL)addRecord:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 hd_isCKShare])
  {
    v51 = a4;
    if (self)
    {
      v7 = v6;
      v47 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
      v41 = [v47 containerIdentifier];
      v46 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
      v40 = [v46 scope];
      v45 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
      v44 = [v45 zoneIdentifier];
      v8 = [v44 zoneName];
      v43 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
      v42 = [v43 zoneIdentifier];
      v9 = [v42 ownerName];
      v10 = [v7 hd_systemData];
      [v7 recordType];
      v11 = v49 = v6;
      v12 = [v7 recordID];

      v13 = [v12 recordName];
      v14 = [(HDCloudSyncCachedZone *)self repository];
      v15 = [v14 profile];
      v16 = [v15 legacyRepositoryProfile];
      v52 = [HDCachedCKRecordEntity insertOrUpdateWithContainerIdentifier:v41 databaseScope:v40 zoneName:v8 ownerName:v9 recordData:v10 recordType:v11 recordName:v13 profile:v16 error:v51];

      v6 = v49;
      goto LABEL_20;
    }

LABEL_9:
    v52 = 0;
    goto LABEL_20;
  }

  v17 = HDCloudSyncRecordClassForRecord(v6, a4);
  if (!v17)
  {
    goto LABEL_9;
  }

  if ([v17 hasFutureSchema:v6])
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v62 = self;
      v63 = 2114;
      v64 = v6;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Record: %{public}@ is from the future", buf, 0x16u);
    }

    v52 = 1;
  }

  else
  {
    v19 = [(HDCloudSyncCachedZone *)self cloudSyncRecordForCKRecord:v6 error:a4];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 serialize];
      v22 = v21;
      if (!self)
      {
        goto LABEL_15;
      }

      v23 = MEMORY[0x277CCAAB0];
      v24 = v21;
      v25 = [[v23 alloc] initRequiringSecureCoding:1];
      v26 = [v24 systemData];
      [v25 encodeObject:v26 forKey:@"CloudSyncCacheSystemFieldsKey"];

      v27 = [v24 unprotectedDBData];

      [v25 encodeObject:v27 forKey:@"CloudSyncCacheUnprotectedDataKey"];
      [v25 finishEncoding];
      v28 = [v25 encodedData];

      if (v28)
      {
        v29 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
        v48 = [v29 contextWithAccessibilityAssertion:self->_accessibilityAssertion];

        [(HDCloudSyncCachedZone *)self repository];
        v30 = v50 = v6;
        [v30 profile];
        v31 = v22;
        v33 = v32 = a4;
        v34 = [v33 database];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __41__HDCloudSyncCachedZone_addRecord_error___block_invoke;
        v57[3] = &unk_27861B120;
        v57[4] = self;
        v58 = v28;
        v59 = v20;
        v60 = v24;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __41__HDCloudSyncCachedZone_addRecord_error___block_invoke_2;
        v53[3] = &unk_27861B148;
        v53[4] = self;
        v35 = v58;
        v54 = v35;
        v55 = v59;
        v56 = v60;
        v36 = v32;
        v22 = v31;
        v52 = [v34 performTransactionWithContext:v48 error:v36 block:v57 inaccessibilityHandler:v53];

        v6 = v50;
      }

      else
      {
LABEL_15:
        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v62 = self;
          v63 = 2114;
          v64 = v20;
          _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Unable to cache cloud sync record '%{public}@' because no serialized data was generated.", buf, 0x16u);
        }

        v35 = 0;
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }
  }

LABEL_20:

  v38 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t __41__HDCloudSyncCachedZone_addRecord_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = [*(a1 + 32) zoneIdentifier];
  v28 = [v40 containerIdentifier];
  v38 = [*(a1 + 32) zoneIdentifier];
  v27 = [v38 scope];
  v36 = [*(a1 + 32) zoneIdentifier];
  v34 = [v36 zoneIdentifier];
  v25 = [v34 zoneName];
  v32 = [*(a1 + 32) zoneIdentifier];
  v30 = [v32 zoneIdentifier];
  v5 = [v30 ownerName];
  v24 = *(a1 + 40);
  v26 = [*(a1 + 48) record];
  v6 = [v26 recordType];
  v7 = [*(a1 + 48) recordID];
  v8 = [v7 recordName];
  v9 = [*(a1 + 32) repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v23 = a3;
  LODWORD(v27) = [HDCachedCKRecordEntity insertOrUpdateWithContainerIdentifier:v28 databaseScope:v27 zoneName:v25 ownerName:v5 recordData:v24 recordType:v6 recordName:v8 profile:v11 error:a3];

  if (!v27)
  {
    return 0;
  }

  v12 = [*(a1 + 56) protectedDBData];

  if (!v12)
  {
    return 1;
  }

  v41 = [*(a1 + 32) zoneIdentifier];
  v31 = [v41 containerIdentifier];
  v39 = [*(a1 + 32) zoneIdentifier];
  v29 = [v39 scope];
  v37 = [*(a1 + 32) zoneIdentifier];
  v35 = [v37 zoneIdentifier];
  v13 = [v35 zoneName];
  v33 = [*(a1 + 32) zoneIdentifier];
  v14 = [v33 zoneIdentifier];
  v15 = [v14 ownerName];
  v16 = [*(a1 + 56) protectedDBData];
  v17 = [*(a1 + 48) recordID];
  v18 = [v17 recordName];
  v19 = [*(a1 + 32) repository];
  v20 = [v19 profile];
  v21 = [v20 legacyRepositoryProfile];
  LODWORD(v29) = [HDCachedSecureCKRecordEntity insertOrUpdateWithContainerIdentifier:v31 databaseScope:v29 zoneName:v13 ownerName:v15 recordData:v16 recordName:v18 profile:v21 error:v23];

  return v29;
}

uint64_t __41__HDCloudSyncCachedZone_addRecord_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = [*(a1 + 32) zoneIdentifier];
  v28 = [v40 containerIdentifier];
  v38 = [*(a1 + 32) zoneIdentifier];
  v27 = [v38 scope];
  v36 = [*(a1 + 32) zoneIdentifier];
  v34 = [v36 zoneIdentifier];
  v25 = [v34 zoneName];
  v32 = [*(a1 + 32) zoneIdentifier];
  v30 = [v32 zoneIdentifier];
  v5 = [v30 ownerName];
  v24 = *(a1 + 40);
  v26 = [*(a1 + 48) record];
  v6 = [v26 recordType];
  v7 = [*(a1 + 48) recordID];
  v8 = [v7 recordName];
  v9 = [*(a1 + 32) repository];
  v10 = [v9 profile];
  v11 = [v10 legacyRepositoryProfile];
  v23 = a3;
  LODWORD(v27) = [HDCachedCKRecordEntity insertOrUpdateWithContainerIdentifier:v28 databaseScope:v27 zoneName:v25 ownerName:v5 recordData:v24 recordType:v6 recordName:v8 profile:v11 error:a3];

  if (!v27)
  {
    return 0;
  }

  v12 = [*(a1 + 56) protectedDBData];

  if (!v12)
  {
    return 1;
  }

  v41 = [*(a1 + 32) zoneIdentifier];
  v31 = [v41 containerIdentifier];
  v39 = [*(a1 + 32) zoneIdentifier];
  v29 = [v39 scope];
  v37 = [*(a1 + 32) zoneIdentifier];
  v35 = [v37 zoneIdentifier];
  v13 = [v35 zoneName];
  v33 = [*(a1 + 32) zoneIdentifier];
  v14 = [v33 zoneIdentifier];
  v15 = [v14 ownerName];
  v16 = [*(a1 + 56) protectedDBData];
  v17 = [*(a1 + 48) recordID];
  v18 = [v17 recordName];
  v19 = [*(a1 + 32) repository];
  v20 = [v19 profile];
  v21 = [v20 legacyRepositoryProfile];
  LODWORD(v29) = [HDCachedSecureCKRecordEntity insertOrUpdateWithContainerIdentifier:v31 databaseScope:v29 zoneName:v13 ownerName:v15 recordData:v16 recordName:v18 profile:v21 error:v23];

  return v29;
}

- (int64_t)containsRecordsWithError:(id *)a3
{
  v19 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v4 = [v19 containerIdentifier];
  v18 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v5 = [v18 scope];
  v17 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v6 = [v17 zoneIdentifier];
  v7 = [v6 zoneName];
  v8 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v9 = [v8 zoneIdentifier];
  v10 = [v9 ownerName];
  v11 = [(HDCloudSyncCachedZone *)self repository];
  v12 = [v11 profile];
  v13 = [v12 legacyRepositoryProfile];
  v14 = [HDCachedCKRecordEntity containsRecordsWithContainerIdentifier:v4 databaseScope:v5 zoneName:v7 ownerName:v10 profile:v13 error:a3];

  return v14;
}

- (int64_t)containsRecordWithRecordID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v22 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v17 = [v22 containerIdentifier];
  v21 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v18 = [v21 scope];
  v20 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v6 = [v20 zoneIdentifier];
  v7 = [v6 zoneName];
  v8 = [(HDCloudSyncCachedZone *)self zoneIdentifier];
  v9 = [v8 zoneIdentifier];
  v10 = [v9 ownerName];
  v11 = [v5 recordName];

  v12 = [(HDCloudSyncCachedZone *)self repository];
  v13 = [v12 profile];
  v14 = [v13 legacyRepositoryProfile];
  v15 = [HDCachedCKRecordEntity containsRecordWithContainerIdentifier:v17 databaseScope:v18 zoneName:v7 ownerName:v10 recordName:v11 profile:v14 error:a4];

  return v15;
}

- (BOOL)deleteRecordID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v8 = v7;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v10 = [v7 contextWithAccessibilityAssertion:accessibilityAssertion];

  v11 = [(HDCloudSyncCachedZone *)self repository];
  v12 = [v11 profile];
  v13 = [v12 database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__HDCloudSyncCachedZone_deleteRecordID_error___block_invoke;
  v19[3] = &unk_278613218;
  v19[4] = self;
  v20 = v6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__HDCloudSyncCachedZone_deleteRecordID_error___block_invoke_2;
  v17[3] = &unk_278616F88;
  v17[4] = self;
  v18 = v20;
  v14 = v20;
  v15 = [v13 performTransactionWithContext:v10 error:a4 block:v19 inaccessibilityHandler:v17];

  return v15;
}

BOOL __46__HDCloudSyncCachedZone_deleteRecordID_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = [*(a1 + 32) zoneIdentifier];
  v26 = [v35 containerIdentifier];
  v33 = [*(a1 + 32) zoneIdentifier];
  v25 = [v33 scope];
  v31 = [*(a1 + 32) zoneIdentifier];
  v30 = [v31 zoneIdentifier];
  v5 = [v30 zoneName];
  v6 = [*(a1 + 32) zoneIdentifier];
  v7 = [v6 zoneIdentifier];
  v8 = [v7 ownerName];
  v9 = [*(a1 + 40) recordName];
  v10 = [*(a1 + 32) repository];
  v11 = [v10 profile];
  v12 = [v11 legacyRepositoryProfile];
  v24 = a3;
  v28 = [HDCachedSecureCKRecordEntity deleteRecordWithContainerIdentifier:v26 databaseScope:v25 zoneName:v5 ownerName:v8 recordName:v9 profile:v12 error:a3];

  if (!v28)
  {
    return 0;
  }

  v36 = [*(a1 + 32) zoneIdentifier];
  v27 = [v36 containerIdentifier];
  v34 = [*(a1 + 32) zoneIdentifier];
  v29 = [v34 scope];
  v32 = [*(a1 + 32) zoneIdentifier];
  v13 = [v32 zoneIdentifier];
  v14 = [v13 zoneName];
  v15 = [*(a1 + 32) zoneIdentifier];
  v16 = [v15 zoneIdentifier];
  v17 = [v16 ownerName];
  v18 = [*(a1 + 40) recordName];
  v19 = [*(a1 + 32) repository];
  v20 = [v19 profile];
  v21 = [v20 legacyRepositoryProfile];
  v22 = [HDCachedCKRecordEntity deleteRecordWithContainerIdentifier:v27 databaseScope:v29 zoneName:v14 ownerName:v17 recordName:v18 profile:v21 error:v24];

  return v22;
}

BOOL __46__HDCloudSyncCachedZone_deleteRecordID_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = [*(a1 + 32) zoneIdentifier];
  v26 = [v35 containerIdentifier];
  v33 = [*(a1 + 32) zoneIdentifier];
  v25 = [v33 scope];
  v31 = [*(a1 + 32) zoneIdentifier];
  v30 = [v31 zoneIdentifier];
  v5 = [v30 zoneName];
  v6 = [*(a1 + 32) zoneIdentifier];
  v7 = [v6 zoneIdentifier];
  v8 = [v7 ownerName];
  v9 = [*(a1 + 40) recordName];
  v10 = [*(a1 + 32) repository];
  v11 = [v10 profile];
  v12 = [v11 legacyRepositoryProfile];
  v24 = a3;
  v28 = [HDCachedSecureCKRecordEntity deleteRecordWithContainerIdentifier:v26 databaseScope:v25 zoneName:v5 ownerName:v8 recordName:v9 profile:v12 error:a3];

  if (!v28)
  {
    return 0;
  }

  v36 = [*(a1 + 32) zoneIdentifier];
  v27 = [v36 containerIdentifier];
  v34 = [*(a1 + 32) zoneIdentifier];
  v29 = [v34 scope];
  v32 = [*(a1 + 32) zoneIdentifier];
  v13 = [v32 zoneIdentifier];
  v14 = [v13 zoneName];
  v15 = [*(a1 + 32) zoneIdentifier];
  v16 = [v15 zoneIdentifier];
  v17 = [v16 ownerName];
  v18 = [*(a1 + 40) recordName];
  v19 = [*(a1 + 32) repository];
  v20 = [v19 profile];
  v21 = [v20 legacyRepositoryProfile];
  v22 = [HDCachedCKRecordEntity deleteRecordWithContainerIdentifier:v27 databaseScope:v29 zoneName:v14 ownerName:v17 recordName:v18 profile:v21 error:v24];

  return v22;
}

- (HDCloudSyncSerializedRecord)_serializedRecordForUnprotectedDBData:(void *)a3 protectedDBData:(uint64_t)a4 error:
{
  v7 = a3;
  if (a1)
  {
    v8 = MEMORY[0x277CCAAC8];
    v9 = a2;
    v10 = [[v8 alloc] initForReadingFromData:v9 error:a4];

    if (v10)
    {
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CloudSyncCacheSystemFieldsKey"];
      v12 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CloudSyncCacheUnprotectedDataKey"];
      [v10 finishDecoding];
      v13 = [[HDCloudSyncSerializedRecord alloc] initWithEncodedSystemData:v11 unprotectedDBData:v12 protectedDBData:v7];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __64__HDCloudSyncCachedZone__addSequenceRecordsToStoreRecord_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v29)
  {
    v27 = *v39;
    v28 = a3;
    v26 = v4;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v36 = [*(v4 + 40) zoneIdentifier];
        v31 = [v36 containerIdentifier];
        v35 = [*(v4 + 40) zoneIdentifier];
        v30 = [v35 scope];
        v34 = [*(v4 + 40) zoneIdentifier];
        v33 = [v34 zoneIdentifier];
        v7 = [v33 zoneName];
        v32 = [*(v4 + 40) zoneIdentifier];
        v8 = [v32 zoneIdentifier];
        v9 = [v8 ownerName];
        v10 = [v6 recordName];
        v11 = [*(v4 + 40) repository];
        v12 = [v11 profile];
        v13 = [v12 legacyRepositoryProfile];
        v37 = 0;
        v14 = v7;
        v15 = [HDCachedCKRecordEntity recordDataWithContainerIdentifier:v31 databaseScope:v30 zoneName:v7 ownerName:v9 recordName:v10 profile:v13 error:&v37];
        v16 = v37;

        if (!v15 && v16)
        {
          if (v28)
          {
            v22 = v16;
            *v28 = v16;
          }

          else
          {
            _HKLogDroppedError();
          }

          goto LABEL_21;
        }

        v4 = v26;
        if (v15)
        {
          v17 = [(HDCloudSyncCachedZone *)*(v26 + 40) _serializedRecordForUnprotectedDBData:v15 protectedDBData:0 error:v28];
          if (!v17)
          {
            goto LABEL_19;
          }

          v18 = v17;
          v19 = [(HDCloudSyncRecord *)HDCloudSyncSequenceRecord initWithSerializedRecord:v17 error:v28];
          if (!v19)
          {

LABEL_19:
LABEL_21:

            v21 = 0;
            goto LABEL_22;
          }

          v20 = v19;
          [*(v26 + 48) addObject:v19];
        }
      }

      v21 = 1;
      v29 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (HDCloudSyncRepository)repository
{
  WeakRetained = objc_loadWeakRetained(&self->_repository);

  return WeakRetained;
}

@end