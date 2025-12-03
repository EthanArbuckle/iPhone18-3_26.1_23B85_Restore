@interface MCInstallProfileViewController
- (BOOL)_attemptRemoteInstallAfterCompletingPrecheck;
- (BOOL)_installErrorIsUserCancelledError:(id)error;
- (BOOL)displayedAsSheet;
- (MCInstallProfileDelegate)delegate;
- (MCInstallProfileViewController)initWithInstallableProfileData:(id)data fromSource:(unint64_t)source;
- (MCInstallProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode;
- (MCInstallProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode profileUIDataProvider:(id)provider;
- (id)_localizedCPLFinalWarningString;
- (id)_newRightBarButtonItem;
- (void)_beginInstallFlow;
- (void)_cancelInstallDueToApplicationExit;
- (void)_didFinishEnteringPINWithCompletion:(id)completion;
- (void)_didFinishPresentingConsent:(id)consent;
- (void)_finishWaitingForMoreQuestions;
- (void)_handleInstallationError:(id)error;
- (void)_hideProgressIndicatorIfNeeded;
- (void)_installFinishedWithIdentifier:(id)identifier error:(id)error;
- (void)_presentConsent:(id)consent;
- (void)_promptUserWithQuestions:(id)questions;
- (void)_promptUserWithQuestionsAfterDelay:(id)delay;
- (void)_removeProfileWithIdentifier:(id)identifier isProtectedProfile:(BOOL)profile completionHandler:(id)handler;
- (void)_resetInstallationVariables;
- (void)_returnToSender;
- (void)_showCPLFinalInstallationWarning:(id)warning withMDMWarning:(BOOL)mWarning;
- (void)_signInMAID:(id)d completionHandler:(id)handler;
- (void)_takeMeBack;
- (void)_waitForNextQuestion;
- (void)addCancelActionToAlert:(id)alert withCompletion:(id)completion;
- (void)addInstallActionWithTitle:(id)title style:(int64_t)style toAlert:(id)alert completion:(id)completion;
- (void)cancelInstallWhilePresentingConsentAndWarningsUponDidAppear;
- (void)consentExtensionShowConsentAndWarnings:(id)warnings;
- (void)continueInstallFlowAfterCompletingPrecheck;
- (void)continueInstallFlowAfterPINVerification;
- (void)dealloc;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)installationConsentViewController:(id)controller finishedWithUserContinueResponse:(BOOL)response;
- (void)installationWarningViewController:(id)controller finishedWithUserContinueResponse:(BOOL)response;
- (void)performRemoveAfterFinalVerification;
- (void)pinExtensionShowPINSheet;
- (void)profileConnection:(id)connection didBeginInstallingNextProfile:(id)profile;
- (void)profileConnection:(id)connection didFinishInstallationWithIdentifier:(id)identifier error:(id)error;
- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error;
- (void)profileConnection:(id)connection didRequestMAIDSignIn:(id)in personaID:(id)d;
- (void)profileConnection:(id)connection didRequestUserInput:(id)input;
- (void)profileConnection:(id)connection didShowUserWarnings:(id)warnings;
- (void)profileConnection:(id)connection didUpdateStatus:(id)status;
- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode;
- (void)profileRemovalDidFinish;
- (void)questionsController:(id)controller didFinishWithResponses:(id)responses;
- (void)questionsExtensionDidFinishPreflightWithError:(id)error;
- (void)questionsExtensionDidRequestAnswersForQuestions:(id)questions;
- (void)questionsExtensionInstallFinished;
- (void)queueNextProfileData:(id)data;
- (void)setCurrentQuestionsController:(id)controller;
- (void)setProfile:(id)profile;
- (void)setProfileData:(id)data;
- (void)showFinalInstallationAlert:(id)alert;
- (void)showMDMFinalInstallationAlert:(id)alert;
- (void)showProgressIndicator;
- (void)showReEnrollFailureAlert;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)submitQuestionAnswers:(id)answers;
- (void)updateTitleForProfileInstallationState:(int)state;
- (void)warningsExtensionPushWarningsControllerWithWarnings:(id)warnings;
@end

@implementation MCInstallProfileViewController

- (MCInstallProfileViewController)initWithInstallableProfileData:(id)data fromSource:(unint64_t)source
{
  dataCopy = data;
  v8 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:0];
  v9 = [(MCInstallProfileViewController *)self initWithProfile:v8 viewMode:1];
  v10 = v9;
  if (v9)
  {
    [(MCInstallProfileViewController *)v9 setInstallState:1 animated:1];
    objc_storeStrong(&v10->_profileData, data);
    [(MCInstallProfileViewController *)v10 setOriginalProfileData:dataCopy];
    profileViewController = [(MCInstallProfileViewController *)v10 profileViewController];
    [profileViewController setInstallProfileSource:source];

    if (source)
    {
      defaultCenter = MCUILocalizedString(@"BLOB_INSTALL_TITLE");
      navigationItem = [(MCInstallProfileViewController *)v10 navigationItem];
      [navigationItem setTitle:defaultCenter];
    }

    else
    {
      friendlyName = [v8 friendlyName];
      navigationItem2 = [(MCInstallProfileViewController *)v10 navigationItem];
      [navigationItem2 setTitle:friendlyName];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    }

    navigationItem3 = [(MCInstallProfileViewController *)v10 navigationItem];
    DMCSendNavUIUpdatedNotification();
  }

  return v10;
}

- (MCInstallProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode
{
  profileCopy = profile;
  v7 = objc_opt_new();
  v8 = [(MCInstallProfileViewController *)self initWithProfile:profileCopy viewMode:mode profileUIDataProvider:v7];

  return v8;
}

- (MCInstallProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode profileUIDataProvider:(id)provider
{
  profileCopy = profile;
  providerCopy = provider;
  v32.receiver = self;
  v32.super_class = MCInstallProfileViewController;
  v11 = [(MCUIViewController *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_profile, profile);
    [(MCInstallProfileViewController *)v12 setOriginalProfile:profileCopy];
    v13 = [objc_alloc(MEMORY[0x277D03280]) initWithProfile:profileCopy viewMode:mode profileUIDataProvider:providerCopy];
    [(MCInstallProfileViewController *)v12 setProfileViewController:v13];

    profileViewController = [(MCInstallProfileViewController *)v12 profileViewController];
    [(MCInstallProfileViewController *)v12 addChildViewController:profileViewController];

    view = [(MCInstallProfileViewController *)v12 view];
    [view frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    profileViewController2 = [(MCInstallProfileViewController *)v12 profileViewController];
    view2 = [profileViewController2 view];
    [view2 setFrame:{v17, v19, v21, v23}];

    view3 = [(MCInstallProfileViewController *)v12 view];
    profileViewController3 = [(MCInstallProfileViewController *)v12 profileViewController];
    view4 = [profileViewController3 view];
    [view3 addSubview:view4];

    profileViewController4 = [(MCInstallProfileViewController *)v12 profileViewController];
    [profileViewController4 didMoveToParentViewController:v12];

    profileViewController5 = [(MCInstallProfileViewController *)v12 profileViewController];
    [profileViewController5 setProfileViewControllerDelegate:v12];
  }

  return v12;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  [(MCInstallProfileViewController *)self setIsDeallocating:1];
  [(MCInstallProfileViewController *)self _cancelInstallDueToApplicationExit];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(MCInstallProfileViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 willMoveToParentViewController:0];
        view = [v8 view];
        [view removeFromSuperview];

        [v8 removeFromParentViewController];
      }

      v5 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = MCInstallProfileViewController;
  [(MCUIViewController *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)displayedAsSheet
{
  presentingViewController = [(MCInstallProfileViewController *)self presentingViewController];
  v3 = presentingViewController != 0;

  return v3;
}

- (void)_returnToSender
{
  if ([(MCInstallProfileViewController *)self installHasFailed])
  {
    userCancelledInstall = [(MCInstallProfileViewController *)self userCancelledInstall];
  }

  else
  {
    userCancelledInstall = 1;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__MCInstallProfileViewController__returnToSender__block_invoke;
  v4[3] = &unk_2798619C8;
  v4[4] = self;
  [(UIViewController *)self MCUIReturnToSender:userCancelledInstall returnToAccountSettings:0 viewControllerDismissalBlock:v4];
}

void __49__MCInstallProfileViewController__returnToSender__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:a2 completion:0];
}

- (void)_takeMeBack
{
  profileViewController = [(MCInstallProfileViewController *)self profileViewController];
  installProfileSource = [profileViewController installProfileSource];

  if ((installProfileSource - 1) >= 2)
  {
    if (!installProfileSource)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      popProfileDataFromHeadOfInstallationQueue = [mEMORY[0x277D262A0] popProfileDataFromHeadOfInstallationQueue];

      if (popProfileDataFromHeadOfInstallationQueue)
      {
        [(MCInstallProfileViewController *)self queueNextProfileData:popProfileDataFromHeadOfInstallationQueue];
      }

      else
      {
        [(MCInstallProfileViewController *)self _returnToSender];
      }
    }
  }

  else
  {

    [(MCInstallProfileViewController *)self _returnToSender];
  }
}

- (void)queueNextProfileData:(id)data
{
  dataCopy = data;
  profile = [(MCInstallProfileViewController *)self profile];
  [(MCInstallProfileViewController *)self setOriginalProfile:profile];

  profileData = [(MCInstallProfileViewController *)self profileData];
  [(MCInstallProfileViewController *)self setOriginalProfileData:profileData];

  [(MCInstallProfileViewController *)self setProfileData:dataCopy];

  [(MCInstallProfileViewController *)self setInstallState:1 animated:1];
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  profile = [(MCInstallProfileViewController *)self profile];

  if (profile != profileCopy)
  {
    objc_storeStrong(&self->_profile, profile);
    profileData = self->_profileData;
    self->_profileData = 0;

    profileViewController = [(MCInstallProfileViewController *)self profileViewController];
    [profileViewController setProfile:profileCopy];
  }
}

- (void)setProfileData:(id)data
{
  dataCopy = data;
  profileData = [(MCInstallProfileViewController *)self profileData];

  if (profileData != dataCopy)
  {
    objc_storeStrong(&self->_profileData, data);
    v6 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:0];
    profile = self->_profile;
    self->_profile = v6;

    v8 = self->_profile;
    profileViewController = [(MCInstallProfileViewController *)self profileViewController];
    [profileViewController setProfile:v8];
  }
}

- (void)_resetInstallationVariables
{
  [(MCInstallProfileViewController *)self setProcessingPayload:0];
  [(MCInstallProfileViewController *)self setUserCancelledInstall:0];
  [(MCInstallProfileViewController *)self setQuestionsAlreadyAsked:0];
  [(MCInstallProfileViewController *)self setPin:0];
  [(MCInstallProfileViewController *)self setDidAppearBlock:0];

  [(MCInstallProfileViewController *)self _hideProgressIndicatorIfNeeded];
}

- (void)showProgressIndicator
{
  if ([(MCInstallProfileViewController *)self displayedAsSheet])
  {
    navigationItem = [(MCInstallProfileViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0 animated:0];

    navigationItem2 = [(MCInstallProfileViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0 animated:0];
  }

  [(UIViewController *)self MCUIShowProgressInNavBar];
}

- (void)_hideProgressIndicatorIfNeeded
{
  if ([(UIViewController *)self MCUIIsShowingProgress])
  {

    [(UIViewController *)self MCUIHideProgressInNavBarShowBackButton:1];
  }
}

- (void)updateTitleForProfileInstallationState:(int)state
{
  if (state == 1)
  {
    v4 = @"BLOB_INSTALL_TITLE";
    goto LABEL_5;
  }

  if (state == 9)
  {
    v4 = @"BLOB_JUST_INSTALLED_TITLE";
LABEL_5:
    v8 = MCUILocalizedString(v4);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (![(MCInstallProfileViewController *)self processingPayload])
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = MCUILocalizedString(@"BLOB_INSTALLING_TITLE");

  v6 = v5;
  if (v5)
  {
LABEL_11:
    v9 = v6;
    navigationItem = [(MCInstallProfileViewController *)self navigationItem];
    [navigationItem setTitle:v9];

    v6 = v9;
  }

LABEL_12:
}

- (id)_newRightBarButtonItem
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  profile = [(MCInstallProfileViewController *)self profile];
  v5 = [mEMORY[0x277D262A0] mustInstallProfileNonInteractively:profile];

  if ((v5 & 1) != 0 || [(MCInstallProfileViewController *)self installState]!= 1)
  {
    rightNavBarButton = self->_rightNavBarButton;
    self->_rightNavBarButton = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    rightNavBarButton = MCUILocalizedString(@"INSTALL");
    v8 = [v6 initWithTitle:rightNavBarButton style:2 target:self action:sel__beginInstallFlow];
    v9 = self->_rightNavBarButton;
    self->_rightNavBarButton = v8;
  }

  v10 = self->_rightNavBarButton;

  return v10;
}

- (void)_beginInstallFlow
{
  [(MCInstallProfileViewController *)self setInstallState:2 animated:1];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  if (isPasscodeSet)
  {
    delegate = [(MCInstallProfileViewController *)self delegate];
    if (delegate && (v6 = delegate, [(MCInstallProfileViewController *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
    {
      objc_initWeak(&location, self);
      delegate2 = [(MCInstallProfileViewController *)self delegate];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__MCInstallProfileViewController__beginInstallFlow__block_invoke;
      v10[3] = &unk_2798619F0;
      objc_copyWeak(&v11, &location);
      [delegate2 performPinAuthenticationWithCompletionHandler:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {

      [(MCInstallProfileViewController *)self pinExtensionShowPINSheet];
    }
  }

  else
  {

    [(MCInstallProfileViewController *)self continueInstallFlowAfterPINVerification];
  }
}

void __51__MCInstallProfileViewController__beginInstallFlow__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained continueInstallFlowAfterPINVerification];
    }

    else if ([WeakRetained installHasFailed])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MCInstallProfileViewController__beginInstallFlow__block_invoke_2;
      block[3] = &unk_279861990;
      objc_copyWeak(&v7, (a1 + 32));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v7);
    }
  }
}

void __51__MCInstallProfileViewController__beginInstallFlow__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setInstallState:1 animated:1];
    WeakRetained = v2;
  }
}

- (void)continueInstallFlowAfterPINVerification
{
  [(MCInstallProfileViewController *)self showProgressIndicator];
  v3 = MCUIForPairedDevice();
  v4 = v3;
  NSLog(&cfstr_Mcinstallprofi.isa, v3);
  if ((v4 & 1) == 0)
  {
    delegate = [(MCInstallProfileViewController *)self delegate];

    if (!delegate)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      profileData = [(MCInstallProfileViewController *)self profileData];
      [mEMORY[0x277D262A0] installProfileData:profileData interactionDelegate:self];
      goto LABEL_8;
    }
  }

  profile = [(MCInstallProfileViewController *)self profile];
  installationWarnings = [profile installationWarnings];
  if ([installationWarnings count])
  {

LABEL_6:
    mEMORY[0x277D262A0] = [(MCInstallProfileViewController *)self profile];
    profileData = [mEMORY[0x277D262A0] installationWarnings];
    [(MCInstallProfileViewController *)self profileConnection:0 didShowUserWarnings:profileData];
LABEL_8:

    return;
  }

  profile2 = [(MCInstallProfileViewController *)self profile];
  localizedConsentText = [profile2 localizedConsentText];

  if (localizedConsentText)
  {
    goto LABEL_6;
  }

  if (![(MCInstallProfileViewController *)self _attemptRemoteInstallAfterCompletingPrecheck])
  {
    NSLog(&cfstr_ErrorMcinstall.isa);
  }
}

- (void)continueInstallFlowAfterCompletingPrecheck
{
  [(MCInstallProfileViewController *)self setProcessingPayload:1];
  [(MCInstallProfileViewController *)self setQuestionsAlreadyAsked:1];
  [(MCInstallProfileViewController *)self setInstallState:2 animated:1];
  [(MCInstallProfileViewController *)self showProgressIndicator];
  if (![(MCInstallProfileViewController *)self _attemptRemoteInstallAfterCompletingPrecheck])
  {
    NSLog(&cfstr_Mcinstallprofi_0.isa);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] respondToWarningsContinueInstallation:1];
  }
}

- (BOOL)_attemptRemoteInstallAfterCompletingPrecheck
{
  profile = [(MCInstallProfileViewController *)self profile];
  identifier = [profile identifier];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__MCInstallProfileViewController__attemptRemoteInstallAfterCompletingPrecheck__block_invoke;
  v13[3] = &unk_279861A18;
  objc_copyWeak(&v15, &location);
  v5 = identifier;
  v14 = v5;
  v6 = MEMORY[0x259C799C0](v13);
  v7 = +[MCUIWatchManager shared];

  if (v7)
  {
    NSLog(&cfstr_Mcinstallprofi_1.isa);
    delegate2 = +[MCUIWatchManager shared];
    profileData = [(MCInstallProfileViewController *)self profileData];
    [delegate2 installProfileData:profileData completion:v6];
  }

  else
  {
    delegate = [(MCInstallProfileViewController *)self delegate];

    if (!delegate)
    {
      v11 = 0;
      goto LABEL_6;
    }

    NSLog(&cfstr_Mcinstallprofi_2.isa);
    delegate2 = [(MCInstallProfileViewController *)self delegate];
    [delegate2 installProfileWithCompletionHandler:v6];
  }

  v11 = 1;
LABEL_6:

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __78__MCInstallProfileViewController__attemptRemoteInstallAfterCompletingPrecheck__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _installFinishedWithIdentifier:*(a1 + 32) error:v5];
  }
}

- (void)profileConnection:(id)connection didRequestUserInput:(id)input
{
  inputCopy = input;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MCInstallProfileViewController_profileConnection_didRequestUserInput___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = inputCopy;
  v6 = inputCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__MCInstallProfileViewController_profileConnection_didRequestUserInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained questionsExtensionDidRequestAnswersForQuestions:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)profileConnection:(id)connection didShowUserWarnings:(id)warnings
{
  warningsCopy = warnings;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MCInstallProfileViewController_profileConnection_didShowUserWarnings___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = warningsCopy;
  v6 = warningsCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__MCInstallProfileViewController_profileConnection_didShowUserWarnings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained consentExtensionShowConsentAndWarnings:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)profileConnection:(id)connection didUpdateStatus:(id)status
{
  statusCopy = status;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCInstallProfileViewController_profileConnection_didUpdateStatus___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__MCInstallProfileViewController_profileConnection_didUpdateStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    if (v3)
    {
      v4 = [WeakRetained navigationItem];
      [v4 setTitle:v3];
    }

    else
    {
      [WeakRetained updateTitleForProfileInstallationState:2];
    }

    WeakRetained = v5;
  }
}

- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__MCInstallProfileViewController_profileConnection_didFinishPreflightWithError___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __80__MCInstallProfileViewController_profileConnection_didFinishPreflightWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained questionsExtensionDidFinishPreflightWithError:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)profileConnection:(id)connection didFinishInstallationWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__MCInstallProfileViewController_profileConnection_didFinishInstallationWithIdentifier_error___block_invoke;
  v11[3] = &unk_279861A68;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __94__MCInstallProfileViewController_profileConnection_didFinishInstallationWithIdentifier_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _installFinishedWithIdentifier:*(a1 + 32) error:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)profileConnection:(id)connection didBeginInstallingNextProfile:(id)profile
{
  profileCopy = profile;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MCInstallProfileViewController_profileConnection_didBeginInstallingNextProfile___block_invoke;
  block[3] = &unk_279861A40;
  objc_copyWeak(&v9, &location);
  v8 = profileCopy;
  v6 = profileCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82__MCInstallProfileViewController_profileConnection_didBeginInstallingNextProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setSecondaryProfileReceived:1];
    [v3 setProfile:*(a1 + 32)];
    [v3 setInstallState:2 animated:1];
    WeakRetained = v3;
  }
}

- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [(MCInstallProfileViewController *)self pin];
  [passcodeCopy respondToCurrentPasscodeRequestContinue:1 passcode:v5];
}

- (void)profileConnection:(id)connection didRequestMAIDSignIn:(id)in personaID:(id)d
{
  connectionCopy = connection;
  inCopy = in;
  currentPersonaID = [MEMORY[0x277D03550] currentPersonaID];
  [(MCInstallProfileViewController *)self setEnrollmentPersonaID:currentPersonaID];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke;
  v12[3] = &unk_279861A68;
  objc_copyWeak(&v15, &location);
  v13 = inCopy;
  v14 = connectionCopy;
  v10 = connectionCopy;
  v11 = inCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setInstallState:5];
    [v3 hideProgressIndicatorWithShowButtons:1];
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke_2;
    v5[3] = &unk_279861AB8;
    objc_copyWeak(&v7, (a1 + 48));
    v6 = *(a1 + 40);
    [v3 _signInMAID:v4 completionHandler:v5];

    objc_destroyWeak(&v7);
  }
}

void __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke_2(uint64_t a1, char a2, void *a3, char a4)
{
  v7 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke_3;
  v10[3] = &unk_279861A90;
  objc_copyWeak(&v13, (a1 + 40));
  v14 = a4;
  v8 = *(a1 + 32);
  v15 = a2;
  v11 = v8;
  v12 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v13);
}

void __83__MCInstallProfileViewController_profileConnection_didRequestMAIDSignIn_personaID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _cancelInstallAfterMAIDAuthenticationAnimated:1];
    }

    else
    {
      [WeakRetained showProgressIndicator];
      [*(a1 + 32) respondToMAIDAuthenticationRequest:*(a1 + 57) error:*(a1 + 40) isCancelled:*(a1 + 56)];
    }

    WeakRetained = v3;
  }
}

- (void)submitQuestionAnswers:(id)answers
{
  answersCopy = answers;
  [(MCInstallProfileViewController *)self setInstallState:2 animated:1];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] submitUserInputResponses:answersCopy];
}

- (void)cancelInstallWhilePresentingConsentAndWarningsUponDidAppear
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __93__MCInstallProfileViewController_cancelInstallWhilePresentingConsentAndWarningsUponDidAppear__block_invoke;
  v6 = &unk_279861990;
  objc_copyWeak(&v7, &location);
  [(MCInstallProfileViewController *)self setDidAppearBlock:&v3];
  [(MCInstallProfileViewController *)self dmc_popToViewController:self animated:1, v3, v4, v5, v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __93__MCInstallProfileViewController_cancelInstallWhilePresentingConsentAndWarningsUponDidAppear__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__MCInstallProfileViewController_cancelInstallWhilePresentingConsentAndWarningsUponDidAppear__block_invoke_2;
  block[3] = &unk_279861990;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __93__MCInstallProfileViewController_cancelInstallWhilePresentingConsentAndWarningsUponDidAppear__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cancelInstallWhilePresentingConsentAndWarningsAnimated:1];
    WeakRetained = v2;
  }
}

- (void)_installFinishedWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  [(MCInstallProfileViewController *)self questionsExtensionInstallFinished];
  if (errorCopy)
  {
    [(MCInstallProfileViewController *)self setInstallState:1 animated:0];
    [(MCInstallProfileViewController *)self setInstallHasFailed:1];
    if ([(MCInstallProfileViewController *)self _installErrorIsUserCancelledError:errorCopy])
    {
      [(MCInstallProfileViewController *)self setUserCancelledInstall:1];
    }

    else
    {
      [(MCInstallProfileViewController *)self _handleInstallationError:errorCopy];
    }

    if ([(MCInstallProfileViewController *)self secondaryProfileReceived])
    {
      originalProfileData = [(MCInstallProfileViewController *)self originalProfileData];
      [(MCInstallProfileViewController *)self setProfileData:originalProfileData];

      [(MCInstallProfileViewController *)self setSecondaryProfileReceived:0];
    }
  }

  else
  {
    profileViewController = [(MCInstallProfileViewController *)self profileViewController];
    [profileViewController setInstallComplete:1];

    [(MCInstallProfileViewController *)self setInstallState:9 animated:1];
    originalProfile = [(MCInstallProfileViewController *)self originalProfile];
    if ([originalProfile needsReboot])
    {
    }

    else
    {
      profile = [(MCInstallProfileViewController *)self profile];
      needsReboot = [profile needsReboot];

      if (!needsReboot)
      {
        goto LABEL_13;
      }
    }

    delegate = [(MCInstallProfileViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(MCInstallProfileViewController *)self delegate];
      [delegate2 showRebootAlertAndReboot];
    }

    else
    {
      [MEMORY[0x277D75110] MCUIShowRebootAlertFromViewController:self];
    }
  }

LABEL_13:
}

- (BOOL)_installErrorIsUserCancelledError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    return 0;
  }

  v4 = errorCopy;
  v5 = *MEMORY[0x277D26108];
  v6 = *MEMORY[0x277D26130];
  v7 = *MEMORY[0x277CCA7E8];
  while (1)
  {
    domain = [v4 domain];
    v9 = [domain isEqualToString:v5];

    if (!v9)
    {
      break;
    }

    if ([v4 code] == 4004)
    {
      goto LABEL_11;
    }

LABEL_8:
    userInfo = [v4 userInfo];
    v13 = [userInfo objectForKey:v7];

    v4 = v13;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_12;
    }
  }

  domain2 = [v4 domain];
  v11 = [domain2 isEqualToString:v6];

  if (!v11 || [v4 code] != 24007)
  {
    goto LABEL_8;
  }

LABEL_11:
  v14 = 1;
LABEL_12:

  return v14;
}

- (void)_handleInstallationError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  if (errorCopy)
  {
    v5 = *MEMORY[0x277D25CA8];
    v6 = *MEMORY[0x277CCA7E8];
    v7 = errorCopy;
    while (1)
    {
      userInfo = [v7 userInfo];
      localizedRecoverySuggestion2 = [v7 localizedRecoverySuggestion];

      if (localizedRecoverySuggestion2)
      {
        localizedRecoverySuggestion3 = [v7 localizedRecoverySuggestion];

        localizedRecoverySuggestion = localizedRecoverySuggestion3;
      }

      v11 = [userInfo objectForKey:v5];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          if (v12)
          {
            break;
          }
        }
      }

      v13 = [userInfo objectForKey:v6];

      v7 = v13;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = v12;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v14 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
LABEL_9:
    [MEMORY[0x277D75110] MCUIShowAlertForError:errorCopy fromViewController:selfCopy suggestedTitle:localizedDescription suggestedMessage:localizedRecoverySuggestion completion:{0, selfCopy}];
    v7 = 0;
  }
}

- (void)_cancelInstallDueToApplicationExit
{
  installState = [(MCInstallProfileViewController *)self installState];
  if (installState > 3)
  {
    if (installState == 4)
    {
      [(MCInstallProfileViewController *)self cancelInstallWhilePresentingQuestionsAnimated:0];
      goto LABEL_13;
    }

    if (installState == 5)
    {
      [(MCInstallProfileViewController *)self _cancelInstallAfterMAIDAuthenticationAnimated:0];
      goto LABEL_13;
    }

    if (installState != 9)
    {
      goto LABEL_13;
    }

LABEL_9:
    [(MCInstallProfileViewController *)self _takeMeBack];
    goto LABEL_13;
  }

  switch(installState)
  {
    case 1:
      goto LABEL_9;
    case 2:
      [(MCInstallProfileViewController *)self setInstallState:1 animated:0];
      break;
    case 3:
      [(MCInstallProfileViewController *)self cancelInstallWhilePresentingConsentAndWarningsAnimated:0];
      break;
  }

LABEL_13:

  [(MCInstallProfileViewController *)self dmc_popToViewController:self animated:1];
}

- (void)showFinalInstallationAlert:(id)alert
{
  alertCopy = alert;
  v20 = MCUILocalizedString(@"BLOB_INSTALL_TITLE");
  profile = [(MCInstallProfileViewController *)self profile];
  trustLevel = [profile trustLevel];

  profile2 = [(MCInstallProfileViewController *)self profile];
  isLocked = [profile2 isLocked];

  if (isLocked)
  {
    profile3 = [(MCInstallProfileViewController *)self profile];
    removalPasscode = [profile3 removalPasscode];
    if (removalPasscode)
    {
      v11 = @"BLOB_INSTALL_NOT_REMOVABLE_AUTH";
    }

    else
    {
      v11 = @"BLOB_INSTALL_NOT_REMOVABLE";
    }

    v12 = MCUILocalizedString(v11);

    v13 = 2;
  }

  else
  {
    v14 = trustLevel != 2;
    v12 = MCUILocalizedStringByDevice(@"PROFILE_INSTALL_WARNING");
    v13 = 2 * v14;
  }

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v20 message:v12 preferredStyle:1];
  v16 = MCUILocalizedString(@"INSTALL");
  [(MCInstallProfileViewController *)self addInstallActionWithTitle:v16 style:v13 toAlert:v15 completion:alertCopy];

  [(MCInstallProfileViewController *)self addCancelActionToAlert:v15 withCompletion:alertCopy];
  rightNavBarButton = [(MCInstallProfileViewController *)self rightNavBarButton];

  if (rightNavBarButton)
  {
    rightNavBarButton2 = [(MCInstallProfileViewController *)self rightNavBarButton];
    popoverPresentationController = [v15 popoverPresentationController];
    [popoverPresentationController setSourceItem:rightNavBarButton2];
  }

  [(MCInstallProfileViewController *)self dmc_presentAlert:v15 completion:0];
}

- (void)showMDMFinalInstallationAlert:(id)alert
{
  alertCopy = alert;
  v9 = MCUILocalizedStringByDevice(@"MOBILE_DEVICE_MANAGEMENT_WARNING");
  v5 = MEMORY[0x277D75110];
  v6 = MCUILocalizedString(@"BLOB_MDM_ENROLL_TITLE");
  v7 = [v5 alertControllerWithTitle:v6 message:v9 preferredStyle:1];

  v8 = MCUILocalizedString(@"TRUST");
  [(MCInstallProfileViewController *)self addInstallActionWithTitle:v8 style:2 toAlert:v7 completion:alertCopy];

  [(MCInstallProfileViewController *)self addCancelActionToAlert:v7 withCompletion:alertCopy];
  [(MCInstallProfileViewController *)self dmc_presentAlert:v7 completion:0];
}

- (void)showReEnrollFailureAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = MCUILocalizedString(@"PROFILE_UPDATE_ERROR");
  v5 = MCUILocalizedString(@"PROFILE_REENROLL_ERROR");
  v7 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MCUILocalizedString(@"OK");
  [v7 MCUIAddCancelActionWithTitle:v6];

  [(MCInstallProfileViewController *)self dmc_presentAlert:v7 completion:0];
}

- (void)addInstallActionWithTitle:(id)title style:(int64_t)style toAlert:(id)alert completion:(id)completion
{
  titleCopy = title;
  alertCopy = alert;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__MCInstallProfileViewController_addInstallActionWithTitle_style_toAlert_completion___block_invoke;
  v14[3] = &unk_279861AE0;
  v13 = completionCopy;
  v15 = v13;
  objc_copyWeak(&v16, &location);
  [alertCopy MCUIAddActionWithTitle:titleCopy style:style completion:v14];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __85__MCInstallProfileViewController_addInstallActionWithTitle_style_toAlert_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained continueInstallFlowAfterCompletingPrecheck];
    WeakRetained = v4;
  }
}

- (void)addCancelActionToAlert:(id)alert withCompletion:(id)completion
{
  alertCopy = alert;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = MCUILocalizedString(@"CANCEL");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MCInstallProfileViewController_addCancelActionToAlert_withCompletion___block_invoke;
  v10[3] = &unk_279861AE0;
  v9 = completionCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [alertCopy MCUIAddActionWithTitle:v8 style:1 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__MCInstallProfileViewController_addCancelActionToAlert_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained cancelInstallWhilePresentingConsentAndWarningsAnimated:1];
    WeakRetained = v4;
  }
}

- (void)performRemoveAfterFinalVerification
{
  v3 = MCUILocalizedString(@"BLOB_REMOVING_TITLE");
  navigationItem = [(MCInstallProfileViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  [(MCInstallProfileViewController *)self showProgressIndicator];
  [(MCInstallProfileViewController *)self setProcessingPayload:1];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __69__MCInstallProfileViewController_performRemoveAfterFinalVerification__block_invoke;
  v11 = &unk_279861B08;
  objc_copyWeak(&v12, &location);
  v5 = MEMORY[0x259C799C0](&v8);
  v6 = [(MCInstallProfileViewController *)self profile:v8];
  identifier = [v6 identifier];
  [(MCInstallProfileViewController *)self _removeProfileWithIdentifier:identifier isProtectedProfile:0 completionHandler:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__MCInstallProfileViewController_performRemoveAfterFinalVerification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__MCInstallProfileViewController_performRemoveAfterFinalVerification__block_invoke_2;
  v5[3] = &unk_279861A40;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __69__MCInstallProfileViewController_performRemoveAfterFinalVerification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = WeakRetained;
    if (v3)
    {
      [MEMORY[0x277D75110] MCUIShowAlertForError:v3 fromViewController:WeakRetained suggestedTitle:0 suggestedMessage:0 completion:0];
      WeakRetained = v4;
    }

    [WeakRetained hideProgressIndicatorWithShowButtons:1];
    [v4 profileRemovalDidFinish];
    WeakRetained = v4;
  }
}

- (void)_removeProfileWithIdentifier:(id)identifier isProtectedProfile:(BOOL)profile completionHandler:(id)handler
{
  profileCopy = profile;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(MCInstallProfileViewController *)self profileViewControllerIsProfileInstalled])
  {
    v10 = +[MCUIWatchManager shared];

    if (v10)
    {
      v11 = +[MCUIWatchManager shared];
      [v11 removeProfileIdentifier:identifierCopy completion:handlerCopy];
LABEL_11:

      goto LABEL_12;
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v11 = mEMORY[0x277D262A0];
    if (profileCopy)
    {
      [mEMORY[0x277D262A0] removeProtectedProfileAsyncWithIdentifier:identifierCopy installationType:1 completion:handlerCopy];
      goto LABEL_11;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__MCInstallProfileViewController__removeProfileWithIdentifier_isProtectedProfile_completionHandler___block_invoke_2;
    v16[3] = &unk_279861B30;
    v17 = handlerCopy;
    [v11 removeProfileWithIdentifier:identifierCopy installationType:1 completion:v16];

    v14 = v17;
  }

  else
  {
    if (MCUIForPairedDevice())
    {
      thisDeviceType = 2;
    }

    else
    {
      thisDeviceType = [MEMORY[0x277D26290] thisDeviceType];
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__MCInstallProfileViewController__removeProfileWithIdentifier_isProtectedProfile_completionHandler___block_invoke;
    v18[3] = &unk_279861B30;
    v19 = handlerCopy;
    [mEMORY[0x277D262A0]2 removeUninstalledProfileWithIdentifier:identifierCopy installationType:1 targetDeviceType:thisDeviceType completion:v18];

    v14 = v19;
  }

LABEL_12:
}

- (void)profileRemovalDidFinish
{
  objc_initWeak(&location, self);
  if (([(MCInstallProfileViewController *)self dmc_popViewControllerAnimated:1]& 1) == 0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__MCInstallProfileViewController_profileRemovalDidFinish__block_invoke;
    v3[3] = &unk_2798619F0;
    objc_copyWeak(&v4, &location);
    [(UIViewController *)self MCUIReturnToSender:1 returnToAccountSettings:0 viewControllerDismissalBlock:v3];
    objc_destroyWeak(&v4);
  }

  objc_destroyWeak(&location);
}

void __57__MCInstallProfileViewController_profileRemovalDidFinish__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained navigationController];
    v5 = [v4 presentingViewController];
    [v5 dismissViewControllerAnimated:a2 completion:0];

    WeakRetained = v6;
  }
}

- (void)_signInMAID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v10 = objc_alloc_init(MCUISignInViewController);
  [(MCUISignInViewController *)v10 setDelegate:self];
  v8 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v8 setIsEphemeral:0];
  [v8 setAuthenticationType:2];
  [v8 setPresentingViewController:v10];
  [v8 setUsername:dCopy];

  [v8 setIsUsernameEditable:0];
  [(MCUISignInViewController *)v10 setContext:v8];
  [(MCInstallProfileViewController *)self setSignInCompletionHandler:handlerCopy];

  navigationController = [(MCInstallProfileViewController *)self navigationController];
  [navigationController presentViewController:v10 animated:1 completion:0];
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  resultsCopy = results;
  errorCopy = error;
  signInCompletionHandler = [(MCInstallProfileViewController *)self signInCompletionHandler];

  if (signInCompletionHandler)
  {
    if (errorCopy)
    {
      signInCompletionHandler2 = [(MCInstallProfileViewController *)self signInCompletionHandler];
      (signInCompletionHandler2)[2](signInCompletionHandler2, 0, errorCopy, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
      block[3] = &unk_279861990;
      objc_copyWeak(&v21, &location);
      dispatch_async(MEMORY[0x277D85CD0], block);
      v13 = objc_opt_new();
      v14 = *MEMORY[0x277CB8D58];
      v23[0] = *MEMORY[0x277CB8BA0];
      v23[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      enrollmentPersonaID = [(MCInstallProfileViewController *)self enrollmentPersonaID];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_2;
      v18[3] = &unk_279861B58;
      objc_copyWeak(&v19, &location);
      [v13 signInAccountsWithTypes:v15 authenticationResult:resultsCopy personaID:enrollmentPersonaID canMakeAccountActive:0 baseViewController:self completionHandler:v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showProgressIndicator];
    WeakRetained = v2;
  }
}

void __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_3;
  block[3] = &unk_279861990;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained signInCompletionHandler];
    if (a2)
      v8 = {;
      v8[2](v8, 1, 0, 0);
    }

    else
      v8 = {;
      (v8)[2](v8, 0, v5, 0);
    }
  }

  objc_destroyWeak(&v10);
}

void __88__MCInstallProfileViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained MCUIHideProgressInNavBarShowBackButton:0];
    WeakRetained = v2;
  }
}

- (MCInstallProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)consentExtensionShowConsentAndWarnings:(id)warnings
{
  warningsCopy = warnings;
  [(MCInstallProfileViewController *)self hideProgressIndicatorWithShowButtons:0];
  [(MCInstallProfileViewController *)self setInstallState:3 animated:1];
  profile = [(MCInstallProfileViewController *)self profile];
  localizedConsentText = [profile localizedConsentText];

  if (localizedConsentText)
  {
    [(MCInstallProfileViewController *)self _presentConsent:warningsCopy];
  }

  else
  {
    [(MCInstallProfileViewController *)self _didFinishPresentingConsent:warningsCopy];
  }
}

- (void)installationConsentViewController:(id)controller finishedWithUserContinueResponse:(BOOL)response
{
  responseCopy = response;
  NSLog(&cfstr_Mcinstallprofi_3.isa, a2, controller, response);
  if (responseCopy)
  {
    warnings = [(MCInstallProfileViewController *)self warnings];
    [(MCInstallProfileViewController *)self _didFinishPresentingConsent:warnings];

    [(MCInstallProfileViewController *)self setWarnings:0];
  }

  else
  {

    [(MCInstallProfileViewController *)self cancelInstallWhilePresentingConsentAndWarningsUponDidAppear];
  }
}

- (void)_presentConsent:(id)consent
{
  consentCopy = consent;
  NSLog(&cfstr_Mcinstallprofi_4.isa);
  [(MCInstallProfileViewController *)self setWarnings:consentCopy];
  v7 = [[MCInstallationConsentViewController alloc] initWithStyle:2];
  profile = [(MCInstallProfileViewController *)self profile];
  [(MCInstallationConsentViewController *)v7 setProfile:profile];

  [(MCInstallationConsentViewController *)v7 setConsentDelegate:self];
  v6 = [consentCopy count];

  [(MCInstallationConsentViewController *)v7 setShowInstall:v6 == 0];
  [(MCInstallProfileViewController *)self dmc_pushViewController:v7 animated:1];
}

- (void)_didFinishPresentingConsent:(id)consent
{
  consentCopy = consent;
  if ([consentCopy count])
  {
    NSLog(&cfstr_Mcinstallprofi_5.isa, consentCopy);
    [(MCInstallProfileViewController *)self warningsExtensionPushWarningsControllerWithWarnings:consentCopy];
  }

  else if ([(MCInstallProfileViewController *)self questionsAlreadyAsked])
  {
    NSLog(&cfstr_Mcinstallprofi_6.isa);
    [(MCInstallProfileViewController *)self continueInstallFlowAfterCompletingPrecheck];
  }

  else
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__MCInstallProfileViewController_Consent___didFinishPresentingConsent___block_invoke;
    v5[3] = &unk_279861990;
    objc_copyWeak(&v6, &location);
    [(MCInstallProfileViewController *)self showFinalInstallationAlert:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __71__MCInstallProfileViewController_Consent___didFinishPresentingConsent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    NSLog(&cfstr_Mcinstallprofi_7.isa);
    [v2 dmc_popToViewController:v2 animated:1];
    WeakRetained = v2;
  }
}

- (void)pinExtensionShowPINSheet
{
  v3 = objc_alloc_init(MEMORY[0x277CD4848]);
  v4 = objc_opt_new();
  v5 = MCUILocalizedStringByDevice(@"PIN_MESSAGE_USER_ENROLLMENT");
  [v4 setPasscodeSubPrompt:v5];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__MCInstallProfileViewController_PIN__pinExtensionShowPINSheet__block_invoke;
  v7[3] = &unk_279861BA8;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [v6 startInParentVC:self completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__MCInstallProfileViewController_PIN__pinExtensionShowPINSheet__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:*MEMORY[0x277CD4810]])
      {
        v10 = [v6 code];

        if (!v10)
        {
          NSLog(&cfstr_Lapasscodeveri.isa);
LABEL_10:
          [v8 didCancelEnteringPIN];
          goto LABEL_11;
        }
      }

      else
      {
      }

      NSLog(&cfstr_Lapasscodeveri_0.isa, v6);
      goto LABEL_10;
    }

    if (v5)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__MCInstallProfileViewController_PIN__pinExtensionShowPINSheet__block_invoke_2;
      v11[3] = &unk_279861B80;
      v11[4] = WeakRetained;
      [v5 credentialOfType:-9 reply:v11];
    }
  }

LABEL_11:
}

void __63__MCInstallProfileViewController_PIN__pinExtensionShowPINSheet__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    NSLog(&cfstr_GotPassword.isa);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    [*(a1 + 32) didAcceptEnteredPIN:v5];
  }

  else
  {
    NSLog(&cfstr_FailedToGetCre.isa, a3);
    [*(a1 + 32) didCancelEnteringPIN];
  }
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MCInstallProfileViewController_PIN__didAcceptEnteredPIN___block_invoke;
  v6[3] = &unk_279861A40;
  objc_copyWeak(&v8, &location);
  v5 = nCopy;
  v7 = v5;
  [(MCInstallProfileViewController *)self _didFinishEnteringPINWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__MCInstallProfileViewController_PIN__didAcceptEnteredPIN___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setPin:*(a1 + 32)];
    [v3 continueInstallFlowAfterPINVerification];
    WeakRetained = v3;
  }
}

- (void)didCancelEnteringPIN
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__MCInstallProfileViewController_PIN__didCancelEnteringPIN__block_invoke;
  v3[3] = &unk_279861990;
  objc_copyWeak(&v4, &location);
  [(MCInstallProfileViewController *)self _didFinishEnteringPINWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __59__MCInstallProfileViewController_PIN__didCancelEnteringPIN__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setInstallState:1 animated:1];
    WeakRetained = v2;
  }
}

- (void)_didFinishEnteringPINWithCompletion:(id)completion
{
  completionCopy = completion;
  installHasFailed = [(MCInstallProfileViewController *)self installHasFailed];
  if (completionCopy && !installHasFailed)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MCInstallProfileViewController_PIN___didFinishEnteringPINWithCompletion___block_invoke;
    block[3] = &unk_279861B30;
    v7 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)questionsExtensionDidRequestAnswersForQuestions:(id)questions
{
  questionsCopy = questions;
  [(MCInstallProfileViewController *)self setInstallState:4 animated:1];
  if ([(MCInstallProfileViewController *)self delayNextQuesion])
  {
    [(MCInstallProfileViewController *)self _promptUserWithQuestionsAfterDelay:questionsCopy];
  }

  else
  {
    [(MCInstallProfileViewController *)self _promptUserWithQuestions:questionsCopy];
  }
}

- (void)questionsExtensionDidFinishPreflightWithError:(id)error
{
  errorCopy = error;
  questionsController = [(MCInstallProfileViewController *)self questionsController];
  [questionsController profileConnectionDidFinishPreflightWithError:errorCopy];
}

- (void)questionsExtensionInstallFinished
{
  if ([(MCInstallProfileViewController *)self waitingForNextQuestion])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__finishWaitingForMoreQuestions object:0];
    [(MCInstallProfileViewController *)self _finishWaitingForMoreQuestions];
  }

  [(MCInstallProfileViewController *)self hideProgressIndicatorWithShowButtons:1];
  [(MCInstallProfileViewController *)self dmc_popToViewController:self animated:1];

  [(MCInstallProfileViewController *)self setQuestionsController:0];
}

- (void)setCurrentQuestionsController:(id)controller
{
  controllerCopy = controller;
  questionsController = [(MCInstallProfileViewController *)self questionsController];

  v5 = controllerCopy;
  if (questionsController != controllerCopy)
  {
    [(MCInstallProfileViewController *)self setQuestionsController:controllerCopy];
    v5 = controllerCopy;
  }
}

- (void)questionsController:(id)controller didFinishWithResponses:(id)responses
{
  responsesCopy = responses;
  if ([responsesCopy count])
  {
    [(MCInstallProfileViewController *)self submitQuestionAnswers:responsesCopy];
    [(MCInstallProfileViewController *)self _waitForNextQuestion];
  }

  else
  {
    [(MCInstallProfileViewController *)self cancelInstallWhilePresentingQuestionsAnimated:1];
  }
}

- (void)_promptUserWithQuestions:(id)questions
{
  questionsCopy = questions;
  if ([(MCInstallProfileViewController *)self waitingForNextQuestion])
  {
    [(MCInstallProfileViewController *)self setWaitingForNextQuestion:0];
    questionsController = [(MCInstallProfileViewController *)self questionsController];
    [questionsController stopWaitingForMoreInput];
  }

  [(MCInstallProfileViewController *)self hideProgressIndicatorWithShowButtons:0];
  v6 = [objc_alloc(MEMORY[0x277D03258]) initWithUserInput:questionsCopy];

  [(MCInstallProfileViewController *)self setQuestionsController:v6];
  questionsController2 = [(MCInstallProfileViewController *)self questionsController];
  [questionsController2 setQuestionsDelegate:self];

  questionsController3 = [(MCInstallProfileViewController *)self questionsController];
  [(MCInstallProfileViewController *)self dmc_pushViewController:questionsController3 animated:1];
}

- (void)_promptUserWithQuestionsAfterDelay:(id)delay
{
  delayCopy = delay;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__MCInstallProfileViewController_Questions___promptUserWithQuestionsAfterDelay___block_invoke;
  v6[3] = &unk_279861A40;
  objc_copyWeak(&v8, &location);
  v5 = delayCopy;
  v7 = v5;
  [(MCInstallProfileViewController *)self setDidAppearBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __80__MCInstallProfileViewController_Questions___promptUserWithQuestionsAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDelayNextQuesion:0];

  v3 = dispatch_time(0, 2000000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MCInstallProfileViewController_Questions___promptUserWithQuestionsAfterDelay___block_invoke_2;
  v4[3] = &unk_279861A40;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(&v6);
}

void __80__MCInstallProfileViewController_Questions___promptUserWithQuestionsAfterDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _promptUserWithQuestions:*(a1 + 32)];
}

- (void)_waitForNextQuestion
{
  [(MCInstallProfileViewController *)self setWaitingForNextQuestion:1];
  questionsController = [(MCInstallProfileViewController *)self questionsController];
  [questionsController waitForMoreInput];

  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MCInstallProfileViewController_Questions___waitForNextQuestion__block_invoke;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)_finishWaitingForMoreQuestions
{
  if ([(MCInstallProfileViewController *)self waitingForNextQuestion])
  {
    [(MCInstallProfileViewController *)self setWaitingForNextQuestion:0];
    questionsController = [(MCInstallProfileViewController *)self questionsController];
    [questionsController stopWaitingForMoreInput];

    [(MCInstallProfileViewController *)self showProgressIndicator];
    [(MCInstallProfileViewController *)self setDelayNextQuesion:1];

    [(MCInstallProfileViewController *)self dmc_popToViewController:self animated:1];
  }
}

- (void)warningsExtensionPushWarningsControllerWithWarnings:(id)warnings
{
  warningsCopy = warnings;
  profile = [(MCInstallProfileViewController *)self profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    profile2 = [(MCInstallProfileViewController *)self profile];
    isMDMProfile = [profile2 isMDMProfile];
  }

  else
  {
    isMDMProfile = 0;
  }

  v8 = [[MCInstallationWarningViewController alloc] initWithStyle:2];
  [(MCInstallationWarningViewController *)v8 setIsMDMInstall:isMDMProfile];
  [(MCInstallationWarningViewController *)v8 setWarnings:warningsCopy];

  [(MCInstallationWarningViewController *)v8 setWarningDelegate:self];
  [(MCInstallProfileViewController *)self dmc_pushViewController:v8 animated:1];
}

- (void)installationWarningViewController:(id)controller finishedWithUserContinueResponse:(BOOL)response
{
  controllerCopy = controller;
  if (!response)
  {
    [(MCInstallProfileViewController *)self cancelInstallWhilePresentingConsentAndWarningsUponDidAppear];
    goto LABEL_17;
  }

  profileViewController = [(MCInstallProfileViewController *)self profileViewController];
  uIProfile = [profileViewController UIProfile];
  finalInstallationWarningStyle = [uIProfile finalInstallationWarningStyle];

  if (finalInstallationWarningStyle == 1)
  {
    goto LABEL_10;
  }

  if (finalInstallationWarningStyle == 3)
  {
    finalInstallationWarningStyle = 1;
    goto LABEL_8;
  }

  if (finalInstallationWarningStyle != 2)
  {
    finalInstallationWarningStyle = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  finalInstallationWarningStyle = 0;
LABEL_8:
  v20 = 0;
  location = 0;
  v19 = 0;
  v10 = MEMORY[0x277D3ACE0];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];
  [v10 countOfAssetsWithRequiredResourcesNotLocallyAvailableInLibrary:systemPhotoLibrary outCount:&location photoCount:&v20 videoCount:&v19];

  v12 = location != 0;
LABEL_11:
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __111__MCInstallProfileViewController_Warnings__installationWarningViewController_finishedWithUserContinueResponse___block_invoke;
  v17 = &unk_279861990;
  objc_copyWeak(&v18, &location);
  v13 = MEMORY[0x259C799C0](&v14);
  if (v12)
  {
    [(MCInstallProfileViewController *)self _showCPLFinalInstallationWarning:v13 withMDMWarning:finalInstallationWarningStyle, v14, v15, v16, v17];
  }

  else if (finalInstallationWarningStyle)
  {
    [(MCInstallProfileViewController *)self showMDMFinalInstallationAlert:v13, v14, v15, v16, v17];
  }

  else
  {
    [(MCInstallProfileViewController *)self showFinalInstallationAlert:v13, v14, v15, v16, v17];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
LABEL_17:
}

void __111__MCInstallProfileViewController_Warnings__installationWarningViewController_finishedWithUserContinueResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dmc_popToViewController:WeakRetained animated:1];
    WeakRetained = v2;
  }
}

- (void)_showCPLFinalInstallationWarning:(id)warning withMDMWarning:(BOOL)mWarning
{
  mWarningCopy = mWarning;
  warningCopy = warning;
  v7 = MCUILocalizedString(@"BLOB_INSTALL_TITLE");
  _localizedCPLFinalWarningString = [(MCInstallProfileViewController *)self _localizedCPLFinalWarningString];
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:_localizedCPLFinalWarningString preferredStyle:1];
  if (mWarningCopy)
  {
    objc_initWeak(&location, self);
    v10 = MCUILocalizedString(@"INSTALL");
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__MCInstallProfileViewController_Warnings___showCPLFinalInstallationWarning_withMDMWarning___block_invoke;
    v15[3] = &unk_279861BD0;
    objc_copyWeak(&v17, &location);
    v16 = warningCopy;
    [v9 MCUIAddActionWithTitle:v10 style:2 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = MCUILocalizedString(@"INSTALL");
    [(MCInstallProfileViewController *)self addInstallActionWithTitle:v11 style:2 toAlert:v9 completion:warningCopy];
  }

  [(MCInstallProfileViewController *)self addCancelActionToAlert:v9 withCompletion:warningCopy];
  rightNavBarButton = [(MCInstallProfileViewController *)self rightNavBarButton];

  if (rightNavBarButton)
  {
    rightNavBarButton2 = [(MCInstallProfileViewController *)self rightNavBarButton];
    popoverPresentationController = [v9 popoverPresentationController];
    [popoverPresentationController setSourceItem:rightNavBarButton2];
  }

  [(MCInstallProfileViewController *)self dmc_presentAlert:v9 completion:0];
}

void __92__MCInstallProfileViewController_Warnings___showCPLFinalInstallationWarning_withMDMWarning___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained showMDMFinalInstallationAlert:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_localizedCPLFinalWarningString
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v2 = MEMORY[0x277D3ACE0];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];
  [v2 countOfAssetsWithRequiredResourcesNotLocallyAvailableInLibrary:systemPhotoLibrary outCount:&v11 photoCount:&v10 videoCount:&v9];

  if (v11 >= 2)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = MCUILocalizedStringByDevice(@"CLOUD_PHOTO_LIBRARY_RESTRICTION_PHOTOS_VIDEOS_WARNING_%d");
    v6 = [v4 localizedStringWithFormat:v5, v11];

    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v7 = @"CLOUD_PHOTO_LIBRARY_RESTRICTION_PHOTO_SINGULAR_WARNING";
LABEL_7:
    v6 = MCUILocalizedStringByDevice(v7);
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v7 = @"CLOUD_PHOTO_LIBRARY_RESTRICTION_VIDEO_SINGULAR_WARNING";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

@end