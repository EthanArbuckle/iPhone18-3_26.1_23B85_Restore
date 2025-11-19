@interface NSString(DNDModeAssertionScheduleLifetimeBehaviorHelper)
+ (__CFString)dnds_stringForScheduleLifetimeBehavior:()DNDModeAssertionScheduleLifetimeBehaviorHelper;
- (uint64_t)dnds_scheduleLifetimeBehaviorValue;
@end

@implementation NSString(DNDModeAssertionScheduleLifetimeBehaviorHelper)

+ (__CFString)dnds_stringForScheduleLifetimeBehavior:()DNDModeAssertionScheduleLifetimeBehaviorHelper
{
  if (a3)
  {
    return @"expire-on-end";
  }

  else
  {
    return @"match-schedule";
  }
}

- (uint64_t)dnds_scheduleLifetimeBehaviorValue
{
  if ([a1 isEqualToString:@"match-schedule"])
  {
    return 0;
  }

  else
  {
    return [a1 isEqualToString:@"expire-on-end"];
  }
}

@end