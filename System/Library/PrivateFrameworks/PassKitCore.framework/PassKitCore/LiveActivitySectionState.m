@interface LiveActivitySectionState
+ (id)_propertySettersForState;
+ (id)anyInDatabase:(id)a3 withIdentifier:(id)a4;
+ (id)insertState:(id)a3 inDatabase:(id)a4;
+ (id)liveActivitySectionStatesInDatabase:(id)a3;
+ (void)deleteEntitiesForIdentifiers:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (LiveActivitySectionState)initWithState:(id)a3 inDatabase:(id)a4;
- (id)liveActivitySectionState;
- (void)_updateActivityStates:(id)a3;
- (void)updateWithState:(id)a3;
@end

@implementation LiveActivitySectionState

+ (id)anyInDatabase:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForIdentifier:a4];
  v8 = [(SQLiteEntity *)LiveActivitySectionState anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)liveActivitySectionStatesInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableSet);
  v7 = +[LiveActivitySectionState _propertySettersForState];
  v8 = [(SQLiteEntity *)LiveActivitySectionState queryWithDatabase:v4 predicate:0];
  v9 = [v7 allKeys];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001E084;
  v18 = &unk_10083BF08;
  v22 = a1;
  v19 = v7;
  v10 = v4;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v7;
  [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:&v15];

  v13 = [v11 copy];
  objc_autoreleasePoolPop(v5);

  return v13;
}

+ (id)insertState:(id)a3 inDatabase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[LiveActivitySectionState alloc] initWithState:v6 inDatabase:v5];
  v8 = [v6 activityStates];

  v9 = [LiveActivityState insertActivityStates:v8 forSectionState:v7 inDatabase:v5];

  return v7;
}

- (void)updateWithState:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v5 = [v4 identifier];
  [v7 setObjectOrNull:v5 forKey:@"identifier"];

  [v7 setInteger:objc_msgSend(v4 forKey:{"attributesType"), @"attributes_type"}];
  v6 = [v4 activityStates];

  [(LiveActivitySectionState *)self _updateActivityStates:v6];
  [(SQLiteEntity *)self setValuesWithDictionary:v7];
}

- (void)_updateActivityStates:(id)a3
{
  v4 = a3;
  database = self->super._database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E384;
  v7[3] = &unk_10083C2B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_1005D4424(database, v7);
}

+ (void)deleteEntitiesForIdentifiers:(id)a3 inDatabase:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 count])
  {
    v7 = [a1 _predicateForIdentifiers:v9];
    v8 = [a1 queryWithDatabase:v6 predicate:v7];
    [v8 deleteAllEntities];
  }
}

- (BOOL)deleteFromDatabase
{
  [LiveActivityState deleteEntitiesForSectionState:self inDatabase:self->super._database];
  v4.receiver = self;
  v4.super_class = LiveActivitySectionState;
  return [(SQLiteEntity *)&v4 deleteFromDatabase];
}

+ (id)_propertySettersForState
{
  v4[0] = @"identifier";
  v4[1] = @"attributes_type";
  v5[0] = &stru_10083C2F8;
  v5[1] = &stru_10083C318;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (LiveActivitySectionState)initWithState:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v7 identifier];
  [v8 setObjectOrNull:v9 forKey:@"identifier"];

  [v7 attributesType];
  v10 = PKLiveActivityAttributesTypeToString();
  [v8 setObject:v10 forKey:@"attributes_type"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v11;
}

- (id)liveActivitySectionState
{
  v3 = objc_alloc_init(PDLiveActivitySectionState);
  v4 = +[LiveActivitySectionState _propertySettersForState];
  v5 = [v4 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001E838;
  v16 = &unk_10083C240;
  v17 = v4;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:&v13];

  v8 = [LiveActivityState liveActivityStatesInDatabase:self->super._database forSectionStatePersistentID:self->super._persistentID, v13, v14, v15, v16];
  v9 = [v8 allObjects];
  [(PDLiveActivitySectionState *)v6 setActivityStates:v9];

  v10 = v18;
  v11 = v6;

  return v6;
}

@end