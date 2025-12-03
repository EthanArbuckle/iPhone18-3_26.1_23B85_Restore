@interface FeatureApplicationOfferDetails
+ (id)_predicateForApplicationPID:(int64_t)d;
+ (id)_propertySettersForFeatureApplicationOfferDetails;
+ (id)featureApplicationOfferDetailsForApplicationPID:(int64_t)d inDatabase:(id)database;
+ (id)insertFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteFeatureApplicationOfferDetailsForApplicationPID:(int64_t)d inDatabase:(id)database;
+ (void)updateFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database;
- (FeatureApplicationOfferDetails)initWithFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database;
- (id)featureApplicationOfferDetails;
- (void)updateWithFeatureApplicationOfferDetails:(id)details;
@end

@implementation FeatureApplicationOfferDetails

- (FeatureApplicationOfferDetails)initWithFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  detailsCopy = details;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  offerTermsIdentifier = [detailsCopy offerTermsIdentifier];
  [v10 setObjectOrNull:offerTermsIdentifier forKey:@"b"];

  expiryDate = [detailsCopy expiryDate];
  [v10 setObjectOrNull:expiryDate forKey:@"c"];

  creditLimit = [detailsCopy creditLimit];
  stringValue = [creditLimit stringValue];
  [v10 setObjectOrNull:stringValue forKey:@"d"];

  annualFee = [detailsCopy annualFee];
  stringValue2 = [annualFee stringValue];
  [v10 setObjectOrNull:stringValue2 forKey:@"e"];

  aprForPurchase = [detailsCopy aprForPurchase];
  stringValue3 = [aprForPurchase stringValue];
  [v10 setObjectOrNull:stringValue3 forKey:@"f"];

  currencyCode = [detailsCopy currencyCode];
  [v10 setObjectOrNull:currencyCode forKey:@"g"];

  balance = [detailsCopy balance];

  v22 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v22 forKey:@"h"];

  v23 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  v24 = v23;

  return v24;
}

+ (id)insertFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  detailsCopy = details;
  v10 = [[self alloc] initWithFeatureApplicationOfferDetails:detailsCopy forApplicationPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deleteFeatureApplicationOfferDetailsForApplicationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForApplicationPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  [v8 deleteFromDatabase];
}

+ (id)featureApplicationOfferDetailsForApplicationPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForApplicationPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  featureApplicationOfferDetails = [v8 featureApplicationOfferDetails];

  return featureApplicationOfferDetails;
}

+ (void)updateFeatureApplicationOfferDetails:(id)details forApplicationPID:(int64_t)d inDatabase:(id)database
{
  detailsCopy = details;
  databaseCopy = database;
  v9 = [self _predicateForApplicationPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  if (v10)
  {
    [v10 updateWithFeatureApplicationOfferDetails:detailsCopy];
  }

  else
  {
    v11 = [FeatureApplicationOfferDetails insertFeatureApplicationOfferDetails:detailsCopy forApplicationPID:d inDatabase:databaseCopy];
  }
}

- (void)updateWithFeatureApplicationOfferDetails:(id)details
{
  detailsCopy = details;
  v16 = objc_alloc_init(NSMutableDictionary);
  offerTermsIdentifier = [detailsCopy offerTermsIdentifier];
  [v16 setObjectOrNull:offerTermsIdentifier forKey:@"b"];

  expiryDate = [detailsCopy expiryDate];
  [v16 setObjectOrNull:expiryDate forKey:@"c"];

  creditLimit = [detailsCopy creditLimit];
  stringValue = [creditLimit stringValue];
  [v16 setObjectOrNull:stringValue forKey:@"d"];

  annualFee = [detailsCopy annualFee];
  stringValue2 = [annualFee stringValue];
  [v16 setObjectOrNull:stringValue2 forKey:@"e"];

  aprForPurchase = [detailsCopy aprForPurchase];
  stringValue3 = [aprForPurchase stringValue];
  [v16 setObjectOrNull:stringValue3 forKey:@"f"];

  currencyCode = [detailsCopy currencyCode];
  [v16 setObjectOrNull:currencyCode forKey:@"g"];

  balance = [detailsCopy balance];

  v15 = PKCurrencyDecimalToStorageNumber();
  [v16 setObjectOrNull:v15 forKey:@"h"];

  [(SQLiteEntity *)self setValuesWithDictionary:v16];
}

+ (id)_predicateForApplicationPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_propertySettersForFeatureApplicationOfferDetails
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_100840458;
  v5[1] = &stru_100840478;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100840498;
  v5[3] = &stru_1008404B8;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_1008404D8;
  v5[5] = &stru_1008404F8;
  v4[6] = @"h";
  v5[6] = &stru_100840518;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

- (id)featureApplicationOfferDetails
{
  v3 = objc_alloc_init(PKFeatureApplicationOfferDetails);
  _propertySettersForFeatureApplicationOfferDetails = [objc_opt_class() _propertySettersForFeatureApplicationOfferDetails];
  allKeys = [_propertySettersForFeatureApplicationOfferDetails allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100073AEC;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForFeatureApplicationOfferDetails;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForFeatureApplicationOfferDetails;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

@end