@interface FollowingNotificationsDataManager
- (_TtC7NewsUI233FollowingNotificationsDataManager)init;
- (void)determineSystemNotificationSettingsStatus;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription;
- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud;
- (void)userInfoDidChangeMarketingNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud;
- (void)userInfoDidChangeNewIssueNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud;
- (void)userInfoDidChangePuzzleNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud;
- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)state fromCloud:(BOOL)cloud;
@end

@implementation FollowingNotificationsDataManager

- (void)determineSystemNotificationSettingsStatus
{
  swift_getObjectType();
  type metadata accessor for NotificationSettings();
  selfCopy = self;
  sub_219BE3204();
  v4 = sub_219BE2E54();
  sub_219BE2F94();

  v5 = sub_219BE2E54();
  sub_219BE2FE4();
}

- (_TtC7NewsUI233FollowingNotificationsDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeMarketingNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_2192388DC(enabledCopy);
}

- (void)userInfoDidChangeNewIssueNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_219238A00(enabledCopy);
}

- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_219238B24(enabledCopy);
}

- (void)userInfoDidChangePuzzleNotificationsEnabled:(id)enabled fromCloud:(BOOL)cloud
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_21923818C(enabledCopy, cloud);
}

- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)state fromCloud:(BOOL)cloud
{
  stateCopy = state;
  selfCopy = self;
  sub_219238D58(stateCopy);
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription
{
  v4 = self + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end