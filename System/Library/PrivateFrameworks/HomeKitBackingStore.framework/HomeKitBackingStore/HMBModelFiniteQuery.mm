@interface HMBModelFiniteQuery
+ (id)queryWithSQLPredicate:(id)predicate maximumRowsReturned:(unint64_t)returned indexedProperties:(id)properties arguments:(id)arguments;
- (id)indexName;
- (id)performQueryOn:(id)on arguments:(id)arguments;
- (id)sqlSelectStatementForModelType:(id)type;
@end

@implementation HMBModelFiniteQuery

- (id)sqlSelectStatementForModelType:(id)type
{
  v4 = MEMORY[0x277CCACA8];
  typeCopy = type;
  sqlPredicate = [(HMBModelQuery *)self sqlPredicate];
  v7 = [v4 stringWithFormat:@"SELECT _record_id FROM queryable_%@ WHERE _store_id = :_store_id AND %@ LIMIT %lu", typeCopy, sqlPredicate, -[HMBModelQuery maximumRowsPerSelect](self, "maximumRowsPerSelect")];

  return v7;
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
    v12 = [[HMBLocalZoneQueryResultRecordID alloc] initWithLocalZone:onCopy statement:v10 initialSequence:0 arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

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
  indexNameSuffix = [(HMBModelIndexedQuery *)self indexNameSuffix];
  v6 = [v3 stringWithFormat:@"qf_%@_%@", v4, indexNameSuffix];

  return v6;
}

+ (id)queryWithSQLPredicate:(id)predicate maximumRowsReturned:(unint64_t)returned indexedProperties:(id)properties arguments:(id)arguments
{
  predicateCopy = predicate;
  propertiesCopy = properties;
  argumentsCopy = arguments;
  if (!predicateCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!returned)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!propertiesCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v12 = argumentsCopy;
  if (!argumentsCopy)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    [(HMBModelInfiniteQuery *)v19 .cxx_destruct];
    return result;
  }

  v13 = [propertiesCopy componentsJoinedByString:@"_"];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count") + 1}];
  [v14 addObject:@"_store_id"];
  [v14 addObjectsFromArray:propertiesCopy];
  v15 = [HMBModelFiniteQuery alloc];
  v16 = [v14 copy];
  v17 = [(HMBModelIndexedQuery *)v15 initWithSQLPredicate:predicateCopy initialSequence:0 maximumRowsPerSelect:returned indexNameSuffix:v13 indexedColumns:v16 arguments:v12];

  return v17;
}

@end