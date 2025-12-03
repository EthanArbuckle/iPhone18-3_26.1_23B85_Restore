@interface HDCloudSyncMarkAllOwnersDisabledOperation
- (void)main;
@end

@implementation HDCloudSyncMarkAllOwnersDisabledOperation

- (void)main
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  v80 = 0;
  v7 = [cachedCloudState zonesByIdentifierWithError:&v80];
  v8 = v80;

  if (!v7 && v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers, %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v11 = 0;
    v12 = v8;
LABEL_47:
    [(HDCloudSyncOperation *)selfCopy2 finishWithSuccess:v11 error:v12];
    goto LABEL_48;
  }

  if (!v7)
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_debug_impl(&dword_228986000, v55, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found.", buf, 0xCu);
    }

    selfCopy2 = self;
    v11 = 1;
    v12 = 0;
    goto LABEL_47;
  }

  v59 = v8;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [v7 allValues];
  v14 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  v60 = v7;
  if (v14)
  {
    v15 = v14;
    v63 = *v77;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v76 + 1) + 8 * i);
        v18 = objc_opt_class();
        v75 = 0;
        v19 = [v17 recordsForClass:v18 error:&v75];
        v20 = v75;
        v21 = v20;
        if (v19)
        {
          v22 = 1;
        }

        else
        {
          v22 = v20 == 0;
        }

        if (!v22)
        {
          _HKInitializeLogging();
          v53 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v57 = v53;
            zoneIdentifier = [v17 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier;
            *&buf[22] = 2114;
            v85 = v21;
            _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v21];

          goto LABEL_43;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v23 = v19;
        v24 = [v23 countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v72;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v72 != v26)
              {
                objc_enumerationMutation(v23);
              }

              ownerIdentifier = [*(*(&v71 + 1) + 8 * j) ownerIdentifier];
              [v13 addObject:ownerIdentifier];
            }

            v25 = [v23 countByEnumeratingWithState:&v71 objects:v82 count:16];
          }

          while (v25);
        }

        v7 = v60;
      }

      v15 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  allCKContainers = [repository allCKContainers];

  obja = allCKContainers;
  v32 = [allCKContainers countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v32)
  {
    v33 = v32;
    v64 = *v68;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v68 != v64)
        {
          objc_enumerationMutation(obja);
        }

        v35 = *(*(&v67 + 1) + 8 * k);
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration3 repository];
        profileIdentifier = [repository2 profileIdentifier];
        v39 = HDDatabaseForContainer(v35, profileIdentifier);

        if ([v39 databaseScope] == 2)
        {
          allValues = [v7 allValues];
          v41 = v35;
          v42 = v13;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDCloudSyncMarkAllOwnersDisabledOperation__updatedRecordsForContainer_zones_disabledOwnerIdentifiers___block_invoke;
          v85 = &unk_27862ED60;
          v43 = v41;
          *&v86 = v43;
          *(&v86 + 1) = self;
          v44 = v42;
          v87 = v44;
          v45 = [allValues hk_map:buf];

          if ([v45 count])
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
            _HKInitializeLogging();
            v46 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
              v48 = [v45 count];
              containerIdentifier = [v43 containerIdentifier];
              *buf = 138544130;
              *&buf[4] = self;
              *&buf[12] = 2048;
              *&buf[14] = v48;
              *&buf[22] = 2114;
              v85 = containerIdentifier;
              LOWORD(v86) = 2114;
              *(&v86 + 2) = v45;
              _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld records in %{public}@: %{public}@", buf, 0x2Au);
            }

            v50 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration4 = [(HDCloudSyncOperation *)self configuration];
            v52 = [(HDCloudSyncModifyRecordsOperation *)v50 initWithConfiguration:configuration4 container:v43 recordsToSave:v45 recordIDsToDelete:0];

            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke;
            v66[3] = &unk_278616348;
            v66[4] = self;
            v66[5] = v43;
            [(HDCloudSyncOperation *)v52 setOnError:v66];
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke_296;
            v65[3] = &unk_278614BA8;
            v65[4] = self;
            v65[5] = v43;
            [(HDCloudSyncOperation *)v52 setOnSuccess:v65];
            [(HDCloudSyncOperation *)v52 start];

            v7 = v60;
          }
        }
      }

      v33 = [obja countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v33);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
LABEL_43:
  v8 = v59;

LABEL_48:
  v56 = *MEMORY[0x277D85DE8];
}

void __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v7 containerIdentifier];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed updating records in %{public}@: %{public}@", &v11, 0x20u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke_296(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 containerIdentifier];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished saving updated records in %{public}@", &v9, 0x16u);
  }

  result = [*(*(a1 + 32) + 104) finishTask];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id __104__HDCloudSyncMarkAllOwnersDisabledOperation__updatedRecordsForContainer_zones_disabledOwnerIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [v4 containerIdentifier];
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v3 zoneIdentifier];
  v9 = [v8 type];

  if (v9 == 2)
  {
    v20 = *(a1 + 32);
    v11 = *(a1 + 40);
    v21 = *(a1 + 48);
    v13 = v3;
    v22 = v20;
    v23 = v21;
    if (v11)
    {
      v61 = 0;
      v24 = [v13 recordsForClass:objc_opt_class() error:&v61];
      v25 = v61;
      v26 = v25;
      if (v24 || !v25)
      {
        if ([v24 count] >= 2)
        {
          _HKInitializeLogging();
          v33 = *MEMORY[0x277CCC2E0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
          {
            v54 = v33;
            [v13 zoneIdentifier];
            v56 = v55 = v23;
            *buf = 138543874;
            v63 = v11;
            v64 = 2114;
            v65 = v22;
            v66 = 2114;
            v67 = v56;
            _os_log_fault_impl(&dword_228986000, v54, OS_LOG_TYPE_FAULT, "%{public}@ Fetched multiple Registry records from the cached container %{public}@, zone %{public}@. This is unexpected", buf, 0x20u);

            v23 = v55;
          }
        }

        v34 = [v24 firstObject];
        if (!v34)
        {
          v58 = [HDCloudSyncRegistryRecord alloc];
          v59 = [v13 zoneIdentifier];
          [v59 zoneIdentifier];
          v57 = v60 = v22;
          v35 = [v11 configuration];
          v36 = [v35 repository];
          [v36 profile];
          v38 = v37 = v23;
          v39 = [v38 profileIdentifier];
          v34 = [(HDCloudSyncRegistryRecord *)v58 initInZone:v57 ownerProfileIdentifier:v39];

          v23 = v37;
          v22 = v60;
        }

        v40 = [v34 disabledOwnerIdentifiers];
        v41 = [v40 setByAddingObjectsFromSet:v23];
        [v34 setDisabledOwnerIdentifiers:v41];

        v11 = [v34 record];
      }

      else
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v49 = v27;
          [v13 zoneIdentifier];
          v51 = v50 = v23;
          *buf = 138543874;
          v63 = v11;
          v64 = 2114;
          v65 = v51;
          v66 = 2114;
          v67 = v26;
          _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get Registry records for %{public}@, %{public}@", buf, 0x20u);

          v23 = v50;
        }

        [v11 finishWithSuccess:0 error:v26];
        v11 = 0;
      }
    }

    goto LABEL_34;
  }

  if (v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_35;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = v10;
  v15 = v12;
  if (v11)
  {
    v61 = 0;
    v16 = [v13 recordsForClass:objc_opt_class() error:&v61];
    v17 = v61;
    v18 = v17;
    if (v16 || !v17)
    {
      if ([v16 count] >= 2)
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
        {
          v52 = v28;
          v53 = [v13 zoneIdentifier];
          *buf = 138543874;
          v63 = v11;
          v64 = 2114;
          v65 = v14;
          v66 = 2114;
          v67 = v53;
          _os_log_fault_impl(&dword_228986000, v52, OS_LOG_TYPE_FAULT, "%{public}@ Fetched multiple Master records from the cached container %{public}@, zone %{public}@. This is unexpected", buf, 0x20u);
        }
      }

      v29 = [v16 firstObject];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 disabledOwnerIdentifiers];
        v32 = [v31 setByAddingObjectsFromSet:v15];
        [v30 setDisabledOwnerIdentifiers:v32];
      }

      else
      {
        v42 = [HDCloudSyncMasterRecord alloc];
        v43 = [v13 zoneIdentifier];
        v44 = [v43 zoneIdentifier];
        v30 = [(HDCloudSyncMasterRecord *)v42 initInZone:v44 disabledOwnerIdentifiers:v15];
      }

      v11 = [v30 record];
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v47 = v19;
        v48 = [v13 zoneIdentifier];
        *buf = 138543874;
        v63 = v11;
        v64 = 2114;
        v65 = v48;
        v66 = 2114;
        v67 = v18;
        _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get Master records for %{public}@, %{public}@", buf, 0x20u);
      }

      [v11 finishWithSuccess:0 error:v18];
      v11 = 0;
    }
  }

LABEL_34:
LABEL_35:

  v45 = *MEMORY[0x277D85DE8];

  return v11;
}

@end