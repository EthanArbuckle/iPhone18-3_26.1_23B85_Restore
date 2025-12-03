@interface MGHomePodAccessory(MGRemoteQueryCoding)
+ (id)rq_decodedProperties:()MGRemoteQueryCoding;
- (id)rq_codedProperties;
@end

@implementation MGHomePodAccessory(MGRemoteQueryCoding)

- (id)rq_codedProperties
{
  v12.receiver = self;
  v12.super_class = &off_2869B0F28;
  v2 = objc_msgSendSuper2(&v12, sel_rq_codedProperties);
  v3 = [v2 mutableCopy];

  deviceIdentifier = [self deviceIdentifier];
  rq_coded = [deviceIdentifier rq_coded];
  [v3 setObject:rq_coded forKey:@"deviceIdentifier"];

  productColor = [self productColor];
  rq_coded2 = [productColor rq_coded];
  [v3 setObject:rq_coded2 forKey:@"productColor"];

  homePodVariant = [self HomePodVariant];
  rq_coded3 = [homePodVariant rq_coded];
  [v3 setObject:rq_coded3 forKey:@"HomePodVariant"];

  v10 = [v3 copy];

  return v10;
}

+ (id)rq_decodedProperties:()MGRemoteQueryCoding
{
  v4 = a3;
  v5 = [v4 rq_stringForKey:@"deviceIdentifier"];
  v6 = [v4 rq_numberForKey:@"productColor"];
  v7 = [v4 rq_numberForKey:@"HomePodVariant"];
  v8 = 0;
  if ([v5 length] && v6 && v7)
  {
    v11.receiver = self;
    v11.super_class = &off_2869B0E18;
    v9 = objc_msgSendSuper2(&v11, sel_rq_decodedProperties_, v4);
    v8 = [v9 mutableCopy];

    [v8 setObject:v5 forKey:@"deviceIdentifier"];
    [v8 setObject:v6 forKey:@"productColor"];
    [v8 setObject:v7 forKey:@"HomePodVariant"];
  }

  return v8;
}

@end