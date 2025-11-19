@interface WaveformPlayIndicator
- (_TtC11MediaCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation WaveformPlayIndicator

- (void)tintColorDidChange
{
  v2 = self;
  sub_1C59D7210();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1C59D6510();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1C59D75B4();
}

- (_TtC11MediaCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end