@interface OversizedBoundsButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC9MomentsUI21OversizedBoundsButton)initWithCoder:(id)a3;
- (_TtC9MomentsUI21OversizedBoundsButton)initWithFrame:(CGRect)a3;
@end

@implementation OversizedBoundsButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(OversizedBoundsButton *)v6 bounds];
  v8 = v7;
  [(OversizedBoundsButton *)v6 bounds];
  v10 = v9;
  [(OversizedBoundsButton *)v6 bounds];
  v15 = CGRectInset(v14, v8 * -1.5, v10 * -1.5);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v15, v13);

  return v11;
}

- (_TtC9MomentsUI21OversizedBoundsButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OversizedBoundsButton();
  return [(OversizedBoundsButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI21OversizedBoundsButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OversizedBoundsButton();
  v4 = a3;
  v5 = [(OversizedBoundsButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end