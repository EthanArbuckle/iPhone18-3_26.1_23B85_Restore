@interface DOCServiceView
- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithFrame:(CGRect)frame;
@end

@implementation DOCServiceView

- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCServiceView();
  return [(DOCServiceView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables14DOCServiceView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCServiceView();
  coderCopy = coder;
  v5 = [(DOCServiceView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end