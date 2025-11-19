@interface HDHealthEntity
+ (BOOL)deleteEntitiesWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 block:(id)a7;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 syncEntityClass:(Class)a5 session:(id)a6 syncAnchorRange:(HDSyncAnchorRange)a7 orderingTerms:(id)a8 limit:(unint64_t)a9 lastSyncAnchor:(int64_t *)a10 distinct:(BOOL)a11 healthDatabase:(id)a12 error:(id *)a13 block:(id)a14;
+ (BOOL)enumerateProperties:(id)a3 withPredicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 enumerationHandler:(id)a7;
+ (BOOL)enumerateProperties:(id)a3 withPredicate:(id)a4 orderingTerms:(id)a5 groupBy:(id)a6 limit:(unint64_t)a7 healthDatabase:(id)a8 error:(id *)a9 enumerationHandler:(id)a10;
+ (BOOL)performReadTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)performReadTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6 inaccessibilityHandler:(id)a7;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5 inaccessibilityHandler:(id)a6;
+ (BOOL)updateProperties:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 bindingHandler:(id)a7;
+ (id)_syncQueryDescriptorWithPredicate:(void *)a3 orderingTerms:(uint64_t)a4 limit:(void *)a5 anchorProperty:(uint64_t)a6 distinct:;
+ (id)_syncQueryWithDatabase:(void *)a3 predicate:(void *)a4 orderingTerms:(uint64_t)a5 limit:(void *)a6 anchorProperty:(uint64_t)a7 distinct:;
+ (id)anyWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)countDistinctForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)createValidationError:(id)a3 rowId:(id)a4;
+ (id)defaultForeignKey;
+ (id)indicesWithBehavior:(id)a3;
+ (id)insertOrReplaceEntity:(BOOL)a3 healthDatabase:(id)a4 properties:(id)a5 error:(id *)a6 bindingHandler:(id)a7;
+ (id)maxRowIDForPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)predicateForSyncWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6;
+ (id)propertyValueForAnyWithProperty:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6;
+ (id)transactionContextForWriting:(BOOL)a3 baseContext:(id)a4;
+ (id)triggersWithBehavior:(id)a3;
+ (id)updateSQLForTimeOffsetWithBindingCount:(unint64_t *)a3;
+ (int64_t)countOfObjectsWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (int64_t)nextSyncAnchorWithStartAnchor:(int64_t)a3 predicate:(id)a4 syncEntityClass:(Class)a5 session:(id)a6 orderingTerms:(id)a7 limit:(unint64_t)a8 healthDatabase:(id)a9 error:(id *)a10;
+ (int64_t)protectionClass;
+ (int64_t)sizeOfDatabaseTableInHealthDatabase:(id)a3 error:(id *)a4;
- (BOOL)getValuesForProperties:(id)a3 healthDatabase:(id)a4 error:(id *)a5 handler:(id)a6;
- (BOOL)setDate:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)setForeignKeyEntity:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)setNumber:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)setString:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)updateProperties:(id)a3 healthDatabase:(id)a4 error:(id *)a5 bindingHandler:(id)a6;
- (BOOL)willDeleteWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)dateForProperty:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)foreignKeyEntity:(Class)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6;
- (id)numberForProperty:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)stringForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
- (id)stringForProperty:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)valueForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
@end

@implementation HDHealthEntity

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 syncEntityClass:(Class)a5 session:(id)a6 syncAnchorRange:(HDSyncAnchorRange)a7 orderingTerms:(id)a8 limit:(unint64_t)a9 lastSyncAnchor:(int64_t *)a10 distinct:(BOOL)a11 healthDatabase:(id)a12 error:(id *)a13 block:(id)a14
{
  end = a7.end;
  start = a7.start;
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v37 = a8;
  v21 = a12;
  v22 = a14;
  v23 = [a1 propertyForSyncAnchor];
  if (!v23)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity+Sync.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"anchorProperty != nil"}];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __184__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_syncEntityClass_session_syncAnchorRange_orderingTerms_limit_lastSyncAnchor_distinct_healthDatabase_error_block___block_invoke;
  v40[3] = &unk_27861F250;
  v24 = v18;
  v41 = v24;
  v25 = v23;
  v42 = v25;
  v48 = a1;
  v26 = v19;
  v43 = v26;
  v49 = a5;
  v27 = v20;
  v44 = v27;
  v28 = start;
  v50 = start;
  v51 = end;
  v29 = v37;
  v52 = a9;
  v53 = a11;
  v45 = v29;
  v47 = &v54;
  v30 = v22;
  v46 = v30;
  v31 = [a1 performReadTransactionWithHealthDatabase:v21 error:a13 block:v40];
  v32 = v31 ^ 1;
  if (!a10)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    v33 = v55[3];
    if (!v33)
    {
      v33 = v28;
    }

    *a10 = v33;
  }

  _Block_object_dispose(&v54, 8);
  return v31;
}

uint64_t __184__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_syncEntityClass_session_syncAnchorRange_orderingTerms_limit_lastSyncAnchor_distinct_healthDatabase_error_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) isEqualToString:*MEMORY[0x277D10A40]];
  if (v7)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (!v6 || (v9 = [v6 indexOfObject:*(a1 + 40)], v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = [v10 arrayByAddingObject:*(a1 + 40)];
      }

      else
      {
        v29[0] = *(a1 + 40);
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      }

      v6 = v11;
      v9 = [*(a1 + 32) count];
    }

    v8 = v9;
  }

  v12 = [*(a1 + 88) predicateForSyncWithPredicate:*(a1 + 48) syncEntityClass:*(a1 + 96) session:*(a1 + 56) syncAnchorRange:{*(a1 + 104), *(a1 + 112)}];
  v13 = *(a1 + 88);
  v14 = [v5 databaseForEntityClass:v13];
  v15 = [(HDHealthEntity *)v13 _syncQueryWithDatabase:v14 predicate:v12 orderingTerms:*(a1 + 64) limit:*(a1 + 120) anchorProperty:*(a1 + 40) distinct:*(a1 + 128)];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __184__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_syncEntityClass_session_syncAnchorRange_orderingTerms_limit_lastSyncAnchor_distinct_healthDatabase_error_block___block_invoke_2;
  v22[3] = &unk_27861F228;
  v16 = *(a1 + 88);
  v27 = v7;
  v25 = v16;
  v26 = v8;
  v21 = *(a1 + 72);
  v17 = v21;
  v23 = v21;
  v24 = v28;
  v18 = [v15 enumeratePersistentIDsAndProperties:v6 error:a3 enumerationHandler:v22];

  _Block_object_dispose(v28, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)_syncQueryWithDatabase:(void *)a3 predicate:(void *)a4 orderingTerms:(uint64_t)a5 limit:(void *)a6 anchorProperty:(uint64_t)a7 distinct:
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = [(HDHealthEntity *)v16 _syncQueryDescriptorWithPredicate:v14 orderingTerms:v13 limit:a5 anchorProperty:v12 distinct:a7];

  v18 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v15 descriptor:v17];

  return v18;
}

uint64_t __184__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_syncEntityClass_session_syncAnchorRange_orderingTerms_limit_lastSyncAnchor_distinct_healthDatabase_error_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(*(a1 + 56)) initWithPersistentID:a2];
  if ((*(a1 + 72) & 1) == 0)
  {
    v7 = *(a1 + 64);
    a2 = HDSQLiteColumnAsInt64();
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 40) + 8) + 24);
  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = (*(v8 + 16))();

  return v10 & 1;
}

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 block:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_healthDatabase_error_block___block_invoke;
  v19[3] = &unk_27861F2A0;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v23 = a1;
  v15 = v14;
  v16 = v12;
  v17 = v13;
  LOBYTE(a6) = [a1 performReadTransactionWithHealthDatabase:a5 error:a6 block:v19];

  return a6;
}

uint64_t __100__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_healthDatabase_error_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  v7 = [v5 databaseForEntityClass:v6];
  v8 = [(HDHealthEntity *)v6 _syncQueryWithDatabase:v7 predicate:*(a1 + 32) orderingTerms:0 limit:0 anchorProperty:*MEMORY[0x277D10A40] distinct:1];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_healthDatabase_error_block___block_invoke_2;
  v13[3] = &unk_27861F278;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v16 = *(a1 + 56);
  v14 = v9;
  v15 = v17;
  v11 = [v8 enumeratePersistentIDsAndProperties:v10 error:a3 enumerationHandler:v13];

  _Block_object_dispose(v17, 8);
  return v11;
}

uint64_t __100__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_healthDatabase_error_block___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[6];
  v6 = a3;
  v7 = [[v5 alloc] initWithPersistentID:a2];
  v8 = a1[4];
  ++*(*(a1[5] + 8) + 24);
  v9 = (*(v8 + 16))();

  return v9 & 1;
}

+ (int64_t)nextSyncAnchorWithStartAnchor:(int64_t)a3 predicate:(id)a4 syncEntityClass:(Class)a5 session:(id)a6 orderingTerms:(id)a7 limit:(unint64_t)a8 healthDatabase:(id)a9 error:(id *)a10
{
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [a1 propertyForSyncAnchor];
  if (!v21)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity+Sync.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"anchorProperty != nil"}];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = -1;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __129__HDHealthEntity_Sync__nextSyncAnchorWithStartAnchor_predicate_syncEntityClass_session_orderingTerms_limit_healthDatabase_error___block_invoke;
  v29[3] = &unk_27861F2C8;
  v35 = a1;
  v22 = v17;
  v30 = v22;
  v36 = a5;
  v23 = v18;
  v31 = v23;
  v37 = a3;
  v24 = v19;
  v32 = v24;
  v38 = a8;
  v25 = v21;
  v33 = v25;
  v34 = &v39;
  [a1 performReadTransactionWithHealthDatabase:v20 error:a10 block:v29];
  v26 = v40[3];

  _Block_object_dispose(&v39, 8);
  return v26;
}

uint64_t __129__HDHealthEntity_Sync__nextSyncAnchorWithStartAnchor_predicate_syncEntityClass_session_orderingTerms_limit_healthDatabase_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 88);
  v8 = a2;
  v9 = HDSyncAnchorRangeMake(v7, 0x7FFFFFFFFFFFFFFFLL);
  v11 = [v3 predicateForSyncWithPredicate:v5 syncEntityClass:v4 session:v6 syncAnchorRange:{v9, v10}];
  v12 = [(HDHealthEntity *)*(a1 + 72) _syncQueryDescriptorWithPredicate:v11 orderingTerms:*(a1 + 48) limit:*(a1 + 96) anchorProperty:*(a1 + 56) distinct:0];
  v13 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *MEMORY[0x277D10A90];
  v16 = [v8 databaseForEntityClass:v13];

  v21 = 0;
  v17 = [v13 aggregateSingleValueForProperty:v14 function:v15 queryDescriptor:v12 database:v16 error:&v21];
  v18 = v21;

  if (v17)
  {
    v19 = [v17 longLongValue];
  }

  else
  {
    v19 = *(a1 + 88);
  }

  *(*(*(a1 + 64) + 8) + 24) = v19;

  return 1;
}

+ (id)_syncQueryDescriptorWithPredicate:(void *)a3 orderingTerms:(uint64_t)a4 limit:(void *)a5 anchorProperty:(uint64_t)a6 distinct:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a2;
  v13 = objc_opt_self();
  v14 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v14 setEntityClass:v13];
  [v14 setLimitCount:a4];
  [v14 setPredicate:v12];

  [v14 setReturnsDistinctEntities:a6];
  if (v10)
  {
    [v14 setOrderingTerms:v10];
  }

  else
  {
    v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:v11 entityClass:v13 ascending:1];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v14 setOrderingTerms:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)predicateForSyncWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6
{
  end = a6.end;
  start = a6.start;
  v11 = a3;
  v12 = a5;
  v13 = [a1 propertyForSyncAnchor];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:start];
  v30 = v13;
  v16 = [MEMORY[0x277D10B18] predicateWithProperty:v13 greaterThanValue:v15];
  [v14 addObject:v16];

  if (end != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:end];
    v18 = [MEMORY[0x277D10B18] predicateWithProperty:v30 lessThanOrEqualToValue:v17];
    [v14 addObject:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)a4 excludedSyncStoresForSession:v12];
  }

  else
  {
    [v12 excludedSyncStores];
  }
  v19 = ;
  if ([v19 count])
  {
    v20 = [v19 hk_map:&__block_literal_global_84];
    v21 = MEMORY[0x277D10B28];
    v22 = [a1 propertyForSyncProvenance];
    v23 = [v21 doesNotContainPredicateWithProperty:v22 values:v20];
    [v14 addObject:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)a4 excludedSyncIdentitiesForSession:v12];
  }

  else
  {
    [v12 excludedSyncIdentities];
  }
  v24 = ;
  v25 = [a1 propertyForSyncIdentity];
  if (v25)
  {
    v26 = [v24 hk_map:&__block_literal_global_316];
    v27 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:v25 values:v26];
    [v14 addObject:v27];
  }

  if (v11)
  {
    [v14 addObject:v11];
  }

  v28 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];

  return v28;
}

uint64_t __94__HDHealthEntity_Sync__predicateForSyncWithPredicate_syncEntityClass_session_syncAnchorRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

id __94__HDHealthEntity_Sync__predicateForSyncWithPredicate_syncEntityClass_session_syncAnchorRange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 entity];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "persistentID")}];

  return v4;
}

+ (int64_t)protectionClass
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"+[%@ %@] not implemented", a1, v5}];

  return 1;
}

+ (id)defaultForeignKey
{
  v3 = objc_alloc(MEMORY[0x277D10B38]);
  v4 = [v3 initWithEntityClass:a1 property:*MEMORY[0x277D10A40] deletionAction:2];

  return v4;
}

+ (id)createValidationError:(id)a3 rowId:(id)a4
{
  v18[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA9B8] hk_error:120 description:v6];
  v17[0] = *MEMORY[0x277CCBD78];
  v9 = [a1 databaseTable];
  v10 = *MEMORY[0x277CCA7E8];
  v18[0] = v9;
  v18[1] = v8;
  v11 = *MEMORY[0x277CCBD70];
  v17[1] = v10;
  v17[2] = v11;
  v18[2] = v7;
  v17[3] = *MEMORY[0x277CCBD88];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ROWID %@", v7];
  v18[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v14 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)createTableSQLWithBehavior:(id)a3
{
  v4 = a3;
  v12 = 0;
  [a1 columnDefinitionsWithBehavior:v4 count:&v12];
  v5 = [a1 disambiguatedDatabaseTable];
  v6 = [a1 foreignKeys];
  v7 = [a1 primaryKeyColumns];
  v8 = [a1 uniquedColumns];
  v9 = [a1 checkConstraints];
  [a1 hasROWID];
  v10 = HDSQLiteEntityCreateTableSQL();

  return v10;
}

+ (id)indicesWithBehavior:(id)a3
{
  v3 = [a1 indices];

  return v3;
}

+ (id)triggersWithBehavior:(id)a3
{
  v3 = [a1 triggers];

  return v3;
}

+ (BOOL)performReadTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_opt_self();
  if (v8)
  {
    v10 = [a1 transactionContextForWriting:0 baseContext:0];
    v11 = [v8 performTransactionWithContext:v10 error:a4 block:v9 inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1500 description:@"Nil healthDatabase"];
    v11 = 0;
  }

  return v11;
}

+ (BOOL)performReadTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_opt_self();
  if (v10)
  {
    v13 = [a1 transactionContextForWriting:0 baseContext:v11];
    v14 = [v10 performTransactionWithContext:v13 error:a5 block:v12 inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_opt_self();
  if (v8)
  {
    v10 = [a1 transactionContextForWriting:1 baseContext:0];
    v11 = [v8 performTransactionWithContext:v10 error:a4 block:v9 inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1500 description:@"Nil healthDatabase"];
    v11 = 0;
  }

  return v11;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_opt_self();
  if (v10)
  {
    v13 = [a1 transactionContextForWriting:1 baseContext:v11];
    v14 = [v10 performTransactionWithContext:v13 error:a5 block:v12 inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 error:(id *)a4 block:(id)a5 inaccessibilityHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_opt_self();
  if (v10)
  {
    v13 = [a1 transactionContextForWriting:1 baseContext:0];
    v14 = [v10 performTransactionWithContext:v13 error:a4 block:v11 inaccessibilityHandler:v12];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)a3 context:(id)a4 error:(id *)a5 block:(id)a6 inaccessibilityHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  objc_opt_self();
  if (v12)
  {
    v16 = [a1 transactionContextForWriting:1 baseContext:v13];
    v17 = [v12 performTransactionWithContext:v16 error:a5 block:v14 inaccessibilityHandler:v15];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:1500 description:@"Nil healthDatabase"];
    v17 = 0;
  }

  return v17;
}

+ (id)transactionContextForWriting:(BOOL)a3 baseContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([a1 protectionClass] != 2)
  {
    if (!v4)
    {
      if (v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = +[HDDatabaseTransactionContext contextForReading];
      }

      v9 = v10;
      goto LABEL_15;
    }

    v7 = [v6 copyForWriting];
    if (!v7)
    {
      v8 = +[HDDatabaseTransactionContext contextForWriting];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    v7 = [v6 copyForReadingProtectedData];
    if (!v7)
    {
      v8 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = [v6 copyForWritingProtectedData];
  if (v7)
  {
LABEL_9:
    v8 = v7;
    goto LABEL_10;
  }

  v8 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
LABEL_10:
  v9 = v8;

LABEL_15:

  return v9;
}

+ (id)insertOrReplaceEntity:(BOOL)a3 healthDatabase:(id)a4 properties:(id)a5 error:(id *)a6 bindingHandler:(id)a7
{
  v12 = a5;
  v13 = a7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__118;
  v28 = __Block_byref_object_dispose__118;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDHealthEntity_insertOrReplaceEntity_healthDatabase_properties_error_bindingHandler___block_invoke;
  v18[3] = &unk_278623E90;
  v21 = &v24;
  v22 = a1;
  v23 = a3;
  v19 = v12;
  v20 = v13;
  v14 = v13;
  v15 = v12;
  [a1 performWriteTransactionWithHealthDatabase:a4 error:a6 block:v18];
  v16 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v16;
}

BOOL __87__HDHealthEntity_insertOrReplaceEntity_healthDatabase_properties_error_bindingHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = [*(a1 + 56) insertOrReplaceEntity:*(a1 + 64) database:v6 properties:*(a1 + 32) error:a3 bindingHandler:*(a1 + 40)];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v10;
}

- (BOOL)updateProperties:(id)a3 healthDatabase:(id)a4 error:(id *)a5 bindingHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HDHealthEntity_updateProperties_healthDatabase_error_bindingHandler___block_invoke;
  v17[3] = &unk_278623EB8;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  LOBYTE(a5) = [v13 performWriteTransactionWithHealthDatabase:v11 error:a5 block:v17];

  return a5;
}

uint64_t __71__HDHealthEntity_updateProperties_healthDatabase_error_bindingHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v6 = [*(a1 + 32) updateProperties:*(a1 + 40) database:v5 error:a3 bindingHandler:*(a1 + 48)];

  return v6;
}

+ (BOOL)updateProperties:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 bindingHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HDHealthEntity_updateProperties_predicate_healthDatabase_error_bindingHandler___block_invoke;
  v21[3] = &unk_278623EE0;
  v25 = a1;
  v17 = v12;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  LOBYTE(a6) = [v16 performWriteTransactionWithHealthDatabase:v14 error:a6 block:v21];

  return a6;
}

uint64_t __81__HDHealthEntity_updateProperties_predicate_healthDatabase_error_bindingHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [*(a1 + 56) updateProperties:*(a1 + 32) predicate:*(a1 + 40) database:v5 error:a3 bindingHandler:*(a1 + 48)];

  return v6;
}

+ (int64_t)countOfObjectsWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HDHealthEntity_Conveniences__countOfObjectsWithPredicate_healthDatabase_error___block_invoke;
  v12[3] = &unk_278623F08;
  v14 = &v16;
  v15 = a1;
  v13 = v8;
  v9 = v8;
  [a1 performReadTransactionWithHealthDatabase:a4 error:a5 block:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

BOOL __81__HDHealthEntity_Conveniences__countOfObjectsWithPredicate_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [*(a1 + 48) countValueForProperty:*MEMORY[0x277D10A48] predicate:*(a1 + 32) database:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 longValue];
  }

  return v8 != 0;
}

+ (id)countDistinctForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__118;
  v20 = __Block_byref_object_dispose__118;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HDHealthEntity_Conveniences__countDistinctForProperty_healthDatabase_error___block_invoke;
  v12[3] = &unk_278623F30;
  v14 = &v16;
  v15 = a1;
  v9 = v8;
  v13 = v9;
  if ([a1 performReadTransactionWithHealthDatabase:a4 error:a5 block:v12])
  {
    v10 = v17[5];
  }

  else
  {
    v10 = &unk_283CB3B40;
  }

  _Block_object_dispose(&v16, 8);

  return v10;
}

BOOL __78__HDHealthEntity_Conveniences__countDistinctForProperty_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [*(a1 + 48) countDistinctForProperty:*(a1 + 32) predicate:0 database:v6 error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v10;
}

+ (int64_t)sizeOfDatabaseTableInHealthDatabase:(id)a3 error:(id *)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HDHealthEntity_Conveniences__sizeOfDatabaseTableInHealthDatabase_error___block_invoke;
  v6[3] = &unk_278623F58;
  v6[4] = &v7;
  v6[5] = a1;
  if ([a1 performReadTransactionWithHealthDatabase:a3 error:a4 block:v6])
  {
    v4 = v8[3];
  }

  else
  {
    v4 = -1;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __74__HDHealthEntity_Conveniences__sizeOfDatabaseTableInHealthDatabase_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databaseForEntityClass:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = [*(a1 + 40) sizeOfEntityTableInDatabase:v4];

  return 1;
}

+ (BOOL)enumerateProperties:(id)a3 withPredicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 enumerationHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (![v13 count])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity.mm" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"[properties count] > 0"}];

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity.mm" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"enumerationHandler != NULL"}];

    goto LABEL_3;
  }

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_healthDatabase_error_enumerationHandler___block_invoke;
  v24[3] = &unk_278623EE0;
  v28 = a1;
  v17 = v14;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v16;
  v27 = v19;
  v20 = [a1 performReadTransactionWithHealthDatabase:v15 error:a6 block:v24];

  return v20;
}

uint64_t __106__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_healthDatabase_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [*(a1 + 56) queryWithDatabase:v5 predicate:*(a1 + 32)];
  v7 = [v6 enumeratePersistentIDsAndProperties:*(a1 + 40) error:a3 enumerationHandler:*(a1 + 48)];

  return v7;
}

+ (BOOL)enumerateProperties:(id)a3 withPredicate:(id)a4 orderingTerms:(id)a5 groupBy:(id)a6 limit:(unint64_t)a7 healthDatabase:(id)a8 error:(id *)a9 enumerationHandler:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v32 = a6;
  v20 = a8;
  v21 = a10;
  if (![v17 count])
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity.mm" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"[properties count] > 0"}];
  }

  v22 = v32;
  if (!v21)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"HDHealthEntity.mm" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"enumerationHandler != NULL"}];

    v22 = v32;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __134__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_orderingTerms_groupBy_limit_healthDatabase_error_enumerationHandler___block_invoke;
  v33[3] = &unk_278623F80;
  v39 = a1;
  v23 = v18;
  v34 = v23;
  v40 = a7;
  v24 = v19;
  v35 = v24;
  v25 = v22;
  v36 = v25;
  v26 = v17;
  v37 = v26;
  v27 = v21;
  v38 = v27;
  v28 = [a1 performReadTransactionWithHealthDatabase:v20 error:a9 block:v33];

  return v28;
}

uint64_t __134__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_orderingTerms_groupBy_limit_healthDatabase_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v6 = [*(a1 + 72) queryWithDatabase:v5 predicate:*(a1 + 32) limit:*(a1 + 80) orderingTerms:*(a1 + 40) groupBy:*(a1 + 48)];
  v7 = [v6 enumeratePersistentIDsAndProperties:*(a1 + 56) error:a3 enumerationHandler:*(a1 + 64)];

  return v7;
}

+ (BOOL)deleteEntitiesWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDHealthEntity_Conveniences__deleteEntitiesWithPredicate_healthDatabase_error___block_invoke;
  v11[3] = &unk_278623FA8;
  v12 = v8;
  v13 = a1;
  v9 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:a4 error:a5 block:v11];

  return a5;
}

uint64_t __81__HDHealthEntity_Conveniences__deleteEntitiesWithPredicate_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 40) deleteEntitiesInDatabase:v5 predicate:*(a1 + 32) error:a3];

  return v6;
}

+ (id)anyWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__118;
  v20 = __Block_byref_object_dispose__118;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDHealthEntity_Conveniences__anyWithPredicate_healthDatabase_error___block_invoke;
  v12[3] = &unk_278623F30;
  v14 = &v16;
  v15 = a1;
  v13 = v8;
  v9 = v8;
  [a1 performReadTransactionWithHealthDatabase:a4 error:a5 block:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __70__HDHealthEntity_Conveniences__anyWithPredicate_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [*(a1 + 48) anyInDatabase:v6 predicate:*(a1 + 32) error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

+ (id)propertyValueForAnyWithProperty:(id)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__118;
  v25 = __Block_byref_object_dispose__118;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDHealthEntity_Conveniences__propertyValueForAnyWithProperty_predicate_healthDatabase_error___block_invoke;
  v16[3] = &unk_278623FD0;
  v19 = &v21;
  v20 = a1;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  [a1 performReadTransactionWithHealthDatabase:a5 error:a6 block:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __95__HDHealthEntity_Conveniences__propertyValueForAnyWithProperty_predicate_healthDatabase_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:a1[7]];
  v7 = a1[7];
  v8 = a1[4];
  v9 = a1[5];
  v21 = 0;
  v10 = [v7 propertyValueForAnyInDatabase:v6 property:v8 predicate:v9 error:&v21];
  v11 = v21;
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = *(*(a1[6] + 8) + 40);
  v15 = v11;
  v16 = v15;
  if (v15)
  {
    if (a3)
    {
      v17 = v15;
      *a3 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v16)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;

  return v19;
}

+ (id)maxRowIDForPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__118;
  v20 = __Block_byref_object_dispose__118;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDHealthEntity_Conveniences__maxRowIDForPredicate_healthDatabase_error___block_invoke;
  v12[3] = &unk_278623F30;
  v14 = &v16;
  v15 = a1;
  v13 = v8;
  v9 = v8;
  [a1 performReadTransactionWithHealthDatabase:a4 error:a5 block:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __74__HDHealthEntity_Conveniences__maxRowIDForPredicate_healthDatabase_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:a1[6]];
  v7 = a1[6];
  v8 = *MEMORY[0x277D10A40];
  v9 = a1[4];
  v18 = 0;
  v10 = [v7 maxValueForProperty:v8 predicate:v9 database:v6 error:&v18];
  v11 = v18;
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = *(a1[5] + 8);
  if (*(v14 + 40))
  {
    goto LABEL_2;
  }

  if (!v11)
  {
    *(v14 + 40) = &unk_283CB3B58;
LABEL_2:
    v15 = 1;
    goto LABEL_3;
  }

  if (a3)
  {
    v17 = v11;
    v15 = 0;
    *a3 = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_3:

  return v15;
}

- (BOOL)getValuesForProperties:(id)a3 healthDatabase:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HDHealthEntity_Conveniences__getValuesForProperties_healthDatabase_error_handler___block_invoke;
  v17[3] = &unk_278623EB8;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  LOBYTE(a5) = [v13 performReadTransactionWithHealthDatabase:v11 error:a5 block:v17];

  return a5;
}

uint64_t __84__HDHealthEntity_Conveniences__getValuesForProperties_healthDatabase_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 databaseForEntity:*(a1 + 32)];
  v4 = [*(a1 + 32) getValuesForProperties:*(a1 + 40) database:v3 handler:*(a1 + 48)];

  return v4;
}

- (id)valueForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__118;
  v21 = __Block_byref_object_dispose__118;
  v22 = 0;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HDHealthEntity_Conveniences__valueForProperty_healthDatabase_error___block_invoke;
  v14[3] = &unk_27861CE58;
  v14[4] = self;
  v16 = &v17;
  v11 = v8;
  v15 = v11;
  [v10 performReadTransactionWithHealthDatabase:v9 error:a5 block:v14];
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __70__HDHealthEntity_Conveniences__valueForProperty_healthDatabase_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databaseForEntity:*(a1 + 32)];
  v5 = [*(a1 + 32) valueForProperty:*(a1 + 40) database:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

- (id)stringForProperty:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__118;
  v22 = __Block_byref_object_dispose__118;
  v23 = 0;
  v10 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDHealthEntity_Conveniences__stringForProperty_healthDatabase_error___block_invoke;
  v15[3] = &unk_27861CE58;
  v15[4] = self;
  v17 = &v18;
  v11 = v8;
  v16 = v11;
  if ([v10 performReadTransactionWithHealthDatabase:v9 error:a5 block:v15])
  {
    v12 = v19[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v18, 8);

  return v13;
}

uint64_t __71__HDHealthEntity_Conveniences__stringForProperty_healthDatabase_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databaseForEntity:*(a1 + 32)];
  v5 = [*(a1 + 32) stringForProperty:*(a1 + 40) database:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

- (id)dateForProperty:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HDHealthEntity_Conveniences__dateForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = v8;
  v18 = v12;
  LODWORD(a5) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:a5 handler:v17];

  if (a5)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __66__HDHealthEntity_Conveniences__dateForProperty_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnWithNameAsDate();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (BOOL)setDate:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v12 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__HDHealthEntity_Conveniences__setDate_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = v11;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  LOBYTE(a6) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:a6 bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a6;
}

void __70__HDHealthEntity_Conveniences__setDate_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6B50);
}

- (id)stringForProperty:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDHealthEntity_Conveniences__stringForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = v8;
  v18 = v12;
  LODWORD(a5) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:a5 handler:v17];

  if (a5)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __68__HDHealthEntity_Conveniences__stringForProperty_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (BOOL)setString:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v12 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDHealthEntity_Conveniences__setString_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = v11;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  LOBYTE(a6) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:a6 bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a6;
}

void __72__HDHealthEntity_Conveniences__setString_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6BD0);
}

- (id)numberForProperty:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDHealthEntity_Conveniences__numberForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = v8;
  v18 = v12;
  LODWORD(a5) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:a5 handler:v17];

  if (a5)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __68__HDHealthEntity_Conveniences__numberForProperty_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnWithNameAsNumber();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (BOOL)setNumber:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v12 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDHealthEntity_Conveniences__setNumber_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = v11;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  LOBYTE(a6) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:a6 bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a6;
}

void __72__HDHealthEntity_Conveniences__setNumber_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6BB0);
}

- (id)foreignKeyEntity:(Class)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__118;
  v27 = __Block_byref_object_dispose__118;
  v28 = 0;
  v29[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v13 = [v11 databaseForEntity:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__HDHealthEntity_Conveniences__foreignKeyEntity_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624048;
  v14 = v10;
  v20 = v14;
  v21 = &v23;
  v22 = a3;
  LODWORD(a6) = [(HDSQLiteEntity *)self getValuesForProperties:v12 database:v13 error:a6 handler:v19];

  if (a6)
  {
    v15 = v24[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __79__HDHealthEntity_Conveniences__foreignKeyEntity_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = HDSQLiteColumnWithNameIsNull();
  if ((result & 1) == 0)
  {
    v4 = objc_alloc(*(a1 + 48));
    v5 = *(a1 + 32);
    v6 = [v4 initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8](v6, v8);
  }

  return result;
}

- (BOOL)setForeignKeyEntity:(id)a3 forProperty:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v12 databaseForEntity:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__HDHealthEntity_Conveniences__setForeignKeyEntity_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = v10;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  LOBYTE(a6) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:a6 bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a6;
}

void __82__HDHealthEntity_Conveniences__setForeignKeyEntity_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [v2 persistentID];

    JUMPOUT(0x22AAC6B90);
  }

  v4 = *(a1 + 40);

  JUMPOUT(0x22AAC6BA0);
}

- (BOOL)willDeleteWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];
  [(HDSQLiteEntity *)self willDeleteFromDatabase:v7];

  return 1;
}

+ (id)updateSQLForTimeOffsetWithBindingCount:(unint64_t *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = [a1 columnNamesForTimeOffset];
  v5 = [v18 count];
  if (v5)
  {
    v6 = MEMORY[0x277CCAB68];
    v7 = [a1 disambiguatedDatabaseTable];
    v8 = [v6 stringWithFormat:@"UPDATE %@ SET ", v7];
    v17 = a3;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v18;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (v12 >= v5)
          {
            v14 = "";
          }

          else
          {
            v14 = ", ";
          }

          [v8 appendFormat:@"%@ = %@ + ?%s", *(*(&v19 + 1) + 8 * i), *(*(&v19 + 1) + 8 * i), v14];
          ++v12;
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    if (v17)
    {
      *v17 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end