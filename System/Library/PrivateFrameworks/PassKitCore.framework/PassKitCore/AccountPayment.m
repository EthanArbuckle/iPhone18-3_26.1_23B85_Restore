@interface AccountPayment
+ (id)_commonInitWithPayment:(id)a3 accountIdentifier:(id)a4;
+ (id)_paymentsFromQuery:(id)a3;
+ (id)_predicateForEventPID:(int64_t)a3;
+ (id)_predicateForFailedRecurringPaymentsWithAccountIdentifier:(id)a3;
+ (id)_predicateForScheduledPaymentsWithAccountIdentifier:(id)a3;
+ (id)_predicateForTransactionServiceIdentifier:(id)a3;
+ (id)_propertySetterForFundingDetailsName;
+ (id)_propertySettersForAccountPayment;
+ (id)failedRecurringPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)insertPayment:(id)a3 forEventPID:(int64_t)a4 accountIdentifier:(id)a5 inDatabase:(id)a6;
+ (id)insertScheduledPayment:(id)a3 accountIdentifier:(id)a4 inDatabase:(id)a5;
+ (id)paymentsForTransactionReferenceIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)paymentsForTransactionServiceIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)paymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)paymentsWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)scheduledPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deletePaymentWithEventPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteScheduledPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4;
- (id)currencyAmount;
- (id)payment;
@end

@implementation AccountPayment

+ (id)paymentsForTransactionServiceIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTransactionServiceIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"paymentDate" ascending:0];
  v15[0] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:@"state" ascending:0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  v13 = [v9 sortedArrayUsingDescriptors:v12];

  return v13;
}

+ (id)paymentsForTransactionReferenceIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTransactionReferenceIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"paymentDate" ascending:0];
  v15[0] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:@"state" ascending:0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  v13 = [v9 sortedArrayUsingDescriptors:v12];

  return v13;
}

+ (id)paymentsWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];

  return v9;
}

+ (id)paymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];

  return v9;
}

+ (id)scheduledPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForScheduledPaymentsWithAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];

  return v9;
}

+ (id)failedRecurringPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForFailedRecurringPaymentsWithAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsFromQuery:v8];

  return v9;
}

+ (id)_paymentsFromQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v16 = @"pid";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001355F0;
  v13 = &unk_10083CBC0;
  v14 = v3;
  v15 = v4;
  v6 = v4;
  v7 = v3;
  [v7 enumeratePersistentIDsAndProperties:v5 usingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

+ (id)insertPayment:(id)a3 forEventPID:(int64_t)a4 accountIdentifier:(id)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = [a1 _commonInitWithPayment:a3 accountIdentifier:a5];
  v12 = [NSNumber numberWithLongLong:a4];
  [v11 setObject:v12 forKey:@"a"];

  v13 = [[a1 alloc] initWithPropertyValues:v11 inDatabase:v10];

  return v13;
}

+ (id)insertScheduledPayment:(id)a3 accountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _commonInitWithPayment:a3 accountIdentifier:a4];
  v10 = [[a1 alloc] initWithPropertyValues:v9 inDatabase:v8];

  return v10;
}

+ (id)_commonInitWithPayment:(id)a3 accountIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [v5 identifier];
  [v7 setObjectOrNull:v8 forKey:@"b"];

  v9 = [v5 referenceIdentifier];
  [v7 setObjectOrNull:v9 forKey:@"e"];

  v10 = [v5 clientReferenceIdentifier];
  [v7 setObjectOrNull:v10 forKey:@"p"];

  v11 = [v5 currencyAmount];
  v12 = [v11 amount];
  v13 = PKCurrencyDecimalToStorageNumber();

  [v7 setObjectOrNull:v13 forKey:@"c"];
  v14 = [v5 currencyAmount];
  v15 = [v14 currency];
  [v7 setObjectOrNull:v15 forKey:@"d"];

  v16 = [v5 paymentDate];
  v17 = _SQLValueForDate();
  [v7 setObjectOrNull:v17 forKey:@"f"];

  v18 = [v5 paymentStatusDate];
  v19 = _SQLValueForDate();
  [v7 setObjectOrNull:v19 forKey:@"q"];

  [v7 setInteger:objc_msgSend(v5 forKey:{"state"), @"h"}];
  [v7 setInteger:objc_msgSend(v5 forKey:{"statusCode"), @"k"}];
  [v7 setBool:objc_msgSend(v5 forKey:{"cancellable"), @"cancellable"}];
  v20 = [v5 cancellationExpiryDate];
  v21 = _SQLValueForDate();
  [v7 setObjectOrNull:v21 forKey:@"cancellation_expiry_date"];

  v22 = [v5 expectedCreditReleaseDate];
  v23 = _SQLValueForDate();
  [v7 setObjectOrNull:v23 forKey:@"w"];

  v24 = [v5 fundingSource];
  v25 = [v24 identifier];
  [v7 setObjectOrNull:v25 forKey:@"l"];

  [v7 setInteger:objc_msgSend(v24 forKey:{"type"), @"m"}];
  v26 = [v24 accountSuffix];
  [v7 setObjectOrNull:v26 forKey:@"n"];

  if ([v24 type] == 1)
  {
    v27 = [v24 fundingDetails];
    v28 = [v27 name];
    [v7 setObjectOrNull:v28 forKey:@"v"];
  }

  v29 = [v5 scheduleDetails];
  [v7 setInteger:objc_msgSend(v29 forKey:{"preset"), @"j"}];
  [v7 setInteger:objc_msgSend(v29 forKey:{"frequency"), @"i"}];
  [v7 setInteger:objc_msgSend(v29 forKey:{"scheduledDay"), @"u"}];
  v30 = [v29 scheduledDate];
  v31 = _SQLValueForDate();
  [v7 setObjectOrNull:v31 forKey:@"r"];

  v32 = [v29 paymentTermsIdentifier];
  [v7 setObjectOrNull:v32 forKey:@"s"];

  [v7 setObjectOrNull:v6 forKey:@"t"];

  return v7;
}

- (id)payment
{
  v3 = objc_alloc_init(PKAccountPayment);
  v4 = objc_alloc_init(PKAccountPaymentFundingSource);
  v5 = objc_alloc_init(PKAccountPaymentScheduleDetails);
  [v3 setFundingSource:v4];
  [v3 setScheduleDetails:v5];
  v6 = +[AccountPayment _propertySettersForAccountPayment];
  v7 = [v6 allKeys];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100135E3C;
  v22[3] = &unk_10083BEE0;
  v8 = v6;
  v23 = v8;
  v9 = v3;
  v24 = v9;
  v25 = self;
  [(SQLiteEntity *)self getValuesForProperties:v7 withApplier:v22];

  v10 = [v9 fundingSource];
  v11 = [v10 type];

  if (v11 == 1)
  {
    v12 = objc_alloc_init(PKAccountPaymentFundingDetailsBankAccount);
    v13 = [v9 fundingSource];
    [v13 setFundingDetails:v12];

    v14 = +[AccountPayment _propertySetterForFundingDetailsName];
    v15 = [v14 allKeys];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100135EAC;
    v19[3] = &unk_10083C240;
    v20 = v14;
    v21 = v9;
    v16 = v14;
    [(SQLiteEntity *)self getValuesForProperties:v15 withApplier:v19];
  }

  v17 = v9;

  return v9;
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

+ (void)deletePaymentWithEventPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForEventPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (void)deleteScheduledPaymentsWithAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _predicateForScheduledPaymentsWithAccountIdentifier:v7];
  v9 = [a1 _predicateForFailedRecurringPaymentsWithAccountIdentifier:v7];

  v13[0] = v8;
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v10];

  v12 = [a1 queryWithDatabase:v6 predicate:v11];

  [v12 deleteAllEntities];
}

+ (id)_predicateForTransactionServiceIdentifier:(id)a3
{
  v3 = a3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];
  v9[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:v3];

  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  return v7;
}

+ (id)_predicateForEventPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForScheduledPaymentsWithAccountIdentifier:(id)a3
{
  v3 = [a1 _predicateForAccountIdentifier:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"h" equalToValue:&off_1008A2D38];
  v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"a"];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  return v7;
}

+ (id)_predicateForFailedRecurringPaymentsWithAccountIdentifier:(id)a3
{
  v3 = [a1 _predicateForAccountIdentifier:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"h" equalToValue:&off_1008A2D50];
  v5 = [SQLiteContainsPredicate containsPredicateWithProperty:@"i" values:&off_1008A47D0];
  v13[0] = v4;
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [SQLiteNullPredicate isNullPredicateWithProperty:@"a"];
  v12[0] = v3;
  v12[1] = v7;
  v12[2] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:3];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_propertySettersForAccountPayment
{
  v4[0] = @"b";
  v4[1] = @"e";
  v5[0] = &stru_100847E88;
  v5[1] = &stru_100847EA8;
  v4[2] = @"p";
  v4[3] = @"f";
  v5[2] = &stru_100847EC8;
  v5[3] = &stru_100847EE8;
  v4[4] = @"q";
  v4[5] = @"h";
  v5[4] = &stru_100847F08;
  v5[5] = &stru_100847F28;
  v4[6] = @"k";
  v4[7] = @"cancellable";
  v5[6] = &stru_100847F48;
  v5[7] = &stru_100847F68;
  v4[8] = @"cancellation_expiry_date";
  v4[9] = @"w";
  v5[8] = &stru_100847F88;
  v5[9] = &stru_100847FA8;
  v4[10] = @"l";
  v4[11] = @"m";
  v5[10] = &stru_100847FC8;
  v5[11] = &stru_100847FE8;
  v4[12] = @"n";
  v4[13] = @"i";
  v5[12] = &stru_100848008;
  v5[13] = &stru_100848028;
  v4[14] = @"u";
  v4[15] = @"j";
  v5[14] = &stru_100848048;
  v5[15] = &stru_100848068;
  v4[16] = @"r";
  v4[17] = @"s";
  v5[16] = &stru_100848088;
  v5[17] = &stru_1008480A8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:18];

  return v2;
}

+ (id)_propertySetterForFundingDetailsName
{
  v4 = @"v";
  v5 = &stru_1008480C8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end