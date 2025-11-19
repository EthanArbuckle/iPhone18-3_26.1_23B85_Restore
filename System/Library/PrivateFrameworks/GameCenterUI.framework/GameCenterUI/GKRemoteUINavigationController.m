@interface GKRemoteUINavigationController
- (GKRemoteUINavigationController)initWithRemoteUIController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation GKRemoteUINavigationController

- (GKRemoteUINavigationController)initWithRemoteUIController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = GKRemoteUINavigationController;
  v6 = [(GKRemoteUINavigationController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteUIController, a3);
    [(GKRemoteUIController *)v7->_remoteUIController presentInParentNavigationController:v7 animated:0];
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = GKRemoteUINavigationController;
  [(GKRemoteUINavigationController *)&v6 loadView];
  v3 = [MEMORY[0x277D0C868] sharedPalette];
  v4 = [v3 windowBackgroundColor];
  v5 = [(GKRemoteUINavigationController *)self view];
  [v5 setBackgroundColor:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = MEMORY[0x277D0C258];
  if (*MEMORY[0x277D0C258])
  {
    return 30;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1 || (result = 30, *v2 == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (!v7)
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 bounds];
      v10 = v9;
      v12 = v11;

      if (v10 >= 414.0 && v12 >= 736.0)
      {
        return 30;
      }

      if (v12 >= 414.0 && v10 >= 736.0)
      {
        return 30;
      }
    }

    return 2;
  }

  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKRemoteUINavigationController;
  [(GKRemoteUINavigationController *)&v5 viewDidAppear:a3];
  v4 = [(GKRemoteUINavigationController *)self navigationBar];
  [(GKRemoteUINavigationController *)self _gkConfigureFocusGuidesForNavigationBar:v4];
}

@end