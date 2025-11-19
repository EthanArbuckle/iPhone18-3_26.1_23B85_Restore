@interface _OSLogSimplePredicate
- (BOOL)isSupportedCompoundType:(unint64_t)a3;
- (BOOL)isSupportedExpression:(id)a3;
- (_OSLogSimplePredicate)initWithPredicate:(id)a3 supportedKeys:(id)a4 supportedOperators:(id)a5 supportedCompoundTypes:(id)a6;
- (void)processComparisonPredicate:(id)a3;
- (void)processCompoundPredicate:(id)a3;
- (void)visitPredicate:(id)a3;
@end

@implementation _OSLogSimplePredicate

- (void)visitPredicate:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_OSLogSimplePredicate *)self processComparisonPredicate:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_OSLogSimplePredicate *)self processCompoundPredicate:v6];
    }

    else
    {
      stack = self->_stack;
      v5 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)stack addObject:v5];
    }
  }
}

- (void)processCompoundPredicate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 subpredicates];
  v6 = [v5 count];

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
  if (!-[_OSLogSimplePredicate isSupportedCompoundType:](self, "isSupportedCompoundType:", [v4 compoundPredicateType]))
  {
LABEL_15:
    v19 = 0;
    goto LABEL_21;
  }

  v18 = [v4 compoundPredicateType];
  if (v18)
  {
    if (v18 != 2)
    {
      if (v18 == 1)
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
  v21 = [MEMORY[0x277CBEB68] null];
  if (v19)
  {
    if (v17 == 1 && [v4 compoundPredicateType])
    {
      v22 = [v10 objectAtIndexedSubscript:0];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v4 subpredicates:{"compoundPredicateType"), v10}];
    }

    v23 = v22;

    v21 = v23;
  }

  [(NSMutableArray *)self->_stack addObject:v21];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)processComparisonPredicate:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB68] null];
  operators = self->_operators;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "predicateOperatorType")}];
  LODWORD(operators) = [(NSSet *)operators containsObject:v7];

  if (operators)
  {
    v8 = [v4 leftExpression];
    v9 = [v4 rightExpression];
    if ([(_OSLogSimplePredicate *)self isSupportedExpression:v8]|| [(_OSLogSimplePredicate *)self isSupportedExpression:v9])
    {
      if ([v4 predicateOperatorType] == 5)
      {
        v10 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v8 rightExpression:v9 modifier:objc_msgSend(v4 type:"comparisonPredicateModifier") options:{4, objc_msgSend(v4, "options")}];
        v11 = objc_alloc(MEMORY[0x277CCA920]);
        v16[0] = v10;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v13 = [v11 initWithType:0 subpredicates:v12];

        v5 = v13;
      }

      else
      {
        v14 = v4;

        v5 = v14;
      }
    }
  }

  [(NSMutableArray *)self->_stack addObject:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedCompoundType:(unint64_t)a3
{
  compoundTypes = self->_compoundTypes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  LOBYTE(compoundTypes) = [(NSSet *)compoundTypes containsObject:v4];

  return compoundTypes;
}

- (BOOL)isSupportedExpression:(id)a3
{
  v4 = a3;
  if ([v4 expressionType] == 3)
  {
    keys = self->_keys;
    v6 = [v4 keyPath];
    v7 = [(NSSet *)keys containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_OSLogSimplePredicate)initWithPredicate:(id)a3 supportedKeys:(id)a4 supportedOperators:(id)a5 supportedCompoundTypes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [(_OSLogSimplePredicate *)self init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_keys, a4);
      objc_storeStrong(&v15->_operators, a5);
      objc_storeStrong(&v15->_compoundTypes, a6);
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      stack = v15->_stack;
      v15->_stack = v16;

      [v10 acceptVisitor:v15 flags:0];
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
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end