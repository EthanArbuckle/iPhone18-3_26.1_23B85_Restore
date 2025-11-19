@interface HDSQLiteRawPredicate
+ (id)predicateWithSQL:(id)a3 overProperties:(id)a4 values:(id)a5;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDSQLiteRawPredicate

+ (id)predicateWithSQL:(id)a3 overProperties:(id)a4 values:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HDSQLiteRawPredicate predicateWithSQL:a2 overProperties:a1 values:?];
  }

  v12 = objc_opt_new();
  v13 = [v9 copy];
  v14 = v12[1];
  v12[1] = v13;

  v15 = [v10 copy];
  v16 = v12[2];
  v12[2] = v15;

  v17 = [v11 copy];
  v18 = v12[3];
  v12[3] = v17;

  return v12;
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

        _BindValueToStatement(*(*(&v12 + 1) + 8 * v10++), a3, a4);
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_properties count])
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_properties;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(objc_class *)a3 joinClausesForProperty:*(*(&v14 + 1) + 8 * i), v14];
          [v5 unionSet:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSQLiteRawPredicate;
  if (![(HDSQLitePredicate *)&v9 isCompatibleWithPredicate:v4])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSString *)self->_sql isEqualToString:v4[1]])
  {
    goto LABEL_7;
  }

  properties = self->_properties;
  v6 = v4[2];
  if (properties == v6)
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (v6)
  {
    v7 = [(NSArray *)properties isEqual:?];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = self->_sql;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_values;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSString *)v3 rangeOfString:@"?"];
        if (v11)
        {
          v12 = v10;
          v13 = v11;
          v14 = [v9 description];
          v15 = [(NSString *)v3 stringByReplacingCharactersInRange:v12 withString:v13, v14];

          v3 = v15;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [(NSArray *)self->_properties componentsJoinedByString:@", "];
  v18 = [v16 stringWithFormat:@"<SQL: '%@>' joining over (%@)", v3, v17, v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HDSQLiteRawPredicate;
  v3 = [(HDSQLitePredicate *)&v7 hash];
  v4 = v3 + [(NSString *)self->_sql hash];
  v5 = [(NSArray *)self->_values hash];
  return v4 + v5 + [(NSArray *)self->_properties hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v13.receiver = self;
  v13.super_class = HDSQLiteRawPredicate;
  if (![(HDSQLitePredicate *)&v13 isEqual:v4])
  {
    goto LABEL_12;
  }

  sql = self->_sql;
  v6 = v4[1];
  if (sql != v6 && (!v6 || ![(NSString *)sql isEqual:?]))
  {
    goto LABEL_12;
  }

  properties = self->_properties;
  v8 = v4[2];
  if (properties != v8 && (!v8 || ![(NSArray *)properties isEqual:?]))
  {
    goto LABEL_12;
  }

  values = self->_values;
  v10 = v4[3];
  if (values == v10)
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v10)
  {
    v11 = [(NSArray *)values isEqual:?];
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

LABEL_13:

  return v11;
}

+ (void)predicateWithSQL:(uint64_t)a1 overProperties:(uint64_t)a2 values:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSQLitePredicate.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"sql != nil"}];
}

@end