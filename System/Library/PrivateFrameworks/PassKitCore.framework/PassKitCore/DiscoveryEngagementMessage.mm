@interface DiscoveryEngagementMessage
+ (DiscoveryEngagementMessage)engagementMessageWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)_engagementMessagesInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)_predicateForActiveEngagementMessagesWithPassQualifier:(int64_t)qualifier;
+ (id)_predicateForCheckingRelevantDate:(id)date;
+ (id)_predicateForEngagementMessagesWithPassQualifier:(int64_t)qualifier;
+ (id)_propertySettersForEngagementMessage;
+ (id)engagementMessagesForPassQualifier:(int64_t)qualifier active:(unint64_t)active relevantDate:(id)date inDatabase:(id)database;
+ (id)insertOrUpdateEngagementMessage:(id)message messageOrder:(unint64_t)order inDatabase:(id)database;
+ (id)updateEngagementMessage:(id)message inDatabase:(id)database;
+ (void)deleteAllEngagementMessagesInDatabase:(id)database;
+ (void)deleteEngagementMessageWithIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteEngagementMessagesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (DiscoveryEngagementMessage)initWithEngagementMessage:(id)message messageOrder:(unint64_t)order inDatabase:(id)database;
- (id)_dictWithPropertiesForEngagementMessage:(id)message;
- (id)engagementMessage;
- (void)setMessageOrder;
- (void)updateWithEngagementMessage:(id)message;
@end

@implementation DiscoveryEngagementMessage

+ (id)engagementMessagesForPassQualifier:(int64_t)qualifier active:(unint64_t)active relevantDate:(id)date inDatabase:(id)database
{
  dateCopy = date;
  databaseCopy = database;
  switch(active)
  {
    case 2uLL:
      goto LABEL_4;
    case 1uLL:
      v12 = [self _predicateForActiveEngagementMessagesWithPassQualifier:qualifier];
      goto LABEL_6;
    case 0uLL:
LABEL_4:
      v12 = [self _predicateForEngagementMessagesWithPassQualifier:qualifier];
LABEL_6:
      v13 = v12;
      goto LABEL_8;
  }

  v13 = 0;
LABEL_8:
  v19[0] = v13;
  v14 = [self _predicateForCheckingRelevantDate:dateCopy];
  v19[1] = v14;
  v15 = [NSArray arrayWithObjects:v19 count:2];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [self _engagementMessagesInDatabase:databaseCopy matchingPredicate:v16];

  return v17;
}

+ (DiscoveryEngagementMessage)engagementMessageWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEngagementMessageIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 setMessageOrder];

  return v8;
}

+ (id)_engagementMessagesInDatabase:(id)database matchingPredicate:(id)predicate
{
  databaseCopy = database;
  v20 = @"m";
  predicateCopy = predicate;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  v9 = [self queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v8];

  v10 = objc_alloc_init(NSMutableArray);
  v19 = @"pid";
  v11 = [NSArray arrayWithObjects:&v19 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100026370;
  v16[3] = &unk_10083CBC0;
  v17 = databaseCopy;
  v18 = v10;
  v12 = v10;
  v13 = databaseCopy;
  [v9 enumeratePersistentIDsAndProperties:v11 usingBlock:v16];

  v14 = [v12 copy];

  return v14;
}

+ (id)insertOrUpdateEngagementMessage:(id)message messageOrder:(unint64_t)order inDatabase:(id)database
{
  databaseCopy = database;
  messageCopy = message;
  identifier = [messageCopy identifier];
  v11 = [self engagementMessageWithIdentifier:identifier inDatabase:databaseCopy];

  if (v11)
  {
    [v11 setMessageOrder:order];
    [v11 updateWithEngagementMessage:messageCopy];
  }

  else
  {
    v11 = [[self alloc] initWithEngagementMessage:messageCopy messageOrder:order inDatabase:databaseCopy];
  }

  return v11;
}

- (DiscoveryEngagementMessage)initWithEngagementMessage:(id)message messageOrder:(unint64_t)order inDatabase:(id)database
{
  self->_messageOrder = order;
  databaseCopy = database;
  v8 = [(DiscoveryEngagementMessage *)self _dictWithPropertiesForEngagementMessage:message];
  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];

  return v9;
}

- (id)engagementMessage
{
  v3 = objc_alloc_init(PKDiscoveryEngagementMessage);
  v4 = objc_alloc_init(PKDiscoveryEngagementMessageAction);
  [v3 setAction:v4];
  v5 = +[DiscoveryEngagementMessage _propertySettersForEngagementMessage];
  v6 = [NSMutableArray alloc];
  allKeys = [v5 allKeys];
  v8 = [v6 initWithArray:allKeys];

  [v8 addObject:@"n"];
  [v8 addObject:@"o"];
  v9 = [v8 copy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002669C;
  v15[3] = &unk_10083C240;
  v16 = v5;
  v10 = v3;
  v17 = v10;
  v11 = v5;
  [(SQLiteEntity *)self getValuesForProperties:v9 withApplier:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)updateEngagementMessage:(id)message inDatabase:(id)database
{
  messageCopy = message;
  databaseCopy = database;
  identifier = [messageCopy identifier];
  v9 = [self engagementMessageWithIdentifier:identifier inDatabase:databaseCopy];

  if (v9)
  {
    [v9 updateWithEngagementMessage:messageCopy];
  }

  return v9;
}

- (void)updateWithEngagementMessage:(id)message
{
  v4 = [(DiscoveryEngagementMessage *)self _dictWithPropertiesForEngagementMessage:message];
  [(SQLiteEntity *)self setValuesWithDictionary:v4];
}

+ (void)deleteEngagementMessageWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForEngagementMessageIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  [v8 deleteAllEntities];
}

+ (void)deleteEngagementMessagesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"a" values:identifiers];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllEngagementMessagesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  [v6 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v3.receiver = self;
  v3.super_class = DiscoveryEngagementMessage;
  return [(SQLiteEntity *)&v3 deleteFromDatabase];
}

+ (id)_predicateForEngagementMessagesWithPassQualifier:(int64_t)qualifier
{
  if (qualifier >= 3)
  {
    if (qualifier == 3)
    {
      v4 = +[SQLiteBooleanPredicate truePredicate];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = [NSNumber numberWithInteger:?];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"f" equalToValue:v3];
  }

  return v4;
}

+ (id)_predicateForActiveEngagementMessagesWithPassQualifier:(int64_t)qualifier
{
  v3 = [self _predicateForEngagementMessagesWithPassQualifier:qualifier];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"c" equalToValue:&off_1008A27C8];
  v8[0] = v4;
  v8[1] = v3;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (id)_predicateForCheckingRelevantDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v16 = [SQLiteNullPredicate isNullPredicateWithProperty:@"n"];
    v4 = _SQLValueForDate();
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"n" lessThanOrEqualToValue:v4];

    v19[0] = v16;
    v19[1] = v5;
    v6 = [NSArray arrayWithObjects:v19 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

    v8 = [SQLiteNullPredicate isNullPredicateWithProperty:@"o"];
    v9 = _SQLValueForDate();
    v10 = [SQLiteComparisonPredicate predicateWithProperty:@"o" greaterThanOrEqualToValue:v9];

    v18[0] = v8;
    v18[1] = v10;
    v11 = [NSArray arrayWithObjects:v18 count:2];
    v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];

    v17[0] = v7;
    v17[1] = v12;
    v13 = [NSArray arrayWithObjects:v17 count:2];
    v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
  }

  else
  {
    v14 = +[SQLiteBooleanPredicate truePredicate];
  }

  return v14;
}

+ (id)_propertySettersForEngagementMessage
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_10083CCA8;
  v5[1] = &stru_10083CCC8;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_10083CCE8;
  v5[3] = &stru_10083CD08;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_10083CD28;
  v5[5] = &stru_10083CD48;
  v4[6] = @"h";
  v4[7] = @"i";
  v5[6] = &stru_10083CD68;
  v5[7] = &stru_10083CD88;
  v4[8] = @"j";
  v4[9] = @"k";
  v5[8] = &stru_10083CDA8;
  v5[9] = &stru_10083CDC8;
  v4[10] = @"l";
  v4[11] = @"c";
  v5[10] = &stru_10083CDE8;
  v5[11] = &stru_10083CE08;
  v4[12] = @"p";
  v4[13] = @"q";
  v5[12] = &stru_10083CE28;
  v5[13] = &stru_10083CE48;
  v4[14] = @"r";
  v4[15] = @"s";
  v5[14] = &stru_10083CE68;
  v5[15] = &stru_10083CE88;
  v4[16] = @"t";
  v5[16] = &stru_10083CEA8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:17];

  return v2;
}

- (id)_dictWithPropertiesForEngagementMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSMutableDictionary dictionary];
  identifier = [messageCopy identifier];
  [v5 setObjectOrNull:identifier forKey:@"a"];

  [v5 setInteger:objc_msgSend(messageCopy forKey:{"version"), @"b"}];
  ruleIdentifier = [messageCopy ruleIdentifier];
  [v5 setObjectOrNull:ruleIdentifier forKey:@"d"];

  osVersionRange = [messageCopy osVersionRange];
  v9 = _SQLValueForOSVersionRequirementRange();
  [v5 setObjectOrNull:v9 forKey:@"e"];

  [v5 setInteger:objc_msgSend(messageCopy forKey:{"passQualifier"), @"f"}];
  titleKey = [messageCopy titleKey];
  [v5 setObjectOrNull:titleKey forKey:@"g"];

  messageKey = [messageCopy messageKey];
  [v5 setObjectOrNull:messageKey forKey:@"h"];

  action = [messageCopy action];
  titleKey2 = [action titleKey];
  [v5 setObjectOrNull:titleKey2 forKey:@"i"];

  action2 = [messageCopy action];
  [v5 setInteger:objc_msgSend(action2 forKey:{"type"), @"j"}];

  iconURLs = [messageCopy iconURLs];
  v16 = _SQLValueForActionIconURLs(iconURLs);
  [v5 setObjectOrNull:v16 forKey:@"k"];

  action3 = [messageCopy action];
  actionInfo = [action3 actionInfo];
  v19 = _SQLValueForActionInfo(actionInfo);
  [v5 setObjectOrNull:v19 forKey:@"l"];

  [v5 setInteger:objc_msgSend(messageCopy forKey:{"status"), @"c"}];
  [v5 setInteger:self->_messageOrder forKey:@"m"];
  relevantDateRange = [messageCopy relevantDateRange];
  startDate = [relevantDateRange startDate];
  v22 = _SQLValueForDate();
  [v5 setObjectOrNull:v22 forKey:@"n"];

  relevantDateRange2 = [messageCopy relevantDateRange];
  endDate = [relevantDateRange2 endDate];
  v25 = _SQLValueForDate();
  [v5 setObjectOrNull:v25 forKey:@"o"];

  [v5 setInteger:objc_msgSend(messageCopy forKey:{"viewCount"), @"p"}];
  [v5 setBool:objc_msgSend(messageCopy forKey:{"canReportIdentifierToAggd"), @"q"}];
  [v5 setInteger:objc_msgSend(messageCopy forKey:{"maxViewCount"), @"r"}];
  [v5 setInteger:objc_msgSend(messageCopy forKey:{"type"), @"s"}];
  hardwareVersionRange = [messageCopy hardwareVersionRange];

  v27 = _SQLValueForHardwareVersionRange();
  [v5 setObjectOrNull:v27 forKey:@"t"];

  return v5;
}

- (void)setMessageOrder
{
  v9 = @"m";
  v10 = &stru_10083CEE8;
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  allKeys = [v3 allKeys];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027B2C;
  v6[3] = &unk_10083C240;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v6];
}

@end