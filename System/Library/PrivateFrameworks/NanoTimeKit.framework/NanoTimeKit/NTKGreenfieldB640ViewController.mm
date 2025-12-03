@interface NTKGreenfieldB640ViewController
- (NTKGreenfieldB640ViewController)initWithUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier;
- (NTKGreenfieldB640ViewControllerDelegate)delegate;
- (void)greenfieldB640ContentViewController:(id)controller handleButtonActionEvent:(int64_t)event;
- (void)greenfieldB640WatchFacesManager:(id)manager updateStateToError:(id)error;
- (void)greenfieldB640WatchFacesManager:(id)manager updateStateToSelectWatchFacesState:(id)state;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldB640ViewController

- (NTKGreenfieldB640ViewController)initWithUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier
{
  urlCopy = url;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NTKGreenfieldB640ViewController;
  v9 = [(NTKGreenfieldB640ViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, url);
    objc_storeStrong(&v10->_sourceApplicationBundleIdentifier, identifier);
  }

  return v10;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = NTKGreenfieldB640ViewController;
  [(NTKGreenfieldB640ViewController *)&v20 viewDidLoad];
  navigationController = [(NTKGreenfieldB640ViewController *)self navigationController];
  [navigationController setModalInPresentation:1];

  v4 = objc_opt_new();
  [v4 configureWithTransparentBackground];
  v5 = [MEMORY[0x277D75210] effectWithStyle:2];
  [v4 setBackgroundEffect:v5];

  navigationController2 = [(NTKGreenfieldB640ViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setStandardAppearance:v4];

  v8 = BPSBackgroundColor();
  view = [(NTKGreenfieldB640ViewController *)self view];
  [view setBackgroundColor:v8];

  v10 = objc_alloc_init(NTKGreenfieldCompanionLoadingViewController);
  loadingViewController = self->_loadingViewController;
  self->_loadingViewController = v10;

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_loadingViewController];
  hiddenNavigationController = self->_hiddenNavigationController;
  self->_hiddenNavigationController = v12;

  [(UINavigationController *)self->_hiddenNavigationController setNavigationBarHidden:1 animated:0];
  [(NTKGreenfieldB640ViewController *)self addChildViewController:self->_hiddenNavigationController];
  view2 = [(NTKGreenfieldB640ViewController *)self view];
  view3 = [(UINavigationController *)self->_hiddenNavigationController view];
  [view2 addSubview:view3];

  [(UINavigationController *)self->_hiddenNavigationController didMoveToParentViewController:self];
  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__didTapCancelButton];
  navigationItem = [(NTKGreenfieldB640ViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v16 animated:0];

  v18 = objc_alloc_init(NTKGreenfieldB640Manager);
  b640Manager = self->_b640Manager;
  self->_b640Manager = v18;

  [(NTKGreenfieldB640Manager *)self->_b640Manager setDelegate:self];
  [(NTKGreenfieldB640Manager *)self->_b640Manager decodeUrl:self->_url sourceApplicationBundleIdentifier:self->_sourceApplicationBundleIdentifier];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldB640ViewController;
  [(NTKGreenfieldB640ViewController *)&v6 viewDidDisappear:disappear];
  addedFaceID = [(NTKGreenfieldB640Manager *)self->_b640Manager addedFaceID];
  if (addedFaceID)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"NTKGreenfieldAddWatchFaceManagerDidAddFaceNotification" object:addedFaceID];
  }

  [(NTKGreenfieldB640Manager *)self->_b640Manager handleDidExitGreenfieldB640Flow];
}

- (void)greenfieldB640ContentViewController:(id)controller handleButtonActionEvent:(int64_t)event
{
  controllerCopy = controller;
  if (event == 2)
  {
    v8 = controllerCopy;
    goto LABEL_7;
  }

  if (event == 1)
  {
    v8 = controllerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didTapOnLoadingFaceLibraryButton:self];

LABEL_7:
    [(NTKGreenfieldB640ViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_8;
  }

  if (event)
  {
    goto LABEL_9;
  }

  v8 = controllerCopy;
  [(NTKGreenfieldB640Manager *)self->_b640Manager handleAddToMyFacesAction];
LABEL_8:
  controllerCopy = v8;
LABEL_9:
}

- (void)greenfieldB640WatchFacesManager:(id)manager updateStateToSelectWatchFacesState:(id)state
{
  contentViewController = self->_contentViewController;
  if (!contentViewController)
  {
    stateCopy = state;
    v7 = [[NTKGreenfieldB640ContentViewController alloc] initForAddWatchFacesStateWithGreenfieldB640Model:stateCopy];

    v8 = self->_contentViewController;
    self->_contentViewController = v7;

    [(NTKGreenfieldB640ContentViewController *)self->_contentViewController setGreenfieldB640delegate:self];
    contentViewController = self->_contentViewController;
  }

  hiddenNavigationController = self->_hiddenNavigationController;

  [(UINavigationController *)hiddenNavigationController pushViewController:contentViewController animated:0];
}

- (void)greenfieldB640WatchFacesManager:(id)manager updateStateToError:(id)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  error = [errorCopy error];

  if (error)
  {
    v7 = [[NTKGreenfieldB640ContentViewController alloc] initForErrorStateWithGreenfieldB640Model:errorCopy];
    [v7 setGreenfieldB640delegate:self];
    hiddenNavigationController = self->_hiddenNavigationController;
    v10[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(UINavigationController *)hiddenNavigationController setViewControllers:v9 animated:0];
  }

  else
  {
    [(NTKGreenfieldB640ViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (NTKGreenfieldB640ViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end