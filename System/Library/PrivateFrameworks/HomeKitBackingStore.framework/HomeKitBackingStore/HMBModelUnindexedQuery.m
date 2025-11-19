@interface HMBModelUnindexedQuery
+ (id)queryWithSQLPredicate:(id)a3 ascending:(BOOL)a4 arguments:(id)a5;
- (id)performQueryOn:(id)a3 arguments:(id)a4;
- (id)sqlSelectStatementForModelType:(id)a3;
@end

@implementation HMBModelUnindexedQuery

- (id)sqlSelectStatementForModelType:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelQuery *)self initialSequence];
  v6 = [v5 integerValue];
  v7 = @"DESC";
  if (!v6)
  {
    v7 = @"ASC";
  }

  v8 = v7;

  v9 = MEMORY[0x277CCACA8];
  v10 = [(HMBModelQuery *)self sqlPredicate];
  v11 = [v9 stringWithFormat:@"SELECT _record_id FROM queryable_%@ WHERE _store_id = :_store_id AND _record_id > :_sequence_offset AND %@ ORDER BY _record_id %@ LIMIT %lu", v4, v10, v8, -[HMBModelQuery maximumRowsPerSelect](self, "maximumRowsPerSelect")];

  return v11;
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
    v12 = [HMBLocalZoneQueryResultRecordID alloc];
    v13 = [(HMBModelQuery *)self initialSequence];
    v14 = [(HMBLocalZoneQueryResult *)v12 initWithLocalZone:v6 statement:v10 initialSequence:v13 arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return __encodeArguments(v16, v17, v18);
  }
}

+ (id)queryWithSQLPredicate:(id)a3 ascending:(BOOL)a4 arguments:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_10:
    v14 = _HMFPreconditionFailure();
    [(HMBModelIndexedQuery *)v14 .cxx_destruct];
    return result;
  }

  v10 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  if (v6)
  {
    v11 = &unk_283EB9E10;
  }

  else
  {
    v11 = &unk_283EB9E28;
  }

  v12 = [(HMBModelQuery *)[HMBModelUnindexedQuery alloc] initWithSQLPredicate:v7 initialSequence:v11 maximumRowsPerSelect:v10 arguments:v9];

  return v12;
}

@end