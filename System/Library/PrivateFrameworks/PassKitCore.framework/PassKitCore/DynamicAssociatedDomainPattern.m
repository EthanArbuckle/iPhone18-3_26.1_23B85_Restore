@interface DynamicAssociatedDomainPattern
+ (id)_objectsWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForDomainPID:(int64_t)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)a3;
+ (id)patternsForDomainPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePatternsForDomainPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertPatterns:(id)a3 forDomainPID:(int64_t)a4 inDatabase:(id)a5;
- (DynamicAssociatedDomainPattern)initWithPattern:(id)a3 forDomainPID:(int64_t)a4 inDatabase:(id)a5;
@end

@implementation DynamicAssociatedDomainPattern

- (DynamicAssociatedDomainPattern)initWithPattern:(id)a3 forDomainPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesFor:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

+ (void)insertPatterns:(id)a3 forDomainPID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (id)patternsForDomainPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForDomainPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _objectsWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)_objectsWithQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = [a1 _propertySetters];
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v6 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100132248;
  v13[3] = &unk_10083C998;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  [v5 enumeratePersistentIDsAndProperties:v8 usingBlock:v13];

  if ([v9 count])
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)deletePatternsForDomainPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForDomainPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForDomainPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 uri];

  [v4 setObjectOrNull:v5 forKey:@"b"];

  return v4;
}

+ (id)_propertySetters
{
  v4 = @"b";
  v5 = &stru_100847C70;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end