@interface CEKColoredPaletteSlider
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)colors;
- (void)layoutSubviews;
- (void)setColors:(id)colors;
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

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  if (colors)
  {
    sub_1B7EC9FD0(0, &qword_1EBA64920);
    colorsCopy = sub_1B7ED3C20();
  }

  v5 = OBJC_IVAR___CEKColoredPaletteSlider_colors;
  swift_beginAccess();
  *(self + v5) = colorsCopy;
  selfCopy = self;

  sub_1B7EC8BA0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  CEKColoredPaletteSlider.layoutSubviews()();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(CEKColoredPaletteSlider *)selfCopy bounds];
  v11 = CGRectInset(v10, -10.0, -10.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

@end