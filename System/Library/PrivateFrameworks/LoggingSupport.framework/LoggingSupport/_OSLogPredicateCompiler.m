@interface _OSLogPredicateCompiler
+ (id)expressionForOSLogEventProxyBlock:(id)a3;
- (_OSLogPredicateCompiler)initWithPredicate:(id)a3;
- (id)compileComparisonPredicate:(id)a3;
- (id)compileExpression:(id)a3;
- (id)compileKeyPathExpression:(id)a3;
- (void)processCompoundPredicate:(id)a3;
- (void)visitPredicate:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation _OSLogPredicateCompiler

- (void)visitPredicateOperator:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

- (void)visitPredicateExpression:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

- (void)visitPredicate:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(_OSLogPredicateCompiler *)self compileComparisonPredicate:v5];
    [(NSMutableArray *)self->_stack addObject:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_OSLogPredicateCompiler *)self processCompoundPredicate:v5];
    }

    else
    {
      [(NSMutableArray *)self->_stack addObject:v5];
    }
  }
}

- (void)processCompoundPredicate:(id)a3
{
  stack = self->_stack;
  v5 = a3;
  v6 = [(NSMutableArray *)stack count];
  v7 = [v5 subpredicates];
  v8 = v6 - [v7 count];
  v9 = [v5 subpredicates];
  v10 = [v9 count];

  v14 = [(NSMutableArray *)self->_stack subarrayWithRange:v8, v10];
  [(NSMutableArray *)self->_stack removeObjectsInRange:v8, v10];
  v11 = objc_alloc(MEMORY[0x277CCA920]);
  v12 = [v5 compoundPredicateType];

  v13 = [v11 initWithType:v12 subpredicates:v14];
  [(NSMutableArray *)self->_stack addObject:v13];
}

- (id)compileExpression:(id)a3
{
  v4 = a3;
  if ([v4 expressionType] == 3)
  {
    v5 = [(_OSLogPredicateCompiler *)self compileKeyPathExpression:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)compileComparisonPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 leftExpression];
  v6 = [(_OSLogPredicateCompiler *)self compileExpression:v5];

  v7 = [v4 rightExpression];
  v8 = [(_OSLogPredicateCompiler *)self compileExpression:v7];

  v9 = objc_alloc(MEMORY[0x277CCA918]);
  v10 = [v4 comparisonPredicateModifier];
  v11 = [v4 predicateOperatorType];
  v12 = [v4 options];

  v13 = [v9 initWithLeftExpression:v6 rightExpression:v8 modifier:v10 type:v11 options:v12];

  return v13;
}

- (id)compileKeyPathExpression:(id)a3
{
  v5 = a3;
  if ([v5 expressionType] != 3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PredicateMapper.m" lineNumber:415 description:{@"Expression %@ is not a key path expression but %@.", v5, v13}];
  }

  v6 = [v5 keyPath];
  if ([v6 isEqualToString:@"process"])
  {
    v7 = &__block_literal_global_460;
LABEL_23:
    v8 = [_OSLogPredicateCompiler expressionForOSLogEventProxyBlock:v7];
    goto LABEL_24;
  }

  if ([v6 isEqualToString:@"subsystem"])
  {
    v7 = &__block_literal_global_465;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"category"])
  {
    v7 = &__block_literal_global_470;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"type"])
  {
    v7 = &__block_literal_global_472;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"logType"])
  {
    v7 = &__block_literal_global_474;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"processIdentifier"])
  {
    v7 = &__block_literal_global_476;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"composedMessage"])
  {
    v7 = &__block_literal_global_478;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"signpostName"])
  {
    v7 = &__block_literal_global_483;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"sender"])
  {
    v7 = &__block_literal_global_488;
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"formatString"])
  {
    v7 = &__block_literal_global_493;
    goto LABEL_23;
  }

  v8 = v5;
LABEL_24:
  v9 = v8;

  return v9;
}

- (_OSLogPredicateCompiler)initWithPredicate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _OSLogPredicateCompiler;
  v5 = [(_OSLogPredicateCompiler *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    stack = v5->_stack;
    v5->_stack = v6;

    [v4 acceptVisitor:v5 flags:0];
    v8 = [(NSMutableArray *)v5->_stack lastObject];
    compiledPredicate = v5->_compiledPredicate;
    v5->_compiledPredicate = v8;
  }

  return v5;
}

+ (id)expressionForOSLogEventProxyBlock:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x277CCA9C0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___OSLogPredicateCompiler_expressionForOSLogEventProxyBlock___block_invoke;
  v10[3] = &unk_2787AE088;
  v12 = a2;
  v13 = a1;
  v11 = v5;
  v7 = v5;
  v8 = [v6 expressionForBlock:v10 arguments:0];

  return v8;
}

@end