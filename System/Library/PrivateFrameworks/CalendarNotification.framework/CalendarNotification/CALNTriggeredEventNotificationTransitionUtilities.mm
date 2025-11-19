@interface CALNTriggeredEventNotificationTransitionUtilities
+ (id)descriptionForTransition:(unint64_t)a3;
@end

@implementation CALNTriggeredEventNotificationTransitionUtilities

+ (id)descriptionForTransition:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_278D6FBA8[a3];
  }
}

@end