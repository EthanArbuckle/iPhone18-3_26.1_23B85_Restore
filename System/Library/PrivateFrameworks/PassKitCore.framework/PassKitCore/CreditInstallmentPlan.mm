@interface CreditInstallmentPlan
+ (id)_installmentPlansWithQuery:(id)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesForInstallmentPlan:(id)a3;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertOrUpdateInstallmentPlans:(id)a3 forCreditAccountDetailsPID:(id)a4 inDatabase:(id)a5;
+ (id)installmentPlansForCreditAccountDetailsPID:(id)a3 inDatabase:(id)a4;
+ (id)installmentPlansWithTransactionReferenceIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteInstallmentPlansForCreditAccountDetailsPID:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (CreditInstallmentPlan)initWithInstallmentPlan:(id)a3 forCreditAccountDetailsPID:(id)a4 inDatabase:(id)a5;
- (id)installmentPlan;
- (void)updateWithInstallmentPlan:(id)a3;
@end

@implementation CreditInstallmentPlan

+ (id)_propertySetters
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100841010;
  v5[1] = &stru_100841030;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100841050;
  v5[3] = &stru_100841070;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_100841090;
  v5[5] = &stru_1008410B0;
  v4[6] = @"h";
  v4[7] = @"i";
  v5[6] = &stru_1008410D0;
  v5[7] = &stru_1008410F0;
  v4[8] = @"j";
  v4[9] = @"k";
  v5[8] = &stru_100841110;
  v5[9] = &stru_100841130;
  v4[10] = @"l";
  v4[11] = @"m";
  v5[10] = &stru_100841150;
  v5[11] = &stru_100841170;
  v4[12] = @"n";
  v5[12] = &stru_100841190;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:13];

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

- (CreditInstallmentPlan)initWithInstallmentPlan:(id)a3 forCreditAccountDetailsPID:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _propertyValuesForInstallmentPlan:v10];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  [(SQLiteEntity *)v12 setValue:v9 forProperty:@"a"];

  v13 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v12 persistentID]];
  v14 = [v10 lineItems];
  v15 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:v14 forInstallmentPlanPID:v13 inDatabase:v8];

  v16 = [v10 payments];
  v17 = [v16 count];

  v18 = [v10 payments];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008C6B4;
  v30[3] = &unk_100840FD0;
  v30[4] = v17;
  [v18 enumerateObjectsUsingBlock:v30];

  v19 = [v10 payments];
  v20 = [NSSet setWithArray:v19];
  v21 = [CreditInstallmentPlanPayment insertOrUpdatePayments:v20 forInstallmentPlanPID:v13 inDatabase:v8];

  v22 = [v10 merchant];
  v23 = [InstallmentPlanMerchant insertOrUpdateMerchant:v22 forInstallmentPlanPID:v13 inDatabase:v8];
  v24 = [v10 product];
  v25 = [CreditInstallmentPlanProduct insertOrUpdateProduct:v24 forInstallmentPlanPID:v13 inDatabase:v8];
  v26 = [v10 summary];
  v27 = [InstallmentPlanSummary insertOrUpdateSummary:v26 forInstallmentPlanPID:v13 inDatabase:v8];
  v28 = [v10 rewards];

  [PaymentTransactionReward updateRewards:v28 forInstallmentPlanPID:v13 inDatabase:v8];
  return v12;
}

+ (id)installmentPlansForCreditAccountDetailsPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForCreditAccountDetailsPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _installmentPlansWithQuery:v8];

  return v9;
}

+ (id)installmentPlansWithTransactionReferenceIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTransactionReferenceIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _installmentPlansWithQuery:v8];

  return v9;
}

- (id)installmentPlan
{
  v3 = objc_alloc_init(PKCreditInstallmentPlan);
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008CB1C;
  v21[3] = &unk_10083BEE0;
  v21[4] = self;
  v22 = v4;
  v6 = v3;
  v23 = v6;
  v20 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v21];

  v7 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v8 = [(SQLiteEntity *)self database];
  v19 = [CreditInstallmentPlanLineItem lineItemForInstallmentPlanPID:v7 inDatabase:v8];
  [v6 setLineItems:v19];
  v9 = [CreditInstallmentPlanPayment paymentsForInstallmentPlanPID:v7 inDatabase:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"dueDate" ascending:1];
  v24 = v10;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  [v6 setPayments:v12];
  v13 = [InstallmentPlanMerchant merchantForInstallmentPlanPID:v7 inDatabase:v8];
  [v6 setMerchant:v13];
  v14 = [CreditInstallmentPlanProduct productForInstallmentPlanPID:v7 inDatabase:v8];
  [v6 setProduct:v14];
  v15 = [InstallmentPlanSummary summaryForInstallmentPlanPID:v7 inDatabase:v8];
  [v6 setSummary:v15];
  v16 = [PaymentTransactionReward rewardsInDatabase:v8 forInstallmentPlanPID:v7];
  [v6 setRewards:v16];
  v17 = v6;

  return v6;
}

+ (id)insertOrUpdateInstallmentPlans:(id)a3 forCreditAccountDetailsPID:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v27 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableSet);
  v29 = objc_alloc_init(NSMutableSet);
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
          [v18 updateWithInstallmentPlan:v15];
        }

        else
        {
          v19 = [[a1 alloc] initWithInstallmentPlan:v15 forCreditAccountDetailsPID:v27 inDatabase:v9];
        }

        [v10 addObject:v16];
        [v29 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"b" values:v10];
  v34[0] = v20;
  v21 = [a1 _predicateForCreditAccountDetailsPID:v27];
  v34[1] = v21;
  v22 = [NSArray arrayWithObjects:v34 count:2];
  v23 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v22];

  v24 = [a1 queryWithDatabase:v9 predicate:v23];
  [v24 deleteAllEntities];
  v25 = [v29 copy];

  return v25;
}

- (void)updateWithInstallmentPlan:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 identifier];
  [v5 setObjectOrNull:v6 forKey:@"b"];

  [v5 setInteger:objc_msgSend(v4 forKey:{"state"), @"c"}];
  v7 = [v4 lastUpdated];
  v8 = _SQLValueForDate();
  [v5 setObjectOrNull:v8 forKey:@"d"];

  v9 = [v4 apr];
  [v5 setInteger:PKPercentageDecimalToStorageInteger() forKey:@"e"];

  [v5 setInteger:objc_msgSend(v4 forKey:{"duration"), @"f"}];
  v10 = [v4 currencyCode];
  [v5 setObjectOrNull:v10 forKey:@"g"];

  v11 = [v4 totalAmount];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v12 forKey:@"h"];

  v13 = [v4 totalProductAmount];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v14 forKey:@"i"];

  v15 = [v4 totalInterestAmount];
  v16 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v16 forKey:@"j"];

  [v5 setInteger:objc_msgSend(v4 forKey:{"periodType"), @"k"}];
  v17 = [v4 transactionReferenceIdentifier];
  [v5 setObjectOrNull:v17 forKey:@"m"];

  v18 = [v4 accountUserAltDSID];
  [v5 setObjectOrNull:v18 forKey:@"n"];

  v19 = [(SQLiteEntity *)self valueForProperty:@"l"];
  LOBYTE(v16) = [v19 BOOLValue];

  if ((v16 & 1) == 0)
  {
    [v5 setInteger:objc_msgSend(v4 forKey:{"userViewedIntroduction"), @"l"}];
  }

  v20 = [v5 copy];
  [(SQLiteEntity *)self setValuesWithDictionary:v20];

  v21 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v22 = [(SQLiteEntity *)self database];
  v23 = [v4 lineItems];
  v24 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:v23 forInstallmentPlanPID:v21 inDatabase:v22];

  v25 = [v4 payments];
  v26 = [v25 count];

  v27 = [v4 payments];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10008D2FC;
  v38[3] = &unk_100840FD0;
  v38[4] = v26;
  [v27 enumerateObjectsUsingBlock:v38];

  v28 = [v4 payments];
  v29 = [NSSet setWithArray:v28];
  v30 = [CreditInstallmentPlanPayment insertOrUpdatePayments:v29 forInstallmentPlanPID:v21 inDatabase:v22];

  v31 = [v4 merchant];
  v32 = [InstallmentPlanMerchant insertOrUpdateMerchant:v31 forInstallmentPlanPID:v21 inDatabase:v22];
  v33 = [v4 product];
  v34 = [CreditInstallmentPlanProduct insertOrUpdateProduct:v33 forInstallmentPlanPID:v21 inDatabase:v22];
  v35 = [v4 summary];
  v36 = [InstallmentPlanSummary insertOrUpdateSummary:v35 forInstallmentPlanPID:v21 inDatabase:v22];
  v37 = [v4 rewards];
  [PaymentTransactionReward updateRewards:v37 forInstallmentPlanPID:v21 inDatabase:v22];
}

+ (void)deleteInstallmentPlansForCreditAccountDetailsPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForCreditAccountDetailsPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  v4 = [(SQLiteEntity *)v2 database];
  [CreditInstallmentPlanLineItem deleteLineItemsForInstallmentPlanPID:v3 inDatabase:v4];
  [CreditInstallmentPlanPayment deletePaymentsForInstallmentPlanPID:v3 inDatabase:v4];
  [InstallmentPlanMerchant deleteMerchantForInstallmentPlanPID:v3 inDatabase:v4];
  [CreditInstallmentPlanProduct deleteProductForInstallmentPlanPID:v3 inDatabase:v4];
  [InstallmentPlanSummary deleteSummaryForInstallmentPlanPID:v3 inDatabase:v4];
  [PaymentTransactionReward deleteEntitiesForInstallmentPlanPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = CreditInstallmentPlan;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)_installmentPlansWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008D68C;
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

+ (id)_propertyValuesForInstallmentPlan:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 identifier];
  [v4 setObjectOrNull:v5 forKey:@"b"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"state"), @"c"}];
  v6 = [v3 lastUpdated];
  v7 = _SQLValueForDate();
  [v4 setObjectOrNull:v7 forKey:@"d"];

  v8 = [v3 apr];
  [v4 setInteger:PKPercentageDecimalToStorageInteger() forKey:@"e"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"duration"), @"f"}];
  v9 = [v3 currencyCode];
  [v4 setObjectOrNull:v9 forKey:@"g"];

  v10 = [v3 totalAmount];
  v11 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v11 forKey:@"h"];

  v12 = [v3 totalProductAmount];
  v13 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v13 forKey:@"i"];

  v14 = [v3 totalInterestAmount];
  v15 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v15 forKey:@"j"];

  [v4 setInteger:objc_msgSend(v3 forKey:{"periodType"), @"k"}];
  [v4 setInteger:objc_msgSend(v3 forKey:{"userViewedIntroduction"), @"l"}];
  v16 = [v3 transactionReferenceIdentifier];
  [v4 setObjectOrNull:v16 forKey:@"m"];

  v17 = [v3 accountUserAltDSID];

  [v4 setObjectOrNull:v17 forKey:@"n"];
  v18 = [v4 copy];

  return v18;
}

@end