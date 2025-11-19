@interface MCUISignInViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (MCUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MCUISignInViewControllerDelegate)delegate;
- (NSString)orgName;
- (void)setContext:(id)a3;
- (void)setOrgName:(id)a3;
- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
- (void)signInViewController:(id)a3 willPerformAuthenticationWithContext:(id)a4 completionHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation MCUISignInViewController

- (MCUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MCUISignInViewController;
  v4 = [(MCUISignInViewController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    titleSectionController = v4->_titleSectionController;
    v4->_titleSectionController = v5;

    v7 = objc_opt_new();
    authSectionController = v4->_authSectionController;
    v4->_authSectionController = v7;

    v9 = [(MCSignInPageAuthenticationSectionController *)v4->_authSectionController inlineSignInViewController];
    [v9 setDelegate:v4];

    v14[0] = v4->_titleSectionController;
    v14[1] = v4->_authSectionController;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [(MCSectionBasedTableViewController *)v4 setSectionControllers:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCUISignInViewController;
  [(MCSectionBasedTableViewController *)&v7 viewDidLoad];
  v3 = [(MCUISignInViewController *)self authSectionController];
  v4 = [v3 inlineSignInViewController];
  [(MCUISignInViewController *)self addChildViewController:v4];

  v5 = [(MCUISignInViewController *)self authSectionController];
  v6 = [v5 inlineSignInViewController];
  [v6 didMoveToParentViewController:self];
}

- (AKAppleIDAuthenticationInAppContext)context
{
  v2 = [(MCUISignInViewController *)self authSectionController];
  v3 = [v2 inlineSignInViewController];
  v4 = [v3 context];

  return v4;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v6 = [(MCUISignInViewController *)self authSectionController];
  v5 = [v6 inlineSignInViewController];
  [v5 setContext:v4];
}

- (void)setOrgName:(id)a3
{
  v5 = [a3 copy];
  v4 = [(MCUISignInViewController *)self titleSectionController];
  [v4 setOrgName:v5];
}

- (NSString)orgName
{
  v2 = [(MCUISignInViewController *)self titleSectionController];
  v3 = [v2 orgName];

  return v3;
}

- (void)signInViewController:(id)a3 willPerformAuthenticationWithContext:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v6 = [(MCUISignInViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MCUISignInViewController *)self delegate];
    [v8 signInViewController:self willAuthenticateWithCompletionHandler:v9];
  }

  else
  {
    v9[2]();
  }
}

- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MCUISignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_279861DF8;
  block[4] = self;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__MCUISignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isBeingDismissed] & 1) == 0)
  {
    v2 = [*(a1 + 32) presentingViewController];

    if (v2)
    {
      if (!*(a1 + 40))
      {
        [*(a1 + 32) setAuthenticationFinished:1];
        v3 = [*(a1 + 32) delegate];
        v4 = objc_opt_respondsToSelector();

        if (v4)
        {
          v5 = [*(a1 + 32) delegate];
          [v5 signInViewController:*(a1 + 32) didAuthenticateWithResults:*(a1 + 48) error:*(a1 + 40)];
        }
      }
    }
  }
}

- (MCUISignInViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end