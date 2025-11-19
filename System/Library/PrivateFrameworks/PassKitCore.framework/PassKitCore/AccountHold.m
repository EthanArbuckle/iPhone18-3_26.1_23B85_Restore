@interface AccountHold
+ (id)_accountHoldWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)_commonDictionaryForHold:(id)a3;
+ (id)_holdsFromQuery:(id)a3;
+ (id)_predicateForEventPID:(int64_t)a3;
+ (id)_predicateForPlacedHoldsWithAccountIdentifier:(id)a3;
+ (id)_propertySettersForHold;
+ (id)holdsWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)insertOrUpdateHold:(id)a3 forEventPID:(int64_t)a4 accountIdentifier:(id)a5 inDatabase:(id)a6;
+ (id)placedHoldsWithAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteHoldWithEventPID:(int64_t)a3 inDatabase:(id)a4;
- (id)hold;
@end

@implementation AccountHold

+ (id)insertOrUpdateHold:(id)a3 forEventPID:(int64_t)a4 accountIdentifier:(id)a5 inDatabase:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a1 _commonDictionaryForHold:v10];
  v14 = [v10 identifier];
  v15 = [a1 _accountHoldWithIdentifier:v14 inDatabase:v12];

  if (!v15)
  {
    v19 = [NSNumber numberWithLongLong:a4];
    [v13 setObject:v19 forKey:@"a"];

    [v13 setObject:v11 forKey:@"b"];
    v20 = [[a1 alloc] initWithPropertyValues:v13 inDatabase:v12];
    goto LABEL_11;
  }

  v16 = [v15 hold];
  if ([v16 state] == 2)
  {
    v17 = [v10 state];

    if (v17 != 2)
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

+ (id)_commonDictionaryForHold:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 identifier];
  [v4 setObject:v5 forKey:@"c"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"type"), @"d"}];
  [v4 setInteger:objc_msgSend(v3 forKey:{"state"), @"e"}];
  v6 = [v3 currencyAmount];
  v7 = [v6 amount];
  v8 = PKCurrencyDecimalToStorageNumber();

  [v4 setObjectOrNull:v8 forKey:@"f"];
  v9 = [v3 currencyAmount];

  v10 = [v9 currency];
  [v4 setObject:v10 forKey:@"g"];

  return v4;
}

+ (id)placedHoldsWithAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPlacedHoldsWithAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _holdsFromQuery:v8];

  return v9;
}

+ (id)holdsWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _holdsFromQuery:v8];

  return v9;
}

+ (id)_accountHoldWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForHoldIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)_holdsFromQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v16 = @"pid";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100025250;
  v13 = &unk_10083CBC0;
  v14 = v3;
  v15 = v4;
  v6 = v4;
  v7 = v3;
  [v7 enumeratePersistentIDsAndProperties:v5 usingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

+ (void)deleteHoldWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)_predicateForPlacedHoldsWithAccountIdentifier:(id)a3
{
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:a3];
  v8[0] = v3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:&off_1008A27B0];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (id)_predicateForEventPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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
  v5 = [v4 allKeys];
  v6 = [v5 mutableCopy];

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