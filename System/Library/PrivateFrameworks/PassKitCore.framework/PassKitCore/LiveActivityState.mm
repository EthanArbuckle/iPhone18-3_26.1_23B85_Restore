@interface LiveActivityState
+ (id)_predicateForSectionState:(id)state;
+ (id)_predicateForSectionStatePersistentID:(int64_t)d;
+ (id)_propertySettersForActivityState;
+ (id)insertActivityStates:(id)states forSectionState:(id)state inDatabase:(id)database;
+ (id)liveActivityStatesInDatabase:(id)database forSectionStatePersistentID:(unint64_t)d;
+ (void)deleteEntitiesForSectionState:(id)state inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (LiveActivityState)initWithActivityState:(id)state forSectionState:(id)sectionState inDatabase:(id)database;
- (id)liveActivityState;
@end

@implementation LiveActivityState

+ (id)liveActivityStatesInDatabase:(id)database forSectionStatePersistentID:(unint64_t)d
{
  databaseCopy = database;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(NSMutableSet);
  v9 = +[LiveActivityState _propertySettersForActivityState];
  v10 = [self _predicateForSectionStatePersistentID:d];
  v11 = [(SQLiteEntity *)LiveActivityState queryWithDatabase:databaseCopy predicate:v10];

  allKeys = [v9 allKeys];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10001CFB0;
  v21 = &unk_10083BF08;
  selfCopy = self;
  v22 = v9;
  v13 = databaseCopy;
  v23 = v13;
  v24 = v8;
  v14 = v8;
  v15 = v9;
  [v11 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v18];

  v16 = [v14 copy];
  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)insertActivityStates:(id)states forSectionState:(id)state inDatabase:(id)database
{
  statesCopy = states;
  stateCopy = state;
  databaseCopy = database;
  if ([statesCopy count])
  {
    if (stateCopy)
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
      v17 = statesCopy;
      v18 = stateCopy;
      v19 = databaseCopy;
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

+ (void)deleteEntitiesForSectionState:(id)state inDatabase:(id)database
{
  if (state)
  {
    databaseCopy = database;
    v8 = [self _predicateForSectionState:state];
    v7 = [self queryWithDatabase:databaseCopy predicate:v8];

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

+ (id)_predicateForSectionState:(id)state
{
  persistentID = [state persistentID];

  return [self _predicateForSectionStatePersistentID:persistentID];
}

+ (id)_predicateForSectionStatePersistentID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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

- (LiveActivityState)initWithActivityState:(id)state forSectionState:(id)sectionState inDatabase:(id)database
{
  databaseCopy = database;
  sectionStateCopy = sectionState;
  stateCopy = state;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:sectionStateCopy forKey:@"live_activity_section_state_pid"];

  identifier = [stateCopy identifier];
  [v11 setObjectOrNull:identifier forKey:@"identifier"];

  activityID = [stateCopy activityID];
  [v11 setObjectOrNull:activityID forKey:@"activity_id"];

  [stateCopy state];
  v14 = PKPassRelevancySystemPresentmentStateToString();
  [v11 setObject:v14 forKey:@"state"];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
  return v15;
}

- (id)liveActivityState
{
  v3 = objc_alloc_init(PDLiveActivityState);
  v4 = +[LiveActivityState _propertySettersForActivityState];
  allKeys = [v4 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001D8A4;
  v16 = &unk_10083C240;
  v17 = v4;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:&v13];

  v8 = [LiveActivityStatePass passesInDatabase:self->super._database forActivityStatePersistentID:self->super._persistentID, v13, v14, v15, v16];
  allObjects = [v8 allObjects];
  [(PDLiveActivityState *)v6 setPasses:allObjects];

  v10 = v18;
  v11 = v6;

  return v6;
}

@end