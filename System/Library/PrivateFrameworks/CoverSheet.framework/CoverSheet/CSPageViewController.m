@interface CSPageViewController
- (CSCoverSheetViewControllerProtocol)coverSheetViewController;
- (CSPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)view;
- (int64_t)participantState;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)didTransitionToVisible:(BOOL)a3;
- (void)handleAction:(id)a3 fromSender:(id)a4;
- (void)viewDidLoad;
- (void)willTransitionToVisible:(BOOL)a3;
@end

@implementation CSPageViewController

- (int64_t)participantState
{
  if ([(CSCoverSheetViewControllerBase *)self isDisappeared])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = CSPageViewController;
  v2 = [(CSPageViewController *)&v4 view];

  return v2;
}

- (CSPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = CSPageViewController;
  return [(CSPresentationViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)willTransitionToVisible:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromBOOL();
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will transition to visible %{public}@", &v7, 0x16u);
  }
}

- (void)didTransitionToVisible:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromBOOL();
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ did transition to visible %{public}@", &v7, 0x16u);
  }
}

- (void)viewDidLoad
{
  v3 = [(CSPageViewController *)self view];
  [v3 setPageViewController:self];

  v4.receiver = self;
  v4.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v4 viewDidLoad];
}

- (void)aggregateAppearance:(id)a3
{
  v3.receiver = self;
  v3.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v3 aggregateAppearance:a3];
}

- (void)aggregateBehavior:(id)a3
{
  v3.receiver = self;
  v3.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v3 aggregateBehavior:a3];
}

- (void)handleAction:(id)a3 fromSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1 && (-[CSPresentationViewController contentViewControllers](self, "contentViewControllers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", v7), v8, v9))
  {
    [(CSPresentationViewController *)self dismissContentViewController:v7 animated:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CSPageViewController;
    [(CSCoverSheetViewControllerBase *)&v10 handleAction:v6 fromSender:v7];
  }
}

- (CSCoverSheetViewControllerProtocol)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

@end