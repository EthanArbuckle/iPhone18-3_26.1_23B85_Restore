@interface UIView(MTUIAdditions)
- (double)mtui_boundsCenter;
@end

@implementation UIView(MTUIAdditions)

- (double)mtui_boundsCenter
{
  [a1 bounds];
  MidX = CGRectGetMidX(v4);
  [a1 bounds];
  CGRectGetMidY(v5);
  return MidX;
}

@end