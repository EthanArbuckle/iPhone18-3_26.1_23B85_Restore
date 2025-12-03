@interface AccountVirtualCardStatusUpdate
+ (id)_predicateForEventPID:(int64_t)d;
+ (id)_propertySettersForAccountVirtualCardStatusUpdate;
+ (id)insertVirtualCardStatusUpdate:(id)update forEventPID:(int64_t)d inDatabase:(id)database;
+ (id)virtualCardStatusUpdatesWithEventPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteVirtualCardStatusUpdatesWithEventPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)virtualCardStatusUpdate;
@end

@implementation AccountVirtualCardStatusUpdate

+ (id)virtualCardStatusUpdatesWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001183CC;
  v18 = &unk_10083CBC0;
  v19 = databaseCopy;
  v20 = v9;
  v11 = v9;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertVirtualCardStatusUpdate:(id)update forEventPID:(int64_t)d inDatabase:(id)database
{
  updateCopy = update;
  databaseCopy = database;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setInteger:objc_msgSend(updateCopy forKey:{"reason"), @"b"}];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObject:v11 forKey:@"a"];

  v12 = [[self alloc] initWithPropertyValues:v10 inDatabase:databaseCopy];
  if (v12)
  {
    updatedVirtualCards = [updateCopy updatedVirtualCards];
    v14 = [NSSet setWithArray:updatedVirtualCards];
    v15 = +[VirtualCard insertVirtualCards:forVirtualCardStatusUpdatePID:inDatabase:](VirtualCard, "insertVirtualCards:forVirtualCardStatusUpdatePID:inDatabase:", v14, [v12 persistentID], databaseCopy);
  }

  return v12;
}

- (id)virtualCardStatusUpdate
{
  v3 = objc_alloc_init(PKAccountVirtualCardStatusUpdate);
  v4 = +[AccountVirtualCardStatusUpdate _propertySettersForAccountVirtualCardStatusUpdate];
  allKeys = [v4 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100118688;
  v10[3] = &unk_10083BEE0;
  v11 = v4;
  v6 = v3;
  v12 = v6;
  selfCopy = self;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v10];

  v8 = v6;
  return v6;
}

+ (void)deleteVirtualCardStatusUpdatesWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [VirtualCard deleteVirtualCardsForVirtualCardStatusUpdatePID:persistentID inDatabase:database];

  v6.receiver = self;
  v6.super_class = AccountVirtualCardStatusUpdate;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (id)_predicateForEventPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForAccountVirtualCardStatusUpdate
{
  v4 = @"b";
  v5 = &stru_100847328;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end