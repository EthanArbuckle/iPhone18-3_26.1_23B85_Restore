@interface DebugFormatCanvasPriorityView
- (_TtC8NewsFeed29DebugFormatCanvasPriorityView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DebugFormatCanvasPriorityView

- (_TtC8NewsFeed29DebugFormatCanvasPriorityView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_priority) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_notchViews) = MEMORY[0x1E69E7CC0];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D701044C();
}

@end