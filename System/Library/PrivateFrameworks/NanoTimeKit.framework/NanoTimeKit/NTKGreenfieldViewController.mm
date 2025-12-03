@interface NTKGreenfieldViewController
- (NTKGreenfieldViewController)initWithUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier;
- (void)_toggleCancelButton:(BOOL)button;
- (void)_toggleRightCounterLabel:(BOOL)label;
- (void)addWatchFaceManager:(id)manager didFinishAddingFaceWithError:(id)error;
- (void)addWatchFaceManager:(id)manager updateStateToAddComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots;
- (void)addWatchFaceManager:(id)manager updateStateToCompletedWithSkippedComplicationSlots:(id)slots canRevisit:(BOOL)revisit;
- (void)addWatchFaceManager:(id)manager updateStateToComplicationsNotAvailableWithSlots:(id)slots unavailableTitle:(id)title unavailableDescription:(id)description;
- (void)addWatchFaceManager:(id)manager updateStateToRevisitComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots;
- (void)addWatchFaceManager:(id)manager updateStateToWelcomeWithCanAddFaceDirectly:(BOOL)directly;
- (void)companionContentViewController:(id)controller handleButtonEvent:(int64_t)event;
- (void)didStartLoadingInAddWatchFaceManager:(id)manager;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldViewController

- (NTKGreenfieldViewController)initWithUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier
{
  urlCopy = url;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NTKGreenfieldViewController;
  v9 = [(NTKGreenfieldViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceURL, url);
    objc_storeStrong(&v10->_sourceApplicationBundleIdentifier, identifier);
  }

  return v10;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = NTKGreenfieldViewController;
  [(NTKGreenfieldViewController *)&v24 viewDidLoad];
  navigationController = [(NTKGreenfieldViewController *)self navigationController];
  [navigationController setModalInPresentation:1];

  v4 = objc_opt_new();
  [v4 configureWithTransparentBackground];
  v5 = [MEMORY[0x277D75210] effectWithStyle:2];
  [v4 setBackgroundEffect:v5];

  navigationController2 = [(NTKGreenfieldViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setStandardAppearance:v4];

  v8 = BPSBackgroundColor();
  view = [(NTKGreenfieldViewController *)self view];
  [view setBackgroundColor:v8];

  v10 = objc_alloc_init(NTKGreenfieldCompanionLoadingViewController);
  loadingViewController = self->_loadingViewController;
  self->_loadingViewController = v10;

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_loadingViewController];
  hiddenNavigationController = self->_hiddenNavigationController;
  self->_hiddenNavigationController = v12;

  [(NTKGreenfieldViewController *)self addChildViewController:self->_hiddenNavigationController];
  view2 = [(NTKGreenfieldViewController *)self view];
  view3 = [(UINavigationController *)self->_hiddenNavigationController view];
  [view2 addSubview:view3];

  [(UINavigationController *)self->_hiddenNavigationController didMoveToParentViewController:self];
  [(UINavigationController *)self->_hiddenNavigationController setNavigationBarHidden:1 animated:0];
  v16 = objc_alloc_init(NTKGreenfieldAddWatchFaceManager);
  [(NTKGreenfieldViewController *)self setAddWatchFaceManager:v16];

  addWatchFaceManager = [(NTKGreenfieldViewController *)self addWatchFaceManager];
  [addWatchFaceManager setDelegate:self];

  [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodeWatchFaceWithURL:self->_faceURL sourceApplicationBundleIdentifier:self->_sourceApplicationBundleIdentifier];
  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  complicationsCounterLabel = self->_complicationsCounterLabel;
  self->_complicationsCounterLabel = v18;

  v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [(UILabel *)self->_complicationsCounterLabel setFont:v20];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)self->_complicationsCounterLabel setTextColor:systemWhiteColor];

  v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_complicationsCounterLabel];
  navigationItem = [(NTKGreenfieldViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v22];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldViewController;
  [(NTKGreenfieldViewController *)&v6 viewDidDisappear:disappear];
  addedFaceID = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager addedFaceID];
  if (addedFaceID)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"NTKGreenfieldAddWatchFaceManagerDidAddFaceNotification" object:addedFaceID];
  }

  [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleDidExitAddWatchFaceFlow];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKGreenfieldViewController;
  [(NTKGreenfieldViewController *)&v5 viewDidLayoutSubviews];
  view = [(UINavigationController *)self->_hiddenNavigationController view];
  view2 = [(NTKGreenfieldViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)_toggleRightCounterLabel:(BOOL)label
{
  if (label)
  {
    viewedNonInstalledAppCount = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager viewedNonInstalledAppCount];
    totalNonInstalledAppCount = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager totalNonInstalledAppCount];
    v7 = MEMORY[0x277CCACA8];
    v8 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_APPS_COUNTER", @"%lu of %lu");
    v9 = [v7 localizedStringWithFormat:v8, viewedNonInstalledAppCount, totalNonInstalledAppCount];

    [(UILabel *)self->_complicationsCounterLabel setText:v9];
    [(UILabel *)self->_complicationsCounterLabel sizeToFit];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__NTKGreenfieldViewController__toggleRightCounterLabel___block_invoke;
  v10[3] = &unk_27877F7E8;
  v10[4] = self;
  labelCopy = label;
  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.0];
}

uint64_t __56__NTKGreenfieldViewController__toggleRightCounterLabel___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1000) setAlpha:v1];
}

- (void)_toggleCancelButton:(BOOL)button
{
  buttonCopy = button;
  navigationItem = [(NTKGreenfieldViewController *)self navigationItem];
  v8 = navigationItem;
  if (buttonCopy)
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (leftBarButtonItem)
    {
      return;
    }

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__didTapCancelButton];
    navigationItem2 = [(NTKGreenfieldViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v8 animated:1];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0 animated:1];
  }
}

- (void)companionContentViewController:(id)controller handleButtonEvent:(int64_t)event
{
  controllerCopy = controller;
  if (event > 2)
  {
    switch(event)
    {
      case 3:
        v7 = controllerCopy;
        [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleRevisitSkippedComplicationsAction];
        break;
      case 4:
        v7 = controllerCopy;
        [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleSkipComplicationAction];
        break;
      case 5:
        v7 = controllerCopy;
        [(NTKGreenfieldViewController *)self dismissViewControllerAnimated:1 completion:0];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (event)
  {
    if (event == 1)
    {
      v7 = controllerCopy;
      [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleContinueAction];
    }

    else
    {
      if (event != 2)
      {
        goto LABEL_15;
      }

      v7 = controllerCopy;
      [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleDoneAction];
    }
  }

  else
  {
    v7 = controllerCopy;
    [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleAddToMyFacesAction];
  }

  controllerCopy = v7;
LABEL_15:
}

- (void)didStartLoadingInAddWatchFaceManager:(id)manager
{
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:0];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  v4 = [(UINavigationController *)self->_hiddenNavigationController popToRootViewControllerAnimated:1];
}

- (void)addWatchFaceManager:(id)manager updateStateToWelcomeWithCanAddFaceDirectly:(BOOL)directly
{
  directlyCopy = directly;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:0];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  addFaceDescription = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager addFaceDescription];
  decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
  v7 = [[NTKGreenfieldCompanionContentViewController alloc] initStartStateWithDecodedRecipe:decodedRecipe canAddFaceDirectly:directlyCopy addFaceDescription:addFaceDescription];
  [v7 setGreenfieldDelegate:self];
  [(UINavigationController *)self->_hiddenNavigationController pushViewController:v7 animated:0];
}

- (void)addWatchFaceManager:(id)manager updateStateToComplicationsNotAvailableWithSlots:(id)slots unavailableTitle:(id)title unavailableDescription:(id)description
{
  descriptionCopy = description;
  titleCopy = title;
  slotsCopy = slots;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:0];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
  v12 = [[NTKGreenfieldCompanionContentViewController alloc] initComplicationNotAvailableStateWithDecodedRecipe:decodedRecipe unavailableSlots:slotsCopy unavailableTitle:titleCopy unavailableDescription:descriptionCopy];

  [v12 setGreenfieldDelegate:self];
  [(UINavigationController *)self->_hiddenNavigationController pushViewController:v12 animated:1];
}

- (void)addWatchFaceManager:(id)manager updateStateToAddComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots
{
  slotsCopy = slots;
  idCopy = id;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:1];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
  v11 = [[NTKGreenfieldCompanionContentViewController alloc] initAddComplicationStateWithDecodedRecipe:decodedRecipe complicationItemId:idCopy installMode:mode skippedComplicationSlots:slotsCopy];

  [v11 setGreenfieldDelegate:self];
  [(UINavigationController *)self->_hiddenNavigationController pushViewController:v11 animated:1];
}

- (void)addWatchFaceManager:(id)manager updateStateToRevisitComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots
{
  v17[2] = *MEMORY[0x277D85DE8];
  slotsCopy = slots;
  idCopy = id;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:1];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
  v12 = [[NTKGreenfieldCompanionContentViewController alloc] initAddComplicationStateWithDecodedRecipe:decodedRecipe complicationItemId:idCopy installMode:mode skippedComplicationSlots:slotsCopy];

  [v12 setGreenfieldDelegate:self];
  topViewController = [(UINavigationController *)self->_hiddenNavigationController topViewController];
  hiddenNavigationController = self->_hiddenNavigationController;
  v17[0] = v12;
  v17[1] = topViewController;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [(UINavigationController *)hiddenNavigationController setViewControllers:v15 animated:0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __131__NTKGreenfieldViewController_addWatchFaceManager_updateStateToRevisitComplicationWithItemId_installMode_skippedComplicationSlots___block_invoke;
  v16[3] = &unk_27877DB10;
  v16[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

- (void)addWatchFaceManager:(id)manager updateStateToCompletedWithSkippedComplicationSlots:(id)slots canRevisit:(BOOL)revisit
{
  revisitCopy = revisit;
  slotsCopy = slots;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:0];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:0];
  decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
  v8 = [[NTKGreenfieldCompanionContentViewController alloc] initCompletedStateWithDecodedRecipe:decodedRecipe skippedComplicationSlots:slotsCopy canRevisit:revisitCopy];

  [v8 setGreenfieldDelegate:self];
  [(UINavigationController *)self->_hiddenNavigationController pushViewController:v8 animated:1];
}

- (void)addWatchFaceManager:(id)manager didFinishAddingFaceWithError:(id)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(NTKGreenfieldViewController *)self _toggleRightCounterLabel:0];
  [(NTKGreenfieldViewController *)self _toggleCancelButton:1];
  if (errorCopy)
  {
    decodedRecipe = [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager decodedRecipe];
    v7 = [[NTKGreenfieldCompanionContentViewController alloc] initWithError:errorCopy decodedRecipe:decodedRecipe];
    [(NTKGreenfieldCompanionContentViewController *)v7 setGreenfieldDelegate:self];
    hiddenNavigationController = self->_hiddenNavigationController;
    v10[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(UINavigationController *)hiddenNavigationController setViewControllers:v9 animated:0];
  }

  else
  {
    [(NTKGreenfieldViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

@end