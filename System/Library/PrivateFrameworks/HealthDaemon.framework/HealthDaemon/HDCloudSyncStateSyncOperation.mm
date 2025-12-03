@interface HDCloudSyncStateSyncOperation
- (HDCloudSyncStateSyncOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncStateSyncOperation)initWithConfiguration:(id)configuration containers:(id)containers;
- (id)stateDataForStateSyncZone:(void *)zone;
- (void)_notifyStateEntities:(void *)entities stateSyncZones:;
- (void)main;
@end

@implementation HDCloudSyncStateSyncOperation

- (HDCloudSyncStateSyncOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncStateSyncOperation)initWithConfiguration:(id)configuration containers:(id)containers
{
  containersCopy = containers;
  v12.receiver = self;
  v12.super_class = HDCloudSyncStateSyncOperation;
  v8 = [(HDCloudSyncOperation *)&v12 initWithConfiguration:configuration cloudState:0];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recordsToBeSaved = v8->_recordsToBeSaved;
    v8->_recordsToBeSaved = v9;

    objc_storeStrong(&v8->_containers, containers);
  }

  return v8;
}

- (void)main
{
  v68 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containers = self->_containers;
  v46 = 0;
  v6 = [cachedCloudState zonesByIdentifierForContainers:containers error:&v46 filter:&__block_literal_global_111];
  v7 = v46;

  if (v6)
  {
    v38 = v7;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __37__HDCloudSyncStateSyncOperation_main__block_invoke_301;
    v44[3] = &unk_278616020;
    selfCopy = self;
    v44[4] = self;
    v39 = v6;
    v45 = v6;
    v8 = v45;
    v9 = v44;
    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __69__HDCloudSyncStateSyncOperation__performStateSyncInZones_completion___block_invoke;
    v58[3] = &unk_2786152A8;
    v37 = v9;
    v59 = v37;
    [v10 setDidFinish:v58];
    [v10 beginTask];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = v8;
    v43 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v43)
    {
      v12 = *v55;
      v40 = v11;
      do
      {
        v13 = 0;
        do
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v54 + 1) + 8 * v13);
          [v10 beginTask];
          v15 = [v11 objectForKeyedSubscript:v14];
          zoneIdentifier = [v14 zoneIdentifier];
          v52 = 0;
          v53 = 0;
          v17 = [zoneIdentifier hd_isStateSyncZoneIDForSyncCircleIdentifier:&v53 domain:&v52];
          v18 = v53;
          v19 = v52;

          if (v17)
          {
            v20 = v19 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            v21 = MEMORY[0x277CCA9B8];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to extract domain and sync circle identifier from %@.", v15];
            stateSyncShim = [v21 hk_error:738 description:v22];

            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v61 = selfCopy;
              v62 = 2114;
              v63 = stateSyncShim;
              _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Error processing zone :%{public}@", buf, 0x16u);
            }

            [v10 failTaskWithError:stateSyncShim];
          }

          else
          {
            v24 = [HDCloudSyncStateStore alloc];
            v25 = [HDCloudSyncStateSyncOperation stateDataForStateSyncZone:v15];
            v26 = [(HDCloudSyncStateStore *)v24 initWithData:v25];

            configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
            repository = [configuration2 repository];
            [repository cloudSyncShimProvider];
            v29 = v42 = v18;
            stateSyncShim = [v29 stateSyncShim];

            configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __69__HDCloudSyncStateSyncOperation__performStateSyncInZones_completion___block_invoke_313;
            v47[3] = &unk_278621D98;
            v47[4] = selfCopy;
            v32 = v19;
            v48 = v32;
            v49 = v10;
            v50 = v26;
            v51 = v15;
            v33 = v26;
            v34 = v32;
            v18 = v42;
            [stateSyncShim mergeStateDataWithStore:v33 domain:v34 configuration:configuration3 completion:v47];

            v11 = v40;
          }

          ++v13;
        }

        while (v43 != v13);
        v43 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v43);
    }

    [v10 finishTask];
    v7 = v38;
    v6 = v39;
  }

  else
  {
    if (!v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_error:739 format:@"No State Sync Zones present"];
    }

    _HKInitializeLogging();
    v35 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *v64 = 138543618;
      selfCopy2 = self;
      v66 = 2114;
      v67 = v7;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching state sync zones :%{public}@", v64, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __37__HDCloudSyncStateSyncOperation_main__block_invoke_301(uint64_t a1, char a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v7)
    {
      if ([v7[13] count])
      {
        v9 = [HDCloudSyncModifyRecordsOperation alloc];
        v10 = [v7 configuration];
        v11 = [v7 configuration];
        v12 = [v11 repository];
        v13 = [v12 primaryCKContainer];
        v14 = [(HDCloudSyncModifyRecordsOperation *)v9 initWithConfiguration:v10 container:v13 recordsToSave:v7[13] recordIDsToDelete:0];

        v15 = [MEMORY[0x277CBEAA8] date];
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __66__HDCloudSyncStateSyncOperation__pushUpdatedStateRecordsForZones___block_invoke;
        v24 = &unk_278616348;
        v25 = v7;
        v16 = v8;
        v26 = v16;
        [(HDCloudSyncOperation *)v14 setOnError:&v21];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HDCloudSyncStateSyncOperation__pushUpdatedStateRecordsForZones___block_invoke_325;
        v28 = &unk_278616370;
        v29 = v7;
        v30 = v15;
        v31 = v16;
        v17 = v15;
        [(HDCloudSyncOperation *)v14 setOnSuccess:buf, v21, v22, v23, v24, v25];
        [(HDCloudSyncOperation *)v14 start];
      }

      else
      {
        [(HDCloudSyncStateSyncOperation *)v7 _notifyStateEntities:v8 stateSyncZones:?];
        [v7 finishWithSuccess:1 error:0];
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x277CCA9B8] hk_error:738 format:@"Error processing state"];
    }

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncStateSyncOperation *)*(a1 + 32) _notifyStateEntities:*(a1 + 40) stateSyncZones:?];
    [*(a1 + 32) finishWithSuccess:0 error:v6];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_notifyStateEntities:(void *)entities stateSyncZones:
{
  v44 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  if (self)
  {
    configuration = [self configuration];
    repository = [configuration repository];
    cloudSyncShimProvider = [repository cloudSyncShimProvider];
    stateSyncShim = [cloudSyncShimProvider stateSyncShim];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = entitiesCopy;
    v8 = entitiesCopy;
    v31 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v31)
    {
      selfCopy = self;
      v10 = *v36;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          zoneIdentifier = [v12 zoneIdentifier];
          v33 = 0;
          v34 = 0;
          v14 = [zoneIdentifier hd_isStateSyncZoneIDForSyncCircleIdentifier:&v34 domain:&v33];
          v15 = v34;
          v16 = v33;

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v18 = MEMORY[0x277CCA9B8];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to extract domain and sync circle identifier from %@.", v12];
            v26 = [v18 hk_error:738 description:v19];

            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v40 = selfCopy;
              v41 = 2114;
              v42 = v26;
              _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying state entity :%{public}@", buf, 0x16u);
            }
          }

          else
          {
            v21 = [HDCloudSyncStateStore alloc];
            v22 = [v8 objectForKeyedSubscript:v12];
            [HDCloudSyncStateSyncOperation stateDataForStateSyncZone:v22];
            v23 = v8;
            v25 = v24 = selfCopy;
            v26 = [(HDCloudSyncStateStore *)v21 initWithData:v25];

            selfCopy = v24;
            v8 = v23;

            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __69__HDCloudSyncStateSyncOperation__notifyStateEntities_stateSyncZones___block_invoke;
            v32[3] = &unk_2786130B0;
            v32[4] = selfCopy;
            [stateSyncShim syncDidFinishWithResult:a2 domain:v16 stateStore:v26 completion:v32];
          }
        }

        v31 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v31);
    }

    entitiesCopy = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __69__HDCloudSyncStateSyncOperation__performStateSyncInZones_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 1, 0);
  }

  else
  {
    v7 = [a4 firstObject];
    (*(v4 + 16))(v4, 0, v7);
  }
}

- (id)stateDataForStateSyncZone:(void *)zone
{
  v1 = MEMORY[0x277CBEB38];
  zoneCopy = zone;
  v3 = objc_alloc_init(v1);
  v4 = objc_opt_class();
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HDCloudSyncStateSyncOperation_stateDataForStateSyncZone___block_invoke;
  v8[3] = &unk_278621DE8;
  v5 = v3;
  v9 = v5;
  [zoneCopy recordsForClass:v4 epoch:0 error:&v10 enumerationHandler:v8];

  v6 = v10;

  return v5;
}

void __69__HDCloudSyncStateSyncOperation__performStateSyncInZones_completion___block_invoke_313(uint64_t a1, char a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v74 = 0;
    v9 = v7;
    v10 = v8;
    v69 = v6;
    if (!v6)
    {
      goto LABEL_54;
    }

    v11 = [v9 mergedData];
    if (!v11)
    {
      goto LABEL_47;
    }

    v12 = v11;
    [v9 mergedData];
    v13 = v68 = v10;
    v14 = [v13 count];

    v10 = v68;
    if (!v14)
    {
LABEL_47:
      _HKInitializeLogging();
      v56 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        *v86 = 138543618;
        v87 = v69;
        v88 = 2114;
        v89 = v9;
        _os_log_debug_impl(&dword_228986000, v56, OS_LOG_TYPE_DEBUG, "%{public}@: Store %{public}@ has no data to be pushed", v86, 0x16u);
      }

      LOBYTE(v6) = 1;
      goto LABEL_54;
    }

    v15 = v69[14];
    if ([v15 count] == 1)
    {
      v16 = [v15 anyObject];
      if (v16)
      {
        v65 = a1;
        v66 = v5;
        v17 = [v69 configuration];
        v18 = [v17 repository];
        v19 = [v18 primaryCKContainer];
        v20 = [v19 containerIdentifier];

        if (v20)
        {
          v21 = [v16 containerIdentifier];
          v22 = [v21 isEqualToString:v20];

          v10 = v68;
          if (v22)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v23 = [v9 mergedData];
            v24 = [v23 allKeys];

            v73 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
            if (!v73)
            {
              v71 = 1;
              goto LABEL_62;
            }

            v71 = 1;
            v72 = *v77;
            v25 = v69;
            v70 = v24;
            v67 = v9;
            while (1)
            {
              for (i = 0; i != v73; ++i)
              {
                if (*v77 != v72)
                {
                  objc_enumerationMutation(v24);
                }

                v27 = *(*(&v76 + 1) + 8 * i);
                v28 = objc_opt_class();
                v75[0] = MEMORY[0x277D85DD0];
                v75[1] = 3221225472;
                v75[2] = __74__HDCloudSyncStateSyncOperation__updateRecordsToSaveWithStore_zone_error___block_invoke;
                v75[3] = &unk_278621DC0;
                v75[4] = v27;
                v29 = [v10 recordsForClass:v28 error:&v74 filter:v75];
                v30 = v29;
                if (!v29)
                {
                  v71 = 0;
                  goto LABEL_41;
                }

                if ([v29 count] >= 2)
                {
                  _HKInitializeLogging();
                  v31 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v81 = v27;
                    _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Expected one record per key. Multiple records for key: %@", buf, 0xCu);
                  }

                  v32 = [MEMORY[0x277CCA9B8] hk_error:738 format:{@"Expected one record per key. Multiple records for key: %@", v27}];
                  v33 = v32;
                  if (v32)
                  {
                    v34 = v32;
                    v71 = 0;
                    v74 = v33;
                    v35 = v33;
                  }

                  else
                  {
                    v35 = 0;
                    v71 = 0;
                  }

                  goto LABEL_39;
                }

                v36 = [v9 mergedData];
                v35 = [v36 objectForKeyedSubscript:v27];

                if (!v35)
                {
                  _HKInitializeLogging();
                  v44 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v81 = v27;
                    _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Nil merged data for key %@", buf, 0xCu);
                  }

                  v45 = [MEMORY[0x277CCA9B8] hk_error:738 format:{@"Nil merged data for key %@", v27}];
                  v46 = v45;
                  if (v45)
                  {
                    v47 = v45;
                    v71 = 0;
                    v74 = v46;
                    v33 = v46;
                  }

                  else
                  {
                    v33 = 0;
                    v71 = 0;
                  }

LABEL_38:

LABEL_39:
                  goto LABEL_40;
                }

                if ([v35 length] >> 11 >= 0x19)
                {
                  _HKInitializeLogging();
                  v37 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v53 = v37;
                    v54 = [v35 length];
                    *buf = 138543874;
                    v81 = v25;
                    v82 = 2050;
                    v83 = v54;
                    v84 = 2050;
                    v85 = 51200;
                    _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "[%{public}@] Record size: %{public}lu exceeds soft size limit: %{public}lu", buf, 0x20u);
                  }

                  v38 = [v25 profile];
                  v39 = [v38 daemon];
                  v40 = [v39 analyticsSubmissionCoordinator];
                  [v40 stateSync_recordSize:{objc_msgSend(v35, "length")}];

                  v24 = v70;
                }

                if ([v30 count])
                {
                  v41 = [v30 firstObject];
                  if (v41)
                  {
                    v33 = v41;
                    v42 = [v9 mergedData];
                    v43 = [v42 objectForKeyedSubscript:v27];
                    [v33 setStateData:v43];

LABEL_35:
                    v52 = v25[13];
                    v46 = [v33 record];
                    [v52 addObject:v46];
                    goto LABEL_38;
                  }
                }

                else
                {
                  v48 = [v9 mergedData];
                  v49 = [v48 objectForKeyedSubscript:v27];
                  v50 = [v10 zoneIdentifier];
                  v51 = [v50 zoneIdentifier];
                  v33 = [HDCloudSyncStateRecord recordWithStateData:v49 zoneID:v51 recordIdentifier:v27 error:&v74];

                  v25 = v69;
                  v10 = v68;

                  v9 = v67;
                  v24 = v70;
                  if (v33)
                  {
                    goto LABEL_35;
                  }
                }

                v71 = 0;
LABEL_40:

LABEL_41:
              }

              v73 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
              if (!v73)
              {
LABEL_62:

                a1 = v65;
                v5 = v66;
                LOBYTE(v6) = v71;
                goto LABEL_54;
              }
            }
          }

          goto LABEL_52;
        }
      }

      v10 = v68;
    }

LABEL_52:
    _HKInitializeLogging();
    v59 = *MEMORY[0x277CCC328];
    LOBYTE(v6) = 1;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *v86 = 138543618;
      v87 = v69;
      v88 = 2114;
      v89 = v9;
      _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_INFO, "%{public}@: Store %{public}@ is from a secondary container which is not pushed.", v86, 0x16u);
    }

LABEL_54:

    v60 = v74;
    if (v6)
    {
      [*(a1 + 48) finishTask];
    }

    else
    {
      _HKInitializeLogging();
      v61 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v63 = *(a1 + 32);
        v64 = *(a1 + 40);
        *v86 = 138543874;
        v87 = v63;
        v88 = 2114;
        v89 = v60;
        v90 = 2114;
        v91 = v64;
        _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "%{public}@: Error creating record %{public}@ for %{public}@", v86, 0x20u);
      }

      [*(a1 + 48) failTaskWithError:v60];
    }

    goto LABEL_60;
  }

  _HKInitializeLogging();
  v55 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v57 = *(a1 + 32);
    v58 = *(a1 + 40);
    *v86 = 138543874;
    v87 = v57;
    v88 = 2114;
    v89 = v58;
    v90 = 2114;
    v91 = v5;
    _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Ignorable failure to update data %{public}@", v86, 0x20u);
  }

  [*(a1 + 48) finishTask];
LABEL_60:

  v62 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HDCloudSyncStateSyncOperation__updateRecordsToSaveWithStore_zone_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __66__HDCloudSyncStateSyncOperation__pushUpdatedStateRecordsForZones___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v5;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to modify records: %{public}@", &v13, 0x16u);
  }

  v8 = [*(a1 + 32) profile];
  v9 = [v8 daemon];
  v10 = [v9 analyticsSubmissionCoordinator];
  [v10 stateSync_operationFailed:v6 error:v5];

  [(HDCloudSyncStateSyncOperation *)*(a1 + 32) _notifyStateEntities:*(a1 + 40) stateSyncZones:?];
  [*(a1 + 32) finishWithSuccess:0 error:v5];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDCloudSyncStateSyncOperation__pushUpdatedStateRecordsForZones___block_invoke_325(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 profile];
  v6 = [v5 daemon];
  v7 = [v6 analyticsSubmissionCoordinator];
  [a1[5] timeIntervalSinceNow];
  [v7 stateSync_triggerDuration:?];

  v8 = [a1[4] profile];
  v9 = [v8 daemon];
  v10 = [v9 analyticsSubmissionCoordinator];
  [v10 stateSync_operationSucceeded:v4];

  [(HDCloudSyncStateSyncOperation *)a1[4] _notifyStateEntities:a1[6] stateSyncZones:?];
  v11 = a1[4];

  return [v11 finishWithSuccess:1 error:0];
}

void __69__HDCloudSyncStateSyncOperation__notifyStateEntities_stateSyncZones___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying state entity :%{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HDCloudSyncStateSyncOperation_stateDataForStateSyncZone___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 key];
  v8 = [*(a1 + 32) objectForKey:v7];
  if (v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Expected one record per key. Multiple records for key: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:738 format:{@"Expected one record per key. Multiple records for key: %@", v7}];
    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        *a4 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (([v6 hasStateData] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No state data or state data asset url in %@", v6];
    v16 = [v15 hk_error:738 description:v10];
    if (v16)
    {
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 32);
  v13 = [v6 stateData];
  [v12 setObject:v13 forKey:v7];

  v14 = 1;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

@end