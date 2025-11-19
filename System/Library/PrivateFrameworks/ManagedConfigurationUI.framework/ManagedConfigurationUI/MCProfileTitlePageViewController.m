@interface MCProfileTitlePageViewController
- (BOOL)questionsControllerIsDisplayedInSheet:(id)a3;
- (MCProfileTitlePageMetaDataSectionAnimationController)animationController;
- (MCProfileTitlePageViewController)initWithViewModel:(id)a3;
- (id)_sectionControllersWithProfile:(id)a3;
- (id)defaultView;
- (void)_resetNavigationBarStyleForViewController:(id)a3;
- (void)_showAlertForInstallError:(id)a3;
- (void)_updateBottomInsetToEnableCompleteScrollAnimation;
- (void)_updateMetaDataSectionHeight;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)dmc_viewControllerHasBeenDismissed;
- (void)infoButtonTapped:(id)a3;
- (void)informQuestionViewControllerOfPreflightResult:(id)a3 profileConnection:(id)a4;
- (void)installButtonTapped:(id)a3;
- (void)installationFinishedSuccessfully:(BOOL)a3 shouldDismiss:(BOOL)a4 shouldRedirect:(BOOL)a5 errorToDisplay:(id)a6;
- (void)loadView;
- (void)presentAuthenticationViewControllerWithContext:(id)a3 authenticationPreparationHandler:(id)a4 authenticationCompletionHandler:(id)a5;
- (void)presentRestoreFailedAlertWithError:(id)a3 completionHandler:(id)a4;
- (void)presentSpinnerViewController;
- (void)promptForManagedRestoreWithManagedAppleID:(id)a3 snapshot:(id)a4 conflictingApps:(id)a5 completionHandler:(id)a6;
- (void)promptForPasscodeWithCompletionHandler:(id)a3;
- (void)promptForUserInput:(id)a3 completionHandler:(id)a4;
- (void)questionsController:(id)a3 didFinishWithResponses:(id)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
- (void)signInViewController:(id)a3 willAuthenticateWithCompletionHandler:(id)a4;
- (void)signInViewControllerDidCancelAuthentication:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCProfileTitlePageViewController

- (MCProfileTitlePageViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MCProfileTitlePageViewController;
  v6 = [(MCProfileTitlePageViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(MCProfileTitlePageViewModel *)v7->_viewModel setDelegate:v7];
    v8 = [v5 profile];
    v9 = [(MCProfileTitlePageViewController *)v7 _sectionControllersWithProfile:v8];
    [(MCSectionBasedTableViewController *)v7 setSectionControllers:v9];
  }

  return v7;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageViewController;
  [(MCSectionBasedTableViewController *)&v9 loadView];
  v3 = [(MCProfileTitlePageViewController *)self view];
  [(MCProfileTitlePageViewController *)self setProfileTitlePageView:v3];

  v4 = [(MCProfileTitlePageViewController *)self navigationController];
  [v4 setNavigationBarHidden:1];

  v5 = [(MCProfileTitlePageViewController *)self navigationController];
  v6 = [v5 view];
  v7 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v8 = [v7 bottomBarView];
  [v6 addSubview:v8];
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
  v3 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v4 = [v3 tableView];
  [v4 reloadData];

  v5 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v6 = [v5 tableView];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  [v15 heightForHeader];
  v17 = v8 - v16;

  v18 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v19 = [v18 tableView];
  [v19 setContentInset:{v17, v10, v12, v14}];

  v20 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v21 = [v20 tableView];
  v22 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v23 = [v22 tableView];
  [v23 contentInset];
  [v21 setContentOffset:0 animated:{0.0, -v24}];

  [(MCProfileTitlePageViewController *)self _updateMetaDataSectionHeight];
  v25 = [(MCProfileTitlePageViewController *)self animationController];
  v26 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  v27 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v28 = [v27 topBarView];
  [v25 startTrackingWithMetaDataSectionController:v26 topBar:v28];

  v29 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v30 = [v29 infoButton];
  [v30 addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];

  v31 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v32 = [v31 installButton];
  [v32 addTarget:self action:sel_installButtonTapped_ forControlEvents:64];

  v33 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v34 = [v33 cancelButton];
  [v34 addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];
}

- (void)dealloc
{
  v3 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v4 = [v3 bottomBarView];
  [v4 removeFromSuperview];

  v5.receiver = self;
  v5.super_class = MCProfileTitlePageViewController;
  [(MCProfileTitlePageViewController *)&v5 dealloc];
}

- (void)dmc_viewControllerHasBeenDismissed
{
  v3 = [(MCProfileTitlePageViewController *)self viewModel];
  [v3 terminateProfileInstallationFlow];

  [(MCProfileTitlePageViewController *)self setUserInteractionEnabled:1];
}

- (id)_sectionControllersWithProfile:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [[MCProfileTitlePageMetaDataSectionController alloc] initWithProfile:v4];
  metaDataSectionController = self->_metaDataSectionController;
  self->_metaDataSectionController = v6;

  v8 = objc_opt_new();
  v9 = [v4 installationWarnings];
  [v8 addObjectsFromArray:v9];

  v10 = [v4 localizedConsentText];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = MCUILocalizedString(@"INSTALL_CONSENT_MESSAGE_FROM_%@");
    v13 = [v4 organization];
    v14 = v13;
    if (v13)
    {
      v15 = [v11 stringWithFormat:v12, v13];
    }

    else
    {
      v16 = [v4 friendlyName];
      v15 = [v11 stringWithFormat:v12, v16];
    }

    v17 = objc_alloc(MEMORY[0x277D262B0]);
    v18 = [v4 localizedConsentText];
    v19 = [v17 initWithLocalizedTitle:v15 localizedBody:v18 isLongForm:1];

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
  v13 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  v3 = [v13 iconCell];
  [v3 bounds];
  Height = CGRectGetHeight(v15);
  v5 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  v6 = [v5 titleCell];
  [v6 bounds];
  v7 = Height + CGRectGetHeight(v16);
  v8 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  v9 = [v8 subtitleCell];
  [v9 bounds];
  v10 = v7 + CGRectGetHeight(v17);
  v11 = [(MCProfileTitlePageViewController *)self metaDataSectionController];
  v12 = [v11 orgCell];
  [v12 bounds];
  [(MCProfileTitlePageViewController *)self setMetaDataSectionHeight:v10 + CGRectGetHeight(v18)];
}

- (void)_resetNavigationBarStyleForViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 navigationController];
  v5 = [v4 navigationBar];
  [v5 setBackgroundImage:0 forBarMetrics:0];

  v7 = [v3 navigationController];

  v6 = [v7 navigationBar];
  [v6 setShadowImage:0];
}

- (void)_updateBottomInsetToEnableCompleteScrollAnimation
{
  if (![(MCProfileTitlePageViewController *)self hasUpdatedBottomInset])
  {
    [(MCProfileTitlePageViewController *)self setHasUpdatedBottomInset:1];
    v3 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    v4 = [v3 tableView];
    [v4 contentSize];
    v6 = v5;

    v7 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    v8 = [v7 tableView];
    [v8 frame];
    v10 = v9;
    v11 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    v12 = [v11 tableView];
    [v12 contentInset];
    v14 = v13;

    v15 = -v14;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    v16 = v10 - v15;
    v17 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
    v18 = [v17 tableView];
    [v18 contentInset];
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
      v23 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
      v24 = [v23 tableView];
      [v24 contentInset];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
      v34 = v30 + fmax(v33 - (v6 - v22), 0.0);
      v36 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
      v35 = [v36 tableView];
      [v35 setContentInset:{v26, v28, v34, v32}];
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

- (void)infoButtonTapped:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D03268]);
  v5 = [(MCProfileTitlePageViewController *)self viewModel];
  v6 = [v5 profileViewModel];
  v10 = [v4 initWithProfileViewModel:v6];

  v7 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  v8 = [v7 bottomBarView];
  [v8 frame];
  [v10 setTableViewBottomInset:CGRectGetHeight(v12)];

  [(MCProfileTitlePageViewController *)self dmc_pushViewController:v10 animated:1];
  v9 = [v10 navigationController];
  [v9 setNavigationBarHidden:0 animated:1];

  [(MCProfileTitlePageViewController *)self _resetNavigationBarStyleForViewController:v10];
}

- (void)installButtonTapped:(id)a3
{
  v3 = [(MCProfileTitlePageViewController *)self viewModel];
  [v3 startProfileInstallationFlow];
}

- (void)cancelButtonTapped:(id)a3
{
  v3 = [(MCProfileTitlePageViewController *)self viewModel];
  [v3 terminateProfileInstallationFlowAndDeleteProfile];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 contentInset];
  v8 = v7;

  v10 = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [v10 updateProgressWithTranslationDistance:1 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 contentInset];
  v8 = v7;

  v10 = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [v10 updateProgressWithTranslationDistance:1 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 contentInset];
  v8 = v7;

  v10 = [(MCProfileTitlePageViewController *)self animationController];
  [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
  [v10 updateProgressWithTranslationDistance:0 referenceDistance:v6 + v8 isScrolling:v9];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v6 = a3;
    [v6 contentOffset];
    v8 = v7;
    [v6 contentInset];
    v10 = v9;

    v12 = [(MCProfileTitlePageViewController *)self animationController];
    [(MCProfileTitlePageViewController *)self metaDataSectionHeight];
    [v12 updateProgressWithTranslationDistance:0 referenceDistance:v8 + v10 isScrolling:v11];
  }
}

- (void)promptForPasscodeWithCompletionHandler:(id)a3
{
  [(MCProfileTitlePageViewController *)self setPasscodeCompletionHandler:a3];
  v7 = objc_opt_new();
  [v7 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v7];
  [v4 setModalInPresentation:1];
  v5 = [(MCProfileTitlePageViewController *)self navigationController];
  [v5 presentViewController:v4 animated:1 completion:0];

  v6 = [v7 navigationController];
  [v6 setNavigationBarHidden:0 animated:0];
}

- (void)promptForUserInput:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(MCProfileTitlePageViewController *)self setUserInputCompletionHandler:a4];
  v9 = [objc_alloc(MEMORY[0x277D03258]) initWithUserInput:v6];

  [v9 setQuestionsDelegate:self];
  [(MCProfileTitlePageViewController *)self dmc_popToViewController:self pushViewController:v9];
  v7 = [v9 navigationController];
  [v7 setNavigationBarHidden:0 animated:1];

  [(MCProfileTitlePageViewController *)self _resetNavigationBarStyleForViewController:v9];
  v8 = [(MCProfileTitlePageViewController *)self profileTitlePageView];
  [v8 showBottomView:0 animated:1];
}

- (void)informQuestionViewControllerOfPreflightResult:(id)a3 profileConnection:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__MCProfileTitlePageViewController_informQuestionViewControllerOfPreflightResult_profileConnection___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
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

- (void)presentAuthenticationViewControllerWithContext:(id)a3 authenticationPreparationHandler:(id)a4 authenticationCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(MCProfileTitlePageViewController *)self setAuthenticationPreparationHandler:a4];
  [(MCProfileTitlePageViewController *)self setAuthenticationCompletionHandler:v9];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __148__MCProfileTitlePageViewController_presentAuthenticationViewControllerWithContext_authenticationPreparationHandler_authenticationCompletionHandler___block_invoke;
  v11[3] = &unk_279861C40;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
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

- (void)promptForManagedRestoreWithManagedAppleID:(id)a3 snapshot:(id)a4 conflictingApps:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(MCProfileTitlePageViewController *)self setRestoreCompletionHandler:a6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__MCProfileTitlePageViewController_promptForManagedRestoreWithManagedAppleID_snapshot_conflictingApps_completionHandler___block_invoke;
  v16[3] = &unk_279861C68;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
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
  v4 = [(MCActivityViewController *)v3 view];
  [v4 setUserInteractionEnabled:0];

  v5 = MCUILocalizedString(@"BLOB_SIGN_IN_ACCOUNT");
  [(MCActivityViewController *)v3 setInProgresText:v5];

  v6 = MCUILocalizedString(@"ENROLLMENT_SUCCESSFUL");
  [(MCActivityViewController *)v3 setCompletionText:v6];

  v7 = MCUILocalizedString(@"SIGN_IN_DURATION_WARNING");
  [(MCActivityViewController *)v3 setLongWaitingWarningText:v7];

  [(MCActivityViewController *)v3 setLongWaitingWarningThreshold:20.0];
  [(MCProfileTitlePageViewController *)self dmc_popToViewController:self pushViewController:v3];
  v8 = [(MCActivityViewController *)v3 navigationController];
  [v8 setNavigationBarHidden:1 animated:1];

  activityViewController = self->_activityViewController;
  self->_activityViewController = v3;
}

- (void)installationFinishedSuccessfully:(BOOL)a3 shouldDismiss:(BOOL)a4 shouldRedirect:(BOOL)a5 errorToDisplay:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v11 = [(MCProfileTitlePageViewController *)self navigationController];
  v12 = [v11 topViewController];
  v13 = [v12 isEqual:self->_activityViewController];

  if (!v8)
  {
LABEL_10:
    v18 = 0;
    if (v10)
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
    v15 = [(MCProfileTitlePageViewController *)self navigationController];
    v16 = [v15 topViewController];
    v17 = [v16 isEqual:self->_activityViewController];

    if (!v17)
    {
      goto LABEL_10;
    }

    activityViewController = self->_activityViewController;
  }

  [(MCActivityViewController *)activityViewController completeActivityAnimated:1];
  v18 = 1200000047;
  if (v10)
  {
LABEL_11:
    v20 = dispatch_time(0, 1000000000);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke_2;
    v21[3] = &unk_279861C40;
    v21[4] = self;
    v22 = v10;
    dispatch_after(v20, MEMORY[0x277D85CD0], v21);

    goto LABEL_12;
  }

LABEL_8:
  if (v7)
  {
    v19 = dispatch_time(0, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__MCProfileTitlePageViewController_installationFinishedSuccessfully_shouldDismiss_shouldRedirect_errorToDisplay___block_invoke;
    block[3] = &unk_279861C18;
    block[4] = self;
    v24 = a5;
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

- (void)_showAlertForInstallError:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = [v5 localizedDescription];
  v7 = [v5 localizedRecoverySuggestion];

  v9 = [v4 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = MCUILocalizedString(@"OK");
  [v9 MCUIAddCancelActionWithTitle:v8];

  [(MCProfileTitlePageViewController *)self dmc_presentAlert:v9 completion:0];
}

- (void)presentRestoreFailedAlertWithError:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__MCProfileTitlePageViewController_presentRestoreFailedAlertWithError_completionHandler___block_invoke;
  block[3] = &unk_279861BD0;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
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

- (void)questionsController:(id)a3 didFinishWithResponses:(id)a4
{
  v5 = a4;
  v6 = [(MCProfileTitlePageViewController *)self userInputCompletionHandler];
  v6[2](v6, v5, [v5 count] == 0);
}

- (BOOL)questionsControllerIsDisplayedInSheet:(id)a3
{
  v3 = [(MCProfileTitlePageViewController *)self presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MCProfileTitlePageViewController *)self authenticationCompletionHandler];
  v9[2](v9, v8, v7, 0);
}

- (void)signInViewControllerDidCancelAuthentication:(id)a3
{
  v3 = [(MCProfileTitlePageViewController *)self authenticationCompletionHandler];
  (*(v3 + 2))(v3, 0, 0, 1);
}

- (void)signInViewController:(id)a3 willAuthenticateWithCompletionHandler:(id)a4
{
  v7 = a4;
  v5 = [(MCProfileTitlePageViewController *)self authenticationPreparationHandler];

  if (v5)
  {
    v6 = [(MCProfileTitlePageViewController *)self authenticationPreparationHandler];
    (v6)[2](v6, v7);
  }

  else
  {
    v7[2]();
  }
}

@end