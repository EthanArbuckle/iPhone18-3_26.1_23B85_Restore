@interface UIView(MTUIAdditions)
- (double)mtui_boundsCenter;
@end

@implementation UIView(MTUIAdditions)

- (double)mtui_boundsCenter
{
  [self bounds];
  MidX = CGRectGetMidX(v4);
  [self bounds];
  CGRectGetMidY(v5);
  return MidX;
}

@end