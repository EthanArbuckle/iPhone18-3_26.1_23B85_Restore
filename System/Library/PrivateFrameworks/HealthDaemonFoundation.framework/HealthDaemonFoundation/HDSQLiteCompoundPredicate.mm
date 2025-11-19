@interface HDSQLiteCompoundPredicate
+ (id)negatedPredicate:(id)a3;
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4;
+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDSQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    goto LABEL_16;
  }

  v5 = objc_alloc_init(objc_opt_class());
  v5[8] = 0;
  v5[9] = 1;
  v6 = *(v5 + 2);
  v18 = v5;
  *(v5 + 2) = @" AND ";

  v7 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v3;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v21;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        if ([*(v14 + 2) isEqualToString:@" AND "])
        {
          [v7 addObjectsFromArray:*(v14 + 3)];

          continue;
        }
      }

      [v7 addObject:{v13, v18}];
    }

    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v10);
LABEL_15:

  v4 = v18;
  v15 = *(v18 + 3);
  *(v18 + 3) = v7;

  v3 = v19;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    goto LABEL_16;
  }

  v5 = objc_alloc_init(objc_opt_class());
  v5[8] = 0;
  v5[9] = 0;
  v6 = *(v5 + 2);
  v18 = v5;
  *(v5 + 2) = @" OR ";

  v7 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v3;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v21;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        if ([*(v14 + 2) isEqualToString:@" OR "])
        {
          [v7 addObjectsFromArray:*(v14 + 3)];

          continue;
        }
      }

      [v7 addObject:{v13, v18}];
    }

    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v10);
LABEL_15:

  v4 = v18;
  v15 = *(v18 + 3);
  *(v18 + 3) = v7;

  v3 = v19;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)negatedPredicate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(objc_opt_class());
    v4[8] = 1;
    v5 = *(v4 + 2);
    *(v4 + 2) = @"NOT ";

    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, 0}];
    v7 = *(v4 + 3);
    *(v4 + 3) = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 value:*(*(&v20 + 1) + 8 * i) comparisonType:a5, v20];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [a1 predicateMatchingAnyPredicates:v10];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4
{
  v4 = [HDSQLiteCompoundPredicate predicateWithProperty:a3 equalToValues:a4];
  v5 = [HDSQLiteCompoundPredicate negatedPredicate:v4];

  return v5;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_predicates;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) bindToStatement:a3 bindingIndex:{a4, v12}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = HDSQLiteCompoundPredicate;
  v3 = [(HDSQLitePredicate *)&v8 hash];
  v4 = [(NSString *)self->_combinationOperation hash];
  v5 = [(HDSQLiteCompoundPredicate *)self predicates];
  v6 = &v3[[v5 hash]];

  return &v6[v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDSQLiteCompoundPredicate;
  if ([(HDSQLitePredicate *)&v14 isEqual:v4]&& ((combinationOperation = self->_combinationOperation, v6 = v4[2], combinationOperation == v6) || v6 && [(NSString *)combinationOperation isEqual:?]))
  {
    predicates = self->_predicates;
    v8 = [v4 predicates];
    if (predicates == v8)
    {
      v12 = 1;
    }

    else
    {
      v9 = [v4 predicates];
      if (v9)
      {
        v10 = self->_predicates;
        v11 = [v4 predicates];
        v12 = [(NSArray *)v10 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)SQLForEntityClass:(Class)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_predicates count])
  {
    v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v6 = v5;
    if (self->_unary)
    {
      [v5 appendString:self->_combinationOperation];
      v7 = [(NSArray *)self->_predicates objectAtIndex:0];
      v8 = [v7 SQLForEntityClass:a3];
      [v6 appendString:v8];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = self->_predicates;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v18 + 1) + 8 * i) SQLForEntityClass:{a3, v18}];
            if (v15)
            {
              if ([v6 length] >= 2)
              {
                [v6 appendString:self->_combinationOperation];
              }

              [v6 appendString:v15];
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    [v6 appendString:@""], v18);
  }

  else
  {
    if (self->_trueIfNoPredicates)
    {
      v9 = @"1";
    }

    else
    {
      v9 = @"0";
    }

    v6 = [MEMORY[0x277CCAB68] stringWithString:v9];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) SQLJoinClausesForEntityClass:{a3, v13}];
        if (v10)
        {
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB58] set];
          }

          [v7 unionSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDSQLiteCompoundPredicate;
  if ([(HDSQLitePredicate *)&v16 isCompatibleWithPredicate:v4])
  {
    v5 = v4;
    v6 = [(NSArray *)self->_predicates count];
    v7 = [v5[3] count];
    combinationOperation = self->_combinationOperation;
    v9 = v5[2];
    if (combinationOperation == v9 || v9 && [(NSString *)combinationOperation isEqual:?])
    {
      LOBYTE(v7) = v6 == v7;
      if (v7)
      {
        v10 = v6 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = 1;
        do
        {
          v12 = [(NSArray *)self->_predicates objectAtIndexedSubscript:v11 - 1];
          v13 = [v5[3] objectAtIndexedSubscript:v11 - 1];
          LODWORD(v7) = [v12 isCompatibleWithPredicate:v13];

          if (v7)
          {
            v14 = v11 >= v6;
          }

          else
          {
            v14 = 1;
          }

          ++v11;
        }

        while (!v14);
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_predicates, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  combinationOperation = self->_combinationOperation;
  v12 = [v3 componentsJoinedByString:{@", \n\t"}];
  v13 = [v10 stringWithFormat:@"{%@:\n\t%@\n}", combinationOperation, v12, v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end