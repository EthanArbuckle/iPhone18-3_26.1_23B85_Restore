@interface NSString(DNDModeAssertionLifetimeTypeHelper)
+ (__CFString)dnds_stringForLifetimeType:()DNDModeAssertionLifetimeTypeHelper;
- (uint64_t)dnds_lifetimeTypeValue;
@end

@implementation NSString(DNDModeAssertionLifetimeTypeHelper)

+ (__CFString)dnds_stringForLifetimeType:()DNDModeAssertionLifetimeTypeHelper
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_278F8B348[a3 - 1];
  }
}

- (uint64_t)dnds_lifetimeTypeValue
{
  if ([a1 isEqualToString:@"calendar"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"date-interval"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"current-location"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"schedule"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"explicit-region"])
  {
    return 5;
  }

  return 0;
}

@end