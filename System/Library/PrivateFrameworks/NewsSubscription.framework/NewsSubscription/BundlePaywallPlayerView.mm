@interface BundlePaywallPlayerView
+ (Class)layerClass;
- (_TtC16NewsSubscription23BundlePaywallPlayerView)initWithCoder:(id)coder;
- (void)didMoveToWindow;
@end

@implementation BundlePaywallPlayerView

+ (Class)layerClass
{
  sub_1D77E8F70();

  return swift_getObjCClassFromMetadata();
}

- (_TtC16NewsSubscription23BundlePaywallPlayerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16NewsSubscription23BundlePaywallPlayerView_displayStateCoordinator;
  sub_1D78B5BA4();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1D78B5B94();
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BundlePaywallPlayerView();
  v2 = v3.receiver;
  [(BundlePaywallPlayerView *)&v3 didMoveToWindow];
  sub_1D78B5B54();
}

@end