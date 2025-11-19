@interface HMDPresenceNotificationConditionHomeActivityStatePresenceProvider
- (id)presenceForHome:(id)a3;
@end

@implementation HMDPresenceNotificationConditionHomeActivityStatePresenceProvider

- (id)presenceForHome:(id)a3
{
  v3 = [a3 homeActivityStateManager];
  v4 = [v3 userActivityStatesDetails];

  return v4;
}

@end