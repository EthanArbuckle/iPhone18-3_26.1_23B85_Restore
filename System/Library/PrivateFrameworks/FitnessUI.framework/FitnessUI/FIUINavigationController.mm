@interface FIUINavigationController
- (BOOL)shouldAutorotate;
- (FIUINavigationController)initWithRootViewController:(id)controller;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation FIUINavigationController

- (FIUINavigationController)initWithRootViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = FIUINavigationController;
  v3 = [(FIUINavigationController *)&v8 initWithRootViewController:controller];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] fu_sausageFontOfSize:18.0];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v4, *MEMORY[0x1E69DB648], 0}];
    navigationBar = [(FIUINavigationController *)v3 navigationBar];
    [navigationBar setTitleTextAttributes:v5];
  }

  return v3;
}

- (BOOL)shouldAutorotate
{
  topViewController = [(FIUINavigationController *)self topViewController];
  shouldAutorotate = [topViewController shouldAutorotate];

  return shouldAutorotate;
}

- (unint64_t)supportedInterfaceOrientations
{
  topViewController = [(FIUINavigationController *)self topViewController];
  supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  topViewController = [(FIUINavigationController *)self topViewController];
  preferredInterfaceOrientationForPresentation = [topViewController preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

@end