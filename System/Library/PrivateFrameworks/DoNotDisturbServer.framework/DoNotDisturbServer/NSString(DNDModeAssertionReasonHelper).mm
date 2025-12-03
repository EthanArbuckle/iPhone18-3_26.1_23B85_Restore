@interface NSString(DNDModeAssertionReasonHelper)
+ (__CFString)dnds_stringForAssertionReason:()DNDModeAssertionReasonHelper;
- (uint64_t)dnds_assertionReasonValue;
@end

@implementation NSString(DNDModeAssertionReasonHelper)

+ (__CFString)dnds_stringForAssertionReason:()DNDModeAssertionReasonHelper
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_278F8BAD8[a3 - 1];
  }
}

- (uint64_t)dnds_assertionReasonValue
{
  if ([self isEqualToString:@"user-action"])
  {
    return 1;
  }

  if ([self isEqualToString:@"system-state"])
  {
    return 3;
  }

  if ([self isEqualToString:@"schedule"])
  {
    return 2;
  }

  return 0;
}

@end