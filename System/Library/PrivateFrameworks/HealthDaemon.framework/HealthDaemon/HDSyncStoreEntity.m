@interface HDSyncStoreEntity
+ (id)_predicateWithStoreUUID:(uint64_t)a3 type:;
+ (id)activeStoresForMaxAnchorPruningInProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5;
+ (id)activeStoresForRestrictionPredictePruningInProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5;
+ (id)allSyncStoreEntitiesOfType:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (id)existingSyncStoreEntityWithUUID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingSyncStoreEntityWithUUID:(id)a3 ofType:(int64_t)a4 database:(id)a5 error:(id *)a6;
+ (id)recreateSyncStoreWithUUID:(id)a3 type:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)syncStoreEntityWithUUID:(id)a3 type:(int64_t)a4 creationDate:(id)a5 healthDatabase:(id)a6 error:(id *)a7;
@end

@implementation HDSyncStoreEntity

+ (id)syncStoreEntityWithUUID:(id)a3 type:(int64_t)a4 creationDate:(id)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDSyncStoreEntity.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__73;
  v32 = __Block_byref_object_dispose__73;
  v33 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__HDSyncStoreEntity_syncStoreEntityWithUUID_type_creationDate_healthDatabase_error___block_invoke;
  v22[3] = &unk_27861E8A8;
  v26 = a1;
  v16 = v13;
  v27 = a4;
  v23 = v16;
  v25 = &v28;
  v17 = v14;
  v24 = v17;
  if ([a1 performWriteTransactionWithHealthDatabase:v15 error:a7 block:v22])
  {
    v18 = v29[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v28, 8);

  return v19;
}

BOOL __84__HDSyncStoreEntity_syncStoreEntityWithUUID_type_creationDate_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [(HDSyncStoreEntity *)*(a1 + 56) _predicateWithStoreUUID:*(a1 + 64) type:?];
  v7 = [*(a1 + 56) anyInDatabase:v5 predicate:v6 error:a3];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = 1;
  }

  else
  {
    v24[0] = @"uuid";
    v24[1] = @"type";
    v24[2] = @"creation_date";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v12 = *(a1 + 56);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HDSyncStoreEntity_syncStoreEntityWithUUID_type_creationDate_healthDatabase_error___block_invoke_2;
    v20[3] = &unk_278613AE8;
    v13 = *(a1 + 32);
    v14 = *(a1 + 64);
    v21 = v13;
    v23 = v14;
    v22 = *(a1 + 40);
    v15 = [v12 insertOrReplaceEntity:0 database:v5 properties:v11 error:a3 bindingHandler:v20];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v10 = *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_predicateWithStoreUUID:(uint64_t)a3 type:
{
  v4 = a2;
  objc_opt_self();
  v5 = MEMORY[0x277D10B18];
  v6 = [v4 hk_dataForUUIDBytes];

  v7 = [v5 predicateWithProperty:@"uuid" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v8 predicateWithProperty:@"type" equalToValue:v9];

  v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v7 otherPredicate:v10];

  return v11;
}

void __84__HDSyncStoreEntity_syncStoreEntityWithUUID_type_creationDate_healthDatabase_error___block_invoke_2(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", a1[4]);
  MEMORY[0x22AAC6B90](a2, @"type", a1[6]);
  if (a1[5])
  {

    JUMPOUT(0x22AAC6B50);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v4);
}

+ (id)existingSyncStoreEntityWithUUID:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"HDSyncStoreEntity.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
  }

  v11 = MEMORY[0x277D10B18];
  v12 = [v9 hk_dataForUUIDBytes];
  v13 = [v11 predicateWithProperty:@"uuid" equalToValue:v12];

  v14 = [a1 anyInDatabase:v10 predicate:v13 error:a5];

  return v14;
}

+ (id)existingSyncStoreEntityWithUUID:(id)a3 ofType:(int64_t)a4 database:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"HDSyncStoreEntity.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
  }

  v13 = MEMORY[0x277D10B18];
  v14 = [v11 hk_dataForUUIDBytes];
  v15 = [v13 predicateWithProperty:@"uuid" equalToValue:v14];

  v16 = MEMORY[0x277D10B18];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v18 = [v16 predicateWithProperty:@"type" equalToValue:v17];

  v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:v18];
  v20 = [a1 anyInDatabase:v12 predicate:v19 error:a6];

  return v20;
}

+ (id)allSyncStoreEntitiesOfType:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v11 = [v9 databaseForEntityClass:a1];

  v12 = MEMORY[0x277D10B18];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14 = [v12 predicateWithProperty:@"type" equalToValue:v13];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HDSyncStoreEntity_allSyncStoreEntitiesOfType_transaction_error___block_invoke;
  v19[3] = &unk_27861E8D0;
  v20 = v10;
  v15 = v10;
  LODWORD(a5) = [a1 enumerateEntitiesInDatabase:v11 predicate:v14 error:a5 enumerationHandler:v19];

  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

+ (id)recreateSyncStoreWithUUID:(id)a3 type:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  objc_opt_self();
  if ((a4 - 6) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"HDSyncStoreEntity.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"[self _canRecreateSyncStoreWithType:type]"}];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__73;
  v31 = __Block_byref_object_dispose__73;
  v32 = 0;
  v13 = [v12 database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HDSyncStoreEntity_recreateSyncStoreWithUUID_type_profile_error___block_invoke;
  v21[3] = &unk_27861E8A8;
  v25 = a1;
  v14 = v11;
  v26 = a4;
  v22 = v14;
  v24 = &v27;
  v15 = v12;
  v23 = v15;
  v16 = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v21];

  if (v16)
  {
    v17 = v28[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v27, 8);

  return v18;
}

BOOL __66__HDSyncStoreEntity_recreateSyncStoreWithUUID_type_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [(HDSyncStoreEntity *)*(a1 + 56) _predicateWithStoreUUID:*(a1 + 64) type:?];
  if ([*(a1 + 56) deleteEntitiesInDatabase:v5 predicate:v6 error:a3])
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) database];
    v11 = [v7 syncStoreEntityWithUUID:v9 type:v8 healthDatabase:v10 error:a3];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)activeStoresForRestrictionPredictePruningInProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 disambiguatedDatabaseTable];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncAnchorEntity];
  v14 = [v11 stringWithFormat:@"SELECT %@, %@ FROM %@ AS ss WHERE ss.%@ > ? OR EXISTS (SELECT 1 FROM %@ AS sa WHERE ss.%@ == sa.%@ AND sa.%@ > ?)", @"uuid", @"type", v12, @"creation_date", v13, *MEMORY[0x277D10A40], @"store", @"frozen_updated_date"];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [v9 database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke;
  v22[3] = &unk_278613550;
  v26 = a1;
  v23 = v14;
  v24 = v8;
  v17 = v15;
  v25 = v17;
  v18 = v8;
  v19 = v14;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v16 error:a5 block:v22];

  if (a5)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke_2;
  v11[3] = &unk_278614860;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke_3;
  v9[3] = &unk_278614098;
  v10 = *(a1 + 48);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:v11 enumerationHandler:v9];

  return v7;
}

uint64_t __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 1, v4 + -604800.0);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v6 = v5 + -2419200.0;

  return sqlite3_bind_double(a2, 2, v6);
}

uint64_t __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6CA0](a2, 0);
  v4 = HDSQLiteColumnAsInt64();
  v5 = *(a1 + 32);
  v6 = [[HDTypedSyncStoreIdentifier alloc] initWithIdentifier:v3 type:v4];
  [v5 addObject:v6];

  return 1;
}

+ (id)activeStoresForMaxAnchorPruningInProfile:(id)a3 referenceDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 disambiguatedDatabaseTable];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncAnchorEntity];
  v14 = [v11 stringWithFormat:@"SELECT %@ FROM %@ AS ss WHERE EXISTS (SELECT 1 FROM %@ AS sa WHERE ss.%@ == sa.%@ AND sa.%@ > ?)", @"uuid", v12, v13, *MEMORY[0x277D10A40], @"store", @"frozen_updated_date"];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = [v9 database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke;
  v22[3] = &unk_278613550;
  v26 = a1;
  v23 = v14;
  v24 = v8;
  v17 = v15;
  v25 = v17;
  v18 = v8;
  v19 = v14;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v16 error:a5 block:v22];

  if (a5)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke_2;
  v11[3] = &unk_278614860;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke_3;
  v9[3] = &unk_278614098;
  v10 = *(a1 + 48);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:v11 enumerationHandler:v9];

  return v7;
}

uint64_t __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v4 = v3 + -2419200.0;

  return sqlite3_bind_double(a2, 1, v4);
}

uint64_t __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6CA0](a2, 0);
  [*(a1 + 32) addObject:v3];

  return 1;
}

@end