@interface HDCloudSyncStoreEntity
+ (BOOL)cacheEpochs:(id)a3 storeIdentifier:(id)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)cacheEpochs:(id)a3 storeIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)cacheExcludedSyncIdentities:(id)a3 storeIdentifier:(id)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)cacheExcludedSyncIdentities:(id)a3 storeIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)enumerateShardsForOwnerIdentifier:(id)a3 containerIdentifier:(id)a4 syncIdentity:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8 handler:(id)a9;
+ (BOOL)persistState:(id)a3 storeUUID:(id)a4 shouldReplace:(BOOL)a5 healthDatabase:(id)a6 error:(id *)a7;
+ (BOOL)rebaseRequiredByDate:(id)a3 intervals:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)resetLastSyncDateExcludingStores:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_persistedStateProperties;
+ (id)cachedEpochsForStoreIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)cachedEpochsForStoreIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)persistedMostRecentLastSyncDateForProfile:(id)a3 error:(id *)a4;
+ (id)persistedStateForStoreUUID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)persistedStateForStoreUUID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)persistedStoreUUIDsForProfile:(id)a3 error:(id *)a4;
+ (id)storeIdentifiersForOwnerIdentifier:(id)a3 containerIdentifier:(id)a4 syncIdentity:(id)a5 profile:(id)a6 error:(id *)a7;
- (BOOL)fetchShardPropertiesInTransaction:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)updateShardStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)updateSyncIdentity:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)storeUUIDInTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDCloudSyncStoreEntity

+ (BOOL)rebaseRequiredByDate:(id)a3 intervals:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v14[4] = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_3;
  v9[3] = &unk_27862D420;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 48);
  v6 = v5;
  v7 = [v6 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_lookupKey error:a3 SQLGenerator:v14 bindingHandler:0 enumerationHandler:v9];

  return v7;
}

id __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@", v2, @"rebase_deadline", @"shard_type", @"shard_start_date", @"shard_end_date", v3];

  return v4;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  if ((MEMORY[0x22AAC6CD0](a2, 1) & 1) != 0 || (v7 = 1, v8 = MEMORY[0x22AAC6C50](a2, 1), [*(a1 + 32) timeIntervalSinceReferenceDate], v8 > v9))
  {
    if (MEMORY[0x22AAC6CD0](a2, 2))
    {
LABEL_4:
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_4;
      v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v10 = *(a1 + 48);
      v18[4] = *(a1 + 56);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_5;
      v15[3] = &unk_278613B58;
      v16 = *(a1 + 32);
      v17 = v6;
      v7 = [v10 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_2_updateKey error:a3 SQLGenerator:v18 bindingHandler:v15 enumerationHandler:0];

      return v7;
    }

    v12 = HDSQLiteColumnAsInt64();
    v7 = 1;
    if (v12 && v12 != 2)
    {
      if (v12 == 1 && *(a1 + 40))
      {
        v13 = (MEMORY[0x22AAC6CD0](a2, 3) & 1) != 0 ? -1.79769313e308 : MEMORY[0x22AAC6C50](a2, 3);
        v14 = (MEMORY[0x22AAC6CD0](a2, 4) & 1) != 0 ? 1.79769313e308 : MEMORY[0x22AAC6C50](a2, 4);
        if (![*(a1 + 40) hasOverlapWithStartTime:v13 endTime:v14])
        {
          return 1;
        }
      }

      goto LABEL_4;
    }
  }

  return v7;
}

id __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v2, @"rebase_deadline", *MEMORY[0x277D10A40], 0];

  return v3;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (id)storeIdentifiersForOwnerIdentifier:(id)a3 containerIdentifier:(id)a4 syncIdentity:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__188;
  v35 = __Block_byref_object_dispose__188;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [v15 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke;
  v24[3] = &unk_27862D448;
  v30 = a1;
  v17 = v15;
  v25 = v17;
  v18 = v14;
  v26 = v18;
  v19 = v12;
  v27 = v19;
  v20 = v13;
  v28 = v20;
  v29 = &v31;
  LODWORD(a7) = [a1 performReadTransactionWithHealthDatabase:v16 error:a7 block:v24];

  if (a7)
  {
    v21 = v32[5];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  _Block_object_dispose(&v31, 8);

  return v22;
}

uint64_t __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [*(a1 + 32) syncIdentityManager];
  v9 = *(a1 + 40);
  v21 = 0;
  v10 = [v8 concreteIdentityForIdentity:v9 shouldCreate:0 transaction:v6 error:&v21];

  v11 = v21;
  if (v11)
  {
    if (a3)
    {
      v12 = v11;
      v13 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_2;
    v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v20[4] = *(a1 + 72);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_3;
    v16[3] = &unk_278613528;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_4;
    v15[3] = &unk_278614620;
    v15[4] = *(a1 + 64);
    v13 = [v7 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_3_lookupKey error:a3 SQLGenerator:v20 bindingHandler:v16 enumerationHandler:v15];
  }

  return v13;
}

id __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ INNER JOIN %@ ON %@ = %@ WHERE %@ = ? AND %@ = ? AND %@ = ? ORDER BY %@ ASC", @"uuid", v2, v3, @"sync_store", *MEMORY[0x277D10A40], @"owner_id", @"container_id", @"sync_identity", @"uuid", 0];

  return v4;
}

void __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = [*(a1 + 48) entity];
  sqlite3_bind_int64(a2, 3, [v6 persistentID]);
}

uint64_t __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = HDSQLiteColumnWithNameAsUUID();
  [v1 addObject:v2];

  return 1;
}

+ (id)_persistedStateProperties
{
  v3[13] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"sync_store";
  v3[1] = @"server_change_token";
  v3[2] = @"baseline_epoch";
  v3[3] = @"rebase_deadline";
  v3[4] = @"last_sync";
  v3[5] = @"empty_zones";
  v3[6] = @"last_check";
  v3[7] = @"owner_id";
  v3[8] = @"container_id";
  v3[9] = @"sync_identity";
  v3[10] = @"has_gap";
  v3[11] = @"sync_protocol_version";
  v3[12] = @"pending_full_sync";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (id)persistedStateForStoreUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDCloudSyncStoreEntity_persistedStateForStoreUUID_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __67__HDCloudSyncStoreEntity_persistedStateForStoreUUID_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 persistedStateForStoreUUID:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (id)persistedStoreUUIDsForProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__188;
  v16 = __Block_byref_object_dispose__188;
  v17 = [MEMORY[0x277CBEB58] set];
  v7 = [v6 database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke;
  v11[3] = &unk_27861C1A0;
  v11[4] = &v12;
  v11[5] = a1;
  LOBYTE(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v11];

  if ((a4 & 1) == 0)
  {
    v8 = v13[5];
    v13[5] = 0;
  }

  v9 = [v13[5] copy];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_4_lookupKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ cloud_stores INNER JOIN %@ sync_stores ON cloud_stores.%@ = sync_stores.%@", @"uuid", v2, v3, @"sync_store", *MEMORY[0x277D10A40], 0];

  return v4;
}

uint64_t __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];

  return 1;
}

+ (id)persistedMostRecentLastSyncDateForProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__188;
  v15 = __Block_byref_object_dispose__188;
  v16 = 0;
  v7 = [v6 database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke;
  v10[3] = &unk_27861C1A0;
  v10[4] = &v11;
  v10[5] = a1;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v10];

  if (a4)
  {
    v8 = [v12[5] copy];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unprotectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_5_lookupKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT MAX(%@) as %@ FROM %@", @"last_sync", @"last_sync", v2, 0];

  return v3;
}

uint64_t __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (id)persistedStateForStoreUUID:(id)a3 database:(id)a4 error:(id *)a5
{
  v114[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"storeUUID != nil"}];
  }

  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__188;
  v112 = __Block_byref_object_dispose__188;
  v113 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__188;
  v102 = __Block_byref_object_dispose__188;
  v103 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__188;
  v96 = __Block_byref_object_dispose__188;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__188;
  v90 = __Block_byref_object_dispose__188;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__188;
  v84 = __Block_byref_object_dispose__188;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__188;
  v78 = __Block_byref_object_dispose__188;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__188;
  v72 = __Block_byref_object_dispose__188;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = -1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 6;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v11 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:v9 database:v10 error:a5];
  v12 = v11;
  if (!v11)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v13 = MEMORY[0x277D10B18];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
  v49 = [v13 predicateWithProperty:@"sync_store" equalToValue:v14];

  v15 = [a1 queryWithDatabase:v10 predicate:v49];
  v16 = +[HDCloudSyncStoreEntity _persistedStateProperties];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __68__HDCloudSyncStoreEntity_persistedStateForStoreUUID_database_error___block_invoke;
  v51[3] = &unk_27862D470;
  v51[4] = &v108;
  v51[5] = &v104;
  v51[6] = &v98;
  v51[7] = &v92;
  v51[8] = &v86;
  v51[9] = &v80;
  v51[10] = &v74;
  v51[11] = &v68;
  v51[12] = &v64;
  v51[13] = &v60;
  v51[14] = &v56;
  v51[15] = &v52;
  LOBYTE(v13) = [v15 enumerateProperties:v16 error:a5 enumerationHandler:v51];

  if (v13)
  {
    if (v109[5])
    {
      v17 = objc_alloc(MEMORY[0x277CCAAC8]);
      v18 = [v17 initForReadingFromData:v109[5] error:0];
      v48 = [v18 decodeObjectOfClass:objc_opt_class() forKey:@"changeToken"];
      [v18 finishDecoding];
    }

    else
    {
      v48 = 0;
    }

    if (v87[5])
    {
      v20 = objc_alloc(MEMORY[0x277CCAAC8]);
      v21 = [v20 initForReadingFromData:v87[5] error:0];
      v22 = MEMORY[0x277CBEB98];
      v114[0] = objc_opt_class();
      v114[1] = objc_opt_class();
      v114[2] = objc_opt_class();
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:3];
      v24 = [v22 setWithArray:v23];
      v47 = [v21 decodeObjectOfClasses:v24 forKey:@"emptyZones"];

      [v21 finishDecoding];
    }

    else
    {
      v47 = 0;
    }

    v25 = v65[3];
    v50 = 0;
    v26 = [HDSyncIdentityEntity concreteIdentityForPersistentID:v25 database:v10 error:&v50];
    v27 = v50;
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      v30 = v29;
      if (a5)
      {
        v31 = v29;
        v19 = 0;
        *a5 = v30;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v45 = v15;
      v46 = v26;
      v44 = [_HDCloudSyncStorePersistableState alloc];
      v43 = v105[3];
      v32 = v99[5];
      v33 = v93[5];
      v34 = v81[5];
      v35 = v75[5];
      v36 = v69[5];
      v37 = [v46 identity];
      LODWORD(v42) = *(v57 + 6);
      v30 = [(_HDCloudSyncStorePersistableState *)v44 initWithServerChangeToken:v48 baselineEpoch:v43 rebaseDeadline:v32 lastSyncDate:v33 emptyZones:v47 lastCheckDate:v34 ownerIdentifier:v35 containerIdentifier:v36 syncIdentity:v37 syncProtocolVersion:v42];

      v15 = v45;
      v26 = v46;
      if (*(v61 + 24) == 1)
      {
        v38 = [(_HDCloudSyncStorePersistableState *)v30 stateWithGapEncountered:1];

        v15 = v45;
        v26 = v46;
        v30 = v38;
      }

      if (*(v53 + 24) != 1)
      {
        v19 = v30;
        goto LABEL_22;
      }

      v19 = [(_HDCloudSyncStorePersistableState *)v30 stateWithPendingFullSync:1];
      v15 = v45;
      v26 = v46;
    }

LABEL_22:
    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:

LABEL_24:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v92, 8);

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __68__HDCloudSyncStoreEntity_persistedStateForStoreUUID_database_error___block_invoke(void *a1)
{
  v2 = HDSQLiteColumnWithNameAsData();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[5] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsDate();
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HDSQLiteColumnWithNameAsDate();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = HDSQLiteColumnWithNameAsData();
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = HDSQLiteColumnWithNameAsDate();
  v15 = *(a1[9] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = HDSQLiteColumnWithNameAsString();
  v18 = *(a1[10] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = HDSQLiteColumnWithNameAsString();
  v21 = *(a1[11] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  *(*(a1[12] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  *(*(a1[13] + 8) + 24) = HDSQLiteColumnWithNameAsBoolean();
  *(*(a1[14] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  *(*(a1[15] + 8) + 24) = HDSQLiteColumnWithNameAsBoolean();
  return 1;
}

+ (BOOL)persistState:(id)a3 storeUUID:(id)a4 shouldReplace:(BOOL)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (!v14)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"uuid != nil"}];
  }

  v16 = [v13 serverChangeToken];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v18 = [v13 serverChangeToken];
    [v17 encodeObject:v18 forKey:@"changeToken"];

    v16 = [v17 encodedData];
  }

  v19 = [v13 emptyZoneDateByZoneID];

  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v21 = [v13 emptyZoneDateByZoneID];
    [v20 encodeObject:v21 forKey:@"emptyZones"];

    v19 = [v20 encodedData];
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke;
  v30[3] = &unk_27862D4E8;
  v37 = a1;
  v22 = v14;
  v31 = v22;
  v23 = v13;
  v32 = v23;
  v24 = v15;
  v33 = v24;
  v36 = v39;
  v25 = v16;
  v34 = v25;
  v26 = v19;
  v35 = v26;
  v38 = a5;
  v27 = [a1 performWriteTransactionWithHealthDatabase:v24 error:a7 block:v30];

  _Block_object_dispose(v39, 8);
  return v27;
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke(uint64_t a1, void *a2, HDCloudSyncStoreEntity **a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:*(a1 + 32) database:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__188;
    v76 = __Block_byref_object_dispose__188;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__188;
    v70 = __Block_byref_object_dispose__188;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = -1;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_2;
    v57[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v57[4] = *(a1 + 80);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_3;
    v55[3] = &unk_278614860;
    v9 = v7;
    v56 = v9;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_4;
    v54[3] = &unk_27862D498;
    v54[4] = &v72;
    v54[5] = &v66;
    v54[6] = &v62;
    v54[7] = &v58;
    if (([v6 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_6_lookupKey error:a3 SQLGenerator:v57 bindingHandler:v55 enumerationHandler:v54] & 1) == 0)
    {
      v18 = 0;
LABEL_47:

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(&v66, 8);

      _Block_object_dispose(&v72, 8);
      goto LABEL_48;
    }

    v10 = [*(a1 + 40) syncIdentity];

    if (v10)
    {
      v11 = [*(a1 + 48) profile];
      v12 = [v11 syncIdentityManager];
      v13 = [*(a1 + 40) syncIdentity];
      v53 = 0;
      v45 = [v12 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v5 error:&v53];
      v14 = v53;

      if (v14)
      {
        v15 = v14;
        v16 = v15;
        if (a3)
        {
          v17 = v15;
          *a3 = v16;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_20;
      }

      v22 = v63[3];
      if (v22 == -1)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      else
      {
        v23 = [v45 entity];
        v24 = [v23 persistentID];

        if (v22 != v24)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Sync identity must not be changed after creation."];
          v16 = 0;
LABEL_20:
          v18 = 0;
LABEL_41:

LABEL_46:
          goto LABEL_47;
        }
      }
    }

    else
    {
      v45 = 0;
    }

    if (!v73[5])
    {
      goto LABEL_31;
    }

    v19 = v67[5];
    v20 = [*(a1 + 40) ownerIdentifier];
    if (v19 != v20)
    {
      v44 = [*(a1 + 40) ownerIdentifier];
      if (!v44)
      {
        goto LABEL_44;
      }

      v21 = v67[5];
      v43 = [*(a1 + 40) ownerIdentifier];
      if (![v21 isEqualToString:v43])
      {
        goto LABEL_43;
      }
    }

    v25 = v73[5];
    v26 = [*(a1 + 40) containerIdentifier];
    v27 = v26;
    if (v25 == v26)
    {

      if (v19 != v20)
      {
      }

      goto LABEL_31;
    }

    v42 = [*(a1 + 40) containerIdentifier];
    if (v42)
    {
      v40 = v73[5];
      v28 = [*(a1 + 40) containerIdentifier];
      v41 = [v40 isEqualToString:v28];

      if (v19 != v20)
      {
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_31:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_5;
      aBlock[3] = &unk_27862D4C0;
      v29 = v9;
      v48 = v29;
      v49 = *(a1 + 56);
      v50 = *(a1 + 40);
      v51 = *(a1 + 64);
      v45 = v45;
      v52 = v45;
      v30 = _Block_copy(aBlock);
      if (*(v59 + 24) == 1)
      {
        if ((*(a1 + 88) & 1) == 0 && !*(*(*(a1 + 72) + 8) + 24))
        {
          v18 = 1;
          goto LABEL_40;
        }

        v31 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:[(HDSQLiteEntity *)v29 persistentID]];
        v32 = *(a1 + 80);
        v33 = +[HDCloudSyncStoreEntity _persistedStateProperties];
        v18 = [(HDSQLiteEntity *)v31 updateProperties:v33 database:v6 error:a3 bindingHandler:v30];
      }

      else
      {
        v34 = *(a1 + 80);
        v35 = *(a1 + 88);
        v36 = +[HDCloudSyncStoreEntity _persistedStateProperties];
        v46 = 0;
        v33 = [v34 insertOrReplaceEntity:v35 database:v6 properties:v36 error:&v46 bindingHandler:v30];
        v31 = v46;

        if (!v33)
        {
          if (([(HDCloudSyncStoreEntity *)v31 hd_isConstraintViolation]& 1) == 0)
          {
            v38 = v31;
            v31 = v38;
            if (v38)
            {
              if (a3)
              {
                v39 = v38;
                *a3 = v31;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v33 = 0;
            v18 = 0;
            goto LABEL_39;
          }

          v33 = 0;
        }

        v18 = 1;
      }

LABEL_39:

LABEL_40:
      v16 = v48;
      goto LABEL_41;
    }

    if (v19 != v20)
    {
LABEL_43:
    }

LABEL_44:

LABEL_45:
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Owner and container identifiers must not be changed after creation."];
    v18 = 0;
    goto LABEL_46;
  }

  v18 = 0;
LABEL_48:

  return v18;
}

id __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ?", @"container_id", @"owner_id", @"sync_identity", v2, @"sync_store", 0];

  return v3;
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C90](a2, 0);
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ((MEMORY[0x22AAC6CD0](a2, 2) & 1) == 0 && HDSQLiteColumnAsInt64())
  {
    *(*(a1[6] + 8) + 24) = HDSQLiteColumnAsInt64();
  }

  *(*(a1[7] + 8) + 24) = 1;
  return 0;
}

void __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_5(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"sync_store", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B40](a2, @"server_change_token", *(a1 + 40));
  MEMORY[0x22AAC6B90](a2, @"baseline_epoch", [*(a1 + 48) baselineEpoch]);
  v4 = [*(a1 + 48) rebaseDeadline];
  MEMORY[0x22AAC6B50](a2, @"rebase_deadline", v4);

  v5 = [*(a1 + 48) lastSyncDate];
  MEMORY[0x22AAC6B50](a2, @"last_sync", v5);

  MEMORY[0x22AAC6B40](a2, @"empty_zones", *(a1 + 56));
  v6 = [*(a1 + 48) lastCheckDate];
  MEMORY[0x22AAC6B50](a2, @"last_check", v6);

  v7 = [*(a1 + 48) ownerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"owner_id", v7);

  v8 = [*(a1 + 48) containerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"container_id", v8);

  v9 = [*(a1 + 64) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity", [v9 persistentID]);

  MEMORY[0x22AAC6B30](a2, @"has_gap", [*(a1 + 48) hasEncounteredGapInCurrentEpoch]);
  MEMORY[0x22AAC6B90](a2, @"sync_protocol_version", [*(a1 + 48) syncProtocolVersion]);
  [*(a1 + 48) pendingFullSync];

  JUMPOUT(0x22AAC6B30);
}

+ (BOOL)resetLastSyncDateExcludingStores:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = v8;
  v14 = a1;
  v10 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

uint64_t __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 32) hk_map:&__block_literal_global_227];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = MEMORY[0x277CCACA8];
  v9 = [*(a1 + 40) disambiguatedDatabaseTable];
  v10 = *MEMORY[0x277D10A40];
  v11 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v12 = [v8 stringWithFormat:@"UPDATE %@ SET %@ = NULL WHERE %@ NOT IN (SELECT %@ FROM %@ WHERE %@ IN (%@))", v9, @"last_sync", @"sync_store", v10, v11, @"uuid", v7];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke_3;
  v15[3] = &unk_278614860;
  v16 = *(a1 + 32);
  v13 = [v5 executeUncachedSQL:v12 error:a3 bindingHandler:v15 enumerationHandler:0];

  return v13;
}

void __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    v5 = 1;
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v5 = v7 + 1;
        v8 = [*(*(&v10 + 1) + 8 * v6) storeIdentifier];
        HDSQLiteBindFoundationValueToStatement();

        ++v6;
        ++v7;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)storeUUIDInTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HDSQLiteEntity *)[HDSyncStoreEntity alloc] initWithPersistentID:[(HDSQLiteEntity *)self persistentID]];
  v7 = [v5 databaseForEntityClass:objc_opt_class()];

  v8 = [(HDSQLiteEntity *)v6 UUIDForProperty:@"uuid" database:v7];

  return v8;
}

+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __87__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 cachedExcludedSyncIdentitiesForStoreIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *a3 == 0;
}

+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v44[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  v12 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"SELECT cs.%@ FROM %@ AS s INNER JOIN %@ AS cs ON s.%@ == cs.%@ WHERE s.%@ == ?", @"cached_excluded_sync_identities", v13, v14, *MEMORY[0x277D10A40], @"sync_store", @"uuid"];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__188;
  v38 = __Block_byref_object_dispose__188;
  v39 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke;
  v32[3] = &unk_278614860;
  v16 = v9;
  v33 = v16;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke_2;
  v31[3] = &unk_278614620;
  v31[4] = &v34;
  if (([v11 executeUncachedSQL:v15 error:a5 bindingHandler:v32 enumerationHandler:v31] & 1) != 0 && v35[5])
  {
    v17 = objc_alloc(MEMORY[0x277CCAAC8]);
    v18 = v35[5];
    v30 = 0;
    v19 = [v17 initForReadingFromData:v18 error:&v30];
    v20 = v30;
    v21 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v19 decodeObjectOfClasses:v23 forKey:@"excludedSyncIdentities"];

    [v19 finishDecoding];
    if (v20)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v41 = a1;
        v42 = 2114;
        v43 = v20;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load cached excluded sync identities with error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v34, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [*(a1 + 32) getUUIDBytes:v5];
  result = sqlite3_bind_blob(a2, 1, v5, 16, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (BOOL)cacheExcludedSyncIdentities:(id)a3 storeIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

uint64_t __84__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) cacheExcludedSyncIdentities:*(a1 + 32) storeIdentifier:*(a1 + 40) database:v5 error:a3];

  return v6;
}

+ (BOOL)cacheExcludedSyncIdentities:(id)a3 storeIdentifier:(id)a4 database:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:637 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_3:
  v15 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:v12 database:v14 error:a6];
  if (v15)
  {
    if (v11)
    {
      v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v16 encodeObject:v11 forKey:@"excludedSyncIdentities"];
      v17 = [v16 encodedData];
    }

    else
    {
      v17 = 0;
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [a1 disambiguatedDatabaseTable];
    v21 = [v19 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ == ?", v20, @"cached_excluded_sync_identities", @"sync_store"];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_database_error___block_invoke;
    v26[3] = &unk_278613038;
    v27 = v17;
    v28 = v15;
    v22 = v17;
    v18 = [v14 executeUncachedSQL:v21 error:a6 bindingHandler:v26 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __85__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    sqlite3_bind_blob(a2, 1, [v4 bytes], objc_msgSend(*(a1 + 32), "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (id)cachedEpochsForStoreIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __71__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 cachedEpochsForStoreIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *a3 == 0;
}

+ (id)cachedEpochsForStoreIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:700 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_3:
  v12 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"SELECT cs.%@, cs.%@, cs.%@ FROM %@ AS s INNER JOIN %@ AS cs ON s.%@ == cs.%@ WHERE s.%@ == ?", @"cached_active_epoch", @"cached_pending_epoch", @"cached_tombstone_epoch", v13, v14, *MEMORY[0x277D10A40], @"sync_store", @"uuid"];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__188;
  v28 = __Block_byref_object_dispose__188;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke;
  v22[3] = &unk_278614860;
  v16 = v9;
  v23 = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke_2;
  v21[3] = &unk_278614620;
  v21[4] = &v24;
  if ([v11 executeUncachedSQL:v15 error:a5 bindingHandler:v22 enumerationHandler:v21])
  {
    v17 = v25[5];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [*(a1 + 32) getUUIDBytes:v5];
  result = sqlite3_bind_blob(a2, 1, v5, 16, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke_2(uint64_t a1)
{
  if (HDSQLiteColumnWithNameIsNull())
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  if (HDSQLiteColumnWithNameIsNull())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  if (HDSQLiteColumnWithNameIsNull())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  v5 = [[HDCloudSyncCachedStoreEpochs alloc] initWithActiveEpoch:v2 pendingEpoch:v3 tombstoneEpoch:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

+ (BOOL)cacheEpochs:(id)a3 storeIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

uint64_t __68__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) cacheEpochs:*(a1 + 32) storeIdentifier:*(a1 + 40) database:v5 error:a3];

  return v6;
}

+ (BOOL)cacheEpochs:(id)a3 storeIdentifier:(id)a4 database:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_9:
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:778 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:777 description:{@"Invalid parameter not satisfying: %@", @"epochs != nil"}];

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_10:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"HDCloudSyncStoreEntity.m" lineNumber:779 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_4:
  v14 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:v12 database:v13 error:a6];
  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [a1 disambiguatedDatabaseTable];
    v17 = [v15 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ? WHERE %@ == ?", v16, @"cached_active_epoch", @"cached_pending_epoch", @"cached_tombstone_epoch", @"sync_store"];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_database_error___block_invoke;
    v23[3] = &unk_278613038;
    v24 = v11;
    v25 = v14;
    v18 = [v13 executeUncachedSQL:v17 error:a6 bindingHandler:v23 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __69__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) activeEpoch];

  if (v4)
  {
    v5 = [*(a1 + 32) activeEpoch];
    sqlite3_bind_int64(a2, 1, [v5 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v6 = [*(a1 + 32) pendingEpoch];

  if (v6)
  {
    v7 = [*(a1 + 32) pendingEpoch];
    sqlite3_bind_int64(a2, 2, [v7 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  v8 = [*(a1 + 32) tombstoneEpoch];

  if (v8)
  {
    v9 = [*(a1 + 32) tombstoneEpoch];
    sqlite3_bind_int64(a2, 3, [v9 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v10 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 4, v10);
}

+ (BOOL)enumerateShardsForOwnerIdentifier:(id)a3 containerIdentifier:(id)a4 syncIdentity:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8 handler:(id)a9
{
  if (a5)
  {
    v14 = a3;
    v15 = a4;
    v16 = a7;
    v17 = a9;
    v18 = a6;
    v19 = a5;
    v20 = objc_opt_self();
    v21 = [v18 syncIdentityManager];

    v69[0] = 0;
    v22 = [v21 concreteIdentityForIdentity:v19 shouldCreate:0 transaction:v16 error:v69];

    v23 = v69[0];
    if (v23)
    {
      if (a8)
      {
        v24 = v23;
        v25 = 0;
        *a8 = v23;
      }

      else
      {
        _HKLogDroppedError();
        v25 = 0;
      }
    }

    else
    {
      v40 = MEMORY[0x277CCACA8];
      v51 = a8;
      v41 = v17;
      v42 = v15;
      v43 = v14;
      v44 = *MEMORY[0x277D10A40];
      v45 = [v20 disambiguatedDatabaseTable];
      v50 = v44;
      v14 = v43;
      v15 = v42;
      v17 = v41;
      v46 = [v40 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ IS NOT NULL", v50, @"shard_start_date", @"shard_end_date", @"shard_type", v45, @"owner_id", @"container_id", @"sync_identity", @"shard_type"];

      v47 = [v16 databaseForEntityClass:v20];
      v64 = MEMORY[0x277D85DD0];
      v65 = 3221225472;
      v66 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke;
      v67 = &unk_278615C80;
      v68 = v46;
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_2;
      v60 = &unk_278613528;
      v61 = v14;
      v62 = v15;
      v63 = v22;
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_3;
      v55 = &unk_278613B30;
      v56 = v41;
      v48 = v46;
      v25 = [v47 executeCachedStatementForKey:&_enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler__lookupKey error:v51 SQLGenerator:&v64 bindingHandler:&v57 enumerationHandler:&v52];
    }
  }

  else
  {
    v26 = a3;
    v27 = a4;
    v28 = a9;
    v29 = a7;
    v30 = objc_opt_self();
    v31 = MEMORY[0x277CCACA8];
    v32 = *MEMORY[0x277D10A40];
    v33 = [v30 disambiguatedDatabaseTable];
    v34 = [v31 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ IS NOT NULL", v32, @"shard_start_date", @"shard_end_date", @"shard_type", v33, @"owner_id", @"container_id", @"shard_type"];

    v35 = [v29 databaseForEntityClass:v30];

    v64 = MEMORY[0x277D85DD0];
    v65 = 3221225472;
    v66 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke;
    v67 = &unk_278615C80;
    v68 = v34;
    v56 = v28;
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_2;
    v60 = &unk_278613038;
    v61 = v26;
    v62 = v27;
    v52 = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_3;
    v55 = &unk_278613B30;
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = v34;
    v25 = [v35 executeCachedStatementForKey:&_enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler__lookupKey error:a8 SQLGenerator:&v64 bindingHandler:&v57 enumerationHandler:&v52];
  }

  return v25;
}

- (BOOL)updateShardStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [a6 databaseForEntity:self];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke;
  v23[3] = &unk_278615C80;
  v23[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke_2;
  v18[3] = &unk_2786144E0;
  v19 = v12;
  v20 = v13;
  v21 = self;
  v22 = a5;
  v15 = v13;
  v16 = v12;
  LOBYTE(a7) = [v14 executeCachedStatementForKey:&updateShardStartDate_endDate_type_transaction_error__updateKey error:a7 SQLGenerator:v23 bindingHandler:v18 enumerationHandler:0];

  return a7;
}

id __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ? WHERE %@ = ?", v3, @"shard_start_date", @"shard_end_date", @"shard_type", *MEMORY[0x277D10A40]];

  return v4;
}

uint64_t __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 1, v5);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 2, v7);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  sqlite3_bind_int64(a2, 3, *(a1 + 56));
  v8 = [*(a1 + 48) persistentID];

  return sqlite3_bind_int64(a2, 4, v8);
}

- (BOOL)fetchShardPropertiesInTransaction:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [a3 databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke;
  v15[3] = &unk_278615C80;
  v15[4] = self;
  v13 = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_2;
  v14[3] = &unk_278614860;
  v14[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_3;
  v12[3] = &unk_278613B30;
  v10 = v8;
  LOBYTE(a4) = [v9 executeCachedStatementForKey:&fetchShardPropertiesInTransaction_error_handler__lookupKey error:a4 SQLGenerator:v15 bindingHandler:v14 enumerationHandler:v12];

  return a4;
}

id __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ IS NOT NULL", @"shard_type", @"shard_start_date", @"shard_end_date", v3, *MEMORY[0x277D10A40], @"shard_type"];

  return v4;
}

uint64_t __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C40](a2, 1);
  v5 = MEMORY[0x22AAC6C40](a2, 2);
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (BOOL)updateSyncIdentity:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke;
  v15[3] = &unk_278615C80;
  v15[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke_2;
  v12[3] = &unk_278613038;
  v13 = v8;
  v14 = self;
  v10 = v8;
  LOBYTE(a5) = [v9 executeCachedStatementForKey:&updateSyncIdentity_transaction_error__lookupKey error:a5 SQLGenerator:v15 bindingHandler:v12 enumerationHandler:0];

  return a5;
}

id __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v3, @"sync_identity", *MEMORY[0x277D10A40]];

  return v4;
}

uint64_t __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) entity];
  sqlite3_bind_int64(a2, 1, [v4 persistentID]);

  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"sync_store";
  v2 = +[(HDHealthEntity *)HDSyncStoreEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_2(id *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [a1[4] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(a2, 2, [a1[5] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [a1[6] entity];
  sqlite3_bind_int64(a2, 3, [v4 persistentID]);
}

uint64_t __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = MEMORY[0x22AAC6C40](a2, 1);
  v6 = MEMORY[0x22AAC6C40](a2, 2);
  HDSQLiteColumnAsInt64();
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

uint64_t __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = MEMORY[0x22AAC6C40](a2, 1);
  v6 = MEMORY[0x22AAC6C40](a2, 2);
  HDSQLiteColumnAsInt64();
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

@end