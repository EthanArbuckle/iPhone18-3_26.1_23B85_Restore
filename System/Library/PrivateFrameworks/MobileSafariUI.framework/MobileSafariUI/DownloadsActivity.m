@interface DownloadsActivity
- (ActionPanel)parentViewController;
- (BOOL)canPerformWithTabDocument:(id)a3;
- (DownloadsActivity)init;
- (id)_activityBadgeText;
- (id)_navigationController;
- (void)_downloadsDidChange;
- (void)performActivityWithTabDocument:(id)a3;
@end

@implementation DownloadsActivity

- (DownloadsActivity)init
{
  v6.receiver = self;
  v6.super_class = DownloadsActivity;
  v2 = [(UIActivity *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB9C0] object:0];
    [v3 addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB998] object:0];
    [v3 addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB9A0] object:0];
    v4 = v2;
  }

  return v2;
}

- (id)_activityBadgeText
{
  v2 = [MEMORY[0x277CDB7A8] sharedManager];
  v3 = [v2 runningDownloadsCount];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB8];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v3 = [v4 localizedStringFromNumber:v5 numberStyle:1];
  }

  return v3;
}

- (BOOL)canPerformWithTabDocument:(id)a3
{
  v3 = [MEMORY[0x277CDB7A8] sharedManager];
  v4 = [v3 downloads];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)_navigationController
{
  navigationController = self->_navigationController;
  if (navigationController)
  {
    v3 = navigationController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    v6 = [WeakRetained downloadsViewController];

    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
    v8 = self->_navigationController;
    self->_navigationController = v7;

    v3 = self->_navigationController;
  }

  return v3;
}

- (void)performActivityWithTabDocument:(id)a3
{
  v4 = a3;
  [(_SFActivity *)self activityDidFinish:1];
  v7 = [v4 browserController];

  v5 = [v7 viewControllerToPresentFrom];
  v6 = [(DownloadsActivity *)self _navigationController];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)_downloadsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [WeakRetained _reloadActivity:self];
  }

  v3 = [MEMORY[0x277CDB7A8] sharedManager];
  v4 = [v3 downloads];
  v5 = [v4 count];

  if (!v5)
  {
    [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (ActionPanel)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end