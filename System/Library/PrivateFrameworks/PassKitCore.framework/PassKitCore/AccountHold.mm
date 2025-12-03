@interface AccountHold
+ (id)_accountHoldWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)_commonDictionaryForHold:(id)hold;
+ (id)_holdsFromQuery:(id)query;
+ (id)_predicateForEventPID:(int64_t)d;
+ (id)_predicateForPlacedHoldsWithAccountIdentifier:(id)identifier;
+ (id)_propertySettersForHold;
+ (id)holdsWithEventPID:(int64_t)d inDatabase:(id)database;
+ (id)insertOrUpdateHold:(id)hold forEventPID:(int64_t)d accountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)placedHoldsWithAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteHoldWithEventPID:(int64_t)d inDatabase:(id)database;
- (id)hold;
@end

@implementation AccountHold

+ (id)insertOrUpdateHold:(id)hold forEventPID:(int64_t)d accountIdentifier:(id)identifier inDatabase:(id)database
{
  holdCopy = hold;
  identifierCopy = identifier;
  databaseCopy = database;
  v13 = [self _commonDictionaryForHold:holdCopy];
  identifier = [holdCopy identifier];
  v15 = [self _accountHoldWithIdentifier:identifier inDatabase:databaseCopy];

  if (!v15)
  {
    v19 = [NSNumber numberWithLongLong:d];
    [v13 setObject:v19 forKey:@"a"];

    [v13 setObject:identifierCopy forKey:@"b"];
    v20 = [[self alloc] initWithPropertyValues:v13 inDatabase:databaseCopy];
    goto LABEL_11;
  }

  hold = [v15 hold];
  if ([hold state] == 2)
  {
    state = [holdCopy state];

    if (state != 2)
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Dropping account hold as the state cannot change from removed.", v23, 2u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  [v15 setValuesWithDictionary:v13];
LABEL_10:
  v20 = v15;
LABEL_11:
  v21 = v20;

  return v21;
}

+ (id)_commonDictionaryForHold:(id)hold
{
  holdCopy = hold;
  v4 = +[NSMutableDictionary dictionary];
  identifier = [holdCopy identifier];
  [v4 setObject:identifier forKey:@"c"];

  [v4 setInteger:objc_msgSend(holdCopy forKey:{"type"), @"d"}];
  [v4 setInteger:objc_msgSend(holdCopy forKey:{"state"), @"e"}];
  currencyAmount = [holdCopy currencyAmount];
  amount = [currencyAmount amount];
  v8 = PKCurrencyDecimalToStorageNumber();

  [v4 setObjectOrNull:v8 forKey:@"f"];
  currencyAmount2 = [holdCopy currencyAmount];

  currency = [currencyAmount2 currency];
  [v4 setObject:currency forKey:@"g"];

  return v4;
}

+ (id)placedHoldsWithAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPlacedHoldsWithAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _holdsFromQuery:v8];

  return v9;
}

+ (id)holdsWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _holdsFromQuery:v8];

  return v9;
}

+ (id)_accountHoldWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForHoldIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)_holdsFromQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc_init(NSMutableSet);
  v16 = @"pid";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100025250;
  v13 = &unk_10083CBC0;
  v14 = queryCopy;
  v15 = v4;
  v6 = v4;
  v7 = queryCopy;
  [v7 enumeratePersistentIDsAndProperties:v5 usingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

+ (void)deleteHoldWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)_predicateForPlacedHoldsWithAccountIdentifier:(id)identifier
{
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:identifier];
  v8[0] = v3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:&off_1008A27B0];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (id)_predicateForEventPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForHold
{
  v4[0] = @"c";
  v4[1] = @"d";
  v5[0] = &stru_10083CC00;
  v5[1] = &stru_10083CC20;
  v4[2] = @"e";
  v5[2] = &stru_10083CC40;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)hold
{
  v3 = objc_alloc_init(PKAccountHold);
  v4 = +[AccountHold _propertySettersForHold];
  allKeys = [v4 allKeys];
  v6 = [allKeys mutableCopy];

  v7 = [v6 count];
  [v6 addObject:@"f"];
  v8 = [v6 count];
  [v6 addObject:@"g"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000257AC;
  v14[3] = &unk_10083CC68;
  v15 = v4;
  v9 = v3;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v10 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v6 withApplier:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

@end