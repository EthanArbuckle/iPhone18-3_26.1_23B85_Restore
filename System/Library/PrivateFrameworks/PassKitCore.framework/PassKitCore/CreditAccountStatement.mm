@interface CreditAccountStatement
+ (id)_predicateForCreditAccountSummaryPID:(int64_t)d;
+ (id)_predicateForEventPID:(int64_t)d;
+ (id)_propertySettersForCreditAccountStatement;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)creditAccountStatementForCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database;
+ (id)creditAccountStatementWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)creditAccountStatementsForAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)creditAccountStatementsWithEventPID:(int64_t)d inDatabase:(id)database;
+ (id)creditAccountStatementsWithIdentifier:(id)identifier withAccountIdentifier:(id)accountIdentifier inDatabase:(id)database;
+ (id)creditAccountStatementsWithIdentifier:(id)identifier withAccountIdentifiers:(id)identifiers inDatabase:(id)database;
+ (id)insertCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database;
+ (id)insertCreditAccountStatement:(id)statement forEventPID:(int64_t)d withAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)insertCreditAccountStatement:(id)statement withAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteCreditAccountStatementForCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteCreditAccountStatementForEventPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteCreditAccountStatementsForAccount:(id)account inDatabase:(id)database;
+ (void)updateCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement forEventPID:(int64_t)d withAccountIdentifier:(id)identifier inDatabase:(id)database;
- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement withAccountIdentifier:(id)identifier inDatabase:(id)database;
- (id)closingDate;
- (id)creditAccountStatement;
- (id)openingDate;
- (void)populateDictionary:(id)dictionary forStatement:(id)statement;
- (void)updateWithCreditAccountStatement:(id)statement;
@end

@implementation CreditAccountStatement

- (id)creditAccountStatement
{
  v3 = objc_alloc_init(PKCreditAccountStatement);
  _propertySettersForCreditAccountStatement = [objc_opt_class() _propertySettersForCreditAccountStatement];
  allKeys = [_propertySettersForCreditAccountStatement allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A3F0;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForCreditAccountStatement;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForCreditAccountStatement;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

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

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"a";
  }

  if (objc_opt_class() == class)
  {
    return @"t";
  }

  return 0;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  statementCopy = statement;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  [(CreditAccountStatement *)self populateDictionary:v10 forStatement:statementCopy];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v12;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement forEventPID:(int64_t)d withAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  statementCopy = statement;
  v13 = +[NSMutableDictionary dictionary];
  v14 = [NSNumber numberWithLongLong:d];
  [v13 setObjectOrNull:v14 forKey:@"s"];

  [v13 setObjectOrNull:identifierCopy forKey:@"t"];
  [(CreditAccountStatement *)self populateDictionary:v13 forStatement:statementCopy];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:databaseCopy];
  return v15;
}

- (CreditAccountStatement)initWithCreditAccountStatement:(id)statement withAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  statementCopy = statement;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObjectOrNull:identifierCopy forKey:@"t"];

  [(CreditAccountStatement *)self populateDictionary:v11 forStatement:statementCopy];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];

  return v12;
}

- (void)populateDictionary:(id)dictionary forStatement:(id)statement
{
  statementCopy = statement;
  dictionaryCopy = dictionary;
  identifier = [statementCopy identifier];
  v8 = _SQLValueForString();
  [dictionaryCopy setObject:v8 forKey:@"b"];

  openingDate = [statementCopy openingDate];
  v10 = _SQLValueForDate();
  [dictionaryCopy setObjectOrNull:v10 forKey:@"c"];

  closingDate = [statementCopy closingDate];
  v12 = _SQLValueForDate();
  [dictionaryCopy setObjectOrNull:v12 forKey:@"d"];

  paymentDueDate = [statementCopy paymentDueDate];
  v14 = _SQLValueForDate();
  [dictionaryCopy setObjectOrNull:v14 forKey:@"e"];

  currencyCode = [statementCopy currencyCode];
  v16 = _SQLValueForString();
  [dictionaryCopy setObjectOrNull:v16 forKey:@"f"];

  statementBalance = [statementCopy statementBalance];
  v18 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v18 forKey:@"g"];

  totalBalance = [statementCopy totalBalance];
  v20 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v20 forKey:@"total_balance"];

  minimumDue = [statementCopy minimumDue];
  v22 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v22 forKey:@"h"];

  purchases = [statementCopy purchases];
  v24 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v24 forKey:@"i"];

  feesCharged = [statementCopy feesCharged];
  v26 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v26 forKey:@"j"];

  interestCharged = [statementCopy interestCharged];
  v28 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v28 forKey:@"k"];

  balanceTransfers = [statementCopy balanceTransfers];
  v30 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v30 forKey:@"l"];

  paymentsAndCredits = [statementCopy paymentsAndCredits];
  v32 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v32 forKey:@"m"];

  payments = [statementCopy payments];
  v34 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v34 forKey:@"u"];

  credits = [statementCopy credits];
  v36 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v36 forKey:@"v"];

  rewardsBalance = [statementCopy rewardsBalance];
  v38 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v38 forKey:@"n"];

  rewardsEarned = [statementCopy rewardsEarned];
  v40 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v40 forKey:@"o"];

  rewardsRedeemed = [statementCopy rewardsRedeemed];
  v42 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v42 forKey:@"p"];

  rewardsYTD = [statementCopy rewardsYTD];
  v44 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v44 forKey:@"q"];

  rewardsLifetime = [statementCopy rewardsLifetime];

  v45 = PKCurrencyDecimalToStorageNumber();
  [dictionaryCopy setObjectOrNull:v45 forKey:@"r"];
}

+ (id)insertCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  statementCopy = statement;
  v10 = [[self alloc] initWithCreditAccountStatement:statementCopy forCreditAccountSummaryPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deleteCreditAccountStatementForCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForCreditAccountSummaryPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)creditAccountStatementForCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCreditAccountSummaryPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  creditAccountStatement = [v8 creditAccountStatement];

  return creditAccountStatement;
}

+ (id)insertCreditAccountStatement:(id)statement forEventPID:(int64_t)d withAccountIdentifier:(id)identifier inDatabase:(id)database
{
  statementCopy = statement;
  identifierCopy = identifier;
  databaseCopy = database;
  identifier = [statementCopy identifier];
  v14 = [self creditAccountStatementsWithIdentifier:identifier withAccountIdentifier:identifierCopy inDatabase:databaseCopy];

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

    v22 = [NSNumber numberWithLongLong:d];
    [v18 setValue:v22 forProperty:@"s"];

    [v18 updateWithCreditAccountStatement:statementCopy];
  }

  else
  {
    v18 = [[self alloc] initWithCreditAccountStatement:statementCopy forEventPID:d withAccountIdentifier:identifierCopy inDatabase:databaseCopy];
  }

  return v18;
}

+ (void)deleteCreditAccountStatementForEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForEventPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  v3 = [(SQLiteEntity *)self valueForProperty:@"b"];
  v4 = [(SQLiteEntity *)selfCopy valueForProperty:@"t"];
  database = [(SQLiteEntity *)selfCopy database];
  [AccountStatementMetadata deleteAccountStatementMetadataForStatementIdentifier:v3 accountIdentifier:v4 inDatabase:database];

  v7.receiver = selfCopy;
  v7.super_class = CreditAccountStatement;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v7 deleteFromDatabase];

  return selfCopy;
}

+ (id)creditAccountStatementsWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10018EDE0;
  v18 = &unk_10083CBC0;
  v19 = databaseCopy;
  v20 = v9;
  v11 = v9;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)creditAccountStatementsForAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = +[NSMutableSet set];
  v21 = @"pid";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10018EFE0;
  v18 = &unk_10083CBC0;
  v19 = databaseCopy;
  v20 = v9;
  v11 = v9;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)insertCreditAccountStatement:(id)statement withAccountIdentifier:(id)identifier inDatabase:(id)database
{
  statementCopy = statement;
  identifierCopy = identifier;
  databaseCopy = database;
  identifier = [statementCopy identifier];
  v12 = [self creditAccountStatementsWithIdentifier:identifier withAccountIdentifier:identifierCopy inDatabase:databaseCopy];

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

    [v16 updateWithCreditAccountStatement:statementCopy];
  }

  else
  {
    v16 = [[self alloc] initWithCreditAccountStatement:statementCopy withAccountIdentifier:identifierCopy inDatabase:databaseCopy];
  }

  return v16;
}

+ (id)creditAccountStatementsWithIdentifier:(id)identifier withAccountIdentifier:(id)accountIdentifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  v10 = [NSSet setWithObject:accountIdentifier];
  v11 = [self creditAccountStatementsWithIdentifier:identifierCopy withAccountIdentifiers:v10 inDatabase:databaseCopy];

  return v11;
}

+ (id)creditAccountStatementsWithIdentifier:(id)identifier withAccountIdentifiers:(id)identifiers inDatabase:(id)database
{
  databaseCopy = database;
  identifiersCopy = identifiers;
  v10 = [self _predicateForIdentifier:identifier];
  v28[0] = v10;
  v11 = [self _predicateForAccountIdentifiers:identifiersCopy];

  v28[1] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [self queryWithDatabase:databaseCopy predicate:v13];
  v15 = +[NSMutableSet set];
  v27 = @"pid";
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10018F4B8;
  v24 = &unk_10083CBC0;
  v25 = databaseCopy;
  v26 = v15;
  v17 = v15;
  v18 = databaseCopy;
  [v14 enumeratePersistentIDsAndProperties:v16 usingBlock:&v21];

  v19 = [v17 copy];

  return v19;
}

+ (id)creditAccountStatementWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (void)deleteCreditAccountStatementsForAccount:(id)account inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForAccountIdentifier:account];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)updateCreditAccountStatement:(id)statement forCreditAccountSummaryPID:(int64_t)d inDatabase:(id)database
{
  statementCopy = statement;
  databaseCopy = database;
  v9 = [self _predicateForCreditAccountSummaryPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updateWithCreditAccountStatement:statementCopy];
  }

  else
  {
    v11 = [CreditAccountStatement insertCreditAccountStatement:statementCopy forCreditAccountSummaryPID:d inDatabase:databaseCopy];
  }
}

- (void)updateWithCreditAccountStatement:(id)statement
{
  statementCopy = statement;
  v45 = +[NSMutableDictionary dictionary];
  identifier = [statementCopy identifier];
  v6 = _SQLValueForString();
  [v45 setObject:v6 forKey:@"b"];

  openingDate = [statementCopy openingDate];
  v8 = _SQLValueForDate();
  [v45 setObjectOrNull:v8 forKey:@"c"];

  closingDate = [statementCopy closingDate];
  v10 = _SQLValueForDate();
  [v45 setObjectOrNull:v10 forKey:@"d"];

  paymentDueDate = [statementCopy paymentDueDate];
  v12 = _SQLValueForDate();
  [v45 setObjectOrNull:v12 forKey:@"e"];

  currencyCode = [statementCopy currencyCode];
  v14 = _SQLValueForString();
  [v45 setObjectOrNull:v14 forKey:@"f"];

  statementBalance = [statementCopy statementBalance];
  v16 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v16 forKey:@"g"];

  totalBalance = [statementCopy totalBalance];
  v18 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v18 forKey:@"total_balance"];

  minimumDue = [statementCopy minimumDue];
  v20 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v20 forKey:@"h"];

  purchases = [statementCopy purchases];
  v22 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v22 forKey:@"i"];

  feesCharged = [statementCopy feesCharged];
  v24 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v24 forKey:@"j"];

  interestCharged = [statementCopy interestCharged];
  v26 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v26 forKey:@"k"];

  balanceTransfers = [statementCopy balanceTransfers];
  v28 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v28 forKey:@"l"];

  paymentsAndCredits = [statementCopy paymentsAndCredits];
  v30 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v30 forKey:@"m"];

  payments = [statementCopy payments];
  v32 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v32 forKey:@"u"];

  credits = [statementCopy credits];
  v34 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v34 forKey:@"v"];

  rewardsBalance = [statementCopy rewardsBalance];
  v36 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v36 forKey:@"n"];

  rewardsEarned = [statementCopy rewardsEarned];
  v38 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v38 forKey:@"o"];

  rewardsRedeemed = [statementCopy rewardsRedeemed];
  v40 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v40 forKey:@"p"];

  rewardsYTD = [statementCopy rewardsYTD];
  v42 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v42 forKey:@"q"];

  rewardsLifetime = [statementCopy rewardsLifetime];

  v44 = [NSNumber numberWithLongLong:PKCurrencyDecimalToStorageInteger()];
  [v45 setObjectOrNull:v44 forKey:@"r"];

  [(SQLiteEntity *)self setValuesWithDictionary:v45];
}

+ (id)_predicateForCreditAccountSummaryPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForEventPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
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