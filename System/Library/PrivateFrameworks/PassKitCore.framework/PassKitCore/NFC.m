@interface NFC
+ (id)_propertySettersForNFC;
- (id)nfcPayload;
@end

@implementation NFC

- (id)nfcPayload
{
  v3 = objc_alloc_init(PKNFCPayload);
  v4 = +[NFC _propertySettersForNFC];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007538;
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

+ (id)_propertySettersForNFC
{
  v4[0] = @"message";
  v4[1] = @"encryption_public_key";
  v5[0] = &stru_10085A738;
  v5[1] = &stru_10085A758;
  v4[2] = @"requires_authentication";
  v4[3] = @"a";
  v5[2] = &stru_10085A778;
  v5[3] = &stru_10085A798;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end