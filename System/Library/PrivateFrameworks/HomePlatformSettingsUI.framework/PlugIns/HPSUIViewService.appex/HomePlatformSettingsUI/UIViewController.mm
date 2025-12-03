@interface UIViewController
- (void)wrapWithSubViewController:(id)controller;
@end

@implementation UIViewController

- (void)wrapWithSubViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  UIViewController.wrap(subViewController:)(controllerCopy);
}

@end