@interface NSDictionary(KeyComparison)
- (uint64_t)cam_compareKey:()KeyComparison withDictionary:;
@end

@implementation NSDictionary(KeyComparison)

- (uint64_t)cam_compareKey:()KeyComparison withDictionary:
{
  v6 = a4;
  v7 = a3;
  v8 = [self objectForKey:v7];
  v9 = [v6 objectForKey:v7];

  v10 = [v8 isEqual:v9];
  return v10;
}

@end