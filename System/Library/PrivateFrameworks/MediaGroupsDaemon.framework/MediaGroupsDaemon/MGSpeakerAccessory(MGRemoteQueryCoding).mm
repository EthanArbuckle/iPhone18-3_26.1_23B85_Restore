@interface MGSpeakerAccessory(MGRemoteQueryCoding)
+ (id)rq_decodedProperties:()MGRemoteQueryCoding;
- (id)rq_codedProperties;
@end

@implementation MGSpeakerAccessory(MGRemoteQueryCoding)

- (id)rq_codedProperties
{
  v8.receiver = self;
  v8.super_class = &off_2869B1088;
  v2 = objc_msgSendSuper2(&v8, sel_rq_codedProperties);
  deviceIdentifier = [self deviceIdentifier];
  v4 = [v2 mutableCopy];
  rq_coded = [deviceIdentifier rq_coded];
  [v4 setObject:rq_coded forKey:@"deviceIdentifier"];

  v6 = [v4 copy];

  return v6;
}

+ (id)rq_decodedProperties:()MGRemoteQueryCoding
{
  v4 = a3;
  v5 = [v4 rq_stringForKey:@"deviceIdentifier"];
  if ([v5 length])
  {
    v9.receiver = self;
    v9.super_class = &off_2869B0FD0;
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