@interface NSDictionary(WFSerializationSafety)
- (id)wfObjectOfClass:()WFSerializationSafety forKey:;
- (id)wfObjectOfClass:()WFSerializationSafety forKeyPath:;
@end

@implementation NSDictionary(WFSerializationSafety)

- (id)wfObjectOfClass:()WFSerializationSafety forKeyPath:
{
  v5 = [self valueForKeyPath:a4];
  v6 = WFTypeCheckObject(v5, a3);

  return v6;
}

- (id)wfObjectOfClass:()WFSerializationSafety forKey:
{
  v5 = [self objectForKey:a4];
  v6 = WFTypeCheckObject(v5, a3);

  return v6;
}

@end