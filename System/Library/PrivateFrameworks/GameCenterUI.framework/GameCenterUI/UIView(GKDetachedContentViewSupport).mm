@interface UIView(GKDetachedContentViewSupport)
- (void)_gkSetNeedsRender;
@end

@implementation UIView(GKDetachedContentViewSupport)

- (void)_gkSetNeedsRender
{
  selfCopy = self;
  objc_opt_class();
  v1 = selfCopy;
  if (selfCopy)
  {
    while (1)
    {
      v5 = v1;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v5 superview];

      v1 = superview;
      if (!superview)
      {
        return;
      }
    }

    renderView = [v5 renderView];
    [renderView setNeedsDisplay];
  }
}

@end