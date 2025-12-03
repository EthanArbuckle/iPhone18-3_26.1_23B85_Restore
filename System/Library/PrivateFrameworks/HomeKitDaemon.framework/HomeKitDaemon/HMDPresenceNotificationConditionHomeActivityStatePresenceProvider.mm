@interface HMDPresenceNotificationConditionHomeActivityStatePresenceProvider
- (id)presenceForHome:(id)home;
@end

@implementation HMDPresenceNotificationConditionHomeActivityStatePresenceProvider

- (id)presenceForHome:(id)home
{
  homeActivityStateManager = [home homeActivityStateManager];
  userActivityStatesDetails = [homeActivityStateManager userActivityStatesDetails];

  return userActivityStatesDetails;
}

@end