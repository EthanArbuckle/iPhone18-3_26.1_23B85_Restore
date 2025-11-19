@interface Location
+ (BOOL)hasLocationsInDatabase:(id)a3 forPassPID:(unint64_t)a4;
+ (id)_locationsInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)_predicateForLocationSource:(id)a3;
+ (id)_predicateForLocationSourcePID:(int64_t)a3;
+ (id)_predicateForPass:(id)a3;
+ (id)_predicateForPassPID:(int64_t)a3;
+ (id)_predicateForSourceType:(int)a3;
+ (id)_propertySettersForLocation;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)foreignKeyColumnForTable:(id)a3;
+ (id)locationsInDatabase:(id)a3 forPassPID:(unint64_t)a4;
+ (id)locationsInDatabase:(id)a3 forPassPID:(unint64_t)a4 withSourceType:(int)a5;
+ (id)queryWithDatabase:(id)a3 locationSourcePID:(unint64_t)a4;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteEntitiesForPass:(id)a3 inDatabase:(id)a4;
+ (void)insertLocations:(id)a3 forSource:(id)a4 inDatabase:(id)a5;
- (Location)initWithLocation:(id)a3 source:(id)a4 inDatabase:(id)a5;
@end

@implementation Location

+ (id)_propertySettersForLocation
{
  v4[0] = @"latitude";
  v4[1] = @"longitude";
  v5[0] = &stru_100846860;
  v5[1] = &stru_100846880;
  v4[2] = @"max_distance";
  v4[3] = @"altitude";
  v5[2] = &stru_1008468A0;
  v5[3] = &stru_1008468C0;
  v4[4] = @"name";
  v4[5] = @"relevant_text";
  v5[4] = &stru_1008468E0;
  v5[5] = &stru_100846900;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"location_source_pid";
  }

  if (objc_opt_class() == a3)
  {
    return @"pass_location_source.pass_pid";
  }

  return 0;
}

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (([v6 isEqualToString:@"pass.pid"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"location_source.type"))
  {
    [v5 addObject:@"JOIN location_source ON location.location_source_pid = location_source.pid"];
    [v5 addObject:@"LEFT JOIN pass_location_source ON pass_location_source.location_source_pid = location_source.pid"];
    [v5 addObject:@"JOIN pass ON pass_location_source.pass_pid = pass.pid"];
  }

  if ([v6 isEqualToString:@"pass_location_source.pass_pid"])
  {
    [v5 addObject:@"JOIN location_source ON location.location_source_pid = location_source.pid"];
    [v5 addObject:@"LEFT JOIN pass_location_source ON pass_location_source.location_source_pid = location_source.pid"];
  }
}

+ (id)foreignKeyColumnForTable:(id)a3
{
  if ([a3 isEqualToString:@"location_index"])
  {
    return @"location_pid";
  }

  else
  {
    return 0;
  }
}

- (Location)initWithLocation:(id)a3 source:(id)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber alloc];
  [v7 latitude];
  v12 = [v11 initWithDouble:?];
  v13 = [NSNumber alloc];
  [v7 longitude];
  v14 = [v13 initWithDouble:?];
  [v10 setObject:v12 forKey:@"latitude"];
  [v10 setObject:v14 forKey:@"longitude"];
  [v7 maxDistance];
  if (v15 > 0.0)
  {
    v16 = [NSNumber numberWithDouble:?];
    [v10 setObject:v16 forKey:@"max_distance"];
  }

  if ([v7 hasAltitude])
  {
    v17 = [NSNumber alloc];
    [v7 altitude];
    v18 = [v17 initWithDouble:?];
    [v10 setObject:v18 forKey:@"altitude"];
  }

  v19 = [v7 name];
  if (v19)
  {
    [v10 setObject:v19 forKey:@"name"];
  }

  v20 = [v7 relevantText];
  if (v20)
  {
    [v10 setObject:v20 forKey:@"relevant_text"];
  }

  v21 = [NSNumber alloc];
  v22 = [v9 persistentID];

  v23 = [v21 initWithLongLong:v22];
  [v10 setObject:v23 forKey:@"location_source_pid"];
  v28.receiver = self;
  v28.super_class = Location;
  v24 = [(SQLiteEntity *)&v28 initWithPropertyValues:v10 inDatabase:v8];
  v25 = [LocationIndex insertIndexedLocationWithLatitude:v12 longitude:v14 forLocation:v24 database:v8];

  return v24;
}

+ (void)insertLocations:(id)a3 forSource:(id)a4 inDatabase:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100106650;
  v11[3] = &unk_100843068;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  sub_1005D4424(v8, v11);
}

+ (id)_locationsInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [a1 _propertySettersForLocation];
  v10 = [(SQLiteEntity *)Location queryWithDatabase:v7 predicate:v6];

  v11 = [v9 allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001068C4;
  v17[3] = &unk_10083C998;
  v20 = a1;
  v18 = v9;
  v12 = v8;
  v19 = v12;
  v13 = v9;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (id)_predicateForPassPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass.pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPass:(id)a3
{
  v4 = [a3 persistentID];

  return [a1 _predicateForPassPID:v4];
}

+ (BOOL)hasLocationsInDatabase:(id)a3 forPassPID:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPassPID:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8 != 0;
}

+ (id)locationsInDatabase:(id)a3 forPassPID:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPassPID:a4];
  v8 = [a1 _locationsInDatabase:v6 matchingPredicate:v7];

  return v8;
}

+ (id)_predicateForLocationSourcePID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"location_source_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForLocationSource:(id)a3
{
  v4 = [a3 persistentID];

  return [a1 _predicateForLocationSourcePID:v4];
}

+ (id)_predicateForSourceType:(int)a3
{
  v3 = [NSNumber numberWithInt:*&a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"location_source.type" equalToValue:v3];

  return v4;
}

+ (id)locationsInDatabase:(id)a3 forPassPID:(unint64_t)a4 withSourceType:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = [a1 _predicateForPassPID:a4];
  v15[0] = v9;
  v10 = [a1 _predicateForSourceType:v5];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v13 = [a1 _locationsInDatabase:v8 matchingPredicate:v12];

  return v13;
}

+ (id)queryWithDatabase:(id)a3 locationSourcePID:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _predicateForLocationSourcePID:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  return v8;
}

+ (void)deleteEntitiesForPass:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPass:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

@end