@interface AppleBalanceAccountDetails
+ (id)_commonDictionaryForAppleBalanceAccountDetails:(id)details;
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_propertySettersForAppleBalanceAccountDetails;
+ (id)accountDetailsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrUpdateAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAccountDetailsForAccountPID:(int64_t)d inDatabase:(id)database;
- (AppleBalanceAccountDetails)initWithAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)accountDetails;
- (void)updateWitDetails:(id)details;
@end

@implementation AppleBalanceAccountDetails

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"a";
  }

  else
  {
    return 0;
  }
}

- (AppleBalanceAccountDetails)initWithAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  appleBalanceDetails = [details appleBalanceDetails];
  v10 = [objc_opt_class() _commonDictionaryForAppleBalanceAccountDetails:appleBalanceDetails];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  persistentID = [(SQLiteEntity *)v12 persistentID];
  accountSummary = [appleBalanceDetails accountSummary];
  v15 = [AppleBalanceAccountSummary insertAppleBalanceAccountSummary:accountSummary forAppleBalanceAccountDetailsPID:persistentID inDatabase:databaseCopy];

  return v12;
}

+ (id)insertOrUpdateAccountDetails:(id)details forAccountPID:(int64_t)d inDatabase:(id)database
{
  detailsCopy = details;
  databaseCopy = database;
  v10 = [self _predicateForAccountPID:d];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v11)
  {
    [v11 updateWitDetails:detailsCopy];
  }

  else
  {
    v11 = [objc_alloc(objc_opt_class()) initWithAccountDetails:detailsCopy forAccountPID:d inDatabase:databaseCopy];
  }

  return v11;
}

+ (void)deleteAccountDetailsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [AppleBalanceAccountSummary deleteAppleBalanceAccountSummaryForAppleBalanceAccountDetailsPID:persistentID inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = AppleBalanceAccountDetails;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)accountDetailsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  accountDetails = [v8 accountDetails];

  return accountDetails;
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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
  _propertySettersForAppleBalanceAccountDetails = [objc_opt_class() _propertySettersForAppleBalanceAccountDetails];
  allKeys = [_propertySettersForAppleBalanceAccountDetails allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100104B04;
  v13[3] = &unk_10083BEE0;
  v13[4] = self;
  v14 = _propertySettersForAppleBalanceAccountDetails;
  v15 = v3;
  v6 = v3;
  v7 = _propertySettersForAppleBalanceAccountDetails;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v13];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [AppleBalanceAccountSummary appleBalanceAccountSummaryForAppleBalanceAccountDetailsPID:persistentID inDatabase:database];
  [v6 setAccountSummary:v10];

  v11 = [[PKAccountDetails alloc] initWithAppleBalanceDetails:v6];

  return v11;
}

+ (id)_commonDictionaryForAppleBalanceAccountDetails:(id)details
{
  detailsCopy = details;
  v4 = objc_alloc_init(NSMutableDictionary);
  createdDate = [detailsCopy createdDate];
  v6 = _SQLValueForDate();
  [v4 setObjectOrNull:v6 forKey:@"c"];

  lastUpdatedDate = [detailsCopy lastUpdatedDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"b"];

  currencyCode = [detailsCopy currencyCode];
  [v4 setObjectOrNull:currencyCode forKey:@"e"];

  countryCode = [detailsCopy countryCode];
  [v4 setObjectOrNull:countryCode forKey:@"f"];

  fpanIdentifier = [detailsCopy fpanIdentifier];
  [v4 setObjectOrNull:fpanIdentifier forKey:@"g"];

  associatedPassSerialNumber = [detailsCopy associatedPassSerialNumber];
  [v4 setObjectOrNull:associatedPassSerialNumber forKey:@"h"];

  associatedPassTypeIdentifier = [detailsCopy associatedPassTypeIdentifier];
  [v4 setObjectOrNull:associatedPassTypeIdentifier forKey:@"i"];

  cardType = [detailsCopy cardType];
  v15 = [NSNumber numberWithInteger:cardType];
  [v4 setObjectOrNull:v15 forKey:@"j"];

  return v4;
}

- (void)updateWitDetails:(id)details
{
  appleBalanceDetails = [details appleBalanceDetails];
  v4 = [objc_opt_class() _commonDictionaryForAppleBalanceAccountDetails:appleBalanceDetails];
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  accountSummary = [appleBalanceDetails accountSummary];
  [AppleBalanceAccountSummary updateAppleBalanceAccountSummary:accountSummary forAppleBalanceAccountDetailsPID:persistentID inDatabase:database];

  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

@end