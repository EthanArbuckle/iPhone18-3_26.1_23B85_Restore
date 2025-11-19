@interface HDDatabasePruningShowShim
+ (BOOL)canPerformRecentRecordRollWithProfile:(id)a3;
+ (BOOL)datesMatchSampleStartDate:(id)a3 sampleEndDate:(id)a4 shardStartDate:(id)a5 shardEndDate:(id)a6;
+ (id)_instantiateStores:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_persistentIDForSyncIdentity:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_syncStoresInProfile:(id)a3 error:(id *)a4;
+ (id)activeStoresForMaxAnchorWithProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5;
+ (id)activeStoresForRestrictionPredicatesWithProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5;
+ (id)deletedSampleInProfile:(id)a3 sampleUUID:(id)a4 error:(id *)a5;
+ (id)deletedSampleSyncEntityClassName;
+ (id)deletedSampleSyncEntityIdentifier;
+ (id)deletedSamplesInProfile:(id)a3 anchor:(int64_t)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (id)deletedSamplesInProfile:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(unint64_t)a6 error:(id *)a7;
+ (id)entitiesInProfile:(id)a3 referenceDate:(id)a4 shouldIncludeEntity:(id)a5 error:(id *)a6;
+ (id)syncIdentitiesInProfile:(id)a3 error:(id *)a4;
+ (id)syncStoresInProfile:(id)a3 shouldIncludeEntityIdentifier:(id)a4 error:(id *)a5;
+ (int64_t)currentSyncIdentityWithProfile:(id)a3;
@end

@implementation HDDatabasePruningShowShim

+ (BOOL)canPerformRecentRecordRollWithProfile:(id)a3
{
  v3 = [a3 cloudSyncManager];
  v4 = [v3 canPerformRecentRecordRoll];

  return v4;
}

+ (int64_t)currentSyncIdentityWithProfile:(id)a3
{
  v3 = [a3 syncIdentityManager];
  v4 = [v3 currentSyncIdentity];
  v5 = [v4 entity];
  v6 = [v5 persistentID];

  return v6;
}

+ (id)deletedSampleSyncEntityClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)deletedSampleSyncEntityIdentifier
{
  v2 = objc_opt_class();

  return [v2 syncEntityIdentifier];
}

+ (id)activeStoresForRestrictionPredicatesWithProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5
{
  v11 = 0;
  v6 = [HDSyncStoreEntity activeStoresForRestrictionPredictePruningInProfile:a3 referenceDate:a4 error:&v11];
  v7 = v11;
  if (v7)
  {
    if (a5)
    {
      v8 = v7;
      v9 = 0;
      *a5 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = [v6 hk_mapToSet:&__block_literal_global_81];
  }

  return v9;
}

+ (id)activeStoresForMaxAnchorWithProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5
{
  v11 = 0;
  v6 = [HDSyncStoreEntity activeStoresForMaxAnchorPruningInProfile:a3 referenceDate:a4 error:&v11];
  v7 = v11;
  if (v7)
  {
    if (a5)
    {
      v8 = v7;
      v9 = 0;
      *a5 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (id)syncIdentitiesInProfile:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 syncIdentityManager];

  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HDDatabasePruningShowShim_syncIdentitiesInProfile_error___block_invoke;
  v16[3] = &unk_27861EC18;
  v9 = v7;
  v17 = v9;
  v10 = [v8 enumerateConcreteIdentitiesError:&v18 enumerationHandler:v16];
  v11 = v18;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __59__HDDatabasePruningShowShim_syncIdentitiesInProfile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [HDDatabasePruningShowSyncIdentity alloc];
  v5 = [v3 entity];
  v6 = [v5 persistentID];
  v7 = [v3 identity];
  v8 = [v7 hardwareIdentifier];
  v9 = [v3 identity];
  v10 = [v9 databaseIdentifier];
  v11 = [v3 identity];

  v12 = [v11 instanceDiscriminator];
  v13 = [(HDDatabasePruningShowSyncIdentity *)v4 initWithPersistentID:v6 hardwareIdentifier:v8 databaseIdentifier:v10 instanceDiscriminator:v12];
  [v2 addObject:v13];

  return 1;
}

+ (id)_syncStoresInProfile:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 database];

  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke;
  v16[3] = &unk_278616048;
  v9 = v7;
  v17 = v9;
  v10 = [(HDHealthEntity *)HDSyncStoreEntity performReadTransactionWithHealthDatabase:v8 error:&v18 block:v16];
  v11 = v18;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  return v12;
}

BOOL __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke_2;
  v10[3] = &unk_27861EC40;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = [(HDSQLiteEntity *)HDSyncStoreEntity enumerateEntitiesInDatabase:v7 predicate:0 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 UUIDForProperty:@"uuid" database:v3];
  v6 = [v4 numberForProperty:@"type" database:*(a1 + 32)];
  v7 = [v4 dateForProperty:@"creation_date" database:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = [HDDatabasePruningShowSyncStore alloc];
  v10 = [v4 persistentID];

  v11 = [(HDDatabasePruningShowSyncStore *)v9 initWithPersistentID:v10 identifier:v5 type:v6 creationDate:v7];
  [v8 addObject:v11];

  return 1;
}

+ (id)_persistentIDForSyncIdentity:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__77;
  v28 = __Block_byref_object_dispose__77;
  v29 = 0;
  v9 = [v8 database];
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDDatabasePruningShowShim__persistentIDForSyncIdentity_profile_error___block_invoke;
  v19[3] = &unk_278615F88;
  v10 = v8;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v22 = &v24;
  v12 = [(HDHealthEntity *)HDSyncStoreEntity performReadTransactionWithHealthDatabase:v9 error:&v23 block:v19];
  v13 = v23;

  if (v12)
  {
    v14 = v25[5];
  }

  else
  {
    v15 = v13;
    v16 = v15;
    if (v15)
    {
      if (a5)
      {
        v17 = v15;
        *a5 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

BOOL __72__HDDatabasePruningShowShim__persistentIDForSyncIdentity_profile_error___block_invoke(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 syncIdentityManager];
  v8 = [v7 concreteIdentityForIdentity:a1[5] shouldCreate:0 transaction:v6 error:a3];

  v9 = *a3;
  if (!*a3 && v8)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v8 entity];
    v12 = [v10 numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return v9 == 0;
}

+ (id)_instantiateStores:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__77;
  v25 = __Block_byref_object_dispose__77;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__HDDatabasePruningShowShim__instantiateStores_profile_error___block_invoke;
  v18[3] = &unk_27861EC68;
  v20 = &v21;
  v9 = v8;
  v19 = v9;
  v10 = [v7 hk_map:v18];
  v11 = v10;
  v12 = v22[5];
  if (v12)
  {
    v13 = v12;
    v14 = v13;
    if (a5)
    {
      v15 = v13;
      *a5 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }

    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

id __62__HDDatabasePruningShowShim__instantiateStores_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40) && (v7 = HDSyncStoreClassForSyncStoreType([v3 type])) != 0 && objc_msgSend(v7, "providesSamplePruningRestrictionPredicate"))
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v5 = HDInstantiateSyncStore(v8, v4, &obj);
    objc_storeStrong((v9 + 40), obj);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)syncStoresInProfile:(id)a3 shouldIncludeEntityIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__77;
  v56 = __Block_byref_object_dispose__77;
  v57 = 0;
  obj = 0;
  v10 = [a1 _syncStoresInProfile:v8 error:&obj];
  objc_storeStrong(&v57, obj);
  v12 = (v53 + 5);
  v11 = v53[5];
  if (v11)
  {
    v13 = v11;
    v14 = v13;
    if (a5)
    {
      v15 = v13;
      v16 = 0;
      *a5 = v14;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  else
  {
    v50 = 0;
    v14 = [HDSyncAnchorEntity latestFrozenAnchorUpdatePerStoreInProfile:v8 error:&v50];
    objc_storeStrong(v12, v50);
    v18 = (v53 + 5);
    v17 = v53[5];
    if (v17)
    {
      v19 = v17;
      v20 = v19;
      if (a5)
      {
        v21 = v19;
        v16 = 0;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }

    else
    {
      v49 = 0;
      v20 = [HDSyncAnchorEntity frozenAnchorMapPerStoreInProfile:v8 error:&v49];
      objc_storeStrong(v18, v49);
      v22 = v53[5];
      if (v22)
      {
        v23 = v22;
        v24 = v23;
        if (a5)
        {
          v25 = v23;
          v16 = 0;
          *a5 = v24;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }
      }

      else
      {
        v24 = [v10 hk_map:&__block_literal_global_439];
        v26 = (v53 + 5);
        v48 = v53[5];
        v39 = [a1 _instantiateStores:v24 profile:v8 error:&v48];
        objc_storeStrong(v26, v48);
        v27 = v53[5];
        if (v27)
        {
          v28 = v27;
          v29 = v28;
          if (a5)
          {
            v30 = v28;
            v16 = 0;
            *a5 = v29;
          }

          else
          {
            _HKLogDroppedError();
            v16 = 0;
          }
        }

        else
        {
          v31 = [v39 hk_mapToDictionary:&__block_literal_global_443];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_3;
          v40[3] = &unk_27861ECF8;
          v46 = &v52;
          v29 = v31;
          v41 = v29;
          v47 = a1;
          v42 = v8;
          v43 = v20;
          v45 = v9;
          v44 = v14;
          v32 = [v10 hk_map:v40];
          v33 = v32;
          v34 = v53[5];
          if (v34)
          {
            v35 = v34;
            v36 = v35;
            if (a5)
            {
              v37 = v35;
              *a5 = v36;
            }

            else
            {
              _HKLogDroppedError();
            }

            v16 = 0;
          }

          else
          {
            v16 = v32;
          }
        }
      }
    }
  }

  _Block_object_dispose(&v52, 8);

  return v16;
}

HDTypedSyncStoreIdentifier *__85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDTypedSyncStoreIdentifier alloc];
  v4 = [v2 identifier];
  v5 = [v2 type];

  v6 = -[HDTypedSyncStoreIdentifier initWithIdentifier:type:](v3, "initWithIdentifier:type:", v4, [v5 integerValue]);

  return v6;
}

void __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 syncStoreIdentifier];
  (a3)[2](v5, v7, v6);
}

HDDatabasePruningShowSyncStore *__85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[9] + 8) + 40))
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = a1[4];
  v7 = [v3 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v41 = 0;
    v35 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v9 syncIdentity];

  if (!v10)
  {
    v37 = 0;
LABEL_11:
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "_isSupportedShardTypeForRestrictionPredicates")}];
    v17 = [v9 cachedCurrentSequenceEpochs];
    v41 = [v17 activeEpoch];

    v18 = [v9 cachedCurrentSequenceEpochs];
    v40 = [v18 pendingEpoch];

    v19 = [v9 cachedCurrentSequenceEpochs];
    v35 = [v19 tombstoneEpoch];

    v38 = v16;
LABEL_12:
    v20 = a1[6];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "persitentID")}];
    v22 = [v20 objectForKeyedSubscript:v21];

    v39 = v8;
    if (v22)
    {
      v23 = a1[8];
      if (v23)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_4;
        v42[3] = &unk_27861ECD0;
        v43 = v23;
        v24 = [v22 hk_filter:v42];

        v22 = v24;
      }
    }

    v34 = [HDDatabasePruningShowSyncStore alloc];
    v25 = v4;
    v33 = [v4 persitentID];
    v26 = [v4 identifier];
    v27 = [v25 type];
    v28 = [v25 creationDate];
    v29 = a1[7];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "persitentID")}];
    v31 = [v29 objectForKeyedSubscript:v30];
    v36 = v25;
    v15 = v37;
    v9 = v38;
    v5 = [(HDDatabasePruningShowSyncStore *)v34 initWithPersistentID:v33 identifier:v26 type:v27 creationDate:v28 latestFrozenAnchorDate:v31 frozenAnchorMap:v22 syncIdentity:v37 isSupportedShardType:v38 activeEpoch:v41 pendingEpoch:v40 tombstoneEpoch:v35];

    v4 = v36;
    v8 = v39;
    goto LABEL_16;
  }

  v11 = a1[10];
  v12 = [v9 syncIdentity];
  v13 = a1[5];
  v14 = *(a1[9] + 8);
  v44[0] = *(v14 + 40);
  v15 = [v11 _persistentIDForSyncIdentity:v12 profile:v13 error:v44];
  objc_storeStrong((v14 + 40), v44[0]);

  if (!*(*(a1[9] + 8) + 40))
  {
    v37 = v15;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_16:

LABEL_17:

  return v5;
}

+ (id)entitiesInProfile:(id)a3 referenceDate:(id)a4 shouldIncludeEntity:(id)a5 error:(id *)a6
{
  v89 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[HDDatabasePruningTask alloc] initWithProfile:v10];
  v14 = [(HDDatabasePruningTask *)v13 _untypedEntityClasses];
  v86 = 0;
  v15 = [a1 _syncStoresInProfile:v10 error:&v86];
  v16 = v86;
  if (v16)
  {
    v17 = v16;
    if (a6)
    {
      v18 = v16;
      v19 = 0;
      *a6 = v17;
    }

    else
    {
      _HKLogDroppedError();
      v19 = 0;
    }
  }

  else
  {
    v72 = a6;
    v20 = [v15 hk_map:&__block_literal_global_449];
    v85 = 0;
    v73 = [a1 _instantiateStores:v20 profile:v10 error:&v85];
    v21 = v85;
    if (v21)
    {
      v17 = v21;
      if (v72)
      {
        v22 = v21;
        v19 = 0;
        *v72 = v17;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v84 = 0;
      v71 = [(HDDatabasePruningTask *)v13 _minimumFrozenAnchorMapForPruningDate:v11 error:&v84];
      v23 = v84;
      if (v23)
      {
        v17 = v23;
        if (v72)
        {
          v24 = v23;
          v19 = 0;
          *v72 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }
      }

      else
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        obj = v14;
        v64 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
        if (v64)
        {
          v25 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
          v26 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
          v27 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
          v67 = *v81;
          v55 = v14;
          v56 = v11;
          v59 = v12;
          v53 = v20;
          v54 = v15;
          do
          {
            v28 = 0;
            v66 = v25[193];
            v60 = v26[196];
            v65 = v27[194];
            v29 = v64;
            v30 = v67;
            do
            {
              if (*v81 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v80 + 1) + 8 * v28);
              v32 = NSStringFromClass(v31);
              if (!v12 || v12[2](v12, v32))
              {
                if (objc_opt_respondsToSelector())
                {
                  v33 = 1;
                }

                else
                {
                  v33 = objc_opt_respondsToSelector();
                }

                v69 = objc_opt_respondsToSelector();
                v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
                if ([(objc_class *)v31 conformsToProtocol:&unk_283CCCD88])
                {
                  v57 = v33;
                  v58 = v28;
                  v63 = v32;
                  v62 = [(objc_class *)v31 syncEntityIdentifier];
                  v61 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v71, "anchorForSyncEntityClass:", v31)}];
                  v76 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  v34 = v73;
                  v35 = [v34 countByEnumeratingWithState:&v76 objects:v87 count:16];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = *v77;
                    while (2)
                    {
                      for (i = 0; i != v36; ++i)
                      {
                        if (*v77 != v37)
                        {
                          objc_enumerationMutation(v34);
                        }

                        v39 = *(*(&v76 + 1) + 8 * i);
                        if ([v39 providesSamplePruningRestrictionPredicate])
                        {
                          v75 = 0;
                          v40 = [v39 samplePruningRestrictionPredicateForSyncEntity:v31 error:&v75];
                          v41 = v75;
                          if (v41)
                          {
                            v17 = v41;
                            if (v72)
                            {
                              v50 = v41;
                              *v72 = v17;
                            }

                            else
                            {
                              _HKLogDroppedError();
                            }

                            v14 = v55;
                            v11 = v56;
                            v12 = v59;
                            v20 = v53;
                            v15 = v54;

                            v19 = 0;
                            v49 = v68;
                            goto LABEL_46;
                          }

                          if (v40)
                          {
                            v42 = [v39 syncStoreIdentifier];
                            [v74 setObject:v40 forKey:v42];
                          }
                        }
                      }

                      v36 = [v34 countByEnumeratingWithState:&v76 objects:v87 count:16];
                      if (v36)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v28 = v58;
                  v12 = v59;
                  v32 = v63;
                  v29 = v64;
                  v44 = v61;
                  v43 = v62;
                  v33 = v57;
                }

                else
                {
                  v43 = 0;
                  v44 = 0;
                }

                v45 = [[HDDatabasePruningShowEntity alloc] initWithClassName:v32 identifier:v43 supportsPruning:v33 & 1 supportsPruningRestrictionPredicates:v69 & 1 maximumPruningAnchor:v44 pruningRestrictionPredicates:v74];
                v46 = v43;
                v47 = v45;
                [v68 addObject:v45];

                v30 = v67;
              }

              ++v28;
            }

            while (v28 != v29);
            v48 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
            v14 = v55;
            v11 = v56;
            v20 = v53;
            v15 = v54;
            v25 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
            v26 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
            v64 = v48;
            v27 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
          }

          while (v48);
        }

        v49 = v68;
        v19 = v68;
        v17 = 0;
LABEL_46:
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];

  return v19;
}

HDTypedSyncStoreIdentifier *__87__HDDatabasePruningShowShim_entitiesInProfile_referenceDate_shouldIncludeEntity_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDTypedSyncStoreIdentifier alloc];
  v4 = [v2 identifier];
  v5 = [v2 type];

  v6 = -[HDTypedSyncStoreIdentifier initWithIdentifier:type:](v3, "initWithIdentifier:type:", v4, [v5 integerValue]);

  return v6;
}

+ (id)deletedSampleInProfile:(id)a3 sampleUUID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__77;
  v17 = __Block_byref_object_dispose__77;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDDatabasePruningShowShim_deletedSampleInProfile_sampleUUID_error___block_invoke;
  v12[3] = &unk_27861ED20;
  v12[4] = &v13;
  if ([HDDeletedSampleEntity deletedSampleInProfile:v7 sampleUUID:v8 error:a5 handler:v12])
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __69__HDDatabasePruningShowShim_deletedSampleInProfile_sampleUUID_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

+ (id)deletedSamplesInProfile:(id)a3 anchor:(int64_t)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v9 = MEMORY[0x277CBEB18];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HDDatabasePruningShowShim_deletedSamplesInProfile_anchor_limit_error___block_invoke;
  v16[3] = &unk_27861ED48;
  v17 = v11;
  v12 = v11;
  LODWORD(a6) = [HDDeletedSampleEntity enumerateDeletedSamplesInProfile:v10 anchor:a4 limit:a5 error:a6 handler:v16];

  if (a6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

void __72__HDDatabasePruningShowShim_deletedSamplesInProfile_anchor_limit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  [v12 addObject:v17];
}

+ (id)deletedSamplesInProfile:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v11 = MEMORY[0x277CBEB18];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HDDatabasePruningShowShim_deletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error___block_invoke;
  v20[3] = &unk_27861ED48;
  v21 = v15;
  v16 = v15;
  LODWORD(a7) = [HDDeletedSampleEntity enumerateDeletedSamplesInProfile:v14 createdOnOrAfter:v13 createdBefore:v12 limit:a6 error:a7 handler:v20];

  if (a7)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

void __96__HDDatabasePruningShowShim_deletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  [v12 addObject:v17];
}

+ (BOOL)datesMatchSampleStartDate:(id)a3 sampleEndDate:(id)a4 shardStartDate:(id)a5 shardEndDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [HDCloudSyncStore shardIntervalWithStartDate:a5 endDate:a6];
  v12 = v11;
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if ((v14 & 1) == 0 && v11)
  {
    [v9 timeIntervalSince1970];
    v17 = v16;
    v18 = [v12 endDate];
    [v18 timeIntervalSince1970];
    if (v17 <= v19)
    {
      [v9 timeIntervalSince1970];
      v21 = v20;
      v22 = [v12 startDate];
      v23 = [v22 dateByAddingTimeInterval:-*MEMORY[0x277CCCD58]];
      [v23 timeIntervalSince1970];
      if (v21 >= v24)
      {
        [v10 timeIntervalSince1970];
        v26 = v25;
        v27 = [v12 startDate];
        [v27 timeIntervalSince1970];
        v15 = v26 >= v28;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end