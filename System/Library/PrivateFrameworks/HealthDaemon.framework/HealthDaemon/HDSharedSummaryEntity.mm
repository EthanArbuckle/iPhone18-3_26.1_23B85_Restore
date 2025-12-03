@interface HDSharedSummaryEntity
+ (BOOL)deleteAllSummariesWithDatabaseTransaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateEntitiesWithReuseTransactionID:(unint64_t)d package:(id)package names:(id)names databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateEntitiesWithTransactionID:(unint64_t)d package:(id)package names:(id)names databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateSummariesWithTransactionID:(unint64_t)d package:(id)package names:(id)names includedObjectTypes:(id)types databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)reuseSummariesForTransactionID:(unint64_t)d databaseTransaction:(id)transaction error:(id *)error;
+ (id)_predicateForTransactionID:(void *)d package:(void *)package names:(void *)names reuseTransactionID:;
+ (id)entityWithUUID:(id)d databaseTransaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)insertOrReplaceWithUUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion transactionID:(unint64_t)iD summaryData:(id)data databaseTransaction:(id)self0 error:(id *)self1;
+ (id)uniquedColumns;
+ (int64_t)countOfObjectsForTransactionID:(int64_t)d healthDatabase:(id)database error:(id *)error;
+ (uint64_t)_enumerateEntitiesWithTransactionID:(void *)d package:(void *)package names:(void *)names reuseTransactionID:(void *)iD databaseTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
- (BOOL)setReuseTransactionID:(id)d databaseTransaction:(id)transaction error:(id *)error;
- (BOOL)syncedInDatabaseTransaction:(id)transaction error:(id *)error;
- (id)UUIDInDatabaseTransaction:(id)transaction error:(id *)error;
- (id)summaryDataInDatabaseTransaction:(id)transaction error:(id *)error;
@end

@implementation HDSharedSummaryEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"transaction_id";
  v2 = +[(HDHealthEntity *)HDSharedSummaryTransactionEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"package";
  v5[1] = @"name";
  v5[2] = @"transaction_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertOrReplaceWithUUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion transactionID:(unint64_t)iD summaryData:(id)data databaseTransaction:(id)self0 error:(id *)self1
{
  v42[8] = *MEMORY[0x277D85DE8];
  dCopy = d;
  packageCopy = package;
  nameCopy = name;
  versionCopy = version;
  compatibilityVersionCopy = compatibilityVersion;
  dataCopy = data;
  v21 = [transaction databaseForEntityClass:self];
  v42[0] = @"uuid";
  v42[1] = @"package";
  v42[2] = @"name";
  v42[3] = @"version";
  v42[4] = @"compatibility_version";
  v42[5] = @"transaction_id";
  v42[6] = @"summary_data";
  v42[7] = @"synced";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:8];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __143__HDSharedSummaryEntity_insertOrReplaceWithUUID_package_name_version_compatibilityVersion_transactionID_summaryData_databaseTransaction_error___block_invoke;
  v34[3] = &unk_278618818;
  v35 = dCopy;
  v36 = packageCopy;
  v37 = nameCopy;
  v38 = versionCopy;
  v40 = dataCopy;
  iDCopy = iD;
  v39 = compatibilityVersionCopy;
  v23 = dataCopy;
  v24 = compatibilityVersionCopy;
  v25 = versionCopy;
  v26 = nameCopy;
  v27 = packageCopy;
  v28 = dCopy;
  v29 = [self insertOrReplaceEntity:1 database:v21 properties:v22 error:error bindingHandler:v34];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __143__HDSharedSummaryEntity_insertOrReplaceWithUUID_package_name_version_compatibilityVersion_transactionID_summaryData_databaseTransaction_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", a1[4]);
  MEMORY[0x22AAC6BD0](a2, @"package", a1[5]);
  MEMORY[0x22AAC6BD0](a2, @"name", a1[6]);
  MEMORY[0x22AAC6BD0](a2, @"version", a1[7]);
  MEMORY[0x22AAC6BD0](a2, @"compatibility_version", a1[8]);
  MEMORY[0x22AAC6B90](a2, @"transaction_id", a1[10]);
  MEMORY[0x22AAC6B40](a2, @"summary_data", a1[9]);

  JUMPOUT(0x22AAC6B30);
}

+ (BOOL)deleteAllSummariesWithDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = objc_opt_class();
  protectedDatabase = [transactionCopy protectedDatabase];

  v8 = [v6 queryWithDatabase:protectedDatabase predicate:0];

  LOBYTE(error) = [v8 deleteAllEntitiesWithError:error];
  return error;
}

+ (BOOL)enumerateEntitiesWithTransactionID:(unint64_t)d package:(id)package names:(id)names databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v14 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  transactionCopy = transaction;
  namesCopy = names;
  packageCopy = package;
  v19 = [v14 numberWithUnsignedLongLong:d];
  LOBYTE(error) = [(HDSharedSummaryEntity *)self _enumerateEntitiesWithTransactionID:v19 package:packageCopy names:namesCopy reuseTransactionID:0 databaseTransaction:transactionCopy error:error enumerationHandler:handlerCopy];

  return error;
}

+ (uint64_t)_enumerateEntitiesWithTransactionID:(void *)d package:(void *)package names:(void *)names reuseTransactionID:(void *)iD databaseTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  iDCopy = iD;
  namesCopy = names;
  packageCopy = package;
  dCopy = d;
  v19 = a2;
  v20 = objc_opt_self();
  v21 = [HDSharedSummaryEntity _predicateForTransactionID:v19 package:dCopy names:packageCopy reuseTransactionID:namesCopy];

  v22 = [iDCopy databaseForEntityClass:objc_opt_class()];

  v23 = [v20 queryWithDatabase:v22 predicate:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __139__HDSharedSummaryEntity__enumerateEntitiesWithTransactionID_package_names_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke;
  v27[3] = &unk_278616A78;
  v28 = errorCopy;
  v24 = errorCopy;
  v25 = [v23 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:transaction enumerationHandler:v27];

  return v25;
}

+ (BOOL)enumerateEntitiesWithReuseTransactionID:(unint64_t)d package:(id)package names:(id)names databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v14 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  transactionCopy = transaction;
  namesCopy = names;
  packageCopy = package;
  v19 = [v14 numberWithUnsignedLongLong:d];
  LOBYTE(error) = [(HDSharedSummaryEntity *)self _enumerateEntitiesWithTransactionID:packageCopy package:namesCopy names:v19 reuseTransactionID:transactionCopy databaseTransaction:error error:handlerCopy enumerationHandler:?];

  return error;
}

+ (BOOL)enumerateSummariesWithTransactionID:(unint64_t)d package:(id)package names:(id)names includedObjectTypes:(id)types databaseTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v62[2] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  transactionCopy = transaction;
  typesCopy = types;
  namesCopy = names;
  packageCopy = package;
  v20 = [v14 numberWithUnsignedLongLong:d];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v22 = typesCopy;
  v53 = transactionCopy;
  v52 = handlerCopy;
  v23 = v21;
  v24 = namesCopy;
  v25 = packageCopy;
  v26 = v20;
  v27 = objc_opt_self();
  v28 = [HDSharedSummaryEntity _predicateForTransactionID:v26 package:v25 names:v24 reuseTransactionID:v23];

  v56 = v24;
  v54 = v25;

  v55 = v26;
  v29 = 0x277CBE000;
  if (v22)
  {
    allObjects = [v22 allObjects];
    v31 = [allObjects hk_map:&__block_literal_global_39];
    v32 = [v31 componentsJoinedByString:{@", "}];

    allObjects2 = [v22 allObjects];
    v34 = [allObjects2 hk_map:&__block_literal_global_371];

    v35 = MEMORY[0x277CCACA8];
    v36 = +[(HDSQLiteSchemaEntity *)HDSharedSummaryObjectTypeEntity];
    v37 = v23;
    v38 = +[HDSharedSummaryEntity databaseTable];
    v39 = [v35 stringWithFormat:@"EXISTS (SELECT * FROM %@ WHERE %@ = %@.%@ AND %@ IN (%@))", v36, @"summary_id", v38, *MEMORY[0x277D10A40], @"object_type", v32];

    v40 = [MEMORY[0x277D10B90] predicateWithSQL:v39 overProperties:MEMORY[0x277CBEBF8] values:v34];
    v41 = MEMORY[0x277D10B20];
    v62[0] = v28;
    v62[1] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    v43 = [v41 predicateMatchingAllPredicates:v42];

    v23 = v37;
    v29 = 0x277CBE000uLL;

    v28 = v43;
  }

  v44 = [v53 databaseForEntityClass:objc_opt_class()];
  v45 = [v27 queryWithDatabase:v44 predicate:v28];
  v61[0] = @"uuid";
  v61[1] = @"package";
  v61[2] = @"name";
  v61[3] = @"version";
  v61[4] = @"compatibility_version";
  v61[5] = @"summary_data";
  v46 = [*(v29 + 2656) arrayWithObjects:v61 count:6];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __160__HDSharedSummaryEntity__enumerateSummariesWithTransactionID_package_names_includedObjectTypes_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke_3;
  v58[3] = &unk_278618880;
  v59 = v53;
  v60 = v52;
  v47 = v52;
  v48 = v53;
  v49 = [v45 enumeratePersistentIDsAndProperties:v46 error:error enumerationHandler:v58];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

+ (id)entityWithUUID:(id)d databaseTransaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v11 = [v9 predicateWithProperty:@"uuid" equalToValue:dCopy];
  v12 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v21 = 0;
  v13 = [self anyInDatabase:v12 predicate:v11 error:&v21];
  v14 = v21;
  v15 = v14;
  if (!v13)
  {
    if (v14)
    {
      v15 = v14;
LABEL_5:
      if (error)
      {
        v19 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_9;
    }

    v16 = MEMORY[0x277CCA9B8];
    uUIDString = [dCopy UUIDString];
    v18 = [v16 hk_error:118 format:{@"Cannot find summary with UUID %@", uUIDString}];

    v15 = v18;
    if (v15)
    {
      goto LABEL_5;
    }
  }

LABEL_9:

  return v13;
}

+ (BOOL)reuseSummariesForTransactionID:(unint64_t)d databaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke;
  v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = d;
  if ([v9 executeCachedStatementForKey:&reuseSummariesForTransactionID_databaseTransaction_error__reuseIntoTransactionKey error:error SQLGenerator:v15 bindingHandler:v14 enumerationHandler:0])
  {
    v12[4] = d;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_3;
    v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_4;
    v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v10 = [v9 executeCachedStatementForKey:&reuseSummariesForTransactionID_databaseTransaction_error__clearReuseTransactionKey error:error SQLGenerator:v13 bindingHandler:v12 enumerationHandler:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE OR IGNORE %@ SET %@=? WHERE %@=?", v2, @"transaction_id", @"reuse_transaction_id"];

  return v3;
}

uint64_t __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 2, v4);
}

id __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@=NULL WHERE %@=?", v2, @"reuse_transaction_id", @"reuse_transaction_id"];

  return v3;
}

+ (int64_t)countOfObjectsForTransactionID:(int64_t)d healthDatabase:(id)database error:(id *)error
{
  v7 = MEMORY[0x277D10B18];
  v8 = MEMORY[0x277CCABB0];
  databaseCopy = database;
  v10 = [v8 numberWithLongLong:d];
  v11 = [v7 predicateWithProperty:@"transaction_id" equalToValue:v10];

  v12 = [(HDHealthEntity *)HDSharedSummaryEntity countOfObjectsWithPredicate:v11 healthDatabase:databaseCopy error:error];
  return v12;
}

- (BOOL)syncedInDatabaseTransaction:(id)transaction error:(id *)error
{
  v4 = [(HDHealthEntity *)self numberForProperty:@"synced" transaction:transaction error:error];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)UUIDInDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self UUIDForProperty:@"uuid" database:v6];

  return v7;
}

- (id)summaryDataInDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self valueForProperty:@"summary_data" database:v6];

  return v7;
}

- (BOOL)setReuseTransactionID:(id)d databaseTransaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v17[0] = @"reuse_transaction_id";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharedSummaryEntity_setReuseTransactionID_databaseTransaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = dCopy;
  v12 = dCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

void __73__HDSharedSummaryEntity_setReuseTransactionID_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 unsignedLongLongValue];

    JUMPOUT(0x22AAC6B90);
  }

  JUMPOUT(0x22AAC6BA0);
}

+ (id)_predicateForTransactionID:(void *)d package:(void *)package names:(void *)names reuseTransactionID:
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a2;
  dCopy = d;
  packageCopy = package;
  namesCopy = names;
  objc_opt_self();
  if (v8)
  {
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"transaction_id" equalToValue:v8];
  }

  else
  {
    v12 = 0;
  }

  if (namesCopy)
  {
    v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"reuse_transaction_id" equalToValue:namesCopy];
    v14 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v12 otherPredicate:v13];

    v12 = v14;
  }

  if (dCopy)
  {
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"package" equalToValue:dCopy];
    v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v15];

    v12 = v16;
  }

  if (packageCopy)
  {
    v27 = v12;
    v28 = namesCopy;
    v29 = packageCopy;
    v30 = dCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = packageCopy;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    v31 = v8;
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v33;
      do
      {
        v22 = 0;
        v23 = v20;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v24 = [MEMORY[0x277D10B18] predicateWithProperty:@"name" equalToValue:*(*(&v32 + 1) + 8 * v22)];
          v20 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v23 otherPredicate:v24];

          ++v22;
          v23 = v20;
        }

        while (v19 != v22);
        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v27 otherPredicate:v20];

    dCopy = v30;
    v8 = v31;
    namesCopy = v28;
    packageCopy = v29;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __139__HDSharedSummaryEntity__enumerateEntitiesWithTransactionID_package_names_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v4 = [(HDSQLiteEntity *)HDSharedSummaryEntity entityWithPersistentID:v3];

  (*(*(a1 + 32) + 16))();
  return 1;
}

uint64_t __160__HDSharedSummaryEntity__enumerateSummariesWithTransactionID_package_names_includedObjectTypes_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 code];

  return [v2 numberWithInteger:v3];
}

uint64_t __160__HDSharedSummaryEntity__enumerateSummariesWithTransactionID_package_names_includedObjectTypes_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [HDSharedSummaryAuthorizationIdentifierEntity authorizationIdentifiersForSummaryID:a2 databaseTransaction:*(a1 + 32) error:?];
  if (v8)
  {
    v9 = [HDSharedSummaryObjectTypeEntity objectTypesForSummaryID:a2 databaseTransaction:*(a1 + 32) error:a5];
    if (v9)
    {
      v18 = HDSQLiteColumnWithNameAsUUID();
      v10 = HDSQLiteColumnWithNameAsString();
      v11 = HDSQLiteColumnWithNameAsString();
      v12 = HDSQLiteColumnWithNameAsString();
      v13 = HDSQLiteColumnWithNameAsString();
      v14 = HDSQLiteColumnWithNameAsData();
      v15 = [objc_alloc(MEMORY[0x277CCD928]) _initWithUUID:v18 package:v10 name:v11 version:v12 compatibilityVersion:v13 authorizationIdentifiers:v8 objectTypes:v9 summaryData:v14];
      v16 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end