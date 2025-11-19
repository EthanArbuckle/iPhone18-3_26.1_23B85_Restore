@interface CreditAccountStatement
+ (id)_predicateForCreditAccountSummaryPID:(int64_t)a3;
+ (id)_predicateForEventPID:(int64_t)a3;
+ (id)_propertySettersForCreditAccountStatement;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)creditAccountStatementForCreditAccountSummaryPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)creditAccountStatementWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)creditAccountStatementsForAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)creditAccountStatementsWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)creditAccountStatementsWithIdentifier:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5;
+ (id)creditAccountStatementsWithIdentifier:(id)a3 withAccountIdentifiers:(id)a4 inDatabase:(id)a5;
+ (id)insertCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)insertCreditAccountStatement:(id)a3 forEventPID:(int64_t)a4 withAccountIdentifier:(id)a5 inDatabase:(id)a6;
+ (id)insertCreditAccountStatement:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5;
+ (void)deleteCreditAccountStatementForCreditAccountSummaryPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteCreditAccountStatementForEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteCreditAccountStatementsForAccount:(id)a3 inDatabase:(id)a4;
+ (void)updateCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 forEventPID:(int64_t)a4 withAccountIdentifier:(id)a5 inDatabase:(id)a6;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5;
- (id)closingDate;
- (id)creditAccountStatement;
- (id)openingDate;
- (void)populateDictionary:(id)a3 forStatement:(id)a4;
- (void)updateWithCreditAccountStatement:(id)a3;
@end

@implementation CreditAccountStatement

- (id)creditAccountStatement
{
  v3 = objc_alloc_init(PKCreditAccountStatement);
  v4 = [objc_opt_class() _propertySettersForCreditAccountStatement];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A3F0;
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

+ (id)_propertySettersForCreditAccountStatement
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_10084A5B0;
  v5[1] = &stru_10084A5D0;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_10084A5F0;
  v5[3] = &stru_10084A610;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_10084A630;
  v5[5] = &stru_10084A650;
  v4[6] = @"total_balance";
  v4[7] = @"h";
  v5[6] = &stru_10084A670;
  v5[7] = &stru_10084A690;
  v4[8] = @"i";
  v4[9] = @"j";
  v5[8] = &stru_10084A6B0;
  v5[9] = &stru_10084A6D0;
  v4[10] = @"k";
  v4[11] = @"l";
  v5[10] = &stru_10084A6F0;
  v5[11] = &stru_10084A710;
  v4[12] = @"m";
  v4[13] = @"u";
  v5[12] = &stru_10084A730;
  v5[13] = &stru_10084A750;
  v4[14] = @"v";
  v4[15] = @"n";
  v5[14] = &stru_10084A770;
  v5[15] = &stru_10084A790;
  v4[16] = @"o";
  v4[17] = @"p";
  v5[16] = &stru_10084A7B0;
  v5[17] = &stru_10084A7D0;
  v4[18] = @"q";
  v4[19] = @"r";
  v5[18] = &stru_10084A7F0;
  v5[19] = &stru_10084A810;
  v4[20] = @"t";
  v5[20] = &stru_10084A830;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:21];

  return v2;
}

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"a";
  }

  if (objc_opt_class() == a3)
  {
    return @"t";
  }

  return 0;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  [(CreditAccountStatement *)self populateDictionary:v10 forStatement:v9];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];

  return v12;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 forEventPID:(int64_t)a4 withAccountIdentifier:(id)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = +[NSMutableDictionary dictionary];
  v14 = [NSNumber numberWithLongLong:a4];
  [v13 setObjectOrNull:v14 forKey:@"s"];

  [v13 setObjectOrNull:v11 forKey:@"t"];
  [(CreditAccountStatement *)self populateDictionary:v13 forStatement:v12];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:v10];
  return v15;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObjectOrNull:v9 forKey:@"t"];

  [(CreditAccountStatement *)self populateDictionary:v11 forStatement:v10];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];

  return v12;
}

- (void)populateDictionary:(id)a3 forStatement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identifier];
  v8 = _SQLValueForString();
  [v6 setObject:v8 forKey:@"b"];

  v9 = [v5 openingDate];
  v10 = _SQLValueForDate();
  [v6 setObjectOrNull:v10 forKey:@"c"];

  v11 = [v5 closingDate];
  v12 = _SQLValueForDate();
  [v6 setObjectOrNull:v12 forKey:@"d"];

  v13 = [v5 paymentDueDate];
  v14 = _SQLValueForDate();
  [v6 setObjectOrNull:v14 forKey:@"e"];

  v15 = [v5 currencyCode];
  v16 = _SQLValueForString();
  [v6 setObjectOrNull:v16 forKey:@"f"];

  v17 = [v5 statementBalance];
  v18 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v18 forKey:@"g"];

  v19 = [v5 totalBalance];
  v20 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v20 forKey:@"total_balance"];

  v21 = [v5 minimumDue];
  v22 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v22 forKey:@"h"];

  v23 = [v5 purchases];
  v24 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v24 forKey:@"i"];

  v25 = [v5 feesCharged];
  v26 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v26 forKey:@"j"];

  v27 = [v5 interestCharged];
  v28 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v28 forKey:@"k"];

  v29 = [v5 balanceTransfers];
  v30 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v30 forKey:@"l"];

  v31 = [v5 paymentsAndCredits];
  v32 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v32 forKey:@"m"];

  v33 = [v5 payments];
  v34 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v34 forKey:@"u"];

  v35 = [v5 credits];
  v36 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v36 forKey:@"v"];

  v37 = [v5 rewardsBalance];
  v38 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v38 forKey:@"n"];

  v39 = [v5 rewardsEarned];
  v40 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v40 forKey:@"o"];

  v41 = [v5 rewardsRedeemed];
  v42 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v42 forKey:@"p"];

  v43 = [v5 rewardsYTD];
  v44 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v44 forKey:@"q"];

  v46 = [v5 rewardsLifetime];

  v45 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v45 forKey:@"r"];
}

+ (id)insertCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithCreditAccountStatement:v9 forCreditAccountSummaryPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deleteCreditAccountStatementForCreditAccountSummaryPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForCreditAccountSummaryPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)creditAccountStatementForCreditAccountSummaryPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCreditAccountSummaryPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 creditAccountStatement];

  return v9;
}

+ (id)insertCreditAccountStatement:(id)a3 forEventPID:(int64_t)a4 withAccountIdentifier:(id)a5 inDatabase:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 identifier];
  v14 = [a1 creditAccountStatementsWithIdentifier:v13 withAccountIdentifier:v11 inDatabase:v12];

  if ([v14 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v25;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          if (v18)
          {
            [v21 deleteFromDatabase];
          }

          else
          {
            v18 = v21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v22 = [NSNumber numberWithLongLong:a4];
    [v18 setValue:v22 forProperty:@"s"];

    [v18 updateWithCreditAccountStatement:v10];
  }

  else
  {
    v18 = [[a1 alloc] initWithCreditAccountStatement:v10 forEventPID:a4 withAccountIdentifier:v11 inDatabase:v12];
  }

  return v18;
}

+ (void)deleteCreditAccountStatementForEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForEventPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self valueForProperty:@"b"];
  v4 = [(SQLiteEntity *)v2 valueForProperty:@"t"];
  v5 = [(SQLiteEntity *)v2 database];
  [AccountStatementMetadata deleteAccountStatementMetadataForStatementIdentifier:v3 accountIdentifier:v4 inDatabase:v5];

  v7.receiver = v2;
  v7.super_class = CreditAccountStatement;
  LOBYTE(v2) = [(SQLiteEntity *)&v7 deleteFromDatabase];

  return v2;
}

+ (id)creditAccountStatementsWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10018EDE0;
  v18 = &unk_10083CBC0;
  v19 = v6;
  v20 = v9;
  v11 = v9;
  v12 = v6;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)creditAccountStatementsForAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10018EFE0;
  v18 = &unk_10083CBC0;
  v19 = v6;
  v20 = v9;
  v11 = v9;
  v12 = v6;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertCreditAccountStatement:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = [a1 creditAccountStatementsWithIdentifier:v11 withAccountIdentifier:v9 inDatabase:v10];

  if ([v12 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v22;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if (v16)
          {
            [v19 deleteFromDatabase];
          }

          else
          {
            v16 = v19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    [v16 updateWithCreditAccountStatement:v8];
  }

  else
  {
    v16 = [[a1 alloc] initWithCreditAccountStatement:v8 withAccountIdentifier:v9 inDatabase:v10];
  }

  return v16;
}

+ (id)creditAccountStatementsWithIdentifier:(id)a3 withAccountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [NSSet setWithObject:a4];
  v11 = [a1 creditAccountStatementsWithIdentifier:v9 withAccountIdentifiers:v10 inDatabase:v8];

  return v11;
}

+ (id)creditAccountStatementsWithIdentifier:(id)a3 withAccountIdentifiers:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _predicateForIdentifier:a3];
  v28[0] = v10;
  v11 = [a1 _predicateForAccountIdentifiers:v9];

  v28[1] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [a1 queryWithDatabase:v8 predicate:v13];
  v15 = +[NSMutableSet set];
  v27 = @"pid";
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10018F4B8;
  v24 = &unk_10083CBC0;
  v25 = v8;
  v26 = v15;
  v17 = v15;
  v18 = v8;
  [v14 enumeratePersistentIDsAndProperties:v16 usingBlock:&v21];

  v19 = [v17 copy];

  return v19;
}

+ (id)creditAccountStatementWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (void)deleteCreditAccountStatementsForAccount:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForAccountIdentifier:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)updateCreditAccountStatement:(id)a3 forCreditAccountSummaryPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForCreditAccountSummaryPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updateWithCreditAccountStatement:v12];
  }

  else
  {
    v11 = [CreditAccountStatement insertCreditAccountStatement:v12 forCreditAccountSummaryPID:a4 inDatabase:v8];
  }
}

- (void)updateWithCreditAccountStatement:(id)a3
{
  v4 = a3;
  v45 = +[NSMutableDictionary dictionary];
  v5 = [v4 identifier];
  v6 = _SQLValueForString();
  [v45 setObject:v6 forKey:@"b"];

  v7 = [v4 openingDate];
  v8 = _SQLValueForDate();
  [v45 setObjectOrNull:v8 forKey:@"c"];

  v9 = [v4 closingDate];
  v10 = _SQLValueForDate();
  [v45 setObjectOrNull:v10 forKey:@"d"];

  v11 = [v4 paymentDueDate];
  v12 = _SQLValueForDate();
  [v45 setObjectOrNull:v12 forKey:@"e"];

  v13 = [v4 currencyCode];
  v14 = _SQLValueForString();
  [v45 setObjectOrNull:v14 forKey:@"f"];

  v15 = [v4 statementBalance];
  v16 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v16 forKey:@"g"];

  v17 = [v4 totalBalance];
  v18 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v18 forKey:@"total_balance"];

  v19 = [v4 minimumDue];
  v20 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v20 forKey:@"h"];

  v21 = [v4 purchases];
  v22 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v22 forKey:@"i"];

  v23 = [v4 feesCharged];
  v24 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v24 forKey:@"j"];

  v25 = [v4 interestCharged];
  v26 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v26 forKey:@"k"];

  v27 = [v4 balanceTransfers];
  v28 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v28 forKey:@"l"];

  v29 = [v4 paymentsAndCredits];
  v30 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v30 forKey:@"m"];

  v31 = [v4 payments];
  v32 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v32 forKey:@"u"];

  v33 = [v4 credits];
  v34 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v34 forKey:@"v"];

  v35 = [v4 rewardsBalance];
  v36 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v36 forKey:@"n"];

  v37 = [v4 rewardsEarned];
  v38 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v38 forKey:@"o"];

  v39 = [v4 rewardsRedeemed];
  v40 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v40 forKey:@"p"];

  v41 = [v4 rewardsYTD];
  v42 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v42 forKey:@"q"];

  v43 = [v4 rewardsLifetime];

  v44 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v44 forKey:@"r"];

  [(SQLiteEntity *)self setValuesWithDictionary:v45];
}

+ (id)_predicateForCreditAccountSummaryPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForEventPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"s" equalToValue:v3];

  return v4;
}

- (id)openingDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"c"];
  v3 = _DateForSQLValue();

  return v3;
}

- (id)closingDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"d"];
  v3 = _DateForSQLValue();

  return v3;
}

@end