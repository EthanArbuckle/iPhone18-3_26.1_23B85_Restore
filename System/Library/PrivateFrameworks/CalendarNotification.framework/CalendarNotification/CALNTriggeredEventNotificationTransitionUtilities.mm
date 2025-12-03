@interface CALNTriggeredEventNotificationTransitionUtilities
+ (id)descriptionForTransition:(unint64_t)transition;
@end

@implementation CALNTriggeredEventNotificationTransitionUtilities

+ (id)descriptionForTransition:(unint64_t)transition
{
  if (transition > 3)
  {
    return 0;
  }

  else
  {
    return off_278D6FBA8[transition];
  }
}

@end