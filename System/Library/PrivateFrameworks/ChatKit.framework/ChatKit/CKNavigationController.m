@interface CKNavigationController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (id)preferredFocusEnvironments;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKNavigationController

- (BOOL)prefersStatusBarHidden
{
  v3 = [(CKNavigationController *)self visibleViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 prefersStatusBarHidden];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKNavigationController;
    v4 = [(CKNavigationController *)&v7 prefersStatusBarHidden];
  }

  v5 = v4;

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CKNavigationController;
  [(CKNavigationController *)&v7 viewDidLayoutSubviews];
  v3 = [(CKNavigationController *)self visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKNavigationController *)self visibleViewController];
    v6 = [v5 view];
    [v6 setNeedsLayout];
  }
}

- (BOOL)shouldAutorotate
{
  v2 = [(CKNavigationController *)self visibleViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKNavigationController;
  [(CKNavigationController *)&v4 viewDidLoad];
  v3 = [(CKNavigationController *)self interactiveContentPopGestureRecognizer];
  [v3 setEnabled:0];
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "navigationController: %@, setting view controllers: %@, animated: %{BOOL}d", buf, 0x1Cu);
    }
  }

  v8.receiver = self;
  v8.super_class = CKNavigationController;
  [(CKNavigationController *)&v8 setViewControllers:v6 animated:v4];
}

@end