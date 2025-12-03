@interface DynamicAssociatedDomainPattern
+ (id)_objectsWithQuery:(id)query inDatabase:(id)database;
+ (id)_predicateForDomainPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)for;
+ (id)patternsForDomainPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePatternsForDomainPID:(int64_t)d inDatabase:(id)database;
+ (void)insertPatterns:(id)patterns forDomainPID:(int64_t)d inDatabase:(id)database;
- (DynamicAssociatedDomainPattern)initWithPattern:(id)pattern forDomainPID:(int64_t)d inDatabase:(id)database;
@end

@implementation DynamicAssociatedDomainPattern

- (DynamicAssociatedDomainPattern)initWithPattern:(id)pattern forDomainPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  patternCopy = pattern;
  v10 = [objc_opt_class() _propertyValuesFor:patternCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

+ (void)insertPatterns:(id)patterns forDomainPID:(int64_t)d inDatabase:(id)database
{
  patternsCopy = patterns;
  databaseCopy = database;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [patternsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(patternsCopy);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [patternsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (id)patternsForDomainPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForDomainPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _objectsWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)_objectsWithQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v7 = objc_alloc_init(NSMutableArray);
  allKeys = [_propertySetters allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100132248;
  v13[3] = &unk_10083C998;
  selfCopy = self;
  v14 = _propertySetters;
  v9 = v7;
  v15 = v9;
  v10 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v13];

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

+ (void)deletePatternsForDomainPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForDomainPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForDomainPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [forCopy uri];

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