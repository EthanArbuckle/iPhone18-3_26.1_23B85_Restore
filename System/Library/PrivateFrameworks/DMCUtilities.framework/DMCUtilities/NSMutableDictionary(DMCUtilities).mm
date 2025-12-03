@interface NSMutableDictionary(DMCUtilities)
- (void)DMCSetObjectIfNotNil:()DMCUtilities forKey:;
@end

@implementation NSMutableDictionary(DMCUtilities)

- (void)DMCSetObjectIfNotNil:()DMCUtilities forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  return self;
}

@end