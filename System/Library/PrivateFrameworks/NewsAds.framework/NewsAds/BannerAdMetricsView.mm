@interface BannerAdMetricsView
- (_TtC7NewsAds19BannerAdMetricsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)metricsViewCollapsed:(id)collapsed;
- (void)metricsViewReady:(id)ready;
@end

@implementation BannerAdMetricsView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(BannerAdMetricsView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_metricsView;
  if ([*&v2[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_metricsView] ready])
  {
    v4 = *&v2[v3];
    sub_1D76BFB50(v4);
  }
}

- (_TtC7NewsAds19BannerAdMetricsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)metricsViewReady:(id)ready
{
  readyCopy = ready;
  selfCopy = self;
  sub_1D7703E30();
  sub_1D76BFB50(readyCopy);
  ready = [readyCopy ready];
  sub_1D76899CC();
  sub_1D77034A0();

  sub_1D7689A20(ready);
}

- (void)metricsViewCollapsed:(id)collapsed
{
  sub_1D76899CC();
  selfCopy = self;
  sub_1D77034A0();
}

@end