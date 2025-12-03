@interface DOCTableView
- (_TtC26DocumentManagerExecutables12DOCTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
@end

@implementation DOCTableView

- (_TtC26DocumentManagerExecutables12DOCTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTableView();
  return [(DOCTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

@end