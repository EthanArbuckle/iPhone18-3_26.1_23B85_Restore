@interface ML3ContainsPredicate
+ (id)predicateWithProperty:(id)a3 valueSet:(id)a4;
+ (id)predicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5;
- (BOOL)isEqual:(id)a3;
- (ML3ContainsPredicate)initWithCoder:(id)a3;
- (ML3ContainsPredicate)initWithProperty:(id)a3 values:(id)a4;
- (id)databaseStatementParameters;
- (id)description;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ContainsPredicate

- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5
{
  v5 = *&a5;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ML3PropertyPredicate *)self property];
  v11 = [v10 isEqualToString:v8];

  if (v11)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_values;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([v9 ml_matchesValue:*(*(&v19 + 1) + 8 * i) usingComparison:{v5, v19}])
          {
            v17 = 1;
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)databaseStatementParameters
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_values)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self->_values, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_values;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:{*(*(&v10 + 1) + 8 * i), v10}];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v10 = a3;
  v6 = [(objc_class *)a4 disambiguatedSQLForProperty:self->super._property];
  [v10 appendString:v6];

  objc_msgSend(v10, "appendString:", @" IN (");
  v7 = [self->_values count];
  if (v7)
  {
    v8 = v7;
    [v10 appendString:@"?"];
    v9 = v8 - 1;
    if (v8 != 1)
    {
      do
      {
        [v10 appendString:{@", ?"}];
        --v9;
      }

      while (v9);
    }
  }

  [v10 appendString:@""]);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3ContainsPredicate;
  v4 = [(ML3PropertyPredicate *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@(%@ IN %@)", v4, self->super._property, self->_values];

  return v5;
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
    v9.super_class = ML3ContainsPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:v4])
    {
      v5 = [(ML3ContainsPredicate *)self values];
      v6 = [(ML3ContainsPredicate *)v4 values];
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
  v6.super_class = ML3ContainsPredicate;
  v4 = a3;
  [(ML3PropertyPredicate *)&v6 encodeWithCoder:v4];
  v5 = [(ML3ContainsPredicate *)self values:v6.receiver];
  [v4 encodeObject:v5 forKey:@"values"];
}

- (ML3ContainsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3ContainsPredicate;
  v5 = [(ML3PropertyPredicate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];
    [(ML3ContainsPredicate *)v5 setValues:v7];
  }

  return v5;
}

- (ML3ContainsPredicate)initWithProperty:(id)a3 values:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ML3ContainsPredicate;
  v7 = [(ML3PropertyPredicate *)&v10 initWithProperty:a3];
  v8 = v7;
  if (v7)
  {
    [(ML3ContainsPredicate *)v7 setValues:v6];
  }

  return v8;
}

+ (id)predicateWithProperty:(id)a3 valueSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProperty:v7 values:v6];

  return v8;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProperty:v7 values:v6];

  return v8;
}

@end