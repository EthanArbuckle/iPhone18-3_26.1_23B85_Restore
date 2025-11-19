@interface HDCloudSyncStateUpdaterMedicationDelegate
+ (id)_deletedConceptPredicateWithUUIDs:(uint64_t)a1;
+ (id)_medicationsPredicate;
+ (id)_medsListOrderingTerms;
+ (id)_mergeCloudConcept:(void *)a3 localConcept:(void *)a4 profile:;
+ (uint64_t)_didAddNewLocalConcepts:(void *)a3 toMergedConcepts:;
+ (uint64_t)_didUpdateMergedConcepts:(uint64_t)a1 cloudState:(void *)a2 localState:(void *)a3 profile:(void *)a4 nonDeletedCloudConceptUUIDs:(void *)a5 error:(void *)a6;
+ (uint64_t)_fetchCloudState:(void *)a3 codableSyncState:(uint64_t)a4 profile:(uint64_t)a5 error:;
+ (uint64_t)_fetchPersistedMeds:(void *)a3 profile:(void *)a4 transaction:(uint64_t)a5 error:;
+ (uint64_t)_persistCloudState:(void *)a3 profile:(uint64_t)a4 error:;
+ (uint64_t)_replaceDeletedConceptIn:(void *)a3 nonDeletedCloudConceptUUIDs:(void *)a4 profile:(void *)a5 transaction:(uint64_t)a6 error:;
+ (uint64_t)_shouldUpdateWithMergedState:(void *)a3 cloudState:(void *)a4 localState:(void *)a5 profile:(void *)a6 transaction:(uint64_t)a7 error:;
+ (uint64_t)_updateCodableSyncState:(uint64_t)a1 withMergeState:(void *)a2 profile:(void *)a3 error:(void *)a4;
- (BOOL)persistCloudState:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)updateCodableSyncState:(id)a3 withMergeState:(id)a4 profile:(id)a5 error:(id *)a6;
- (NSString)description;
- (int64_t)shouldUpdateWithMergedState:(id *)a3 cloudState:(id)a4 localState:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
@end

@implementation HDCloudSyncStateUpdaterMedicationDelegate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDCloudSyncStateUpdaterMedicationDelegate *)self domain];
  v6 = [(HDCloudSyncStateUpdaterMedicationDelegate *)self key];
  v7 = [v3 stringWithFormat:@"[%@:%p (%@, %@)]", v4, self, v5, v6];

  return v7;
}

+ (uint64_t)_fetchPersistedMeds:(void *)a3 profile:(void *)a4 transaction:(uint64_t)a5 error:
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v11 = MEMORY[0x277D10950];
  v12 = +[HDCloudSyncStateUpdaterMedicationDelegate _medicationsPredicate];
  v13 = +[HDCloudSyncStateUpdaterMedicationDelegate _medsListOrderingTerms];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__HDCloudSyncStateUpdaterMedicationDelegate__fetchPersistedMeds_profile_transaction_error___block_invoke;
  v26[3] = &unk_2796CD200;
  v26[4] = &v27;
  LOBYTE(a5) = [v11 enumerateCodableObjectsForPredicate:v12 limit:500 orderingTerms:v13 profile:v8 transaction:v9 error:a5 handler:v26];

  if ((a5 & 1) == 0)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_14;
  }

  v14 = [v28[5] concepts];
  v15 = [v14 count] > 0x1F3;

  if (v15)
  {
    if (!*MEMORY[0x277D109A0])
    {
      _HKInitializeLogging();
      v16 = HKLogMedication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v24 = [v28[5] concepts];
        v25 = [v24 count];
        *buf = 138543618;
        v34 = v10;
        v35 = 2048;
        v36 = v25;
        _os_log_fault_impl(&dword_25181C000, v16, OS_LOG_TYPE_FAULT, "[%{public}@] Trying to query for at least %ld medications for state sync, but this is too many!", buf, 0x16u);
      }
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:13 format:{@"%@ Unable to update the cloud state because max medication count (%ld) exceeded", v10, 500}];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v19 = HKLogMedication();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v28[5] concepts];
    v21 = [v20 count];
    *buf = 138543618;
    v34 = v10;
    v35 = 2048;
    v36 = v21;
    _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetch %ld local medications for state sync", buf, 0x16u);
  }

  if (a2)
  {
    *a2 = v28[5];
  }

  v18 = 1;
LABEL_14:
  _Block_object_dispose(&v27, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v18;
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
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 conceptsCount];
      *buf = 138543618;
      v19 = v8;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode %ld cloud medications for state sync", buf, 0x16u);
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
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  v17 = [HDCloudSyncStateUpdaterMedicationDelegate _shouldUpdateWithMergedState:a3 cloudState:v13 localState:v14 profile:v15 transaction:v16 error:a8];

  return v17;
}

+ (uint64_t)_shouldUpdateWithMergedState:(void *)a3 cloudState:(void *)a4 localState:(void *)a5 profile:(void *)a6 transaction:(uint64_t)a7 error:
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_self();
  v17 = objc_alloc_init(MEMORY[0x277D10660]);
  v31 = 0;
  v18 = [HDCloudSyncStateUpdaterMedicationDelegate _didUpdateMergedConcepts:v16 cloudState:v17 localState:v15 profile:v14 nonDeletedCloudConceptUUIDs:v12 error:&v31];

  v19 = v31;
  _HKInitializeLogging();
  v20 = HKLogMedication();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HKStringFromStateSyncMergeResult();
    *buf = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = v21;
    _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ merge result %{public}@", buf, 0x16u);
  }

  if (v18 == 3)
  {
    v23 = 0;
    v22 = 1;
  }

  else if (v18 == 2)
  {
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v16 _replaceDeletedConceptIn:v17 nonDeletedCloudConceptUUIDs:v19 profile:v12 transaction:v13 error:a7];

  _HKInitializeLogging();
  v25 = HKLogMedication();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HKStringFromStateSyncMergeResult();
    *buf = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = v26;
    _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ replace deleted concepts result %{public}@", buf, 0x16u);
  }

  if (v24)
  {
    if (v24 == 3)
    {
      v22 = 1;
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v24 == 2)
      {
        v23 = 1;
      }

      if (!a2)
      {
        goto LABEL_16;
      }
    }

    v27 = v17;
    *a2 = v17;
LABEL_16:
    v28 = 1;
    if (v23)
    {
      v28 = 2;
    }

    if (v22)
    {
      v24 = 3;
    }

    else
    {
      v24 = v28;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)updateCodableSyncState:(id)a3 withMergeState:(id)a4 profile:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate updateCodableSyncState:withMergeState:profile:error:];
  }

  [HDCloudSyncStateUpdaterMedicationDelegate _updateCodableSyncState:v8 withMergeState:v9 profile:v10 error:?];

  return 1;
}

+ (uint64_t)_updateCodableSyncState:(uint64_t)a1 withMergeState:(void *)a2 profile:(void *)a3 error:(void *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = [v6 conceptsCount];
    _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld medications in cloud state for state sync", &v13, 0x16u);
  }

  [v8 setCodableObject:v6 version:0 profile:v7];
  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)persistCloudState:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate persistCloudState:profile:error:];
  }

  v9 = [HDCloudSyncStateUpdaterMedicationDelegate _persistCloudState:v7 profile:v8 error:a5];

  return v9;
}

+ (uint64_t)_persistCloudState:(void *)a3 profile:(uint64_t)a4 error:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = [v6 conceptsCount];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %ld medication concepts for state sync", &v15, 0x16u);
  }

  v10 = MEMORY[0x277D10950];
  v11 = [v6 concepts];
  v12 = [v10 receiveSyncObjects:v11 version:objc_msgSend(MEMORY[0x277D10950] syncProvenance:"supportedSyncVersionRange") profile:0 error:{v7, a4}];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_medicationsPredicate
{
  objc_opt_self();
  v0 = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v1 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();

  return v1;
}

+ (id)_medsListOrderingTerms
{
  v5[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = objc_alloc(MEMORY[0x277D10B68]);
  v1 = [v0 initWithExpression:*MEMORY[0x277D10530] ascending:1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __91__HDCloudSyncStateUpdaterMedicationDelegate__fetchPersistedMeds_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10660]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addConcepts:v3];

  return 1;
}

+ (uint64_t)_didUpdateMergedConcepts:(uint64_t)a1 cloudState:(void *)a2 localState:(void *)a3 profile:(void *)a4 nonDeletedCloudConceptUUIDs:(void *)a5 error:(void *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v10 = a3;
  v11 = a4;
  v41 = a5;
  v40 = objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v10 concepts];
  v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v38 = v12;
    v35 = a6;
    v36 = v10;
    v15 = 0;
    v37 = 0;
    v16 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        if (([v18 deleted] & 1) == 0)
        {
          v20 = MEMORY[0x277CCAD78];
          v21 = [v18 uuid];
          v22 = [v20 hk_UUIDWithData:v21];
          [v38 addObject:v22];
        }

        v23 = [v11 concepts];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __134__HDCloudSyncStateUpdaterMedicationDelegate__didUpdateMergedConcepts_cloudState_localState_profile_nonDeletedCloudConceptUUIDs_error___block_invoke;
        v43[3] = &unk_2796CD648;
        v43[4] = v18;
        v24 = [v23 hk_firstObjectPassingTest:v43];

        if (v24)
        {
          v25 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v40 _mergeCloudConcept:v18 localConcept:v24 profile:v41];
          if (v25 == v18)
          {
            [v18 modificationDate];
            v27 = v26;
            [v24 modificationDate];
            if (v27 > v28)
            {
              v15 = 1;
            }
          }

          else
          {
            v37 = 1;
          }

          [v42 addConcepts:v25];
        }

        else
        {
          [v42 addConcepts:v18];
          v15 |= [v18 deleted] ^ 1;
        }

        objc_autoreleasePoolPop(v19);
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
    if (v15)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    a6 = v35;
    v10 = v36;
    v12 = v38;
    v30 = v37;
  }

  else
  {
    v30 = 0;
    v29 = 1;
  }

  if (a6)
  {
    v31 = v12;
    *a6 = v12;
  }

  if ((v30 | [(HDCloudSyncStateUpdaterMedicationDelegate *)v40 _didAddNewLocalConcepts:v11 toMergedConcepts:v42]))
  {
    v32 = 3;
  }

  else
  {
    v32 = v29;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (uint64_t)_replaceDeletedConceptIn:(void *)a3 nonDeletedCloudConceptUUIDs:(void *)a4 profile:(void *)a5 transaction:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_opt_self();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v15 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v14 _deletedConceptPredicateWithUUIDs:v11];
  v16 = MEMORY[0x277D10950];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke;
  v20[3] = &unk_2796CD670;
  v22 = &v23;
  v17 = v10;
  v21 = v17;
  if ([v16 enumerateCodableObjectsForPredicate:v15 limit:0 orderingTerms:0 profile:v12 transaction:v13 error:a6 handler:v20])
  {
    v18 = v24[3];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v18;
}

uint64_t __134__HDCloudSyncStateUpdaterMedicationDelegate__didUpdateMergedConcepts_cloudState_localState_profile_nonDeletedCloudConceptUUIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

+ (id)_mergeCloudConcept:(void *)a3 localConcept:(void *)a4 profile:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = [v6 deleted];
  v10 = v6;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = v7;
    [v12 modificationDate];
    v14 = v13;
    [v10 modificationDate];
    if (v14 <= v15)
    {
      v16 = v12;
      v12 = v10;
    }

    else
    {

      v16 = v10;
    }

    v17 = [MEMORY[0x277CCDAF0] createWithCodableConcept:v12 profile:v8];
    v18 = [MEMORY[0x277CCDAF0] createWithCodableConcept:v16 profile:v8];
    v19 = [v17 copyUserDomainConceptByMergingInConcept:v18];
    v20 = v19;
    if (v19 == v17)
    {
      v21 = v12;
    }

    else
    {
      v21 = [v19 codableRepresentationForSyncWithProfile:v8];
    }

    v11 = v21;
  }

  return v11;
}

+ (uint64_t)_didAddNewLocalConcepts:(void *)a3 toMergedConcepts:
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v4 concepts];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v15 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 concepts];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __86__HDCloudSyncStateUpdaterMedicationDelegate__didAddNewLocalConcepts_toMergedConcepts___block_invoke;
        v17[3] = &unk_2796CD648;
        v17[4] = v10;
        v12 = [v11 hk_containsObjectPassingTest:v17];

        if ((v12 & 1) == 0)
        {
          [v5 addConcepts:v10];
          v15 = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v15 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t __86__HDCloudSyncStateUpdaterMedicationDelegate__didAddNewLocalConcepts_toMergedConcepts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

+ (id)_deletedConceptPredicateWithUUIDs:(uint64_t)a1
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B20];
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10508] equalToValue:MEMORY[0x277CBEC38]];
  v10[0] = v4;
  v5 = HDUserDomainConceptEntityPredicateForConceptUUIDs();

  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 predicateMatchingAllPredicates:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 3;
  v4 = [*(a1 + 32) concepts];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke_2;
  v7[3] = &unk_2796CD648;
  v8 = v3;
  v5 = v3;
  [v4 hk_removeObjectsPassingTest:v7];

  [*(a1 + 32) addConcepts:v5];
  return 1;
}

uint64_t __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[cloudState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[localState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)updateCodableSyncState:withMergeState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[mergeState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)persistCloudState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[codableCloudState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

@end