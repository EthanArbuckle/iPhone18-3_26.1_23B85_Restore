@interface FHDatabaseClauseFromBuilder
+ (id)initWithBuilder:(id)builder logicalOperator:(id)operator;
- (id)_init:(id)_init logicalOperator:(id)operator;
- (id)clausesAndOperatorsInOrder;
- (id)description;
- (id)expressionFromClausesAndOperators;
- (void)_extractDeepLinkedClauses:(id)clauses clausesAndOperatorsInReversOrder:(id)order;
@end

@implementation FHDatabaseClauseFromBuilder

+ (id)initWithBuilder:(id)builder logicalOperator:(id)operator
{
  operatorCopy = operator;
  builderCopy = builder;
  v7 = objc_opt_new();
  builderCopy[2](builderCopy, v7);

  v8 = [[FHDatabaseClauseFromBuilder alloc] _init:v7 logicalOperator:operatorCopy];

  return v8;
}

- (id)_init:(id)_init logicalOperator:(id)operator
{
  v18[1] = *MEMORY[0x277D85DE8];
  _initCopy = _init;
  operatorCopy = operator;
  v17.receiver = self;
  v17.super_class = FHDatabaseClauseFromBuilder;
  v8 = [(FHDatabaseClauseFromBuilder *)&v17 init];
  if (v8)
  {
    v18[0] = operatorCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    clauseList = v8->_clauseList;
    v8->_clauseList = v9;

    v11 = v8->_clauseList;
    clauseStack = [_initCopy clauseStack];
    v13 = [(NSArray *)v11 arrayByAddingObjectsFromArray:clauseStack];
    v14 = v8->_clauseList;
    v8->_clauseList = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)expressionFromClausesAndOperators
{
  clausesAndOperatorsInOrder = [(FHDatabaseClauseFromBuilder *)self clausesAndOperatorsInOrder];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([clausesAndOperatorsInOrder count])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [clausesAndOperatorsInOrder objectAtIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        shortDescription = [v6 shortDescription];
        [v3 addObject:shortDescription];
        v8 = v4;
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@ ", v6];

        if (!v3 || ![v3 count])
        {
          goto LABEL_9;
        }

        v9 = MEMORY[0x277CCACA8];
        v10 = [v3 componentsJoinedByString:v8];
        shortDescription = [v9 stringWithFormat:@"(%@)", v10];

        [v3 removeAllObjects];
        [v15 addObject:shortDescription];
      }

LABEL_9:
      ++v5;
      v4 = v8;
      if (v5 >= [clausesAndOperatorsInOrder count])
      {
        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_12:
  v11 = MEMORY[0x277CCACA8];
  v12 = [v15 componentsJoinedByString:v8];
  v13 = [v11 stringWithFormat:@"(%@)", v12];

  return v13;
}

- (id)clausesAndOperatorsInOrder
{
  v3 = objc_opt_new();
  [(FHDatabaseClauseFromBuilder *)self _extractDeepLinkedClauses:self->_clauseList clausesAndOperatorsInReversOrder:v3];
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (void)_extractDeepLinkedClauses:(id)clauses clausesAndOperatorsInReversOrder:(id)order
{
  v20 = *MEMORY[0x277D85DE8];
  clausesCopy = clauses;
  orderCopy = order;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [clausesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(clausesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          clauseList = [v12 clauseList];
          [(FHDatabaseClauseFromBuilder *)self _extractDeepLinkedClauses:clauseList clausesAndOperatorsInReversOrder:orderCopy];
        }

        else
        {
          [orderCopy addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [clausesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"clauseList: '%@'; ", self->_clauseList];
  [v3 appendFormat:@">"];

  return v3;
}

@end