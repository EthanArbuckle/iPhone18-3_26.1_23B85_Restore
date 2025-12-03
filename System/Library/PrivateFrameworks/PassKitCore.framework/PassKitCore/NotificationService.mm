@interface NotificationService
+ (id)_notificationServicesInDatabase:(id)database matchingPredicate:(id)predicate;
+ (id)_predicateForRegistrationURL:(id)l;
+ (id)_predicateForServiceType:(unint64_t)type;
+ (id)_predicateForServiceURL:(id)l;
+ (id)_propertySettersForPaymentTransaction;
+ (id)anyInDatabase:(id)database withPushTopic:(id)topic;
+ (id)anyInDatabase:(id)database withPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL;
+ (id)anyInDatabase:(id)database withServiceURL:(id)l registrationURL:(id)rL;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (id)insertNotificationServiceWithPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL deviceIdentifier:(id)identifier inDatabase:(id)database;
+ (id)notificationServicesInDatabase:(id)database withPushTopic:(id)topic;
+ (id)notificationServicesInDatabase:(id)database withPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL;
- (NotificationService)initWithPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL deviceIdentifier:(id)identifier inDatabase:(id)database;
- (id)notificationService;
- (void)updateWithLastUpdatedDate:(id)date;
- (void)updateWithLastUpdatedTag:(id)tag;
- (void)updateWithNotificationService:(id)service;
@end

@implementation NotificationService

- (NotificationService)initWithPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL deviceIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  rLCopy = rL;
  lCopy = l;
  topicCopy = topic;
  v19 = +[NSMutableDictionary dictionary];
  [v19 setObjectOrNull:identifierCopy forKey:@"device_identifier"];

  [v19 setObjectOrNull:topicCopy forKey:@"push_topic"];
  [v19 setInteger:type forKey:@"service_type"];
  v20 = _SQLValueForURL();

  [v19 setObjectOrNull:v20 forKey:@"service_url"];
  v21 = _SQLValueForURL();

  [v19 setObjectOrNull:v21 forKey:@"registration_url"];
  v22 = [(SQLiteEntity *)self initWithPropertyValues:v19 inDatabase:databaseCopy];

  return v22;
}

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertNotificationServiceWithPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL deviceIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  rLCopy = rL;
  lCopy = l;
  topicCopy = topic;
  v19 = [[self alloc] initWithPushTopic:topicCopy serviceType:type serviceURL:lCopy registrationURL:rLCopy deviceIdentifier:identifierCopy inDatabase:databaseCopy];

  return v19;
}

+ (id)anyInDatabase:(id)database withPushTopic:(id)topic
{
  databaseCopy = database;
  v7 = [self _predicateForPushTopic:topic];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)database withServiceURL:(id)l registrationURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  databaseCopy = database;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [self _predicateForServiceURL:lCopy];

  [v11 addObject:v12];
  if (rLCopy)
  {
    [self _predicateForRegistrationURL:rLCopy];
  }

  else
  {
    [self _predicateForNoRegistrationURL];
  }
  v13 = ;
  [v11 addObject:v13];

  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v15 = [self anyInDatabase:databaseCopy predicate:v14];

  return v15;
}

+ (id)anyInDatabase:(id)database withPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  topicCopy = topic;
  databaseCopy = database;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = [self _predicateForServiceType:type];
  [v16 addObject:v17];

  v18 = [self _predicateForPushTopic:topicCopy];

  [v16 addObject:v18];
  v19 = [self _predicateForServiceURL:lCopy];

  [v16 addObject:v19];
  if (rLCopy)
  {
    [self _predicateForRegistrationURL:rLCopy];
  }

  else
  {
    [self _predicateForNoRegistrationURL];
  }
  v20 = ;
  [v16 addObject:v20];

  v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v22 = [self anyInDatabase:databaseCopy predicate:v21];

  return v22;
}

+ (id)notificationServicesInDatabase:(id)database withPushTopic:(id)topic
{
  databaseCopy = database;
  v7 = [self _predicateForPushTopic:topic];
  v8 = [self _notificationServicesInDatabase:databaseCopy matchingPredicate:v7];

  return v8;
}

+ (id)notificationServicesInDatabase:(id)database withPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  topicCopy = topic;
  databaseCopy = database;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = [self _predicateForServiceType:type];
  [v16 addObject:v17];

  v18 = [self _predicateForPushTopic:topicCopy];

  [v16 addObject:v18];
  v19 = [self _predicateForServiceURL:lCopy];

  [v16 addObject:v19];
  if (rLCopy)
  {
    [self _predicateForRegistrationURL:rLCopy];
  }

  else
  {
    [self _predicateForNoRegistrationURL];
  }
  v20 = ;
  [v16 addObject:v20];

  v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v22 = [self _notificationServicesInDatabase:databaseCopy matchingPredicate:v21];

  return v22;
}

- (id)notificationService
{
  v3 = objc_alloc_init(PDNotificationService);
  v4 = +[NotificationService _propertySettersForPaymentTransaction];
  allKeys = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001376E4;
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

- (void)updateWithLastUpdatedDate:(id)date
{
  dateCopy = date;
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObjectOrNull:dateCopy forKey:@"last_updated_date"];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)updateWithLastUpdatedTag:(id)tag
{
  tagCopy = tag;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObjectOrNull:tagCopy forKey:@"last_updated_tag"];

  v5 = +[NSDate date];
  [v6 setObjectOrNull:v5 forKey:@"last_updated_tag_date"];

  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

- (void)updateWithNotificationService:(id)service
{
  serviceCopy = service;
  v11 = +[NSMutableDictionary dictionary];
  pushToken = [serviceCopy pushToken];
  [v11 setObjectOrNull:pushToken forKey:@"push_token"];

  authenticationToken = [serviceCopy authenticationToken];
  [v11 setObjectOrNull:authenticationToken forKey:@"authentication_token"];

  appLaunchToken = [serviceCopy appLaunchToken];
  [v11 setObjectOrNull:appLaunchToken forKey:@"app_launch_token"];

  lastUpdatedDate = [serviceCopy lastUpdatedDate];
  [v11 setObjectOrNull:lastUpdatedDate forKey:@"last_updated_date"];

  lastUpdatedTag = [serviceCopy lastUpdatedTag];
  [v11 setObjectOrNull:lastUpdatedTag forKey:@"last_updated_tag"];

  lastUpdatedTagDate = [serviceCopy lastUpdatedTagDate];

  [v11 setObjectOrNull:lastUpdatedTagDate forKey:@"last_updated_tag_date"];
  [(SQLiteEntity *)self setValuesWithDictionary:v11];
}

+ (id)_notificationServicesInDatabase:(id)database matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  databaseCopy = database;
  v8 = objc_alloc_init(NSMutableSet);
  _propertySettersForPaymentTransaction = [self _propertySettersForPaymentTransaction];
  v10 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];

  allKeys = [_propertySettersForPaymentTransaction allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100137AF8;
  v17[3] = &unk_10083C998;
  selfCopy = self;
  v18 = _propertySettersForPaymentTransaction;
  v12 = v8;
  v19 = v12;
  v13 = _propertySettersForPaymentTransaction;
  [v10 enumeratePersistentIDsAndProperties:allKeys usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (id)_predicateForServiceType:(unint64_t)type
{
  v3 = [NSNumber numberWithUnsignedInteger:type];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"service_type" equalToValue:v3];

  return v4;
}

+ (id)_predicateForServiceURL:(id)l
{
  v3 = _SQLValueForURL();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"service_url" equalToValue:v3];

  return v4;
}

+ (id)_predicateForRegistrationURL:(id)l
{
  v3 = _SQLValueForURL();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"registration_url" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForPaymentTransaction
{
  v4[0] = @"push_topic";
  v4[1] = @"push_token";
  v5[0] = &stru_100848108;
  v5[1] = &stru_100848128;
  v4[2] = @"service_type";
  v4[3] = @"service_url";
  v5[2] = &stru_100848148;
  v5[3] = &stru_100848168;
  v4[4] = @"registration_url";
  v4[5] = @"authentication_token";
  v5[4] = &stru_100848188;
  v5[5] = &stru_1008481A8;
  v4[6] = @"app_launch_token";
  v4[7] = @"device_identifier";
  v5[6] = &stru_1008481C8;
  v5[7] = &stru_1008481E8;
  v4[8] = @"last_updated_date";
  v4[9] = @"last_updated_tag";
  v5[8] = &stru_100848208;
  v5[9] = &stru_100848228;
  v4[10] = @"last_updated_tag_date";
  v5[10] = &stru_100848248;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:11];

  return v2;
}

@end