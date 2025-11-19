@interface CloudStoreContainerChangeEvent
+ (id)_commonDictionaryForEvent:(id)a3;
+ (id)_eventsForQuery:(id)a3;
+ (id)_predicateForContainerIdentifier:(id)a3;
+ (id)_predicateForPID:(int64_t)a3;
+ (id)_predicateForTimestamp:(id)a3;
+ (id)_propertySettersForCloudStoreContainerChangeEvent;
+ (id)changeEventForPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)changeEventWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)changeEventsForContainerIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)insertContainerChangeEvent:(id)a3 inDatabase:(id)a4;
+ (int64_t)changeEventPIDForIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteAllEntriesInDatabase:(id)a3;
+ (void)purgeOldEntriesIfNecessaryInDatabase:(id)a3;
- (id)event;
- (id)timestamp;
- (unint64_t)changeType;
- (unint64_t)eventType;
@end

@implementation CloudStoreContainerChangeEvent

+ (id)insertContainerChangeEvent:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKCloudStoreContainerChangeEvent: Inserting change event %@", &v11, 0xCu);
  }

  v8 = [objc_opt_class() _commonDictionaryForEvent:v5];
  v9 = [(SQLiteEntity *)[CloudStoreContainerChangeEvent alloc] initWithPropertyValues:v8 inDatabase:v6];

  return v9;
}

+ (id)changeEventsForContainerIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForContainerIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _eventsForQuery:v8];

  return v9;
}

+ (id)changeEventWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 event];

  return v9;
}

+ (id)changeEventForPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 event];

  return v9;
}

+ (int64_t)changeEventPIDForIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 persistentID];
  return v9;
}

+ (id)_eventsForQuery:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10004D1A0;
  v10 = &unk_10083ED50;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  v4 = v11;
  [v4 enumeratePersistentIDsUsingBlock:&v7];
  v5 = [v3 copy];

  return v5;
}

+ (id)_predicateForContainerIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    [SQLiteComparisonPredicate predicateWithProperty:@"container_identifier" equalToValue:v3];
  }

  else
  {
    +[SQLiteBooleanPredicate truePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)_predicateForPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForTimestamp:(id)a3
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"timestamp" lessThanValue:v3];

  return v4;
}

+ (void)deleteAllEntriesInDatabase:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKCloudStoreContainerChangeEvent: Deleteing container change events from local database.", v8, 2u);
  }

  v6 = +[SQLiteBooleanPredicate truePredicate];
  v7 = [a1 queryWithDatabase:v4 predicate:v6];
  [v7 deleteAllEntities];
}

+ (void)purgeOldEntriesIfNecessaryInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-1728000.0];

  v7 = [a1 _predicateForTimestamp:v6];
  v8 = [a1 queryWithDatabase:v4 predicate:v7];

  v9 = [v8 countOfEntities];
  if (v9 >= 1)
  {
    v10 = v9;
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
  v4 = [objc_opt_class() _propertySettersForCloudStoreContainerChangeEvent];
  v5 = [v4 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D720;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = v3;
  v16 = v7;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v14];

  v8 = [(CloudStoreContainerChangeEvent *)self beginIntervalEventIdentifier];
  if ([v8 length])
  {
    v9 = objc_opt_class();
    v10 = [(SQLiteEntity *)self database];
    v11 = [v9 changeEventWithIdentifier:v8 inDatabase:v10];

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
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)changeType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"change_type"];
  v3 = [v2 integerValue];

  return v3;
}

+ (id)_commonDictionaryForEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"identifier"];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 changeType]);
  [v4 setObjectOrNull:v6 forKey:@"change_type"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 eventType]);
  [v4 setObjectOrNull:v7 forKey:@"event_type"];

  v8 = [v3 timestamp];
  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"timestamp"];

  v10 = [v3 containerIdentifier];
  [v4 setObjectOrNull:v10 forKey:@"container_identifier"];

  v11 = [v3 beginIntervalEventIdentifier];
  [v4 setObjectOrNull:v11 forKey:@"begin_interval_event_identifier"];

  v12 = [v3 operationGroupName];
  [v4 setObjectOrNull:v12 forKey:@"operation_group_name"];

  v13 = [v3 operationGroupNameSuffix];
  [v4 setObjectOrNull:v13 forKey:@"operation_group_name_suffix"];

  v14 = [v3 errorDescription];
  [v4 setObjectOrNull:v14 forKey:@"error_description"];

  v15 = [v3 changeToken];
  [v4 setObjectOrNull:v15 forKey:@"change_token"];

  v16 = [v3 stateName];
  [v4 setObjectOrNull:v16 forKey:@"state_name"];

  v17 = [v3 objectNames];
  v18 = [v17 componentsJoinedByString:{@", "}];
  [v4 setObjectOrNull:v18 forKey:@"object_names"];

  [v3 timeInterval];
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