@interface CCUITouchPassThroughView
- (CCUITouchPassThroughView)initWithCoder:(id)coder;
- (CCUITouchPassThroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CCUITouchPassThroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CCUITouchPassThroughView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (CCUITouchPassThroughView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v4.receiver = self;
  v4.super_class = CCUITouchPassThroughView;
  return [(CCUITouchPassThroughView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CCUITouchPassThroughView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v6.receiver = self;
  v6.super_class = CCUITouchPassThroughView;
  coderCopy = coder;
  v4 = [(CCUITouchPassThroughView *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end