@interface HDHealthEntity
+ (BOOL)deleteEntitiesWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate healthDatabase:(id)database error:(id *)error block:(id)block;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range orderingTerms:(id)terms limit:(unint64_t)limit lastSyncAnchor:(int64_t *)self0 distinct:(BOOL)self1 healthDatabase:(id)self2 error:(id *)self3 block:(id)self4;
+ (BOOL)enumerateProperties:(id)properties withPredicate:(id)predicate healthDatabase:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateProperties:(id)properties withPredicate:(id)predicate orderingTerms:(id)terms groupBy:(id)by limit:(unint64_t)limit healthDatabase:(id)database error:(id *)error enumerationHandler:(id)self0;
+ (BOOL)performReadTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block;
+ (BOOL)performReadTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block;
+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block inaccessibilityHandler:(id)handler;
+ (BOOL)updateProperties:(id)properties predicate:(id)predicate healthDatabase:(id)database error:(id *)error bindingHandler:(id)handler;
+ (id)_syncQueryDescriptorWithPredicate:(void *)predicate orderingTerms:(uint64_t)terms limit:(void *)limit anchorProperty:(uint64_t)property distinct:;
+ (id)_syncQueryWithDatabase:(void *)database predicate:(void *)predicate orderingTerms:(uint64_t)terms limit:(void *)limit anchorProperty:(uint64_t)property distinct:;
+ (id)anyWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (id)countDistinctForProperty:(id)property healthDatabase:(id)database error:(id *)error;
+ (id)createTableSQLWithBehavior:(id)behavior;
+ (id)createValidationError:(id)error rowId:(id)id;
+ (id)defaultForeignKey;
+ (id)indicesWithBehavior:(id)behavior;
+ (id)insertOrReplaceEntity:(BOOL)entity healthDatabase:(id)database properties:(id)properties error:(id *)error bindingHandler:(id)handler;
+ (id)maxRowIDForPredicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (id)predicateForSyncWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range;
+ (id)propertyValueForAnyWithProperty:(id)property predicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (id)transactionContextForWriting:(BOOL)writing baseContext:(id)context;
+ (id)triggersWithBehavior:(id)behavior;
+ (id)updateSQLForTimeOffsetWithBindingCount:(unint64_t *)count;
+ (int64_t)countOfObjectsWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error;
+ (int64_t)nextSyncAnchorWithStartAnchor:(int64_t)anchor predicate:(id)predicate syncEntityClass:(Class)class session:(id)session orderingTerms:(id)terms limit:(unint64_t)limit healthDatabase:(id)database error:(id *)self0;
+ (int64_t)protectionClass;
+ (int64_t)sizeOfDatabaseTableInHealthDatabase:(id)database error:(id *)error;
- (BOOL)getValuesForProperties:(id)properties healthDatabase:(id)database error:(id *)error handler:(id)handler;
- (BOOL)setDate:(id)date forProperty:(id)property transaction:(id)transaction error:(id *)error;
- (BOOL)setForeignKeyEntity:(id)entity forProperty:(id)property transaction:(id)transaction error:(id *)error;
- (BOOL)setNumber:(id)number forProperty:(id)property transaction:(id)transaction error:(id *)error;
- (BOOL)setString:(id)string forProperty:(id)property transaction:(id)transaction error:(id *)error;
- (BOOL)updateProperties:(id)properties healthDatabase:(id)database error:(id *)error bindingHandler:(id)handler;
- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (id)dateForProperty:(id)property transaction:(id)transaction error:(id *)error;
- (id)foreignKeyEntity:(Class)entity forProperty:(id)property transaction:(id)transaction error:(id *)error;
- (id)numberForProperty:(id)property transaction:(id)transaction error:(id *)error;
- (id)stringForProperty:(id)property healthDatabase:(id)database error:(id *)error;
- (id)stringForProperty:(id)property transaction:(id)transaction error:(id *)error;
- (id)valueForProperty:(id)property healthDatabase:(id)database error:(id *)error;
@end

@implementation HDHealthEntity

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range orderingTerms:(id)terms limit:(unint64_t)limit lastSyncAnchor:(int64_t *)self0 distinct:(BOOL)self1 healthDatabase:(id)self2 error:(id *)self3 block:(id)self4
{
  end = range.end;
  start = range.start;
  propertiesCopy = properties;
  predicateCopy = predicate;
  sessionCopy = session;
  termsCopy = terms;
  databaseCopy = database;
  blockCopy = block;
  propertyForSyncAnchor = [self propertyForSyncAnchor];
  if (!propertyForSyncAnchor)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthEntity+Sync.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"anchorProperty != nil"}];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __184__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_syncEntityClass_session_syncAnchorRange_orderingTerms_limit_lastSyncAnchor_distinct_healthDatabase_error_block___block_invoke;
  v40[3] = &unk_27861F250;
  v24 = propertiesCopy;
  v41 = v24;
  v25 = propertyForSyncAnchor;
  v42 = v25;
  selfCopy = self;
  v26 = predicateCopy;
  v43 = v26;
  classCopy = class;
  v27 = sessionCopy;
  v44 = v27;
  v28 = start;
  v50 = start;
  v51 = end;
  v29 = termsCopy;
  limitCopy = limit;
  distinctCopy = distinct;
  v45 = v29;
  v47 = &v54;
  v30 = blockCopy;
  v46 = v30;
  v31 = [self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v40];
  v32 = v31 ^ 1;
  if (!anchor)
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

    *anchor = v33;
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

+ (id)_syncQueryWithDatabase:(void *)database predicate:(void *)predicate orderingTerms:(uint64_t)terms limit:(void *)limit anchorProperty:(uint64_t)property distinct:
{
  limitCopy = limit;
  predicateCopy = predicate;
  databaseCopy = database;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = [(HDHealthEntity *)v16 _syncQueryDescriptorWithPredicate:databaseCopy orderingTerms:predicateCopy limit:terms anchorProperty:limitCopy distinct:property];

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

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate healthDatabase:(id)database error:(id *)error block:(id)block
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  blockCopy = block;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__HDHealthEntity_Sync__enumerateEntitiesForSyncWithProperties_predicate_healthDatabase_error_block___block_invoke;
  v19[3] = &unk_27861F2A0;
  v20 = predicateCopy;
  v21 = propertiesCopy;
  v22 = blockCopy;
  selfCopy = self;
  v15 = blockCopy;
  v16 = propertiesCopy;
  v17 = predicateCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v19];

  return error;
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

+ (int64_t)nextSyncAnchorWithStartAnchor:(int64_t)anchor predicate:(id)predicate syncEntityClass:(Class)class session:(id)session orderingTerms:(id)terms limit:(unint64_t)limit healthDatabase:(id)database error:(id *)self0
{
  predicateCopy = predicate;
  sessionCopy = session;
  termsCopy = terms;
  databaseCopy = database;
  propertyForSyncAnchor = [self propertyForSyncAnchor];
  if (!propertyForSyncAnchor)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthEntity+Sync.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"anchorProperty != nil"}];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = -1;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __129__HDHealthEntity_Sync__nextSyncAnchorWithStartAnchor_predicate_syncEntityClass_session_orderingTerms_limit_healthDatabase_error___block_invoke;
  v29[3] = &unk_27861F2C8;
  selfCopy = self;
  v22 = predicateCopy;
  v30 = v22;
  classCopy = class;
  v23 = sessionCopy;
  v31 = v23;
  anchorCopy = anchor;
  v24 = termsCopy;
  v32 = v24;
  limitCopy = limit;
  v25 = propertyForSyncAnchor;
  v33 = v25;
  v34 = &v39;
  [self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v29];
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

+ (id)_syncQueryDescriptorWithPredicate:(void *)predicate orderingTerms:(uint64_t)terms limit:(void *)limit anchorProperty:(uint64_t)property distinct:
{
  v19[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  limitCopy = limit;
  v12 = a2;
  v13 = objc_opt_self();
  v14 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v14 setEntityClass:v13];
  [v14 setLimitCount:terms];
  [v14 setPredicate:v12];

  [v14 setReturnsDistinctEntities:property];
  if (predicateCopy)
  {
    [v14 setOrderingTerms:predicateCopy];
  }

  else
  {
    v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:limitCopy entityClass:v13 ascending:1];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v14 setOrderingTerms:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)predicateForSyncWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range
{
  end = range.end;
  start = range.start;
  predicateCopy = predicate;
  sessionCopy = session;
  propertyForSyncAnchor = [self propertyForSyncAnchor];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:start];
  v30 = propertyForSyncAnchor;
  v16 = [MEMORY[0x277D10B18] predicateWithProperty:propertyForSyncAnchor greaterThanValue:v15];
  [v14 addObject:v16];

  if (end != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:end];
    v18 = [MEMORY[0x277D10B18] predicateWithProperty:v30 lessThanOrEqualToValue:v17];
    [v14 addObject:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)class excludedSyncStoresForSession:sessionCopy];
  }

  else
  {
    [sessionCopy excludedSyncStores];
  }
  v19 = ;
  if ([v19 count])
  {
    v20 = [v19 hk_map:&__block_literal_global_84];
    v21 = MEMORY[0x277D10B28];
    propertyForSyncProvenance = [self propertyForSyncProvenance];
    v23 = [v21 doesNotContainPredicateWithProperty:propertyForSyncProvenance values:v20];
    [v14 addObject:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)class excludedSyncIdentitiesForSession:sessionCopy];
  }

  else
  {
    [sessionCopy excludedSyncIdentities];
  }
  v24 = ;
  propertyForSyncIdentity = [self propertyForSyncIdentity];
  if (propertyForSyncIdentity)
  {
    v26 = [v24 hk_map:&__block_literal_global_316];
    v27 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:propertyForSyncIdentity values:v26];
    [v14 addObject:v27];
  }

  if (predicateCopy)
  {
    [v14 addObject:predicateCopy];
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
  [v3 raise:v4 format:{@"+[%@ %@] not implemented", self, v5}];

  return 1;
}

+ (id)defaultForeignKey
{
  v3 = objc_alloc(MEMORY[0x277D10B38]);
  v4 = [v3 initWithEntityClass:self property:*MEMORY[0x277D10A40] deletionAction:2];

  return v4;
}

+ (id)createValidationError:(id)error rowId:(id)id
{
  v18[4] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  idCopy = id;
  v8 = [MEMORY[0x277CCA9B8] hk_error:120 description:errorCopy];
  v17[0] = *MEMORY[0x277CCBD78];
  databaseTable = [self databaseTable];
  v10 = *MEMORY[0x277CCA7E8];
  v18[0] = databaseTable;
  v18[1] = v8;
  v11 = *MEMORY[0x277CCBD70];
  v17[1] = v10;
  v17[2] = v11;
  v18[2] = idCopy;
  v17[3] = *MEMORY[0x277CCBD88];
  idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ROWID %@", idCopy];
  v18[3] = idCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v14 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)createTableSQLWithBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v12 = 0;
  [self columnDefinitionsWithBehavior:behaviorCopy count:&v12];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  foreignKeys = [self foreignKeys];
  primaryKeyColumns = [self primaryKeyColumns];
  uniquedColumns = [self uniquedColumns];
  checkConstraints = [self checkConstraints];
  [self hasROWID];
  v10 = HDSQLiteEntityCreateTableSQL();

  return v10;
}

+ (id)indicesWithBehavior:(id)behavior
{
  indices = [self indices];

  return indices;
}

+ (id)triggersWithBehavior:(id)behavior
{
  triggers = [self triggers];

  return triggers;
}

+ (BOOL)performReadTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block
{
  databaseCopy = database;
  blockCopy = block;
  objc_opt_self();
  if (databaseCopy)
  {
    v10 = [self transactionContextForWriting:0 baseContext:0];
    v11 = [databaseCopy performTransactionWithContext:v10 error:error block:blockCopy inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v11 = 0;
  }

  return v11;
}

+ (BOOL)performReadTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block
{
  databaseCopy = database;
  contextCopy = context;
  blockCopy = block;
  objc_opt_self();
  if (databaseCopy)
  {
    v13 = [self transactionContextForWriting:0 baseContext:contextCopy];
    v14 = [databaseCopy performTransactionWithContext:v13 error:error block:blockCopy inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block
{
  databaseCopy = database;
  blockCopy = block;
  objc_opt_self();
  if (databaseCopy)
  {
    v10 = [self transactionContextForWriting:1 baseContext:0];
    v11 = [databaseCopy performTransactionWithContext:v10 error:error block:blockCopy inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v11 = 0;
  }

  return v11;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block
{
  databaseCopy = database;
  contextCopy = context;
  blockCopy = block;
  objc_opt_self();
  if (databaseCopy)
  {
    v13 = [self transactionContextForWriting:1 baseContext:contextCopy];
    v14 = [databaseCopy performTransactionWithContext:v13 error:error block:blockCopy inaccessibilityHandler:0];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database error:(id *)error block:(id)block inaccessibilityHandler:(id)handler
{
  databaseCopy = database;
  blockCopy = block;
  handlerCopy = handler;
  objc_opt_self();
  if (databaseCopy)
  {
    v13 = [self transactionContextForWriting:1 baseContext:0];
    v14 = [databaseCopy performTransactionWithContext:v13 error:error block:blockCopy inaccessibilityHandler:handlerCopy];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v14 = 0;
  }

  return v14;
}

+ (BOOL)performWriteTransactionWithHealthDatabase:(id)database context:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler
{
  databaseCopy = database;
  contextCopy = context;
  blockCopy = block;
  handlerCopy = handler;
  objc_opt_self();
  if (databaseCopy)
  {
    v16 = [self transactionContextForWriting:1 baseContext:contextCopy];
    v17 = [databaseCopy performTransactionWithContext:v16 error:error block:blockCopy inaccessibilityHandler:handlerCopy];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1500 description:@"Nil healthDatabase"];
    v17 = 0;
  }

  return v17;
}

+ (id)transactionContextForWriting:(BOOL)writing baseContext:(id)context
{
  writingCopy = writing;
  contextCopy = context;
  if ([self protectionClass] != 2)
  {
    if (!writingCopy)
    {
      if (contextCopy)
      {
        v10 = contextCopy;
      }

      else
      {
        v10 = +[HDDatabaseTransactionContext contextForReading];
      }

      v9 = v10;
      goto LABEL_15;
    }

    copyForWriting = [contextCopy copyForWriting];
    if (!copyForWriting)
    {
      v8 = +[HDDatabaseTransactionContext contextForWriting];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!writingCopy)
  {
    copyForWriting = [contextCopy copyForReadingProtectedData];
    if (!copyForWriting)
    {
      v8 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  copyForWriting = [contextCopy copyForWritingProtectedData];
  if (copyForWriting)
  {
LABEL_9:
    v8 = copyForWriting;
    goto LABEL_10;
  }

  v8 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
LABEL_10:
  v9 = v8;

LABEL_15:

  return v9;
}

+ (id)insertOrReplaceEntity:(BOOL)entity healthDatabase:(id)database properties:(id)properties error:(id *)error bindingHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
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
  selfCopy = self;
  entityCopy = entity;
  v19 = propertiesCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = propertiesCopy;
  [self performWriteTransactionWithHealthDatabase:database error:error block:v18];
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

- (BOOL)updateProperties:(id)properties healthDatabase:(id)database error:(id *)error bindingHandler:(id)handler
{
  propertiesCopy = properties;
  databaseCopy = database;
  handlerCopy = handler;
  v13 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HDHealthEntity_updateProperties_healthDatabase_error_bindingHandler___block_invoke;
  v17[3] = &unk_278623EB8;
  v17[4] = self;
  v14 = propertiesCopy;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  LOBYTE(error) = [v13 performWriteTransactionWithHealthDatabase:databaseCopy error:error block:v17];

  return error;
}

uint64_t __71__HDHealthEntity_updateProperties_healthDatabase_error_bindingHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v6 = [*(a1 + 32) updateProperties:*(a1 + 40) database:v5 error:a3 bindingHandler:*(a1 + 48)];

  return v6;
}

+ (BOOL)updateProperties:(id)properties predicate:(id)predicate healthDatabase:(id)database error:(id *)error bindingHandler:(id)handler
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  databaseCopy = database;
  handlerCopy = handler;
  v16 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HDHealthEntity_updateProperties_predicate_healthDatabase_error_bindingHandler___block_invoke;
  v21[3] = &unk_278623EE0;
  selfCopy = self;
  v17 = propertiesCopy;
  v22 = v17;
  v18 = predicateCopy;
  v23 = v18;
  v19 = handlerCopy;
  v24 = v19;
  LOBYTE(error) = [v16 performWriteTransactionWithHealthDatabase:databaseCopy error:error block:v21];

  return error;
}

uint64_t __81__HDHealthEntity_updateProperties_predicate_healthDatabase_error_bindingHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [*(a1 + 56) updateProperties:*(a1 + 32) predicate:*(a1 + 40) database:v5 error:a3 bindingHandler:*(a1 + 48)];

  return v6;
}

+ (int64_t)countOfObjectsWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HDHealthEntity_Conveniences__countOfObjectsWithPredicate_healthDatabase_error___block_invoke;
  v12[3] = &unk_278623F08;
  v14 = &v16;
  selfCopy = self;
  v13 = predicateCopy;
  v9 = predicateCopy;
  [self performReadTransactionWithHealthDatabase:database error:error block:v12];
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

+ (id)countDistinctForProperty:(id)property healthDatabase:(id)database error:(id *)error
{
  propertyCopy = property;
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
  selfCopy = self;
  v9 = propertyCopy;
  v13 = v9;
  if ([self performReadTransactionWithHealthDatabase:database error:error block:v12])
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

+ (int64_t)sizeOfDatabaseTableInHealthDatabase:(id)database error:(id *)error
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
  v6[5] = self;
  if ([self performReadTransactionWithHealthDatabase:database error:error block:v6])
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

+ (BOOL)enumerateProperties:(id)properties withPredicate:(id)predicate healthDatabase:(id)database error:(id *)error enumerationHandler:(id)handler
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  databaseCopy = database;
  handlerCopy = handler;
  if (![propertiesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthEntity.mm" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"[properties count] > 0"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDHealthEntity.mm" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"enumerationHandler != NULL"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_healthDatabase_error_enumerationHandler___block_invoke;
  v24[3] = &unk_278623EE0;
  selfCopy = self;
  v17 = predicateCopy;
  v25 = v17;
  v18 = propertiesCopy;
  v26 = v18;
  v19 = handlerCopy;
  v27 = v19;
  v20 = [self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v24];

  return v20;
}

uint64_t __106__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_healthDatabase_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [*(a1 + 56) queryWithDatabase:v5 predicate:*(a1 + 32)];
  v7 = [v6 enumeratePersistentIDsAndProperties:*(a1 + 40) error:a3 enumerationHandler:*(a1 + 48)];

  return v7;
}

+ (BOOL)enumerateProperties:(id)properties withPredicate:(id)predicate orderingTerms:(id)terms groupBy:(id)by limit:(unint64_t)limit healthDatabase:(id)database error:(id *)error enumerationHandler:(id)self0
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  termsCopy = terms;
  byCopy = by;
  databaseCopy = database;
  handlerCopy = handler;
  if (![propertiesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthEntity.mm" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"[properties count] > 0"}];
  }

  v22 = byCopy;
  if (!handlerCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDHealthEntity.mm" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"enumerationHandler != NULL"}];

    v22 = byCopy;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __134__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_orderingTerms_groupBy_limit_healthDatabase_error_enumerationHandler___block_invoke;
  v33[3] = &unk_278623F80;
  selfCopy = self;
  v23 = predicateCopy;
  v34 = v23;
  limitCopy = limit;
  v24 = termsCopy;
  v35 = v24;
  v25 = v22;
  v36 = v25;
  v26 = propertiesCopy;
  v37 = v26;
  v27 = handlerCopy;
  v38 = v27;
  v28 = [self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v33];

  return v28;
}

uint64_t __134__HDHealthEntity_Conveniences__enumerateProperties_withPredicate_orderingTerms_groupBy_limit_healthDatabase_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v6 = [*(a1 + 72) queryWithDatabase:v5 predicate:*(a1 + 32) limit:*(a1 + 80) orderingTerms:*(a1 + 40) groupBy:*(a1 + 48)];
  v7 = [v6 enumeratePersistentIDsAndProperties:*(a1 + 56) error:a3 enumerationHandler:*(a1 + 64)];

  return v7;
}

+ (BOOL)deleteEntitiesWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  predicateCopy = predicate;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDHealthEntity_Conveniences__deleteEntitiesWithPredicate_healthDatabase_error___block_invoke;
  v11[3] = &unk_278623FA8;
  v12 = predicateCopy;
  selfCopy = self;
  v9 = predicateCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

uint64_t __81__HDHealthEntity_Conveniences__deleteEntitiesWithPredicate_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 40) deleteEntitiesInDatabase:v5 predicate:*(a1 + 32) error:a3];

  return v6;
}

+ (id)anyWithPredicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  predicateCopy = predicate;
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
  selfCopy = self;
  v13 = predicateCopy;
  v9 = predicateCopy;
  [self performReadTransactionWithHealthDatabase:database error:error block:v12];
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

+ (id)propertyValueForAnyWithProperty:(id)property predicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  propertyCopy = property;
  predicateCopy = predicate;
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
  selfCopy = self;
  v17 = propertyCopy;
  v18 = predicateCopy;
  v12 = predicateCopy;
  v13 = propertyCopy;
  [self performReadTransactionWithHealthDatabase:database error:error block:v16];
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

+ (id)maxRowIDForPredicate:(id)predicate healthDatabase:(id)database error:(id *)error
{
  predicateCopy = predicate;
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
  selfCopy = self;
  v13 = predicateCopy;
  v9 = predicateCopy;
  [self performReadTransactionWithHealthDatabase:database error:error block:v12];
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

- (BOOL)getValuesForProperties:(id)properties healthDatabase:(id)database error:(id *)error handler:(id)handler
{
  propertiesCopy = properties;
  databaseCopy = database;
  handlerCopy = handler;
  v13 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HDHealthEntity_Conveniences__getValuesForProperties_healthDatabase_error_handler___block_invoke;
  v17[3] = &unk_278623EB8;
  v17[4] = self;
  v14 = propertiesCopy;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  LOBYTE(error) = [v13 performReadTransactionWithHealthDatabase:databaseCopy error:error block:v17];

  return error;
}

uint64_t __84__HDHealthEntity_Conveniences__getValuesForProperties_healthDatabase_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 databaseForEntity:*(a1 + 32)];
  v4 = [*(a1 + 32) getValuesForProperties:*(a1 + 40) database:v3 handler:*(a1 + 48)];

  return v4;
}

- (id)valueForProperty:(id)property healthDatabase:(id)database error:(id *)error
{
  propertyCopy = property;
  databaseCopy = database;
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
  v11 = propertyCopy;
  v15 = v11;
  [v10 performReadTransactionWithHealthDatabase:databaseCopy error:error block:v14];
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

- (id)stringForProperty:(id)property healthDatabase:(id)database error:(id *)error
{
  propertyCopy = property;
  databaseCopy = database;
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
  v11 = propertyCopy;
  v16 = v11;
  if ([v10 performReadTransactionWithHealthDatabase:databaseCopy error:error block:v15])
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

- (id)dateForProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = propertyCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HDHealthEntity_Conveniences__dateForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = propertyCopy;
  v18 = v12;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:error handler:v17];

  if (error)
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

- (BOOL)setDate:(id)date forProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  propertyCopy = property;
  transactionCopy = transaction;
  v22[0] = propertyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__HDHealthEntity_Conveniences__setDate_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = propertyCopy;
  v20 = v15;
  v16 = dateCopy;
  v21 = v16;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:error bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return error;
}

void __70__HDHealthEntity_Conveniences__setDate_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6B50);
}

- (id)stringForProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = propertyCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDHealthEntity_Conveniences__stringForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = propertyCopy;
  v18 = v12;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:error handler:v17];

  if (error)
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

- (BOOL)setString:(id)string forProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  propertyCopy = property;
  transactionCopy = transaction;
  v22[0] = propertyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDHealthEntity_Conveniences__setString_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = propertyCopy;
  v20 = v15;
  v16 = stringCopy;
  v21 = v16;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:error bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return error;
}

void __72__HDHealthEntity_Conveniences__setString_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6BD0);
}

- (id)numberForProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__118;
  v24 = __Block_byref_object_dispose__118;
  v25 = 0;
  v26[0] = propertyCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDHealthEntity_Conveniences__numberForProperty_transaction_error___block_invoke;
  v17[3] = &unk_278623FF8;
  v19 = &v20;
  v12 = propertyCopy;
  v18 = v12;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v10 database:v11 error:error handler:v17];

  if (error)
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

- (BOOL)setNumber:(id)number forProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  propertyCopy = property;
  transactionCopy = transaction;
  v22[0] = propertyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDHealthEntity_Conveniences__setNumber_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = propertyCopy;
  v20 = v15;
  v16 = numberCopy;
  v21 = v16;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:error bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return error;
}

void __72__HDHealthEntity_Conveniences__setNumber_forProperty_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  JUMPOUT(0x22AAC6BB0);
}

- (id)foreignKeyEntity:(Class)entity forProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  transactionCopy = transaction;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__118;
  v27 = __Block_byref_object_dispose__118;
  v28 = 0;
  v29[0] = propertyCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v13 = [transactionCopy databaseForEntity:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__HDHealthEntity_Conveniences__foreignKeyEntity_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624048;
  v14 = propertyCopy;
  v20 = v14;
  v21 = &v23;
  entityCopy = entity;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v12 database:v13 error:error handler:v19];

  if (error)
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

- (BOOL)setForeignKeyEntity:(id)entity forProperty:(id)property transaction:(id)transaction error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertyCopy = property;
  transactionCopy = transaction;
  v22[0] = propertyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [transactionCopy databaseForEntity:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__HDHealthEntity_Conveniences__setForeignKeyEntity_forProperty_transaction_error___block_invoke;
  v19[3] = &unk_278624020;
  v15 = entityCopy;
  v20 = v15;
  v16 = propertyCopy;
  v21 = v16;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v13 database:v14 error:error bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return error;
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

- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  [(HDSQLiteEntity *)self willDeleteFromDatabase:v7];

  return 1;
}

+ (id)updateSQLForTimeOffsetWithBindingCount:(unint64_t *)count
{
  v24 = *MEMORY[0x277D85DE8];
  columnNamesForTimeOffset = [self columnNamesForTimeOffset];
  v5 = [columnNamesForTimeOffset count];
  if (v5)
  {
    v6 = MEMORY[0x277CCAB68];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v8 = [v6 stringWithFormat:@"UPDATE %@ SET ", disambiguatedDatabaseTable];
    countCopy = count;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = columnNamesForTimeOffset;
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

    if (countCopy)
    {
      *countCopy = v5;
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