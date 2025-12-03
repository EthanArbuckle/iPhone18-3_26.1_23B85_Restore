@interface AccountAdditionalPushTopics
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_propertySettersForAccountAdditionalPushTopics;
+ (id)accountAdditionalPushTopicsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAccountAdditionalPushTopicsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)updateAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database;
- (AccountAdditionalPushTopics)initWithAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database;
- (id)accountAdditionalPushTopics;
- (void)updateWithAccountAdditionalPushTopics:(id)topics;
@end

@implementation AccountAdditionalPushTopics

- (id)accountAdditionalPushTopics
{
  v3 = objc_alloc_init(PKAccountAdditionalPushTopics);
  _propertySettersForAccountAdditionalPushTopics = [objc_opt_class() _propertySettersForAccountAdditionalPushTopics];
  allKeys = [_propertySettersForAccountAdditionalPushTopics allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008114;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForAccountAdditionalPushTopics;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForAccountAdditionalPushTopics;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_propertySettersForAccountAdditionalPushTopics
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_1008466E0;
  v5[1] = &stru_100846700;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100846720;
  v5[3] = &stru_100846740;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_100846760;
  v5[5] = &stru_100846780;
  v4[6] = @"physical_cards";
  v4[7] = @"virtual_cards";
  v5[6] = &stru_1008467A0;
  v5[7] = &stru_1008467C0;
  v4[8] = @"servicing_token";
  v4[9] = @"funding_sources";
  v5[8] = &stru_1008467E0;
  v5[9] = &stru_100846800;
  v4[10] = @"recovery_payment_plans";
  v5[10] = &stru_100846820;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:11];

  return v2;
}

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

+ (id)accountAdditionalPushTopicsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  accountAdditionalPushTopics = [v8 accountAdditionalPushTopics];

  return accountAdditionalPushTopics;
}

- (AccountAdditionalPushTopics)initWithAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  topicsCopy = topics;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  account = [topicsCopy account];
  [v10 setObjectOrNull:account forKey:@"b"];

  extendedAccount = [topicsCopy extendedAccount];
  [v10 setObjectOrNull:extendedAccount forKey:@"c"];

  payments = [topicsCopy payments];
  [v10 setObjectOrNull:payments forKey:@"d"];

  users = [topicsCopy users];
  [v10 setObjectOrNull:users forKey:@"e"];

  sharedAccountCloudStore = [topicsCopy sharedAccountCloudStore];
  [v10 setObjectOrNull:sharedAccountCloudStore forKey:@"f"];

  applications = [topicsCopy applications];
  [v10 setObjectOrNull:applications forKey:@"g"];

  physicalCards = [topicsCopy physicalCards];
  [v10 setObjectOrNull:physicalCards forKey:@"physical_cards"];

  virtualCards = [topicsCopy virtualCards];
  [v10 setObjectOrNull:virtualCards forKey:@"virtual_cards"];

  servicingToken = [topicsCopy servicingToken];
  [v10 setObjectOrNull:servicingToken forKey:@"servicing_token"];

  fundingSources = [topicsCopy fundingSources];
  [v10 setObjectOrNull:fundingSources forKey:@"funding_sources"];

  creditRecoveryPaymentPlans = [topicsCopy creditRecoveryPaymentPlans];

  [v10 setObjectOrNull:creditRecoveryPaymentPlans forKey:@"recovery_payment_plans"];
  v23 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v23;
}

+ (id)insertAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  topicsCopy = topics;
  v10 = [[self alloc] initWithAccountAdditionalPushTopics:topicsCopy forAccountPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deleteAccountAdditionalPushTopicsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updateAccountAdditionalPushTopics:(id)topics forAccountPID:(int64_t)d inDatabase:(id)database
{
  topicsCopy = topics;
  databaseCopy = database;
  v9 = [self _predicateForAccountPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updateWithAccountAdditionalPushTopics:topicsCopy];
  }

  else
  {
    v11 = [AccountAdditionalPushTopics insertAccountAdditionalPushTopics:topicsCopy forAccountPID:d inDatabase:databaseCopy];
  }
}

- (void)updateWithAccountAdditionalPushTopics:(id)topics
{
  topicsCopy = topics;
  v16 = +[NSMutableDictionary dictionary];
  account = [topicsCopy account];
  [v16 setObjectOrNull:account forKey:@"b"];

  extendedAccount = [topicsCopy extendedAccount];
  [v16 setObjectOrNull:extendedAccount forKey:@"c"];

  payments = [topicsCopy payments];
  [v16 setObjectOrNull:payments forKey:@"d"];

  users = [topicsCopy users];
  [v16 setObjectOrNull:users forKey:@"e"];

  sharedAccountCloudStore = [topicsCopy sharedAccountCloudStore];
  [v16 setObjectOrNull:sharedAccountCloudStore forKey:@"f"];

  applications = [topicsCopy applications];
  [v16 setObjectOrNull:applications forKey:@"g"];

  physicalCards = [topicsCopy physicalCards];
  [v16 setObjectOrNull:physicalCards forKey:@"physical_cards"];

  virtualCards = [topicsCopy virtualCards];
  [v16 setObjectOrNull:virtualCards forKey:@"virtual_cards"];

  servicingToken = [topicsCopy servicingToken];
  [v16 setObjectOrNull:servicingToken forKey:@"servicing_token"];

  fundingSources = [topicsCopy fundingSources];
  [v16 setObjectOrNull:fundingSources forKey:@"funding_sources"];

  creditRecoveryPaymentPlans = [topicsCopy creditRecoveryPaymentPlans];

  [v16 setObjectOrNull:creditRecoveryPaymentPlans forKey:@"recovery_payment_plans"];
  [(SQLiteEntity *)self setValuesWithDictionary:v16];
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end