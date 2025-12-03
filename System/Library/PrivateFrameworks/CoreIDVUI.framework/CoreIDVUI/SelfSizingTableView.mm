@interface SelfSizingTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC9CoreIDVUI19SelfSizingTableView)initWithCoder:(id)coder;
- (_TtC9CoreIDVUI19SelfSizingTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
@end

@implementation SelfSizingTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SelfSizingTableView();
  [(SelfSizingTableView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SelfSizingTableView();
  v5 = v6.receiver;
  [(SelfSizingTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
  [v5 setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI19SelfSizingTableView_maxHeight);
  selfCopy = self;
  [(SelfSizingTableView *)selfCopy contentSize];
  if (v4 < v2)
  {
    v2 = v4;
  }

  [(SelfSizingTableView *)selfCopy contentSize];
  v6 = v5;

  v7 = v6;
  v8 = v2;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC9CoreIDVUI19SelfSizingTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI19SelfSizingTableView_maxHeight) = 0x7FF0000000000000;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SelfSizingTableView();
  return [(SelfSizingTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC9CoreIDVUI19SelfSizingTableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI19SelfSizingTableView_maxHeight) = 0x7FF0000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SelfSizingTableView();
  coderCopy = coder;
  v5 = [(SelfSizingTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end