@interface DBTouchPassthroughWindow
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation DBTouchPassthroughWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DBTouchPassthroughWindow();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(DBTouchPassthroughWindow *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_24814CB58();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_248384030();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

@end