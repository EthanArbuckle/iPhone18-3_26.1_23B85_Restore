@interface DOCResizingBackgroundView
- (CGSize)intrinsicContentSize;
- (_TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation DOCResizingBackgroundView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DOCResizingBackgroundView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DOCResizingBackgroundView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end