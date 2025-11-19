@interface BannerAdMetricsView
- (_TtC7NewsAds19BannerAdMetricsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)metricsViewCollapsed:(id)a3;
- (void)metricsViewReady:(id)a3;
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

- (_TtC7NewsAds19BannerAdMetricsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)metricsViewReady:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7703E30();
  sub_1D76BFB50(v4);
  v6 = [v4 ready];
  sub_1D76899CC();
  sub_1D77034A0();

  sub_1D7689A20(v6);
}

- (void)metricsViewCollapsed:(id)a3
{
  sub_1D76899CC();
  v4 = self;
  sub_1D77034A0();
}

@end