@interface AccountAdditionalPushTopics
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_propertySettersForAccountAdditionalPushTopics;
+ (id)accountAdditionalPushTopicsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteAccountAdditionalPushTopicsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updateAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (AccountAdditionalPushTopics)initWithAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (id)accountAdditionalPushTopics;
- (void)updateWithAccountAdditionalPushTopics:(id)a3;
@end

@implementation AccountAdditionalPushTopics

- (id)accountAdditionalPushTopics
{
  v3 = objc_alloc_init(PKAccountAdditionalPushTopics);
  v4 = [objc_opt_class() _propertySettersForAccountAdditionalPushTopics];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008114;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

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

+ (id)accountAdditionalPushTopicsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 accountAdditionalPushTopics];

  return v9;
}

- (AccountAdditionalPushTopics)initWithAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [v9 account];
  [v10 setObjectOrNull:v12 forKey:@"b"];

  v13 = [v9 extendedAccount];
  [v10 setObjectOrNull:v13 forKey:@"c"];

  v14 = [v9 payments];
  [v10 setObjectOrNull:v14 forKey:@"d"];

  v15 = [v9 users];
  [v10 setObjectOrNull:v15 forKey:@"e"];

  v16 = [v9 sharedAccountCloudStore];
  [v10 setObjectOrNull:v16 forKey:@"f"];

  v17 = [v9 applications];
  [v10 setObjectOrNull:v17 forKey:@"g"];

  v18 = [v9 physicalCards];
  [v10 setObjectOrNull:v18 forKey:@"physical_cards"];

  v19 = [v9 virtualCards];
  [v10 setObjectOrNull:v19 forKey:@"virtual_cards"];

  v20 = [v9 servicingToken];
  [v10 setObjectOrNull:v20 forKey:@"servicing_token"];

  v21 = [v9 fundingSources];
  [v10 setObjectOrNull:v21 forKey:@"funding_sources"];

  v22 = [v9 creditRecoveryPaymentPlans];

  [v10 setObjectOrNull:v22 forKey:@"recovery_payment_plans"];
  v23 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];

  return v23;
}

+ (id)insertAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithAccountAdditionalPushTopics:v9 forAccountPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deleteAccountAdditionalPushTopicsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

+ (void)updateAccountAdditionalPushTopics:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForAccountPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updateWithAccountAdditionalPushTopics:v12];
  }

  else
  {
    v11 = [AccountAdditionalPushTopics insertAccountAdditionalPushTopics:v12 forAccountPID:a4 inDatabase:v8];
  }
}

- (void)updateWithAccountAdditionalPushTopics:(id)a3
{
  v4 = a3;
  v16 = +[NSMutableDictionary dictionary];
  v5 = [v4 account];
  [v16 setObjectOrNull:v5 forKey:@"b"];

  v6 = [v4 extendedAccount];
  [v16 setObjectOrNull:v6 forKey:@"c"];

  v7 = [v4 payments];
  [v16 setObjectOrNull:v7 forKey:@"d"];

  v8 = [v4 users];
  [v16 setObjectOrNull:v8 forKey:@"e"];

  v9 = [v4 sharedAccountCloudStore];
  [v16 setObjectOrNull:v9 forKey:@"f"];

  v10 = [v4 applications];
  [v16 setObjectOrNull:v10 forKey:@"g"];

  v11 = [v4 physicalCards];
  [v16 setObjectOrNull:v11 forKey:@"physical_cards"];

  v12 = [v4 virtualCards];
  [v16 setObjectOrNull:v12 forKey:@"virtual_cards"];

  v13 = [v4 servicingToken];
  [v16 setObjectOrNull:v13 forKey:@"servicing_token"];

  v14 = [v4 fundingSources];
  [v16 setObjectOrNull:v14 forKey:@"funding_sources"];

  v15 = [v4 creditRecoveryPaymentPlans];

  [v16 setObjectOrNull:v15 forKey:@"recovery_payment_plans"];
  [(SQLiteEntity *)self setValuesWithDictionary:v16];
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end