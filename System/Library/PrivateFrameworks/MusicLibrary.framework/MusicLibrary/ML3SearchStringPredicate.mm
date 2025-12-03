@interface ML3SearchStringPredicate
+ (id)predicateWithConcatenatedProperties:(id)properties searchString:(id)string;
- (BOOL)isDynamicForEntityClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (ML3SearchStringPredicate)initWithCoder:(id)coder;
- (ML3SearchStringPredicate)initWithConcatenatedProperties:(id)properties searchString:(id)string;
- (id)SQLJoinClausesForClass:(Class)class;
- (id)databaseStatementParameters;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3SearchStringPredicate

- (BOOL)isDynamicForEntityClass:(Class)class
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

        if (![(objc_class *)class libraryContentsChangeForProperty:*(*(&v11 + 1) + 8 * i), v11])
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

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([(NSArray *)self->_properties count])
  {
    [stringCopy appendString:@"ML3SearchStringMatch"];
    objc_msgSend(stringCopy, "appendString:", @"(?, ");
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
            [stringCopy appendString:@" || ' ' || "];
          }

          v14 = [(objc_class *)class disambiguatedSQLForProperty:v13];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"coalesce(%@, '')", v14];
          [stringCopy appendString:v15];

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

  [stringCopy appendString:v16];
}

- (id)SQLJoinClausesForClass:(Class)class
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
    orderedSet = 0;
    v6 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(objc_class *)class joinClausesForProperty:*(*(&v21 + 1) + 8 * i)];
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
              if (!orderedSet)
              {
                orderedSet = [MEMORY[0x277CBEB40] orderedSet];
              }

              [orderedSet addObject:v13];
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
    orderedSet = 0;
  }

  return orderedSet;
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
  searchString = [(ML3SearchStringPredicate *)self searchString];
  v5 = [searchString hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ML3SearchStringPredicate;
    if ([(ML3Predicate *)&v11 isEqual:equalCopy])
    {
      properties = [(ML3SearchStringPredicate *)self properties];
      properties2 = [(ML3SearchStringPredicate *)equalCopy properties];
      if (properties == properties2 || [properties isEqual:properties2])
      {
        searchString = [(ML3SearchStringPredicate *)self searchString];
        searchString2 = [(ML3SearchStringPredicate *)equalCopy searchString];
        if (searchString == searchString2)
        {
          v9 = 1;
        }

        else
        {
          v9 = [searchString isEqual:searchString2];
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

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ML3SearchStringPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ML3SearchStringPredicate *)self properties:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"properties"];

  searchString = [(ML3SearchStringPredicate *)self searchString];
  [coderCopy encodeObject:searchString forKey:@"searchString"];
}

- (ML3SearchStringPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ML3SearchStringPredicate;
  v5 = [(ML3Predicate *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"properties"];
    [(ML3SearchStringPredicate *)v5 setProperties:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(ML3SearchStringPredicate *)v5 setSearchString:v10];
  }

  return v5;
}

- (ML3SearchStringPredicate)initWithConcatenatedProperties:(id)properties searchString:(id)string
{
  propertiesCopy = properties;
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = ML3SearchStringPredicate;
  v8 = [(ML3SearchStringPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ML3SearchStringPredicate *)v8 setProperties:propertiesCopy];
    [(ML3SearchStringPredicate *)v9 setSearchString:stringCopy];
  }

  return v9;
}

+ (id)predicateWithConcatenatedProperties:(id)properties searchString:(id)string
{
  stringCopy = string;
  propertiesCopy = properties;
  v7 = [objc_alloc(objc_opt_class()) initWithConcatenatedProperties:propertiesCopy searchString:stringCopy];

  return v7;
}

@end