@interface DebugFormatDebuggerSourceBreakpointIndicatorView
- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithCoder:(id)coder;
- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation DebugFormatDebuggerSourceBreakpointIndicatorView

- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView_onTap;
  sub_1D67DEAF4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed48DebugFormatDebuggerSourceBreakpointIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1D67DF8B4();

  return v9;
}

@end