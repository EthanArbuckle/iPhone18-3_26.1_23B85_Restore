@interface PassthroughView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  PassthroughView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end