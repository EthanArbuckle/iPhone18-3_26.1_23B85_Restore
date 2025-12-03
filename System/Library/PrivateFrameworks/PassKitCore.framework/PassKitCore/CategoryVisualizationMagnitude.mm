@interface CategoryVisualizationMagnitude
+ (id)_magnitudesMatchingQuery:(id)query;
+ (id)_predicateForBucket:(int64_t)bucket;
+ (id)_predicateForPassUniqueID:(id)d bucket:(int64_t)bucket;
+ (id)_propertySetters;
+ (id)_propertyValuesForMagnitude:(id)magnitude;
+ (id)anyInDatabase:(id)database withPID:(id)d;
+ (id)insertMagnitude:(id)magnitude inDatabase:(id)database;
+ (id)insertOrUpdateMagnitude:(id)magnitude inDatabase:(id)database;
+ (id)magnitudesForPassUniqueIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteAnyInDatabase:(id)database forPassUniqueID:(id)d;
- (CategoryVisualizationMagnitude)initWithMagnitude:(id)magnitude inDatabase:(id)database;
- (id)magnitude;
- (void)updateWithMagnitude:(id)magnitude;
@end

@implementation CategoryVisualizationMagnitude

+ (id)_propertySetters
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_10083F2E8;
  v5[1] = &stru_10083F308;
  v4[2] = @"c";
  v5[2] = &stru_10083F328;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (CategoryVisualizationMagnitude)initWithMagnitude:(id)magnitude inDatabase:(id)database
{
  databaseCopy = database;
  magnitudeCopy = magnitude;
  v8 = [objc_opt_class() _propertyValuesForMagnitude:magnitudeCopy];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)anyInDatabase:(id)database withPID:(id)d
{
  databaseCopy = database;
  v7 = [self _predicateForPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)magnitudesForPassUniqueIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassUniqueID:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _magnitudesMatchingQuery:v8];

  return v9;
}

+ (id)insertMagnitude:(id)magnitude inDatabase:(id)database
{
  databaseCopy = database;
  magnitudeCopy = magnitude;
  v8 = [[self alloc] initWithMagnitude:magnitudeCopy inDatabase:databaseCopy];

  return v8;
}

+ (id)insertOrUpdateMagnitude:(id)magnitude inDatabase:(id)database
{
  databaseCopy = database;
  magnitudeCopy = magnitude;
  passUniqueIdentifier = [magnitudeCopy passUniqueIdentifier];
  v9 = [self _predicateForPassUniqueID:passUniqueIdentifier bucket:{objc_msgSend(magnitudeCopy, "bucket")}];

  v10 = [self anyInDatabase:databaseCopy predicate:v9];
  if (v10)
  {
    v11 = v10;
    [v10 updateWithMagnitude:magnitudeCopy];
  }

  else
  {
    v11 = [self insertMagnitude:magnitudeCopy inDatabase:databaseCopy];
  }

  return v11;
}

+ (void)deleteAnyInDatabase:(id)database forPassUniqueID:(id)d
{
  databaseCopy = database;
  v7 = [self _predicateForPassUniqueID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

- (void)updateWithMagnitude:(id)magnitude
{
  magnitudeCopy = magnitude;
  v5 = [objc_opt_class() _propertyValuesForMagnitude:magnitudeCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (id)magnitude
{
  v3 = objc_alloc_init(PKCategoryVisualizationMagnitude);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052A54;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySetters;
  v6 = v3;
  v13 = v6;
  v7 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_magnitudesMatchingQuery:(id)query
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySetters allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052BDC;
  v12[3] = &unk_10083C998;
  v14 = v6;
  selfCopy = self;
  v13 = _propertySetters;
  v8 = v6;
  v9 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

+ (id)_predicateForPassUniqueID:(id)d bucket:(int64_t)bucket
{
  v6 = [self _predicateForPassUniqueID:d];
  v7 = [self _predicateForBucket:bucket];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForBucket:(int64_t)bucket
{
  v3 = [NSNumber numberWithInteger:bucket];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForMagnitude:(id)magnitude
{
  magnitudeCopy = magnitude;
  v4 = objc_alloc_init(NSMutableDictionary);
  passUniqueIdentifier = [magnitudeCopy passUniqueIdentifier];
  [v4 setObjectOrNull:passUniqueIdentifier forKey:@"a"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [magnitudeCopy bucket]);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  [magnitudeCopy magnitude];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:v8];
  [v4 setObjectOrNull:v9 forKey:@"c"];

  v10 = [v4 copy];

  return v10;
}

@end