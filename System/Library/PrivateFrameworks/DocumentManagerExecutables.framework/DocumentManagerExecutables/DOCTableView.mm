@interface DOCTableView
- (_TtC26DocumentManagerExecutables12DOCTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
@end

@implementation DOCTableView

- (_TtC26DocumentManagerExecutables12DOCTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTableView();
  return [(DOCTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

@end