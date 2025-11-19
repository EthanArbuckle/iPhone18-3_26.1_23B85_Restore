@interface HMBModelFiniteQuery
+ (id)queryWithSQLPredicate:(id)a3 maximumRowsReturned:(unint64_t)a4 indexedProperties:(id)a5 arguments:(id)a6;
- (id)indexName;
- (id)performQueryOn:(id)a3 arguments:(id)a4;
- (id)sqlSelectStatementForModelType:(id)a3;
@end

@implementation HMBModelFiniteQuery

- (id)sqlSelectStatementForModelType:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(HMBModelQuery *)self sqlPredicate];
  v7 = [v4 stringWithFormat:@"SELECT _record_id FROM queryable_%@ WHERE _store_id = :_store_id AND %@ LIMIT %lu", v5, v6, -[HMBModelQuery maximumRowsPerSelect](self, "maximumRowsPerSelect")];

  return v7;
}

- (id)performQueryOn:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMBModelQuery *)self preparedQueries];
  v9 = [v6 sql];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = __encodeArguments(self, v10, v7);
    v12 = [[HMBLocalZoneQueryResultRecordID alloc] initWithLocalZone:v6 statement:v10 initialSequence:0 arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

    return v12;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return [(HMBModelFiniteQuery *)v14 indexName];
  }
}

- (id)indexName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromClass([(HMBModelQuery *)self modelClass]);
  v5 = [(HMBModelIndexedQuery *)self indexNameSuffix];
  v6 = [v3 stringWithFormat:@"qf_%@_%@", v4, v5];

  return v6;
}

+ (id)queryWithSQLPredicate:(id)a3 maximumRowsReturned:(unint64_t)a4 indexedProperties:(id)a5 arguments:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    [(HMBModelInfiniteQuery *)v19 .cxx_destruct];
    return result;
  }

  v13 = [v10 componentsJoinedByString:@"_"];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count") + 1}];
  [v14 addObject:@"_store_id"];
  [v14 addObjectsFromArray:v10];
  v15 = [HMBModelFiniteQuery alloc];
  v16 = [v14 copy];
  v17 = [(HMBModelIndexedQuery *)v15 initWithSQLPredicate:v9 initialSequence:0 maximumRowsPerSelect:a4 indexNameSuffix:v13 indexedColumns:v16 arguments:v12];

  return v17;
}

@end