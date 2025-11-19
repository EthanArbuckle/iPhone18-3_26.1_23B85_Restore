@interface HDCloudSyncPushDeviceKeyValueOperation
- (id)_computeEntryHash:(uint64_t)a1;
- (void)_fetchLocalKeyValuesForProtectionCategory:(void *)a3 completion:;
- (void)main;
@end

@implementation HDCloudSyncPushDeviceKeyValueOperation

- (void)main
{
  v101 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__56;
  v75 = __Block_byref_object_dispose__56;
  v76 = 0;
  v3 = [(HDCloudSyncOperation *)self profile];
  v4 = [v3 syncIdentityManager];
  v5 = [v4 currentSyncIdentity];
  v64 = [v5 identity];

  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 cachedCloudState];
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 repository];
  v10 = [v9 primaryCKContainer];
  v11 = [v10 containerIdentifier];
  v12 = (v72 + 5);
  obj = v72[5];
  v13 = [v7 contextSyncZoneForContainerID:v11 error:&obj];
  objc_storeStrong(v12, obj);
  contextSyncZone = self->_contextSyncZone;
  self->_contextSyncZone = v13;

  v15 = self->_contextSyncZone;
  if (v15)
  {
    v16 = objc_opt_class();
    v18 = (v72 + 5);
    v17 = v72[5];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __46__HDCloudSyncPushDeviceKeyValueOperation_main__block_invoke;
    v66[3] = &unk_27861B0A8;
    v68 = &v71;
    v69 = v17;
    v66[4] = self;
    v67 = v64;
    v19 = [(HDCloudSyncCachedZone *)v15 recordsForClass:v16 error:&v69 filter:v66];
    objc_storeStrong(v18, v69);
    if (v19)
    {
      if ([v19 count] < 2)
      {
        v30 = [v19 firstObject];
        recordWithCurrentIdentity = self->_recordWithCurrentIdentity;
        self->_recordWithCurrentIdentity = v30;

        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __46__HDCloudSyncPushDeviceKeyValueOperation_main__block_invoke_303;
        v65[3] = &unk_27861B0D0;
        v65[4] = self;
        v32 = v65;
        v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v88 = 0;
        v89 = &v88;
        v90 = 0x3032000000;
        v91 = __Block_byref_object_copy__56;
        v92 = __Block_byref_object_dispose__56;
        v93 = 0;
        v35 = objc_alloc_init(MEMORY[0x277D10BB0]);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke;
        v95 = &unk_27861B0F8;
        v96 = self;
        v100 = &v88;
        v61 = v32;
        v99 = v61;
        v36 = v33;
        v97 = v36;
        v37 = v34;
        v98 = v37;
        [v35 setDidFinish:buf];
        v38 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
        v39 = [(HDCloudSyncOperation *)self configuration];
        v40 = [v39 accessibilityAssertion];
        v41 = [v38 contextWithAccessibilityAssertion:v40];

        [v35 beginTask];
        v42 = [(HDCloudSyncOperation *)self configuration];
        v63 = [v42 repository];
        v43 = [v63 profile];
        v44 = [v43 database];
        v45 = v89;
        v87 = v89[5];
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_309;
        v82[3] = &unk_27861B120;
        v46 = v35;
        v83 = v46;
        v84 = self;
        v47 = v36;
        v48 = v42;
        v49 = v19;
        v50 = v41;
        v51 = v47;
        v85 = v47;
        v52 = v37;
        v86 = v52;
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_4;
        v77[3] = &unk_27861B148;
        v53 = v46;
        v78 = v53;
        v79 = self;
        v54 = v51;
        v55 = v50;
        v19 = v49;
        v56 = v48;
        v57 = v54;
        v80 = v54;
        v58 = v52;
        v81 = v58;
        LOBYTE(v52) = [v44 performTransactionWithContext:v55 error:&v87 block:v82 inaccessibilityHandler:v77];
        objc_storeStrong(v45 + 5, v87);

        if (v52)
        {
          [v53 finishTask];
        }

        else
        {
          [v53 failTaskWithError:{v89[5], v61}];
        }

        _Block_object_dispose(&v88, 8);
        goto LABEL_18;
      }

      v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Multiple device contexts for same identity"];
      v21 = v72[5];
      v72[5] = v20;

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v23 = v72[5];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_fault_impl(&dword_228986000, v22, OS_LOG_TYPE_FAULT, "%{public}@: Error fetching context record for local identity %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (!v72[5])
      {
        v27 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"No context record for local device on the cloud"];
        v28 = v72[5];
        v72[5] = v27;
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v60 = v72[5];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching context record for local identity %{public}@", buf, 0x16u);
      }
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v72[5]];
LABEL_18:

    goto LABEL_19;
  }

  v24 = v72[5];
  if (!v24)
  {
    v25 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Context zone not present."];
    v26 = v72[5];
    v72[5] = v25;

    v24 = v72[5];
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v24];
LABEL_19:

  _Block_object_dispose(&v71, 8);
  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HDCloudSyncPushDeviceKeyValueOperation_main__block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [a2 deviceContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [v4 syncIdentity];
    v6 = [v5 isEqual:a1[5]];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = *(*(a1[6] + 8) + 40);
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch context record: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void __46__HDCloudSyncPushDeviceKeyValueOperation_main__block_invoke_303(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 && v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 134218240;
      v28 = [v7 count];
      v29 = 2048;
      v30 = [v9 count];
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to save %lu key-value records, delete %lu key-value records", buf, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = [v7 allObjects];
    v25 = v9;
    v14 = [v9 allObjects];
    if (v12)
    {
      v26 = v14;
      v15 = v14;
      v16 = v13;
      v17 = [HDCloudSyncModifyRecordsOperation alloc];
      v18 = [v12 configuration];
      v19 = [v12 configuration];
      [v19 repository];
      v21 = v20 = v13;
      v22 = [v21 primaryCKContainer];
      v23 = [(HDCloudSyncModifyRecordsOperation *)v17 initWithConfiguration:v18 container:v22 recordsToSave:v16 recordIDsToDelete:v15];

      v13 = v20;
      [v12 delegateToOperation:v23];

      v14 = v26;
    }

    v9 = v25;
  }

  else
  {
    [*(a1 + 32) finishWithSuccess:0 error:a4];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = *(*(a1[8] + 8) + 40);
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error in fetching local entries %{public}@", &v14, 0x16u);
    }

    v7 = a1[7];
    v8 = [v5 firstObject];
    (*(v7 + 16))(v7, 0, 0, v8);
  }

  else
  {
    v9 = a1[6];
    v10 = a1[5];
    (*(a1[7] + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_309(uint64_t a1)
{
  [*(a1 + 32) beginTask];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_2;
  v9[3] = &unk_278616968;
  v2 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  [(HDCloudSyncPushDeviceKeyValueOperation *)v2 _fetchLocalKeyValuesForProtectionCategory:v9 completion:?];
  [*(a1 + 32) beginTask];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_3;
  v5[3] = &unk_278616968;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [(HDCloudSyncPushDeviceKeyValueOperation *)v3 _fetchLocalKeyValuesForProtectionCategory:v5 completion:?];

  return 1;
}

void __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_2(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    [a1[4] failTaskWithError:a4];
  }

  else
  {
    [a1[5] addObjectsFromArray:a2];
    [a1[6] addObjectsFromArray:v7];
    [a1[4] finishTask];
  }
}

- (void)_fetchLocalKeyValuesForProtectionCategory:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a1 configuration];
    v7 = [v6 repository];
    v8 = [v7 cloudSyncShimProvider];
    v9 = [v8 contextSyncShim];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__HDCloudSyncPushDeviceKeyValueOperation__fetchLocalKeyValuesForProtectionCategory_completion___block_invoke;
    v10[3] = &unk_27861B170;
    v10[4] = a1;
    v12 = a2;
    v11 = v5;
    [v9 fetchLocalKeyValueForProtectionCategory:a2 completion:v10];
  }
}

void __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_3(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    [a1[4] failTaskWithError:a4];
  }

  else
  {
    [a1[5] addObjectsFromArray:a2];
    [a1[6] addObjectsFromArray:v7];
    [a1[4] finishTask];
  }
}

uint64_t __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) beginTask];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_5;
  v4[3] = &unk_278616968;
  v2 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [(HDCloudSyncPushDeviceKeyValueOperation *)v2 _fetchLocalKeyValuesForProtectionCategory:v4 completion:?];

  return 1;
}

void __87__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSaveAndDeleteWithCompletion___block_invoke_5(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    [a1[4] failTaskWithError:a4];
  }

  else
  {
    [a1[5] addObjectsFromArray:a2];
    [a1[6] addObjectsFromArray:v7];
    [a1[4] finishTask];
  }
}

void __95__HDCloudSyncPushDeviceKeyValueOperation__fetchLocalKeyValuesForProtectionCategory_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = a2;
    v9 = objc_alloc_init(v7);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = a1[4];
    v49 = a1[6];
    v51 = v6;
    v12 = v9;
    v13 = v10;
    v14 = v8;
    v15 = v11;
    v16 = v14;
    if (v11)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __120__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSave_recordIDsToDelete_localEntries_protectionCategory_error___block_invoke;
      v62[3] = &unk_27861B198;
      v62[4] = v11;
      v18 = [v16 hk_mapToDictionary:v62];
      v19 = *(v11 + 104);
      v20 = objc_opt_class();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __120__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSave_recordIDsToDelete_localEntries_protectionCategory_error___block_invoke_2;
      v56[3] = &unk_27861B1C0;
      v47 = v15;
      v56[4] = v15;
      v61 = v49;
      v21 = v18;
      v57 = v21;
      v58 = v13;
      v50 = v17;
      v59 = v50;
      v46 = v12;
      v60 = v46;
      if ([v19 recordsForClass:v20 epoch:0 error:&v51 enumerationHandler:v56])
      {
        v41 = v16;
        v42 = v13;
        v43 = v6;
        v44 = v12;
        v45 = a1;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v52 objects:v63 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v53;
          do
          {
            v26 = 0;
            v48 = v24;
            do
            {
              if (*v53 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v52 + 1) + 8 * v26);
              if (([v50 containsObject:v27] & 1) == 0)
              {
                v28 = v21;
                v29 = [HDCloudSyncDeviceKeyValueRecord alloc];
                [*(v47 + 104) zoneIdentifier];
                v31 = v30 = v25;
                v32 = [v31 zoneIdentifier];
                v33 = [v22 objectForKeyedSubscript:v27];
                v34 = *(v47 + 112);
                [MEMORY[0x277CCAD78] UUID];
                v36 = v35 = v22;
                v37 = [(HDCloudSyncDeviceKeyValueRecord *)v29 initInZone:v32 deviceKeyValueEntry:v33 deviceContextRecord:v34 UUID:v36];
                v38 = [v37 record];
                [v46 addObject:v38];

                v21 = v28;
                v22 = v35;

                v25 = v30;
                v24 = v48;
              }

              ++v26;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v52 objects:v63 count:16];
          }

          while (v24);
        }

        v12 = v44;
        a1 = v45;
        v13 = v42;
        v6 = v43;
        v16 = v41;
      }
    }

    v39 = v51;
    (*(a1[5] + 16))();
  }

  else
  {
    v39 = v5;
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)_computeEntryHash:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    v3 = a2;
    v4 = [v3 key];
    v5 = [v4 hash];
    v6 = [v3 domain];
    v7 = [v6 hash] ^ v5;
    v8 = MEMORY[0x277CCABB0];
    v9 = [v3 protectionCategory];

    v10 = [v8 numberWithInteger:v9];
    v11 = [v2 numberWithUnsignedInteger:{v7 ^ objc_msgSend(v10, "hash")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __120__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSave_recordIDsToDelete_localEntries_protectionCategory_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [(HDCloudSyncPushDeviceKeyValueOperation *)v5 _computeEntryHash:v7];
  (a3)[2](v6, v8, v7);
}

uint64_t __120__HDCloudSyncPushDeviceKeyValueOperation__computeRecordsToSave_recordIDsToDelete_localEntries_protectionCategory_error___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0;
  v4 = [v3 deviceKeyValueEntry:&v25];
  v5 = v25;
  if (v4)
  {
    v6 = [v4 syncIdentity];
    v7 = [*(a1 + 32) profile];
    v8 = [v7 syncIdentityManager];
    v9 = [v8 currentSyncIdentity];
    v10 = [v9 identity];
    v11 = [v6 isEqual:v10];

    if (v11 && [v4 protectionCategory] == *(a1 + 72))
    {
      v12 = [(HDCloudSyncPushDeviceKeyValueOperation *)*(a1 + 32) _computeEntryHash:v4];
      v13 = [*(a1 + 40) objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = [*(a1 + 40) objectForKeyedSubscript:v12];
        [*(a1 + 56) addObject:v12];
        v15 = [v14 value];
        v16 = [v4 value];
        v17 = [v15 isEqual:v16];

        if ((v17 & 1) == 0)
        {
          [v3 updateDeviceKeyValueEntry:v14];
          v18 = *(a1 + 64);
          v19 = [v3 record];
          [v18 addObject:v19];
        }
      }

      else
      {
        v22 = *(a1 + 48);
        v14 = [v3 recordID];
        [v22 addObject:v14];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 138543618;
      v27 = v21;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching key value entry for remote record during computing updated records %{public}@", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

@end