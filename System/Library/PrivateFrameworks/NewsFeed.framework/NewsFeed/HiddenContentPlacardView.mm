@interface HiddenContentPlacardView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation HiddenContentPlacardView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D6DB5630(event, x, y);

  return v10;
}

@end