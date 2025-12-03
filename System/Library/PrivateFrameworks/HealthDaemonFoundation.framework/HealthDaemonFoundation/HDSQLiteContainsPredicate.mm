@interface HDSQLiteContainsPredicate
+ (HDSQLiteContainsPredicate)_containsPredicateWithProperty:(void *)property values:(uint64_t)values contains:;
+ (id)_arrayFromValues:(uint64_t)values;
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (HDSQLiteContainsPredicate)initWithProperty:(id)property values:(id)values contains:(BOOL)contains;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation HDSQLiteContainsPredicate

- (HDSQLiteContainsPredicate)initWithProperty:(id)property values:(id)values contains:(BOOL)contains
{
  propertyCopy = property;
  valuesCopy = values;
  v16.receiver = self;
  v16.super_class = HDSQLiteContainsPredicate;
  v10 = [(HDSQLiteContainsPredicate *)&v16 init];
  if (v10)
  {
    v11 = [propertyCopy copy];
    property = v10->super._property;
    v10->super._property = v11;

    v13 = [valuesCopy copy];
    values = v10->_values;
    v10->_values = v13;

    v10->_contains = contains;
  }

  return v10;
}

+ (HDSQLiteContainsPredicate)_containsPredicateWithProperty:(void *)property values:(uint64_t)values contains:
{
  propertyCopy = property;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [(HDSQLiteContainsPredicate *)v8 _arrayFromValues:propertyCopy];

  if ([v9 count] == 1)
  {
    if (values)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    firstObject = [v9 firstObject];
    v12 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 value:firstObject comparisonType:v10];

    v7 = firstObject;
  }

  else
  {
    v12 = [[HDSQLiteContainsPredicate alloc] initWithProperty:v7 values:v9 contains:values];
  }

  return v12;
}

+ (id)_arrayFromValues:(uint64_t)values
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = v2;
LABEL_5:
    v4 = allObjects;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = [v2 allObjects];
    goto LABEL_5;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_values;
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

        HDSQLiteBindFoundationValueToStatement(statement, *index, *(*(&v12 + 1) + 8 * v10));
        ++*index;
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = HDSQLiteContainsPredicate;
  if (-[HDSQLitePropertyPredicate isEqual:](&v13, sel_isEqual_, equalCopy) && (v5 = -[HDSQLiteContainsPredicate contains](self, "contains"), v5 == [equalCopy contains]))
  {
    values = [(HDSQLiteContainsPredicate *)self values];
    values2 = [equalCopy values];
    if (values == values2)
    {
      v6 = 1;
    }

    else
    {
      values3 = [equalCopy values];
      if (values3)
      {
        values4 = [(HDSQLiteContainsPredicate *)self values];
        values5 = [equalCopy values];
        v6 = [values4 isEqual:values5];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  property = [(HDSQLitePropertyPredicate *)self property];
  v7 = [(objc_class *)class disambiguatedSQLForProperty:property];
  [v5 appendString:v7];

  if (self->_contains)
  {
    v8 = CFSTR(" IN (");
  }

  else
  {
    v8 = CFSTR(" NOT IN (");
  }

  [v5 appendString:v8];
  v9 = [(NSArray *)self->_values count];
  if (v9)
  {
    v10 = v9;
    [v5 appendString:@"?"];
    v11 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        [v5 appendString:{@", ?"}];
        --v11;
      }

      while (v11);
    }
  }

  [v5 appendString:@""]);
  [v5 appendString:@""]);

  return v5;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = HDSQLiteContainsPredicate;
  if ([(HDSQLitePropertyPredicate *)&v9 isCompatibleWithPredicate:predicateCopy])
  {
    v5 = predicateCopy;
    if (self->_contains == *(v5 + 16))
    {
      v6 = [(NSArray *)self->_values count];
      v7 = v6 == [v5[3] count];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [(NSArray *)self->_values hk_map:&__block_literal_global_6];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = MEMORY[0x277CCACA8];
  property = [(HDSQLitePropertyPredicate *)self property];
  v7 = property;
  if (self->_contains)
  {
    v8 = "";
  }

  else
  {
    v8 = "NOT ";
  }

  v9 = [v5 stringWithFormat:@"<%@ %sIN (%@)>", property, v8, v4];

  return v9;
}

@end