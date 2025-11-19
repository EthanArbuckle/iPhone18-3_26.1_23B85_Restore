@interface BundleSessionManager
- (_TtC8NewsFeed20BundleSessionManager)init;
- (void)didUpdateNewslettersFrom:(id)a3 to:(id)a4;
- (void)familySharingStatusDidChange;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3;
- (void)resetSession;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
@end

@implementation BundleSessionManager

- (void)resetSession
{
  v2 = self;
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
  v2 = self;
  sub_1D6019D90("BundleSessionManager did detect change in family status.");
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D6019D90("BundleSessionManager did detect change in notification settings.");
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3
{
  v3 = self;
  sub_1D6019D90("BundleSessionManager did detect change in newsletters subscription.");
}

- (void)didUpdateNewslettersFrom:(id)a3 to:(id)a4
{
  sub_1D5B5A498(0, &qword_1EDF1AC18);
  v5 = sub_1D726267C();
  v6 = sub_1D726267C();
  v7 = self;
  BundleSessionManager.didUpdateNewsletters(from:to:)(v5, v6);
}

@end