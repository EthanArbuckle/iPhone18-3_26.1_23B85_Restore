@interface HDDeletedObjectEntity
+ (BOOL)deleteEntitiesWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (BOOL)deleteObjectsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)deletedObjectEntityForDeletedObject:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)deletedObjectEntityWithUUID:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)insertDeletedObject:(id)a3 provenanceIdentifier:(id)a4 deletionDate:(id)a5 inDatabase:(id)a6 error:(id *)a7;
@end

@implementation HDDeletedObjectEntity

+ (id)insertDeletedObject:(id)a3 provenanceIdentifier:(id)a4 deletionDate:(id)a5 inDatabase:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HDDeletedObjectEntity_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error___block_invoke_2;
  v21[3] = &unk_278613528;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = [v14 executeCachedStatementForKey:&insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error__insertKey error:a7 SQLGenerator:&__block_literal_global_29 bindingHandler:v21 enumerationHandler:0];
  v19 = 0;
  if (v18)
  {
    v19 = [v14 lastInsertRowID];
  }

  return v19;
}

id __96__HDDeletedObjectEntity_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v2 = [v0 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v1, @"uuid", @"provenance", @"type", @"creation_date", 0];

  return v2;
}

uint64_t __96__HDDeletedObjectEntity_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) UUID];
  v5 = _HDSQLiteValueForUUID();
  HDSQLiteBindFoundationValueToStatement();

  v6 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, 2);
  v7 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)deleteObjectsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:a3];
  v10 = [v8 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDDeletedObjectEntity_deleteObjectsWithPredicate_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v14];

  return a5;
}

uint64_t __66__HDDeletedObjectEntity_deleteObjectsWithPredicate_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[HDDataEntityDeletionContext alloc] initWithProfile:a1[4] transaction:v5];
  v7 = a1[6];
  v8 = [v5 databaseForEntityClass:v7];

  v9 = [v7 queryWithDatabase:v8 predicate:a1[5]];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDDeletedObjectEntity_deleteObjectsWithPredicate_profile_error___block_invoke_2;
  v14[3] = &unk_2786169B0;
  v10 = a1[6];
  v15 = v6;
  v16 = v10;
  v11 = v6;
  v12 = [v9 enumeratePersistentIDsAndProperties:0 error:a3 enumerationHandler:v14];

  return v12;
}

+ (id)deletedObjectEntityForDeletedObject:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26;
  v23 = __Block_byref_object_dispose__26;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDDeletedObjectEntity_deletedObjectEntityForDeletedObject_profile_error___block_invoke;
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

BOOL __75__HDDeletedObjectEntity_deletedObjectEntityForDeletedObject_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a2;
  v8 = [v6 UUID];
  v9 = [v5 deletedObjectEntityWithUUID:v8 transaction:v7 error:a3];

  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (id)deletedObjectEntityWithUUID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = HDDataEntityPredicateForDataUUID();

  v11 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:v10];
  v12 = [a1 anyInDatabase:v9 predicate:v11 error:a5];

  return v12;
}

+ (BOOL)deleteEntitiesWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:a3];
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDDeletedObjectEntity;
  LOBYTE(a5) = objc_msgSendSuper2(&v11, sel_deleteEntitiesWithPredicate_healthDatabase_error_, v9, v8, a5);

  return a5;
}

@end