@interface CreditRecoveryPaymentPlan
+ (id)_insertPaymentPlan:(id)a3 forAccountIdentifier:(id)a4 inDatabase:(id)a5;
+ (id)_propertySettersForCreditRecoveryPaymentPlan;
+ (id)creditRecoveryPaymentPlansForAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)propertyValuesForPaymentPlan:(id)a3 accountIdentifier:(id)a4;
+ (id)replaceCreditRecoveryPaymentPlans:(id)a3 forAccountIdentifier:(id)a4 inDatabase:(id)a5;
+ (void)deleteCreditRecoveryPaymentPlansForAccountIdentifier:(id)a3 inDatabase:(id)a4;
- (id)creditRecoveryPaymentPlan;
- (void)_updateWithPaymentPlan:(id)a3 accountIdentifier:(id)a4;
@end

@implementation CreditRecoveryPaymentPlan

+ (id)creditRecoveryPaymentPlansForAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = objc_alloc_init(NSMutableArray);
  v21 = @"ROWID";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000F9C54;
  v18 = &unk_10083CBC0;
  v19 = v6;
  v20 = v9;
  v11 = v9;
  v12 = v6;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (void)deleteCreditRecoveryPaymentPlansForAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)replaceCreditRecoveryPaymentPlans:(id)a3 forAccountIdentifier:(id)a4 inDatabase:(id)a5
{
  v7 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000F9E84;
  v17 = &unk_100841768;
  v18 = a4;
  v19 = a5;
  v20 = v7;
  v21 = objc_alloc_init(NSMutableArray);
  v8 = v21;
  v9 = v7;
  v10 = v19;
  v11 = v18;
  sub_1005D4424(v10, &v14);
  v12 = [v8 copy];

  return v12;
}

- (void)_updateWithPaymentPlan:(id)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() propertyValuesForPaymentPlan:v7 accountIdentifier:v6];

  [(SQLiteEntity *)self setValuesWithDictionary:v8];
}

+ (id)_insertPaymentPlan:(id)a3 forAccountIdentifier:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [a1 propertyValuesForPaymentPlan:v10 accountIdentifier:v9];

  v13 = [v11 initWithPropertyValues:v12 inDatabase:v8];

  return v13;
}

+ (id)propertyValuesForPaymentPlan:(id)a3 accountIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObjectOrNull:v5 forKey:@"account_identifier"];

  [v7 setBool:objc_msgSend(v6 forKey:{"enrolled"), @"enrolled"}];
  v8 = [v6 identifier];
  [v7 setObjectOrNull:v8 forKey:@"identifier"];

  v9 = [v6 displayName];
  [v7 setObjectOrNull:v9 forKey:@"display_name"];

  v10 = [v6 enrollmentDate];

  v11 = _SQLValueForDate();
  [v7 setObjectOrNull:v11 forKey:@"enrollment_date"];

  return v7;
}

+ (id)_propertySettersForCreditRecoveryPaymentPlan
{
  v4[0] = @"enrolled";
  v4[1] = @"identifier";
  v5[0] = &stru_1008457E8;
  v5[1] = &stru_100845808;
  v4[2] = @"display_name";
  v4[3] = @"enrollment_date";
  v5[2] = &stru_100845828;
  v5[3] = &stru_100845848;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (id)creditRecoveryPaymentPlan
{
  v3 = objc_alloc_init(PKCreditRecoveryPaymentPlan);
  v4 = [objc_opt_class() _propertySettersForCreditRecoveryPaymentPlan];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FA4B4;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end