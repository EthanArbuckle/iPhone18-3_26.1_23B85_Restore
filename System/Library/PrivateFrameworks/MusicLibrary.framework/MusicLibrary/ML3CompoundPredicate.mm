@interface ML3CompoundPredicate
+ (id)predicateMatchingPredicates:(id)predicates;
- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison;
- (BOOL)isDynamicForEntityClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (ML3CompoundPredicate)initWithCoder:(id)coder;
- (ML3CompoundPredicate)initWithPredicates:(id)predicates;
- (id)SQLJoinClausesForClass:(Class)class;
- (id)databaseStatementParameters;
- (id)description;
- (id)spotlightPredicate;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3CompoundPredicate

- (id)spotlightPredicate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_predicates;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        spotlightPredicate = [*(*(&v10 + 1) + 8 * i) spotlightPredicate];
        if (spotlightPredicate)
        {
          v8 = spotlightPredicate;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)databaseStatementParameters
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        databaseStatementParameters = [*(*(&v11 + 1) + 8 * i) databaseStatementParameters];
        [v3 addObjectsFromArray:databaseStatementParameters];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison
{
  v5 = *&comparison;
  v22 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  valueCopy = value;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_predicates;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v17 + 1) + 8 * i) containsPropertyPredicate:predicateCopy matchingValue:valueCopy usingComparison:{v5, v17}])
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)isDynamicForEntityClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) isDynamicForEntityClass:{class, v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([(NSArray *)self->_predicates count])
  {
    objc_msgSend(stringCopy, "appendString:", @"(");
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_predicates;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          if (v10)
          {
            compoundOperatorJoiner = [(ML3CompoundPredicate *)self compoundOperatorJoiner];
            [stringCopy appendString:compoundOperatorJoiner];
          }

          [v13 appendSQLToMutableString:stringCopy entityClass:{class, v16}];
          ++v12;
          v10 = 1;
        }

        while (v9 != v12);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v15 = @"");
  }

  else
  {
    v15 = @"1";
  }

  [stringCopy appendString:{v15, v16}];
}

- (id)SQLJoinClausesForClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    orderedSet = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) SQLJoinClausesForClass:{class, v12}];
        if ([v10 count])
        {
          if (!orderedSet)
          {
            orderedSet = [MEMORY[0x277CBEB40] orderedSet];
          }

          [orderedSet unionOrderedSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    orderedSet = 0;
  }

  return orderedSet;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ML3CompoundPredicate;
  v4 = [(ML3CompoundPredicate *)&v8 description];
  predicates = [(ML3CompoundPredicate *)self predicates];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, predicates];

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3CompoundPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  predicates = [(ML3CompoundPredicate *)self predicates];
  v5 = [predicates hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3CompoundPredicate;
    if ([(ML3Predicate *)&v9 isEqual:equalCopy])
    {
      predicates = [(ML3CompoundPredicate *)self predicates];
      predicates2 = [(ML3CompoundPredicate *)equalCopy predicates];
      if (predicates == predicates2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [predicates isEqual:predicates2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ML3CompoundPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ML3CompoundPredicate *)self predicates:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"predicates"];
}

- (ML3CompoundPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ML3CompoundPredicate;
  v5 = [(ML3Predicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"predicates"];
    [(ML3CompoundPredicate *)v5 setPredicates:v9];
  }

  return v5;
}

- (ML3CompoundPredicate)initWithPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v8.receiver = self;
  v8.super_class = ML3CompoundPredicate;
  v5 = [(ML3CompoundPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3CompoundPredicate *)v5 setPredicates:predicatesCopy];
  }

  return v6;
}

+ (id)predicateMatchingPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Predicate.m" lineNumber:1072 description:@"ML3CompoundPredicate is an abstract class; use ML3AllCompoundPredicate or ML3AnyCompoundPredicate"];
  }

  v7 = [[v6 alloc] initWithPredicates:predicatesCopy];

  return v7;
}

@end