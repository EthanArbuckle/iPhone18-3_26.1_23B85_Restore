@interface HDDataExternalSyncIdentifierEntityPredicate
+ (__CFString)_propertyForKey:(uint64_t)a1;
+ (id)_valueClassForKey:(uint64_t)a1;
+ (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4;
+ (id)predicateWithMetadataKey:(id)a3 exists:(BOOL)a4;
+ (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5;
- (NSString)description;
- (id)SQLForEntityClass:(Class)a3;
@end

@implementation HDDataExternalSyncIdentifierEntityPredicate

+ (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = v7;
  v10 = v6;
  v11 = objc_opt_self();
  v12 = [(HDDataExternalSyncIdentifierEntityPredicate *)v11 _propertyForKey:v9];
  if (v12)
  {
    [(HDDataExternalSyncIdentifierEntityPredicate *)v11 _valueClassForKey:v9];
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    if ([v14 count])
    {
      [MEMORY[0x277D10B28] containsPredicateWithProperty:v12 values:v14];
    }

    else
    {
      [MEMORY[0x277D10B70] falsePredicate];
    }
    v20 = ;

    v10 = v24;
  }

  else
  {
    v20 = [MEMORY[0x277D10B70] falsePredicate];
  }

  v21 = v8[1];
  v8[1] = v20;

  *(v8 + 16) = 0;
  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  v11 = v9;
  v12 = v8;
  v13 = objc_opt_self();
  v14 = [(HDDataExternalSyncIdentifierEntityPredicate *)v13 _propertyForKey:v11];
  if (v14)
  {
    if (v12 || a5 != 5)
    {
      [(HDDataExternalSyncIdentifierEntityPredicate *)v13 _valueClassForKey:v11];
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x277D10B18] predicateWithProperty:v14 value:v12 comparisonType:HDSQLiteComparisonTypeForPredicateOperator()];
      }

      else
      {
        [MEMORY[0x277D10B70] BOOLeanPredicateWithValue:a5 == 5];
      }
      v15 = ;
    }

    else
    {
      v15 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:v14];
    }
  }

  else
  {
    v15 = [MEMORY[0x277D10B70] falsePredicate];
  }

  v16 = v15;

  v17 = v10[1];
  v10[1] = v16;

  if (v12)
  {
    v18 = a5 == 5;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  *(v10 + 16) = v19;

  return v10;
}

+ (id)predicateWithMetadataKey:(id)a3 exists:(BOOL)a4
{
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = 0;

  *(v5 + 16) = !a4;

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = +[(HDSQLiteSchemaEntity *)HDDataExternalSyncIdentifierEntity];
  v6 = [(objc_class *)a3 entityClassForEnumeration];
  v7 = [v6 disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
  v8 = [(HDSQLiteSchemaEntity *)HDDataExternalSyncIdentifierEntity disambiguatedSQLForProperty:@"object_id"];
  v9 = [(HDSQLitePredicate *)self->_valuePredicate SQLForEntityClass:objc_opt_class()];
  v10 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v11 = v10;
  if (!self->_valuePredicate)
  {
    goto LABEL_15;
  }

  [v10 appendFormat:@"EXISTS (SELECT 1 FROM %@ WHERE (%@=%@ AND %@))", v5, v7, v8, v9, 0];
  if (self->_matchObjectsWithoutKey)
  {
    [v11 appendString:@" OR "];
  }

  if (!self->_valuePredicate || self->_matchObjectsWithoutKey)
  {
LABEL_15:
    if (self->_matchObjectsWithoutKey)
    {
      v12 = @"NOT EXISTS";
    }

    else
    {
      v12 = @"EXISTS";
    }

    [v11 appendFormat:@"%@ (SELECT 1 FROM %@ WHERE (%@=%@))", v12, v5, v7, v8, 0];
  }

  [v11 appendString:@""]);

  return v11;
}

- (NSString)description
{
  valuePredicate = self->_valuePredicate;
  if (valuePredicate)
  {
    if (self->_matchObjectsWithoutKey)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(HDSQLitePredicate *)valuePredicate description];
      v6 = [v4 stringWithFormat:@"does not exist OR %@", v5];

      goto LABEL_10;
    }

    v8 = [(HDSQLitePredicate *)valuePredicate description];
  }

  else
  {
    if (self->_matchObjectsWithoutKey)
    {
      v7 = @"does not exist";
    }

    else
    {
      v7 = @"exists";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];
  }

  v6 = v8;
LABEL_10:
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %@>", *MEMORY[0x277CCC520], v6];

  return v9;
}

+ (__CFString)_propertyForKey:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 isEqualToString:*MEMORY[0x277CCC520]])
  {
    v3 = @"sid";
  }

  else if ([v2 isEqualToString:*MEMORY[0x277CCC528]])
  {
    v3 = @"version";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_valueClassForKey:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 isEqualToString:*MEMORY[0x277CCC520]])
  {
    v3 = 0x277CCACA8;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_class();
    goto LABEL_7;
  }

  if ([v2 isEqualToString:*MEMORY[0x277CCC528]])
  {
    v3 = 0x277CCABB0;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end