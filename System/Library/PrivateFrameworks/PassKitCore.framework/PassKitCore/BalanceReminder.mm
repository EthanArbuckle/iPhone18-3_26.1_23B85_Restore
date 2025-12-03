@interface BalanceReminder
+ (id)_predicateForBalanceIdentifier:(id)identifier;
+ (id)_predicateForBalanceReminder:(id)reminder passIdentifier:(id)identifier;
+ (id)_predicateForBalanceReminder:(id)reminder passPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)balanceReminderInDatabase:(id)database forBalanceIdentifier:(id)identifier passIdentifier:(id)passIdentifier;
+ (id)balanceReminderInDatabase:(id)database forQuery:(id)query;
+ (id)insertOrUpdateBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier pass:(id)pass database:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteAnyInDatabase:(id)database forPassIdentifier:(id)identifier;
- (BalanceReminder)initWithBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier pass:(id)pass database:(id)database;
- (id)balanceReminder;
- (void)updateWithBalanceReminder:(id)reminder;
@end

@implementation BalanceReminder

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  joinsCopy = joins;
  v9 = @"pass.unique_id";
  propertyCopy = property;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  v8 = [v7 containsObject:{propertyCopy, v9}];

  if (v8)
  {
    [joinsCopy addObject:@"JOIN pass ON pass.pid = balance_reminder.pass_pid"];
  }
}

+ (id)balanceReminderInDatabase:(id)database forBalanceIdentifier:(id)identifier passIdentifier:(id)passIdentifier
{
  databaseCopy = database;
  v9 = [self _predicateForBalanceReminder:identifier passIdentifier:passIdentifier];
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];

  v11 = [self balanceReminderInDatabase:databaseCopy forQuery:v10];

  return v11;
}

+ (id)balanceReminderInDatabase:(id)database forQuery:(id)query
{
  databaseCopy = database;
  queryCopy = query;
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
  v9 = v15 = self;
  v13 = v9;
  [queryCopy enumeratePersistentIDsAndProperties:v8 usingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (void)deleteAnyInDatabase:(id)database forPassIdentifier:(id)identifier
{
  databaseCopy = database;
  v8 = [self _predicateForPassWithUniqueIdentifier:identifier];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)insertOrUpdateBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier pass:(id)pass database:(id)database
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  passCopy = pass;
  databaseCopy = database;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005AC0;
  v33 = sub_10000B16C;
  v34 = 0;
  v14 = [self _predicateForBalanceReminder:identifierCopy passPID:{objc_msgSend(passCopy, "persistentID")}];
  v15 = [self queryWithDatabase:databaseCopy predicate:v14];

  v35 = @"pid";
  v16 = [NSArray arrayWithObjects:&v35 count:1];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001087D8;
  v26 = &unk_100846A08;
  v28 = &v29;
  v17 = databaseCopy;
  v27 = v17;
  [v15 enumeratePersistentIDsAndProperties:v16 usingBlock:&v23];

  v18 = v30[5];
  if (v18)
  {
    [v18 updateWithBalanceReminder:{reminderCopy, v23, v24, v25, v26}];
    v19 = v30[5];
  }

  else
  {
    v20 = [self alloc];
    v19 = [v20 initWithBalanceReminder:reminderCopy forBalanceIdentifier:identifierCopy pass:passCopy database:{v17, v23, v24, v25, v26}];
  }

  v21 = v19;

  _Block_object_dispose(&v29, 8);

  return v21;
}

- (BalanceReminder)initWithBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier pass:(id)pass database:(id)database
{
  if (reminder)
  {
    databaseCopy = database;
    passCopy = pass;
    identifierCopy = identifier;
    reminderCopy = reminder;
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = +[NSNull null];
    persistentID = [passCopy persistentID];

    v17 = [NSNumber numberWithLongLong:persistentID];
    [v14 setObject:v17 forKeyedSubscript:@"pass_pid"];

    if (identifierCopy)
    {
      v18 = identifierCopy;
    }

    else
    {
      v18 = v15;
    }

    [v14 setObject:v18 forKeyedSubscript:@"balance_identifier"];

    threshold = [reminderCopy threshold];
    stringValue = [threshold stringValue];
    [v14 setObject:stringValue forKeyedSubscript:@"threshold"];

    isEnabled = [reminderCopy isEnabled];
    v22 = [NSNumber numberWithBool:isEnabled];
    [v14 setObject:v22 forKeyedSubscript:@"enabled"];

    v23 = [(SQLiteEntity *)self initWithPropertyValues:v14 inDatabase:databaseCopy];
    self = v23;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_predicateForBalanceReminder:(id)reminder passIdentifier:(id)identifier
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = [objc_opt_class() _predicateForBalanceIdentifier:reminderCopy];
    v9 = [self _predicateForPassWithUniqueIdentifier:identifierCopy];
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

+ (id)_predicateForBalanceReminder:(id)reminder passPID:(int64_t)d
{
  reminderCopy = reminder;
  v6 = [objc_opt_class() _predicateForBalanceIdentifier:reminderCopy];

  v7 = [NSNumber numberWithLongLong:d];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_pid" equalToValue:v7];

  v12[0] = v6;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForBalanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = PKPaymentBalanceStoredValueDefaultIdentifier;
  v5 = [identifierCopy isEqualToString:PKPaymentBalanceStoredValueDefaultIdentifier];
  if (!identifierCopy || v5)
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
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"balance_identifier" equalToValue:identifierCopy];
  }

  return v6;
}

- (id)balanceReminder
{
  v3 = objc_alloc_init(PKPaymentBalanceReminder);
  v4 = +[BalanceReminder _propertySetters];
  allKeys = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100108E88;
  v11[3] = &unk_10083C240;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)updateWithBalanceReminder:(id)reminder
{
  reminderCopy = reminder;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setInteger:objc_msgSend(reminderCopy forKey:{"isEnabled"), @"enabled"}];
  threshold = [reminderCopy threshold];

  [v6 setObjectOrNull:threshold forKey:@"threshold"];
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