@interface BalanceReminder
+ (id)_predicateForBalanceIdentifier:(id)a3;
+ (id)_predicateForBalanceReminder:(id)a3 passIdentifier:(id)a4;
+ (id)_predicateForBalanceReminder:(id)a3 passPID:(int64_t)a4;
+ (id)_propertySetters;
+ (id)balanceReminderInDatabase:(id)a3 forBalanceIdentifier:(id)a4 passIdentifier:(id)a5;
+ (id)balanceReminderInDatabase:(id)a3 forQuery:(id)a4;
+ (id)insertOrUpdateBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 pass:(id)a5 database:(id)a6;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteAnyInDatabase:(id)a3 forPassIdentifier:(id)a4;
- (BalanceReminder)initWithBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 pass:(id)a5 database:(id)a6;
- (id)balanceReminder;
- (void)updateWithBalanceReminder:(id)a3;
@end

@implementation BalanceReminder

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a4;
  v9 = @"pass.unique_id";
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  v8 = [v7 containsObject:{v6, v9}];

  if (v8)
  {
    [v5 addObject:@"JOIN pass ON pass.pid = balance_reminder.pass_pid"];
  }
}

+ (id)balanceReminderInDatabase:(id)a3 forBalanceIdentifier:(id)a4 passIdentifier:(id)a5
{
  v8 = a3;
  v9 = [a1 _predicateForBalanceReminder:a4 passIdentifier:a5];
  v10 = [a1 queryWithDatabase:v8 predicate:v9];

  v11 = [a1 balanceReminderInDatabase:v8 forQuery:v10];

  return v11;
}

+ (id)balanceReminderInDatabase:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005AC0;
  v20 = sub_10000B16C;
  v21 = 0;
  v22[0] = @"threshold";
  v22[1] = @"enabled";
  v8 = [NSArray arrayWithObjects:v22 count:2];
  +[BalanceReminder _propertySetters];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100108474;
  v12[3] = &unk_100842FF0;
  v14 = &v16;
  v9 = v15 = a1;
  v13 = v9;
  [v7 enumeratePersistentIDsAndProperties:v8 usingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (void)deleteAnyInDatabase:(id)a3 forPassIdentifier:(id)a4
{
  v6 = a3;
  v8 = [a1 _predicateForPassWithUniqueIdentifier:a4];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)insertOrUpdateBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 pass:(id)a5 database:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005AC0;
  v33 = sub_10000B16C;
  v34 = 0;
  v14 = [a1 _predicateForBalanceReminder:v11 passPID:{objc_msgSend(v12, "persistentID")}];
  v15 = [a1 queryWithDatabase:v13 predicate:v14];

  v35 = @"pid";
  v16 = [NSArray arrayWithObjects:&v35 count:1];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001087D8;
  v26 = &unk_100846A08;
  v28 = &v29;
  v17 = v13;
  v27 = v17;
  [v15 enumeratePersistentIDsAndProperties:v16 usingBlock:&v23];

  v18 = v30[5];
  if (v18)
  {
    [v18 updateWithBalanceReminder:{v10, v23, v24, v25, v26}];
    v19 = v30[5];
  }

  else
  {
    v20 = [a1 alloc];
    v19 = [v20 initWithBalanceReminder:v10 forBalanceIdentifier:v11 pass:v12 database:{v17, v23, v24, v25, v26}];
  }

  v21 = v19;

  _Block_object_dispose(&v29, 8);

  return v21;
}

- (BalanceReminder)initWithBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 pass:(id)a5 database:(id)a6
{
  if (a3)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = +[NSNull null];
    v16 = [v11 persistentID];

    v17 = [NSNumber numberWithLongLong:v16];
    [v14 setObject:v17 forKeyedSubscript:@"pass_pid"];

    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v15;
    }

    [v14 setObject:v18 forKeyedSubscript:@"balance_identifier"];

    v19 = [v13 threshold];
    v20 = [v19 stringValue];
    [v14 setObject:v20 forKeyedSubscript:@"threshold"];

    v21 = [v13 isEnabled];
    v22 = [NSNumber numberWithBool:v21];
    [v14 setObject:v22 forKeyedSubscript:@"enabled"];

    v23 = [(SQLiteEntity *)self initWithPropertyValues:v14 inDatabase:v10];
    self = v23;

    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)_predicateForBalanceReminder:(id)a3 passIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [objc_opt_class() _predicateForBalanceIdentifier:v6];
    v9 = [a1 _predicateForPassWithUniqueIdentifier:v7];
    v13[0] = v8;
    v13[1] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  }

  else
  {
    v11 = +[SQLiteBooleanPredicate falsePredicate];
  }

  return v11;
}

+ (id)_predicateForBalanceReminder:(id)a3 passPID:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _predicateForBalanceIdentifier:v5];

  v7 = [NSNumber numberWithLongLong:a4];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v7];

  v12[0] = v6;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForBalanceIdentifier:(id)a3
{
  v3 = a3;
  v4 = PKPaymentBalanceStoredValueDefaultIdentifier;
  v5 = [v3 isEqualToString:PKPaymentBalanceStoredValueDefaultIdentifier];
  if (!v3 || v5)
  {
    v7 = [SQLiteNullPredicate isNullPredicateWithProperty:@"balance_identifier"];
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"balance_identifier" equalToValue:v4];
    v11[0] = v7;
    v11[1] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:2];
    v6 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];
  }

  else
  {
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"balance_identifier" equalToValue:v3];
  }

  return v6;
}

- (id)balanceReminder
{
  v3 = objc_alloc_init(PKPaymentBalanceReminder);
  v4 = +[BalanceReminder _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100108E88;
  v11[3] = &unk_10083C240;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)updateWithBalanceReminder:(id)a3
{
  v4 = a3;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setInteger:objc_msgSend(v4 forKey:{"isEnabled"), @"enabled"}];
  v5 = [v4 threshold];

  [v6 setObjectOrNull:v5 forKey:@"threshold"];
  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

+ (id)_propertySetters
{
  v4[0] = @"threshold";
  v4[1] = @"enabled";
  v5[0] = &stru_100846A48;
  v5[1] = &stru_100846A68;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end