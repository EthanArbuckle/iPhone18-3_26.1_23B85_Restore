@interface HMBModelInfiniteQuery
+ (id)queryWithSQLPredicate:(id)predicate sequenceArgumentName:(id)name indexedProperties:(id)properties arguments:(id)arguments;
- (HMBModelInfiniteQuery)initWithSQLPredicate:(id)predicate sequenceArgumentName:(id)name maximumRowsPerSelect:(unint64_t)select indexNameSuffix:(id)suffix indexedColumns:(id)columns arguments:(id)arguments;
- (id)performQueryOn:(id)on arguments:(id)arguments;
- (id)sqlSelectStatementForModelType:(id)type;
@end

@implementation HMBModelInfiniteQuery

- (id)sqlSelectStatementForModelType:(id)type
{
  v4 = MEMORY[0x277CCACA8];
  typeCopy = type;
  arguments = [(HMBModelQuery *)self arguments];
  sequenceArgumentName = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v8 = [arguments objectForKeyedSubscript:sequenceArgumentName];
  propertyName = [v8 propertyName];
  sqlPredicate = [(HMBModelQuery *)self sqlPredicate];
  v11 = [v4 stringWithFormat:@"SELECT _record_id, %@ FROM queryable_%@ WHERE _store_id = :_store_id AND %@", propertyName, typeCopy, sqlPredicate];

  return v11;
}

- (id)performQueryOn:(id)on arguments:(id)arguments
{
  onCopy = on;
  argumentsCopy = arguments;
  preparedQueries = [(HMBModelQuery *)self preparedQueries];
  v9 = [onCopy sql];
  v10 = [preparedQueries objectForKey:v9];

  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = __encodeArguments(self, v10, argumentsCopy);
  sequenceArgumentName = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v13 = [argumentsCopy objectForKeyedSubscript:sequenceArgumentName];
  if (!v13)
  {
    arguments = [(HMBModelQuery *)self arguments];
    sequenceArgumentName2 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
    v17 = [arguments objectForKeyedSubscript:sequenceArgumentName2];
    defaultValue = [v17 defaultValue];

    if (defaultValue)
    {
      goto LABEL_5;
    }

LABEL_9:
    v26 = _HMFPreconditionFailure();
    return [(HMBModelInfiniteQuery *)v26 initWithSQLPredicate:v27 sequenceArgumentName:v28 maximumRowsPerSelect:v29 indexNameSuffix:v30 indexedColumns:v31 arguments:v32, v33];
  }

  defaultValue = v13;

LABEL_5:
  v18 = [objc_opt_class() hmbEncodeQueryableParameter:defaultValue];
  arguments2 = [v10 arguments];
  sequenceArgumentName3 = [(HMBModelInfiniteQuery *)self sequenceArgumentName];
  v21 = [arguments2 objectForKeyedSubscript:sequenceArgumentName3];
  v34 = argumentsCopy;
  v22 = onCopy;
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  v24 = [[HMBLocalZoneQueryResultRecordIDSequence alloc] initWithLocalZone:v22 statement:v10 initialSequence:v18 sequenceBindOffset:unsignedIntegerValue arguments:v11 maximumRowsPerSelect:[(HMBModelQuery *)self maximumRowsPerSelect]];

  return v24;
}

- (HMBModelInfiniteQuery)initWithSQLPredicate:(id)predicate sequenceArgumentName:(id)name maximumRowsPerSelect:(unint64_t)select indexNameSuffix:(id)suffix indexedColumns:(id)columns arguments:(id)arguments
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = HMBModelInfiniteQuery;
  v16 = [(HMBModelIndexedQuery *)&v19 initWithSQLPredicate:predicate initialSequence:0 maximumRowsPerSelect:select indexNameSuffix:suffix indexedColumns:columns arguments:arguments];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sequenceArgumentName, name);
  }

  return v17;
}

+ (id)queryWithSQLPredicate:(id)predicate sequenceArgumentName:(id)name indexedProperties:(id)properties arguments:(id)arguments
{
  predicateCopy = predicate;
  nameCopy = name;
  propertiesCopy = properties;
  argumentsCopy = arguments;
  if (!predicateCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!nameCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!propertiesCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v13 = argumentsCopy;
  if (!argumentsCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v14 = [propertiesCopy componentsJoinedByString:@"_"];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count") + 1}];
  [v15 addObject:@"_store_id"];
  [v15 addObjectsFromArray:propertiesCopy];
  v16 = [v13 objectForKey:nameCopy];
  if (!v16)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v17 = v16;
  propertyName = [v16 propertyName];
  lastObject = [propertiesCopy lastObject];
  v20 = [propertyName isEqualToString:lastObject];

  if ((v20 & 1) == 0)
  {
LABEL_15:
    v26 = _HMFPreconditionFailure();
    return [(HMBModelCountMatchesQuery *)v26 sqlSelectStatementForModelType:v27, v28];
  }

  v21 = [HMBModelInfiniteQuery alloc];
  v22 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v23 = [v15 copy];
  v24 = [(HMBModelInfiniteQuery *)v21 initWithSQLPredicate:predicateCopy sequenceArgumentName:nameCopy maximumRowsPerSelect:v22 indexNameSuffix:v14 indexedColumns:v23 arguments:v13];

  return v24;
}

@end