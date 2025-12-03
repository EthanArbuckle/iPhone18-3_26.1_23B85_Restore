@interface Location
+ (BOOL)hasLocationsInDatabase:(id)database forPassPID:(unint64_t)d;
+ (id)_locationsInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)_predicateForLocationSource:(id)source;
+ (id)_predicateForLocationSourcePID:(int64_t)d;
+ (id)_predicateForPass:(id)pass;
+ (id)_predicateForPassPID:(int64_t)d;
+ (id)_predicateForSourceType:(int)type;
+ (id)_propertySettersForLocation;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)foreignKeyColumnForTable:(id)table;
+ (id)locationsInDatabase:(id)database forPassPID:(unint64_t)d;
+ (id)locationsInDatabase:(id)database forPassPID:(unint64_t)d withSourceType:(int)type;
+ (id)queryWithDatabase:(id)database locationSourcePID:(unint64_t)d;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteEntitiesForPass:(id)pass inDatabase:(id)database;
+ (void)insertLocations:(id)locations forSource:(id)source inDatabase:(id)database;
- (Location)initWithLocation:(id)location source:(id)source inDatabase:(id)database;
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

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"location_source_pid";
  }

  if (objc_opt_class() == class)
  {
    return @"pass_location_source.pass_pid";
  }

  return 0;
}

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  if (([propertyCopy isEqualToString:@"pass.pid"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"location_source.type"))
  {
    [joinsCopy addObject:@"JOIN location_source ON location.location_source_pid = location_source.pid"];
    [joinsCopy addObject:@"LEFT JOIN pass_location_source ON pass_location_source.location_source_pid = location_source.pid"];
    [joinsCopy addObject:@"JOIN pass ON pass_location_source.pass_pid = pass.pid"];
  }

  if ([propertyCopy isEqualToString:@"pass_location_source.pass_pid"])
  {
    [joinsCopy addObject:@"JOIN location_source ON location.location_source_pid = location_source.pid"];
    [joinsCopy addObject:@"LEFT JOIN pass_location_source ON pass_location_source.location_source_pid = location_source.pid"];
  }
}

+ (id)foreignKeyColumnForTable:(id)table
{
  if ([table isEqualToString:@"location_index"])
  {
    return @"location_pid";
  }

  else
  {
    return 0;
  }
}

- (Location)initWithLocation:(id)location source:(id)source inDatabase:(id)database
{
  locationCopy = location;
  databaseCopy = database;
  sourceCopy = source;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber alloc];
  [locationCopy latitude];
  v12 = [v11 initWithDouble:?];
  v13 = [NSNumber alloc];
  [locationCopy longitude];
  v14 = [v13 initWithDouble:?];
  [v10 setObject:v12 forKey:@"latitude"];
  [v10 setObject:v14 forKey:@"longitude"];
  [locationCopy maxDistance];
  if (v15 > 0.0)
  {
    v16 = [NSNumber numberWithDouble:?];
    [v10 setObject:v16 forKey:@"max_distance"];
  }

  if ([locationCopy hasAltitude])
  {
    v17 = [NSNumber alloc];
    [locationCopy altitude];
    v18 = [v17 initWithDouble:?];
    [v10 setObject:v18 forKey:@"altitude"];
  }

  name = [locationCopy name];
  if (name)
  {
    [v10 setObject:name forKey:@"name"];
  }

  relevantText = [locationCopy relevantText];
  if (relevantText)
  {
    [v10 setObject:relevantText forKey:@"relevant_text"];
  }

  v21 = [NSNumber alloc];
  persistentID = [sourceCopy persistentID];

  v23 = [v21 initWithLongLong:persistentID];
  [v10 setObject:v23 forKey:@"location_source_pid"];
  v28.receiver = self;
  v28.super_class = Location;
  v24 = [(SQLiteEntity *)&v28 initWithPropertyValues:v10 inDatabase:databaseCopy];
  v25 = [LocationIndex insertIndexedLocationWithLatitude:v12 longitude:v14 forLocation:v24 database:databaseCopy];

  return v24;
}

+ (void)insertLocations:(id)locations forSource:(id)source inDatabase:(id)database
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100106650;
  v11[3] = &unk_100843068;
  locationsCopy = locations;
  sourceCopy = source;
  databaseCopy = database;
  selfCopy = self;
  v8 = databaseCopy;
  v9 = sourceCopy;
  v10 = locationsCopy;
  sub_1005D4424(v8, v11);
}

+ (id)_locationsInDatabase:(id)database matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  databaseCopy = database;
  v8 = objc_alloc_init(NSMutableArray);
  _propertySettersForLocation = [self _propertySettersForLocation];
  v10 = [(SQLiteEntity *)Location queryWithDatabase:databaseCopy predicate:predicateCopy];

  allKeys = [_propertySettersForLocation allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001068C4;
  v17[3] = &unk_10083C998;
  selfCopy = self;
  v18 = _propertySettersForLocation;
  v12 = v8;
  v19 = v12;
  v13 = _propertySettersForLocation;
  [v10 enumeratePersistentIDsAndProperties:allKeys usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (id)_predicateForPassPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass.pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPass:(id)pass
{
  persistentID = [pass persistentID];

  return [self _predicateForPassPID:persistentID];
}

+ (BOOL)hasLocationsInDatabase:(id)database forPassPID:(unint64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8 != 0;
}

+ (id)locationsInDatabase:(id)database forPassPID:(unint64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForPassPID:d];
  v8 = [self _locationsInDatabase:databaseCopy matchingPredicate:v7];

  return v8;
}

+ (id)_predicateForLocationSourcePID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"location_source_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForLocationSource:(id)source
{
  persistentID = [source persistentID];

  return [self _predicateForLocationSourcePID:persistentID];
}

+ (id)_predicateForSourceType:(int)type
{
  v3 = [NSNumber numberWithInt:*&type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"location_source.type" equalToValue:v3];

  return v4;
}

+ (id)locationsInDatabase:(id)database forPassPID:(unint64_t)d withSourceType:(int)type
{
  v5 = *&type;
  databaseCopy = database;
  v9 = [self _predicateForPassPID:d];
  v15[0] = v9;
  v10 = [self _predicateForSourceType:v5];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v13 = [self _locationsInDatabase:databaseCopy matchingPredicate:v12];

  return v13;
}

+ (id)queryWithDatabase:(id)database locationSourcePID:(unint64_t)d
{
  databaseCopy = database;
  v7 = [self _predicateForLocationSourcePID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (void)deleteEntitiesForPass:(id)pass inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPass:pass];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

@end