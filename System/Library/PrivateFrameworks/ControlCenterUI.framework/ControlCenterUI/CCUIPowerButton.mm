@interface CCUIPowerButton
- (BOOL)isSelected;
- (CCUIPowerButton)initWithCoder:(id)coder;
- (CCUIPowerButton)initWithFrame:(CGRect)frame;
- (CCUIPowerButton)initWithFrame:(CGRect)frame luminanceMap:(id)map;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)updateAccessibilityButtonShapeAppearance;
@end

@implementation CCUIPowerButton

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PowerButton();
  return [(CCUIPowerButton *)&v3 isSelected];
}

- (CCUIPowerButton)initWithFrame:(CGRect)frame luminanceMap:(id)map
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  mapCopy = map;
  return sub_21EA5907C(map, x, y, width, height);
}

- (CCUIPowerButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView) = 0;
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for PowerButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(CCUIPowerButton *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(CSProminentButtonControl *)&v8 setSelected:selectedCopy];
  if (isSelected != [(CCUIPowerButton *)selfCopy isSelected])
  {
    [(CCUIPowerButton *)selfCopy setSelected:0];
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
    layer = [v3 layer];
    [v2 frame];
    [layer setCornerRadius_];

    v2 = layer;
  }
}

- (void)updateAccessibilityButtonShapeAppearance
{
  selfCopy = self;
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_21EA5943C();
    v2 = selfCopy;
  }

  else
  {
    v3 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
    [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView) removeFromSuperview];
    v4 = *(&selfCopy->super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.isa + v3) = 0;

    v2 = v4;
  }
}

- (CCUIPowerButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end