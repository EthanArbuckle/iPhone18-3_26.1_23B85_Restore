@interface HKHRStateSyncBloodPressureJournalDelegate
+ (BOOL)_fetchLocalJournals:(void *)a3 profile:(uint64_t)a4 transaction:(uint64_t *)a5 error:;
+ (uint64_t)_fetchCloudState:(void *)a3 codableSyncState:(uint64_t)a4 profile:(uint64_t)a5 error:;
+ (uint64_t)_persistCloudState:(void *)a3 profile:(void *)a4 error:;
+ (uint64_t)_shouldUpdateWithMergedState:(uint64_t)a1 cloudState:(void *)a2 localState:(void *)a3 profile:(void *)a4 transaction:(void *)a5 error:(void *)a6;
+ (uint64_t)_updateCodableSyncState:(uint64_t)a1 withMergeState:(void *)a2 profile:(void *)a3 error:(void *)a4;
- (BOOL)persistCloudState:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)updateCodableSyncState:(id)a3 withMergeState:(id)a4 profile:(id)a5 error:(id *)a6;
- (NSString)description;
- (int64_t)shouldUpdateWithMergedState:(id *)a3 cloudState:(id)a4 localState:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
@end

@implementation HKHRStateSyncBloodPressureJournalDelegate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKHRStateSyncBloodPressureJournalDelegate *)self domain];
  v6 = [(HKHRStateSyncBloodPressureJournalDelegate *)self key];
  v7 = [v3 stringWithFormat:@"[%@:%p (%@, %@)]", v4, self, v5, v6];

  return v7;
}

+ (BOOL)_fetchLocalJournals:(void *)a3 profile:(uint64_t)a4 transaction:(uint64_t *)a5 error:
{
  v7 = a3;
  objc_opt_self();
  v8 = [v7 heartHealthProfileExtension];

  v9 = [v8 bloodPressureJournalManager];

  v10 = [v9 bloodPressureJournalsWithError:a5];
  v11 = *a5;
  if (!*a5)
  {
    v12 = objc_alloc_init(MEMORY[0x277D10620]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __91__HKHRStateSyncBloodPressureJournalDelegate__fetchLocalJournals_profile_transaction_error___block_invoke;
    v17[3] = &unk_278661198;
    v18 = v12;
    v13 = v12;
    [v10 enumerateObjectsUsingBlock:v17];
    v14 = [v13 bloodPressureJournalsCount];
    if (a2 && v14)
    {
      v15 = v13;
      *a2 = v13;
    }
  }

  return v11 == 0;
}

+ (uint64_t)_fetchCloudState:(void *)a3 codableSyncState:(uint64_t)a4 profile:(uint64_t)a5 error:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_opt_self();
  v17 = 0;
  v9 = [v7 decodedObjectOfClass:objc_opt_class() version:0 decodedObject:&v17 error:a5];

  v10 = v17;
  v11 = 0;
  if (v9)
  {
    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 bloodPressureJournalsCount];
      *buf = 138412546;
      v19 = v8;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%@] Decode %ld blood pressure journals for state sync", buf, 0x16u);
    }

    if (a2)
    {
      v14 = v10;
      *a2 = v10;
    }

    v11 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)shouldUpdateWithMergedState:(id *)a3 cloudState:(id)a4 localState:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHRStateSyncBloodPressureJournalDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHRStateSyncBloodPressureJournalDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  v16 = [HKHRStateSyncBloodPressureJournalDelegate _shouldUpdateWithMergedState:a3 cloudState:v12 localState:v13 profile:v14 transaction:v15 error:?];

  return v16;
}

+ (uint64_t)_shouldUpdateWithMergedState:(uint64_t)a1 cloudState:(void *)a2 localState:(void *)a3 profile:(void *)a4 transaction:(void *)a5 error:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v35 = a6;
  objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [v11 bloodPressureJournals];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke;
  v70[3] = &unk_2786611C0;
  v16 = v12;
  v71 = v16;
  [v15 enumerateObjectsUsingBlock:v70];

  v17 = [v10 bloodPressureJournals];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_2;
  v68[3] = &unk_2786611C0;
  v18 = v13;
  v69 = v18;
  [v17 enumerateObjectsUsingBlock:v68];

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v19 = [v16 allValues];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_3;
  v55[3] = &unk_2786611E8;
  v20 = v18;
  v56 = v20;
  v21 = v14;
  v57 = v21;
  v58 = &v60;
  v59 = &v64;
  [v19 enumerateObjectsUsingBlock:v55];

  v22 = [v20 allValues];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_4;
  v52[3] = &unk_278661210;
  v23 = v21;
  v53 = v23;
  v54 = &v64;
  [v22 enumerateObjectsUsingBlock:v52];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__10;
  v50 = __Block_byref_object_dispose__10;
  v51 = 0;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [v23 allValues];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_327;
  v41[3] = &unk_278661238;
  v43 = &v46;
  v26 = v24;
  v42 = v26;
  v44 = &v60;
  v45 = &v64;
  [v25 enumerateObjectsUsingBlock:v41];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_2_328;
  v39[3] = &unk_278661198;
  v27 = v23;
  v40 = v27;
  [v26 enumerateObjectsUsingBlock:v39];
  v28 = objc_alloc_init(MEMORY[0x277D10620]);
  if (v47[5])
  {
    v29 = [HKHRBloodPressureJournalStateSyncEntity codableJournalFromBloodPressureJournal:?];
    [v28 addBloodPressureJournal:v29];
  }

  v30 = [v27 allValues];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_3_330;
  v37[3] = &unk_278661198;
  v31 = v28;
  v38 = v31;
  [v30 enumerateObjectsUsingBlock:v37];

  if (a2)
  {
    v32 = v31;
    *a2 = v31;
  }

  if (v61[3])
  {
    v33 = 3;
  }

  else if (*(v65 + 24))
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  return v33;
}

- (BOOL)updateCodableSyncState:(id)a3 withMergeState:(id)a4 profile:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHRStateSyncBloodPressureJournalDelegate updateCodableSyncState:withMergeState:profile:error:];
  }

  [HKHRStateSyncBloodPressureJournalDelegate _updateCodableSyncState:v8 withMergeState:v9 profile:v10 error:?];

  return 1;
}

+ (uint64_t)_updateCodableSyncState:(uint64_t)a1 withMergeState:(void *)a2 profile:(void *)a3 error:(void *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  _HKInitializeLogging();
  v10 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 bloodPressureJournals];
    v14 = 138543618;
    v15 = v9;
    v16 = 2048;
    v17 = [v11 count];
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld blood pressure journals in cloud state for state sync", &v14, 0x16u);
  }

  [v8 setCodableObject:v6 version:0 profile:v7];
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)persistCloudState:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHRStateSyncBloodPressureJournalDelegate persistCloudState:profile:error:];
  }

  v9 = [HKHRStateSyncBloodPressureJournalDelegate _persistCloudState:v7 profile:v8 error:a5];

  return v9;
}

+ (uint64_t)_persistCloudState:(void *)a3 profile:(void *)a4 error:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  _HKInitializeLogging();
  v9 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 bloodPressureJournals];
    *buf = 138412546;
    v24 = v8;
    v25 = 2048;
    v26 = [v10 count];
    _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Persist %ld blood pressure journals for state sync", buf, 0x16u);
  }

  v11 = [v6 bloodPressureJournals];
  v12 = [v11 hk_map:&__block_literal_global_21];

  v13 = [v7 heartHealthProfileExtension];

  v14 = [v13 bloodPressureJournalManager];

  v22 = 0;
  v15 = [v14 insertBloodPressureJournals:v12 error:&v22 onCommit:0 onRollback:0];
  v16 = v22;
  if ((v15 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v8;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to insert journals due to error: %{public}@", buf, 0x16u);
    }

    v18 = v16;
    if (v18)
    {
      if (a4)
      {
        v19 = v18;
        *a4 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

void __91__HKHRStateSyncBloodPressureJournalDelegate__fetchLocalJournals_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HKHRBloodPressureJournalStateSyncEntity codableJournalFromBloodPressureJournal:a2];
  [v2 addBloodPressureJournal:v3];
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [HKHRBloodPressureJournalStateSyncEntity bloodPressureJournalFromCodableJournal:a2];
  v3 = *(a1 + 32);
  v4 = [v5 UUID];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = [HKHRBloodPressureJournalStateSyncEntity bloodPressureJournalFromCodableJournal:a2];
  v3 = *(a1 + 32);
  v4 = [v5 UUID];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v21 = v3;
  v5 = [v3 UUID];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v15 = a1[5];
    v16 = [v21 UUID];
    [v15 setObject:v21 forKeyedSubscript:v16];

    *(*(a1[6] + 8) + 24) = 1;
    goto LABEL_13;
  }

  v7 = [v6 journalState];
  if (v7 != [v21 journalState])
  {
    v17 = [v6 journalState];
    if (!v17)
    {
      goto LABEL_10;
    }

    if (v17 != 1)
    {
      v14 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v14 = v6;
    v18 = a1[7];
LABEL_11:
    *(*(v18 + 8) + 24) = 1;
    goto LABEL_12;
  }

  [v6 timestamp];
  v9 = v8;
  [v21 timestamp];
  if (v9 > v10)
  {
    goto LABEL_9;
  }

  [v6 timestamp];
  v12 = v11;
  [v21 timestamp];
  if (v12 < v13)
  {
LABEL_10:
    v14 = v21;
    v18 = a1[6];
    goto LABEL_11;
  }

  v14 = v6;
LABEL_12:
  v19 = a1[5];
  v20 = [v14 UUID];
  [v19 setObject:v14 forKeyedSubscript:v20];

LABEL_13:
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 UUID];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 UUID];
    [v7 setObject:v9 forKeyedSubscript:v8];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_327(uint64_t a1, void *a2)
{
  v12 = a2;
  if (![v12 journalState])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    if (v5)
    {
      [v5 timestamp];
      v7 = v6;
      [v12 timestamp];
      if (v7 >= v8)
      {
        v9 = v12;
      }

      else
      {
        v9 = *(*(*(a1 + 40) + 8) + 40);
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }

      [*(a1 + 32) addObject:v9];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v10 = v12;
      v9 = *(v4 + 40);
      *(v4 + 40) = v10;
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_2_328(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D12F70];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  [v4 timestamp];
  v10 = v9;
  v11 = [v4 journalType];
  v12 = [v4 scheduleType];
  v13 = [v4 timeIntervals];

  v16 = [v5 initWithUUID:v6 startDate:v7 endDate:v8 timestamp:v11 journalType:v12 scheduleType:1 journalState:v10 timeIntervals:v13];
  v14 = *(a1 + 32);
  v15 = [v16 UUID];
  [v14 setObject:v16 forKeyedSubscript:v15];
}

void __122__HKHRStateSyncBloodPressureJournalDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke_3_330(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 journalState] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [HKHRBloodPressureJournalStateSyncEntity codableJournalFromBloodPressureJournal:v5];
    [v3 addBloodPressureJournal:v4];
  }
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[cloudState isKindOfClass:HDCodableBloodPressureJournalState.class]" object:? file:? lineNumber:? description:?];
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[localState isKindOfClass:HDCodableBloodPressureJournalState.class]" object:? file:? lineNumber:? description:?];
}

- (void)updateCodableSyncState:withMergeState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[mergeState isKindOfClass:HDCodableBloodPressureJournalState.class]" object:? file:? lineNumber:? description:?];
}

- (void)persistCloudState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[codableCloudState isKindOfClass:HDCodableBloodPressureJournalState.class]" object:? file:? lineNumber:? description:?];
}

@end