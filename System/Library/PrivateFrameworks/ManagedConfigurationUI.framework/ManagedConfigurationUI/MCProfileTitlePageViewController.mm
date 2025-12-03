@interface MCProfileTitlePageViewController
- (BOOL)questionsControllerIsDisplayedInSheet:(id)sheet;
- (MCProfileTitlePageMetaDataSectionAnimationController)animationController;
- (MCProfileTitlePageViewController)initWithViewModel:(id)model;
- (id)_sectionControllersWithProfile:(id)profile;
- (id)defaultView;
- (void)_resetNavigationBarStyleForViewController:(id)controller;
- (void)_showAlertForInstallError:(id)error;
- (void)_updateBottomInsetToEnableCompleteScrollAnimation;
- (void)_updateMetaDataSectionHeight;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)dmc_viewControllerHasBeenDismissed;
- (void)infoButtonTapped:(id)tapped;
- (void)informQuestionViewControllerOfPreflightResult:(id)result profileConnection:(id)connection;
- (void)installButtonTapped:(id)tapped;
- (void)installationFinishedSuccessfully:(BOOL)successfully shouldDismiss:(BOOL)dismiss shouldRedirect:(BOOL)redirect errorToDisplay:(id)display;
- (void)loadView;
- (void)presentAuthenticationViewControllerWithContext:(id)context authenticationPreparationHandler:(id)handler authenticationCompletionHandler:(id)completionHandler;
- (void)presentRestoreFailedAlertWithError:(id)error completionHandler:(id)handler;
- (void)presentSpinnerViewController;
- (void)promptForManagedRestoreWithManagedAppleID:(id)d snapshot:(id)snapshot conflictingApps:(id)apps completionHandler:(id)handler;
- (void)promptForPasscodeWithCompletionHandler:(id)handler;
- (void)promptForUserInput:(id)input completionHandler:(id)handler;
- (void)questionsController:(id)controller didFinishWithResponses:(id)responses;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)signInViewController:(id)controller willAuthenticateWithCompletionHandler:(id)handler;
- (void)signInViewControllerDidCancelAuthentication:(id)authentication;
- (void)viewDidLoad;
@end

@implementation MCProfileTitlePageViewController

- (MCProfileTitlePageViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = MCProfileTitlePageViewController;
  v6 = [(MCProfileTitlePageViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(MCProfileTitlePageViewModel *)v7->_viewModel setDelegate:v7];
    profile = [modelCopy profile];
    v9 = [(MCProfileTitlePageViewController *)v7 _sectionControllersWithProfile:profile];
    [(MCSectionBasedTableViewController *)v7 setSectionControllers:v9];
  }

  return v7;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageViewController;
  [(MCSectionBasedTableViewController *)&v9 loadView];
  view = [(MCProfileTitlePageViewController *)self view];
  [(MCProfileTitlePageViewController *)self setProfileTitlePageView:view];

  navigationController = [(MCProfileTitlePageViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  navigationController2 = [(MCProfileTitlePageViewController *)self navigationController];
  view2 = [navigationController2 view];
  profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  bottomBarView = [profileTitlePageView bottomBarView];
  [view2 addSubview:bottomBarView];
}

- (id)defaultView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = MCProfileTitlePageViewController;
  [(MCSectionBasedTableViewController *)&v35 viewDidLoad];
  profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  tableView = [profileTitlePageView tableView];
  [tableView reloadData];

  profileTitlePageView2 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  tableView2 = [profileTitlePageView2 tableView];
  [tableView2 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  metaDataSectionController = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  [metaDataSectionController heightForHeader];
  v17 = v8 - v16;

  profileTitlePageView3 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  tableView3 = [profileTitlePageView3 tableView];
  [tableView3 setContentInset:{v17, v10, v12, v14}];

  profileTitlePageView4 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  tableView4 = [profileTitlePageView4 tableView];
  profileTitlePageView5 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  tableView5 = [profileTitlePageView5 tableView];
  [tableView5 contentInset];
  [tableView4 setContentOffset:0 animated:{0.0, -v24}];

  [(MCProfileTitlePageViewController *)self _updateMetaDataSectionHeight];
  animationController = [(MCProfileTitlePageViewController *)self animationController];
  metaDataSectionController2 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  profileTitlePageView6 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  topBarView = [profileTitlePageView6 topBarView];
  [animationController startTrackingWithMetaDataSectionController:metaDataSectionController2 topBar:topBarView];

  profileTitlePageView7 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  infoButton = [profileTitlePageView7 infoButton];
  [infoButton addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];

  profileTitlePageView8 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  installButton = [profileTitlePageView8 installButton];
  [installButton addTarget:self action:sel_installButtonTapped_ forControlEvents:64];

  profileTitlePageView9 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  cancelButton = [profileTitlePageView9 cancelButton];
  [cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];
}

- (void)dealloc
{
  profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  bottomBarView = [profileTitlePageView bottomBarView];
  [bottomBarView removeFromSuperview];

  v5.receiver = self;
  v5.super_class = MCProfileTitlePageViewController;
  [(MCProfileTitlePageViewController *)&v5 dealloc];
}

- (void)dmc_viewControllerHasBeenDismissed
{
  viewModel = [(MCProfileTitlePageViewController *)self viewModel];
  [viewModel terminateProfileInstallationFlow];

  [(MCProfileTitlePageViewController *)self setUserInteractionEnabled:1];
}

- (id)_sectionControllersWithProfile:(id)profile
{
  v34 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_opt_new();
  v6 = [[MCProfileTitlePageMetaDataSectionController alloc] initWithProfile:profileCopy];
  metaDataSectionController = self->_metaDataSectionController;
  self->_metaDataSectionController = v6;

  v8 = objc_opt_new();
  installationWarnings = [profileCopy installationWarnings];
  [v8 addObjectsFromArray:installationWarnings];

  localizedConsentText = [profileCopy localizedConsentText];

  if (localizedConsentText)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = MCUILocalizedString(@"INSTALL_CONSENT_MESSAGE_FROM_%@");
    organization = [profileCopy organization];
    v14 = organization;
    if (organization)
    {
      v15 = [v11 stringWithFormat:v12, organization];
    }

    else
    {
      friendlyName = [profileCopy friendlyName];
      v15 = [v11 stringWithFormat:v12, friendlyName];
    }

    v17 = objc_alloc(MEMORY[0x277D262B0]);
    localizedConsentText2 = [profileCopy localizedConsentText];
    v19 = [v17 initWithLocalizedTitle:v15 localizedBody:localizedConsentText2 isLongForm:1];

    [v8 addObject:v19];
  }

  [v5 addObject:self->_metaDataSectionController];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [[MCProfileTitlePageWarningSectionController alloc] initWithWarning:*(*(&v29 + 1) + 8 * i)];
        [v5 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }

  v26 = [v5 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)_updateMetaDataSectionHeight
{
  metaDataSectionController = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  iconCell = [metaDataSectionController iconCell];
  [iconCell bounds];
  Height = CGRectGetHeight(v15);
  metaDataSectionController2 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  titleCell = [metaDataSectionController2 titleCell];
  [titleCell bounds];
  v7 = Height + CGRectGetHeight(v16);
  metaDataSectionController3 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  subtitleCell = [metaDataSectionController3 subtitleCell];
  [subtitleCell bounds];
  v10 = v7 + CGRectGetHeight(v17);
  metaDataSectionController4 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  orgCell = [metaDataSectionController4 orgCell];
  [orgCell bounds];
  [(MCProfileTitlePageViewController *)self setMetaDataSectionHeight:v10 + CGRectGetHeight(v18)];
}

- (void)_resetNavigationBarStyleForViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [controllerCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundImage:0 forBarMetrics:0];

  navigationController2 = [controllerCopy navigationController];

  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setShadowImage:0];
}

- (void)_updateBottomInsetToEnableCompleteScrollAnimation
{
  if (![(MCProfileTitlePageViewController *)self hasUpdatedBottomInset])
  {
    [(MCProfileTitlePageViewController *)self setHasUpdatedBottomInset:1];
    profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    tableView = [profileTitlePageView tableView];
    [tableView contentSize];
    v6 = v5;

    profileTitlePageView2 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    tableView2 = [profileTitlePageView2 tableView];
    [tableView2 frame];
    v10 = v9;
    profileTitlePageView3 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    tableView3 = [profileTitlePageView3 tableView];
    [tableView3 contentInset];
    v14 = v13;

    v15 = -v14;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    v16 = v10 - v15;
    profileTitlePageView4 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    tableView4 = [profileTitlePageView4 tableView];
    [tableView4 contentInset];
    v20 = v19;

    v21 = -v20;
    if (v20 >= 0.0)
    {
      v21 = v20;
    }

    v22 = v16 - v21;

    NSLog(&cfstr_ContentsizeFVi.isa, *&v6, *&v22);
    if (v6 > v22)
    {
      profileTitlePageView5 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
      tableView5 = [profileTitlePageView5 tableView];
      [tableView5 contentInset];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
      v34 = v30 + fmax(v33 - (v6 - v22), 0.0);
      profileTitlePageView6 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
      tableView6 = [profileTitlePageView6 tableView];
      [tableView6 setContentInset:{v26, v28, v34, v32}];
    }
  }
}

- (MCProfileTitlePageMetaDataSectionAnimationController)animationController
{
  animationController = self->_animationController;
  if (!animationController)
  {
    v4 = objc_opt_new();
    v5 = self->_animationController;
    self->_animationController = v4;

    animationController = self->_animationController;
  }

  return animationController;
}

- (void)infoButtonTapped:(id)tapped
{
  v4 = objc_alloc(MEMORY[0x277D03268]);
  viewModel = [(MCProfileTitlePageViewController *)self viewModel];
  profileViewModel = [viewModel profileViewModel];
  v10 = [v4 initWithProfileViewModel:profileViewModel];

  profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  bottomBarView = [profileTitlePageView bottomBarView];
  [bottomBarView frame];
  [v10 setTableViewBottomInset:CGRectGetHeight(v12)];

  [(MCProfileTitlePageViewController *)self dmc_pushViewController:v10 animated:1];
  navigationController = [v10 navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  [(MCProfileTitlePageViewController *)self _resetNavigationBarStyleForViewController:v10];
}

- (void)installButtonTapped:(id)tapped
{
  viewModel = [(MCProfileTitlePageViewController *)self viewModel];
  [viewModel startProfileInstallationFlow];
}

- (void)cancelButtonTapped:(id)tapped
{
  viewModel = [(MCProfileTitlePageViewController *)self viewModel];
  [viewModel terminateProfileInstallationFlowAndDeleteProfile];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  v6 = v5;
  [draggingCopy contentInset];
  v8 = v7;

  animationController = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [animationController updateProgressWithTranslationDistance:1 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy contentInset];
  v8 = v7;

  animationController = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [animationController updateProgressWithTranslationDistance:1 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [deceleratingCopy contentOffset];
  v6 = v5;
  [deceleratingCopy contentInset];
  v8 = v7;

  animationController = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [animationController updateProgressWithTranslationDistance:0 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    draggingCopy = dragging;
    [draggingCopy contentOffset];
    v8 = v7;
    [draggingCopy contentInset];
    v10 = v9;

    animationController = [(MCProfileTitlePageViewController *)self animationController];
    [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
    [animationController updateProgressWithTranslationDistance:0 referenceDistance:v8 + v10 isScrolling:v11];
  }
}

- (void)promptForPasscodeWithCompletionHandler:(id)handler
{
  [(MCProfileTitlePageViewController *)self setPasscodeCompletionHandler:handler];
  v7 = objc_opt_new();
  [v7 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v7];
  [v4 setModalInPresentation:1];
  navigationController = [(MCProfileTitlePageViewController *)self navigationController];
  [navigationController presentViewController:v4 animated:1 completion:0];

  navigationController2 = [v7 navigationController];
  [navigationController2 setNavigationBarHidden:0 animated:0];
}

- (void)promptForUserInput:(id)input completionHandler:(id)handler
{
  inputCopy = input;
  [(MCProfileTitlePageViewController *)self setUserInputCompletionHandler:handler];
  v9 = [objc_alloc(MEMORY[0x277D03258]) initWithUserInput:inputCopy];

  [v9 setQuestionsDelegate:self];
  [(MCProfileTitlePageViewController *)self dmc_popToViewController:self pushViewController:v9];
  navigationController = [v9 navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  [(MCProfileTitlePageViewController *)self _resetNavigationBarStyleForViewController:v9];
  profileTitlePageView = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  [profileTitlePageView showBottomView:0 animated:1];
}

- (void)informQuestionViewControllerOfPreflightResult:(id)result profileConnection:(id)connection
{
  resultCopy = result;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__MCProfileTitlePageViewController_informQuestionViewControllerOfPreflightResult_profileConnection___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __100__MCProfileTitlePageViewController_informQuestionViewControllerOfPreflightResult_profileConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained questionsController];
    [v3 profileConnectionDidFinishPreflightWithError:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)presentAuthenticationViewControllerWithContext:(id)context authenticationPreparationHandler:(id)handler authenticationCompletionHandler:(id)completionHandler
{
  contextCopy = context;
  completionHandlerCopy = completionHandler;
  [(MCProfileTitlePageViewController *)self setAuthenticationPreparationHandler:handler];
  [(MCProfileTitlePageViewController *)self setAuthenticationCompletionHandler:completionHandlerCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __148__MCProfileTitlePageViewController_presentAuthenticationViewControllerWithContext_authenticationPreparationHandler_authenticationCompletionHandler___block_invoke;
  v11[3] = &unk_279861C40;
  v11[4] = self;
  v12 = contextCopy;
  v10 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __148__MCProfileTitlePageViewController_presentAuthenticationViewControllerWithContext_authenticationPreparationHandler_authenticationCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = objc_alloc_init(MCUISignInViewController);
  [(MCUISignInViewController *)v7 setDelegate:*(a1 + 32)];
  [(MCUISignInViewController *)v7 setContext:*(a1 + 40)];
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 profile];
  v4 = [v3 organization];
  [(MCUISignInViewController *)v7 setOrgName:v4];

  [*(a1 + 32) dmc_popToViewController:*(a1 + 32) pushViewController:v7];
  v5 = [(MCUISignInViewController *)v7 navigationController];
  [v5 setNavigationBarHidden:0 animated:1];

  v6 = [*(a1 + 32) profileTitlePageView];
  [v6 showBottomView:0 animated:1];
}

- (void)promptForManagedRestoreWithManagedAppleID:(id)d snapshot:(id)snapshot conflictingApps:(id)apps completionHandler:(id)handler
{
  dCopy = d;
  snapshotCopy = snapshot;
  appsCopy = apps;
  [(MCProfileTitlePageViewController *)self setRestoreCompletionHandler:handler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__MCProfileTitlePageViewController_promptForManagedRestoreWithManagedAppleID_snapshot_conflictingApps_completionHandler___block_invoke;
  v16[3] = &unk_279861C68;
  v16[4] = self;
  v17 = dCopy;
  v18 = snapshotCopy;
  v19 = appsCopy;
  v13 = appsCopy;
  v14 = snapshotCopy;
  v15 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

void __121__MCProfileTitlePageViewController_promptForManagedRestoreWithManagedAppleID_snapshot_conflictingApps_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x277D03240]) initWithDelegate:*(a1 + 32) managedAppleID:*(a1 + 40) restoreSnapshot:*(a1 + 48) conflictingApps:*(a1 + 56)];
  [*(a1 + 32) dmc_popToViewController:*(a1 + 32) pushViewController:v3];
  v2 = [v3 navigationController];
  [v2 setNavigationBarHidden:0 animated:1];
}

- (void)presentSpinnerViewController
{
  v3 = objc_opt_new();
  view = [(MCActivityViewController *)v3 view];
  [view setUserInteractionEnabled:0];

  v5 = MCUILocalizedString(@"BLOB_SIGN_IN_ACCOUNT");
  [(MCActivityViewController *)v3 setInProgresText:v5];

  v6 = MCUILocalizedString(@"ENROLLMENT_SUCCESSFUL");
  [(MCActivityViewController *)v3 setCompletionText:v6];

  v7 = MCUILocalizedString(@"SIGN_IN_DURATION_WARNING");
  [(MCActivityViewController *)v3 setLongWaitingWarningText:v7];

  [(MCActivityViewController *)v3 setLongWaitingWarningThreshold:20.0];
  [(MCProfileTitlePageViewController *)self dmc_popToViewController:self pushViewController:v3];
  navigationController = [(MCActivityViewController *)v3 navigationController];
  [navigationController setNavigationBarHidden:1 animated:1];

  activityViewController = self->_activityViewController;
  self->_activityViewController = v3;
}

- (void)installationFinishedSuccessfully:(BOOL)successfully shouldDismiss:(BOOL)dismiss shouldRedirect:(BOOL)redirect errorToDisplay:(id)display
{
  dismissCopy = dismiss;
  successfullyCopy = successfully;
  displayCopy = display;
  navigationController = [(MCProfileTitlePageViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  v13 = [topViewController isEqual:self->_activityViewController];

  if (!successfullyCopy)
  {
LABEL_10:
    v18 = 0;
    if (displayCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  activityViewController = self->_activityViewController;
  if (activityViewController)
  {
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(MCProfileTitlePageViewController *)self presentSpinnerViewController];
    navigationController2 = [(MCProfileTitlePageViewController *)self navigationController];
    topViewController2 = [navigationController2 topViewController];
    v17 = [topViewController2 isEqual:self->_activityViewController];

    if (!v17)
    {
      goto LABEL_10;
    }

    activityViewController = self->_activityViewController;
  }

  [(MCActivityViewController *)activityViewController completeActivityAnimated:1];
  v18 = 1200000047;
  if (displayCopy)
  {
LABEL_11:
    v20 = dispatch_time(0, 1000000000);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke_2;
    v21[3] = &unk_279861C40;
    v21[4] = self;
    v22 = displayCopy;
    dispatch_after(v20, MEMORY[0x277D85CD0], v21);

    goto LABEL_12;
  }

LABEL_8:
  if (dismissCopy)
  {
    v19 = dispatch_time(0, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke;
    block[3] = &unk_279861C18;
    block[4] = self;
    redirectCopy = redirect;
    dispatch_after(v19, MEMORY[0x277D85CD0], block);
  }

LABEL_12:
}

void __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  if (*(a1 + 40) == 1)
  {
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D24D60]];
    [v4 openSensitiveURL:v3 withOptions:0];
  }
}

uint64_t __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) dmc_popToViewController:*(a1 + 32) animated:1];
  NSLog(&cfstr_SignInFailedEr.isa, *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _showAlertForInstallError:v3];
}

- (void)_showAlertForInstallError:(id)error
{
  v4 = MEMORY[0x277D75110];
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];

  v9 = [v4 alertControllerWithTitle:localizedDescription message:localizedRecoverySuggestion preferredStyle:1];

  v8 = MCUILocalizedString(@"OK");
  [v9 MCUIAddCancelActionWithTitle:v8];

  [(MCProfileTitlePageViewController *)self dmc_presentAlert:v9 completion:0];
}

- (void)presentRestoreFailedAlertWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__MCProfileTitlePageViewController_presentRestoreFailedAlertWithError_completionHandler___block_invoke;
  block[3] = &unk_279861BD0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __89__MCProfileTitlePageViewController_presentRestoreFailedAlertWithError_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D75110];
    v4 = MCUILocalizedString(@"RESTORE_FAILED");
    v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:1];

    v6 = MEMORY[0x277D750F8];
    v7 = MCUILocalizedString(@"OK");
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __89__MCProfileTitlePageViewController_presentRestoreFailedAlertWithError_completionHandler___block_invoke_2;
    v9[3] = &unk_279861C90;
    v10 = *(a1 + 32);
    v8 = [v6 actionWithTitle:v7 style:0 handler:v9];
    [v5 addAction:v8];

    [WeakRetained dmc_presentAlert:v5 completion:0];
  }
}

uint64_t __89__MCProfileTitlePageViewController_presentRestoreFailedAlertWithError_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__MCProfileTitlePageViewController__didFinishPINEntrySuccess_pin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)questionsController:(id)controller didFinishWithResponses:(id)responses
{
  responsesCopy = responses;
  userInputCompletionHandler = [(MCProfileTitlePageViewController *)self userInputCompletionHandler];
  userInputCompletionHandler[2](userInputCompletionHandler, responsesCopy, [responsesCopy count] == 0);
}

- (BOOL)questionsControllerIsDisplayedInSheet:(id)sheet
{
  presentingViewController = [(MCProfileTitlePageViewController *)self presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  errorCopy = error;
  resultsCopy = results;
  authenticationCompletionHandler = [(MCProfileTitlePageViewController *)self authenticationCompletionHandler];
  authenticationCompletionHandler[2](authenticationCompletionHandler, resultsCopy, errorCopy, 0);
}

- (void)signInViewControllerDidCancelAuthentication:(id)authentication
{
  authenticationCompletionHandler = [(MCProfileTitlePageViewController *)self authenticationCompletionHandler];
  (*(authenticationCompletionHandler + 2))(authenticationCompletionHandler, 0, 0, 1);
}

- (void)signInViewController:(id)controller willAuthenticateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  authenticationPreparationHandler = [(MCProfileTitlePageViewController *)self authenticationPreparationHandler];

  if (authenticationPreparationHandler)
  {
    authenticationPreparationHandler2 = [(MCProfileTitlePageViewController *)self authenticationPreparationHandler];
    (authenticationPreparationHandler2)[2](authenticationPreparationHandler2, handlerCopy);
  }

  else
  {
    handlerCopy[2]();
  }
}

@end