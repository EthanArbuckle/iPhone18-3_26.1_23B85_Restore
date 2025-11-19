@interface FIUINavigationController
- (BOOL)shouldAutorotate;
- (FIUINavigationController)initWithRootViewController:(id)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation FIUINavigationController

- (FIUINavigationController)initWithRootViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = FIUINavigationController;
  v3 = [(FIUINavigationController *)&v8 initWithRootViewController:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] fu_sausageFontOfSize:18.0];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v4, *MEMORY[0x1E69DB648], 0}];
    v6 = [(FIUINavigationController *)v3 navigationBar];
    [v6 setTitleTextAttributes:v5];
  }

  return v3;
}

- (BOOL)shouldAutorotate
{
  v2 = [(FIUINavigationController *)self topViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(FIUINavigationController *)self topViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v2 = [(FIUINavigationController *)self topViewController];
  v3 = [v2 preferredInterfaceOrientationForPresentation];

  return v3;
}

@end