@interface DebugFormatWorkspaceCanvasStatusView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DebugFormatWorkspaceCanvasStatusView

- (void)layoutSubviews
{
  v2 = self;
  sub_1D676DBF8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = fmin(*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_maxWidth), 460.0);
  v4 = 32.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end