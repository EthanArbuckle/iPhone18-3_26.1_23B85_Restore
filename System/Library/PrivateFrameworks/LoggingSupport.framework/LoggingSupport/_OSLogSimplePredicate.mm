@interface _OSLogSimplePredicate
- (BOOL)isSupportedCompoundType:(unint64_t)type;
- (BOOL)isSupportedExpression:(id)expression;
- (_OSLogSimplePredicate)initWithPredicate:(id)predicate supportedKeys:(id)keys supportedOperators:(id)operators supportedCompoundTypes:(id)types;
- (void)processComparisonPredicate:(id)predicate;
- (void)processCompoundPredicate:(id)predicate;
- (void)visitPredicate:(id)predicate;
@end

@implementation _OSLogSimplePredicate

- (void)visitPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_OSLogSimplePredicate *)self processComparisonPredicate:predicateCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_OSLogSimplePredicate *)self processCompoundPredicate:predicateCopy];
    }

    else
    {
      stack = self->_stack;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)stack addObject:null];
    }
  }
}

- (void)processCompoundPredicate:(id)predicate
{
  v30 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  subpredicates = [predicateCopy subpredicates];
  v6 = [subpredicates count];

  v7 = [(NSMutableArray *)self->_stack count];
  v8 = v7 - v6;
  v9 = [(NSMutableArray *)self->_stack subarrayWithRange:v7 - v6, v6];
  [(NSMutableArray *)self->_stack removeObjectsInRange:v8, v6];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 addObject:{v16, v25}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = [v10 count];
  if (!-[_OSLogSimplePredicate isSupportedCompoundType:](self, "isSupportedCompoundType:", [predicateCopy compoundPredicateType]))
  {
LABEL_15:
    v19 = 0;
    goto LABEL_21;
  }

  compoundPredicateType = [predicateCopy compoundPredicateType];
  if (compoundPredicateType)
  {
    if (compoundPredicateType != 2)
    {
      if (compoundPredicateType == 1)
      {
        v19 = v17 != 0;
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    v20 = v17 == v6;
  }

  else
  {
    v20 = v17 == 1;
  }

  v19 = v20;
LABEL_21:
  null = [MEMORY[0x277CBEB68] null];
  if (v19)
  {
    if (v17 == 1 && [predicateCopy compoundPredicateType])
    {
      v22 = [v10 objectAtIndexedSubscript:0];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(predicateCopy subpredicates:{"compoundPredicateType"), v10}];
    }

    v23 = v22;

    null = v23;
  }

  [(NSMutableArray *)self->_stack addObject:null];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)processComparisonPredicate:(id)predicate
{
  v16[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  null = [MEMORY[0x277CBEB68] null];
  operators = self->_operators;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predicateCopy, "predicateOperatorType")}];
  LODWORD(operators) = [(NSSet *)operators containsObject:v7];

  if (operators)
  {
    leftExpression = [predicateCopy leftExpression];
    rightExpression = [predicateCopy rightExpression];
    if ([(_OSLogSimplePredicate *)self isSupportedExpression:leftExpression]|| [(_OSLogSimplePredicate *)self isSupportedExpression:rightExpression])
    {
      if ([predicateCopy predicateOperatorType] == 5)
      {
        v10 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:leftExpression rightExpression:rightExpression modifier:objc_msgSend(predicateCopy type:"comparisonPredicateModifier") options:{4, objc_msgSend(predicateCopy, "options")}];
        v11 = objc_alloc(MEMORY[0x277CCA920]);
        v16[0] = v10;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v13 = [v11 initWithType:0 subpredicates:v12];

        null = v13;
      }

      else
      {
        v14 = predicateCopy;

        null = v14;
      }
    }
  }

  [(NSMutableArray *)self->_stack addObject:null];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedCompoundType:(unint64_t)type
{
  compoundTypes = self->_compoundTypes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  LOBYTE(compoundTypes) = [(NSSet *)compoundTypes containsObject:v4];

  return compoundTypes;
}

- (BOOL)isSupportedExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType] == 3)
  {
    keys = self->_keys;
    keyPath = [expressionCopy keyPath];
    v7 = [(NSSet *)keys containsObject:keyPath];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_OSLogSimplePredicate)initWithPredicate:(id)predicate supportedKeys:(id)keys supportedOperators:(id)operators supportedCompoundTypes:(id)types
{
  predicateCopy = predicate;
  keysCopy = keys;
  operatorsCopy = operators;
  typesCopy = types;
  if (predicateCopy)
  {
    v14 = [(_OSLogSimplePredicate *)self init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_keys, keys);
      objc_storeStrong(&v15->_operators, operators);
      objc_storeStrong(&v15->_compoundTypes, types);
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      stack = v15->_stack;
      v15->_stack = v16;

      [predicateCopy acceptVisitor:v15 flags:0];
      v18 = [(NSMutableArray *)v15->_stack objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [(NSMutableArray *)v15->_stack objectAtIndexedSubscript:0];
        predicate = v15->_predicate;
        v15->_predicate = v20;
      }
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end