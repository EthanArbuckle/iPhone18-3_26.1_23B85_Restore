@interface CategoryVisualizationMagnitude
+ (id)_magnitudesMatchingQuery:(id)a3;
+ (id)_predicateForBucket:(int64_t)a3;
+ (id)_predicateForPassUniqueID:(id)a3 bucket:(int64_t)a4;
+ (id)_propertySetters;
+ (id)_propertyValuesForMagnitude:(id)a3;
+ (id)anyInDatabase:(id)a3 withPID:(id)a4;
+ (id)insertMagnitude:(id)a3 inDatabase:(id)a4;
+ (id)insertOrUpdateMagnitude:(id)a3 inDatabase:(id)a4;
+ (id)magnitudesForPassUniqueIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteAnyInDatabase:(id)a3 forPassUniqueID:(id)a4;
- (CategoryVisualizationMagnitude)initWithMagnitude:(id)a3 inDatabase:(id)a4;
- (id)magnitude;
- (void)updateWithMagnitude:(id)a3;
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

- (CategoryVisualizationMagnitude)initWithMagnitude:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _propertyValuesForMagnitude:v7];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)anyInDatabase:(id)a3 withPID:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)magnitudesForPassUniqueIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassUniqueID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _magnitudesMatchingQuery:v8];

  return v9;
}

+ (id)insertMagnitude:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMagnitude:v7 inDatabase:v6];

  return v8;
}

+ (id)insertOrUpdateMagnitude:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 passUniqueIdentifier];
  v9 = [a1 _predicateForPassUniqueID:v8 bucket:{objc_msgSend(v7, "bucket")}];

  v10 = [a1 anyInDatabase:v6 predicate:v9];
  if (v10)
  {
    v11 = v10;
    [v10 updateWithMagnitude:v7];
  }

  else
  {
    v11 = [a1 insertMagnitude:v7 inDatabase:v6];
  }

  return v11;
}

+ (void)deleteAnyInDatabase:(id)a3 forPassUniqueID:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPassUniqueID:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

- (void)updateWithMagnitude:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForMagnitude:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (id)magnitude
{
  v3 = objc_alloc_init(PKCategoryVisualizationMagnitude);
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052A54;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_magnitudesMatchingQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052BDC;
  v12[3] = &unk_10083C998;
  v14 = v6;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

+ (id)_predicateForPassUniqueID:(id)a3 bucket:(int64_t)a4
{
  v6 = [a1 _predicateForPassUniqueID:a3];
  v7 = [a1 _predicateForBucket:a4];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForBucket:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesForMagnitude:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 passUniqueIdentifier];
  [v4 setObjectOrNull:v5 forKey:@"a"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 bucket]);
  [v4 setObjectOrNull:v6 forKey:@"b"];

  [v3 magnitude];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:v8];
  [v4 setObjectOrNull:v9 forKey:@"c"];

  v10 = [v4 copy];

  return v10;
}

@end