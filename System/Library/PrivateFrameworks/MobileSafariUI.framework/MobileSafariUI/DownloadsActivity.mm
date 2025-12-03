@interface DownloadsActivity
- (ActionPanel)parentViewController;
- (BOOL)canPerformWithTabDocument:(id)document;
- (DownloadsActivity)init;
- (id)_activityBadgeText;
- (id)_navigationController;
- (void)_downloadsDidChange;
- (void)performActivityWithTabDocument:(id)document;
@end

@implementation DownloadsActivity

- (DownloadsActivity)init
{
  v6.receiver = self;
  v6.super_class = DownloadsActivity;
  v2 = [(UIActivity *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB9C0] object:0];
    [defaultCenter addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB998] object:0];
    [defaultCenter addObserver:v2 selector:sel__downloadsDidChange name:*MEMORY[0x277CDB9A0] object:0];
    v4 = v2;
  }

  return v2;
}

- (id)_activityBadgeText
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  runningDownloadsCount = [mEMORY[0x277CDB7A8] runningDownloadsCount];

  if (runningDownloadsCount)
  {
    v4 = MEMORY[0x277CCABB8];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:runningDownloadsCount];
    runningDownloadsCount = [v4 localizedStringFromNumber:v5 numberStyle:1];
  }

  return runningDownloadsCount;
}

- (BOOL)canPerformWithTabDocument:(id)document
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  downloads = [mEMORY[0x277CDB7A8] downloads];
  v5 = [downloads count] != 0;

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
    downloadsViewController = [WeakRetained downloadsViewController];

    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:downloadsViewController];
    v8 = self->_navigationController;
    self->_navigationController = v7;

    v3 = self->_navigationController;
  }

  return v3;
}

- (void)performActivityWithTabDocument:(id)document
{
  documentCopy = document;
  [(_SFActivity *)self activityDidFinish:1];
  browserController = [documentCopy browserController];

  viewControllerToPresentFrom = [browserController viewControllerToPresentFrom];
  _navigationController = [(DownloadsActivity *)self _navigationController];
  [viewControllerToPresentFrom presentViewController:_navigationController animated:1 completion:0];
}

- (void)_downloadsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [WeakRetained _reloadActivity:self];
  }

  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  downloads = [mEMORY[0x277CDB7A8] downloads];
  v5 = [downloads count];

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