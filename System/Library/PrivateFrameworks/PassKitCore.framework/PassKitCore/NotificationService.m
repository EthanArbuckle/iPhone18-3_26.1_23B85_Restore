@interface NotificationService
+ (id)_notificationServicesInDatabase:(id)a3 matchingPredicate:(id)a4;
+ (id)_predicateForRegistrationURL:(id)a3;
+ (id)_predicateForServiceType:(unint64_t)a3;
+ (id)_predicateForServiceURL:(id)a3;
+ (id)_propertySettersForPaymentTransaction;
+ (id)anyInDatabase:(id)a3 withPushTopic:(id)a4;
+ (id)anyInDatabase:(id)a3 withPushTopic:(id)a4 serviceType:(unint64_t)a5 serviceURL:(id)a6 registrationURL:(id)a7;
+ (id)anyInDatabase:(id)a3 withServiceURL:(id)a4 registrationURL:(id)a5;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (id)insertNotificationServiceWithPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6 deviceIdentifier:(id)a7 inDatabase:(id)a8;
+ (id)notificationServicesInDatabase:(id)a3 withPushTopic:(id)a4;
+ (id)notificationServicesInDatabase:(id)a3 withPushTopic:(id)a4 serviceType:(unint64_t)a5 serviceURL:(id)a6 registrationURL:(id)a7;
- (NotificationService)initWithPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6 deviceIdentifier:(id)a7 inDatabase:(id)a8;
- (id)notificationService;
- (void)updateWithLastUpdatedDate:(id)a3;
- (void)updateWithLastUpdatedTag:(id)a3;
- (void)updateWithNotificationService:(id)a3;
@end

@implementation NotificationService

- (NotificationService)initWithPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6 deviceIdentifier:(id)a7 inDatabase:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = +[NSMutableDictionary dictionary];
  [v19 setObjectOrNull:v15 forKey:@"device_identifier"];

  [v19 setObjectOrNull:v18 forKey:@"push_topic"];
  [v19 setInteger:a4 forKey:@"service_type"];
  v20 = _SQLValueForURL();

  [v19 setObjectOrNull:v20 forKey:@"service_url"];
  v21 = _SQLValueForURL();

  [v19 setObjectOrNull:v21 forKey:@"registration_url"];
  v22 = [(SQLiteEntity *)self initWithPropertyValues:v19 inDatabase:v14];

  return v22;
}

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"pid";
  }

  else
  {
    return 0;
  }
}

+ (id)insertNotificationServiceWithPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6 deviceIdentifier:(id)a7 inDatabase:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [[a1 alloc] initWithPushTopic:v18 serviceType:a4 serviceURL:v17 registrationURL:v16 deviceIdentifier:v15 inDatabase:v14];

  return v19;
}

+ (id)anyInDatabase:(id)a3 withPushTopic:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPushTopic:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)anyInDatabase:(id)a3 withServiceURL:(id)a4 registrationURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [a1 _predicateForServiceURL:v9];

  [v11 addObject:v12];
  if (v8)
  {
    [a1 _predicateForRegistrationURL:v8];
  }

  else
  {
    [a1 _predicateForNoRegistrationURL];
  }
  v13 = ;
  [v11 addObject:v13];

  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v15 = [a1 anyInDatabase:v10 predicate:v14];

  return v15;
}

+ (id)anyInDatabase:(id)a3 withPushTopic:(id)a4 serviceType:(unint64_t)a5 serviceURL:(id)a6 registrationURL:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = [a1 _predicateForServiceType:a5];
  [v16 addObject:v17];

  v18 = [a1 _predicateForPushTopic:v14];

  [v16 addObject:v18];
  v19 = [a1 _predicateForServiceURL:v13];

  [v16 addObject:v19];
  if (v12)
  {
    [a1 _predicateForRegistrationURL:v12];
  }

  else
  {
    [a1 _predicateForNoRegistrationURL];
  }
  v20 = ;
  [v16 addObject:v20];

  v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v22 = [a1 anyInDatabase:v15 predicate:v21];

  return v22;
}

+ (id)notificationServicesInDatabase:(id)a3 withPushTopic:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForPushTopic:a4];
  v8 = [a1 _notificationServicesInDatabase:v6 matchingPredicate:v7];

  return v8;
}

+ (id)notificationServicesInDatabase:(id)a3 withPushTopic:(id)a4 serviceType:(unint64_t)a5 serviceURL:(id)a6 registrationURL:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = [a1 _predicateForServiceType:a5];
  [v16 addObject:v17];

  v18 = [a1 _predicateForPushTopic:v14];

  [v16 addObject:v18];
  v19 = [a1 _predicateForServiceURL:v13];

  [v16 addObject:v19];
  if (v12)
  {
    [a1 _predicateForRegistrationURL:v12];
  }

  else
  {
    [a1 _predicateForNoRegistrationURL];
  }
  v20 = ;
  [v16 addObject:v20];

  v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v22 = [a1 _notificationServicesInDatabase:v15 matchingPredicate:v21];

  return v22;
}

- (id)notificationService
{
  v3 = objc_alloc_init(PDNotificationService);
  v4 = +[NotificationService _propertySettersForPaymentTransaction];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001376E4;
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

- (void)updateWithLastUpdatedDate:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObjectOrNull:v4 forKey:@"last_updated_date"];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

- (void)updateWithLastUpdatedTag:(id)a3
{
  v4 = a3;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObjectOrNull:v4 forKey:@"last_updated_tag"];

  v5 = +[NSDate date];
  [v6 setObjectOrNull:v5 forKey:@"last_updated_tag_date"];

  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

- (void)updateWithNotificationService:(id)a3
{
  v4 = a3;
  v11 = +[NSMutableDictionary dictionary];
  v5 = [v4 pushToken];
  [v11 setObjectOrNull:v5 forKey:@"push_token"];

  v6 = [v4 authenticationToken];
  [v11 setObjectOrNull:v6 forKey:@"authentication_token"];

  v7 = [v4 appLaunchToken];
  [v11 setObjectOrNull:v7 forKey:@"app_launch_token"];

  v8 = [v4 lastUpdatedDate];
  [v11 setObjectOrNull:v8 forKey:@"last_updated_date"];

  v9 = [v4 lastUpdatedTag];
  [v11 setObjectOrNull:v9 forKey:@"last_updated_tag"];

  v10 = [v4 lastUpdatedTagDate];

  [v11 setObjectOrNull:v10 forKey:@"last_updated_tag_date"];
  [(SQLiteEntity *)self setValuesWithDictionary:v11];
}

+ (id)_notificationServicesInDatabase:(id)a3 matchingPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableSet);
  v9 = [a1 _propertySettersForPaymentTransaction];
  v10 = [a1 queryWithDatabase:v7 predicate:v6];

  v11 = [v9 allKeys];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100137AF8;
  v17[3] = &unk_10083C998;
  v20 = a1;
  v18 = v9;
  v12 = v8;
  v19 = v12;
  v13 = v9;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

+ (id)_predicateForServiceType:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"service_type" equalToValue:v3];

  return v4;
}

+ (id)_predicateForServiceURL:(id)a3
{
  v3 = _SQLValueForURL();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"service_url" equalToValue:v3];

  return v4;
}

+ (id)_predicateForRegistrationURL:(id)a3
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