@interface CAFUIHeaderFooterTableView
- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithCoder:(id)coder;
- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation CAFUIHeaderFooterTableView

- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  return [(CAFUIHeaderFooterTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  coderCopy = coder;
  v5 = [(CAFUIHeaderFooterTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end