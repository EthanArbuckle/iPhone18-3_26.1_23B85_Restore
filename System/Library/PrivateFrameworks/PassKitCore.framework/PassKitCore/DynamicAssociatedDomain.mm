@interface DynamicAssociatedDomain
+ (id)_objectsWithQuery:(id)query inDatabase:(id)database;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)for;
+ (id)associatedDomainsInDatabase:(id)database;
+ (void)deleteAssociatedDomainsInDatabase:(id)database;
+ (void)insertAssociatedDomains:(id)domains inDatabase:(id)database;
- (DynamicAssociatedDomain)initWithDomain:(id)domain inDatabase:(id)database;
@end

@implementation DynamicAssociatedDomain

- (DynamicAssociatedDomain)initWithDomain:(id)domain inDatabase:(id)database
{
  databaseCopy = database;
  domainCopy = domain;
  v8 = [objc_opt_class() _propertyValuesFor:domainCopy];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)associatedDomainsInDatabase:(id)database
{
  databaseCopy = database;
  v5 = [self queryWithDatabase:databaseCopy predicate:0];
  v6 = [self _objectsWithQuery:v5 inDatabase:databaseCopy];

  return v6;
}

+ (void)insertAssociatedDomains:(id)domains inDatabase:(id)database
{
  domainsCopy = domains;
  databaseCopy = database;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [domainsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(domainsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [[DynamicAssociatedDomain alloc] initWithDomain:v11 inDatabase:databaseCopy];
        patterns = [v11 patterns];
        [DynamicAssociatedDomainPattern insertPatterns:patterns forDomainPID:[(SQLiteEntity *)v12 persistentID] inDatabase:databaseCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [domainsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (void)deleteAssociatedDomainsInDatabase:(id)database
{
  databaseCopy = database;
  v5 = [self queryWithDatabase:databaseCopy predicate:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001327F8;
  v7[3] = &unk_10083EF38;
  v8 = databaseCopy;
  v6 = databaseCopy;
  [v5 enumeratePersistentIDsUsingBlock:v7];
  [v5 deleteAllEntities];
}

+ (id)_objectsWithQuery:(id)query inDatabase:(id)database
{
  databaseCopy = database;
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v9 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySetters allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100132964;
  v19 = &unk_10083BF08;
  selfCopy = self;
  v20 = _propertySetters;
  v21 = databaseCopy;
  v11 = v9;
  v22 = v11;
  v12 = databaseCopy;
  v13 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:&v16];

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

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  host = [forCopy host];

  [v4 setObjectOrNull:host forKey:@"a"];

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