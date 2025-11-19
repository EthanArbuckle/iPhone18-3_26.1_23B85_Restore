@interface CKFullscreenBrowserNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
@end

@implementation CKFullscreenBrowserNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(CKFullscreenBrowserNavigationController *)self childViewControllers];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKFullscreenBrowserNavigationController;
    v5 = [(CKFullscreenBrowserNavigationController *)&v8 supportedInterfaceOrientations];
  }

  v6 = v5;

  return v6;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKFullscreenBrowserNavigationController;
  [(CKFullscreenBrowserNavigationController *)&v4 loadView];
  v3 = [(CKFullscreenBrowserNavigationController *)self view];
  [v3 setBackgroundColor:0];
}

@end