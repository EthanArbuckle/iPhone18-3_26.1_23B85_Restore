@interface HDCloudSyncLeaveAllSharesOperation
- (void)main;
@end

@implementation HDCloudSyncLeaveAllSharesOperation

- (void)main
{
  selfCopy = self;
  v90 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  v78 = 0;
  v5 = [cachedCloudState zonesByIdentifierWithError:&v78];
  v6 = v78;

  if (v5 || !v6)
  {
    v61 = v6;
    v62 = v5;
    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = [v5 allValues];
    v11 = [obj countByEnumeratingWithState:&v74 objects:buf count:16];
    if (!v11)
    {
LABEL_26:

      v43 = v63;
      v9 = v63;
      v10 = 0;
      v6 = v61;
      v5 = v62;
LABEL_30:

      goto LABEL_31;
    }

    v12 = v11;
    v13 = *v75;
    v64 = *v75;
    v70 = selfCopy;
LABEL_9:
    v14 = 0;
    v65 = v12;
    while (1)
    {
      v15 = v12;
      v16 = v13;
      if (*v75 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v74 + 1) + 8 * v14);
      zoneIdentifier = [v17 zoneIdentifier];
      containerIdentifier = [zoneIdentifier containerIdentifier];

      configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository = [configuration2 repository];
      v22 = [repository containerForContainerIdentifier:containerIdentifier];

      configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository2 = [configuration3 repository];
      profileIdentifier = [repository2 profileIdentifier];
      v26 = HDDatabaseForContainer(v22, profileIdentifier);

      v12 = v15;
      v13 = v16;
      if ([v26 databaseScope] != 3)
      {
        goto LABEL_24;
      }

      v67 = v26;
      v68 = v22;
      v69 = containerIdentifier;
      v27 = v17;
      zoneIdentifier2 = [v27 zoneIdentifier];
      v28ZoneIdentifier = [zoneIdentifier2 zoneIdentifier];
      v80 = 0;
      *v81 = 0;
      v30 = [v28ZoneIdentifier hd_isSharedSummaryZoneIDForUserIdentifier:v81 syncCircleIdentifier:&v80];
      v31 = *v81;
      v32 = v80;

      zoneIdentifier3 = [v27 zoneIdentifier];

      v33ZoneIdentifier = [zoneIdentifier3 zoneIdentifier];
      v79 = v32;
      v35 = [v33ZoneIdentifier hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v79];
      v36 = v79;

      configuration4 = [(HDCloudSyncOperation *)v70 configuration];
      repository3 = [configuration4 repository];
      profileType = [repository3 profileType];

      if (profileType == 2)
      {
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else if (profileType == 3 && (v35 & 1) != 0)
      {
LABEL_16:

        v73 = 0;
        v40 = [v27 zoneShareWithError:&v73];
        v41 = v73;
        v10 = v41;
        if (!v40 && v41)
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v59 = v44;
            zoneIdentifier4 = [v27 zoneIdentifier];
            *v81 = 138543874;
            *&v81[4] = v70;
            v82 = 2114;
            v83 = zoneIdentifier4;
            v84 = 2114;
            v85 = v10;
            _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v81, 0x20u);
          }

          v45 = v10;

          v9 = 0;
          v6 = v61;
          v5 = v62;
          v43 = v63;
          selfCopy = v70;
          goto LABEL_30;
        }

        containerIdentifier = v69;
        v12 = v65;
        if (v40)
        {
          recordID = [v40 recordID];
          [v63 addObject:recordID];
        }

        v13 = v64;
        goto LABEL_23;
      }

      containerIdentifier = v69;
      v13 = v64;
      v12 = v65;
LABEL_23:
      v26 = v67;
      v22 = v68;
LABEL_24:

      ++v14;
      selfCopy = v70;
      if (v12 == v14)
      {
        v12 = [obj countByEnumeratingWithState:&v74 objects:buf count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v87 = selfCopy;
    v88 = 2114;
    v89 = v6;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
  }

  v8 = v6;
  v9 = 0;
  v10 = v6;
LABEL_31:

LABEL_32:
  v46 = v10;
  v47 = v46;
  if (!v9 && v46)
  {
    v48 = selfCopy;
    v49 = 0;
    v50 = v47;
LABEL_40:
    [(HDCloudSyncOperation *)v48 finishWithSuccess:v49 error:v50];
    goto LABEL_41;
  }

  if (![v9 count])
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = selfCopy;
      _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: There do not appear to be any shared zones to remove ourselves from.", buf, 0xCu);
    }

    v48 = selfCopy;
    v49 = 1;
    v50 = 0;
    goto LABEL_40;
  }

  configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
  repository4 = [configuration5 repository];
  primaryCKContainer = [repository4 primaryCKContainer];

  v54 = [HDCloudSyncModifyRecordsOperation alloc];
  configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
  v56 = [(HDCloudSyncModifyRecordsOperation *)v54 initWithConfiguration:configuration6 container:primaryCKContainer recordsToSave:0 recordIDsToDelete:v9];

  [(HDCloudSyncModifyRecordsOperation *)v56 setTreatAnyErrorAsFatal:1];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke;
  v72[3] = &unk_278613088;
  v72[4] = selfCopy;
  [(HDCloudSyncOperation *)v56 setOnError:v72];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke_293;
  v71[3] = &unk_278613060;
  v71[4] = selfCopy;
  [(HDCloudSyncOperation *)v56 setOnSuccess:v71];
  [(HDCloudSyncOperation *)v56 start];

LABEL_41:
  v58 = *MEMORY[0x277D85DE8];
}

void __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete shares: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke_293(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted share records", &v6, 0xCu);
  }

  result = [*(a1 + 32) finishWithSuccess:1 error:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end