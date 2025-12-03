@interface NSString(Nvi)
- (id)shortFormForUUID;
@end

@implementation NSString(Nvi)

- (id)shortFormForUUID
{
  v1 = [self componentsSeparatedByString:@"-"];
  firstObject = [v1 firstObject];

  return firstObject;
}

@end