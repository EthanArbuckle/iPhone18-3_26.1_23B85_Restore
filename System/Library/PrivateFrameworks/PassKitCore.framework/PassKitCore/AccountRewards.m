@interface AccountRewards
+ (id)_predicateForEventPID:(int64_t)a3;
+ (id)_propertySettersForAccountRewards;
+ (id)insertRewards:(id)a3 forEventPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)rewardsWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteRewardsWithEventPID:(int64_t)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (id)currencyAmount;
- (id)rewards;
@end

@implementation AccountRewards

+ (id)rewardsWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B710;
  v18 = &unk_10083CBC0;
  v19 = v6;
  v20 = v9;
  v11 = v9;
  v12 = v6;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertRewards:(id)a3 forEventPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [v9 currencyAmount];
  v12 = [v11 amount];
  v13 = PKCurrencyDecimalToStorageNumber();

  v14 = [v9 identifier];
  [v10 setObjectOrNull:v14 forKey:@"b"];

  [v10 setObjectOrNull:v13 forKey:@"c"];
  v15 = [v9 currencyAmount];
  v16 = [v15 currency];
  [v10 setObjectOrNull:v16 forKey:@"d"];

  v17 = [v9 status];
  [v10 setObjectOrNull:v17 forKey:@"f"];

  [v10 setInteger:objc_msgSend(v9 forKey:{"type"), @"e"}];
  [v10 setInteger:objc_msgSend(v9 forKey:{"statusCode"), @"g"}];
  v18 = [NSNumber numberWithLongLong:a4];
  [v10 setObject:v18 forKey:@"a"];

  v19 = [[a1 alloc] initWithPropertyValues:v10 inDatabase:v8];
  v20 = [v19 persistentID];
  v21 = [v9 transactionIdentifiers];
  [(AccountRewardsIdentifier *)AccountRewardsTransactionIdentifier insertIdentifiers:v21 forAccountRewardsPID:v20 inDatabase:v8];

  v22 = [v9 rewardsAddedIdentifiers];
  [(AccountRewardsIdentifier *)AccountRewardsRewardsAddedIdentifier insertIdentifiers:v22 forAccountRewardsPID:v20 inDatabase:v8];

  v23 = [v9 rewards];

  [PaymentTransactionReward updatePaymentTransactionRewards:v23 forAccountRewardsPID:v20 inDatabase:v8];

  return v19;
}

- (id)rewards
{
  v3 = objc_alloc_init(PKAccountRewards);
  v4 = +[AccountRewards _propertySettersForAccountRewards];
  v5 = [v4 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007BBB8;
  v13[3] = &unk_10083BEE0;
  v14 = v4;
  v6 = v3;
  v15 = v6;
  v16 = self;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v13];

  v8 = [(AccountRewardsIdentifier *)AccountRewardsTransactionIdentifier identifiersWithAccountRewardsPID:self->super._persistentID inDatabase:self->super._database];
  [v6 setTransactionIdentifiers:v8];

  v9 = [(AccountRewardsIdentifier *)AccountRewardsRewardsAddedIdentifier identifiersWithAccountRewardsPID:self->super._persistentID inDatabase:self->super._database];
  [v6 setRewardsAddedIdentifiers:v9];

  v10 = [PaymentTransactionReward paymentTransactionRewardsInDatabase:self->super._database forAccountRewardsPID:self->super._persistentID];
  [v6 setRewards:v10];

  v11 = v6;
  return v6;
}

- (id)currencyAmount
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"c"];
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();

  v5 = [(SQLiteEntity *)self valueForProperty:@"d"];
  if (v4)
  {
    v6 = +[NSDecimalNumber notANumber];
    v7 = [v4 isEqualToNumber:v6];

    v8 = 0;
    if ((v7 & 1) == 0 && v5)
    {
      v8 = [[PKCurrencyAmount alloc] initWithAmount:v4 currency:v5 exponent:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)deleteRewardsWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  [(AccountRewardsIdentifier *)AccountRewardsTransactionIdentifier deleteIdentifiersWithAccountRewardsPID:self->super._persistentID inDatabase:self->super._database];
  [(AccountRewardsIdentifier *)AccountRewardsRewardsAddedIdentifier deleteIdentifiersWithAccountRewardsPID:self->super._persistentID inDatabase:self->super._database];
  v3 = [(SQLiteEntity *)self valueForProperty:@"b"];
  v4 = [PaymentTransaction anyInDatabase:self->super._database withReferenceIdentifier:v3];
  v5 = v4;
  if (v4 && [v4 transactionType] != 14)
  {
    [v5 setValue:&off_1008A2930 forProperty:@"ac"];
  }

  v8.receiver = self;
  v8.super_class = AccountRewards;
  v6 = [(SQLiteEntity *)&v8 deleteFromDatabase];

  return v6;
}

+ (id)_predicateForEventPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForAccountRewards
{
  v4[0] = @"b";
  v4[1] = @"e";
  v5[0] = &stru_100840B48;
  v5[1] = &stru_100840B68;
  v4[2] = @"f";
  v4[3] = @"g";
  v5[2] = &stru_100840B88;
  v5[3] = &stru_100840BA8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end