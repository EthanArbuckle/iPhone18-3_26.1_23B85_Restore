@interface CreditInstallmentPlanPayment
+ (id)_paymentsWithQuery:(id)query;
+ (id)_propertySetters;
+ (id)_propertyValuesForInstallmentPlanPayment:(id)payment;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrUpdatePayments:(id)payments forInstallmentPlanPID:(id)d inDatabase:(id)database;
+ (id)paymentWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)paymentsForInstallmentPlanPID:(id)d inDatabase:(id)database;
+ (void)deletePaymentsForInstallmentPlanPID:(id)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (CreditInstallmentPlanPayment)initWithInstallmentPlanPayment:(id)payment forInstallmentPlanPID:(id)d inDatabase:(id)database;
- (id)payment;
- (void)updateWithPayment:(id)payment;
@end

@implementation CreditInstallmentPlanPayment

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

- (CreditInstallmentPlanPayment)initWithInstallmentPlanPayment:(id)payment forInstallmentPlanPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  dCopy = d;
  paymentCopy = payment;
  v11 = [objc_opt_class() _propertyValuesForInstallmentPlanPayment:paymentCopy];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
  [(SQLiteEntity *)v12 setValue:dCopy forProperty:@"a"];

  v13 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v12 persistentID]];
  lineItems = [paymentCopy lineItems];

  v15 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:lineItems forInstallmentPlanPaymentPID:v13 inDatabase:databaseCopy];
  return v12;
}

+ (id)paymentsForInstallmentPlanPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForInstallmentPlanPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _paymentsWithQuery:v8];

  return v9;
}

+ (id)paymentWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  payment = [v8 payment];

  return payment;
}

+ (id)insertOrUpdatePayments:(id)payments forInstallmentPlanPID:(id)d inDatabase:(id)database
{
  paymentsCopy = payments;
  dCopy = d;
  databaseCopy = database;
  v29 = objc_alloc_init(NSMutableSet);
  v10 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = paymentsCopy;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [self _predicateForIdentifier:identifier];
        v18 = [self anyInDatabase:databaseCopy predicate:v17];
        if (v18)
        {
          v19 = v18;
          [v18 updateWithPayment:v15];
        }

        else
        {
          v19 = [[self alloc] initWithInstallmentPlanPayment:v15 forInstallmentPlanPID:dCopy inDatabase:databaseCopy];
        }

        [v29 addObject:identifier];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"b" values:v29];
  v34[0] = v20;
  v21 = [self _predicateForInstallmentPlanPID:dCopy];
  v34[1] = v21;
  v22 = [NSArray arrayWithObjects:v34 count:2];
  v23 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v22];

  v24 = [self queryWithDatabase:databaseCopy predicate:v23];
  [v24 deleteAllEntities];
  if ([v10 count])
  {
    v25 = [v10 copy];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)updateWithPayment:(id)payment
{
  paymentCopy = payment;
  v9 = [objc_opt_class() _propertyValuesForInstallmentPlanPayment:paymentCopy];
  [(SQLiteEntity *)self setValuesWithDictionary:v9];
  v5 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)self database];
  lineItems = [paymentCopy lineItems];

  v8 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:lineItems forInstallmentPlanPaymentPID:v5 inDatabase:database];
}

- (id)payment
{
  _propertySetters = [objc_opt_class() _propertySetters];
  v4 = objc_alloc_init(PKCreditInstallmentPlanPayment);
  allKeys = [_propertySetters allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000195D8;
  v16[3] = &unk_10083BEE0;
  v16[4] = self;
  v6 = _propertySetters;
  v17 = v6;
  v7 = v4;
  v18 = v7;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v16];

  v8 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)self database];
  v10 = [CreditInstallmentPlanLineItem lineItemsForInstallmentPlanPaymentPID:v8 inDatabase:database];
  [v7 setLineItems:v10];
  v11 = [(SQLiteEntity *)self valueForProperty:@"c"];
  if (v11)
  {
    v12 = [CreditAccountStatement creditAccountStatementWithIdentifier:v11 inDatabase:database];
    creditAccountStatement = [v12 creditAccountStatement];

    [v7 setStatement:creditAccountStatement];
  }

  v14 = v7;

  return v7;
}

+ (void)deletePaymentsForInstallmentPlanPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForInstallmentPlanPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  v3 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)selfCopy database];
  [CreditInstallmentPlanLineItem deleteLineItemsForInstallmentPlanPaymentPID:v3 inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = CreditInstallmentPlanPayment;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)_paymentsWithQuery:(id)query
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySetters allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000198E4;
  v16 = &unk_10083BF08;
  selfCopy = self;
  v17 = _propertySetters;
  v18 = queryCopy;
  v8 = v6;
  v19 = v8;
  v9 = queryCopy;
  v10 = _propertySetters;
  [v9 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v13];

  if ([v8 count])
  {
    v11 = [v8 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_propertyValuesForInstallmentPlanPayment:(id)payment
{
  paymentCopy = payment;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [paymentCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"b"];

  statementIdentifier = [paymentCopy statementIdentifier];
  [v4 setObjectOrNull:statementIdentifier forKey:@"c"];

  currencyCode = [paymentCopy currencyCode];
  [v4 setObjectOrNull:currencyCode forKey:@"d"];

  amountDue = [paymentCopy amountDue];
  v9 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v9 forKey:@"e"];

  amountPaid = [paymentCopy amountPaid];
  v11 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v11 forKey:@"f"];

  dueDate = [paymentCopy dueDate];
  v13 = _SQLValueForDate();
  [v4 setObjectOrNull:v13 forKey:@"g"];

  statementDate = [paymentCopy statementDate];
  v15 = _SQLValueForDate();
  [v4 setObjectOrNull:v15 forKey:@"k"];

  originalAmountDue = [paymentCopy originalAmountDue];
  v17 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v17 forKey:@"h"];

  paymentNumber = [paymentCopy paymentNumber];
  if (paymentNumber)
  {
    [v4 setInteger:paymentNumber forKey:@"i"];
  }

  paymentCount = [paymentCopy paymentCount];
  if (paymentCount)
  {
    [v4 setInteger:paymentCount forKey:@"j"];
  }

  v20 = [v4 copy];

  return v20;
}

+ (id)_propertySetters
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_10083BF48;
  v5[1] = &stru_10083BF68;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_10083BF88;
  v5[3] = &stru_10083BFA8;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_10083BFC8;
  v5[5] = &stru_10083BFE8;
  v4[6] = @"k";
  v4[7] = @"h";
  v5[6] = &stru_10083C008;
  v5[7] = &stru_10083C028;
  v4[8] = @"i";
  v4[9] = @"j";
  v5[8] = &stru_10083C048;
  v5[9] = &stru_10083C068;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];

  return v2;
}

@end