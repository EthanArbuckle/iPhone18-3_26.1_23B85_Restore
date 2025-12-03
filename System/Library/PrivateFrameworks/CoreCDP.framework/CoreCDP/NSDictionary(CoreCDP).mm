@interface NSDictionary(CoreCDP)
- (id)cdp_sanitizedCopy;
@end

@implementation NSDictionary(CoreCDP)

- (id)cdp_sanitizedCopy
{
  v1 = [self mutableCopy];
  [v1 removeObjectForKey:*MEMORY[0x1E698DB58]];
  v2 = [v1 copy];

  return v2;
}

@end