@interface HDDeletedObjectEntity
+ (BOOL)deleteEntitiesWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (BOOL)deleteObjectsWithPredicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)deletedObjectEntityForDeletedObject:(id)object profile:(id)profile error:(id *)error;
+ (id)deletedObjectEntityWithUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)insertDeletedObject:(id)object provenanceIdentifier:(id)identifier deletionDate:(id)date inDatabase:(id)database error:(id *)error;
@end

@implementation HDDeletedObjectEntity

+ (id)insertDeletedObject:(id)object provenanceIdentifier:(id)identifier deletionDate:(id)date inDatabase:(id)database error:(id *)error
{
  objectCopy = object;
  identifierCopy = identifier;
  dateCopy = date;
  databaseCopy = database;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HDDeletedObjectEntity_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error___block_invoke_2;
  v21[3] = &unk_278613528;
  v22 = objectCopy;
  v23 = identifierCopy;
  v24 = dateCopy;
  v15 = dateCopy;
  v16 = identifierCopy;
  v17 = objectCopy;
  v18 = [databaseCopy executeCachedStatementForKey:&insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error__insertKey error:error SQLGenerator:&__block_literal_global_29 bindingHandler:v21 enumerationHandler:0];
  lastInsertRowID = 0;
  if (v18)
  {
    lastInsertRowID = [databaseCopy lastInsertRowID];
  }

  return lastInsertRowID;
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

+ (BOOL)deleteObjectsWithPredicate:(id)predicate profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [self predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:predicate];
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDDeletedObjectEntity_deleteObjectsWithPredicate_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v16 = v9;
  selfCopy = self;
  v15 = profileCopy;
  v11 = v9;
  v12 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
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

+ (id)deletedObjectEntityForDeletedObject:(id)object profile:(id)profile error:(id *)error
{
  objectCopy = object;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26;
  v23 = __Block_byref_object_dispose__26;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDDeletedObjectEntity_deletedObjectEntityForDeletedObject_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  selfCopy = self;
  v11 = objectCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
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

+ (id)deletedObjectEntityWithUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = HDDataEntityPredicateForDataUUID();

  v11 = [self predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:v10];
  v12 = [self anyInDatabase:v9 predicate:v11 error:error];

  return v12;
}

+ (BOOL)deleteEntitiesWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:predicate];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDDeletedObjectEntity;
  LOBYTE(error) = objc_msgSendSuper2(&v11, sel_deleteEntitiesWithPredicate_healthDatabase_error_, v9, databaseCopy, error);

  return error;
}

@end