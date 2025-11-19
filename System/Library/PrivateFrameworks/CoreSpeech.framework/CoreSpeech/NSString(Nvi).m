@interface NSString(Nvi)
- (id)shortFormForUUID;
@end

@implementation NSString(Nvi)

- (id)shortFormForUUID
{
  v1 = [a1 componentsSeparatedByString:@"-"];
  v2 = [v1 firstObject];

  return v2;
}

@end