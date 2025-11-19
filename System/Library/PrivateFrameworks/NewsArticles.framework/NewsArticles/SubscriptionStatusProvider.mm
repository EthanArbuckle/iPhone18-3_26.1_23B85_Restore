@interface SubscriptionStatusProvider
- (_TtC12NewsArticles26SubscriptionStatusProvider)init;
- (void)purchaseListChangedWithNotification:(id)a3;
- (void)setBundleSubscriptionStatus:(int64_t)a3;
- (void)setChannelSubscriptionStatus:(int64_t)a3;
@end

@implementation SubscriptionStatusProvider

- (void)setBundleSubscriptionStatus:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus);
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus) = a3;
  v4 = self;
  sub_1D7AE06DC(v3, &selRef_bundleSubscriptionStatusDidChangeFromStatus_);
}

- (void)setChannelSubscriptionStatus:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus);
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus) = a3;
  v4 = self;
  sub_1D7AE06DC(v3, &selRef_channelSubscriptionStatusDidChangeFromStatus_);
}

- (void)purchaseListChangedWithNotification:(id)a3
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = self;
  v10 = sub_1D7AE09FC();
  v11 = *(&v9->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus);
  *(&v9->super.isa + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus) = v10;
  sub_1D7AE06DC(v11, &selRef_channelSubscriptionStatusDidChangeFromStatus_);

  (*(v5 + 8))(v8, v4);
}

- (_TtC12NewsArticles26SubscriptionStatusProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end