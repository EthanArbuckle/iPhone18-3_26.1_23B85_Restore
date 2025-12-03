@interface CreditAccountSummary
+ (id)_predicateForCreditAccountDetailsPID:(int64_t)d;
+ (id)_propertySettersForCreditAccountSummary;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)creditAccountSummaryForCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database;
+ (id)insertAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteCreditAccountSummaryForCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database;
+ (void)updateCreditAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (CreditAccountSummary)initWithCreditAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database;
- (id)creditAccountSummary;
- (void)updateWithCreditAccountSummary:(id)summary;
@end

@implementation CreditAccountSummary

- (id)creditAccountSummary
{
  v3 = objc_alloc_init(PKCreditAccountSummary);
  _propertySettersForCreditAccountSummary = [objc_opt_class() _propertySettersForCreditAccountSummary];
  allKeys = [_propertySettersForCreditAccountSummary allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009074;
  v18[3] = &unk_10083BEE0;
  v18[4] = self;
  v19 = _propertySettersForCreditAccountSummary;
  v6 = v3;
  v20 = v6;
  v7 = _propertySettersForCreditAccountSummary;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v18];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [CreditAccountBalanceSummary creditAccountBalanceSummaryForCreditAccountSummaryPID:persistentID inDatabase:database];
  [v6 setBalanceSummary:v10];

  v11 = [CreditAccountStatement creditAccountStatementForCreditAccountSummaryPID:persistentID inDatabase:database];
  [v6 setCurrentStatement:v11];

  v12 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v13 = [CreditAccountUserActivity creditAccountUserActivityForCreditAccountSummaryPID:v12 inDatabase:database];
  [v6 setAccountUserActivity:v13];

  v14 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v15 = [CreditAccountMergeSummary creditAccountMergeSummaryForCreditAccountSummaryPID:v14 inDatabase:database];
  [v6 setMergeSummary:v15];

  v16 = v6;
  return v6;
}

+ (id)_propertySettersForCreditAccountSummary
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100849388;
  v5[1] = &stru_1008493A8;
  v4[2] = @"d";
  v4[3] = @"t";
  v5[2] = &stru_1008493C8;
  v5[3] = &stru_1008493E8;
  v4[4] = @"e";
  v4[5] = @"k";
  v5[4] = &stru_100849408;
  v5[5] = &stru_100849428;
  v4[6] = @"remaining_statement_balance_for_interest_calculation";
  v4[7] = @"j";
  v5[6] = &stru_100849448;
  v5[7] = &stru_100849468;
  v4[8] = @"p";
  v4[9] = @"f";
  v5[8] = &stru_100849488;
  v5[9] = &stru_1008494A8;
  v4[10] = @"l";
  v4[11] = @"g";
  v5[10] = &stru_1008494C8;
  v5[11] = &stru_1008494E8;
  v4[12] = @"h";
  v4[13] = @"i";
  v5[12] = &stru_100849508;
  v5[13] = &stru_100849528;
  v4[14] = @"q";
  v4[15] = @"m";
  v5[14] = &stru_100849548;
  v5[15] = &stru_100849568;
  v4[16] = @"n";
  v4[17] = @"o";
  v5[16] = &stru_100849588;
  v5[17] = &stru_1008495A8;
  v4[18] = @"r";
  v4[19] = @"p";
  v5[18] = &stru_1008495C8;
  v5[19] = &stru_1008495E8;
  v4[20] = @"s";
  v4[21] = @"u";
  v5[20] = &stru_100849608;
  v5[21] = &stru_100849628;
  v4[22] = @"recovery_payment_plans_supported";
  v5[22] = &stru_100849648;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:23];

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

- (CreditAccountSummary)initWithCreditAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  summaryCopy = summary;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  creditLimit = [summaryCopy creditLimit];
  v13 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v13 forKey:@"b"];

  availableCredit = [summaryCopy availableCredit];
  v15 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v15 forKey:@"c"];

  currentBalance = [summaryCopy currentBalance];
  v17 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v17 forKey:@"d"];

  adjustedBalance = [summaryCopy adjustedBalance];
  v19 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v19 forKey:@"t"];

  rewardsBalance = [summaryCopy rewardsBalance];
  v21 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v21 forKey:@"e"];

  remainingMinimumPayment = [summaryCopy remainingMinimumPayment];
  v23 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v23 forKey:@"j"];

  remainingStatementBalance = [summaryCopy remainingStatementBalance];
  v25 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v25 forKey:@"k"];

  remainingStatementBalanceForInterestCalculation = [summaryCopy remainingStatementBalanceForInterestCalculation];
  v27 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v27 forKey:@"remaining_statement_balance_for_interest_calculation"];

  pastDueAmount = [summaryCopy pastDueAmount];
  v29 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v29 forKey:@"p"];

  [v10 setBool:objc_msgSend(summaryCopy forKey:{"autoPayEnabled"), @"f"}];
  [v10 setBool:objc_msgSend(summaryCopy forKey:{"requiresDebtCollectionNotices"), @"l"}];
  [v10 setBool:objc_msgSend(summaryCopy forKey:{"inGrace"), @"o"}];
  [v10 setInteger:objc_msgSend(summaryCopy forKey:{"balanceStatus"), @"g"}];
  [v10 setInteger:objc_msgSend(summaryCopy forKey:{"cyclesPastDue"), @"h"}];
  lastPaymentDate = [summaryCopy lastPaymentDate];
  v31 = _SQLValueForDate();
  [v10 setObjectOrNull:v31 forKey:@"i"];

  paymentDueDate = [summaryCopy paymentDueDate];
  v33 = _SQLValueForDate();
  [v10 setObjectOrNull:v33 forKey:@"q"];

  unpostedInterest = [summaryCopy unpostedInterest];
  v35 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v35 forKey:@"m"];

  unpostedInterestTimestamp = [summaryCopy unpostedInterestTimestamp];
  v37 = _SQLValueForDate();
  [v10 setObjectOrNull:v37 forKey:@"n"];

  chargeOffPreventionAmount = [summaryCopy chargeOffPreventionAmount];
  v39 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v39 forKey:@"r"];

  pastDueAmount2 = [summaryCopy pastDueAmount];
  v41 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v41 forKey:@"p"];

  installmentBalance = [summaryCopy installmentBalance];
  v43 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v43 forKey:@"s"];

  remainingMinimumPaymentExcludedFromInterestCalculation = [summaryCopy remainingMinimumPaymentExcludedFromInterestCalculation];
  v45 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v45 forKey:@"u"];

  [v10 setBool:objc_msgSend(summaryCopy forKey:{"recoveryPaymentPlansSupported"), @"recovery_payment_plans_supported"}];
  v46 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  persistentID = [(SQLiteEntity *)v46 persistentID];
  balanceSummary = [summaryCopy balanceSummary];
  v49 = [CreditAccountBalanceSummary insertAccountBalanceSummary:balanceSummary forCreditAccountSummaryPID:persistentID inDatabase:databaseCopy];

  currentStatement = [summaryCopy currentStatement];
  v51 = [CreditAccountStatement insertCreditAccountStatement:currentStatement forCreditAccountSummaryPID:persistentID inDatabase:databaseCopy];

  accountUserActivity = [summaryCopy accountUserActivity];
  v53 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v54 = [CreditAccountUserActivity insertOrUpdateCreditAccountUserActivity:accountUserActivity forCreditAccountSummaryPID:v53 inDatabase:databaseCopy];

  mergeSummary = [summaryCopy mergeSummary];

  v56 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v57 = [CreditAccountMergeSummary insertOrUpdateCreditAccountMergeSummary:mergeSummary forCreditAccountSummaryPID:v56 inDatabase:databaseCopy];

  return v46;
}

+ (id)insertAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  summaryCopy = summary;
  v10 = [[self alloc] initWithCreditAccountSummary:summaryCopy forCreditAccountDetailsPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deleteCreditAccountSummaryForCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCreditAccountDetailsPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [CreditAccountBalanceSummary deleteCreditAccountBalanceSummaryForCreditAccountSummaryPID:persistentID inDatabase:database];
  [CreditAccountStatement deleteCreditAccountStatementForCreditAccountSummaryPID:persistentID inDatabase:database];
  v5 = [NSNumber numberWithUnsignedLongLong:persistentID];
  [CreditAccountUserActivity deleteCreditAccountUserActivityForCreditAccountSummaryPID:v5 inDatabase:database];

  v6 = [NSNumber numberWithUnsignedLongLong:persistentID];
  [CreditAccountMergeSummary deleteCreditAccountMergeSummaryForCreditAccountSummaryPID:v6 inDatabase:database];

  v8.receiver = selfCopy;
  v8.super_class = CreditAccountSummary;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v8 deleteFromDatabase];

  return selfCopy;
}

+ (id)creditAccountSummaryForCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCreditAccountDetailsPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  creditAccountSummary = [v8 creditAccountSummary];

  return creditAccountSummary;
}

+ (void)updateCreditAccountSummary:(id)summary forCreditAccountDetailsPID:(int64_t)d inDatabase:(id)database
{
  summaryCopy = summary;
  databaseCopy = database;
  v9 = [self _predicateForCreditAccountDetailsPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updateWithCreditAccountSummary:summaryCopy];
  }

  else
  {
    v11 = [CreditAccountSummary insertAccountSummary:summaryCopy forCreditAccountDetailsPID:d inDatabase:databaseCopy];
  }
}

- (void)updateWithCreditAccountSummary:(id)summary
{
  summaryCopy = summary;
  v49 = +[NSMutableDictionary dictionary];
  creditLimit = [summaryCopy creditLimit];
  v6 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v6 forKey:@"b"];

  availableCredit = [summaryCopy availableCredit];
  v8 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v8 forKey:@"c"];

  currentBalance = [summaryCopy currentBalance];
  v10 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v10 forKey:@"d"];

  adjustedBalance = [summaryCopy adjustedBalance];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v12 forKey:@"t"];

  rewardsBalance = [summaryCopy rewardsBalance];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v14 forKey:@"e"];

  remainingMinimumPayment = [summaryCopy remainingMinimumPayment];
  v16 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v16 forKey:@"j"];

  remainingStatementBalance = [summaryCopy remainingStatementBalance];
  v18 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v18 forKey:@"k"];

  remainingStatementBalanceForInterestCalculation = [summaryCopy remainingStatementBalanceForInterestCalculation];
  v20 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v20 forKey:@"remaining_statement_balance_for_interest_calculation"];

  pastDueAmount = [summaryCopy pastDueAmount];
  v22 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v22 forKey:@"p"];

  [v49 setBool:objc_msgSend(summaryCopy forKey:{"autoPayEnabled"), @"f"}];
  [v49 setBool:objc_msgSend(summaryCopy forKey:{"requiresDebtCollectionNotices"), @"l"}];
  [v49 setBool:objc_msgSend(summaryCopy forKey:{"inGrace"), @"o"}];
  [v49 setInteger:objc_msgSend(summaryCopy forKey:{"balanceStatus"), @"g"}];
  [v49 setInteger:objc_msgSend(summaryCopy forKey:{"cyclesPastDue"), @"h"}];
  lastPaymentDate = [summaryCopy lastPaymentDate];
  v24 = _SQLValueForDate();
  [v49 setObjectOrNull:v24 forKey:@"i"];

  paymentDueDate = [summaryCopy paymentDueDate];
  v26 = _SQLValueForDate();
  [v49 setObjectOrNull:v26 forKey:@"q"];

  unpostedInterest = [summaryCopy unpostedInterest];
  v28 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v28 forKey:@"m"];

  unpostedInterestTimestamp = [summaryCopy unpostedInterestTimestamp];
  v30 = _SQLValueForDate();
  [v49 setObjectOrNull:v30 forKey:@"n"];

  chargeOffPreventionAmount = [summaryCopy chargeOffPreventionAmount];
  v32 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v32 forKey:@"r"];

  pastDueAmount2 = [summaryCopy pastDueAmount];
  v34 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v34 forKey:@"p"];

  installmentBalance = [summaryCopy installmentBalance];
  v36 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v36 forKey:@"s"];

  remainingMinimumPaymentExcludedFromInterestCalculation = [summaryCopy remainingMinimumPaymentExcludedFromInterestCalculation];
  v38 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v38 forKey:@"u"];

  [v49 setBool:objc_msgSend(summaryCopy forKey:{"recoveryPaymentPlansSupported"), @"recovery_payment_plans_supported"}];
  [(SQLiteEntity *)self setValuesWithDictionary:v49];
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  balanceSummary = [summaryCopy balanceSummary];
  [CreditAccountBalanceSummary updateCreditAccountBalanceSummary:balanceSummary forCreditAccountSummaryPID:persistentID inDatabase:database];

  currentStatement = [summaryCopy currentStatement];
  [CreditAccountStatement updateCreditAccountStatement:currentStatement forCreditAccountSummaryPID:persistentID inDatabase:database];

  accountUserActivity = [summaryCopy accountUserActivity];
  v44 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v45 = [CreditAccountUserActivity insertOrUpdateCreditAccountUserActivity:accountUserActivity forCreditAccountSummaryPID:v44 inDatabase:database];

  mergeSummary = [summaryCopy mergeSummary];

  v47 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v48 = [CreditAccountMergeSummary insertOrUpdateCreditAccountMergeSummary:mergeSummary forCreditAccountSummaryPID:v47 inDatabase:database];
}

+ (id)_predicateForCreditAccountDetailsPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end