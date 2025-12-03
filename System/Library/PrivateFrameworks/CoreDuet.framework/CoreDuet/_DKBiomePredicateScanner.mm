@interface _DKBiomePredicateScanner
+ (id)searchForKeys:(id)keys inPredicate:(id)predicate;
- (id)_initWithSearchKeys:(id)keys;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _DKBiomePredicateScanner

+ (id)searchForKeys:(id)keys inPredicate:(id)predicate
{
  if (predicate)
  {
    predicateCopy = predicate;
    keysCopy = keys;
    v7 = [[_DKBiomePredicateScanner alloc] _initWithSearchKeys:keysCopy];

    [predicateCopy acceptVisitor:v7 flags:1];
    if ([v7[2] count])
    {
      v8 = v7[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithSearchKeys:(id)keys
{
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = _DKBiomePredicateScanner;
  v5 = [(_DKBiomePredicateScanner *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
    searchKeys = v5->_searchKeys;
    v5->_searchKeys = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    matchedKeys = v5->_matchedKeys;
    v5->_matchedKeys = v8;
  }

  return v5;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  v4 = [(NSMutableSet *)self->_matchedKeys count];
  if (v4 != -[NSSet count](self->_searchKeys, "count") && ([expressionCopy expressionType] == 3 || objc_msgSend(expressionCopy, "expressionType") == 10))
  {
    keyPath = [expressionCopy keyPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [keyPath componentsSeparatedByString:@"."];
      v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
      [v7 intersectSet:self->_searchKeys];
      [(NSMutableSet *)self->_matchedKeys unionSet:v7];
    }
  }
}

@end