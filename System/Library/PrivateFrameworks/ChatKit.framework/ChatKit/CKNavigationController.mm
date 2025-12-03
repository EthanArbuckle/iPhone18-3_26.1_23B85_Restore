@interface CKNavigationController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (id)preferredFocusEnvironments;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKNavigationController

- (BOOL)prefersStatusBarHidden
{
  visibleViewController = [(CKNavigationController *)self visibleViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    prefersStatusBarHidden = [visibleViewController prefersStatusBarHidden];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKNavigationController;
    prefersStatusBarHidden = [(CKNavigationController *)&v7 prefersStatusBarHidden];
  }

  v5 = prefersStatusBarHidden;

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CKNavigationController;
  [(CKNavigationController *)&v7 viewDidLayoutSubviews];
  visibleViewController = [(CKNavigationController *)self visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    visibleViewController2 = [(CKNavigationController *)self visibleViewController];
    view = [visibleViewController2 view];
    [view setNeedsLayout];
  }
}

- (BOOL)shouldAutorotate
{
  visibleViewController = [(CKNavigationController *)self visibleViewController];
  shouldAutorotate = [visibleViewController shouldAutorotate];

  return shouldAutorotate;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKNavigationController;
  [(CKNavigationController *)&v4 viewDidLoad];
  interactiveContentPopGestureRecognizer = [(CKNavigationController *)self interactiveContentPopGestureRecognizer];
  [interactiveContentPopGestureRecognizer setEnabled:0];
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = controllersCopy;
      v13 = 1024;
      v14 = animatedCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "navigationController: %@, setting view controllers: %@, animated: %{BOOL}d", buf, 0x1Cu);
    }
  }

  v8.receiver = self;
  v8.super_class = CKNavigationController;
  [(CKNavigationController *)&v8 setViewControllers:controllersCopy animated:animatedCopy];
}

@end