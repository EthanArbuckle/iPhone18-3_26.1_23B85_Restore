@interface InterstitialAdMetricsView
- (_TtC7NewsAds25InterstitialAdMetricsView)initWithCoder:(id)coder;
- (_TtC7NewsAds25InterstitialAdMetricsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)metricsViewCollapsed:(id)collapsed;
@end

@implementation InterstitialAdMetricsView

- (_TtC7NewsAds25InterstitialAdMetricsView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress;
  sub_1D76E9468(0, &qword_1EE0B0810, MEMORY[0x1E69D8770]);
  v6 = v5;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  v7 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  *(&self->super.super.super.isa + v7) = [objc_allocWithZone(v6) init];
  result = sub_1D7704860();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(InterstitialAdMetricsView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC7NewsAds25InterstitialAdMetricsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)metricsViewCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  selfCopy = self;
  _s7NewsAds25InterstitialAdMetricsViewC07metricsF9Collapsedyy17PromotedContentUI0eF0CF_0();
}

@end