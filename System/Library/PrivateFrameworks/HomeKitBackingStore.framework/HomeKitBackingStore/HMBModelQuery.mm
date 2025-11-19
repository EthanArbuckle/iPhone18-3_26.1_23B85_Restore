@interface HMBModelQuery
- (BOOL)hasExpectedIndexes;
- (HMBModelQuery)initWithSQLPredicate:(id)a3 initialSequence:(id)a4 maximumRowsPerSelect:(unint64_t)a5 arguments:(id)a6;
- (id)description;
- (id)performQueryOn:(id)a3 arguments:(id)a4;
- (id)prepareOnTable:(id)a3;
- (id)sqlSelectStatementForModelType:(id)a3;
- (void)setModelClass:(Class)a3;
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

- (id)sqlSelectStatementForModelType:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)performQueryOn:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v4 = [(HMBModelQuery *)self modelClass];
  if (v4)
  {
    v5 = NSStringFromClass([(HMBModelQuery *)self modelClass]);
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = [(HMBModelQuery *)self sqlPredicate];
  v7 = [v3 stringWithFormat:@"<HMBModelUnindexedQuery class: %@ query: '%@'>", v5, v6];

  if (v4)
  {
  }

  return v7;
}

- (id)prepareOnTable:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 context];
  v6 = [(HMBModelQuery *)self preparedQueries];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v4 modelType];
    v8 = [(HMBModelQuery *)self sqlSelectStatementForModelType:v9];

    v10 = [[HMBSQLQueryStatement alloc] initWithContext:v5 statement:v8];
    if (!v10)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
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
    v11 = [(HMBModelQuery *)self preparedQueries];
    [v11 setObject:v7 forKey:v5];

    if (!self->_sqlSelect && v8)
    {
      v12 = MEMORY[0x277CBEB38];
      v13 = [(HMBModelQuery *)self arguments];
      v14 = [v12 dictionaryWithCapacity:{objc_msgSend(v13, "count")}];

      v15 = MEMORY[0x277CBEB38];
      v16 = [(HMBModelQuery *)self arguments];
      v17 = [v15 dictionaryWithCapacity:{objc_msgSend(v16, "count")}];

      v18 = [(objc_class *)[(HMBModelQuery *)self modelClass] hmbProperties];
      v19 = [v7 arguments];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __32__HMBModelQuery_prepareOnTable___block_invoke;
      v42[3] = &unk_2786E1418;
      v42[4] = self;
      v43 = v18;
      v20 = v14;
      v44 = v20;
      v21 = v17;
      v45 = v21;
      v22 = v18;
      [v19 enumerateKeysAndObjectsUsingBlock:v42];

      v23 = [(HMBModelQuery *)self arguments];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __32__HMBModelQuery_prepareOnTable___block_invoke_42;
      v39[3] = &unk_2786E1440;
      v7 = v7;
      v40 = v7;
      v41 = self;
      [v23 enumerateKeysAndObjectsUsingBlock:v39];

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

- (void)setModelClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_7:
    v5 = _HMFPreconditionFailure();
    [(HMBModelQuery *)v5 initWithSQLPredicate:v6 initialSequence:v7 maximumRowsPerSelect:v8 arguments:v9, v10];
    return;
  }

  if (!self->_modelClass)
  {
    objc_storeStrong(&self->_modelClass, a3);
  }

  if ([(HMBModelQuery *)self modelClass]!= a3)
  {
    goto LABEL_7;
  }
}

- (HMBModelQuery)initWithSQLPredicate:(id)a3 initialSequence:(id)a4 maximumRowsPerSelect:(unint64_t)a5 arguments:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HMBModelQuery;
  v14 = [(HMBModelQuery *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sqlPredicate, a3);
    v16 = [v13 copy];
    arguments = v15->_arguments;
    v15->_arguments = v16;

    objc_storeStrong(&v15->_initialSequence, a4);
    v15->_maximumRowsPerSelect = a5;
    v18 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    preparedQueries = v15->_preparedQueries;
    v15->_preparedQueries = v18;
  }

  return v15;
}

@end