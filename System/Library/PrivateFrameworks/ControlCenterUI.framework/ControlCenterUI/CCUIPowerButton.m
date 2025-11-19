@interface CCUIPowerButton
- (BOOL)isSelected;
- (CCUIPowerButton)initWithCoder:(id)a3;
- (CCUIPowerButton)initWithFrame:(CGRect)a3;
- (CCUIPowerButton)initWithFrame:(CGRect)a3 luminanceMap:(id)a4;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)updateAccessibilityButtonShapeAppearance;
@end

@implementation CCUIPowerButton

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PowerButton();
  return [(CCUIPowerButton *)&v3 isSelected];
}

- (CCUIPowerButton)initWithFrame:(CGRect)a3 luminanceMap:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_21EA5907C(a4, x, y, width, height);
}

- (CCUIPowerButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView) = 0;
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for PowerButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(CCUIPowerButton *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(CSProminentButtonControl *)&v8 setSelected:v3];
  if (v7 != [(CCUIPowerButton *)v6 isSelected])
  {
    [(CCUIPowerButton *)v6 setSelected:0];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PowerButton();
  v2 = v5.receiver;
  [(CSProminentButtonControl *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView];
  if (v3)
  {
    v4 = [v3 layer];
    [v2 frame];
    [v4 setCornerRadius_];

    v2 = v4;
  }
}

- (void)updateAccessibilityButtonShapeAppearance
{
  v5 = self;
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_21EA5943C();
    v2 = v5;
  }

  else
  {
    v3 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
    [*(&v5->super.super.super.super.super.isa + OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView) removeFromSuperview];
    v4 = *(&v5->super.super.super.super.super.isa + v3);
    *(&v5->super.super.super.super.super.isa + v3) = 0;

    v2 = v4;
  }
}

- (CCUIPowerButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end