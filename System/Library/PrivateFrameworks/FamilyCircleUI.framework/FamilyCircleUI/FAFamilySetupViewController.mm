@interface FAFamilySetupViewController
- (BOOL)_isRunningInSettings;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (FAFamilySetupViewController)initWithAccount:(id)a3 grandSlamSigner:(id)a4 familyEligibilityResponse:(id)a5;
- (id)_createCloseButton;
- (id)_initWithAccount:(id)a3 grandSlamSigner:(id)a4 rootViewController:(id)a5;
- (id)_urlForLaunchingSettings;
- (id)initTrimmedFlowWithAccount:(id)a3 grandSlamSigner:(id)a4;
- (void)_closeButtonWasTapped:(id)a3;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_loadRemoteUIPages;
- (void)_remoteUIDidCancel;
- (void)_sendUserToiTunesSettings;
- (void)_showActivitySpinnerInNavigationBar;
- (void)dealloc;
- (void)familySetupPage:(id)a3 didCompleteWithSuccess:(BOOL)a4;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation FAFamilySetupViewController

- (FAFamilySetupViewController)initWithAccount:(id)a3 grandSlamSigner:(id)a4 familyEligibilityResponse:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FAFamilySetupGetStartedViewController alloc];
  v12 = [v9 accountStore];
  v13 = [(FAFamilySetupGetStartedViewController *)v11 initWithAccount:v10 store:v12 familyEligibilityResponse:v8];

  v14 = [(FAFamilySetupViewController *)self _initWithAccount:v10 grandSlamSigner:v9 rootViewController:v13];
  return v14;
}

- (id)initTrimmedFlowWithAccount:(id)a3 grandSlamSigner:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FAFamilySetupOrganizerViewController alloc];
  v9 = [v6 accountStore];
  v10 = [(FAFamilySetupOrganizerViewController *)v8 initWithAccount:v7 store:v9];

  v11 = [(FAFamilySetupViewController *)self _initWithAccount:v7 grandSlamSigner:v6 rootViewController:v10];
  return v11;
}

- (id)_initWithAccount:(id)a3 grandSlamSigner:(id)a4 rootViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = FAFamilySetupViewController;
  v12 = [(FAFamilySetupViewController *)&v18 initWithRootViewController:v11];
  if (v12)
  {
    [v11 setDelegate:v12];
    v13 = [v11 navigationItem];
    v14 = [(FAFamilySetupViewController *)v12 _createCloseButton];
    [v13 setRightBarButtonItem:v14];

    objc_storeStrong(&v12->_account, a3);
    v15 = [v10 accountStore];
    accountStore = v12->_accountStore;
    v12->_accountStore = v15;

    objc_storeStrong(&v12->_grandSlamSigner, a4);
  }

  return v12;
}

- (void)dealloc
{
  remoteUIController = self->_remoteUIController;
  if (remoteUIController)
  {
    [(AAUIRemoteUIController *)remoteUIController setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = FAFamilySetupViewController;
  [(FAFamilySetupViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FAFamilySetupViewController;
  [(AAUIBleachedNavigationController *)&v5 viewDidLoad];
  v3 = [(FAFamilySetupViewController *)self navigationBar];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setTintColor:v4];
}

- (void)familySetupPage:(id)a3 didCompleteWithSuccess:(BOOL)a4
{
  v9 = a3;
  if (!a4)
  {
    v6 = [(FAFamilySetupViewController *)self delegate];
    [(FAFamilySetupOrganizerViewController *)v6 familySetupViewController:self didCompleteWithSuccess:0];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(FAFamilySetupViewController *)self _isRunningInSettings])
    {
      v6 = [[FAFamilySetupOrganizerViewController alloc] initWithAccount:self->_account store:self->_accountStore];
      [(FAFamilySetupOrganizerViewController *)v6 setDelegate:self];
      [(FAFamilySetupViewController *)self pushViewController:v6 animated:1];
    }

    else
    {
      v7 = [(FAFamilySetupViewController *)self delegate];
      [v7 familySetupViewController:self didCompleteWithSuccess:1];

      v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v8 = [(FAFamilySetupViewController *)self _urlForLaunchingSettings];
      [(FAFamilySetupOrganizerViewController *)v6 openSensitiveURL:v8 withOptions:0];
    }

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FAFamilySetupViewController *)self _loadRemoteUIPages];
  }

LABEL_7:
}

- (BOOL)_isRunningInSettings
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (id)_urlForLaunchingSettings
{
  v4 = 0;
  v2 = [MEMORY[0x277D08358] urlDestinationTo:6 error:&v4];

  return v2;
}

- (id)_createCloseButton
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CLOSE_BUTTON_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__closeButtonWasTapped_];

  return v6;
}

- (void)_closeButtonWasTapped:(id)a3
{
  v4 = [(FAFamilySetupViewController *)self topViewController];
  [(FAFamilySetupViewController *)self familySetupPage:v4 didCompleteWithSuccess:0];
}

- (void)_showActivitySpinnerInNavigationBar
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_spinnerView)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinnerView = self->_spinnerView;
    self->_spinnerView = v3;

    [(UIActivityIndicatorView *)self->_spinnerView setHidesWhenStopped:1];
  }

  if (!self->_spinnerCount)
  {
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_spinnerView];
    v9 = [(FAFamilySetupViewController *)self topViewController];
    v10 = [v9 navigationItem];
    navigationItemShowingSpinner = self->_navigationItemShowingSpinner;
    self->_navigationItemShowingSpinner = v10;

    v12 = [(UINavigationItem *)self->_navigationItemShowingSpinner rightBarButtonItems];
    originalRightBarButtonItems = self->_originalRightBarButtonItems;
    self->_originalRightBarButtonItems = v12;

    [(UINavigationItem *)self->_navigationItemShowingSpinner setRightBarButtonItem:v8];
LABEL_8:

    goto LABEL_9;
  }

  v5 = self->_navigationItemShowingSpinner;
  v6 = [(FAFamilySetupViewController *)self topViewController];
  v7 = [v6 navigationItem];

  if (v5 != v7)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "%@ changed navigation item for spinner!", &v15, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:
  ++self->_spinnerCount;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_hideActivitySpinnerInNavigationBar
{
  v13 = *MEMORY[0x277D85DE8];
  spinnerCount = self->_spinnerCount;
  if (!spinnerCount)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "%s when there was no spinner", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = spinnerCount - 1;
  self->_spinnerCount = v4;
  if (v4)
  {
LABEL_8:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
  if (self->_originalRightBarButtonItems)
  {
    [(UINavigationItem *)self->_navigationItemShowingSpinner setRightBarButtonItems:?];
    originalRightBarButtonItems = self->_originalRightBarButtonItems;
  }

  else
  {
    originalRightBarButtonItems = 0;
  }

  self->_originalRightBarButtonItems = 0;

  navigationItemShowingSpinner = self->_navigationItemShowingSpinner;
  self->_navigationItemShowingSpinner = 0;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_loadRemoteUIPages
{
  v15 = *MEMORY[0x277D85DE8];
  [(FAFamilySetupViewController *)self _showActivitySpinnerInNavigationBar];
  v3 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v4 = [v3 ams_activeiTunesAccount];

  v5 = [(AAFamilyRequest *)[FAFamilySetupBuddyMLRequest alloc] initWithGrandSlamSigner:self->_grandSlamSigner];
  [(FAFamilySetupBuddyMLRequest *)v5 setiTunesAccount:v4];
  v6 = [(FAFamilySetupBuddyMLRequest *)v5 urlRequest];
  v7 = [v6 mutableCopy];
  startRemoteUIRequest = self->_startRemoteUIRequest;
  self->_startRemoteUIRequest = v7;

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Will load Family Setup remote UI using request: %@", &v13, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277CECAB8]);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v10;

  [(AAUIRemoteUIController *)self->_remoteUIController setDelegate:self];
  [(AAUIRemoteUIController *)self->_remoteUIController setNavigationController:self];
  [(AAUIRemoteUIController *)self->_remoteUIController loadRequest:self->_startRemoteUIRequest completion:&__block_literal_global_4];

  v12 = *MEMORY[0x277D85DE8];
}

void __49__FAFamilySetupViewController__loadRemoteUIPages__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Failed to load Family Setup remote UI: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = MEMORY[0x277D46210];
  v6 = a4;
  v7 = [v5 setupAssistantModalStyle];
  [v7 applyToObjectModel:v6];
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v7 = a4;
  objc_storeStrong(&self->_currentRemoteUIRequest, a4);
  if (self->_startRemoteUIRequest == v7)
  {
    goto LABEL_8;
  }

  v8 = [(NSMutableURLRequest *)v7 URL];
  v9 = [v8 absoluteString];
  v10 = [v9 containsString:@"prefs:itunes"];

  if (!v10)
  {
    v11 = [(NSMutableURLRequest *)v7 URL];
    v12 = [v11 absoluteString];
    v13 = [v12 containsString:@"prefs:icloud"];

    if (v13)
    {
      [(FAFamilySetupViewController *)self _remoteUIDidCancel];
      goto LABEL_6;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__FAFamilySetupViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke;
    block[3] = &unk_2782F29E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(NSMutableURLRequest *)v7 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
    [(NSMutableURLRequest *)v7 aa_addLoggedInAppleIDHeaderWithAccount:self->_account];
    v15 = [MEMORY[0x277CEC7B8] clientInfoHeader];
    [(NSMutableURLRequest *)v7 setValue:v15 forHTTPHeaderField:@"X-MMe-Client-Info"];

    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [v16 objectForKey:*MEMORY[0x277CBE690]];
    v18 = [v17 uppercaseString];
    [(NSMutableURLRequest *)v7 setValue:v18 forHTTPHeaderField:@"X-MMe-Country"];

    [(NSMutableURLRequest *)v7 aa_addDeviceInternalDevHeaderIfEnabled];
    [(NSMutableURLRequest *)v7 aa_addDeviceIDHeader];
    [(NSMutableURLRequest *)v7 aa_addLocationSharingAllowedHeader];
    [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v7 isUserInitiated:1];
LABEL_8:
    [(NSMutableURLRequest *)v7 setValue:@"true" forHTTPHeaderField:@"X-MMe-Family-Setup"];
    v14 = 1;
    goto LABEL_9;
  }

  [(FAFamilySetupViewController *)self _sendUserToiTunesSettings];
LABEL_6:
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__FAFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ([v5 statusCode] == 401)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "BML request returned 401. We need to re-auth...", v8, 2u);
    }

    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:self->_account force:1 reason:0 completion:&__block_literal_global_85];
  }

  else if ([(NSMutableURLRequest *)self->_currentRemoteUIRequest aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:v5])
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Device is provisioned... Reissuing request...", v8, 2u);
    }

    [(AAUIRemoteUIController *)self->_remoteUIController loadRequest:self->_currentRemoteUIRequest completion:&__block_literal_global_88];
  }
}

void __73__FAFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke_82(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials to continue BML flow: %ld. Error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __73__FAFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke_86(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Failed to load Family Setup remote UI: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v4 = [(FAFamilySetupViewController *)self delegate];
  [v4 familySetupViewController:self didCompleteWithSuccess:1];
}

- (void)_remoteUIDidCancel
{
  v3 = [(FAFamilySetupViewController *)self delegate];
  [v3 familySetupViewController:self didCompleteWithSuccess:0];
}

- (void)_sendUserToiTunesSettings
{
  v3 = [(FAFamilySetupViewController *)self delegate];
  [v3 familySetupViewController:self didCompleteWithSuccess:0];

  v4 = dispatch_time(0, 500000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_90);
}

void __56__FAFamilySetupViewController__sendUserToiTunesSettings__block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277D08358] urlDestinationTo:0 error:&v2];
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v1 openSensitiveURL:v0 withOptions:0];
}

@end