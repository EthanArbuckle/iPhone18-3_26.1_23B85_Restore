@interface AccountVirtualCardStatusUpdate
+ (id)_predicateForEventPID:(int64_t)a3;
+ (id)_propertySettersForAccountVirtualCardStatusUpdate;
+ (id)insertVirtualCardStatusUpdate:(id)a3 forEventPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)virtualCardStatusUpdatesWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteVirtualCardStatusUpdatesWithEventPID:(int64_t)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (id)virtualCardStatusUpdate;
@end

@implementation AccountVirtualCardStatusUpdate

+ (id)virtualCardStatusUpdatesWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001183CC;
  v18 = &unk_10083CBC0;
  v19 = v6;
  v20 = v9;
  v11 = v9;
  v12 = v6;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertVirtualCardStatusUpdate:(id)a3 forEventPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setInteger:objc_msgSend(v8 forKey:{"reason"), @"b"}];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObject:v11 forKey:@"a"];

  v12 = [[a1 alloc] initWithPropertyValues:v10 inDatabase:v9];
  if (v12)
  {
    v13 = [v8 updatedVirtualCards];
    v14 = [NSSet setWithArray:v13];
    v15 = +[VirtualCard insertVirtualCards:forVirtualCardStatusUpdatePID:inDatabase:](VirtualCard, "insertVirtualCards:forVirtualCardStatusUpdatePID:inDatabase:", v14, [v12 persistentID], v9);
  }

  return v12;
}

- (id)virtualCardStatusUpdate
{
  v3 = objc_alloc_init(PKAccountVirtualCardStatusUpdate);
  v4 = +[AccountVirtualCardStatusUpdate _propertySettersForAccountVirtualCardStatusUpdate];
  v5 = [v4 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100118688;
  v10[3] = &unk_10083BEE0;
  v11 = v4;
  v6 = v3;
  v12 = v6;
  v13 = self;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v10];

  v8 = v6;
  return v6;
}

+ (void)deleteVirtualCardStatusUpdatesWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)self database];
  [VirtualCard deleteVirtualCardsForVirtualCardStatusUpdatePID:v3 inDatabase:v4];

  v6.receiver = self;
  v6.super_class = AccountVirtualCardStatusUpdate;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (id)_predicateForEventPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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