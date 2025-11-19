@interface CEKColoredPaletteSlider
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)colors;
- (void)layoutSubviews;
- (void)setColors:(id)a3;
@end

@implementation CEKColoredPaletteSlider

- (NSArray)colors
{
  v3 = OBJC_IVAR___CEKColoredPaletteSlider_colors;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_1B7EC9FD0(0, &qword_1EBA64920);

    v4 = sub_1B7ED3C10();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setColors:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1B7EC9FD0(0, &qword_1EBA64920);
    v3 = sub_1B7ED3C20();
  }

  v5 = OBJC_IVAR___CEKColoredPaletteSlider_colors;
  swift_beginAccess();
  *(self + v5) = v3;
  v6 = self;

  sub_1B7EC8BA0();
}

- (void)layoutSubviews
{
  v2 = self;
  CEKColoredPaletteSlider.layoutSubviews()();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(CEKColoredPaletteSlider *)v6 bounds];
  v11 = CGRectInset(v10, -10.0, -10.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

@end