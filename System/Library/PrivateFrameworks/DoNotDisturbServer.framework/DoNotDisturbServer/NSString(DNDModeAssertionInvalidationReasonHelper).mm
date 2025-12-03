@interface NSString(DNDModeAssertionInvalidationReasonHelper)
+ (__CFString)dnds_stringForInvalidationReason:()DNDModeAssertionInvalidationReasonHelper;
- (uint64_t)dnds_invalidationReasonValue;
@end

@implementation NSString(DNDModeAssertionInvalidationReasonHelper)

+ (__CFString)dnds_stringForInvalidationReason:()DNDModeAssertionInvalidationReasonHelper
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_278F8BAF0[a3 - 1];
  }
}

- (uint64_t)dnds_invalidationReasonValue
{
  if ([self isEqualToString:@"lifetime-expired"])
  {
    return 1;
  }

  if ([self isEqualToString:@"user-changed-state"])
  {
    return 2;
  }

  if ([self isEqualToString:@"client-ended"])
  {
    return 3;
  }

  if ([self isEqualToString:@"client-replaced"])
  {
    return 4;
  }

  if ([self isEqualToString:@"server-unresponsive"])
  {
    return 5;
  }

  if ([self isEqualToString:@"client-unresponsive"])
  {
    return 6;
  }

  if ([self isEqualToString:@"location-lifetime-expired"])
  {
    return 7;
  }

  if ([self isEqualToString:@"calendar-event-lifetime-expired"])
  {
    return 8;
  }

  return 0;
}

@end