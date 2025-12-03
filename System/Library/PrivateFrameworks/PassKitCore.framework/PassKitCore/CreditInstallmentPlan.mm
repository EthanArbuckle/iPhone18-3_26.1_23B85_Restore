@interface CreditInstallmentPlan
+ (id)_installmentPlansWithQuery:(id)query;
+ (id)_propertySetters;
+ (id)_propertyValuesForInstallmentPlan:(id)plan;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertOrUpdateInstallmentPlans:(id)plans forCreditAccountDetailsPID:(id)d inDatabase:(id)database;
+ (id)installmentPlansForCreditAccountDetailsPID:(id)d inDatabase:(id)database;
+ (id)installmentPlansWithTransactionReferenceIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteInstallmentPlansForCreditAccountDetailsPID:(id)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (CreditInstallmentPlan)initWithInstallmentPlan:(id)plan forCreditAccountDetailsPID:(id)d inDatabase:(id)database;
- (id)installmentPlan;
- (void)updateWithInstallmentPlan:(id)plan;
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

- (CreditInstallmentPlan)initWithInstallmentPlan:(id)plan forCreditAccountDetailsPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  dCopy = d;
  planCopy = plan;
  v11 = [objc_opt_class() _propertyValuesForInstallmentPlan:planCopy];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
  [(SQLiteEntity *)v12 setValue:dCopy forProperty:@"a"];

  v13 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v12 persistentID]];
  lineItems = [planCopy lineItems];
  v15 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:lineItems forInstallmentPlanPID:v13 inDatabase:databaseCopy];

  payments = [planCopy payments];
  v17 = [payments count];

  payments2 = [planCopy payments];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008C6B4;
  v30[3] = &unk_100840FD0;
  v30[4] = v17;
  [payments2 enumerateObjectsUsingBlock:v30];

  payments3 = [planCopy payments];
  v20 = [NSSet setWithArray:payments3];
  v21 = [CreditInstallmentPlanPayment insertOrUpdatePayments:v20 forInstallmentPlanPID:v13 inDatabase:databaseCopy];

  merchant = [planCopy merchant];
  v23 = [InstallmentPlanMerchant insertOrUpdateMerchant:merchant forInstallmentPlanPID:v13 inDatabase:databaseCopy];
  product = [planCopy product];
  v25 = [CreditInstallmentPlanProduct insertOrUpdateProduct:product forInstallmentPlanPID:v13 inDatabase:databaseCopy];
  summary = [planCopy summary];
  v27 = [InstallmentPlanSummary insertOrUpdateSummary:summary forInstallmentPlanPID:v13 inDatabase:databaseCopy];
  rewards = [planCopy rewards];

  [PaymentTransactionReward updateRewards:rewards forInstallmentPlanPID:v13 inDatabase:databaseCopy];
  return v12;
}

+ (id)installmentPlansForCreditAccountDetailsPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForCreditAccountDetailsPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _installmentPlansWithQuery:v8];

  return v9;
}

+ (id)installmentPlansWithTransactionReferenceIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTransactionReferenceIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _installmentPlansWithQuery:v8];

  return v9;
}

- (id)installmentPlan
{
  v3 = objc_alloc_init(PKCreditInstallmentPlan);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008CB1C;
  v21[3] = &unk_10083BEE0;
  v21[4] = self;
  v22 = _propertySetters;
  v6 = v3;
  v23 = v6;
  v20 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v21];

  v7 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)self database];
  v19 = [CreditInstallmentPlanLineItem lineItemForInstallmentPlanPID:v7 inDatabase:database];
  [v6 setLineItems:v19];
  v9 = [CreditInstallmentPlanPayment paymentsForInstallmentPlanPID:v7 inDatabase:database];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"dueDate" ascending:1];
  v24 = v10;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  [v6 setPayments:v12];
  v13 = [InstallmentPlanMerchant merchantForInstallmentPlanPID:v7 inDatabase:database];
  [v6 setMerchant:v13];
  v14 = [CreditInstallmentPlanProduct productForInstallmentPlanPID:v7 inDatabase:database];
  [v6 setProduct:v14];
  v15 = [InstallmentPlanSummary summaryForInstallmentPlanPID:v7 inDatabase:database];
  [v6 setSummary:v15];
  v16 = [PaymentTransactionReward rewardsInDatabase:database forInstallmentPlanPID:v7];
  [v6 setRewards:v16];
  v17 = v6;

  return v6;
}

+ (id)insertOrUpdateInstallmentPlans:(id)plans forCreditAccountDetailsPID:(id)d inDatabase:(id)database
{
  plansCopy = plans;
  dCopy = d;
  databaseCopy = database;
  v10 = objc_alloc_init(NSMutableSet);
  v29 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = plansCopy;
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
          [v18 updateWithInstallmentPlan:v15];
        }

        else
        {
          v19 = [[self alloc] initWithInstallmentPlan:v15 forCreditAccountDetailsPID:dCopy inDatabase:databaseCopy];
        }

        [v10 addObject:identifier];
        [v29 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"b" values:v10];
  v34[0] = v20;
  v21 = [self _predicateForCreditAccountDetailsPID:dCopy];
  v34[1] = v21;
  v22 = [NSArray arrayWithObjects:v34 count:2];
  v23 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v22];

  v24 = [self queryWithDatabase:databaseCopy predicate:v23];
  [v24 deleteAllEntities];
  v25 = [v29 copy];

  return v25;
}

- (void)updateWithInstallmentPlan:(id)plan
{
  planCopy = plan;
  v5 = objc_alloc_init(NSMutableDictionary);
  identifier = [planCopy identifier];
  [v5 setObjectOrNull:identifier forKey:@"b"];

  [v5 setInteger:objc_msgSend(planCopy forKey:{"state"), @"c"}];
  lastUpdated = [planCopy lastUpdated];
  v8 = _SQLValueForDate();
  [v5 setObjectOrNull:v8 forKey:@"d"];

  v9 = [planCopy apr];
  [v5 setInteger:PKPercentageDecimalToStorageInteger() forKey:@"e"];

  [v5 setInteger:objc_msgSend(planCopy forKey:{"duration"), @"f"}];
  currencyCode = [planCopy currencyCode];
  [v5 setObjectOrNull:currencyCode forKey:@"g"];

  totalAmount = [planCopy totalAmount];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v12 forKey:@"h"];

  totalProductAmount = [planCopy totalProductAmount];
  v14 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v14 forKey:@"i"];

  totalInterestAmount = [planCopy totalInterestAmount];
  v16 = PKCurrencyDecimalToStorageNumber();
  [v5 setObjectOrNull:v16 forKey:@"j"];

  [v5 setInteger:objc_msgSend(planCopy forKey:{"periodType"), @"k"}];
  transactionReferenceIdentifier = [planCopy transactionReferenceIdentifier];
  [v5 setObjectOrNull:transactionReferenceIdentifier forKey:@"m"];

  accountUserAltDSID = [planCopy accountUserAltDSID];
  [v5 setObjectOrNull:accountUserAltDSID forKey:@"n"];

  v19 = [(SQLiteEntity *)self valueForProperty:@"l"];
  LOBYTE(v16) = [v19 BOOLValue];

  if ((v16 & 1) == 0)
  {
    [v5 setInteger:objc_msgSend(planCopy forKey:{"userViewedIntroduction"), @"l"}];
  }

  v20 = [v5 copy];
  [(SQLiteEntity *)self setValuesWithDictionary:v20];

  v21 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)self database];
  lineItems = [planCopy lineItems];
  v24 = [CreditInstallmentPlanLineItem insertOrUpdateLineItems:lineItems forInstallmentPlanPID:v21 inDatabase:database];

  payments = [planCopy payments];
  v26 = [payments count];

  payments2 = [planCopy payments];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10008D2FC;
  v38[3] = &unk_100840FD0;
  v38[4] = v26;
  [payments2 enumerateObjectsUsingBlock:v38];

  payments3 = [planCopy payments];
  v29 = [NSSet setWithArray:payments3];
  v30 = [CreditInstallmentPlanPayment insertOrUpdatePayments:v29 forInstallmentPlanPID:v21 inDatabase:database];

  merchant = [planCopy merchant];
  v32 = [InstallmentPlanMerchant insertOrUpdateMerchant:merchant forInstallmentPlanPID:v21 inDatabase:database];
  product = [planCopy product];
  v34 = [CreditInstallmentPlanProduct insertOrUpdateProduct:product forInstallmentPlanPID:v21 inDatabase:database];
  summary = [planCopy summary];
  v36 = [InstallmentPlanSummary insertOrUpdateSummary:summary forInstallmentPlanPID:v21 inDatabase:database];
  rewards = [planCopy rewards];
  [PaymentTransactionReward updateRewards:rewards forInstallmentPlanPID:v21 inDatabase:database];
}

+ (void)deleteInstallmentPlansForCreditAccountDetailsPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForCreditAccountDetailsPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  v3 = [NSNumber numberWithLongLong:[(SQLiteEntity *)self persistentID]];
  database = [(SQLiteEntity *)selfCopy database];
  [CreditInstallmentPlanLineItem deleteLineItemsForInstallmentPlanPID:v3 inDatabase:database];
  [CreditInstallmentPlanPayment deletePaymentsForInstallmentPlanPID:v3 inDatabase:database];
  [InstallmentPlanMerchant deleteMerchantForInstallmentPlanPID:v3 inDatabase:database];
  [CreditInstallmentPlanProduct deleteProductForInstallmentPlanPID:v3 inDatabase:database];
  [InstallmentPlanSummary deleteSummaryForInstallmentPlanPID:v3 inDatabase:database];
  [PaymentTransactionReward deleteEntitiesForInstallmentPlanPID:v3 inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = CreditInstallmentPlan;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)_installmentPlansWithQuery:(id)query
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySetters allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008D68C;
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

+ (id)_propertyValuesForInstallmentPlan:(id)plan
{
  planCopy = plan;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [planCopy identifier];
  [v4 setObjectOrNull:identifier forKey:@"b"];

  [v4 setInteger:objc_msgSend(planCopy forKey:{"state"), @"c"}];
  lastUpdated = [planCopy lastUpdated];
  v7 = _SQLValueForDate();
  [v4 setObjectOrNull:v7 forKey:@"d"];

  v8 = [planCopy apr];
  [v4 setInteger:PKPercentageDecimalToStorageInteger() forKey:@"e"];

  [v4 setInteger:objc_msgSend(planCopy forKey:{"duration"), @"f"}];
  currencyCode = [planCopy currencyCode];
  [v4 setObjectOrNull:currencyCode forKey:@"g"];

  totalAmount = [planCopy totalAmount];
  v11 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v11 forKey:@"h"];

  totalProductAmount = [planCopy totalProductAmount];
  v13 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v13 forKey:@"i"];

  totalInterestAmount = [planCopy totalInterestAmount];
  v15 = PKCurrencyDecimalToStorageNumber();
  [v4 setObjectOrNull:v15 forKey:@"j"];

  [v4 setInteger:objc_msgSend(planCopy forKey:{"periodType"), @"k"}];
  [v4 setInteger:objc_msgSend(planCopy forKey:{"userViewedIntroduction"), @"l"}];
  transactionReferenceIdentifier = [planCopy transactionReferenceIdentifier];
  [v4 setObjectOrNull:transactionReferenceIdentifier forKey:@"m"];

  accountUserAltDSID = [planCopy accountUserAltDSID];

  [v4 setObjectOrNull:accountUserAltDSID forKey:@"n"];
  v18 = [v4 copy];

  return v18;
}

@end