@interface ML3ContainmentPredicate
+ (id)predicateWithProperty:(id)property values:(id)values;
- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison;
- (BOOL)isEqual:(id)equal;
- (ML3ContainmentPredicate)initWithCoder:(id)coder;
- (ML3ContainmentPredicate)initWithProperty:(id)property values:(id)values;
- (id)_orderedValues;
- (id)databaseStatementParameters;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ContainmentPredicate

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
    values = [(ML3ContainmentPredicate *)self values];
    v13 = [values countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(values);
          }

          if ([valueCopy ml_matchesValue:*(*(&v19 + 1) + 8 * i) usingComparison:v5])
          {
            v17 = 1;
            goto LABEL_13;
          }
        }

        v14 = [values countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  _orderedValues = [(ML3ContainmentPredicate *)self _orderedValues];
  v3 = [_orderedValues copy];

  return v3;
}

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  v6 = [(objc_class *)class disambiguatedSQLForProperty:self->super._property];
  _orderedValues = [(ML3ContainmentPredicate *)self _orderedValues];
  [stringCopy appendString:v6];
  if ([_orderedValues count] == 1)
  {
    [stringCopy appendString:@" = "];
    [stringCopy appendString:@" ? "];
  }

  else
  {
    objc_msgSend(stringCopy, "appendString:", @" IN (");
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_orderedValues, "count")}];
    if ([_orderedValues count])
    {
      v9 = 0;
      do
      {
        [v8 addObject:@"?"];
        ++v9;
      }

      while (v9 < [_orderedValues count]);
    }

    if ([v8 count])
    {
      v10 = [v8 componentsJoinedByString:{@", "}];
      [stringCopy appendString:v10];
    }

    [stringCopy appendString:@""]);
  }
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  _orderedValues = [(ML3ContainmentPredicate *)self _orderedValues];
  if ([(NSString *)self->super._property isEqualToString:@"media_type"])
  {
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = _orderedValues;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = NSStringFromMLMediaType([*(*(&v19 + 1) + 8 * i) integerValue]);
          [array addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [array componentsJoinedByString:{@", "}];
    v13 = [v11 stringWithFormat:@" [%@]", v12];
  }

  else
  {
    v13 = &stru_28408B690;
  }

  v14 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = ML3ContainmentPredicate;
  v15 = [(ML3PropertyPredicate *)&v18 description];
  v16 = objc_msgSend(v14, "stringWithFormat:", @"%@(%@ IN (%@)%@"), v15, self->super._property, _orderedValues, v13;

  return v16;
}

- (unint64_t)hash
{
  property = [(ML3PropertyPredicate *)self property];
  v4 = [property hash];
  values = [(ML3ContainmentPredicate *)self values];
  v6 = [values hash];

  return v6 + v4;
}

- (id)_orderedValues
{
  values = [(ML3ContainmentPredicate *)self values];
  allObjects = [values allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v4;
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
    v9.super_class = ML3ContainmentPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:equalCopy])
    {
      values = [(ML3ContainmentPredicate *)self values];
      values2 = [(ML3ContainmentPredicate *)equalCopy values];
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
  v6.super_class = ML3ContainmentPredicate;
  coderCopy = coder;
  [(ML3PropertyPredicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ML3ContainmentPredicate *)self values:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"values"];
}

- (ML3ContainmentPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ML3ContainmentPredicate;
  v5 = [(ML3PropertyPredicate *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"values"];
    [(ML3ContainmentPredicate *)v5 setValues:v11];
  }

  return v5;
}

- (ML3ContainmentPredicate)initWithProperty:(id)property values:(id)values
{
  propertyCopy = property;
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = ML3ContainmentPredicate;
  v9 = [(ML3PropertyPredicate *)&v12 initWithProperty:propertyCopy];
  if (v9)
  {
    if (!valuesCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"ML3Predicate.m" lineNumber:329 description:{@"invalid value (nil) for property %@.", propertyCopy}];
    }

    [(ML3ContainmentPredicate *)v9 setValues:valuesCopy];
  }

  return v9;
}

+ (id)predicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy values:valuesCopy];

  return v7;
}

@end