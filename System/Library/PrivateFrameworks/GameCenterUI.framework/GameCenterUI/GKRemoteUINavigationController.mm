@interface GKRemoteUINavigationController
- (GKRemoteUINavigationController)initWithRemoteUIController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation GKRemoteUINavigationController

- (GKRemoteUINavigationController)initWithRemoteUIController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = GKRemoteUINavigationController;
  v6 = [(GKRemoteUINavigationController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteUIController, controller);
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
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  windowBackgroundColor = [mEMORY[0x277D0C868] windowBackgroundColor];
  view = [(GKRemoteUINavigationController *)self view];
  [view setBackgroundColor:windowBackgroundColor];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = MEMORY[0x277D0C258];
  if (*MEMORY[0x277D0C258])
  {
    return 30;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (result = 30, *v2 == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (!userInterfaceIdiom2)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKRemoteUINavigationController;
  [(GKRemoteUINavigationController *)&v5 viewDidAppear:appear];
  navigationBar = [(GKRemoteUINavigationController *)self navigationBar];
  [(GKRemoteUINavigationController *)self _gkConfigureFocusGuidesForNavigationBar:navigationBar];
}

@end