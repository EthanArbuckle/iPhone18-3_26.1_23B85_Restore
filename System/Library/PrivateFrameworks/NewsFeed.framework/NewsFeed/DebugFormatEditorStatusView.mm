@interface DebugFormatEditorStatusView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8NewsFeed27DebugFormatEditorStatusView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DebugFormatEditorStatusView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D67DD190();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fmin(*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_maxWidth), 460.0);
  v4 = 32.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC8NewsFeed27DebugFormatEditorStatusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end