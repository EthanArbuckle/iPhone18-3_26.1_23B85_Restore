@interface CreditInstallmentPlanPayment
+ (id)_paymentsWithQuery:(id)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesForInstallmentPlanPayment:(id)a3;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrUpdatePayments:(id)a3 forInstallmentPlanPID:(id)a4 inDatabase:(id)a5;
+ (id)paymentWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)paymentsForInstallmentPlanPID:(id)a3 inDatabase:(id)a4;
+ (void)deletePaymentsForInstallmentPlanPID:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (CreditInstallmentPlanPayment)initWithInstallmentPlanPayment:(id)a3 forInstallmentPlanPID:(id)a4 inDatabase:(id)a5;
- (id)payment;
- (void)updateWithPayment:(id)a3;
@end

@implementation CreditInstallmentPlanPayment

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

- (CreditInstallmentPlanPayment)initWithInstallmentPlanPayment:(id)a3 forInstallmentPlanPID:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _propertyValuesForInstallmentPlanPayment:v10];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  [(SQLiteEntity *)v12 setValue:v9 forProperty:@"a"];

  v13 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v12 persistentID]];
  v14 = [v10 lineItems];

  v15 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:v14 forInstallmentPlanPaymentPID:v13 inDatabase:v8];
  return v12;
}

+ (id)paymentsForInstallmentPlanPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForInstallmentPlanPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _paymentsWithQuery:v8];

  return v9;
}

+ (id)paymentWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 payment];

  return v9;
}

+ (id)insertOrUpdatePayments:(id)a3 forInstallmentPlanPID:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v27 = a4;
  v9 = a5;
  v29 = objc_alloc_init(NSMutableSet);
  v10 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
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
        v16 = [v15 identifier];
        v17 = [a1 _predicateForIdentifier:v16];
        v18 = [a1 anyInDatabase:v9 predicate:v17];
        if (v18)
        {
          v19 = v18;
          [v18 updateWithPayment:v15];
        }

        else
        {
          v19 = [[a1 alloc] initWithInstallmentPlanPayment:v15 forInstallmentPlanPID:v27 inDatabase:v9];
        }

        [v29 addObject:v16];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"b" values:v29];
  v34[0] = v20;
  v21 = [a1 _predicateForInstallmentPlanPID:v27];
  v34[1] = v21;
  v22 = [NSArray arrayWithObjects:v34 count:2];
  v23 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v22];

  v24 = [a1 queryWithDatabase:v9 predicate:v23];
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

- (void)updateWithPayment:(id)a3
{
  v4 = a3;
  v9 = [objc_opt_class() _propertyValuesForInstallmentPlanPayment:v4];
  [(SQLiteEntity *)self setValuesWithDictionary:v9];
  v5 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v6 = [(SQLiteEntity *)self database];
  v7 = [v4 lineItems];

  v8 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:v7 forInstallmentPlanPaymentPID:v5 inDatabase:v6];
}

- (id)payment
{
  v3 = [objc_opt_class() _propertySetters];
  v4 = objc_alloc_init(PKCreditInstallmentPlanPayment);
  v5 = [v3 allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000195D8;
  v16[3] = &unk_10083BEE0;
  v16[4] = self;
  v6 = v3;
  v17 = v6;
  v7 = v4;
  v18 = v7;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v16];

  v8 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v9 = [(SQLiteEntity *)self database];
  v10 = [CreditInstallmentPlanLineItem lineItemsForInstallmentPlanPaymentPID:v8 inDatabase:v9];
  [v7 setLineItems:v10];
  v11 = [(SQLiteEntity *)self valueForProperty:@"c"];
  if (v11)
  {
    v12 = [CreditAccountStatement creditAccountStatementWithIdentifier:v11 inDatabase:v9];
    v13 = [v12 creditAccountStatement];

    [v7 setStatement:v13];
  }

  v14 = v7;

  return v7;
}

+ (void)deletePaymentsForInstallmentPlanPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForInstallmentPlanPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v4 = [(SQLiteEntity *)v2 database];
  [CreditInstallmentPlanLineItem deleteLineItemsForInstallmentPlanPaymentPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = CreditInstallmentPlanPayment;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)_paymentsWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000198E4;
  v16 = &unk_10083BF08;
  v20 = a1;
  v17 = v5;
  v18 = v4;
  v8 = v6;
  v19 = v8;
  v9 = v4;
  v10 = v5;
  [v9 enumeratePersistentIDsAndProperties:v7 usingBlock:&v13];

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

+ (id)_propertyValuesForInstallmentPlanPayment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"b"];

  v6 = [v3 statementIdentifier];
  [v4 setObjectOrNull:v6 forKey:@"c"];

  v7 = [v3 currencyCode];
  [v4 setObjectOrNull:v7 forKey:@"d"];

  v8 = [v3 amountDue];
  v9 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v9 forKey:@"e"];

  v10 = [v3 amountPaid];
  v11 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v11 forKey:@"f"];

  v12 = [v3 dueDate];
  v13 = _SQLValueForDate();
  [v4 setObjectOrNull:v13 forKey:@"g"];

  v14 = [v3 statementDate];
  v15 = _SQLValueForDate();
  [v4 setObjectOrNull:v15 forKey:@"k"];

  v16 = [v3 originalAmountDue];
  v17 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v17 forKey:@"h"];

  v18 = [v3 paymentNumber];
  if (v18)
  {
    [v4 setInteger:v18 forKey:@"i"];
  }

  v19 = [v3 paymentCount];
  if (v19)
  {
    [v4 setInteger:v19 forKey:@"j"];
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