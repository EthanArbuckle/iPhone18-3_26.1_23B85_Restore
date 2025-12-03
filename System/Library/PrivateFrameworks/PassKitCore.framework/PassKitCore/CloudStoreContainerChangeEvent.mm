@interface CloudStoreContainerChangeEvent
+ (id)_commonDictionaryForEvent:(id)event;
+ (id)_eventsForQuery:(id)query;
+ (id)_predicateForContainerIdentifier:(id)identifier;
+ (id)_predicateForPID:(int64_t)d;
+ (id)_predicateForTimestamp:(id)timestamp;
+ (id)_propertySettersForCloudStoreContainerChangeEvent;
+ (id)changeEventForPID:(int64_t)d inDatabase:(id)database;
+ (id)changeEventWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)changeEventsForContainerIdentifier:(id)identifier inDatabase:(id)database;
+ (id)insertContainerChangeEvent:(id)event inDatabase:(id)database;
+ (int64_t)changeEventPIDForIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteAllEntriesInDatabase:(id)database;
+ (void)purgeOldEntriesIfNecessaryInDatabase:(id)database;
- (id)event;
- (id)timestamp;
- (unint64_t)changeType;
- (unint64_t)eventType;
@end

@implementation CloudStoreContainerChangeEvent

+ (id)insertContainerChangeEvent:(id)event inDatabase:(id)database
{
  eventCopy = event;
  databaseCopy = database;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = eventCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKCloudStoreContainerChangeEvent: Inserting change event %@", &v11, 0xCu);
  }

  v8 = [objc_opt_class() _commonDictionaryForEvent:eventCopy];
  v9 = [(SQLiteEntity *)[CloudStoreContainerChangeEvent alloc] initWithPropertyValues:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)changeEventsForContainerIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForContainerIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _eventsForQuery:v8];

  return v9;
}

+ (id)changeEventWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  event = [v8 event];

  return event;
}

+ (id)changeEventForPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  event = [v8 event];

  return event;
}

+ (int64_t)changeEventPIDForIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  persistentID = [v8 persistentID];
  return persistentID;
}

+ (id)_eventsForQuery:(id)query
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10004D1A0;
  v10 = &unk_10083ED50;
  queryCopy = query;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  v4 = queryCopy;
  [v4 enumeratePersistentIDsUsingBlock:&v7];
  v5 = [v3 copy];

  return v5;
}

+ (id)_predicateForContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [SQLiteComparisonPredicate predicateWithProperty:@"container_identifier" equalToValue:identifierCopy];
  }

  else
  {
    +[SQLiteBooleanPredicate truePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)_predicateForPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForTimestamp:(id)timestamp
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"timestamp" lessThanValue:v3];

  return v4;
}

+ (void)deleteAllEntriesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKCloudStoreContainerChangeEvent: Deleteing container change events from local database.", v8, 2u);
  }

  v6 = +[SQLiteBooleanPredicate truePredicate];
  v7 = [self queryWithDatabase:databaseCopy predicate:v6];
  [v7 deleteAllEntities];
}

+ (void)purgeOldEntriesIfNecessaryInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-1728000.0];

  v7 = [self _predicateForTimestamp:v6];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  countOfEntities = [v8 countOfEntities];
  if (countOfEntities >= 1)
  {
    v10 = countOfEntities;
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PKCloudStoreContainerChangeEvent deleting %ld entries older than %@", &v12, 0x16u);
    }

    [v8 deleteAllEntities];
  }
}

- (id)event
{
  v3 = objc_alloc_init(PKCloudStoreContainerChangeEvent);
  _propertySettersForCloudStoreContainerChangeEvent = [objc_opt_class() _propertySettersForCloudStoreContainerChangeEvent];
  allKeys = [_propertySettersForCloudStoreContainerChangeEvent allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D720;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v6 = _propertySettersForCloudStoreContainerChangeEvent;
  v15 = v6;
  v7 = v3;
  v16 = v7;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  beginIntervalEventIdentifier = [(CloudStoreContainerChangeEvent *)self beginIntervalEventIdentifier];
  if ([beginIntervalEventIdentifier length])
  {
    v9 = objc_opt_class();
    database = [(SQLiteEntity *)self database];
    v11 = [v9 changeEventWithIdentifier:beginIntervalEventIdentifier inDatabase:database];

    if (v11)
    {
      [PKCloudStoreContainerChangeEvent populateEndIntervalEvent:v7 withBeginIntervalEvent:v11];
    }
  }

  v12 = v7;

  return v7;
}

- (id)timestamp
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"timestamp"];
  v3 = _DateForSQLValue();

  return v3;
}

- (unint64_t)eventType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"event_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)changeType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"change_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (id)_commonDictionaryForEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [eventCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"identifier"];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy changeType]);
  [v4 setObjectOrNull:v6 forKey:@"change_type"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy eventType]);
  [v4 setObjectOrNull:v7 forKey:@"event_type"];

  timestamp = [eventCopy timestamp];
  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"timestamp"];

  containerIdentifier = [eventCopy containerIdentifier];
  [v4 setObjectOrNull:containerIdentifier forKey:@"container_identifier"];

  beginIntervalEventIdentifier = [eventCopy beginIntervalEventIdentifier];
  [v4 setObjectOrNull:beginIntervalEventIdentifier forKey:@"begin_interval_event_identifier"];

  operationGroupName = [eventCopy operationGroupName];
  [v4 setObjectOrNull:operationGroupName forKey:@"operation_group_name"];

  operationGroupNameSuffix = [eventCopy operationGroupNameSuffix];
  [v4 setObjectOrNull:operationGroupNameSuffix forKey:@"operation_group_name_suffix"];

  errorDescription = [eventCopy errorDescription];
  [v4 setObjectOrNull:errorDescription forKey:@"error_description"];

  changeToken = [eventCopy changeToken];
  [v4 setObjectOrNull:changeToken forKey:@"change_token"];

  stateName = [eventCopy stateName];
  [v4 setObjectOrNull:stateName forKey:@"state_name"];

  objectNames = [eventCopy objectNames];
  v18 = [objectNames componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v18 forKey:@"object_names"];

  [eventCopy timeInterval];
  v20 = v19;

  v21 = [NSNumber numberWithDouble:v20];
  [v4 setObjectOrNull:v21 forKey:@"time_interval"];

  v22 = [v4 copy];

  return v22;
}

+ (id)_propertySettersForCloudStoreContainerChangeEvent
{
  v4[0] = @"identifier";
  v4[1] = @"event_type";
  v5[0] = &stru_10083ED90;
  v5[1] = &stru_10083EDB0;
  v4[2] = @"change_type";
  v4[3] = @"timestamp";
  v5[2] = &stru_10083EDD0;
  v5[3] = &stru_10083EDF0;
  v4[4] = @"container_identifier";
  v4[5] = @"begin_interval_event_identifier";
  v5[4] = &stru_10083EE10;
  v5[5] = &stru_10083EE30;
  v4[6] = @"operation_group_name";
  v4[7] = @"operation_group_name_suffix";
  v5[6] = &stru_10083EE50;
  v5[7] = &stru_10083EE70;
  v4[8] = @"error_description";
  v4[9] = @"state_name";
  v5[8] = &stru_10083EE90;
  v5[9] = &stru_10083EEB0;
  v4[10] = @"object_names";
  v4[11] = @"change_token";
  v5[10] = &stru_10083EED0;
  v5[11] = &stru_10083EEF0;
  v4[12] = @"time_interval";
  v5[12] = &stru_10083EF10;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:13];

  return v2;
}

@end