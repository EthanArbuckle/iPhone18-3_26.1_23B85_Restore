@interface HDCloudSyncDeleteStoresOperation
- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state storeRecordsToDelete:(id)delete;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncDeleteStoresOperation

- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state storeRecordsToDelete:(id)delete
{
  deleteCopy = delete;
  v13.receiver = self;
  v13.super_class = HDCloudSyncDeleteStoresOperation;
  v9 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  if (v9)
  {
    v10 = [deleteCopy copy];
    storeRecordsToDelete = v9->_storeRecordsToDelete;
    v9->_storeRecordsToDelete = v10;
  }

  return v9;
}

- (void)main
{
  selfCopy = self;
  v126 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_storeRecordsToDelete count])
  {
    v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = selfCopy->_taskGroup;
    selfCopy->_taskGroup = v3;

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup setDelegate:selfCopy];
    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v5 = [(NSArray *)selfCopy->_storeRecordsToDelete hk_mapToSet:&__block_literal_global_42];
    configuration = [(HDCloudSyncOperation *)selfCopy configuration];
    cachedCloudState = [configuration cachedCloudState];
    v120[0] = 0;
    v8 = [cachedCloudState zonesByIdentifierWithError:v120];
    v9 = v120[0];

    if (v8 || !v9)
    {
      if (!v8)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = selfCopy;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ No cached zones found.", buf, 0xCu);
        }
      }

      allValues = [v8 allValues];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __60__HDCloudSyncDeleteStoresOperation__individualZonesToDelete__block_invoke_297;
      v123 = &unk_278618B00;
      v124 = selfCopy;
      v125 = v5;
      v11 = [allValues hk_map:buf];
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v9];
      v11 = 0;
    }

    if ([v11 count])
    {
      [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
      v15 = [HDCloudSyncDeleteZonesOperation alloc];
      configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
      cloudState = [(HDCloudSyncOperation *)selfCopy cloudState];
      v18 = [(HDCloudSyncDeleteZonesOperation *)v15 initWithConfiguration:configuration2 cloudState:cloudState];

      [(HDCloudSyncDeleteZonesOperation *)v18 setZonesToDelete:v11];
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v11 count];
        v22 = [v11 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        *&buf[4] = selfCopy;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        *&buf[22] = 2112;
        v123 = v22;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld individual sync zones: %@", buf, 0x20u);
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__HDCloudSyncDeleteStoresOperation__deleteIndividualZoneStores__block_invoke;
      v123 = &unk_278613088;
      v124 = selfCopy;
      [(HDCloudSyncOperation *)v18 setOnError:buf];
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __63__HDCloudSyncDeleteStoresOperation__deleteIndividualZoneStores__block_invoke_2;
      v120[3] = &unk_278613060;
      v120[4] = selfCopy;
      [(HDCloudSyncOperation *)v18 setOnSuccess:v120];
      [(HDCloudSyncOperation *)v18 start];
    }

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository = [configuration3 repository];
    allCKContainers = [repository allCKContainers];

    v26 = [allCKContainers countByEnumeratingWithState:&v105 objects:v120 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v106;
      v88 = allCKContainers;
      v87 = *v106;
      v99 = selfCopy;
      do
      {
        for (i = 0; i != v27; i = v42 + 1)
        {
          if (*v106 != v28)
          {
            objc_enumerationMutation(allCKContainers);
          }

          v98 = i;
          v30 = *(*(&v105 + 1) + 8 * i);
          configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
          repository2 = [configuration4 repository];
          v33 = [repository2 cachedOwnerIdentifierForContainer:v30];
          string = [v33 string];

          v104 = string;
          if (string)
          {
            v97 = [(NSArray *)selfCopy->_storeRecordsToDelete hk_mapToSet:&__block_literal_global_313_0];
            configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
            cachedCloudState2 = [configuration5 cachedCloudState];
            v96 = v30;
            containerIdentifier = [v30 containerIdentifier];
            v119 = 0;
            v38 = [cachedCloudState2 unifiedSyncZoneForContainerID:containerIdentifier error:&v119];
            v39 = v119;

            v40 = v38;
            v95 = v39;
            if (v38 || !v39)
            {
              v43 = v97;
              v42 = v98;
              if (v40)
              {
                v45 = objc_opt_class();
                v118 = 0;
                v93 = v40;
                v46 = [v40 recordsForClass:v45 error:&v118];
                v47 = v118;
                v94 = v46;
                if (v46 || !v47)
                {
                  v91 = v47;
                  if ([v46 count] >= 2)
                  {
                    _HKInitializeLogging();
                    v51 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                    {
                      v81 = v51;
                      zoneIdentifier = [v40 zoneIdentifier];
                      *buf = 138543618;
                      *&buf[4] = selfCopy;
                      *&buf[12] = 2114;
                      *&buf[14] = zoneIdentifier;
                      _os_log_fault_impl(&dword_228986000, v81, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", buf, 0x16u);
                    }
                  }

                  firstObject = [v94 firstObject];
                  v52 = objc_opt_class();
                  v117 = 0;
                  v53 = [v93 recordsForClass:v52 error:&v117];
                  v54 = v117;
                  v92 = v53;
                  if (v53 || !v54)
                  {
                    v90 = v54;
                    v57 = [v53 hk_mapToSet:&__block_literal_global_318];
                    if ([v57 intersectsSet:v97])
                    {
                      v89 = v27;
                      v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v113 = 0u;
                      v114 = 0u;
                      v115 = 0u;
                      v116 = 0u;
                      obj = selfCopy->_storeRecordsToDelete;
                      v59 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:buf count:16];
                      if (v59)
                      {
                        v60 = v59;
                        v61 = *v114;
                        v100 = *v114;
                        v101 = v57;
                        do
                        {
                          for (j = 0; j != v60; ++j)
                          {
                            if (*v114 != v61)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v63 = *(*(&v113 + 1) + 8 * j);
                            storeIdentifier = [v63 storeIdentifier];
                            if ([v57 containsObject:storeIdentifier])
                            {
                              configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
                              repository3 = [configuration6 repository];
                              syncIdentityManager = [repository3 syncIdentityManager];
                              [syncIdentityManager currentSyncIdentity];
                              v69 = v68 = v58;
                              identity = [v69 identity];
                              [firstObject removeStoreIdentifier:storeIdentifier ownerIdentifier:v104 syncIdentity:identity];

                              v58 = v68;
                              selfCopy = v99;

                              v57 = v101;
                              recordID = [v63 recordID];
                              [v68 addObject:recordID];

                              v61 = v100;
                            }
                          }

                          v60 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:buf count:16];
                        }

                        while (v60);
                      }

                      [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
                      v72 = [HDCloudSyncModifyRecordsOperation alloc];
                      configuration7 = [(HDCloudSyncOperation *)selfCopy configuration];
                      if (firstObject)
                      {
                        record = [firstObject record];
                        v121 = record;
                        [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
                        v76 = v75 = v58;
                        v77 = v96;
                        v78 = [(HDCloudSyncModifyRecordsOperation *)v72 initWithConfiguration:configuration7 container:v96 recordsToSave:v76 recordIDsToDelete:v75];

                        v58 = v75;
                      }

                      else
                      {
                        v77 = v96;
                        v78 = [(HDCloudSyncModifyRecordsOperation *)v72 initWithConfiguration:configuration7 container:v96 recordsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v58];
                      }

                      v27 = v89;
                      v28 = v87;

                      v110[0] = MEMORY[0x277D85DD0];
                      v110[1] = 3221225472;
                      v110[2] = __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_2;
                      v110[3] = &unk_278616348;
                      v111 = v77;
                      v112 = selfCopy;
                      [(HDCloudSyncOperation *)v78 setOnError:v110];
                      v109[0] = MEMORY[0x277D85DD0];
                      v109[1] = 3221225472;
                      v109[2] = __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_322;
                      v109[3] = &unk_278613060;
                      v109[4] = selfCopy;
                      [(HDCloudSyncOperation *)v78 setOnSuccess:v109];
                      [(HDCloudSyncOperation *)v78 start];

                      allCKContainers = v88;
                      v43 = v97;
                      v42 = v98;
                    }

                    v55 = v90;
                  }

                  else
                  {
                    v55 = v54;
                    _HKInitializeLogging();
                    v56 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      v83 = v56;
                      zoneIdentifier2 = [v93 zoneIdentifier];
                      *buf = 138543874;
                      *&buf[4] = selfCopy;
                      *&buf[12] = 2114;
                      *&buf[14] = zoneIdentifier2;
                      *&buf[22] = 2114;
                      v123 = v55;
                      _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);

                      v43 = v97;
                      v42 = v98;
                    }

                    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v55];
                  }

                  v50 = v91;
                }

                else
                {
                  v48 = v47;
                  _HKInitializeLogging();
                  v49 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v79 = v49;
                    zoneIdentifier3 = [v40 zoneIdentifier];
                    *buf = 138543874;
                    *&buf[4] = selfCopy;
                    *&buf[12] = 2114;
                    *&buf[14] = zoneIdentifier3;
                    *&buf[22] = 2114;
                    v123 = v48;
                    _os_log_error_impl(&dword_228986000, v79, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
                  }

                  v50 = v48;
                  [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v48];
                }

                v40 = v93;
              }
            }

            else
            {
              _HKInitializeLogging();
              v41 = *MEMORY[0x277CCC328];
              v42 = v98;
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v39;
                _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
              }

              [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v39];
              v43 = v97;
            }

            v44 = v96;
          }

          else
          {
            v43 = [MEMORY[0x277CCA9B8] hk_error:3 class:objc_opt_class() selector:sel__deleteUnifiedZoneStoresInContainer_ format:{@"No cached owner identifier for %@", v30}];
            [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v43];
            v44 = v30;
            v42 = v98;
          }
        }

        v27 = [allCKContainers countByEnumeratingWithState:&v105 objects:v120 count:16];
      }

      while (v27);
    }

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
    v85 = selfCopy->_taskGroup;
    v86 = *MEMORY[0x277D85DE8];

    [(HDSynchronousTaskGroup *)v85 finishTask];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:1 error:0];
  }
}

id __60__HDCloudSyncDeleteStoresOperation__individualZonesToDelete__block_invoke_297(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 zoneType] == 1)
  {
    v22 = 0;
    v4 = [v3 recordsForClass:objc_opt_class() error:&v22];
    v5 = v22;
    v6 = v5;
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      if ([v4 count] >= 2)
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v19 = *(a1 + 32);
          v20 = v8;
          v21 = [v3 zoneIdentifier];
          *buf = 138543618;
          v24 = v19;
          v25 = 2114;
          v26 = v21;
          _os_log_fault_impl(&dword_228986000, v20, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple store records for %{public}@. This is unexpected.", buf, 0x16u);
        }
      }

      v9 = [v4 firstObject];
      v10 = [v9 storeIdentifier];
      if (v10 && [*(a1 + 40) containsObject:v10])
      {
        v11 = [v3 zoneIdentifier];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = v12;
        v18 = [v3 zoneIdentifier];
        *buf = 138543874;
        v24 = v16;
        v25 = 2114;
        v26 = v18;
        v27 = 2114;
        v28 = v6;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

      [*(a1 + 32) finishWithSuccess:0 error:v6];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

void __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = [v7 containerIdentifier];
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to delete store records and update registry in container %{public}@: %{public}@", &v10, 0x16u);
  }

  [*(*(a1 + 40) + 104) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  if (success)
  {

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0, errors];
  }

  else
  {
    firstObject = [errors firstObject];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:firstObject];
  }
}

@end