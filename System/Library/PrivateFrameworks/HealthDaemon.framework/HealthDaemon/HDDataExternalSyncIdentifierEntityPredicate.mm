@interface HDDataExternalSyncIdentifierEntityPredicate
+ (__CFString)_propertyForKey:(uint64_t)key;
+ (id)_valueClassForKey:(uint64_t)key;
+ (id)predicateWithMetadataKey:(id)key allowedValues:(id)values;
+ (id)predicateWithMetadataKey:(id)key exists:(BOOL)exists;
+ (id)predicateWithMetadataKey:(id)key value:(id)value operatorType:(unint64_t)type;
- (NSString)description;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation HDDataExternalSyncIdentifierEntityPredicate

+ (id)predicateWithMetadataKey:(id)key allowedValues:(id)values
{
  v30 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  keyCopy = key;
  v8 = objc_alloc_init(self);
  v9 = keyCopy;
  v10 = valuesCopy;
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
    falsePredicate = ;

    v10 = v24;
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  v21 = v8[1];
  v8[1] = falsePredicate;

  *(v8 + 16) = 0;
  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)predicateWithMetadataKey:(id)key value:(id)value operatorType:(unint64_t)type
{
  valueCopy = value;
  keyCopy = key;
  v10 = objc_alloc_init(self);
  v11 = keyCopy;
  v12 = valueCopy;
  v13 = objc_opt_self();
  v14 = [(HDDataExternalSyncIdentifierEntityPredicate *)v13 _propertyForKey:v11];
  if (v14)
  {
    if (v12 || type != 5)
    {
      [(HDDataExternalSyncIdentifierEntityPredicate *)v13 _valueClassForKey:v11];
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x277D10B18] predicateWithProperty:v14 value:v12 comparisonType:HDSQLiteComparisonTypeForPredicateOperator()];
      }

      else
      {
        [MEMORY[0x277D10B70] BOOLeanPredicateWithValue:type == 5];
      }
      falsePredicate = ;
    }

    else
    {
      falsePredicate = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:v14];
    }
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  v16 = falsePredicate;

  v17 = v10[1];
  v10[1] = v16;

  if (v12)
  {
    v18 = type == 5;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  *(v10 + 16) = v19;

  return v10;
}

+ (id)predicateWithMetadataKey:(id)key exists:(BOOL)exists
{
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = 0;

  *(v5 + 16) = !exists;

  return v5;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = +[(HDSQLiteSchemaEntity *)HDDataExternalSyncIdentifierEntity];
  entityClassForEnumeration = [(objc_class *)class entityClassForEnumeration];
  v7 = [entityClassForEnumeration disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
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

+ (__CFString)_propertyForKey:(uint64_t)key
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

+ (id)_valueClassForKey:(uint64_t)key
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