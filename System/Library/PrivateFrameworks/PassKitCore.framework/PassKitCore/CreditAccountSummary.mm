@interface CreditAccountSummary
+ (id)_predicateForCreditAccountDetailsPID:(int64_t)a3;
+ (id)_propertySettersForCreditAccountSummary;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)creditAccountSummaryForCreditAccountDetailsPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)insertAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteCreditAccountSummaryForCreditAccountDetailsPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updateCreditAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (CreditAccountSummary)initWithCreditAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5;
- (id)creditAccountSummary;
- (void)updateWithCreditAccountSummary:(id)a3;
@end

@implementation CreditAccountSummary

- (id)creditAccountSummary
{
  v3 = objc_alloc_init(PKCreditAccountSummary);
  v4 = [objc_opt_class() _propertySettersForCreditAccountSummary];
  v5 = [v4 allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009074;
  v18[3] = &unk_10083BEE0;
  v18[4] = self;
  v19 = v4;
  v6 = v3;
  v20 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v18];

  v8 = [(SQLiteEntity *)self persistentID];
  v9 = [(SQLiteEntity *)self database];
  v10 = [CreditAccountBalanceSummary creditAccountBalanceSummaryForCreditAccountSummaryPID:v8 inDatabase:v9];
  [v6 setBalanceSummary:v10];

  v11 = [CreditAccountStatement creditAccountStatementForCreditAccountSummaryPID:v8 inDatabase:v9];
  [v6 setCurrentStatement:v11];

  v12 = [NSNumber numberWithUnsignedLongLong:v8];
  v13 = [CreditAccountUserActivity creditAccountUserActivityForCreditAccountSummaryPID:v12 inDatabase:v9];
  [v6 setAccountUserActivity:v13];

  v14 = [NSNumber numberWithUnsignedLongLong:v8];
  v15 = [CreditAccountMergeSummary creditAccountMergeSummaryForCreditAccountSummaryPID:v14 inDatabase:v9];
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

- (CreditAccountSummary)initWithCreditAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [v9 creditLimit];
  v13 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v13 forKey:@"b"];

  v14 = [v9 availableCredit];
  v15 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v15 forKey:@"c"];

  v16 = [v9 currentBalance];
  v17 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v17 forKey:@"d"];

  v18 = [v9 adjustedBalance];
  v19 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v19 forKey:@"t"];

  v20 = [v9 rewardsBalance];
  v21 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v21 forKey:@"e"];

  v22 = [v9 remainingMinimumPayment];
  v23 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v23 forKey:@"j"];

  v24 = [v9 remainingStatementBalance];
  v25 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v25 forKey:@"k"];

  v26 = [v9 remainingStatementBalanceForInterestCalculation];
  v27 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v27 forKey:@"remaining_statement_balance_for_interest_calculation"];

  v28 = [v9 pastDueAmount];
  v29 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v29 forKey:@"p"];

  [v10 setBool:objc_msgSend(v9 forKey:{"autoPayEnabled"), @"f"}];
  [v10 setBool:objc_msgSend(v9 forKey:{"requiresDebtCollectionNotices"), @"l"}];
  [v10 setBool:objc_msgSend(v9 forKey:{"inGrace"), @"o"}];
  [v10 setInteger:objc_msgSend(v9 forKey:{"balanceStatus"), @"g"}];
  [v10 setInteger:objc_msgSend(v9 forKey:{"cyclesPastDue"), @"h"}];
  v30 = [v9 lastPaymentDate];
  v31 = _SQLValueForDate();
  [v10 setObjectOrNull:v31 forKey:@"i"];

  v32 = [v9 paymentDueDate];
  v33 = _SQLValueForDate();
  [v10 setObjectOrNull:v33 forKey:@"q"];

  v34 = [v9 unpostedInterest];
  v35 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v35 forKey:@"m"];

  v36 = [v9 unpostedInterestTimestamp];
  v37 = _SQLValueForDate();
  [v10 setObjectOrNull:v37 forKey:@"n"];

  v38 = [v9 chargeOffPreventionAmount];
  v39 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v39 forKey:@"r"];

  v40 = [v9 pastDueAmount];
  v41 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v41 forKey:@"p"];

  v42 = [v9 installmentBalance];
  v43 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v43 forKey:@"s"];

  v44 = [v9 remainingMinimumPaymentExcludedFromInterestCalculation];
  v45 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v45 forKey:@"u"];

  [v10 setBool:objc_msgSend(v9 forKey:{"recoveryPaymentPlansSupported"), @"recovery_payment_plans_supported"}];
  v46 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  v47 = [(SQLiteEntity *)v46 persistentID];
  v48 = [v9 balanceSummary];
  v49 = [CreditAccountBalanceSummary insertAccountBalanceSummary:v48 forCreditAccountSummaryPID:v47 inDatabase:v8];

  v50 = [v9 currentStatement];
  v51 = [CreditAccountStatement insertCreditAccountStatement:v50 forCreditAccountSummaryPID:v47 inDatabase:v8];

  v52 = [v9 accountUserActivity];
  v53 = [NSNumber numberWithUnsignedLongLong:v47];
  v54 = [CreditAccountUserActivity insertOrUpdateCreditAccountUserActivity:v52 forCreditAccountSummaryPID:v53 inDatabase:v8];

  v55 = [v9 mergeSummary];

  v56 = [NSNumber numberWithUnsignedLongLong:v47];
  v57 = [CreditAccountMergeSummary insertOrUpdateCreditAccountMergeSummary:v55 forCreditAccountSummaryPID:v56 inDatabase:v8];

  return v46;
}

+ (id)insertAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithCreditAccountSummary:v9 forCreditAccountDetailsPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deleteCreditAccountSummaryForCreditAccountDetailsPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCreditAccountDetailsPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [CreditAccountBalanceSummary deleteCreditAccountBalanceSummaryForCreditAccountSummaryPID:v3 inDatabase:v4];
  [CreditAccountStatement deleteCreditAccountStatementForCreditAccountSummaryPID:v3 inDatabase:v4];
  v5 = [NSNumber numberWithUnsignedLongLong:v3];
  [CreditAccountUserActivity deleteCreditAccountUserActivityForCreditAccountSummaryPID:v5 inDatabase:v4];

  v6 = [NSNumber numberWithUnsignedLongLong:v3];
  [CreditAccountMergeSummary deleteCreditAccountMergeSummaryForCreditAccountSummaryPID:v6 inDatabase:v4];

  v8.receiver = v2;
  v8.super_class = CreditAccountSummary;
  LOBYTE(v2) = [(SQLiteEntity *)&v8 deleteFromDatabase];

  return v2;
}

+ (id)creditAccountSummaryForCreditAccountDetailsPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCreditAccountDetailsPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 creditAccountSummary];

  return v9;
}

+ (void)updateCreditAccountSummary:(id)a3 forCreditAccountDetailsPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForCreditAccountDetailsPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updateWithCreditAccountSummary:v12];
  }

  else
  {
    v11 = [CreditAccountSummary insertAccountSummary:v12 forCreditAccountDetailsPID:a4 inDatabase:v8];
  }
}

- (void)updateWithCreditAccountSummary:(id)a3
{
  v4 = a3;
  v49 = +[NSMutableDictionary dictionary];
  v5 = [v4 creditLimit];
  v6 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v6 forKey:@"b"];

  v7 = [v4 availableCredit];
  v8 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v8 forKey:@"c"];

  v9 = [v4 currentBalance];
  v10 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v10 forKey:@"d"];

  v11 = [v4 adjustedBalance];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v12 forKey:@"t"];

  v13 = [v4 rewardsBalance];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v14 forKey:@"e"];

  v15 = [v4 remainingMinimumPayment];
  v16 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v16 forKey:@"j"];

  v17 = [v4 remainingStatementBalance];
  v18 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v18 forKey:@"k"];

  v19 = [v4 remainingStatementBalanceForInterestCalculation];
  v20 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v20 forKey:@"remaining_statement_balance_for_interest_calculation"];

  v21 = [v4 pastDueAmount];
  v22 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v22 forKey:@"p"];

  [v49 setBool:objc_msgSend(v4 forKey:{"autoPayEnabled"), @"f"}];
  [v49 setBool:objc_msgSend(v4 forKey:{"requiresDebtCollectionNotices"), @"l"}];
  [v49 setBool:objc_msgSend(v4 forKey:{"inGrace"), @"o"}];
  [v49 setInteger:objc_msgSend(v4 forKey:{"balanceStatus"), @"g"}];
  [v49 setInteger:objc_msgSend(v4 forKey:{"cyclesPastDue"), @"h"}];
  v23 = [v4 lastPaymentDate];
  v24 = _SQLValueForDate();
  [v49 setObjectOrNull:v24 forKey:@"i"];

  v25 = [v4 paymentDueDate];
  v26 = _SQLValueForDate();
  [v49 setObjectOrNull:v26 forKey:@"q"];

  v27 = [v4 unpostedInterest];
  v28 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v28 forKey:@"m"];

  v29 = [v4 unpostedInterestTimestamp];
  v30 = _SQLValueForDate();
  [v49 setObjectOrNull:v30 forKey:@"n"];

  v31 = [v4 chargeOffPreventionAmount];
  v32 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v32 forKey:@"r"];

  v33 = [v4 pastDueAmount];
  v34 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v34 forKey:@"p"];

  v35 = [v4 installmentBalance];
  v36 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v36 forKey:@"s"];

  v37 = [v4 remainingMinimumPaymentExcludedFromInterestCalculation];
  v38 = PKCurrencyDecimalToStorageNumber();
  [v49 setObjectOrNull:v38 forKey:@"u"];

  [v49 setBool:objc_msgSend(v4 forKey:{"recoveryPaymentPlansSupported"), @"recovery_payment_plans_supported"}];
  [(SQLiteEntity *)self setValuesWithDictionary:v49];
  v39 = [(SQLiteEntity *)self persistentID];
  v40 = [(SQLiteEntity *)self database];
  v41 = [v4 balanceSummary];
  [CreditAccountBalanceSummary updateCreditAccountBalanceSummary:v41 forCreditAccountSummaryPID:v39 inDatabase:v40];

  v42 = [v4 currentStatement];
  [CreditAccountStatement updateCreditAccountStatement:v42 forCreditAccountSummaryPID:v39 inDatabase:v40];

  v43 = [v4 accountUserActivity];
  v44 = [NSNumber numberWithUnsignedLongLong:v39];
  v45 = [CreditAccountUserActivity insertOrUpdateCreditAccountUserActivity:v43 forCreditAccountSummaryPID:v44 inDatabase:v40];

  v46 = [v4 mergeSummary];

  v47 = [NSNumber numberWithUnsignedLongLong:v39];
  v48 = [CreditAccountMergeSummary insertOrUpdateCreditAccountMergeSummary:v46 forCreditAccountSummaryPID:v47 inDatabase:v40];
}

+ (id)_predicateForCreditAccountDetailsPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end