@interface CKFullscreenBrowserNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
@end

@implementation CKFullscreenBrowserNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  childViewControllers = [(CKFullscreenBrowserNavigationController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject)
  {
    supportedInterfaceOrientations = [firstObject supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKFullscreenBrowserNavigationController;
    supportedInterfaceOrientations = [(CKFullscreenBrowserNavigationController *)&v8 supportedInterfaceOrientations];
  }

  v6 = supportedInterfaceOrientations;

  return v6;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKFullscreenBrowserNavigationController;
  [(CKFullscreenBrowserNavigationController *)&v4 loadView];
  view = [(CKFullscreenBrowserNavigationController *)self view];
  [view setBackgroundColor:0];
}

@end