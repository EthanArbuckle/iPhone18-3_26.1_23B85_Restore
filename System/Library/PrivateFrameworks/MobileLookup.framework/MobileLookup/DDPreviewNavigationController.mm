@interface DDPreviewNavigationController
- (id)previewActions;
@end

@implementation DDPreviewNavigationController

- (id)previewActions
{
  visibleViewController = [(DDPreviewNavigationController *)self visibleViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [visibleViewController performSelector:sel_previewActions withObject:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end