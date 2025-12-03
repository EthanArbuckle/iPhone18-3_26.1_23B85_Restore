@interface AccountRewardsIdentifier
+ (id)_predicateForAccountRewardsPID:(int64_t)d;
+ (id)identifiersWithAccountRewardsPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteIdentifiersWithAccountRewardsPID:(int64_t)d inDatabase:(id)database;
+ (void)insertIdentifiers:(id)identifiers forAccountRewardsPID:(int64_t)d inDatabase:(id)database;
@end

@implementation AccountRewardsIdentifier

+ (void)insertIdentifiers:(id)identifiers forAccountRewardsPID:(int64_t)d inDatabase:(id)database
{
  identifiersCopy = identifiers;
  databaseCopy = database;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = identifiersCopy;
  v10 = [identifiersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = +[NSMutableDictionary dictionary];
        [v15 setObjectOrNull:v14 forKey:@"b"];
        v16 = [NSNumber numberWithLongLong:d];
        [v15 setObject:v16 forKey:@"a"];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

+ (id)identifiersWithAccountRewardsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountRewardsPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = +[NSMutableSet set];
  v19 = @"pid";
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007B3BC;
  v15[3] = &unk_10083C998;
  selfCopy = self;
  v16 = databaseCopy;
  v11 = v9;
  v17 = v11;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:v15];

  if ([v11 count])
  {
    v13 = [v11 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)deleteIdentifiersWithAccountRewardsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountRewardsPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)_predicateForAccountRewardsPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end