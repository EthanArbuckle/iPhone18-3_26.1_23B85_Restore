@interface CreditRecoveryPaymentPlan
+ (id)_insertPaymentPlan:(id)plan forAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)_propertySettersForCreditRecoveryPaymentPlan;
+ (id)creditRecoveryPaymentPlansForAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)propertyValuesForPaymentPlan:(id)plan accountIdentifier:(id)identifier;
+ (id)replaceCreditRecoveryPaymentPlans:(id)plans forAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteCreditRecoveryPaymentPlansForAccountIdentifier:(id)identifier inDatabase:(id)database;
- (id)creditRecoveryPaymentPlan;
- (void)_updateWithPaymentPlan:(id)plan accountIdentifier:(id)identifier;
@end

@implementation CreditRecoveryPaymentPlan

+ (id)creditRecoveryPaymentPlansForAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = objc_alloc_init(NSMutableArray);
  v21 = @"ROWID";
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000F9C54;
  v18 = &unk_10083CBC0;
  v19 = databaseCopy;
  v20 = v9;
  v11 = v9;
  v12 = databaseCopy;
  [v8 enumeratePersistentIDsAndProperties:v10 usingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

+ (void)deleteCreditRecoveryPaymentPlansForAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (id)replaceCreditRecoveryPaymentPlans:(id)plans forAccountIdentifier:(id)identifier inDatabase:(id)database
{
  plansCopy = plans;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000F9E84;
  v17 = &unk_100841768;
  identifierCopy = identifier;
  databaseCopy = database;
  v20 = plansCopy;
  v21 = objc_alloc_init(NSMutableArray);
  v8 = v21;
  v9 = plansCopy;
  v10 = databaseCopy;
  v11 = identifierCopy;
  sub_1005D4424(v10, &v14);
  v12 = [v8 copy];

  return v12;
}

- (void)_updateWithPaymentPlan:(id)plan accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  planCopy = plan;
  v8 = [objc_opt_class() propertyValuesForPaymentPlan:planCopy accountIdentifier:identifierCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v8];
}

+ (id)_insertPaymentPlan:(id)plan forAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  planCopy = plan;
  v11 = [self alloc];
  v12 = [self propertyValuesForPaymentPlan:planCopy accountIdentifier:identifierCopy];

  v13 = [v11 initWithPropertyValues:v12 inDatabase:databaseCopy];

  return v13;
}

+ (id)propertyValuesForPaymentPlan:(id)plan accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  planCopy = plan;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObjectOrNull:identifierCopy forKey:@"account_identifier"];

  [v7 setBool:objc_msgSend(planCopy forKey:{"enrolled"), @"enrolled"}];
  identifier = [planCopy identifier];
  [v7 setObjectOrNull:identifier forKey:@"identifier"];

  displayName = [planCopy displayName];
  [v7 setObjectOrNull:displayName forKey:@"display_name"];

  enrollmentDate = [planCopy enrollmentDate];

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
  _propertySettersForCreditRecoveryPaymentPlan = [objc_opt_class() _propertySettersForCreditRecoveryPaymentPlan];
  allKeys = [_propertySettersForCreditRecoveryPaymentPlan allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FA4B4;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForCreditRecoveryPaymentPlan;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForCreditRecoveryPaymentPlan;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end