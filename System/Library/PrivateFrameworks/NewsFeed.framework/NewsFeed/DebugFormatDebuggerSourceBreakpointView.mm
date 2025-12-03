@interface DebugFormatDebuggerSourceBreakpointView
- (_TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView)initWithCoder:(id)coder;
- (_TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView)initWithFrame:(CGRect)frame;
@end

@implementation DebugFormatDebuggerSourceBreakpointView

- (_TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile);
  sub_1D607F0A4(v9);
  v4 = v9[5];
  v3[4] = v9[4];
  v3[5] = v4;
  v5 = v9[7];
  v3[6] = v9[6];
  v3[7] = v5;
  v6 = v9[1];
  *v3 = v9[0];
  v3[1] = v6;
  v7 = v9[3];
  v3[2] = v9[2];
  v3[3] = v7;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end