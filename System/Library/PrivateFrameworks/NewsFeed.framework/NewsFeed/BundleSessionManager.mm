@interface BundleSessionManager
- (_TtC8NewsFeed20BundleSessionManager)init;
- (void)didUpdateNewslettersFrom:(id)from to:(id)to;
- (void)familySharingStatusDidChange;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription;
- (void)resetSession;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
@end

@implementation BundleSessionManager

- (void)resetSession
{
  selfCopy = self;
  sub_1D6016C3C();
}

- (_TtC8NewsFeed20BundleSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)familySharingStatusDidChange
{
  selfCopy = self;
  sub_1D6019D90("BundleSessionManager did detect change in family status.");
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  sub_1D6019D90("BundleSessionManager did detect change in notification settings.");
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription
{
  selfCopy = self;
  sub_1D6019D90("BundleSessionManager did detect change in newsletters subscription.");
}

- (void)didUpdateNewslettersFrom:(id)from to:(id)to
{
  sub_1D5B5A498(0, &qword_1EDF1AC18);
  v5 = sub_1D726267C();
  v6 = sub_1D726267C();
  selfCopy = self;
  BundleSessionManager.didUpdateNewsletters(from:to:)(v5, v6);
}

@end