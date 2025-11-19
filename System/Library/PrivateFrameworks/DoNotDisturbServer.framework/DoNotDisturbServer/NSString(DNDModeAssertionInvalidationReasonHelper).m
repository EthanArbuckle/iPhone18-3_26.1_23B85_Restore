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
  if ([a1 isEqualToString:@"lifetime-expired"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"user-changed-state"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"client-ended"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"client-replaced"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"server-unresponsive"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"client-unresponsive"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"location-lifetime-expired"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"calendar-event-lifetime-expired"])
  {
    return 8;
  }

  return 0;
}

@end