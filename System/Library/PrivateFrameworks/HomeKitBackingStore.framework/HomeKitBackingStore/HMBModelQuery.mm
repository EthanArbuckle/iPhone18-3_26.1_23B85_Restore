@interface HMBModelQuery
- (BOOL)hasExpectedIndexes;
- (HMBModelQuery)initWithSQLPredicate:(id)predicate initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select arguments:(id)arguments;
- (id)description;
- (id)performQueryOn:(id)on arguments:(id)arguments;
- (id)prepareOnTable:(id)table;
- (id)sqlSelectStatementForModelType:(id)type;
- (void)setModelClass:(Class)class;
@end

@implementation HMBModelQuery

- (BOOL)hasExpectedIndexes
{
  if (!+[HMBSQLStatement explainStatements])
  {
    v3 = _HMFPreconditionFailure();
    [(HMBModelQuery *)v3 sqlSelectStatementForModelType:v4, v5];
  }

  return 1;
}

- (id)sqlSelectStatementForModelType:(id)type
{
  typeCopy = type;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)performQueryOn:(id)on arguments:(id)arguments
{
  onCopy = on;
  argumentsCopy = arguments;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  modelClass = [(HMBModelQuery *)self modelClass];
  if (modelClass)
  {
    v5 = NSStringFromClass([(HMBModelQuery *)self modelClass]);
  }

  else
  {
    v5 = @"Unknown";
  }

  sqlPredicate = [(HMBModelQuery *)self sqlPredicate];
  v7 = [v3 stringWithFormat:@"<HMBModelUnindexedQuery class: %@ query: '%@'>", v5, sqlPredicate];

  if (modelClass)
  {
  }

  return v7;
}

- (id)prepareOnTable:(id)table
{
  v50 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  context = [tableCopy context];
  preparedQueries = [(HMBModelQuery *)self preparedQueries];
  v7 = [preparedQueries objectForKey:context];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    modelType = [tableCopy modelType];
    v8 = [(HMBModelQuery *)self sqlSelectStatementForModelType:modelType];

    v10 = [[HMBSQLQueryStatement alloc] initWithContext:context statement:v8];
    if (!v10)
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v33;
        v48 = 2112;
        v49 = v8;
        _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare statement: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = MEMORY[0x277CBEAD8];
      v35 = *MEMORY[0x277CBE658];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to prepare statement: %@", v8];
      v37 = [v34 exceptionWithName:v35 reason:v36 userInfo:0];
      v38 = v37;

      objc_exception_throw(v37);
    }

    v7 = v10;
    preparedQueries2 = [(HMBModelQuery *)self preparedQueries];
    [preparedQueries2 setObject:v7 forKey:context];

    if (!self->_sqlSelect && v8)
    {
      v12 = MEMORY[0x277CBEB38];
      arguments = [(HMBModelQuery *)self arguments];
      v14 = [v12 dictionaryWithCapacity:{objc_msgSend(arguments, "count")}];

      v15 = MEMORY[0x277CBEB38];
      arguments2 = [(HMBModelQuery *)self arguments];
      v17 = [v15 dictionaryWithCapacity:{objc_msgSend(arguments2, "count")}];

      hmbProperties = [(objc_class *)[(HMBModelQuery *)self modelClass] hmbProperties];
      arguments3 = [v7 arguments];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __32__HMBModelQuery_prepareOnTable___block_invoke;
      v42[3] = &unk_2786E1418;
      v42[4] = self;
      v43 = hmbProperties;
      v20 = v14;
      v44 = v20;
      v21 = v17;
      v45 = v21;
      v22 = hmbProperties;
      [arguments3 enumerateKeysAndObjectsUsingBlock:v42];

      arguments4 = [(HMBModelQuery *)self arguments];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __32__HMBModelQuery_prepareOnTable___block_invoke_42;
      v39[3] = &unk_2786E1440;
      v7 = v7;
      v40 = v7;
      selfCopy2 = self;
      [arguments4 enumerateKeysAndObjectsUsingBlock:v39];

      argumentFields = self->_argumentFields;
      self->_argumentFields = v20;
      v25 = v20;

      encodedDefaultValuesByArgumentName = self->_encodedDefaultValuesByArgumentName;
      self->_encodedDefaultValuesByArgumentName = v21;
      v27 = v21;

      objc_storeStrong(&self->_sqlSelect, v8);
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

void __32__HMBModelQuery_prepareOnTable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) arguments];
  v7 = [v6 objectForKey:v41];

  if ((![v41 isEqualToString:@"_sequence_offset"] || v7) && (objc_msgSend(v41, "hasPrefix:", @"_") & 1) == 0)
  {
    if (!v7)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) arguments];
        *buf = 138543874;
        v43 = v18;
        v44 = 2112;
        v45 = v41;
        v46 = 2112;
        v47 = v19;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@The query statement's SQL contains an argument named '%@' which does not exist as an argument in the query's argument dictionary: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE658];
      v22 = MEMORY[0x277CCACA8];
      v23 = [*(a1 + 32) arguments];
      v24 = [v22 stringWithFormat:@"The query statement's SQL contains an argument named '%@' which does not exist as an argument in the query's argument dictionary: %@", v41, v23];
      v25 = [v20 exceptionWithName:v21 reason:v24 userInfo:0];
      v26 = v25;

      objc_exception_throw(v25);
    }

    v8 = *(a1 + 40);
    v9 = [v7 propertyName];
    v10 = [v8 objectForKey:v9];

    if (!v10)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v7 propertyName];
        v32 = [*(a1 + 32) modelClass];
        v33 = *(a1 + 40);
        *buf = 138544130;
        v43 = v30;
        v44 = 2112;
        v45 = v31;
        v46 = 2112;
        v47 = v32;
        v48 = 2112;
        v49 = v33;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@The query statement's SQL contains an argument for a property named '%@' which does not exist as a property on %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v27);
      v34 = MEMORY[0x277CBEAD8];
      v35 = *MEMORY[0x277CBE658];
      v36 = MEMORY[0x277CCACA8];
      v37 = [v7 propertyName];
      v38 = [v36 stringWithFormat:@"The query statement's SQL contains an argument for a property named '%@' which does not exist as a property on %@: %@", v37, objc_msgSend(*(a1 + 32), "modelClass"), *(a1 + 40)];
      v39 = [v34 exceptionWithName:v35 reason:v38 userInfo:0];
      v40 = v39;

      objc_exception_throw(v39);
    }

    [*(a1 + 48) setObject:v10 forKey:v41];
    v11 = [v7 defaultValue];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 encodeQueryableValue:v11];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    [*(a1 + 56) setObject:v13 forKeyedSubscript:v41];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __32__HMBModelQuery_prepareOnTable___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) arguments];
  v7 = [v6 objectForKey:v21];

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) arguments];
      *buf = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v21;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@The query's argument dictionary contains an argument named '%@' which does not exist as an argument in the query statement's SQL: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE658];
    v16 = MEMORY[0x277CCACA8];
    v17 = [*(a1 + 32) arguments];
    v18 = [v16 stringWithFormat:@"The query's argument dictionary contains an argument named '%@' which does not exist as an argument in the query statement's SQL: %@", v21, v17];
    v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setModelClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_7:
    v5 = _HMFPreconditionFailure();
    [(HMBModelQuery *)v5 initWithSQLPredicate:v6 initialSequence:v7 maximumRowsPerSelect:v8 arguments:v9, v10];
    return;
  }

  if (!self->_modelClass)
  {
    objc_storeStrong(&self->_modelClass, class);
  }

  if ([(HMBModelQuery *)self modelClass]!= class)
  {
    goto LABEL_7;
  }
}

- (HMBModelQuery)initWithSQLPredicate:(id)predicate initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select arguments:(id)arguments
{
  predicateCopy = predicate;
  sequenceCopy = sequence;
  argumentsCopy = arguments;
  v21.receiver = self;
  v21.super_class = HMBModelQuery;
  v14 = [(HMBModelQuery *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sqlPredicate, predicate);
    v16 = [argumentsCopy copy];
    arguments = v15->_arguments;
    v15->_arguments = v16;

    objc_storeStrong(&v15->_initialSequence, sequence);
    v15->_maximumRowsPerSelect = select;
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    preparedQueries = v15->_preparedQueries;
    v15->_preparedQueries = weakToWeakObjectsMapTable;
  }

  return v15;
}

@end