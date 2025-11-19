@interface UIViewController(PocketAdditions)
- (void)hu_pocketedContainerViewController;
@end

@implementation UIViewController(PocketAdditions)

- (void)hu_pocketedContainerViewController
{
  objc_opt_class();
  v2 = [a1 parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end