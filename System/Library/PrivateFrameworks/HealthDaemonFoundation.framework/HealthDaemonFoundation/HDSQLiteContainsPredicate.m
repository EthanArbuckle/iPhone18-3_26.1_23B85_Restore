@interface HDSQLiteContainsPredicate
+ (HDSQLiteContainsPredicate)_containsPredicateWithProperty:(void *)a3 values:(uint64_t)a4 contains:;
+ (id)_arrayFromValues:(uint64_t)a1;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDSQLiteContainsPredicate)initWithProperty:(id)a3 values:(id)a4 contains:(BOOL)a5;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDSQLiteContainsPredicate

- (HDSQLiteContainsPredicate)initWithProperty:(id)a3 values:(id)a4 contains:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HDSQLiteContainsPredicate;
  v10 = [(HDSQLiteContainsPredicate *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    property = v10->super._property;
    v10->super._property = v11;

    v13 = [v9 copy];
    values = v10->_values;
    v10->_values = v13;

    v10->_contains = a5;
  }

  return v10;
}

+ (HDSQLiteContainsPredicate)_containsPredicateWithProperty:(void *)a3 values:(uint64_t)a4 contains:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [(HDSQLiteContainsPredicate *)v8 _arrayFromValues:v6];

  if ([v9 count] == 1)
  {
    if (a4)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [v9 firstObject];
    v12 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 value:v11 comparisonType:v10];

    v7 = v11;
  }

  else
  {
    v12 = [[HDSQLiteContainsPredicate alloc] initWithProperty:v7 values:v9 contains:a4];
  }

  return v12;
}

+ (id)_arrayFromValues:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 allObjects];
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

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
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

        HDSQLiteBindFoundationValueToStatement(a3, *a4, *(*(&v12 + 1) + 8 * v10));
        ++*a4;
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDSQLiteContainsPredicate;
  if (-[HDSQLitePropertyPredicate isEqual:](&v13, sel_isEqual_, v4) && (v5 = -[HDSQLiteContainsPredicate contains](self, "contains"), v5 == [v4 contains]))
  {
    v7 = [(HDSQLiteContainsPredicate *)self values];
    v8 = [v4 values];
    if (v7 == v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [v4 values];
      if (v9)
      {
        v10 = [(HDSQLiteContainsPredicate *)self values];
        v11 = [v4 values];
        v6 = [v10 isEqual:v11];
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

- (id)SQLForEntityClass:(Class)a3
{
  v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v6 = [(HDSQLitePropertyPredicate *)self property];
  v7 = [(objc_class *)a3 disambiguatedSQLForProperty:v6];
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

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSQLiteContainsPredicate;
  if ([(HDSQLitePropertyPredicate *)&v9 isCompatibleWithPredicate:v4])
  {
    v5 = v4;
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
  v6 = [(HDSQLitePropertyPredicate *)self property];
  v7 = v6;
  if (self->_contains)
  {
    v8 = "";
  }

  else
  {
    v8 = "NOT ";
  }

  v9 = [v5 stringWithFormat:@"<%@ %sIN (%@)>", v6, v8, v4];

  return v9;
}

@end