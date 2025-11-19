@interface FollowingNotificationsDataManager
- (_TtC7NewsUI233FollowingNotificationsDataManager)init;
- (void)determineSystemNotificationSettingsStatus;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3;
- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4;
- (void)userInfoDidChangeMarketingNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4;
- (void)userInfoDidChangeNewIssueNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4;
- (void)userInfoDidChangePuzzleNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4;
- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)a3 fromCloud:(BOOL)a4;
@end

@implementation FollowingNotificationsDataManager

- (void)determineSystemNotificationSettingsStatus
{
  swift_getObjectType();
  type metadata accessor for NotificationSettings();
  v3 = self;
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

- (void)userInfoDidChangeMarketingNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_2192388DC(v5);
}

- (void)userInfoDidChangeNewIssueNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_219238A00(v5);
}

- (void)userInfoDidChangeEndOfAudioTrackNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_219238B24(v5);
}

- (void)userInfoDidChangePuzzleNotificationsEnabled:(id)a3 fromCloud:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_21923818C(v6, a4);
}

- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_219238D58(v5);
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end