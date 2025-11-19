@interface _DKBiomePredicateScanner
+ (id)searchForKeys:(id)a3 inPredicate:(id)a4;
- (id)_initWithSearchKeys:(id)a3;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation _DKBiomePredicateScanner

+ (id)searchForKeys:(id)a3 inPredicate:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = [[_DKBiomePredicateScanner alloc] _initWithSearchKeys:v6];

    [v5 acceptVisitor:v7 flags:1];
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

- (id)_initWithSearchKeys:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DKBiomePredicateScanner;
  v5 = [(_DKBiomePredicateScanner *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    searchKeys = v5->_searchKeys;
    v5->_searchKeys = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    matchedKeys = v5->_matchedKeys;
    v5->_matchedKeys = v8;
  }

  return v5;
}

- (void)visitPredicateExpression:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableSet *)self->_matchedKeys count];
  if (v4 != -[NSSet count](self->_searchKeys, "count") && ([v8 expressionType] == 3 || objc_msgSend(v8, "expressionType") == 10))
  {
    v5 = [v8 keyPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 componentsSeparatedByString:@"."];
      v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
      [v7 intersectSet:self->_searchKeys];
      [(NSMutableSet *)self->_matchedKeys unionSet:v7];
    }
  }
}

@end