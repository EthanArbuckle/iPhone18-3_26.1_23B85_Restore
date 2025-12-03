@interface FeatureApplicationInvitationDetails
+ (id)_propertySettersForFeatureApplicationInvitationDetails;
+ (id)_propertyValuesForFeatureApplicationInvitationDetails:(id)details;
+ (id)featureApplicationInvitationDetailsForApplicationPID:(id)d inDatabase:(id)database;
+ (id)insertFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database;
+ (void)deleteFeatureApplicationInvitationDetailsForApplicationPID:(id)d inDatabase:(id)database;
+ (void)updateFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database;
- (FeatureApplicationInvitationDetails)initWithFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database;
- (id)featureApplicationInvitationDetails;
- (void)updateWithFeatureApplicationInvitationDetails:(id)details;
@end

@implementation FeatureApplicationInvitationDetails

- (FeatureApplicationInvitationDetails)initWithFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  dCopy = d;
  detailsCopy = details;
  v11 = [objc_opt_class() _propertyValuesForFeatureApplicationInvitationDetails:detailsCopy];

  v12 = [v11 mutableCopy];
  [v12 setObjectOrNull:dCopy forKey:@"a"];

  v13 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:databaseCopy];
  return v13;
}

+ (id)insertFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  dCopy = d;
  detailsCopy = details;
  v11 = [[self alloc] initWithFeatureApplicationInvitationDetails:detailsCopy forApplicationPID:dCopy inDatabase:databaseCopy];

  return v11;
}

+ (void)deleteFeatureApplicationInvitationDetailsForApplicationPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForApplicationPID:d];
  v7 = [self anyInDatabase:databaseCopy predicate:v8];

  [v7 deleteFromDatabase];
}

+ (id)featureApplicationInvitationDetailsForApplicationPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForApplicationPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  featureApplicationInvitationDetails = [v8 featureApplicationInvitationDetails];

  return featureApplicationInvitationDetails;
}

+ (void)updateFeatureApplicationInvitationDetails:(id)details forApplicationPID:(id)d inDatabase:(id)database
{
  detailsCopy = details;
  dCopy = d;
  databaseCopy = database;
  v10 = [self _predicateForApplicationPID:dCopy];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v11)
  {
    [v11 updateWithFeatureApplicationInvitationDetails:detailsCopy];
  }

  else
  {
    v12 = [self insertFeatureApplicationInvitationDetails:detailsCopy forApplicationPID:dCopy inDatabase:databaseCopy];
  }
}

- (void)updateWithFeatureApplicationInvitationDetails:(id)details
{
  detailsCopy = details;
  v5 = [objc_opt_class() _propertyValuesForFeatureApplicationInvitationDetails:detailsCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_propertyValuesForFeatureApplicationInvitationDetails:(id)details
{
  detailsCopy = details;
  v4 = objc_alloc_init(NSMutableDictionary);
  accountUserAltDSID = [detailsCopy accountUserAltDSID];
  [v4 setObjectOrNull:accountUserAltDSID forKey:@"b"];

  originatorAltDSID = [detailsCopy originatorAltDSID];
  [v4 setObjectOrNull:originatorAltDSID forKey:@"c"];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [detailsCopy accountUserAccessLevel]);
  [v4 setObjectOrNull:v7 forKey:@"d"];

  originatorFirstName = [detailsCopy originatorFirstName];
  [v4 setObjectOrNull:originatorFirstName forKey:@"e"];

  originatorLastName = [detailsCopy originatorLastName];
  [v4 setObjectOrNull:originatorLastName forKey:@"f"];

  accountUserFirstName = [detailsCopy accountUserFirstName];
  [v4 setObjectOrNull:accountUserFirstName forKey:@"g"];

  accountUserLastName = [detailsCopy accountUserLastName];

  [v4 setObjectOrNull:accountUserLastName forKey:@"h"];
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
  _propertySettersForFeatureApplicationInvitationDetails = [objc_opt_class() _propertySettersForFeatureApplicationInvitationDetails];
  allKeys = [_propertySettersForFeatureApplicationInvitationDetails allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009E03C;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForFeatureApplicationInvitationDetails;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForFeatureApplicationInvitationDetails;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end