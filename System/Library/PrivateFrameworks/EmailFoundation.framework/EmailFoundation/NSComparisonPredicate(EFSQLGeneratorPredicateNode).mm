@interface NSComparisonPredicate(EFSQLGeneratorPredicateNode)
+ (id)log;
- (EFSQLGeneratorComparisonPredicateNode)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:;
@end

@implementation NSComparisonPredicate(EFSQLGeneratorPredicateNode)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__NSComparisonPredicate_EFSQLGeneratorPredicateNode__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v1 = log_log_6;

  return v1;
}

- (EFSQLGeneratorComparisonPredicateNode)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  leftExpression = [self leftExpression];
  keyPath = [leftExpression keyPath];

  keyPathMappers = [v7 keyPathMappers];
  v12 = [keyPathMappers objectForKeyedSubscript:keyPath];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AB18] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [self ef_publicDescription];
      [(NSComparisonPredicate(EFSQLGeneratorPredicateNode) *)keyPath predicateNodeFromPropertyMapper:ef_publicDescription addingTablesUsed:buf, v13];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLGeneratorPredicateNode.m" lineNumber:131 description:{@"Couldn't map keypath %@ from predicate", keyPath}];
  }

  tableName = [v12 tableName];
  [v8 ef_addOptionalObject:tableName];
  rightExpression = [self rightExpression];
  if ([rightExpression expressionType])
  {
    if ([rightExpression expressionType] != 3)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLGeneratorPredicateNode.m" lineNumber:142 description:{@"Comparison expression to an invalid type: %lu", objc_msgSend(rightExpression, "expressionType")}];
    }

    rightExpression2 = [self rightExpression];
    keyPath2 = [rightExpression2 keyPath];

    keyPathMappers2 = [v7 keyPathMappers];
    v21 = [keyPathMappers2 objectForKeyedSubscript:keyPath2];

    tableName2 = [v21 tableName];
    [v8 addObject:tableName2];

    v23 = -[EFSQLGeneratorComparisonPredicateNode initWithValueSource:predicateOperator:comparisonSource:]([EFSQLGeneratorComparisonPredicateNode alloc], "initWithValueSource:predicateOperator:comparisonSource:", v12, [self predicateOperatorType], v21);
  }

  else
  {
    rightExpression3 = [self rightExpression];
    constantValue = [rightExpression3 constantValue];
    v26 = constantValue;
    if (constantValue)
    {
      null = constantValue;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    keyPath2 = null;

    v23 = -[EFSQLGeneratorComparisonPredicateNode initWithValueSource:predicateOperator:constantValue:]([EFSQLGeneratorComparisonPredicateNode alloc], "initWithValueSource:predicateOperator:constantValue:", v12, [self predicateOperatorType], keyPath2);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Couldn't map keypath %{public}@ from predicate: %{public}@", buf, 0x16u);
}

@end