@interface AccessPointWindow
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation AccessPointWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_24DFFCA74(event, x, y);

  return v10;
}

@end