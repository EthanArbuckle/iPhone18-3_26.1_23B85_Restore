@interface ML3ContainmentPredicate
+ (id)predicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5;
- (BOOL)isEqual:(id)a3;
- (ML3ContainmentPredicate)initWithCoder:(id)a3;
- (ML3ContainmentPredicate)initWithProperty:(id)a3 values:(id)a4;
- (id)_orderedValues;
- (id)databaseStatementParameters;
- (id)description;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ContainmentPredicate

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
    v12 = [(ML3ContainmentPredicate *)self values];
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

          if ([v9 ml_matchesValue:*(*(&v19 + 1) + 8 * i) usingComparison:v5])
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
  v2 = [(ML3ContainmentPredicate *)self _orderedValues];
  v3 = [v2 copy];

  return v3;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v11 = a3;
  v6 = [(objc_class *)a4 disambiguatedSQLForProperty:self->super._property];
  v7 = [(ML3ContainmentPredicate *)self _orderedValues];
  [v11 appendString:v6];
  if ([v7 count] == 1)
  {
    [v11 appendString:@" = "];
    [v11 appendString:@" ? "];
  }

  else
  {
    objc_msgSend(v11, "appendString:", @" IN (");
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    if ([v7 count])
    {
      v9 = 0;
      do
      {
        [v8 addObject:@"?"];
        ++v9;
      }

      while (v9 < [v7 count]);
    }

    if ([v8 count])
    {
      v10 = [v8 componentsJoinedByString:{@", "}];
      [v11 appendString:v10];
    }

    [v11 appendString:@""]);
  }
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(ML3ContainmentPredicate *)self _orderedValues];
  if ([(NSString *)self->super._property isEqualToString:@"media_type"])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
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
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [v4 componentsJoinedByString:{@", "}];
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
  v16 = objc_msgSend(v14, "stringWithFormat:", @"%@(%@ IN (%@)%@"), v15, self->super._property, v3, v13;

  return v16;
}

- (unint64_t)hash
{
  v3 = [(ML3PropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(ML3ContainmentPredicate *)self values];
  v6 = [v5 hash];

  return v6 + v4;
}

- (id)_orderedValues
{
  v2 = [(ML3ContainmentPredicate *)self values];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  return v4;
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
    v9.super_class = ML3ContainmentPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:v4])
    {
      v5 = [(ML3ContainmentPredicate *)self values];
      v6 = [(ML3ContainmentPredicate *)v4 values];
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
  v6.super_class = ML3ContainmentPredicate;
  v4 = a3;
  [(ML3PropertyPredicate *)&v6 encodeWithCoder:v4];
  v5 = [(ML3ContainmentPredicate *)self values:v6.receiver];
  [v4 encodeObject:v5 forKey:@"values"];
}

- (ML3ContainmentPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ML3ContainmentPredicate;
  v5 = [(ML3PropertyPredicate *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"values"];
    [(ML3ContainmentPredicate *)v5 setValues:v11];
  }

  return v5;
}

- (ML3ContainmentPredicate)initWithProperty:(id)a3 values:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3ContainmentPredicate;
  v9 = [(ML3PropertyPredicate *)&v12 initWithProperty:v7];
  if (v9)
  {
    if (!v8)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:v9 file:@"ML3Predicate.m" lineNumber:329 description:{@"invalid value (nil) for property %@.", v7}];
    }

    [(ML3ContainmentPredicate *)v9 setValues:v8];
  }

  return v9;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithProperty:v6 values:v5];

  return v7;
}

@end