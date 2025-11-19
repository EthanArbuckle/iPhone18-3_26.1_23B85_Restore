@interface UIView(GKDetachedContentViewSupport)
- (void)_gkSetNeedsRender;
@end

@implementation UIView(GKDetachedContentViewSupport)

- (void)_gkSetNeedsRender
{
  v4 = a1;
  objc_opt_class();
  v1 = v4;
  if (v4)
  {
    while (1)
    {
      v5 = v1;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2 = [v5 superview];

      v1 = v2;
      if (!v2)
      {
        return;
      }
    }

    v3 = [v5 renderView];
    [v3 setNeedsDisplay];
  }
}

@end