@interface CreditAccountDetails
+ (id)_propertySettersForCreditAccountDetails;
- (id)accountDetails;
@end

@implementation CreditAccountDetails

- (id)accountDetails
{
  v3 = objc_alloc_init(PKCreditAccountDetails);
  _propertySettersForCreditAccountDetails = [objc_opt_class() _propertySettersForCreditAccountDetails];
  allKeys = [_propertySettersForCreditAccountDetails allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000BA10;
  v17[3] = &unk_10083BEE0;
  v17[4] = self;
  v18 = _propertySettersForCreditAccountDetails;
  v19 = v3;
  v6 = v3;
  v7 = _propertySettersForCreditAccountDetails;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v17];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [CreditAccountRates creditAccountRatesForCreditAccountDetailsPID:persistentID inDatabase:database];
  [v6 setRates:v10];

  v11 = [CreditAccountSummary creditAccountSummaryForCreditAccountDetailsPID:persistentID inDatabase:database];
  [v6 setAccountSummary:v11];

  v12 = [VirtualCard virtualCardsForCreditAccountDetailsPID:persistentID inDatabase:database];
  [v6 setVirtualCards:v12];

  v13 = [NSNumber numberWithUnsignedLongLong:persistentID];
  v14 = [CreditInstallmentPlan installmentPlansForCreditAccountDetailsPID:v13 inDatabase:database];
  [v6 setInstallmentPlans:v14];

  v15 = [[PKAccountDetails alloc] initWithCreditDetails:v6];

  return v15;
}

+ (id)_propertySettersForCreditAccountDetails
{
  v4[0] = @"b";
  v4[1] = @"n";
  v5[0] = &stru_10085EB20;
  v5[1] = &stru_10085EB40;
  v4[2] = @"o";
  v4[3] = @"c";
  v5[2] = &stru_10085EB60;
  v5[3] = &stru_10085EB80;
  v4[4] = @"d";
  v4[5] = @"m";
  v5[4] = &stru_10085EBA0;
  v5[5] = &stru_10085EBC0;
  v4[6] = @"f";
  v4[7] = @"h";
  v5[6] = &stru_10085EBE0;
  v5[7] = &stru_10085EC00;
  v4[8] = @"g";
  v4[9] = @"i";
  v5[8] = &stru_10085EC20;
  v5[9] = &stru_10085EC40;
  v4[10] = @"j";
  v4[11] = @"k";
  v5[10] = &stru_10085EC60;
  v5[11] = &stru_10085EC80;
  v4[12] = @"l";
  v4[13] = @"p";
  v5[12] = &stru_10085ECA0;
  v5[13] = &stru_10085ECC0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];

  return v2;
}

@end