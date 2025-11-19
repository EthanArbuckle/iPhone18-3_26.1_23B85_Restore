@interface HMBModelInfiniteQuery
+ (id)queryWithSQLPredicate:(id)a3 sequenceArgumentName:(id)a4 indexedProperties:(id)a5 arguments:(id)a6;
- (HMBModelInfiniteQuery)initWithSQLPredicate:(id)a3 sequenceArgumentName:(id)a4 maximumRowsPerSelect:(unint64_t)a5 indexNameSuffix:(id)a6 indexedColumns:(id)a7 arguments:(id)a8;
- (id)performQueryOn:(id)a3 arguments:(id)a4;
- (id)sqlSelectStatementForModelType:(id)a3;
@end

@implementation HMBModelInfiniteQuery

- (id)sqlSelectStatementForModelType:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(HMBModelQuery *)self arguments];
  v7 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 propertyName];
  v10 = [(HMBModelQuery *)self sqlPredicate];
  v11 = [v4 stringWithFormat:@"SELECT _record_id, %@ FROM queryable_%@ WHERE _store_id = :_store_id AND %@", v9, v5, v10];

  return v11;
}

- (id)performQueryOn:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMBModelQuery *)self preparedQueries];
  v9 = [v6 sql];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = __encodeArguments(self, v10, v7);
  v12 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v13 = [v7 objectForKeyedSubscript:v12];
  if (!v13)
  {
    v15 = [(HMBModelQuery *)self arguments];
    v16 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
    v17 = [v15 objectForKeyedSubscript:v16];
    v14 = [v17 defaultValue];

    if (v14)
    {
      goto LABEL_5;
    }

LABEL_9:
    v26 = _HMFPreconditionFailure();
    return [(HMBModelInfiniteQuery *)v26 initWithSQLPredicate:v27 sequenceArgumentName:v28 maximumRowsPerSelect:v29 indexNameSuffix:v30 indexedColumns:v31 arguments:v32, v33];
  }

  v14 = v13;

LABEL_5:
  v18 = [objc_opt_class() hmbEncodeQueryableParameter:v14];
  v19 = [v10 arguments];
  v20 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v21 = [v19 objectForKeyedSubscript:v20];
  v34 = v7;
  v22 = v6;
  v23 = [v21 unsignedIntegerValue];

  v24 = [[HMBLocalZoneQueryResultRecordIDSequence alloc] initWithLocalZone:v22 statement:v10 initialSequence:v18 sequenceBindOffset:v23 arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

  return v24;
}

- (HMBModelInfiniteQuery)initWithSQLPredicate:(id)a3 sequenceArgumentName:(id)a4 maximumRowsPerSelect:(unint64_t)a5 indexNameSuffix:(id)a6 indexedColumns:(id)a7 arguments:(id)a8
{
  v15 = a4;
  v19.receiver = self;
  v19.super_class = HMBModelInfiniteQuery;
  v16 = [(HMBModelIndexedQuery *)&v19 initWithSQLPredicate:a3 initialSequence:0 maximumRowsPerSelect:a5 indexNameSuffix:a6 indexedColumns:a7 arguments:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sequenceArgumentName, a4);
  }

  return v17;
}

+ (id)queryWithSQLPredicate:(id)a3 sequenceArgumentName:(id)a4 indexedProperties:(id)a5 arguments:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v10)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v13 = v12;
  if (!v12)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v14 = [v11 componentsJoinedByString:@"_"];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count") + 1}];
  [v15 addObject:@"_store_id"];
  [v15 addObjectsFromArray:v11];
  v16 = [v13 objectForKey:v10];
  if (!v16)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 propertyName];
  v19 = [v11 lastObject];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
LABEL_15:
    v26 = _HMFPreconditionFailure();
    return [(HMBModelCountMatchesQuery *)v26 sqlSelectStatementForModelType:v27, v28];
  }

  v21 = [HMBModelInfiniteQuery alloc];
  v22 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v23 = [v15 copy];
  v24 = [(HMBModelInfiniteQuery *)v21 initWithSQLPredicate:v9 sequenceArgumentName:v10 maximumRowsPerSelect:v22 indexNameSuffix:v14 indexedColumns:v23 arguments:v13];

  return v24;
}

@end