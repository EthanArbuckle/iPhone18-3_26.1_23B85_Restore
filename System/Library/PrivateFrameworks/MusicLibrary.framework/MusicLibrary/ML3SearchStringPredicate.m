@interface ML3SearchStringPredicate
+ (id)predicateWithConcatenatedProperties:(id)a3 searchString:(id)a4;
- (BOOL)isDynamicForEntityClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (ML3SearchStringPredicate)initWithCoder:(id)a3;
- (ML3SearchStringPredicate)initWithConcatenatedProperties:(id)a3 searchString:(id)a4;
- (id)SQLJoinClausesForClass:(Class)a3;
- (id)databaseStatementParameters;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3SearchStringPredicate

- (BOOL)isDynamicForEntityClass:(Class)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_properties;
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

        if (![(objc_class *)a3 libraryContentsChangeForProperty:*(*(&v11 + 1) + 8 * i), v11])
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

- (id)databaseStatementParameters
{
  v5[1] = *MEMORY[0x277D85DE8];
  searchString = self->_searchString;
  if (!searchString)
  {
    searchString = &stru_28408B690;
  }

  v5[0] = searchString;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSArray *)self->_properties count])
  {
    [v6 appendString:@"ML3SearchStringMatch"];
    objc_msgSend(v6, "appendString:", @"(?, ");
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_properties;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (v10)
          {
            [v6 appendString:@" || ' ' || "];
          }

          v14 = [(objc_class *)a4 disambiguatedSQLForProperty:v13];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"coalesce(%@, '')", v14];
          [v6 appendString:v15];

          ++v12;
          v10 = 1;
        }

        while (v9 != v12);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v16 = @"");
  }

  else
  {
    v16 = @"0";
  }

  [v6 appendString:v16];
}

- (id)SQLJoinClausesForClass:(Class)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_properties;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(objc_class *)a3 joinClausesForProperty:*(*(&v21 + 1) + 8 * i)];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * j);
              if (!v5)
              {
                v5 = [MEMORY[0x277CBEB40] orderedSet];
              }

              [v5 addObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [(NSArray *)self->_properties componentsJoinedByString:@" + "];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ML3SearchStringPredicate;
  v5 = [(ML3SearchStringPredicate *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@((%@) matches '%@')", v5, v3, self->_searchString];

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ML3SearchStringPredicate;
  v3 = [(ML3Predicate *)&v7 hash];
  v4 = [(ML3SearchStringPredicate *)self searchString];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ML3SearchStringPredicate;
    if ([(ML3Predicate *)&v11 isEqual:v4])
    {
      v5 = [(ML3SearchStringPredicate *)self properties];
      v6 = [(ML3SearchStringPredicate *)v4 properties];
      if (v5 == v6 || [v5 isEqual:v6])
      {
        v7 = [(ML3SearchStringPredicate *)self searchString];
        v8 = [(ML3SearchStringPredicate *)v4 searchString];
        if (v7 == v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = [v7 isEqual:v8];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ML3SearchStringPredicate;
  v4 = a3;
  [(ML3Predicate *)&v7 encodeWithCoder:v4];
  v5 = [(ML3SearchStringPredicate *)self properties:v7.receiver];
  [v4 encodeObject:v5 forKey:@"properties"];

  v6 = [(ML3SearchStringPredicate *)self searchString];
  [v4 encodeObject:v6 forKey:@"searchString"];
}

- (ML3SearchStringPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ML3SearchStringPredicate;
  v5 = [(ML3Predicate *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"properties"];
    [(ML3SearchStringPredicate *)v5 setProperties:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(ML3SearchStringPredicate *)v5 setSearchString:v10];
  }

  return v5;
}

- (ML3SearchStringPredicate)initWithConcatenatedProperties:(id)a3 searchString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ML3SearchStringPredicate;
  v8 = [(ML3SearchStringPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ML3SearchStringPredicate *)v8 setProperties:v6];
    [(ML3SearchStringPredicate *)v9 setSearchString:v7];
  }

  return v9;
}

+ (id)predicateWithConcatenatedProperties:(id)a3 searchString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithConcatenatedProperties:v6 searchString:v5];

  return v7;
}

@end