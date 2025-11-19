@interface HDSharedSummaryEntity
+ (BOOL)deleteAllSummariesWithDatabaseTransaction:(id)a3 error:(id *)a4;
+ (BOOL)enumerateEntitiesWithReuseTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 databaseTransaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
+ (BOOL)enumerateEntitiesWithTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 databaseTransaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
+ (BOOL)enumerateSummariesWithTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 includedObjectTypes:(id)a6 databaseTransaction:(id)a7 error:(id *)a8 enumerationHandler:(id)a9;
+ (BOOL)reuseSummariesForTransactionID:(unint64_t)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)_predicateForTransactionID:(void *)a3 package:(void *)a4 names:(void *)a5 reuseTransactionID:;
+ (id)entityWithUUID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)insertOrReplaceWithUUID:(id)a3 package:(id)a4 name:(id)a5 version:(id)a6 compatibilityVersion:(id)a7 transactionID:(unint64_t)a8 summaryData:(id)a9 databaseTransaction:(id)a10 error:(id *)a11;
+ (id)uniquedColumns;
+ (int64_t)countOfObjectsForTransactionID:(int64_t)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (uint64_t)_enumerateEntitiesWithTransactionID:(void *)a3 package:(void *)a4 names:(void *)a5 reuseTransactionID:(void *)a6 databaseTransaction:(uint64_t)a7 error:(void *)a8 enumerationHandler:;
- (BOOL)setReuseTransactionID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
- (BOOL)syncedInDatabaseTransaction:(id)a3 error:(id *)a4;
- (id)UUIDInDatabaseTransaction:(id)a3 error:(id *)a4;
- (id)summaryDataInDatabaseTransaction:(id)a3 error:(id *)a4;
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

+ (id)insertOrReplaceWithUUID:(id)a3 package:(id)a4 name:(id)a5 version:(id)a6 compatibilityVersion:(id)a7 transactionID:(unint64_t)a8 summaryData:(id)a9 databaseTransaction:(id)a10 error:(id *)a11
{
  v42[8] = *MEMORY[0x277D85DE8];
  v32 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [a10 databaseForEntityClass:a1];
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
  v35 = v32;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v40 = v20;
  v41 = a8;
  v39 = v19;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v32;
  v29 = [a1 insertOrReplaceEntity:1 database:v21 properties:v22 error:a11 bindingHandler:v34];

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

+ (BOOL)deleteAllSummariesWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 protectedDatabase];

  v8 = [v6 queryWithDatabase:v7 predicate:0];

  LOBYTE(a4) = [v8 deleteAllEntitiesWithError:a4];
  return a4;
}

+ (BOOL)enumerateEntitiesWithTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 databaseTransaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v14 = MEMORY[0x277CCABB0];
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v14 numberWithUnsignedLongLong:a3];
  LOBYTE(a7) = [(HDSharedSummaryEntity *)a1 _enumerateEntitiesWithTransactionID:v19 package:v18 names:v17 reuseTransactionID:0 databaseTransaction:v16 error:a7 enumerationHandler:v15];

  return a7;
}

+ (uint64_t)_enumerateEntitiesWithTransactionID:(void *)a3 package:(void *)a4 names:(void *)a5 reuseTransactionID:(void *)a6 databaseTransaction:(uint64_t)a7 error:(void *)a8 enumerationHandler:
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = objc_opt_self();
  v21 = [HDSharedSummaryEntity _predicateForTransactionID:v19 package:v18 names:v17 reuseTransactionID:v16];

  v22 = [v15 databaseForEntityClass:objc_opt_class()];

  v23 = [v20 queryWithDatabase:v22 predicate:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __139__HDSharedSummaryEntity__enumerateEntitiesWithTransactionID_package_names_reuseTransactionID_databaseTransaction_error_enumerationHandler___block_invoke;
  v27[3] = &unk_278616A78;
  v28 = v14;
  v24 = v14;
  v25 = [v23 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:a7 enumerationHandler:v27];

  return v25;
}

+ (BOOL)enumerateEntitiesWithReuseTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 databaseTransaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v14 = MEMORY[0x277CCABB0];
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v14 numberWithUnsignedLongLong:a3];
  LOBYTE(a7) = [(HDSharedSummaryEntity *)a1 _enumerateEntitiesWithTransactionID:v18 package:v17 names:v19 reuseTransactionID:v16 databaseTransaction:a7 error:v15 enumerationHandler:?];

  return a7;
}

+ (BOOL)enumerateSummariesWithTransactionID:(unint64_t)a3 package:(id)a4 names:(id)a5 includedObjectTypes:(id)a6 databaseTransaction:(id)a7 error:(id *)a8 enumerationHandler:(id)a9
{
  v62[2] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = [v14 numberWithUnsignedLongLong:a3];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v22 = v17;
  v53 = v16;
  v52 = v15;
  v23 = v21;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = objc_opt_self();
  v28 = [HDSharedSummaryEntity _predicateForTransactionID:v26 package:v25 names:v24 reuseTransactionID:v23];

  v56 = v24;
  v54 = v25;

  v55 = v26;
  v29 = 0x277CBE000;
  if (v22)
  {
    v30 = [v22 allObjects];
    v31 = [v30 hk_map:&__block_literal_global_39];
    v32 = [v31 componentsJoinedByString:{@", "}];

    v33 = [v22 allObjects];
    v34 = [v33 hk_map:&__block_literal_global_371];

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
  v49 = [v45 enumeratePersistentIDsAndProperties:v46 error:a8 enumerationHandler:v58];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

+ (id)entityWithUUID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277D10B18];
  v10 = a4;
  v11 = [v9 predicateWithProperty:@"uuid" equalToValue:v8];
  v12 = [v10 databaseForEntityClass:objc_opt_class()];

  v21 = 0;
  v13 = [a1 anyInDatabase:v12 predicate:v11 error:&v21];
  v14 = v21;
  v15 = v14;
  if (!v13)
  {
    if (v14)
    {
      v15 = v14;
LABEL_5:
      if (a5)
      {
        v19 = v15;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_9;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = [v8 UUIDString];
    v18 = [v16 hk_error:118 format:{@"Cannot find summary with UUID %@", v17}];

    v15 = v18;
    if (v15)
    {
      goto LABEL_5;
    }
  }

LABEL_9:

  return v13;
}

+ (BOOL)reuseSummariesForTransactionID:(unint64_t)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 databaseForEntityClass:objc_opt_class()];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke;
  v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v15[4] = a1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = a3;
  if ([v9 executeCachedStatementForKey:&reuseSummariesForTransactionID_databaseTransaction_error__reuseIntoTransactionKey error:a5 SQLGenerator:v15 bindingHandler:v14 enumerationHandler:0])
  {
    v12[4] = a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_3;
    v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v13[4] = a1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__HDSharedSummaryEntity_reuseSummariesForTransactionID_databaseTransaction_error___block_invoke_4;
    v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v10 = [v9 executeCachedStatementForKey:&reuseSummariesForTransactionID_databaseTransaction_error__clearReuseTransactionKey error:a5 SQLGenerator:v13 bindingHandler:v12 enumerationHandler:0];
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

+ (int64_t)countOfObjectsForTransactionID:(int64_t)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = [v8 numberWithLongLong:a3];
  v11 = [v7 predicateWithProperty:@"transaction_id" equalToValue:v10];

  v12 = [(HDHealthEntity *)HDSharedSummaryEntity countOfObjectsWithPredicate:v11 healthDatabase:v9 error:a5];
  return v12;
}

- (BOOL)syncedInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v4 = [(HDHealthEntity *)self numberForProperty:@"synced" transaction:a3 error:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)UUIDInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self UUIDForProperty:@"uuid" database:v6];

  return v7;
}

- (id)summaryDataInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self valueForProperty:@"summary_data" database:v6];

  return v7;
}

- (BOOL)setReuseTransactionID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:objc_opt_class()];

  v17[0] = @"reuse_transaction_id";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharedSummaryEntity_setReuseTransactionID_databaseTransaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = v8;
  v12 = v8;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
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

+ (id)_predicateForTransactionID:(void *)a3 package:(void *)a4 names:(void *)a5 reuseTransactionID:
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  if (v8)
  {
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"transaction_id" equalToValue:v8];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"reuse_transaction_id" equalToValue:v11];
    v14 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v12 otherPredicate:v13];

    v12 = v14;
  }

  if (v9)
  {
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"package" equalToValue:v9];
    v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v15];

    v12 = v16;
  }

  if (v10)
  {
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v30 = v9;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v10;
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

    v9 = v30;
    v8 = v31;
    v11 = v28;
    v10 = v29;
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