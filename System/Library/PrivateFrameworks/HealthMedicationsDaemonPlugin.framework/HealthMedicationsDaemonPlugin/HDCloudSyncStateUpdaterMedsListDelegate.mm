@interface HDCloudSyncStateUpdaterMedsListDelegate
+ (id)_medsListOrderingTerms;
+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:;
+ (uint64_t)_fetchPersistedMedsList:(void *)list profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_persistCloudState:(void *)state profile:(uint64_t)profile error:;
- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error;
- (NSString)description;
- (id)_mergeCloudList:(void *)list localList:;
- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error;
@end

@implementation HDCloudSyncStateUpdaterMedsListDelegate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  domain = [(HDCloudSyncStateUpdaterMedsListDelegate *)self domain];
  v6 = [(HDCloudSyncStateUpdaterMedsListDelegate *)self key];
  v7 = [v3 stringWithFormat:@"[%@:%p (%@, %@)]", v4, self, domain, v6];

  return v7;
}

+ (uint64_t)_fetchPersistedMedsList:(void *)list profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v30 = *MEMORY[0x277D85DE8];
  listCopy = list;
  profileCopy = profile;
  v10 = objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v11 = MEMORY[0x277D10950];
  objc_opt_self();
  v12 = [MEMORY[0x277D10938] predicateForListUserDomainConceptWithType:2];
  v13 = +[HDCloudSyncStateUpdaterMedsListDelegate _medsListOrderingTerms];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__HDCloudSyncStateUpdaterMedsListDelegate__fetchPersistedMedsList_profile_transaction_error___block_invoke;
  v19[3] = &unk_2796CD200;
  v19[4] = &v20;
  v14 = [v11 enumerateCodableObjectsForPredicate:v12 limit:1 orderingTerms:v13 profile:listCopy transaction:profileCopy error:transaction handler:v19];

  if (v14)
  {
    _HKInitializeLogging();
    v15 = HKLogMedication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v21[5])
      {
        v16 = @"non-nil";
      }

      else
      {
        v16 = @"nil";
      }

      *buf = 138543618;
      v27 = v10;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch %@ local meds list for state sync", buf, 0x16u);
    }

    if (a2)
    {
      *a2 = v21[5];
    }
  }

  _Block_object_dispose(&v20, 8);

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v8 = objc_opt_self();
  v17 = 0;
  v9 = [stateCopy decodedObjectOfClass:objc_opt_class() version:0 decodedObject:&v17 error:profile];

  v10 = v17;
  v11 = 0;
  if (v9)
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"non-nil";
      if (!v10)
      {
        v13 = @"nil";
      }

      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode %@ cloud meds list for state sync", buf, 0x16u);
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

- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error
{
  cloudStateCopy = cloudState;
  localStateCopy = localState;
  profileCopy = profile;
  transactionCopy = transaction;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16 = cloudStateCopy;
  v17 = profileCopy;
  v18 = localStateCopy;
  HKWithAutoreleasePool();
  if (state)
  {
    *state = v22[5];
  }

  if (v32[3])
  {
    v19 = 3;
  }

  else if (*(v28 + 24))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v19;
}

uint64_t __119__HDCloudSyncStateUpdaterMedsListDelegate_shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD580] createWithCodableConcept:a1[4] profile:a1[5]];
  v3 = [MEMORY[0x277CCD580] createWithCodableConcept:a1[6] profile:a1[5]];
  v4 = [(HDCloudSyncStateUpdaterMedsListDelegate *)a1[7] _mergeCloudList:v2 localList:v3];
  v5 = v4;
  if (v4 != v2)
  {
    v6 = a1[8];
LABEL_10:
    *(*(v6 + 8) + 24) = 1;
    goto LABEL_11;
  }

  v7 = [v4 linkCollection];
  v8 = [v3 linkCollection];
  v9 = v8;
  if (v7 != v8)
  {
    v10 = [v3 linkCollection];
    if (v10)
    {
      v11 = v10;
      v12 = [v5 linkCollection];
      v13 = [v3 linkCollection];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = a1[9];
    goto LABEL_10;
  }

LABEL_11:
  if ((*(*(a1[8] + 8) + 24) & 1) != 0 || *(*(a1[9] + 8) + 24) == 1)
  {
    _HKInitializeLogging();
    v15 = HKLogMedication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[7];
      v22 = 138544130;
      v23 = v16;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v3;
      v28 = 2114;
      v29 = v2;
      _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: result %{public}@ from merging %{public}@ and %{public}@", &v22, 0x2Au);
    }

    v17 = [v5 codableRepresentationForSyncWithProfile:a1[5]];
    v18 = *(a1[10] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  mergeStateCopy = mergeState;
  stateCopy = state;
  _HKInitializeLogging();
  v12 = HKLogMedication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set meds list in cloud state for state sync", &v15, 0xCu);
  }

  [stateCopy setCodableObject:mergeStateCopy version:0 profile:profileCopy];
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (uint64_t)_persistCloudState:(void *)state profile:(uint64_t)profile error:
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v7 = a2;
  v8 = objc_opt_self();
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist meds list for state sync", buf, 0xCu);
  }

  v10 = MEMORY[0x277D10950];
  v15 = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 receiveSyncObjects:v11 version:objc_msgSend(MEMORY[0x277D10950] syncProvenance:"supportedSyncVersionRange") profile:0 error:{stateCopy, profile}];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_medsListOrderingTerms
{
  v5[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = objc_alloc(MEMORY[0x277D10B68]);
  v1 = [v0 initWithExpression:*MEMORY[0x277D10528] ascending:0];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_mergeCloudList:(void *)list localList:
{
  v5 = a2;
  listCopy = list;
  if (self)
  {
    v7 = v5;
    v8 = listCopy;
    modificationDate = [v8 modificationDate];
    [modificationDate timeIntervalSinceReferenceDate];
    v11 = v10;
    modificationDate2 = [v7 modificationDate];
    [modificationDate2 timeIntervalSinceReferenceDate];
    v14 = v13;

    if (v11 > v14)
    {

      v15 = v7;
      v7 = v8;
      v8 = v15;
    }

    v16 = [v7 copyUserDomainConceptByMergingInConcept:v8];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end