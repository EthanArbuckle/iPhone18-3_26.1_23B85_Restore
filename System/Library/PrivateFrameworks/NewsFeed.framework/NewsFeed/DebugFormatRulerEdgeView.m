@interface DebugFormatRulerEdgeView
- (_TtC8NewsFeed24DebugFormatRulerEdgeView)initWithFrame:(CGRect)a3;
- (void)didUpdatePan:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DebugFormatRulerEdgeView

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6208348();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  [(DebugFormatRulerEdgeView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
  v7 = [objc_opt_self() separatorColor];
  v8 = [v7 CGColor];

  [v6 setStrokeColor_];
}

- (void)didUpdatePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6209164(v4);
}

- (_TtC8NewsFeed24DebugFormatRulerEdgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end