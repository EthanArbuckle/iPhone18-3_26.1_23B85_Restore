@interface DynamicAssociatedDomain
+ (id)_objectsWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)a3;
+ (id)associatedDomainsInDatabase:(id)a3;
+ (void)deleteAssociatedDomainsInDatabase:(id)a3;
+ (void)insertAssociatedDomains:(id)a3 inDatabase:(id)a4;
- (DynamicAssociatedDomain)initWithDomain:(id)a3 inDatabase:(id)a4;
@end

@implementation DynamicAssociatedDomain

- (DynamicAssociatedDomain)initWithDomain:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _propertyValuesFor:v7];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)associatedDomainsInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 queryWithDatabase:v4 predicate:0];
  v6 = [a1 _objectsWithQuery:v5 inDatabase:v4];

  return v6;
}

+ (void)insertAssociatedDomains:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [[DynamicAssociatedDomain alloc] initWithDomain:v11 inDatabase:v6];
        v13 = [v11 patterns];
        [DynamicAssociatedDomainPattern insertPatterns:v13 forDomainPID:[(SQLiteEntity *)v12 persistentID] inDatabase:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (void)deleteAssociatedDomainsInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 queryWithDatabase:v4 predicate:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001327F8;
  v7[3] = &unk_10083EF38;
  v8 = v4;
  v6 = v4;
  [v5 enumeratePersistentIDsUsingBlock:v7];
  [v5 deleteAllEntities];
}

+ (id)_objectsWithQuery:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _propertySetters];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = [v8 allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100132964;
  v19 = &unk_10083BF08;
  v23 = a1;
  v20 = v8;
  v21 = v6;
  v11 = v9;
  v22 = v11;
  v12 = v6;
  v13 = v8;
  [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:&v16];

  if ([v11 count])
  {
    v14 = [v11 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 host];

  [v4 setObjectOrNull:v5 forKey:@"a"];

  return v4;
}

+ (id)_propertySetters
{
  v4 = @"a";
  v5 = &stru_100847CB0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end