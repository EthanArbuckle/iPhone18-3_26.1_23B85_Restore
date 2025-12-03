@interface AccountRewards
+ (id)_predicateForEventPID:(int64_t)d;
+ (id)_propertySettersForAccountRewards;
+ (id)insertRewards:(id)rewards forEventPID:(int64_t)d inDatabase:(id)database;
+ (id)rewardsWithEventPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteRewardsWithEventPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)currencyAmount;
- (id)rewards;
@end

@implementation AccountRewards

+ (id)rewardsWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B710;
  v18 = &unk_10083CBC0;
  v19 = databaseCopy;
  v20 = v9;
  v11 = v9;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertRewards:(id)rewards forEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  rewardsCopy = rewards;
  v10 = +[NSMutableDictionary dictionary];
  currencyAmount = [rewardsCopy currencyAmount];
  amount = [currencyAmount amount];
  v13 = PKCurrencyDecimalToStorageNumber();

  identifier = [rewardsCopy identifier];
  [v10 setObjectOrNull:identifier forKey:@"b"];

  [v10 setObjectOrNull:v13 forKey:@"c"];
  currencyAmount2 = [rewardsCopy currencyAmount];
  currency = [currencyAmount2 currency];
  [v10 setObjectOrNull:currency forKey:@"d"];

  status = [rewardsCopy status];
  [v10 setObjectOrNull:status forKey:@"f"];

  [v10 setInteger:objc_msgSend(rewardsCopy forKey:{"type"), @"e"}];
  [v10 setInteger:objc_msgSend(rewardsCopy forKey:{"statusCode"), @"g"}];
  v18 = [NSNumber numberWithLongLong:d];
  [v10 setObject:v18 forKey:@"a"];

  v19 = [[self alloc] initWithPropertyValues:v10 inDatabase:databaseCopy];
  persistentID = [v19 persistentID];
  transactionIdentifiers = [rewardsCopy transactionIdentifiers];
  [(AccountRewardsIdentifier *)AccountRewardsTransactionIdentifier insertIdentifiers:transactionIdentifiers forAccountRewardsPID:persistentID inDatabase:databaseCopy];

  rewardsAddedIdentifiers = [rewardsCopy rewardsAddedIdentifiers];
  [(AccountRewardsIdentifier *)AccountRewardsRewardsAddedIdentifier insertIdentifiers:rewardsAddedIdentifiers forAccountRewardsPID:persistentID inDatabase:databaseCopy];

  rewards = [rewardsCopy rewards];

  [PaymentTransactionReward updatePaymentTransactionRewards:rewards forAccountRewardsPID:persistentID inDatabase:databaseCopy];

  return v19;
}

- (id)rewards
{
  v3 = objc_alloc_init(PKAccountRewards);
  v4 = +[AccountRewards _propertySettersForAccountRewards];
  allKeys = [v4 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007BBB8;
  v13[3] = &unk_10083BEE0;
  v14 = v4;
  v6 = v3;
  v15 = v6;
  selfCopy = self;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v13];

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

+ (void)deleteRewardsWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

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
  deleteFromDatabase = [(SQLiteEntity *)&v8 deleteFromDatabase];

  return deleteFromDatabase;
}

+ (id)_predicateForEventPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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