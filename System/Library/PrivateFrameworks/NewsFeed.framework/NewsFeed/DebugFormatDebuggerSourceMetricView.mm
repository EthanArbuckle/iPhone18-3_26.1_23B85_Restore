@interface DebugFormatDebuggerSourceMetricView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8NewsFeed35DebugFormatDebuggerSourceMetricView)initWithCoder:(id)coder;
- (_TtC8NewsFeed35DebugFormatDebuggerSourceMetricView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DebugFormatDebuggerSourceMetricView

- (_TtC8NewsFeed35DebugFormatDebuggerSourceMetricView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v6 = (self + OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleInsets);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  v6[1] = _Q0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleTipSize) = 0x4018000000000000;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D60D144C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label);
  selfCopy = self;
  [v5 sizeThatFits_];
  sub_1D7262E2C();
  sub_1D726335C();
  sub_1D7262E3C();
  sub_1D726336C();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (_TtC8NewsFeed35DebugFormatDebuggerSourceMetricView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end