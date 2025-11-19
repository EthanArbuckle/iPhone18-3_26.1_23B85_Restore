@interface FeatureApplicationInvitationDetails
+ (id)_propertySettersForFeatureApplicationInvitationDetails;
+ (id)_propertyValuesForFeatureApplicationInvitationDetails:(id)a3;
+ (id)featureApplicationInvitationDetailsForApplicationPID:(id)a3 inDatabase:(id)a4;
+ (id)insertFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5;
+ (void)deleteFeatureApplicationInvitationDetailsForApplicationPID:(id)a3 inDatabase:(id)a4;
+ (void)updateFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5;
- (FeatureApplicationInvitationDetails)initWithFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5;
- (id)featureApplicationInvitationDetails;
- (void)updateWithFeatureApplicationInvitationDetails:(id)a3;
@end

@implementation FeatureApplicationInvitationDetails

- (FeatureApplicationInvitationDetails)initWithFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _propertyValuesForFeatureApplicationInvitationDetails:v10];

  v12 = [v11 mutableCopy];
  [v12 setObjectOrNull:v9 forKey:@"a"];

  v13 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:v8];
  return v13;
}

+ (id)insertFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithFeatureApplicationInvitationDetails:v10 forApplicationPID:v9 inDatabase:v8];

  return v11;
}

+ (void)deleteFeatureApplicationInvitationDetailsForApplicationPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForApplicationPID:a3];
  v7 = [a1 anyInDatabase:v6 predicate:v8];

  [v7 deleteFromDatabase];
}

+ (id)featureApplicationInvitationDetailsForApplicationPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForApplicationPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 featureApplicationInvitationDetails];

  return v9;
}

+ (void)updateFeatureApplicationInvitationDetails:(id)a3 forApplicationPID:(id)a4 inDatabase:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 _predicateForApplicationPID:v8];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (v11)
  {
    [v11 updateWithFeatureApplicationInvitationDetails:v13];
  }

  else
  {
    v12 = [a1 insertFeatureApplicationInvitationDetails:v13 forApplicationPID:v8 inDatabase:v9];
  }
}

- (void)updateWithFeatureApplicationInvitationDetails:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForFeatureApplicationInvitationDetails:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_propertyValuesForFeatureApplicationInvitationDetails:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 accountUserAltDSID];
  [v4 setObjectOrNull:v5 forKey:@"b"];

  v6 = [v3 originatorAltDSID];
  [v4 setObjectOrNull:v6 forKey:@"c"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 accountUserAccessLevel]);
  [v4 setObjectOrNull:v7 forKey:@"d"];

  v8 = [v3 originatorFirstName];
  [v4 setObjectOrNull:v8 forKey:@"e"];

  v9 = [v3 originatorLastName];
  [v4 setObjectOrNull:v9 forKey:@"f"];

  v10 = [v3 accountUserFirstName];
  [v4 setObjectOrNull:v10 forKey:@"g"];

  v11 = [v3 accountUserLastName];

  [v4 setObjectOrNull:v11 forKey:@"h"];
  v12 = [v4 copy];

  return v12;
}

+ (id)_propertySettersForFeatureApplicationInvitationDetails
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100841968;
  v5[1] = &stru_100841988;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_1008419A8;
  v5[3] = &stru_1008419C8;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_1008419E8;
  v5[5] = &stru_100841A08;
  v4[6] = @"h";
  v5[6] = &stru_100841A28;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

- (id)featureApplicationInvitationDetails
{
  v3 = objc_alloc_init(PKFeatureApplicationInvitationDetails);
  v4 = [objc_opt_class() _propertySettersForFeatureApplicationInvitationDetails];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009E03C;
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