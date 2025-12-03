@interface ML3ContainsPredicate
+ (id)predicateWithProperty:(id)property valueSet:(id)set;
+ (id)predicateWithProperty:(id)property values:(id)values;
- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison;
- (BOOL)isEqual:(id)equal;
- (ML3ContainsPredicate)initWithCoder:(id)coder;
- (ML3ContainsPredicate)initWithProperty:(id)property values:(id)values;
- (id)databaseStatementParameters;
- (id)description;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ContainsPredicate

- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison
{
  v5 = *&comparison;
  v24 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  valueCopy = value;
  property = [(ML3PropertyPredicate *)self property];
  v11 = [property isEqualToString:predicateCopy];

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

          if ([valueCopy ml_matchesValue:*(*(&v19 + 1) + 8 * i) usingComparison:{v5, v19}])
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

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  v6 = [(objc_class *)class disambiguatedSQLForProperty:self->super._property];
  [stringCopy appendString:v6];

  objc_msgSend(stringCopy, "appendString:", @" IN (");
  v7 = [self->_values count];
  if (v7)
  {
    v8 = v7;
    [stringCopy appendString:@"?"];
    v9 = v8 - 1;
    if (v8 != 1)
    {
      do
      {
        [stringCopy appendString:{@", ?"}];
        --v9;
      }

      while (v9);
    }
  }

  [stringCopy appendString:@""]);
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
    v9.super_class = ML3ContainsPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:equalCopy])
    {
      values = [(ML3ContainsPredicate *)self values];
      values2 = [(ML3ContainsPredicate *)equalCopy values];
      if (values == values2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [values isEqual:values2];
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
  v6.super_class = ML3ContainsPredicate;
  coderCopy = coder;
  [(ML3PropertyPredicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ML3ContainsPredicate *)self values:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"values"];
}

- (ML3ContainsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ML3ContainsPredicate;
  v5 = [(ML3PropertyPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];
    [(ML3ContainsPredicate *)v5 setValues:v7];
  }

  return v5;
}

- (ML3ContainsPredicate)initWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = ML3ContainsPredicate;
  v7 = [(ML3PropertyPredicate *)&v10 initWithProperty:property];
  v8 = v7;
  if (v7)
  {
    [(ML3ContainsPredicate *)v7 setValues:valuesCopy];
  }

  return v8;
}

+ (id)predicateWithProperty:(id)property valueSet:(id)set
{
  setCopy = set;
  propertyCopy = property;
  v8 = [[self alloc] initWithProperty:propertyCopy values:setCopy];

  return v8;
}

+ (id)predicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v8 = [[self alloc] initWithProperty:propertyCopy values:valuesCopy];

  return v8;
}

@end