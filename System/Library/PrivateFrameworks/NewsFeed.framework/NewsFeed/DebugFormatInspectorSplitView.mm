@interface DebugFormatInspectorSplitView
- (_TtC8NewsFeed29DebugFormatInspectorSplitView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorSplitView

- (_TtC8NewsFeed29DebugFormatInspectorSplitView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_left;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_right;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6A484B8();
}

@end