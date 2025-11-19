@interface DBTouchPassthroughWindow
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation DBTouchPassthroughWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DBTouchPassthroughWindow();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(DBTouchPassthroughWindow *)&v13 hitTest:v8 withEvent:x, y];
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