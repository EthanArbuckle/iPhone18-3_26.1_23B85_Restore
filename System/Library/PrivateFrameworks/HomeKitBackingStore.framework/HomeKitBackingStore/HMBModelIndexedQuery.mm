@interface HMBModelIndexedQuery
+ (id)queryWithSQLPredicate:(id)predicate ascending:(BOOL)ascending indexedProperties:(id)properties arguments:(id)arguments;
- (BOOL)hasExpectedIndexes;
- (HMBModelIndexedQuery)initWithSQLPredicate:(id)predicate initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select indexNameSuffix:(id)suffix indexedColumns:(id)columns arguments:(id)arguments;
- (NSString)indexName;
@end

@implementation HMBModelIndexedQuery

- (BOOL)hasExpectedIndexes
{
  v32 = *MEMORY[0x277D85DE8];
  if (!+[HMBSQLStatement explainStatements])
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v3 = MEMORY[0x277CCACA8];
  indexName = [(HMBModelIndexedQuery *)self indexName];
  v5 = [v3 stringWithFormat:@"INDEX %@", indexName];

  preparedQueries = [(HMBModelQuery *)self preparedQueries];
  objectEnumerator = [preparedQueries objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (!nextObject)
  {
    goto LABEL_12;
  }

  v9 = nextObject;
  while (1)
  {
    queryPlans = [v9 queryPlans];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke;
    v23[3] = &unk_2786E1490;
    v11 = v5;
    v24 = v11;
    selfCopy = self;
    v12 = [queryPlans na_any:v23];

    if ((v12 & 1) == 0)
    {
      break;
    }

    nextObject2 = [objectEnumerator nextObject];

    v9 = nextObject2;
    if (!nextObject2)
    {
      goto LABEL_10;
    }
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    v18 = sqlite3_sql([v9 statement]);
    *buf = 138543874;
    v27 = v17;
    v28 = 2112;
    v29 = v11;
    v30 = 2080;
    v31 = v18;
    _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Didn't find reference to %@ in query plan for %s:", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  queryPlans2 = [v9 queryPlans];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke_174;
  v22[3] = &unk_2786E14B8;
  v22[4] = selfCopy2;
  [queryPlans2 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 detail];
  v5 = [v4 containsString:*(a1 + 32)];

  v6 = [*(a1 + 40) indexedColumns];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke_2;
  v9[3] = &unk_2786E1468;
  v10 = v3;
  v7 = v3;
  LODWORD(v4) = [v6 na_allObjectsPassTest:v9];

  return v5 & v4;
}

void __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke_174(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 row];
    v9 = [v3 parent];
    v10 = [v3 detail];
    v12 = 138544130;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@    %lu.%lu %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HMBModelIndexedQuery_hasExpectedIndexes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 detail];
  v5 = objc_msgSend(v4, "componentsSeparatedByString:", @"(");
  v6 = [v5 lastObject];

  v7 = [v6 containsString:v3];
  return v7;
}

- (NSString)indexName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromClass([(HMBModelQuery *)self modelClass]);
  indexNameSuffix = [(HMBModelIndexedQuery *)self indexNameSuffix];
  v6 = [v3 stringWithFormat:@"qi_%@_%@", v4, indexNameSuffix];

  return v6;
}

- (HMBModelIndexedQuery)initWithSQLPredicate:(id)predicate initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select indexNameSuffix:(id)suffix indexedColumns:(id)columns arguments:(id)arguments
{
  suffixCopy = suffix;
  columnsCopy = columns;
  v22.receiver = self;
  v22.super_class = HMBModelIndexedQuery;
  v16 = [(HMBModelQuery *)&v22 initWithSQLPredicate:predicate initialSequence:sequence maximumRowsPerSelect:select arguments:arguments];
  if (v16)
  {
    v17 = [suffixCopy copy];
    indexNameSuffix = v16->_indexNameSuffix;
    v16->_indexNameSuffix = v17;

    v19 = [columnsCopy copy];
    indexedColumns = v16->_indexedColumns;
    v16->_indexedColumns = v19;
  }

  return v16;
}

+ (id)queryWithSQLPredicate:(id)predicate ascending:(BOOL)ascending indexedProperties:(id)properties arguments:(id)arguments
{
  ascendingCopy = ascending;
  predicateCopy = predicate;
  propertiesCopy = properties;
  argumentsCopy = arguments;
  if (!predicateCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!propertiesCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v12 = argumentsCopy;
  if (!argumentsCopy)
  {
LABEL_12:
    v19 = _HMFPreconditionFailure();
    return [(HMBModelFiniteQuery *)v19 sqlSelectStatementForModelType:v20, v21];
  }

  v13 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  if (ascendingCopy)
  {
    v14 = &unk_283EB9E10;
  }

  else
  {
    v14 = &unk_283EB9E28;
  }

  v15 = [propertiesCopy componentsJoinedByString:@"_"];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count") + 2}];
  [v16 addObject:@"_store_id"];
  [v16 addObjectsFromArray:propertiesCopy];
  [v16 addObject:@"_record_id"];
  v17 = [[HMBModelIndexedQuery alloc] initWithSQLPredicate:predicateCopy initialSequence:v14 maximumRowsPerSelect:v13 indexNameSuffix:v15 indexedColumns:v16 arguments:v12];

  return v17;
}

@end