@interface LiveActivityState
+ (id)_predicateForSectionState:(id)a3;
+ (id)_predicateForSectionStatePersistentID:(int64_t)a3;
+ (id)_propertySettersForActivityState;
+ (id)insertActivityStates:(id)a3 forSectionState:(id)a4 inDatabase:(id)a5;
+ (id)liveActivityStatesInDatabase:(id)a3 forSectionStatePersistentID:(unint64_t)a4;
+ (void)deleteEntitiesForSectionState:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (LiveActivityState)initWithActivityState:(id)a3 forSectionState:(id)a4 inDatabase:(id)a5;
- (id)liveActivityState;
@end

@implementation LiveActivityState

+ (id)liveActivityStatesInDatabase:(id)a3 forSectionStatePersistentID:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(NSMutableSet);
  v9 = +[LiveActivityState _propertySettersForActivityState];
  v10 = [a1 _predicateForSectionStatePersistentID:a4];
  v11 = [(SQLiteEntity *)LiveActivityState queryWithDatabase:v6 predicate:v10];

  v12 = [v9 allKeys];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10001CFB0;
  v21 = &unk_10083BF08;
  v25 = a1;
  v22 = v9;
  v13 = v6;
  v23 = v13;
  v24 = v8;
  v14 = v8;
  v15 = v9;
  [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:&v18];

  v16 = [v14 copy];
  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)insertActivityStates:(id)a3 forSectionState:(id)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    if (v8)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = sub_100005940;
      v25 = sub_10000B0AC;
      v26 = 0;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10001D224;
      v16 = &unk_10083C198;
      v20 = &v21;
      v17 = v7;
      v18 = v8;
      v19 = v9;
      sub_1005D4424(v19, &v13);
      if ([v22[5] count])
      {
        v10 = v22[5];
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

+ (void)deleteEntitiesForSectionState:(id)a3 inDatabase:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v8 = [a1 _predicateForSectionState:a3];
    v7 = [a1 queryWithDatabase:v6 predicate:v8];

    [v7 deleteAllEntities];
  }
}

- (BOOL)deleteFromDatabase
{
  [LiveActivityStatePass deleteEntitiesForActivityState:self inDatabase:self->super._database];
  v4.receiver = self;
  v4.super_class = LiveActivityState;
  return [(SQLiteEntity *)&v4 deleteFromDatabase];
}

+ (id)_predicateForSectionState:(id)a3
{
  v4 = [a3 persistentID];

  return [a1 _predicateForSectionStatePersistentID:v4];
}

+ (id)_predicateForSectionStatePersistentID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"live_activity_section_state_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForActivityState
{
  v4[0] = @"identifier";
  v4[1] = @"activity_id";
  v5[0] = &stru_10083C1D8;
  v5[1] = &stru_10083C1F8;
  v4[2] = @"state";
  v5[2] = &stru_10083C218;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (LiveActivityState)initWithActivityState:(id)a3 forSectionState:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:v9 forKey:@"live_activity_section_state_pid"];

  v12 = [v10 identifier];
  [v11 setObjectOrNull:v12 forKey:@"identifier"];

  v13 = [v10 activityID];
  [v11 setObjectOrNull:v13 forKey:@"activity_id"];

  [v10 state];
  v14 = PKPassRelevancySystemPresentmentStateToString();
  [v11 setObject:v14 forKey:@"state"];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  return v15;
}

- (id)liveActivityState
{
  v3 = objc_alloc_init(PDLiveActivityState);
  v4 = +[LiveActivityState _propertySettersForActivityState];
  v5 = [v4 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001D8A4;
  v16 = &unk_10083C240;
  v17 = v4;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:&v13];

  v8 = [LiveActivityStatePass passesInDatabase:self->super._database forActivityStatePersistentID:self->super._persistentID, v13, v14, v15, v16];
  v9 = [v8 allObjects];
  [(PDLiveActivityState *)v6 setPasses:v9];

  v10 = v18;
  v11 = v6;

  return v6;
}

@end