@interface LiveActivitySectionState
+ (id)_propertySettersForState;
+ (id)anyInDatabase:(id)database withIdentifier:(id)identifier;
+ (id)insertState:(id)state inDatabase:(id)database;
+ (id)liveActivitySectionStatesInDatabase:(id)database;
+ (void)deleteEntitiesForIdentifiers:(id)identifiers inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (LiveActivitySectionState)initWithState:(id)state inDatabase:(id)database;
- (id)liveActivitySectionState;
- (void)_updateActivityStates:(id)states;
- (void)updateWithState:(id)state;
@end

@implementation LiveActivitySectionState

+ (id)anyInDatabase:(id)database withIdentifier:(id)identifier
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [(SQLiteEntity *)LiveActivitySectionState anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)liveActivitySectionStatesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableSet);
  v7 = +[LiveActivitySectionState _propertySettersForState];
  v8 = [(SQLiteEntity *)LiveActivitySectionState queryWithDatabase:databaseCopy predicate:0];
  allKeys = [v7 allKeys];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001E084;
  v18 = &unk_10083BF08;
  selfCopy = self;
  v19 = v7;
  v10 = databaseCopy;
  v20 = v10;
  v21 = v6;
  v11 = v6;
  v12 = v7;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v15];

  v13 = [v11 copy];
  objc_autoreleasePoolPop(v5);

  return v13;
}

+ (id)insertState:(id)state inDatabase:(id)database
{
  databaseCopy = database;
  stateCopy = state;
  v7 = [[LiveActivitySectionState alloc] initWithState:stateCopy inDatabase:databaseCopy];
  activityStates = [stateCopy activityStates];

  v9 = [LiveActivityState insertActivityStates:activityStates forSectionState:v7 inDatabase:databaseCopy];

  return v7;
}

- (void)updateWithState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(NSMutableDictionary);
  identifier = [stateCopy identifier];
  [v7 setObjectOrNull:identifier forKey:@"identifier"];

  [v7 setInteger:objc_msgSend(stateCopy forKey:{"attributesType"), @"attributes_type"}];
  activityStates = [stateCopy activityStates];

  [(LiveActivitySectionState *)self _updateActivityStates:activityStates];
  [(SQLiteEntity *)self setValuesWithDictionary:v7];
}

- (void)_updateActivityStates:(id)states
{
  statesCopy = states;
  database = self->super._database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E384;
  v7[3] = &unk_10083C2B8;
  v7[4] = self;
  v8 = statesCopy;
  v6 = statesCopy;
  sub_1005D4424(database, v7);
}

+ (void)deleteEntitiesForIdentifiers:(id)identifiers inDatabase:(id)database
{
  identifiersCopy = identifiers;
  databaseCopy = database;
  if ([identifiersCopy count])
  {
    v7 = [self _predicateForIdentifiers:identifiersCopy];
    v8 = [self queryWithDatabase:databaseCopy predicate:v7];
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

- (LiveActivitySectionState)initWithState:(id)state inDatabase:(id)database
{
  databaseCopy = database;
  stateCopy = state;
  v8 = objc_alloc_init(NSMutableDictionary);
  identifier = [stateCopy identifier];
  [v8 setObjectOrNull:identifier forKey:@"identifier"];

  [stateCopy attributesType];
  v10 = PKLiveActivityAttributesTypeToString();
  [v8 setObject:v10 forKey:@"attributes_type"];

  v11 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v11;
}

- (id)liveActivitySectionState
{
  v3 = objc_alloc_init(PDLiveActivitySectionState);
  v4 = +[LiveActivitySectionState _propertySettersForState];
  allKeys = [v4 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001E838;
  v16 = &unk_10083C240;
  v17 = v4;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:&v13];

  v8 = [LiveActivityState liveActivityStatesInDatabase:self->super._database forSectionStatePersistentID:self->super._persistentID, v13, v14, v15, v16];
  allObjects = [v8 allObjects];
  [(PDLiveActivitySectionState *)v6 setActivityStates:allObjects];

  v10 = v18;
  v11 = v6;

  return v6;
}

@end