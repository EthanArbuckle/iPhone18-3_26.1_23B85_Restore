@interface HDCloudSyncStore
+ (id)_syncStoreForProfile:(void *)a3 storeIdentifier:(void *)a4 ownerIdentifier:(void *)a5 syncIdentity:(void *)a6 containerIdentifier:(void *)a7 shardPredicate:(void *)a8 creationDate:(uint64_t)a9 error:;
+ (id)createOrUpdateShardStoresForProfile:(id)a3 throughDate:(id)a4 ownerIdentifier:(id)a5 containerIdentifier:(id)a6 syncIdentity:(id)a7 error:(id *)a8;
+ (id)shardIntervalWithStartDate:(id)a3 endDate:(id)a4;
+ (id)shardPredicatesForProfile:(id)a3 currentDate:(id)a4 error:(id *)a5;
+ (id)syncStoreForProfile:(id)a3 storeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_isSupportedShardTypeForRestrictionPredicates;
- (BOOL)canRecieveSyncObjectsForEntityClass:(Class)a3;
- (BOOL)clearAllSyncAnchorsWithError:(id *)a3;
- (BOOL)persistState:(id)a3 error:(id *)a4;
- (BOOL)providesSamplePruningRestrictionPredicate;
- (BOOL)replaceFrozenAnchorMap:(id)a3 updateDate:(id)a4 error:(id *)a5;
- (BOOL)replacePersistedAnchorMap:(id)a3 error:(id *)a4;
- (BOOL)resetReceivedSyncAnchorMapWithError:(id *)a3;
- (BOOL)shouldContinueAfterAnchorValidationError:(id)a3;
- (HDCloudSyncStore)init;
- (HDProfile)profile;
- (NSString)description;
- (id)_initWithProfile:(void *)a3 storeIdentifier:(void *)a4 ownerIdentifier:(void *)a5 syncIdentity:(void *)a6 containerIdentifier:(void *)a7 shardPredicate:(void *)a8 provenance:(void *)a9 syncEpoch:(void *)a10 excludedSyncIdentities:(void *)a11 currentEpochs:;
- (id)_requiredSyncEntitiesForSupportedSyncEntities:(id)a1;
- (id)_supportedSyncEntities;
- (id)_syncAnchorMapByStrippingBlockedEntities:(id)a3;
- (id)_syncEntityDependencyIdentifiersForEntity:(void *)a1;
- (id)_tombstoneEntities;
- (id)copyWithZone:(_NSZone *)a3;
- (id)databaseIdentifier;
- (id)getPersistedAnchorMapWithError:(id *)a3;
- (id)orderedSyncEntities;
- (id)persistedStateWithError:(id *)a3;
- (id)primaryOrderedSyncEntities;
- (id)receivedSyncAnchorMapWithError:(id *)a3;
- (id)samplePruningRestrictionPredicateForSyncEntity:(Class)a3 error:(id *)a4;
- (id)syncEntityDependenciesForSyncEntity:(Class)a3;
- (id)syncStoreForEpoch:(int64_t)a3;
- (id)syncStoreForProtocolVersion:(int)a3;
- (id)syncStoreForTombstoneSyncOnly:(BOOL)a3;
@end

@implementation HDCloudSyncStore

+ (id)_syncStoreForProfile:(void *)a3 storeIdentifier:(void *)a4 ownerIdentifier:(void *)a5 syncIdentity:(void *)a6 containerIdentifier:(void *)a7 shardPredicate:(void *)a8 creationDate:(uint64_t)a9 error:
{
  v15 = a2;
  v16 = a3;
  v33 = a4;
  v35 = a5;
  v17 = a6;
  v34 = a7;
  v18 = a8;
  objc_opt_self();
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__139;
  v72 = __Block_byref_object_dispose__139;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__139;
  v66 = __Block_byref_object_dispose__139;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__139;
  v60 = __Block_byref_object_dispose__139;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__139;
  v54 = __Block_byref_object_dispose__139;
  v55 = 0;
  v19 = [v15 database];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __140__HDCloudSyncStore__syncStoreForProfile_storeIdentifier_ownerIdentifier_syncIdentity_containerIdentifier_shardPredicate_creationDate_error___block_invoke;
  v37[3] = &unk_278626410;
  v20 = v16;
  v38 = v20;
  v32 = v18;
  v39 = v32;
  v21 = v15;
  v40 = v21;
  v45 = &v74;
  v22 = v33;
  v41 = v22;
  v23 = v17;
  v42 = v23;
  v24 = v35;
  v43 = v24;
  v36 = v34;
  v44 = v36;
  v46 = &v68;
  v47 = &v62;
  v48 = &v56;
  v49 = &v50;
  v25 = [(HDHealthEntity *)HDSyncStoreEntity performWriteTransactionWithHealthDatabase:v19 error:a9 block:v37];

  if (v25)
  {
    v26 = [HDCloudSyncStore alloc];
    v27 = v69[5];
    v28 = v75[3];
    v29 = [v63[5] baselineEpoch];
    v30 = [(HDCloudSyncStore *)&v26->super.isa _initWithProfile:v21 storeIdentifier:v20 ownerIdentifier:v22 syncIdentity:v24 containerIdentifier:v23 shardPredicate:v27 provenance:v28 syncEpoch:v29 excludedSyncIdentities:v57[5] currentEpochs:v51[5]];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);

  return v30;
}

uint64_t __140__HDCloudSyncStore__syncStoreForProfile_storeIdentifier_ownerIdentifier_syncIdentity_containerIdentifier_shardPredicate_creationDate_error___block_invoke(uint64_t a1, void *a2, HDCloudSyncStoreEntity **a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) database];
  v9 = [HDSyncStoreEntity syncStoreEntityWithUUID:v6 type:2 creationDate:v7 healthDatabase:v8 error:a3];

  if (v9)
  {
    *(*(*(a1 + 88) + 8) + 24) = [v9 syncProvenance];
    LODWORD(v37) = 17;
    v10 = [[_HDCloudSyncStorePersistableState alloc] initWithServerChangeToken:0 baselineEpoch:0 rebaseDeadline:0 lastSyncDate:0 emptyZones:0 lastCheckDate:0 ownerIdentifier:*(a1 + 56) containerIdentifier:*(a1 + 64) syncIdentity:*(a1 + 72) syncProtocolVersion:v37];
    v11 = *(a1 + 32);
    v12 = [*(a1 + 48) database];
    LODWORD(v11) = [HDCloudSyncStoreEntity persistState:v10 storeUUID:v11 shouldReplace:0 healthDatabase:v12 error:a3];

    v13 = 0;
    if (!v11)
    {
LABEL_23:

      goto LABEL_24;
    }

    if (!*(a1 + 80))
    {
LABEL_9:
      v18 = *(a1 + 32);
      v19 = [v5 databaseForEntityClass:objc_opt_class()];
      v40 = 0;
      v20 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:v18 database:v19 error:&v40];
      v21 = v40;
      v22 = *(*(a1 + 104) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v20;

      if (!*(*(*(a1 + 104) + 8) + 40))
      {
        v14 = v21;
        if (v14)
        {
          if (a3)
          {
            v30 = v14;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_22;
      }

      v24 = *(a1 + 32);
      v25 = [v5 databaseForEntityClass:objc_opt_class()];
      v39 = v21;
      v26 = [HDCloudSyncStoreEntity cachedExcludedSyncIdentitiesForStoreIdentifier:v24 database:v25 error:&v39];
      v14 = v39;

      v27 = *(*(a1 + 112) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      if (v14)
      {
        if (a3)
        {
LABEL_12:
          v29 = v14;
          *a3 = v14;
          goto LABEL_22;
        }
      }

      else
      {
        v31 = *(a1 + 32);
        v32 = [v5 databaseForEntityClass:objc_opt_class()];
        v38 = 0;
        v33 = [HDCloudSyncStoreEntity cachedEpochsForStoreIdentifier:v31 database:v32 error:&v38];
        v14 = v38;
        v34 = *(*(a1 + 120) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        if (!v14)
        {
          v13 = 1;
          goto LABEL_23;
        }

        if (a3)
        {
          goto LABEL_12;
        }
      }

      _HKLogDroppedError();
      goto LABEL_22;
    }

    v14 = -[HDSQLiteEntity initWithPersistentID:]([HDCloudSyncStoreEntity alloc], "initWithPersistentID:", [v9 persistentID]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __140__HDCloudSyncStore__syncStoreForProfile_storeIdentifier_ownerIdentifier_syncIdentity_containerIdentifier_shardPredicate_creationDate_error___block_invoke_2;
    v41[3] = &unk_2786263E8;
    v41[4] = *(a1 + 96);
    if ([(HDCloudSyncStoreEntity *)v14 fetchShardPropertiesInTransaction:v5 error:a3 handler:v41])
    {
      if ([*(a1 + 80) isEqual:*(*(*(a1 + 96) + 8) + 40)])
      {
LABEL_8:

        goto LABEL_9;
      }

      v15 = [*(a1 + 80) startDate];
      v16 = [*(a1 + 80) endDate];
      v17 = -[HDCloudSyncStoreEntity updateShardStartDate:endDate:type:transaction:error:](v14, "updateShardStartDate:endDate:type:transaction:error:", v15, v16, [*(a1 + 80) type], v5, a3);

      if (v17)
      {
        objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 80));
        goto LABEL_8;
      }
    }

LABEL_22:

    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

uint64_t __140__HDCloudSyncStore__syncStoreForProfile_storeIdentifier_ownerIdentifier_syncIdentity_containerIdentifier_shardPredicate_creationDate_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [[HDCloudSyncShardPredicate alloc] initForShardType:a4 startDate:v8 endDate:v7];

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return 1;
}

- (id)_initWithProfile:(void *)a3 storeIdentifier:(void *)a4 ownerIdentifier:(void *)a5 syncIdentity:(void *)a6 containerIdentifier:(void *)a7 shardPredicate:(void *)a8 provenance:(void *)a9 syncEpoch:(void *)a10 excludedSyncIdentities:(void *)a11 currentEpochs:
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v37 = a10;
  v23 = a11;
  if (a1)
  {
    v38.receiver = a1;
    v38.super_class = HDCloudSyncStore;
    v24 = objc_msgSendSuper2(&v38, sel_init);
    a1 = v24;
    if (v24)
    {
      objc_storeWeak(v24 + 10, v17);
      v25 = [v19 copy];
      v26 = a1[7];
      a1[7] = v25;

      v27 = [v21 copy];
      v28 = a1[8];
      a1[8] = v27;

      v29 = [v20 copy];
      v30 = a1[9];
      a1[9] = v29;

      v31 = [v22 copy];
      v32 = a1[11];
      a1[11] = v31;

      v33 = [v18 copy];
      v34 = a1[6];
      a1[6] = v33;

      *(a1 + 6) = 17;
      a1[1] = a8;
      a1[2] = a9;
      objc_storeStrong(a1 + 4, a10);
      objc_storeStrong(a1 + 12, a11);
    }
  }

  return a1;
}

+ (id)syncStoreForProfile:(id)a3 storeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__139;
  v49 = __Block_byref_object_dispose__139;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__139;
  v43 = __Block_byref_object_dispose__139;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__139;
  v37 = __Block_byref_object_dispose__139;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__139;
  v31 = __Block_byref_object_dispose__139;
  v32 = 0;
  v9 = [v7 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__HDCloudSyncStore_syncStoreForProfile_storeIdentifier_error___block_invoke;
  v20[3] = &unk_278626438;
  v10 = v8;
  v21 = v10;
  v22 = &v51;
  v23 = &v45;
  v24 = &v39;
  v25 = &v33;
  v26 = &v27;
  LOBYTE(a5) = [(HDHealthEntity *)HDSyncStoreEntity performReadTransactionWithHealthDatabase:v9 error:a5 block:v20];

  if (a5)
  {
    v11 = [HDCloudSyncStore alloc];
    v12 = [v40[5] ownerIdentifier];
    v13 = [v40[5] syncIdentity];
    v14 = [v40[5] containerIdentifier];
    v15 = v46[5];
    v16 = v52[3];
    v17 = [v40[5] baselineEpoch];
    v18 = [(HDCloudSyncStore *)&v11->super.isa _initWithProfile:v7 storeIdentifier:v10 ownerIdentifier:v12 syncIdentity:v13 containerIdentifier:v14 shardPredicate:v15 provenance:v16 syncEpoch:v17 excludedSyncIdentities:v34[5] currentEpochs:v28[5]];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);

  return v18;
}

uint64_t __62__HDCloudSyncStore_syncStoreForProfile_storeIdentifier_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [v5 databaseForEntityClass:objc_opt_class()];
  v8 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:v6 ofType:2 database:v7 error:a3];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = [v8 syncProvenance];
    v9 = -[HDSQLiteEntity initWithPersistentID:]([HDCloudSyncStoreEntity alloc], "initWithPersistentID:", [v8 persistentID]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__HDCloudSyncStore_syncStoreForProfile_storeIdentifier_error___block_invoke_2;
    v31[3] = &unk_2786263E8;
    v31[4] = a1[6];
    if (![(HDCloudSyncStoreEntity *)v9 fetchShardPropertiesInTransaction:v5 error:a3 handler:v31])
    {
      goto LABEL_12;
    }

    v10 = a1[4];
    v11 = [v5 databaseForEntityClass:objc_opt_class()];
    v12 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:v10 database:v11 error:a3];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!*(*(a1[7] + 8) + 40))
    {
      goto LABEL_12;
    }

    v15 = a1[4];
    v16 = [v5 databaseForEntityClass:objc_opt_class()];
    v30 = 0;
    v17 = [HDCloudSyncStoreEntity cachedExcludedSyncIdentitiesForStoreIdentifier:v15 database:v16 error:&v30];
    v18 = v30;
    v19 = *(a1[8] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    if (v18)
    {
      if (a3)
      {
LABEL_6:
        v21 = v18;
        *a3 = v18;
LABEL_11:

LABEL_12:
        v22 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1[4];
      v24 = [v5 databaseForEntityClass:objc_opt_class()];
      v29 = 0;
      v25 = [HDCloudSyncStoreEntity cachedEpochsForStoreIdentifier:v23 database:v24 error:&v29];
      v18 = v29;
      v26 = *(a1[9] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      if (!v18)
      {
        v22 = 1;
        goto LABEL_13;
      }

      if (a3)
      {
        goto LABEL_6;
      }
    }

    _HKLogDroppedError();
    goto LABEL_11;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

uint64_t __62__HDCloudSyncStore_syncStoreForProfile_storeIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [[HDCloudSyncShardPredicate alloc] initForShardType:a4 startDate:v8 endDate:v7];

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return 1;
}

- (HDCloudSyncStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)shardPredicatesForProfile:(id)a3 currentDate:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v6 daemon];
  v10 = [v9 behavior];
  v11 = [v10 supportsCloudSyncStagingShard];

  if (v11)
  {
    v12 = [[HDCloudSyncShardPredicate alloc] initForShardType:2 startDate:0 endDate:0];
    [v8 addObject:v12];
  }

  v13 = [[HDCloudSyncShardPredicate alloc] initForShardType:0 startDate:0 endDate:0];
  [v8 addObject:v13];

  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:473299200.0];
  v15 = [[HDCloudSyncShardPredicate alloc] initForShardType:1 startDate:0 endDate:v14];
  [v8 addObject:v15];

  v16 = v14;
  v17 = [v16 dateByAddingTimeInterval:15552000.0];
  if ([v17 hk_isBeforeDate:v7])
  {
    v18 = v16;
    do
    {
      v19 = [[HDCloudSyncShardPredicate alloc] initForShardType:1 startDate:v18 endDate:v17];
      [v8 addObject:v19];

      v20 = v17;
      v17 = [v20 dateByAddingTimeInterval:15552000.0];

      v18 = v20;
    }

    while (([v17 hk_isBeforeDate:v7] & 1) != 0);
  }

  else
  {
    v20 = v16;
  }

  v21 = [[HDCloudSyncShardPredicate alloc] initForShardType:1 startDate:v20 endDate:0];
  [v8 addObject:v21];

  return v8;
}

+ (id)createOrUpdateShardStoresForProfile:(id)a3 throughDate:(id)a4 ownerIdentifier:(id)a5 containerIdentifier:(id)a6 syncIdentity:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v14 daemon];
  v20 = [v19 behavior];
  v21 = [v20 supportsCloudSyncSharding];

  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = [v14 database];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __123__HDCloudSyncStore_createOrUpdateShardStoresForProfile_throughDate_ownerIdentifier_containerIdentifier_syncIdentity_error___block_invoke;
    v29[3] = &unk_278626488;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v14;
    v35 = v22;
    v36 = a1;
    v34 = v15;
    v24 = v22;
    v25 = [(HDHealthEntity *)HDCloudSyncStoreEntity performWriteTransactionWithHealthDatabase:v23 error:a8 block:v29];

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  return v27;
}

uint64_t __123__HDCloudSyncStore_createOrUpdateShardStoresForProfile_throughDate_ownerIdentifier_containerIdentifier_syncIdentity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __123__HDCloudSyncStore_createOrUpdateShardStoresForProfile_throughDate_ownerIdentifier_containerIdentifier_syncIdentity_error___block_invoke_2;
  v72[3] = &unk_278626460;
  v59 = v5;
  v73 = v59;
  v11 = v6;
  v74 = v11;
  v12 = v10;
  v13 = a3;
  v63 = v4;
  if (![HDCloudSyncStoreEntity enumerateShardsForOwnerIdentifier:v7 containerIdentifier:v8 syncIdentity:v9 profile:v12 transaction:v4 error:a3 handler:v72])
  {
    v51 = 0;
    v30 = v59;
    goto LABEL_41;
  }

  v60 = a1;
  v14 = *(a1 + 64);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v55 = v11;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v69;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v69 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v68 + 1) + 8 * i);
        v21 = [v20 startDate];
        v22 = [v21 hk_isAfterDate:v14];

        if (v22)
        {
          v23 = [v20 startDate];
        }

        else
        {
          v24 = [v20 endDate];
          v25 = [v24 hk_isAfterDate:v14];

          if (!v25)
          {
            continue;
          }

          v23 = [v20 endDate];
        }

        v26 = v23;

        v14 = v26;
      }

      v17 = [v15 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v17);
  }

  v27 = a1;
  v28 = [*(a1 + 80) shardPredicatesForProfile:*(a1 + 56) currentDate:v14 error:a3];
  v29 = v28;
  if (!v28)
  {
    v51 = 0;
    v30 = v59;
    v11 = v55;
    goto LABEL_40;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v28;
  v30 = v59;
  v11 = v55;
  v62 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (!v62)
  {
    v51 = 1;
    goto LABEL_39;
  }

  v61 = *v65;
  v54 = v29;
  while (2)
  {
    for (j = 0; j != v62; ++j)
    {
      if (*v65 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v64 + 1) + 8 * j);
      v33 = [v15 indexOfObject:v32];
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [HDCloudSyncShardPredicate alloc];
        v35 = [v32 type];
        v36 = [v32 startDate];
        v37 = [(HDCloudSyncShardPredicate *)v34 initForShardType:v35 startDate:v36 endDate:0];
        v38 = [v15 indexOfObject:v37];

        if (v38 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = *(v27 + 80);
          v40 = *(v27 + 56);
          v41 = [MEMORY[0x277CCAD78] UUID];
          v42 = [(HDCloudSyncStore *)v39 _syncStoreForProfile:v40 storeIdentifier:v41 ownerIdentifier:*(v27 + 32) syncIdentity:*(v27 + 48) containerIdentifier:*(v27 + 40) shardPredicate:v32 creationDate:0 error:v13];

          if (!v42)
          {
            goto LABEL_38;
          }

          [*(v27 + 72) addObject:v42];
          goto LABEL_30;
        }
      }

      else
      {
        v38 = v33;
      }

      v42 = [v30 objectAtIndexedSubscript:v38];
      v43 = [v42 storeUUIDInTransaction:v63 error:v13];
      if (!v43)
      {
        goto LABEL_37;
      }

      v44 = [v15 objectAtIndexedSubscript:v38];
      if (([v44 isEqual:v32] & 1) == 0)
      {
        v45 = [v32 startDate];
        [v32 endDate];
        v57 = v44;
        v47 = v46 = v13;
        v48 = [v42 updateShardStartDate:v45 endDate:v47 type:objc_msgSend(v32 transaction:"type") error:{v63, v46}];

        v13 = v46;
        v44 = v57;

        v30 = v59;
        if (!v48)
        {
          goto LABEL_36;
        }
      }

      v27 = v60;
      v49 = [(HDCloudSyncStore *)*(v60 + 80) _syncStoreForProfile:v43 storeIdentifier:*(v60 + 32) ownerIdentifier:*(v60 + 48) syncIdentity:*(v60 + 40) containerIdentifier:v32 shardPredicate:0 creationDate:v13 error:?];
      if (!v49)
      {
LABEL_36:

LABEL_37:
LABEL_38:
        v29 = v54;

        v51 = 0;
        v11 = v55;
        goto LABEL_39;
      }

      v50 = v49;
      [*(v60 + 72) addObject:v49];

LABEL_30:
    }

    v51 = 1;
    v29 = v54;
    v11 = v55;
    v62 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_39:

LABEL_40:
LABEL_41:

  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

uint64_t __123__HDCloudSyncStore_createOrUpdateShardStoresForProfile_throughDate_ownerIdentifier_containerIdentifier_syncIdentity_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = a3;
  [v9 addObject:a2];
  v12 = *(a1 + 40);
  v13 = [[HDCloudSyncShardPredicate alloc] initForShardType:a5 startDate:v11 endDate:v10];

  [v12 addObject:v13];
  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [HDCloudSyncStore alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [(NSUUID *)self->_storeIdentifier copy];
  v5 = [(NSString *)self->_ownerIdentifier copy];
  syncIdentity = self->_syncIdentity;
  v7 = [(NSString *)self->_containerIdentifier copy];
  v8 = [(HDCloudSyncShardPredicate *)self->_shardPredicate copy];
  syncProvenance = self->_syncProvenance;
  syncEpoch = self->_syncEpoch;
  v11 = [(NSSet *)self->_excludedSyncIdentities copy];
  v12 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs copy];
  v13 = [(HDCloudSyncStore *)&v16->super.isa _initWithProfile:v4 storeIdentifier:v5 ownerIdentifier:syncIdentity syncIdentity:v7 containerIdentifier:v8 shardPredicate:syncProvenance provenance:syncEpoch syncEpoch:v11 excludedSyncIdentities:v12 currentEpochs:?];

  *(v13 + 6) = self->_syncProtocolVersion;
  *(v13 + 40) = self->_syncTombstonesOnly;
  return v13;
}

- (id)syncStoreForEpoch:(int64_t)a3
{
  v4 = [(HDCloudSyncStore *)self copy];
  v4[2] = a3;

  return v4;
}

- (id)syncStoreForProtocolVersion:(int)a3
{
  if (self->_syncProtocolVersion < a3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStore.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"syncProtocolVersion <= _syncProtocolVersion"}];
  }

  v5 = [(HDCloudSyncStore *)self copy];
  v5[6] = a3;

  return v5;
}

- (id)syncStoreForTombstoneSyncOnly:(BOOL)a3
{
  v4 = [(HDCloudSyncStore *)self copy];
  v4[40] = a3;

  return v4;
}

- (id)receivedSyncAnchorMapWithError:(id *)a3
{
  v5 = objc_alloc_init(HDSyncAnchorMap);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LODWORD(a3) = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:v5 store:self profile:WeakRetained error:a3];

  if (a3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (BOOL)resetReceivedSyncAnchorMapWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a3) = [HDSyncAnchorEntity resetSyncAnchorsOfType:3 store:self profile:WeakRetained error:a3];

  return a3;
}

- (BOOL)replacePersistedAnchorMap:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a4) = [HDSyncAnchorEntity setAcknowledgedAnchorsWithMap:v6 store:self resetNext:1 resetInvalid:1 profile:WeakRetained error:a4];

  return a4;
}

- (BOOL)clearAllSyncAnchorsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a3) = [HDSyncAnchorEntity resetSyncStore:self profile:WeakRetained error:a3];

  return a3;
}

- (id)getPersistedAnchorMapWithError:(id *)a3
{
  v5 = objc_alloc_init(HDSyncAnchorMap);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LODWORD(a3) = [HDSyncAnchorEntity getSyncAnchorsOfType:0 anchorMap:v5 store:self profile:WeakRetained error:a3];

  if (a3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)_syncAnchorMapByStrippingBlockedEntities:(id)a3
{
  v22[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(HDSyncAnchorMap);
  v5 = [HDSyncEntityIdentifier identifierWithSchema:0 entity:107];
  v22[0] = v5;
  v6 = [HDSyncEntityIdentifier identifierWithSchema:0 entity:15];
  v22[1] = v6;
  v7 = [HDSyncEntityIdentifier identifierWithSchema:0 entity:20];
  v22[2] = v7;
  v8 = [HDSyncEntityIdentifier identifierWithSchema:0 entity:21];
  v22[3] = v8;
  v9 = [HDSyncEntityIdentifier identifierWithSchema:0 entity:57];
  v22[4] = v9;
  v10 = [HDSyncEntityIdentifier identifierWithSchema:@"ACHAchievementsPlugin" entity:1];
  v22[5] = v10;
  v11 = [HDSyncEntityIdentifier identifierWithSchema:@"ACHAchievementsPlugin" entity:2];
  v22[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__HDCloudSyncStore__syncAnchorMapByStrippingBlockedEntities___block_invoke;
  v19[3] = &unk_2786264B0;
  v20 = v12;
  v13 = v4;
  v21 = v13;
  v14 = v12;
  [v3 enumerateAnchorsAndEntityIdentifiersWithBlock:v19];

  v15 = v21;
  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void __61__HDCloudSyncStore__syncAnchorMapByStrippingBlockedEntities___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) setAnchor:a3 forSyncEntityIdentifier:v5];
  }
}

- (BOOL)persistState:(id)a3 error:(id *)a4
{
  storeIdentifier = self->_storeIdentifier;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  LOBYTE(a4) = [HDCloudSyncStoreEntity persistState:v7 storeUUID:storeIdentifier shouldReplace:1 healthDatabase:v9 error:a4];

  return a4;
}

- (id)persistedStateWithError:(id *)a3
{
  storeIdentifier = self->_storeIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:storeIdentifier profile:WeakRetained error:a3];

  return v6;
}

- (BOOL)replaceFrozenAnchorMap:(id)a3 updateDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDCloudSyncStore_replaceFrozenAnchorMap_updateDate_error___block_invoke;
  v15[3] = &unk_278615D40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  LOBYTE(a5) = [(HDHealthEntity *)HDSyncAnchorEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

BOOL __60__HDCloudSyncStore_replaceFrozenAnchorMap_updateDate_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  WeakRetained = objc_loadWeakRetained((v5 + 80));
  v7 = [HDSyncAnchorEntity resetSyncAnchorsOfType:2 store:v5 profile:WeakRetained error:a3];

  if (!v7)
  {
    return 0;
  }

  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  v11 = objc_loadWeakRetained((v10 + 80));
  v12 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v9 type:2 updateDate:v8 store:v10 updatePolicy:2 resetInvalid:1 profile:v11 error:a3];

  return v12;
}

- (id)databaseIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = 0;
  v4 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromProfile:WeakRetained error:&v10];
  v5 = v10;

  if (v4)
  {
    v6 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get database identifier: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)syncEntityDependenciesForSyncEntity:(Class)a3
{
  v3 = [(objc_class *)a3 syncEntityDependenciesForSyncProtocolVersion:17];
  if ([v3 containsObject:objc_opt_class()])
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v5 = [v3 hk_minus:v4];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (BOOL)canRecieveSyncObjectsForEntityClass:(Class)a3
{
  v4 = [(HDCloudSyncStore *)self orderedSyncEntities];
  LOBYTE(a3) = [v4 containsObject:a3];

  return a3;
}

- (id)_syncEntityDependencyIdentifiersForEntity:(void *)a1
{
  v2 = a1;
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a2 syncEntityDependenciesForSyncProtocolVersion:{objc_msgSend(a1, "protocolVersion")}];
    if ([v3 count])
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [v10 syncEntityIdentifier];
            [v4 addObject:v11];

            v12 = [(HDCloudSyncStore *)v2 _syncEntityDependencyIdentifiersForEntity:v10];
            [v4 addObjectsFromArray:v12];
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v2 = [v4 allObjects];
    }

    else
    {
      v2 = MEMORY[0x277CBEBF8];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_supportedSyncEntities
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 10);
    v3 = [WeakRetained syncEngine];
    v4 = [v3 allOrderedSyncEntities];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__HDCloudSyncStore__supportedSyncEntities__block_invoke;
    v6[3] = &unk_278623A30;
    v6[4] = v1;
    v1 = [v4 hk_filter:v6];
  }

  return v1;
}

uint64_t __42__HDCloudSyncStore__supportedSyncEntities__block_invoke(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);

  return [a2 supportsSyncStore:v4];
}

- (id)_tombstoneEntities
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3[0] = objc_opt_class();
    v3[1] = objc_opt_class();
    v3[2] = objc_opt_class();
    v3[3] = objc_opt_class();
    a1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  }

  v1 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)_requiredSyncEntitiesForSupportedSyncEntities:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = [(HDCloudSyncStore *)a1 _tombstoneEntities];
    }

    else if (*(a1 + 11))
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__HDCloudSyncStore__requiredSyncEntitiesForSupportedSyncEntities___block_invoke;
      v7[3] = &unk_278623A30;
      v7[4] = a1;
      v5 = [v3 hk_filter:v7];
    }

    else
    {
      v5 = v3;
    }

    a1 = v5;
  }

  return a1;
}

uint64_t __66__HDCloudSyncStore__requiredSyncEntitiesForSupportedSyncEntities___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 supportsDateBasedSharding];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [a2 supportsSyncToInitialShard];
  }

  else
  {
    v5 = v4 ^ 1;
  }

  v6 = [*(*(a1 + 32) + 88) type];
  if (v6 == 1)
  {
    return v4;
  }

  if (v6)
  {
    return 1;
  }

  return v5;
}

- (id)primaryOrderedSyncEntities
{
  v3 = [(HDCloudSyncStore *)&self->super.isa _supportedSyncEntities];
  v4 = [(HDCloudSyncStore *)self _requiredSyncEntitiesForSupportedSyncEntities:v3];

  return v4;
}

- (id)orderedSyncEntities
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncStore *)&self->super.isa _supportedSyncEntities];
  v4 = [(HDCloudSyncStore *)self _requiredSyncEntitiesForSupportedSyncEntities:v3];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 syncEntityIdentifier];
        [v5 addObject:v12];

        v13 = [(HDCloudSyncStore *)self _syncEntityDependencyIdentifiersForEntity:v11];
        [v5 addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__HDCloudSyncStore_orderedSyncEntities__block_invoke;
  v18[3] = &unk_278623A30;
  v19 = v5;
  v14 = v5;
  v15 = [v3 hk_filter:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __39__HDCloudSyncStore_orderedSyncEntities__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 syncEntityIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)shouldContinueAfterAnchorValidationError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v5 = [(HDCloudSyncStore *)self persistedStateWithError:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [v5 stateWithGapEncountered:1];

    v16 = v6;
    v8 = [(HDCloudSyncStore *)self persistState:v7 error:&v16];
    v9 = v16;

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    v11 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v11)
      {
        *buf = 138543618;
        v19 = self;
        v20 = 2114;
        v21 = v4;
        v12 = "%{public}@: Recorded anchor gap after validation failure: %{public}@";
LABEL_12:
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      }
    }

    else if (v11)
    {
      *buf = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v9;
      v12 = "%{public}@: Failed to update persisted state when recording an encountered anchor gap: %{public}@";
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve current persisted state when recording an encountered anchor gap: %{public}@", buf, 0x16u);
  }

  v9 = v6;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSUUID *)self->_storeIdentifier UUIDString];
  syncProvenance = self->_syncProvenance;
  syncEpoch = self->_syncEpoch;
  syncProtocolVersion = self->_syncProtocolVersion;
  v9 = HKSyncProtocolVersionToString();
  v10 = [v3 stringWithFormat:@"<%@:%p %@ (%ld) Epoch %lld, version %@, shard %@>", v4, self, v5, syncProvenance, syncEpoch, v9, self->_shardPredicate];

  return v10;
}

- (BOOL)_isSupportedShardTypeForRestrictionPredicates
{
  v2 = [(HDCloudSyncStore *)self shardPredicate];
  v3 = [v2 type] < 2;

  return v3;
}

- (BOOL)providesSamplePruningRestrictionPredicate
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncStore *)self profile];
  v4 = [v3 cloudSyncManager];
  v5 = [v4 canPerformRecentRecordRoll];

  v6 = [(HDCloudSyncStore *)self _isSupportedShardTypeForRestrictionPredicates];
  v7 = [(HDCloudSyncStore *)self profile];
  v8 = [v7 legacyRepositoryProfile];
  v21 = 0;
  v9 = HDUpgradedToSyncIdentity(v8, &v21);
  v10 = v21;

  if (v10)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to check whether device has upgraded to sync identity: %{public}@", buf, 0x16u);
    }
  }

  v12 = [(HDCloudSyncStore *)self profile];
  v13 = [v12 syncIdentityManager];
  v14 = [v13 currentSyncIdentity];
  v15 = [v14 identity];
  v16 = [(HDCloudSyncStore *)self syncIdentity];
  v17 = [v15 isEqual:v16];

  if ((v5 & v6) == 1)
  {
    v18 = v9 ^ 1 | v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (id)samplePruningRestrictionPredicateForSyncEntity:(Class)a3 error:(id *)a4
{
  if (-[HDCloudSyncStore providesSamplePruningRestrictionPredicate](self, "providesSamplePruningRestrictionPredicate") && (-[HDCloudSyncStore orderedSyncEntities](self, "orderedSyncEntities"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:a3], v7, v8))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs activeEpoch];

    if (v10)
    {
      v11 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs activeEpoch];
      [v9 addObject:v11];
    }

    v12 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs pendingEpoch];

    if (v12)
    {
      v13 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs pendingEpoch];
      [v9 addObject:v13];
    }

    v14 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs tombstoneEpoch];
    if (v14)
    {
      v15 = v14;
      v16 = [(HDCloudSyncStore *)self _tombstoneEntities];
      v17 = [v16 containsObject:a3];

      if (v17)
      {
        v18 = [(HDCloudSyncCachedStoreEpochs *)self->_cachedCurrentSequenceEpochs tombstoneEpoch];
        [v9 addObject:v18];
      }
    }

    v19 = [(objc_class *)a3 syncEntityIdentifier];
    v20 = [(HDCloudSyncStore *)self profile];
    v32 = 0;
    v21 = [HDSyncAnchorEntity minimumFrozenAnchorInEpochs:v9 store:self entityIdentifier:v19 profile:v20 error:&v32];
    v22 = v32;

    if (v22)
    {
      if (a4)
      {
        v23 = v22;
        v24 = 0;
        *a4 = v22;
      }

      else
      {
        _HKLogDroppedError();
        v24 = 0;
      }
    }

    else
    {
      v25 = [HDSamplePruningRestrictionPredicate alloc];
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
      v27 = [(HDCloudSyncStore *)self shardPredicate];
      v28 = [v27 startDate];
      v29 = [(HDCloudSyncStore *)self shardPredicate];
      v30 = [v29 endDate];
      v24 = [(HDSamplePruningRestrictionPredicate *)v25 initWithMaximumAnchor:v26 startDate:v28 endDate:v30 excludedSyncIdentities:self->_excludedSyncIdentities];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)shardIntervalWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!(v5 | v6))
  {
    v7 = 0;
    goto LABEL_7;
  }

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = v5;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
    if (v6)
    {
LABEL_5:
      v7 = [v8 initWithStartDate:v9 endDate:v6];
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v8 initWithStartDate:v9 endDate:v11];

  if (!v5)
  {
LABEL_6:
  }

LABEL_7:

  return v7;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end