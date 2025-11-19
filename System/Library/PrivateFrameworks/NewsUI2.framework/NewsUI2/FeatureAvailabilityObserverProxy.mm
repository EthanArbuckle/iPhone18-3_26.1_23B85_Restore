@interface FeatureAvailabilityObserverProxy
- (void)sportsTopicNotificationsWithDidChange:(BOOL)a3;
@end

@implementation FeatureAvailabilityObserverProxy

- (void)sportsTopicNotificationsWithDidChange:(BOOL)a3
{
  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong sportsTopicNotificationsWithDidChange_];

    swift_unknownObjectRelease();
  }
}

@end