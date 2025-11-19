@interface UIViewController
- (void)wrapWithSubViewController:(id)a3;
@end

@implementation UIViewController

- (void)wrapWithSubViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  UIViewController.wrap(subViewController:)(v4);
}

@end