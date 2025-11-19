@interface FAFamilyInvitationAcceptanceViewController
- (FAFamilyInvitationAcceptanceViewController)initWithInvite:(id)a3 appleAccount:(id)a4 grandSlamSigner:(id)a5;
- (id)_createCancelButton;
- (void)_cancelButtonWasTapped:(id)a3;
- (void)_loadiTunesLinkingRemoteUI;
- (void)_sendUserToiTunesSettings;
- (void)_showErrorAlert;
- (void)confirmIdentityViewController:(id)a3 didCompleteWithSuccess:(BOOL)a4;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 willLoadRequest:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
@end

@implementation FAFamilyInvitationAcceptanceViewController

- (FAFamilyInvitationAcceptanceViewController)initWithInvite:(id)a3 appleAccount:(id)a4 grandSlamSigner:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[FAConfirmIdentityViewController alloc] initWithAppleAccount:v10 grandSlamSigner:v11];
  [(FAConfirmIdentityViewController *)v12 setDelegate:self];
  v22.receiver = self;
  v22.super_class = FAFamilyInvitationAcceptanceViewController;
  v13 = [(FAFamilyInvitationAcceptanceViewController *)&v22 initWithRootViewController:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_grandSlamSigner, a5);
    objc_storeStrong(&v14->_invite, a3);
    objc_storeStrong(&v14->_account, a4);
    v15 = [v11 accountStore];
    accountStore = v14->_accountStore;
    v14->_accountStore = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    inviteOperationQueue = v14->_inviteOperationQueue;
    v14->_inviteOperationQueue = v17;

    v19 = [(FAConfirmIdentityViewController *)v12 navigationItem];
    v20 = [(FAFamilyInvitationAcceptanceViewController *)v14 _createCancelButton];
    [v19 setLeftBarButtonItem:v20];
  }

  return v14;
}

- (id)_createCancelButton
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CLOSE_BUTTON_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__cancelButtonWasTapped_];

  return v6;
}

- (void)_cancelButtonWasTapped:(id)a3
{
  v4 = [(FAFamilyInvitationAcceptanceViewController *)self delegate];
  [v4 familyInvitationAcceptanceViewController:self didCompleteWithSuccess:0];
}

- (void)confirmIdentityViewController:(id)a3 didCompleteWithSuccess:(BOOL)a4
{
  if (a4)
  {

    [(FAFamilyInvitationAcceptanceViewController *)self _loadiTunesLinkingRemoteUI];
  }

  else
  {
    v5 = [(FAFamilyInvitationAcceptanceViewController *)self delegate];
    [v5 familyInvitationAcceptanceViewController:self didCompleteWithSuccess:0];
  }
}

- (void)_showErrorAlert
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__FAFamilyInvitationAcceptanceViewController__showErrorAlert__block_invoke;
  v8[3] = &unk_2782F29E8;
  v8[4] = self;
  v7 = [MEMORY[0x277D75110] alertWithTitle:v4 message:0 buttonTitle:v6 actionHandler:v8];
  [(FAFamilyInvitationAcceptanceViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __61__FAFamilyInvitationAcceptanceViewController__showErrorAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 familyInvitationAcceptanceViewController:*(a1 + 32) didCompleteWithSuccess:0];
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = MEMORY[0x277D46210];
  v6 = a4;
  v7 = [v5 setupAssistantModalStyle];
  [v7 applyToObjectModel:v6];
}

- (void)remoteUIController:(id)a3 willLoadRequest:(id)a4
{
  v18 = a4;
  objc_storeStrong(&self->_currentRemoteUIRequest, a4);
  v6 = v18;
  if (self->_startRemoteUIRequest != v18)
  {
    v7 = [(NSMutableURLRequest *)v18 URL];
    v8 = [v7 absoluteString];
    v9 = [v8 containsString:@"prefs:itunes"];

    if (v9)
    {
      [(FAFamilyInvitationAcceptanceViewController *)self _sendUserToiTunesSettings];
    }

    else
    {
      v10 = [(NSMutableURLRequest *)v18 URL];
      v11 = [v10 absoluteString];
      v12 = [v11 containsString:@"prefs:icloud"];

      if (v12)
      {
        v13 = [(FAFamilyInvitationAcceptanceViewController *)self delegate];
        [v13 familyInvitationAcceptanceViewController:self didCompleteWithSuccess:0];
      }

      else
      {
        [(NSMutableURLRequest *)v18 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
        [(NSMutableURLRequest *)v18 aa_addLoggedInAppleIDHeaderWithAccount:self->_account];
        [(NSMutableURLRequest *)v18 aa_addDeviceInternalDevHeaderIfEnabled];
        [(NSMutableURLRequest *)v18 aa_addDeviceIDHeader];
        [(NSMutableURLRequest *)v18 aa_addLocationSharingAllowedHeader];
        v14 = [MEMORY[0x277CEC7B8] clientInfoHeader];
        [(NSMutableURLRequest *)v18 setValue:v14 forHTTPHeaderField:@"X-MMe-Client-Info"];

        v15 = [MEMORY[0x277CBEAF8] currentLocale];
        v16 = [v15 objectForKey:*MEMORY[0x277CBE690]];
        v17 = [v16 uppercaseString];
        [(NSMutableURLRequest *)v18 setValue:v17 forHTTPHeaderField:@"X-MMe-Country"];

        [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v18 isUserInitiated:1];
      }
    }

    v6 = v18;
  }
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  if ([(NSMutableURLRequest *)self->_currentRemoteUIRequest aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:a4])
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Device is provisioned... Reissuing request...", v6, 2u);
    }

    [(AAUIRemoteUIController *)self->_remoteUIController loadRequest:self->_currentRemoteUIRequest completion:&__block_literal_global_15];
  }
}

void __88__FAFamilyInvitationAcceptanceViewController_remoteUIController_didReceiveHTTPResponse___block_invoke(uint64_t a1, char a2, void *a3)
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
  v4 = [(FAFamilyInvitationAcceptanceViewController *)self delegate];
  [v4 familyInvitationAcceptanceViewController:self didCompleteWithSuccess:1];
}

- (void)_loadiTunesLinkingRemoteUI
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v4 = [v3 ams_activeiTunesAccount];

  v5 = [(AAFamilyRequest *)[FAFamilySetupBuddyMLRequest alloc] initWithGrandSlamSigner:self->_grandSlamSigner];
  [(FAFamilySetupBuddyMLRequest *)v5 setiTunesAccount:v4];
  v6 = [(FAFamilyInvite *)self->_invite code];
  [(FAFamilySetupBuddyMLRequest *)v5 setInviteCode:v6];

  v7 = [(FAFamilySetupBuddyMLRequest *)v5 urlRequest];
  v8 = [v7 mutableCopy];
  startRemoteUIRequest = self->_startRemoteUIRequest;
  self->_startRemoteUIRequest = v8;

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Will load Family Setup remote UI using request: %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x277CECAB8]);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v11;

  [(AAUIRemoteUIController *)self->_remoteUIController setDelegate:self];
  [(AAUIRemoteUIController *)self->_remoteUIController setNavigationController:self];
  v13 = self->_remoteUIController;
  v14 = self->_startRemoteUIRequest;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__FAFamilyInvitationAcceptanceViewController__loadiTunesLinkingRemoteUI__block_invoke;
  v16[3] = &unk_2782F3568;
  v16[4] = self;
  [(AAUIRemoteUIController *)v13 loadRequest:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __72__FAFamilyInvitationAcceptanceViewController__loadiTunesLinkingRemoteUI__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Failed to load Family Setup remote UI: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _showErrorAlert];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendUserToiTunesSettings
{
  v3 = [(FAFamilyInvitationAcceptanceViewController *)self delegate];
  [v3 familyInvitationAcceptanceViewController:self didCompleteWithSuccess:0];

  v4 = dispatch_time(0, 500000000);
  v5 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v5, &__block_literal_global_67);
}

void __71__FAFamilyInvitationAcceptanceViewController__sendUserToiTunesSettings__block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277D08358] urlDestinationTo:7 error:&v2];
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v1 openSensitiveURL:v0 withOptions:0];
}

@end