@interface HiddenContentPlacardView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation HiddenContentPlacardView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1D6DB5630(a4, x, y);

  return v10;
}

@end