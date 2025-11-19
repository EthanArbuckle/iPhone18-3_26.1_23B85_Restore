@interface CCUITouchPassThroughView
- (CCUITouchPassThroughView)initWithCoder:(id)a3;
- (CCUITouchPassThroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CCUITouchPassThroughView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CCUITouchPassThroughView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (CCUITouchPassThroughView)initWithFrame:(CGRect)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v4.receiver = self;
  v4.super_class = CCUITouchPassThroughView;
  return [(CCUITouchPassThroughView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (CCUITouchPassThroughView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v6.receiver = self;
  v6.super_class = CCUITouchPassThroughView;
  v3 = a3;
  v4 = [(CCUITouchPassThroughView *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end