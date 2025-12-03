@interface RoundView
- (_TtC9MomentsUI9RoundView)initWithCoder:(id)coder;
- (_TtC9MomentsUI9RoundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RoundView

- (void)layoutSubviews
{
  selfCopy = self;
  [(RoundView *)selfCopy bounds];
  [(RoundView *)selfCopy _setCornerRadius:v2 * 0.5];
}

- (_TtC9MomentsUI9RoundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundView();
  return [(RoundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI9RoundView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundView();
  coderCopy = coder;
  v5 = [(RoundView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end