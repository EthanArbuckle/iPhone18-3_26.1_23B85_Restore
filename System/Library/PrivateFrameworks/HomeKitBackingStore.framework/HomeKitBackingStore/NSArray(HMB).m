@interface NSArray(HMB)
- (id)hmbDescription;
@end

@implementation NSArray(HMB)

- (id)hmbDescription
{
  v2 = [@"[" mutableCopy];
  v3 = [a1 componentsJoinedByString:{@", "}];
  [v2 appendString:v3];

  [v2 appendString:@"]"];
  v4 = [v2 copy];

  return v4;
}

@end