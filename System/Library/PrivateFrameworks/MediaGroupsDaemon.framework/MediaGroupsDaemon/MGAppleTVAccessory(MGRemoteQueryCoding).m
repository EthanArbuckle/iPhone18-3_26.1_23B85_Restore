@interface MGAppleTVAccessory(MGRemoteQueryCoding)
+ (id)rq_decodedProperties:()MGRemoteQueryCoding;
- (id)rq_codedProperties;
@end

@implementation MGAppleTVAccessory(MGRemoteQueryCoding)

- (id)rq_codedProperties
{
  v8.receiver = a1;
  v8.super_class = &off_2869B0C08;
  v2 = objc_msgSendSuper2(&v8, sel_rq_codedProperties);
  v3 = [a1 deviceIdentifier];
  v4 = [v2 mutableCopy];
  v5 = [v3 rq_coded];
  [v4 setObject:v5 forKey:@"deviceIdentifier"];

  v6 = [v4 copy];

  return v6;
}

+ (id)rq_decodedProperties:()MGRemoteQueryCoding
{
  v4 = a3;
  v5 = [v4 rq_stringForKey:@"deviceIdentifier"];
  if ([v5 length])
  {
    v9.receiver = a1;
    v9.super_class = &off_2869B0A60;
    v6 = objc_msgSendSuper2(&v9, sel_rq_decodedProperties_, v4);
    v7 = [v6 mutableCopy];

    [v7 setObject:v5 forKey:@"deviceIdentifier"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end