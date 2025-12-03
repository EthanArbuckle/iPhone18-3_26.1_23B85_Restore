@interface EndOfTrackNotificationScheduler
- (_TtC7NewsUI231EndOfTrackNotificationScheduler)init;
- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud;
@end

@implementation EndOfTrackNotificationScheduler

- (_TtC7NewsUI231EndOfTrackNotificationScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_2198A6C8C(enabledCopy);
}

@end