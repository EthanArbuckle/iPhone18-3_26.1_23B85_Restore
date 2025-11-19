@interface ML3CompoundPredicate
+ (id)predicateMatchingPredicates:(id)a3;
- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5;
- (BOOL)isDynamicForEntityClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (ML3CompoundPredicate)initWithCoder:(id)a3;
- (ML3CompoundPredicate)initWithPredicates:(id)a3;
- (id)SQLJoinClausesForClass:(Class)a3;
- (id)databaseStatementParameters;
- (id)description;
- (id)spotlightPredicate;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
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

        v7 = [*(*(&v10 + 1) + 8 * i) spotlightPredicate];
        if (v7)
        {
          v8 = v7;
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

        v9 = [*(*(&v11 + 1) + 8 * i) databaseStatementParameters];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5
{
  v5 = *&a5;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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

        if ([*(*(&v17 + 1) + 8 * i) containsPropertyPredicate:v8 matchingValue:v9 usingComparison:{v5, v17}])
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

- (BOOL)isDynamicForEntityClass:(Class)a3
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

        if ([*(*(&v11 + 1) + 8 * i) isDynamicForEntityClass:{a3, v11}])
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

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSArray *)self->_predicates count])
  {
    objc_msgSend(v6, "appendString:", @"(");
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
            v14 = [(ML3CompoundPredicate *)self compoundOperatorJoiner];
            [v6 appendString:v14];
          }

          [v13 appendSQLToMutableString:v6 entityClass:{a4, v16}];
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

  [v6 appendString:{v15, v16}];
}

- (id)SQLJoinClausesForClass:(Class)a3
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
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) SQLJoinClausesForClass:{a3, v12}];
        if ([v10 count])
        {
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB40] orderedSet];
          }

          [v7 unionOrderedSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ML3CompoundPredicate;
  v4 = [(ML3CompoundPredicate *)&v8 description];
  v5 = [(ML3CompoundPredicate *)self predicates];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3CompoundPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  v4 = [(ML3CompoundPredicate *)self predicates];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3CompoundPredicate;
    if ([(ML3Predicate *)&v9 isEqual:v4])
    {
      v5 = [(ML3CompoundPredicate *)self predicates];
      v6 = [(ML3CompoundPredicate *)v4 predicates];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ML3CompoundPredicate;
  v4 = a3;
  [(ML3Predicate *)&v6 encodeWithCoder:v4];
  v5 = [(ML3CompoundPredicate *)self predicates:v6.receiver];
  [v4 encodeObject:v5 forKey:@"predicates"];
}

- (ML3CompoundPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ML3CompoundPredicate;
  v5 = [(ML3Predicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"predicates"];
    [(ML3CompoundPredicate *)v5 setPredicates:v9];
  }

  return v5;
}

- (ML3CompoundPredicate)initWithPredicates:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ML3CompoundPredicate;
  v5 = [(ML3CompoundPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ML3CompoundPredicate *)v5 setPredicates:v4];
  }

  return v6;
}

+ (id)predicateMatchingPredicates:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"ML3Predicate.m" lineNumber:1072 description:@"ML3CompoundPredicate is an abstract class; use ML3AllCompoundPredicate or ML3AnyCompoundPredicate"];
  }

  v7 = [[v6 alloc] initWithPredicates:v5];

  return v7;
}

@end