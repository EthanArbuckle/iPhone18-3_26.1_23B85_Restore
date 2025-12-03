@interface MCUISignInViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (MCUISignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MCUISignInViewControllerDelegate)delegate;
- (NSString)orgName;
- (void)setContext:(id)context;
- (void)setOrgName:(id)name;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation MCUISignInViewController

- (MCUISignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MCUISignInViewController;
  v4 = [(MCUISignInViewController *)&v13 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    titleSectionController = v4->_titleSectionController;
    v4->_titleSectionController = v5;

    v7 = objc_opt_new();
    authSectionController = v4->_authSectionController;
    v4->_authSectionController = v7;

    inlineSignInViewController = [(MCSignInPageAuthenticationSectionController *)v4->_authSectionController inlineSignInViewController];
    [inlineSignInViewController setDelegate:v4];

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
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  [(MCUISignInViewController *)self addChildViewController:inlineSignInViewController];

  authSectionController2 = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController2 = [authSectionController2 inlineSignInViewController];
  [inlineSignInViewController2 didMoveToParentViewController:self];
}

- (AKAppleIDAuthenticationInAppContext)context
{
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  context = [inlineSignInViewController context];

  return context;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  [inlineSignInViewController setContext:contextCopy];
}

- (void)setOrgName:(id)name
{
  v5 = [name copy];
  titleSectionController = [(MCUISignInViewController *)self titleSectionController];
  [titleSectionController setOrgName:v5];
}

- (NSString)orgName
{
  titleSectionController = [(MCUISignInViewController *)self titleSectionController];
  orgName = [titleSectionController orgName];

  return orgName;
}

- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(MCUISignInViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(MCUISignInViewController *)self delegate];
    [delegate2 signInViewController:self willAuthenticateWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2]();
  }
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MCUISignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_279861DF8;
  block[4] = self;
  v12 = errorCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = errorCopy;
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