@interface HMBModelUnindexedQuery
+ (id)queryWithSQLPredicate:(id)predicate ascending:(BOOL)ascending arguments:(id)arguments;
- (id)performQueryOn:(id)on arguments:(id)arguments;
- (id)sqlSelectStatementForModelType:(id)type;
@end

@implementation HMBModelUnindexedQuery

- (id)sqlSelectStatementForModelType:(id)type
{
  typeCopy = type;
  initialSequence = [(HMBModelQuery *)self initialSequence];
  integerValue = [initialSequence integerValue];
  v7 = @"DESC";
  if (!integerValue)
  {
    v7 = @"ASC";
  }

  v8 = v7;

  v9 = MEMORY[0x277CCACA8];
  sqlPredicate = [(HMBModelQuery *)self sqlPredicate];
  v11 = [v9 stringWithFormat:@"SELECT _record_id FROM queryable_%@ WHERE _store_id = :_store_id AND _record_id > :_sequence_offset AND %@ ORDER BY _record_id %@ LIMIT %lu", typeCopy, sqlPredicate, v8, -[HMBModelQuery maximumRowsPerSelect](self, "maximumRowsPerSelect")];

  return v11;
}

- (id)performQueryOn:(id)on arguments:(id)arguments
{
  onCopy = on;
  argumentsCopy = arguments;
  preparedQueries = [(HMBModelQuery *)self preparedQueries];
  v9 = [onCopy sql];
  v10 = [preparedQueries objectForKey:v9];

  if (v10)
  {
    v11 = __encodeArguments(self, v10, argumentsCopy);
    v12 = [HMBLocalZoneQueryResultRecordID alloc];
    initialSequence = [(HMBModelQuery *)self initialSequence];
    v14 = [(HMBLocalZoneQueryResult *)v12 initWithLocalZone:onCopy statement:v10 initialSequence:initialSequence arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return __encodeArguments(v16, v17, v18);
  }
}

+ (id)queryWithSQLPredicate:(id)predicate ascending:(BOOL)ascending arguments:(id)arguments
{
  ascendingCopy = ascending;
  predicateCopy = predicate;
  argumentsCopy = arguments;
  if (!predicateCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v9 = argumentsCopy;
  if (!argumentsCopy)
  {
LABEL_10:
    v14 = _HMFPreconditionFailure();
    [(HMBModelIndexedQuery *)v14 .cxx_destruct];
    return result;
  }

  v10 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  if (ascendingCopy)
  {
    v11 = &unk_283EB9E10;
  }

  else
  {
    v11 = &unk_283EB9E28;
  }

  v12 = [(HMBModelQuery *)[HMBModelUnindexedQuery alloc] initWithSQLPredicate:predicateCopy initialSequence:v11 maximumRowsPerSelect:v10 arguments:v9];

  return v12;
}

@end