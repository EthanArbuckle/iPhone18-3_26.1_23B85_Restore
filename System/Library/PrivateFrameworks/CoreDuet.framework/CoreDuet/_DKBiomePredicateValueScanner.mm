@interface _DKBiomePredicateValueScanner
+ (id)searchForValuesForKey:(id)key inPredicate:(id)predicate;
- (id)_initWithSearchKeys:(id)keys;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _DKBiomePredicateValueScanner

+ (id)searchForValuesForKey:(id)key inPredicate:(id)predicate
{
  v14[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  keyCopy = key;
  v7 = [_DKBiomePredicateValueScanner alloc];
  v14[0] = keyCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(_DKBiomePredicateValueScanner *)v7 _initWithSearchKeys:v8];

  [predicateCopy acceptVisitor:v9 flags:15];
  if ([v9[2] count])
  {
    v10 = v9[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_initWithSearchKeys:(id)keys
{
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = _DKBiomePredicateValueScanner;
  v5 = [(_DKBiomePredicateValueScanner *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
    searchKeys = v5->_searchKeys;
    v5->_searchKeys = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    matchedValues = v5->_matchedValues;
    v5->_matchedValues = v8;

    v5->_state = 1;
  }

  return v5;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  v4 = objc_autoreleasePoolPush();
  state = self->_state;
  if (state == 3)
  {
    if ([expressionCopy expressionType])
    {
LABEL_16:
      if ([expressionCopy expressionType] != 14)
      {
        goto LABEL_20;
      }

      collection = [expressionCopy collection];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        matchedValues = self->_matchedValues;
        v11 = [collection _pas_mappedArrayWithTransform:&__block_literal_global_17];
        [(NSMutableSet *)matchedValues addObjectsFromArray:v11];

        self->_state = 1;
      }

      goto LABEL_19;
    }

    constantValue = [expressionCopy constantValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableSet *)self->_matchedValues addObject:constantValue];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      [(NSMutableSet *)self->_matchedValues addObjectsFromArray:constantValue];
    }

    self->_state = 1;
    goto LABEL_15;
  }

  if (state == 2 && ([expressionCopy expressionType] == 3 || objc_msgSend(expressionCopy, "expressionType") == 10))
  {
    collection = [expressionCopy keyPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [collection componentsSeparatedByString:@"."];
      v8 = [MEMORY[0x1E695DFA8] setWithArray:v7];
      [v8 intersectSet:self->_searchKeys];
      if ([v8 count])
      {
        self->_state = 3;
      }
    }

LABEL_19:
  }

LABEL_20:
  objc_autoreleasePoolPop(v4);
}

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  state = self->_state;
  if (state - 2 >= 2)
  {
    if (state != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    self->_state = 1;
  }

  v7 = operatorCopy;
  v6 = [operatorCopy operatorType] == 4;
  operatorCopy = v7;
  if (v6 || (v6 = [v7 operatorType] == 10, operatorCopy = v7, v6))
  {
    self->_state = 2;
  }

LABEL_8:
}

@end