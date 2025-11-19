@interface FeatureApplicationOfferDetails
+ (id)_predicateForApplicationPID:(int64_t)a3;
+ (id)_propertySettersForFeatureApplicationOfferDetails;
+ (id)featureApplicationOfferDetailsForApplicationPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)insertFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteFeatureApplicationOfferDetailsForApplicationPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)updateFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5;
- (FeatureApplicationOfferDetails)initWithFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5;
- (id)featureApplicationOfferDetails;
- (void)updateWithFeatureApplicationOfferDetails:(id)a3;
@end

@implementation FeatureApplicationOfferDetails

- (FeatureApplicationOfferDetails)initWithFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"a"];

  v12 = [v9 offerTermsIdentifier];
  [v10 setObjectOrNull:v12 forKey:@"b"];

  v13 = [v9 expiryDate];
  [v10 setObjectOrNull:v13 forKey:@"c"];

  v14 = [v9 creditLimit];
  v15 = [v14 stringValue];
  [v10 setObjectOrNull:v15 forKey:@"d"];

  v16 = [v9 annualFee];
  v17 = [v16 stringValue];
  [v10 setObjectOrNull:v17 forKey:@"e"];

  v18 = [v9 aprForPurchase];
  v19 = [v18 stringValue];
  [v10 setObjectOrNull:v19 forKey:@"f"];

  v20 = [v9 currencyCode];
  [v10 setObjectOrNull:v20 forKey:@"g"];

  v21 = [v9 balance];

  v22 = PKCurrencyDecimalToStorageNumber();
  [v10 setObjectOrNull:v22 forKey:@"h"];

  v23 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  v24 = v23;

  return v24;
}

+ (id)insertFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithFeatureApplicationOfferDetails:v9 forApplicationPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deleteFeatureApplicationOfferDetailsForApplicationPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForApplicationPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  [v8 deleteFromDatabase];
}

+ (id)featureApplicationOfferDetailsForApplicationPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForApplicationPID:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  v9 = [v8 featureApplicationOfferDetails];

  return v9;
}

+ (void)updateFeatureApplicationOfferDetails:(id)a3 forApplicationPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _predicateForApplicationPID:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  if (v10)
  {
    [v10 updateWithFeatureApplicationOfferDetails:v12];
  }

  else
  {
    v11 = [FeatureApplicationOfferDetails insertFeatureApplicationOfferDetails:v12 forApplicationPID:a4 inDatabase:v8];
  }
}

- (void)updateWithFeatureApplicationOfferDetails:(id)a3
{
  v4 = a3;
  v16 = objc_alloc_init(NSMutableDictionary);
  v5 = [v4 offerTermsIdentifier];
  [v16 setObjectOrNull:v5 forKey:@"b"];

  v6 = [v4 expiryDate];
  [v16 setObjectOrNull:v6 forKey:@"c"];

  v7 = [v4 creditLimit];
  v8 = [v7 stringValue];
  [v16 setObjectOrNull:v8 forKey:@"d"];

  v9 = [v4 annualFee];
  v10 = [v9 stringValue];
  [v16 setObjectOrNull:v10 forKey:@"e"];

  v11 = [v4 aprForPurchase];
  v12 = [v11 stringValue];
  [v16 setObjectOrNull:v12 forKey:@"f"];

  v13 = [v4 currencyCode];
  [v16 setObjectOrNull:v13 forKey:@"g"];

  v14 = [v4 balance];

  v15 = PKCurrencyDecimalToStorageNumber();
  [v16 setObjectOrNull:v15 forKey:@"h"];

  [(SQLiteEntity *)self setValuesWithDictionary:v16];
}

+ (id)_predicateForApplicationPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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
  v4 = [objc_opt_class() _propertySettersForFeatureApplicationOfferDetails];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100073AEC;
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