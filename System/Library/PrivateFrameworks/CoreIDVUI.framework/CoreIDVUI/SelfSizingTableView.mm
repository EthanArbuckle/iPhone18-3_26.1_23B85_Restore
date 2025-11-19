@interface SelfSizingTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC9CoreIDVUI19SelfSizingTableView)initWithCoder:(id)a3;
- (_TtC9CoreIDVUI19SelfSizingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = self;
  [(SelfSizingTableView *)v3 contentSize];
  if (v4 < v2)
  {
    v2 = v4;
  }

  [(SelfSizingTableView *)v3 contentSize];
  v6 = v5;

  v7 = v6;
  v8 = v2;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC9CoreIDVUI19SelfSizingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI19SelfSizingTableView_maxHeight) = 0x7FF0000000000000;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SelfSizingTableView();
  return [(SelfSizingTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC9CoreIDVUI19SelfSizingTableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI19SelfSizingTableView_maxHeight) = 0x7FF0000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SelfSizingTableView();
  v4 = a3;
  v5 = [(SelfSizingTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end