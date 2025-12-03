@interface HDSyncStoreEntity
+ (id)_predicateWithStoreUUID:(uint64_t)d type:;
+ (id)activeStoresForMaxAnchorPruningInProfile:(id)profile referenceDate:(id)date error:(id *)error;
+ (id)activeStoresForRestrictionPredictePruningInProfile:(id)profile referenceDate:(id)date error:(id *)error;
+ (id)allSyncStoreEntitiesOfType:(int64_t)type transaction:(id)transaction error:(id *)error;
+ (id)existingSyncStoreEntityWithUUID:(id)d database:(id)database error:(id *)error;
+ (id)existingSyncStoreEntityWithUUID:(id)d ofType:(int64_t)type database:(id)database error:(id *)error;
+ (id)recreateSyncStoreWithUUID:(id)d type:(int64_t)type profile:(id)profile error:(id *)error;
+ (id)syncStoreEntityWithUUID:(id)d type:(int64_t)type creationDate:(id)date healthDatabase:(id)database error:(id *)error;
@end

@implementation HDSyncStoreEntity

+ (id)syncStoreEntityWithUUID:(id)d type:(int64_t)type creationDate:(id)date healthDatabase:(id)database error:(id *)error
{
  dCopy = d;
  dateCopy = date;
  databaseCopy = database;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncStoreEntity.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
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
  selfCopy = self;
  v16 = dCopy;
  typeCopy = type;
  v23 = v16;
  v25 = &v28;
  v17 = dateCopy;
  v24 = v17;
  if ([self performWriteTransactionWithHealthDatabase:databaseCopy error:error block:v22])
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

+ (id)_predicateWithStoreUUID:(uint64_t)d type:
{
  v4 = a2;
  objc_opt_self();
  v5 = MEMORY[0x277D10B18];
  hk_dataForUUIDBytes = [v4 hk_dataForUUIDBytes];

  v7 = [v5 predicateWithProperty:@"uuid" equalToValue:hk_dataForUUIDBytes];

  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:d];
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

+ (id)existingSyncStoreEntityWithUUID:(id)d database:(id)database error:(id *)error
{
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncStoreEntity.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
  }

  v11 = MEMORY[0x277D10B18];
  hk_dataForUUIDBytes = [dCopy hk_dataForUUIDBytes];
  v13 = [v11 predicateWithProperty:@"uuid" equalToValue:hk_dataForUUIDBytes];

  v14 = [self anyInDatabase:databaseCopy predicate:v13 error:error];

  return v14;
}

+ (id)existingSyncStoreEntityWithUUID:(id)d ofType:(int64_t)type database:(id)database error:(id *)error
{
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncStoreEntity.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
  }

  v13 = MEMORY[0x277D10B18];
  hk_dataForUUIDBytes = [dCopy hk_dataForUUIDBytes];
  v15 = [v13 predicateWithProperty:@"uuid" equalToValue:hk_dataForUUIDBytes];

  v16 = MEMORY[0x277D10B18];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v18 = [v16 predicateWithProperty:@"type" equalToValue:v17];

  v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:v18];
  v20 = [self anyInDatabase:databaseCopy predicate:v19 error:error];

  return v20;
}

+ (id)allSyncStoreEntitiesOfType:(int64_t)type transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v10 = objc_alloc_init(v8);
  v11 = [transactionCopy databaseForEntityClass:self];

  v12 = MEMORY[0x277D10B18];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v14 = [v12 predicateWithProperty:@"type" equalToValue:v13];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HDSyncStoreEntity_allSyncStoreEntitiesOfType_transaction_error___block_invoke;
  v19[3] = &unk_27861E8D0;
  v20 = v10;
  v15 = v10;
  LODWORD(error) = [self enumerateEntitiesInDatabase:v11 predicate:v14 error:error enumerationHandler:v19];

  if (error)
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

+ (id)recreateSyncStoreWithUUID:(id)d type:(int64_t)type profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  objc_opt_self();
  if ((type - 6) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncStoreEntity.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"[self _canRecreateSyncStoreWithType:type]"}];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__73;
  v31 = __Block_byref_object_dispose__73;
  v32 = 0;
  database = [profileCopy database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HDSyncStoreEntity_recreateSyncStoreWithUUID_type_profile_error___block_invoke;
  v21[3] = &unk_27861E8A8;
  selfCopy = self;
  v14 = dCopy;
  typeCopy = type;
  v22 = v14;
  v24 = &v27;
  v15 = profileCopy;
  v23 = v15;
  v16 = [self performWriteTransactionWithHealthDatabase:database error:error block:v21];

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

+ (id)activeStoresForRestrictionPredictePruningInProfile:(id)profile referenceDate:(id)date error:(id *)error
{
  dateCopy = date;
  profileCopy = profile;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [v10 disambiguatedDatabaseTable];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncAnchorEntity];
  v14 = [v11 stringWithFormat:@"SELECT %@, %@ FROM %@ AS ss WHERE ss.%@ > ? OR EXISTS (SELECT 1 FROM %@ AS sa WHERE ss.%@ == sa.%@ AND sa.%@ > ?)", @"uuid", @"type", disambiguatedDatabaseTable, @"creation_date", v13, *MEMORY[0x277D10A40], @"store", @"frozen_updated_date"];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDSyncStoreEntity_activeStoresForRestrictionPredictePruningInProfile_referenceDate_error___block_invoke;
  v22[3] = &unk_278613550;
  selfCopy = self;
  v23 = v14;
  v24 = dateCopy;
  v17 = v15;
  v25 = v17;
  v18 = dateCopy;
  v19 = v14;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v22];

  if (error)
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

+ (id)activeStoresForMaxAnchorPruningInProfile:(id)profile referenceDate:(id)date error:(id *)error
{
  dateCopy = date;
  profileCopy = profile;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [v10 disambiguatedDatabaseTable];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncAnchorEntity];
  v14 = [v11 stringWithFormat:@"SELECT %@ FROM %@ AS ss WHERE EXISTS (SELECT 1 FROM %@ AS sa WHERE ss.%@ == sa.%@ AND sa.%@ > ?)", @"uuid", disambiguatedDatabaseTable, v13, *MEMORY[0x277D10A40], @"store", @"frozen_updated_date"];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  database = [profileCopy database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__HDSyncStoreEntity_activeStoresForMaxAnchorPruningInProfile_referenceDate_error___block_invoke;
  v22[3] = &unk_278613550;
  selfCopy = self;
  v23 = v14;
  v24 = dateCopy;
  v17 = v15;
  v25 = v17;
  v18 = dateCopy;
  v19 = v14;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v22];

  if (error)
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