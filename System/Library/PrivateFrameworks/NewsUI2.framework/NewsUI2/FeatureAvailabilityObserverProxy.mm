@interface FeatureAvailabilityObserverProxy
- (void)sportsTopicNotificationsWithDidChange:(BOOL)change;
@end

@implementation FeatureAvailabilityObserverProxy

- (void)sportsTopicNotificationsWithDidChange:(BOOL)change
{
  changeCopy = change;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong sportsTopicNotificationsWithDidChange_];

    swift_unknownObjectRelease();
  }
}

@end