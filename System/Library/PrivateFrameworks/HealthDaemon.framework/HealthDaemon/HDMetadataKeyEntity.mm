@interface HDMetadataKeyEntity
+ (id)_entityForKey:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_insertEntityWithKey:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_keyForPersistentID:(id)a3 database:(id)a4;
+ (id)entityForKey:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)insertEntityWithKey:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
@end

@implementation HDMetadataKeyEntity

+ (id)entityForKey:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__60;
  v21 = __Block_byref_object_dispose__60;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDMetadataKeyEntity_entityForKey_healthDatabase_error___block_invoke;
  v13[3] = &unk_2786169D8;
  v15 = &v17;
  v16 = a1;
  v10 = v8;
  v14 = v10;
  [a1 performReadTransactionWithHealthDatabase:v9 error:a5 block:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __57__HDMetadataKeyEntity_entityForKey_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) _entityForKey:*(a1 + 32) database:v5 error:a3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

+ (id)insertEntityWithKey:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__60;
  v22 = __Block_byref_object_dispose__60;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HDMetadataKeyEntity_insertEntityWithKey_healthDatabase_error___block_invoke;
  v14[3] = &unk_2786169D8;
  v16 = &v18;
  v17 = a1;
  v10 = v8;
  v15 = v10;
  if ([a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v14])
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

BOOL __64__HDMetadataKeyEntity_insertEntityWithKey_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) _insertEntityWithKey:*(a1 + 32) database:v5 error:a3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v9;
}

+ (id)_entityForKey:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"key" equalToValue:a3];
  v11 = [a1 anyInDatabase:v9 predicate:v10 error:a5];

  return v11;
}

+ (id)_insertEntityWithKey:(id)a3 database:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18[0] = @"key";
  v9 = MEMORY[0x277CBEA60];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HDMetadataKeyEntity__insertEntityWithKey_database_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = v8;
  v12 = v8;
  v13 = [a1 insertOrReplaceEntity:1 database:v10 properties:v11 error:a5 bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_keyForPersistentID:(id)a3 database:(id)a4
{
  v5 = a4;
  v6 = [(HDSQLiteEntity *)HDMetadataKeyEntity entityWithPersistentID:a3];
  v7 = [v6 valueForProperty:@"key" database:v5];

  return v7;
}

@end