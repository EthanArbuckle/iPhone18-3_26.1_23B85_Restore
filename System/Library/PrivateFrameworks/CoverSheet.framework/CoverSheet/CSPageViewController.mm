@interface CSPageViewController
- (CSCoverSheetViewControllerProtocol)coverSheetViewController;
- (CSPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)view;
- (int64_t)participantState;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)didTransitionToVisible:(BOOL)visible;
- (void)handleAction:(id)action fromSender:(id)sender;
- (void)viewDidLoad;
- (void)willTransitionToVisible:(BOOL)visible;
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
  view = [(CSPageViewController *)&v4 view];

  return view;
}

- (CSPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = CSPageViewController;
  return [(CSPresentationViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)willTransitionToVisible:(BOOL)visible
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

- (void)didTransitionToVisible:(BOOL)visible
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
  view = [(CSPageViewController *)self view];
  [view setPageViewController:self];

  v4.receiver = self;
  v4.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v4 viewDidLoad];
}

- (void)aggregateAppearance:(id)appearance
{
  v3.receiver = self;
  v3.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v3 aggregateAppearance:appearance];
}

- (void)aggregateBehavior:(id)behavior
{
  v3.receiver = self;
  v3.super_class = CSPageViewController;
  [(CSPresentationViewController *)&v3 aggregateBehavior:behavior];
}

- (void)handleAction:(id)action fromSender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  if ([actionCopy type] == 1 && (-[CSPresentationViewController contentViewControllers](self, "contentViewControllers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", senderCopy), v8, v9))
  {
    [(CSPresentationViewController *)self dismissContentViewController:senderCopy animated:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CSPageViewController;
    [(CSCoverSheetViewControllerBase *)&v10 handleAction:actionCopy fromSender:senderCopy];
  }
}

- (CSCoverSheetViewControllerProtocol)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

@end