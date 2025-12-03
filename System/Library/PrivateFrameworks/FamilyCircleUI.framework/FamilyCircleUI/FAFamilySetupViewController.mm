@interface FAFamilySetupViewController
- (BOOL)_isRunningInSettings;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (FAFamilySetupViewController)initWithAccount:(id)account grandSlamSigner:(id)signer familyEligibilityResponse:(id)response;
- (id)_createCloseButton;
- (id)_initWithAccount:(id)account grandSlamSigner:(id)signer rootViewController:(id)controller;
- (id)_urlForLaunchingSettings;
- (id)initTrimmedFlowWithAccount:(id)account grandSlamSigner:(id)signer;
- (void)_closeButtonWasTapped:(id)tapped;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_loadRemoteUIPages;
- (void)_remoteUIDidCancel;
- (void)_sendUserToiTunesSettings;
- (void)_showActivitySpinnerInNavigationBar;
- (void)dealloc;
- (void)familySetupPage:(id)page didCompleteWithSuccess:(BOOL)success;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation FAFamilySetupViewController

- (FAFamilySetupViewController)initWithAccount:(id)account grandSlamSigner:(id)signer familyEligibilityResponse:(id)response
{
  responseCopy = response;
  signerCopy = signer;
  accountCopy = account;
  v11 = [FAFamilySetupGetStartedViewController alloc];
  accountStore = [signerCopy accountStore];
  v13 = [(FAFamilySetupGetStartedViewController *)v11 initWithAccount:accountCopy store:accountStore familyEligibilityResponse:responseCopy];

  v14 = [(FAFamilySetupViewController *)self _initWithAccount:accountCopy grandSlamSigner:signerCopy rootViewController:v13];
  return v14;
}

- (id)initTrimmedFlowWithAccount:(id)account grandSlamSigner:(id)signer
{
  signerCopy = signer;
  accountCopy = account;
  v8 = [FAFamilySetupOrganizerViewController alloc];
  accountStore = [signerCopy accountStore];
  v10 = [(FAFamilySetupOrganizerViewController *)v8 initWithAccount:accountCopy store:accountStore];

  v11 = [(FAFamilySetupViewController *)self _initWithAccount:accountCopy grandSlamSigner:signerCopy rootViewController:v10];
  return v11;
}

- (id)_initWithAccount:(id)account grandSlamSigner:(id)signer rootViewController:(id)controller
{
  accountCopy = account;
  signerCopy = signer;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = FAFamilySetupViewController;
  v12 = [(FAFamilySetupViewController *)&v18 initWithRootViewController:controllerCopy];
  if (v12)
  {
    [controllerCopy setDelegate:v12];
    navigationItem = [controllerCopy navigationItem];
    _createCloseButton = [(FAFamilySetupViewController *)v12 _createCloseButton];
    [navigationItem setRightBarButtonItem:_createCloseButton];

    objc_storeStrong(&v12->_account, account);
    accountStore = [signerCopy accountStore];
    accountStore = v12->_accountStore;
    v12->_accountStore = accountStore;

    objc_storeStrong(&v12->_grandSlamSigner, signer);
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
  navigationBar = [(FAFamilySetupViewController *)self navigationBar];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [navigationBar setTintColor:systemBlueColor];
}

- (void)familySetupPage:(id)page didCompleteWithSuccess:(BOOL)success
{
  pageCopy = page;
  if (!success)
  {
    delegate = [(FAFamilySetupViewController *)self delegate];
    [(FAFamilySetupOrganizerViewController *)delegate familySetupViewController:self didCompleteWithSuccess:0];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(FAFamilySetupViewController *)self _isRunningInSettings])
    {
      delegate = [[FAFamilySetupOrganizerViewController alloc] initWithAccount:self->_account store:self->_accountStore];
      [(FAFamilySetupOrganizerViewController *)delegate setDelegate:self];
      [(FAFamilySetupViewController *)self pushViewController:delegate animated:1];
    }

    else
    {
      delegate2 = [(FAFamilySetupViewController *)self delegate];
      [delegate2 familySetupViewController:self didCompleteWithSuccess:1];

      delegate = [MEMORY[0x277CC1E80] defaultWorkspace];
      _urlForLaunchingSettings = [(FAFamilySetupViewController *)self _urlForLaunchingSettings];
      [(FAFamilySetupOrganizerViewController *)delegate openSensitiveURL:_urlForLaunchingSettings withOptions:0];
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

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

- (void)_closeButtonWasTapped:(id)tapped
{
  topViewController = [(FAFamilySetupViewController *)self topViewController];
  [(FAFamilySetupViewController *)self familySetupPage:topViewController didCompleteWithSuccess:0];
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
    topViewController = [(FAFamilySetupViewController *)self topViewController];
    navigationItem = [topViewController navigationItem];
    navigationItemShowingSpinner = self->_navigationItemShowingSpinner;
    self->_navigationItemShowingSpinner = navigationItem;

    rightBarButtonItems = [(UINavigationItem *)self->_navigationItemShowingSpinner rightBarButtonItems];
    originalRightBarButtonItems = self->_originalRightBarButtonItems;
    self->_originalRightBarButtonItems = rightBarButtonItems;

    [(UINavigationItem *)self->_navigationItemShowingSpinner setRightBarButtonItem:v8];
LABEL_8:

    goto LABEL_9;
  }

  v5 = self->_navigationItemShowingSpinner;
  topViewController2 = [(FAFamilySetupViewController *)self topViewController];
  navigationItem2 = [topViewController2 navigationItem];

  if (v5 != navigationItem2)
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
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  v5 = [(AAFamilyRequest *)[FAFamilySetupBuddyMLRequest alloc] initWithGrandSlamSigner:self->_grandSlamSigner];
  [(FAFamilySetupBuddyMLRequest *)v5 setiTunesAccount:ams_activeiTunesAccount];
  urlRequest = [(FAFamilySetupBuddyMLRequest *)v5 urlRequest];
  v7 = [urlRequest mutableCopy];
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

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  v5 = MEMORY[0x277D46210];
  modelCopy = model;
  setupAssistantModalStyle = [v5 setupAssistantModalStyle];
  [setupAssistantModalStyle applyToObjectModel:modelCopy];
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  objc_storeStrong(&self->_currentRemoteUIRequest, request);
  if (self->_startRemoteUIRequest == requestCopy)
  {
    goto LABEL_8;
  }

  v8 = [(NSMutableURLRequest *)requestCopy URL];
  absoluteString = [v8 absoluteString];
  v10 = [absoluteString containsString:@"prefs:itunes"];

  if (!v10)
  {
    v11 = [(NSMutableURLRequest *)requestCopy URL];
    absoluteString2 = [v11 absoluteString];
    v13 = [absoluteString2 containsString:@"prefs:icloud"];

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
    [(NSMutableURLRequest *)requestCopy aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
    [(NSMutableURLRequest *)requestCopy aa_addLoggedInAppleIDHeaderWithAccount:self->_account];
    clientInfoHeader = [MEMORY[0x277CEC7B8] clientInfoHeader];
    [(NSMutableURLRequest *)requestCopy setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    uppercaseString = [v17 uppercaseString];
    [(NSMutableURLRequest *)requestCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

    [(NSMutableURLRequest *)requestCopy aa_addDeviceInternalDevHeaderIfEnabled];
    [(NSMutableURLRequest *)requestCopy aa_addDeviceIDHeader];
    [(NSMutableURLRequest *)requestCopy aa_addLocationSharingAllowedHeader];
    [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:requestCopy isUserInitiated:1];
LABEL_8:
    [(NSMutableURLRequest *)requestCopy setValue:@"true" forHTTPHeaderField:@"X-MMe-Family-Setup"];
    v14 = 1;
    goto LABEL_9;
  }

  [(FAFamilySetupViewController *)self _sendUserToiTunesSettings];
LABEL_6:
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__FAFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ([responseCopy statusCode] == 401)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "BML request returned 401. We need to re-auth...", v8, 2u);
    }

    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:self->_account force:1 reason:0 completion:&__block_literal_global_85];
  }

  else if ([(NSMutableURLRequest *)self->_currentRemoteUIRequest aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:responseCopy])
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

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  delegate = [(FAFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:1];
}

- (void)_remoteUIDidCancel
{
  delegate = [(FAFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:0];
}

- (void)_sendUserToiTunesSettings
{
  delegate = [(FAFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:0];

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