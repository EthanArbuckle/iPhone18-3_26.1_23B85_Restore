@interface NSString(DNDModeAssertionInvalidationReasonOverrideHelper)
+ (__CFString)dnds_stringForInvalidationReasonOverride:()DNDModeAssertionInvalidationReasonOverrideHelper;
- (uint64_t)dnds_invalidationReasonOverrideValue;
@end

@implementation NSString(DNDModeAssertionInvalidationReasonOverrideHelper)

+ (__CFString)dnds_stringForInvalidationReasonOverride:()DNDModeAssertionInvalidationReasonOverrideHelper
{
  v3 = @"lifetime-expired";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return @"user-changed-state";
  }

  else
  {
    return v3;
  }
}

- (uint64_t)dnds_invalidationReasonOverrideValue
{
  if ([a1 isEqualToString:@"lifetime-expired"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"user-changed-state"])
  {
    return 2;
  }

  return 0;
}

@end