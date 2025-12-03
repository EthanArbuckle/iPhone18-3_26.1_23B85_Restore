@interface WaveformView
- (_TtC16CommunicationsUI12WaveformView)initWithFrame:(CGRect)frame;
- (void)setNeedsLayout;
@end

@implementation WaveformView

- (void)setNeedsLayout
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(WaveformView *)&v2 setNeedsLayout];
}

- (_TtC16CommunicationsUI12WaveformView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end