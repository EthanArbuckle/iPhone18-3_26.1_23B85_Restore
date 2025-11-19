@interface DOCServiceView
- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithFrame:(CGRect)a3;
@end

@implementation DOCServiceView

- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCServiceView();
  return [(DOCServiceView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCServiceView();
  v4 = a3;
  v5 = [(DOCServiceView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end