@interface AppStoreLockupView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppStoreLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DF918D8();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_24DF91AA0(event, x, y);

  return v10;
}

@end