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
  if ([self isEqualToString:@"calendar"])
  {
    return 1;
  }

  if ([self isEqualToString:@"date-interval"])
  {
    return 2;
  }

  if ([self isEqualToString:@"current-location"])
  {
    return 3;
  }

  if ([self isEqualToString:@"schedule"])
  {
    return 4;
  }

  if ([self isEqualToString:@"explicit-region"])
  {
    return 5;
  }

  return 0;
}

@end