@interface AppStoreLockupView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation AppStoreLockupView

- (void)layoutSubviews
{
  v2 = self;
  sub_24DF918D8();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_24DF91AA0(a4, x, y);

  return v10;
}

@end