@interface OversizedBoundsButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC9MomentsUI21OversizedBoundsButton)initWithCoder:(id)coder;
- (_TtC9MomentsUI21OversizedBoundsButton)initWithFrame:(CGRect)frame;
@end

@implementation OversizedBoundsButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(OversizedBoundsButton *)selfCopy bounds];
  v8 = v7;
  [(OversizedBoundsButton *)selfCopy bounds];
  v10 = v9;
  [(OversizedBoundsButton *)selfCopy bounds];
  v15 = CGRectInset(v14, v8 * -1.5, v10 * -1.5);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v15, v13);

  return v11;
}

- (_TtC9MomentsUI21OversizedBoundsButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OversizedBoundsButton();
  return [(OversizedBoundsButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI21OversizedBoundsButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OversizedBoundsButton();
  coderCopy = coder;
  v5 = [(OversizedBoundsButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end