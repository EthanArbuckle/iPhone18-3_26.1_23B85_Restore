@interface CAFUIHeaderFooterTableView
- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithCoder:(id)a3;
- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation CAFUIHeaderFooterTableView

- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  return [(CAFUIHeaderFooterTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC5CAFUI26CAFUIHeaderFooterTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUIHeaderFooterTableView();
  v4 = a3;
  v5 = [(CAFUIHeaderFooterTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end