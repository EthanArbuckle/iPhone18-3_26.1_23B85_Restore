@interface AppleBalanceAccountDetails
+ (id)_commonDictionaryForAppleBalanceAccountDetails:(id)a3;
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_propertySettersForAppleBalanceAccountDetails;
+ (id)accountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrUpdateAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteAccountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
- (AppleBalanceAccountDetails)initWithAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (id)accountDetails;
- (void)updateWitDetails:(id)a3;
@end

@implementation AppleBalanceAccountDetails

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

- (AppleBalanceAccountDetails)initWithAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a3 appleBalanceDetails];
  v10 = [objc_opt_class() _commonDictionaryForAppleBalanceAccountDetails:v9];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  v13 = [(SQLiteEntity *)v12 persistentID];
  v14 = [v9 accountSummary];
  v15 = [AppleBalanceAccountSummary insertAppleBalanceAccountSummary:v14 forAppleBalanceAccountDetailsPID:v13 inDatabase:v8];

  return v12;
}

+ (id)insertOrUpdateAccountDetails:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _predicateForAccountPID:a4];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (v11)
  {
    [v11 updateWitDetails:v8];
  }

  else
  {
    v11 = [objc_alloc(objc_opt_class()) initWithAccountDetails:v8 forAccountPID:a4 inDatabase:v9];
  }

  return v11;
}

+ (void)deleteAccountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [AppleBalanceAccountSummary deleteAppleBalanceAccountSummaryForAppleBalanceAccountDetailsPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = AppleBalanceAccountDetails;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)accountDetailsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 accountDetails];

  return v9;
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForAppleBalanceAccountDetails
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_1008464E0;
  v5[1] = &stru_100846500;
  v4[2] = @"f";
  v4[3] = @"e";
  v5[2] = &stru_100846520;
  v5[3] = &stru_100846540;
  v4[4] = @"g";
  v4[5] = @"h";
  v5[4] = &stru_100846560;
  v5[5] = &stru_100846580;
  v4[6] = @"i";
  v4[7] = @"j";
  v5[6] = &stru_1008465A0;
  v5[7] = &stru_1008465C0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

- (id)accountDetails
{
  v3 = objc_alloc_init(PKAppleBalanceAccountDetails);
  v4 = [objc_opt_class() _propertySettersForAppleBalanceAccountDetails];
  v5 = [v4 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100104B04;
  v13[3] = &unk_10083BEE0;
  v13[4] = self;
  v14 = v4;
  v15 = v3;
  v6 = v3;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v13];

  v8 = [(SQLiteEntity *)self persistentID];
  v9 = [(SQLiteEntity *)self database];
  v10 = [AppleBalanceAccountSummary appleBalanceAccountSummaryForAppleBalanceAccountDetailsPID:v8 inDatabase:v9];
  [v6 setAccountSummary:v10];

  v11 = [[PKAccountDetails alloc] initWithAppleBalanceDetails:v6];

  return v11;
}

+ (id)_commonDictionaryForAppleBalanceAccountDetails:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 createdDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"c"];

  v7 = [v3 lastUpdatedDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"b"];

  v9 = [v3 currencyCode];
  [v4 setObjectOrNull:v9 forKey:@"e"];

  v10 = [v3 countryCode];
  [v4 setObjectOrNull:v10 forKey:@"f"];

  v11 = [v3 fpanIdentifier];
  [v4 setObjectOrNull:v11 forKey:@"g"];

  v12 = [v3 associatedPassSerialNumber];
  [v4 setObjectOrNull:v12 forKey:@"h"];

  v13 = [v3 associatedPassTypeIdentifier];
  [v4 setObjectOrNull:v13 forKey:@"i"];

  v14 = [v3 cardType];
  v15 = [NSNumber numberWithInteger:v14];
  [v4 setObjectOrNull:v15 forKey:@"j"];

  return v4;
}

- (void)updateWitDetails:(id)a3
{
  v8 = [a3 appleBalanceDetails];
  v4 = [objc_opt_class() _commonDictionaryForAppleBalanceAccountDetails:v8];
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [(SQLiteEntity *)self database];
  v7 = [v8 accountSummary];
  [AppleBalanceAccountSummary updateAppleBalanceAccountSummary:v7 forAppleBalanceAccountDetailsPID:v5 inDatabase:v6];

  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

@end