@interface DebugFormatDebuggerSourceBreakpointIndicatorView
- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithCoder:(id)a3;
- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation DebugFormatDebuggerSourceBreakpointIndicatorView

- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_onTap;
  sub_1D67DEAF4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D67DF8B4();

  return v9;
}

@end