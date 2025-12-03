@interface AccountPayment
+ (id)_commonInitWithPayment:(id)payment accountIdentifier:(id)identifier;
+ (id)_paymentsFromQuery:(id)query;
+ (id)_predicateForEventPID:(int64_t)d;
+ (id)_predicateForFailedRecurringPaymentsWithAccountIdentifier:(id)identifier;
+ (id)_predicateForScheduledPaymentsWithAccountIdentifier:(id)identifier;
+ (id)_predicateForTransactionServiceIdentifier:(id)identifier;
+ (id)_propertySetterForFundingDetailsName;
+ (id)_propertySettersForAccountPayment;
+ (id)failedRecurringPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)insertPayment:(id)payment forEventPID:(int64_t)d accountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)insertScheduledPayment:(id)payment accountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentsForTransactionReferenceIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentsForTransactionServiceIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentsWithEventPID:(int64_t)d inDatabase:(id)database;
+ (id)scheduledPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deletePaymentWithEventPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteScheduledPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database;
- (id)currencyAmount;
- (id)payment;
@end

@implementation AccountPayment

+ (id)paymentsForTransactionServiceIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTransactionServiceIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"paymentDate" ascending:0];
  v15[0] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:@"state" ascending:0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  v13 = [v9 sortedArrayUsingDescriptors:v12];

  return v13;
}

+ (id)paymentsForTransactionReferenceIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTransactionReferenceIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"paymentDate" ascending:0];
  v15[0] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:@"state" ascending:0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  v13 = [v9 sortedArrayUsingDescriptors:v12];

  return v13;
}

+ (id)paymentsWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];

  return v9;
}

+ (id)paymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];

  return v9;
}

+ (id)scheduledPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForScheduledPaymentsWithAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];

  return v9;
}

+ (id)failedRecurringPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForFailedRecurringPaymentsWithAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsFromQuery:v8];

  return v9;
}

+ (id)_paymentsFromQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc_init(NSMutableSet);
  v16 = @"pid";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001355F0;
  v13 = &unk_10083CBC0;
  v14 = queryCopy;
  v15 = v4;
  v6 = v4;
  v7 = queryCopy;
  [v7 enumeratePersistentIDsAndProperties:v5 usingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

+ (id)insertPayment:(id)payment forEventPID:(int64_t)d accountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v11 = [self _commonInitWithPayment:payment accountIdentifier:identifier];
  v12 = [NSNumber numberWithLongLong:d];
  [v11 setObject:v12 forKey:@"a"];

  v13 = [[self alloc] initWithPropertyValues:v11 inDatabase:databaseCopy];

  return v13;
}

+ (id)insertScheduledPayment:(id)payment accountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _commonInitWithPayment:payment accountIdentifier:identifier];
  v10 = [[self alloc] initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

+ (id)_commonInitWithPayment:(id)payment accountIdentifier:(id)identifier
{
  paymentCopy = payment;
  identifierCopy = identifier;
  v7 = +[NSMutableDictionary dictionary];
  identifier = [paymentCopy identifier];
  [v7 setObjectOrNull:identifier forKey:@"b"];

  referenceIdentifier = [paymentCopy referenceIdentifier];
  [v7 setObjectOrNull:referenceIdentifier forKey:@"e"];

  clientReferenceIdentifier = [paymentCopy clientReferenceIdentifier];
  [v7 setObjectOrNull:clientReferenceIdentifier forKey:@"p"];

  currencyAmount = [paymentCopy currencyAmount];
  amount = [currencyAmount amount];
  v13 = PKCurrencyDecimalToStorageNumber();

  [v7 setObjectOrNull:v13 forKey:@"c"];
  currencyAmount2 = [paymentCopy currencyAmount];
  currency = [currencyAmount2 currency];
  [v7 setObjectOrNull:currency forKey:@"d"];

  paymentDate = [paymentCopy paymentDate];
  v17 = _SQLValueForDate();
  [v7 setObjectOrNull:v17 forKey:@"f"];

  paymentStatusDate = [paymentCopy paymentStatusDate];
  v19 = _SQLValueForDate();
  [v7 setObjectOrNull:v19 forKey:@"q"];

  [v7 setInteger:objc_msgSend(paymentCopy forKey:{"state"), @"h"}];
  [v7 setInteger:objc_msgSend(paymentCopy forKey:{"statusCode"), @"k"}];
  [v7 setBool:objc_msgSend(paymentCopy forKey:{"cancellable"), @"cancellable"}];
  cancellationExpiryDate = [paymentCopy cancellationExpiryDate];
  v21 = _SQLValueForDate();
  [v7 setObjectOrNull:v21 forKey:@"cancellation_expiry_date"];

  expectedCreditReleaseDate = [paymentCopy expectedCreditReleaseDate];
  v23 = _SQLValueForDate();
  [v7 setObjectOrNull:v23 forKey:@"w"];

  fundingSource = [paymentCopy fundingSource];
  identifier2 = [fundingSource identifier];
  [v7 setObjectOrNull:identifier2 forKey:@"l"];

  [v7 setInteger:objc_msgSend(fundingSource forKey:{"type"), @"m"}];
  accountSuffix = [fundingSource accountSuffix];
  [v7 setObjectOrNull:accountSuffix forKey:@"n"];

  if ([fundingSource type] == 1)
  {
    fundingDetails = [fundingSource fundingDetails];
    name = [fundingDetails name];
    [v7 setObjectOrNull:name forKey:@"v"];
  }

  scheduleDetails = [paymentCopy scheduleDetails];
  [v7 setInteger:objc_msgSend(scheduleDetails forKey:{"preset"), @"j"}];
  [v7 setInteger:objc_msgSend(scheduleDetails forKey:{"frequency"), @"i"}];
  [v7 setInteger:objc_msgSend(scheduleDetails forKey:{"scheduledDay"), @"u"}];
  scheduledDate = [scheduleDetails scheduledDate];
  v31 = _SQLValueForDate();
  [v7 setObjectOrNull:v31 forKey:@"r"];

  paymentTermsIdentifier = [scheduleDetails paymentTermsIdentifier];
  [v7 setObjectOrNull:paymentTermsIdentifier forKey:@"s"];

  [v7 setObjectOrNull:identifierCopy forKey:@"t"];

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
  allKeys = [v6 allKeys];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100135E3C;
  v22[3] = &unk_10083BEE0;
  v8 = v6;
  v23 = v8;
  v9 = v3;
  v24 = v9;
  selfCopy = self;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v22];

  fundingSource = [v9 fundingSource];
  type = [fundingSource type];

  if (type == 1)
  {
    v12 = objc_alloc_init(PKAccountPaymentFundingDetailsBankAccount);
    fundingSource2 = [v9 fundingSource];
    [fundingSource2 setFundingDetails:v12];

    v14 = +[AccountPayment _propertySetterForFundingDetailsName];
    allKeys2 = [v14 allKeys];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100135EAC;
    v19[3] = &unk_10083C240;
    v20 = v14;
    v21 = v9;
    v16 = v14;
    [(SQLiteEntity *)self getValuesForProperties:allKeys2 withApplier:v19];
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

+ (void)deletePaymentWithEventPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEventPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (void)deleteScheduledPaymentsWithAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  v8 = [self _predicateForScheduledPaymentsWithAccountIdentifier:identifierCopy];
  v9 = [self _predicateForFailedRecurringPaymentsWithAccountIdentifier:identifierCopy];

  v13[0] = v8;
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v10];

  v12 = [self queryWithDatabase:databaseCopy predicate:v11];

  [v12 deleteAllEntities];
}

+ (id)_predicateForTransactionServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:identifierCopy];
  v9[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"e" equalToValue:identifierCopy];

  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  return v7;
}

+ (id)_predicateForEventPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForScheduledPaymentsWithAccountIdentifier:(id)identifier
{
  v3 = [self _predicateForAccountIdentifier:identifier];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"h" equalToValue:&off_1008A2D38];
  v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"a"];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  return v7;
}

+ (id)_predicateForFailedRecurringPaymentsWithAccountIdentifier:(id)identifier
{
  v3 = [self _predicateForAccountIdentifier:identifier];
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