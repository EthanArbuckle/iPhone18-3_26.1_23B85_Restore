@interface _OSLogPredicateCompiler
+ (id)expressionForOSLogEventProxyBlock:(id)block;
- (_OSLogPredicateCompiler)initWithPredicate:(id)predicate;
- (id)compileComparisonPredicate:(id)predicate;
- (id)compileExpression:(id)expression;
- (id)compileKeyPathExpression:(id)expression;
- (void)processCompoundPredicate:(id)predicate;
- (void)visitPredicate:(id)predicate;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _OSLogPredicateCompiler

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  _os_crash();
  __break(1u);
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  _os_crash();
  __break(1u);
}

- (void)visitPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(_OSLogPredicateCompiler *)self compileComparisonPredicate:predicateCopy];
    [(NSMutableArray *)self->_stack addObject:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_OSLogPredicateCompiler *)self processCompoundPredicate:predicateCopy];
    }

    else
    {
      [(NSMutableArray *)self->_stack addObject:predicateCopy];
    }
  }
}

- (void)processCompoundPredicate:(id)predicate
{
  stack = self->_stack;
  predicateCopy = predicate;
  v6 = [(NSMutableArray *)stack count];
  subpredicates = [predicateCopy subpredicates];
  v8 = v6 - [subpredicates count];
  subpredicates2 = [predicateCopy subpredicates];
  v10 = [subpredicates2 count];

  v14 = [(NSMutableArray *)self->_stack subarrayWithRange:v8, v10];
  [(NSMutableArray *)self->_stack removeObjectsInRange:v8, v10];
  v11 = objc_alloc(MEMORY[0x277CCA920]);
  compoundPredicateType = [predicateCopy compoundPredicateType];

  v13 = [v11 initWithType:compoundPredicateType subpredicates:v14];
  [(NSMutableArray *)self->_stack addObject:v13];
}

- (id)compileExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType] == 3)
  {
    v5 = [(_OSLogPredicateCompiler *)self compileKeyPathExpression:expressionCopy];
  }

  else
  {
    v5 = expressionCopy;
  }

  v6 = v5;

  return v6;
}

- (id)compileComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  leftExpression = [predicateCopy leftExpression];
  v6 = [(_OSLogPredicateCompiler *)self compileExpression:leftExpression];

  rightExpression = [predicateCopy rightExpression];
  v8 = [(_OSLogPredicateCompiler *)self compileExpression:rightExpression];

  v9 = objc_alloc(MEMORY[0x277CCA918]);
  comparisonPredicateModifier = [predicateCopy comparisonPredicateModifier];
  predicateOperatorType = [predicateCopy predicateOperatorType];
  options = [predicateCopy options];

  v13 = [v9 initWithLeftExpression:v6 rightExpression:v8 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];

  return v13;
}

- (id)compileKeyPathExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType] != 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PredicateMapper.m" lineNumber:415 description:{@"Expression %@ is not a key path expression but %@.", expressionCopy, v13}];
  }

  keyPath = [expressionCopy keyPath];
  if ([keyPath isEqualToString:@"process"])
  {
    v7 = &__block_literal_global_460;
LABEL_23:
    v8 = [_OSLogPredicateCompiler expressionForOSLogEventProxyBlock:v7];
    goto LABEL_24;
  }

  if ([keyPath isEqualToString:@"subsystem"])
  {
    v7 = &__block_literal_global_465;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"category"])
  {
    v7 = &__block_literal_global_470;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"type"])
  {
    v7 = &__block_literal_global_472;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"logType"])
  {
    v7 = &__block_literal_global_474;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"processIdentifier"])
  {
    v7 = &__block_literal_global_476;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"composedMessage"])
  {
    v7 = &__block_literal_global_478;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"signpostName"])
  {
    v7 = &__block_literal_global_483;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"sender"])
  {
    v7 = &__block_literal_global_488;
    goto LABEL_23;
  }

  if ([keyPath isEqualToString:@"formatString"])
  {
    v7 = &__block_literal_global_493;
    goto LABEL_23;
  }

  v8 = expressionCopy;
LABEL_24:
  v9 = v8;

  return v9;
}

- (_OSLogPredicateCompiler)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11.receiver = self;
  v11.super_class = _OSLogPredicateCompiler;
  v5 = [(_OSLogPredicateCompiler *)&v11 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    stack = v5->_stack;
    v5->_stack = array;

    [predicateCopy acceptVisitor:v5 flags:0];
    lastObject = [(NSMutableArray *)v5->_stack lastObject];
    compiledPredicate = v5->_compiledPredicate;
    v5->_compiledPredicate = lastObject;
  }

  return v5;
}

+ (id)expressionForOSLogEventProxyBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x277CCA9C0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___OSLogPredicateCompiler_expressionForOSLogEventProxyBlock___block_invoke;
  v10[3] = &unk_2787AE088;
  v12 = a2;
  selfCopy = self;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [v6 expressionForBlock:v10 arguments:0];

  return v8;
}

@end