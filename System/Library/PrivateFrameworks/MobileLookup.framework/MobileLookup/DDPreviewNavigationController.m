@interface DDPreviewNavigationController
- (id)previewActions;
@end

@implementation DDPreviewNavigationController

- (id)previewActions
{
  v2 = [(DDPreviewNavigationController *)self visibleViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 performSelector:sel_previewActions withObject:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end