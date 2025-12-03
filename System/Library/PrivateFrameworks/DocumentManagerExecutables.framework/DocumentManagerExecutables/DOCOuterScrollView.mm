@interface DOCOuterScrollView
- (_TtC26DocumentManagerExecutables18DOCOuterScrollView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables18DOCOuterScrollView)initWithFrame:(CGRect)frame;
@end

@implementation DOCOuterScrollView

- (_TtC26DocumentManagerExecutables18DOCOuterScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCOuterScrollView();
  return [(DOCOuterScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables18DOCOuterScrollView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCOuterScrollView();
  coderCopy = coder;
  v5 = [(DOCOuterScrollView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end