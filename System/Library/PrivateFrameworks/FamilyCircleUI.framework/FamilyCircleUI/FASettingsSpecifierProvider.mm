@interface FASettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_isEnabled;
- (BOOL)handleURL:(id)l;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (BOOL)shouldUseModernNavigationForPresenter:(id)presenter;
- (FASettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_acuPresenter;
- (id)_appleAccount;
- (id)_configureContextWithType:(id)type resourceDictionary:(id)dictionary;
- (id)_familyBaseSpecifierWithState:(unint64_t)state;
- (id)_familySpecifier;
- (id)_grandSlamSigner;
- (id)_invitationsCellSpecifier;
- (id)_requestConfigurator;
- (id)_valueForFamilySpecifier:(id)specifier;
- (id)getFamilyStatusText:(int64_t)text pendingMemberCount:(int64_t)count me:(id)me;
- (unint64_t)_familyState;
- (void)_clearFamilyState;
- (void)_handleFamilyDetailsResponse:(id)response error:(id)error completion:(id)completion;
- (void)_handleFamilyEligibilityResponse:(id)response completion:(id)completion;
- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal;
- (void)_handleShowFamilySettingsURL:(id)l;
- (void)_handleShowFamilySettingsV2WithResourceDictionary:(id)dictionary;
- (void)_handleShowInviteActionURL:(id)l isChildTransfer:(BOOL)transfer;
- (void)_handleShowInvitesActionURL:(id)l;
- (void)_handleStartFamilySetupActionURL:(id)l;
- (void)_initiateFamilyWithResources:(id)resources;
- (void)_loadFamilyDetailsWithCompletion:(id)completion;
- (void)_loadFamilyEligibilityWithCompletion:(id)completion;
- (void)_pendingInvitationsSpecifierWasTapped:(id)tapped;
- (void)_presentFlowWithEventType:(id)type completion:(id)completion;
- (void)_presentPendingInvitesRemoteUI;
- (void)_presentViewController:(id)controller;
- (void)_reloadFamily;
- (void)_setUpFamilySpecifierWasTapped:(id)tapped;
- (void)_showUnderageAlertWithEligibilityResponse:(id)response;
- (void)_viewFamilySpecifierWasTapped;
- (void)_viewFamilyWithResourceDictionary:(id)dictionary;
- (void)dealloc;
- (void)familySettingsViewController2StopFamilySharing:(id)sharing;
- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)presentFamilySettingsFromPresenter:(id)presenter;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation FASettingsSpecifierProvider

- (FASettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v9 = [(FASettingsSpecifierProvider *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_presenter, presenterCopy);
    objc_storeStrong(&v10->_accountManager, manager);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingFamilyDetailsCompletionBlocks = v10->_pendingFamilyDetailsCompletionBlocks;
    v10->_pendingFamilyDetailsCompletionBlocks = v11;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleFamilyChanged_ name:*MEMORY[0x277D080E0] object:0];

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v10->_networkActivityQueue;
    v10->_networkActivityQueue = v14;

    v16 = v10->_networkActivityQueue;
    v17 = dispatch_get_global_queue(33, 0);
    [(NSOperationQueue *)v16 setUnderlyingQueue:v17];
  }

  return v10;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [(AIDAAccountManager *)self->_accountManager aidaAccountForService:*MEMORY[0x277CED1A0]];
    v5 = objc_alloc(MEMORY[0x277CEC808]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v7 = [v5 initWithAccountStore:accountStore grandSlamAccount:v4 appTokenID:*MEMORY[0x277CEC6F0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_requestConfigurator
{
  requestConfigurator = self->_requestConfigurator;
  if (!requestConfigurator)
  {
    v4 = objc_alloc(MEMORY[0x277D082E8]);
    _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
    v6 = [v4 initWithAccount:_appleAccount];
    v7 = self->_requestConfigurator;
    self->_requestConfigurator = v6;

    requestConfigurator = self->_requestConfigurator;
  }

  return requestConfigurator;
}

- (BOOL)_isEnabled
{
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v3 = _appleAccount;
  if (_appleAccount)
  {
    if ([_appleAccount aa_needsToVerifyTerms])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      aa_suspensionInfo = [v3 aa_suspensionInfo];
      v4 = [aa_suspensionInfo isFamilySuspended] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)setSpecifiers:(id)specifiers
{
  objc_storeStrong(&self->_specifiers, specifiers);
  if (!self->_specifiers && self->_didFailToGetFamilyDetails)
  {
    self->_didFailToGetFamilyDetails = 0;
  }
}

- (NSArray)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([MEMORY[0x277CEC7B8] isMultiUserMode])
  {
    _familySpecifier = _FALogSystem();
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v5 = "Device is in multi-user mode, not showing Family Sharing specifiers.";
LABEL_12:
    _os_log_impl(&dword_21BB35000, _familySpecifier, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    goto LABEL_13;
  }

  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];

  if (!_appleAccount)
  {
    _familySpecifier = _FALogSystem();
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v5 = "User not signed in to AppleAccount, not showing family sharing specifiers.";
    goto LABEL_12;
  }

  _familySpecifier = [(FASettingsSpecifierProvider *)self _familySpecifier];
  if (_familySpecifier)
  {
    [v3 addObject:_familySpecifier];
  }

  _invitationsCellSpecifier = [(FASettingsSpecifierProvider *)self _invitationsCellSpecifier];
  if (_invitationsCellSpecifier)
  {
    [v3 insertObject:_invitationsCellSpecifier atIndex:0];
  }

LABEL_13:
  if ([v3 count] >= 2)
  {
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Family"];
    [v3 insertObject:v8 atIndex:0];
  }

  if (![(FASettingsSpecifierProvider *)self _isEnabled])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      v13 = *MEMORY[0x277D3FF38];
      v14 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v22 + 1) + 8 * i) setProperty:v14 forKey:{v13, v22}];
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }
  }

  v16 = [v3 copy];
  specifiers = self->_specifiers;
  self->_specifiers = v16;

  v18 = self->_specifiers;
  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)_familyState
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_didFailToGetFamilyDetails)
  {
    v2 = 4;
    goto LABEL_10;
  }

  if (self->_isLoadingFamilyDetails)
  {
    v2 = 3;
    goto LABEL_10;
  }

  pendingMembers = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
  if ([pendingMembers count])
  {

LABEL_8:
    v2 = 1;
LABEL_9:
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:v2 forKey:@"_FAFamilyCachedFamilyStateKey"];

    goto LABEL_10;
  }

  members = [(FAFamilyCircle *)self->_familyCircle members];
  v6 = [members count];

  if (v6)
  {
    goto LABEL_8;
  }

  if (self->_familyEligibilityStatus)
  {
    v2 = 2;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_10:
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v2;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Returning FAFamilySpecifierState - %lu", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)_invitationsCellSpecifier
{
  if (self->_invitationSummary || self->_isHandlingURLForInvite)
  {
    invitationsCellSpecifier = self->_invitationsCellSpecifier;
    if (!invitationsCellSpecifier)
    {
      v4 = MEMORY[0x277D3FAD8];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"FAMILY_INVITATIONS_CELL" value:&stru_282D9AA68 table:@"Localizable"];
      v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:sel__valueForInvitiationsSpecifier_ detail:0 cell:2 edit:0];
      v8 = self->_invitationsCellSpecifier;
      self->_invitationsCellSpecifier = v7;

      [(PSSpecifier *)self->_invitationsCellSpecifier setControllerLoadAction:sel__pendingInvitationsSpecifierWasTapped_];
      [(PSSpecifier *)self->_invitationsCellSpecifier setIdentifier:@"INVITATIONS"];
      invitationsCellSpecifier = self->_invitationsCellSpecifier;
    }

    v9 = invitationsCellSpecifier;
  }

  else
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "No invitations returning nil invitations specfier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_familySpecifier
{
  v19 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _familyState = [standardUserDefaults integerForKey:@"_FAFamilyCachedFamilyStateKey"];

  v5 = _familyState && !self->_familyCircle && !self->_didFailToGetFamilyDetails;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v16 = v5;
    v17 = 2048;
    v18 = _familyState;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Using cache - %d with state - %lu", buf, 0x12u);
  }

  if (self->_familyCircle || self->_didFailToGetFamilyDetails)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:0];
  if (!v5)
  {
LABEL_10:
    _familyState = [(FASettingsSpecifierProvider *)self _familyState];
  }

LABEL_11:
  if (_familyState > 2)
  {
    if (_familyState == 3)
    {
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      goto LABEL_24;
    }

    if (_familyState == 4)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FAILED_TO_LOAD_FAMILY_STATUS" value:&stru_282D9AA68 table:@"Localizable"];
      v7 = [v9 preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

      [v7 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      goto LABEL_24;
    }
  }

  else
  {
    if (_familyState == 1)
    {
      v7 = [(FASettingsSpecifierProvider *)self _familyBaseSpecifierWithState:1];
      [v7 setControllerLoadAction:sel__viewFamilySpecifierWasTapped];
      v8 = @"Family";
      goto LABEL_22;
    }

    if (_familyState == 2)
    {
      v7 = [(FASettingsSpecifierProvider *)self _familyBaseSpecifierWithState:2];
      [v7 setButtonAction:sel__setUpFamilySpecifierWasTapped_];
      v8 = @"INITIATE_FAMILY";
LABEL_22:
      [v7 setIdentifier:v8];
      goto LABEL_24;
    }
  }

  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Invalid family state, returning nil specifier", buf, 2u);
  }

  v7 = 0;
LABEL_24:
  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_familyBaseSpecifierWithState:(unint64_t)state
{
  v5 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CELL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
  v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:sel__valueForFamilySpecifier_ detail:0 cell:2 edit:0];

  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v8 setObject:@"com.apple.application-icon.family" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [v8 setProperty:v9 forKey:@"_FAFamilyCachedFamilyStateKey"];

  return v8;
}

- (void)_loadFamilyDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  if (_appleAccount)
  {
    if (completionCopy)
    {
      pendingFamilyDetailsCompletionBlocks = self->_pendingFamilyDetailsCompletionBlocks;
      v7 = _Block_copy(completionCopy);
      [(NSMutableArray *)pendingFamilyDetailsCompletionBlocks addObject:v7];
    }

    if (!self->_isLoadingFamilyDetails)
    {
      self->_isLoadingFamilyDetails = 1;
      v8 = objc_opt_new();
      [v8 setCachePolicy:{-[FASettingsSpecifierProvider cachePolicy](self, "cachePolicy")}];
      [v8 setQualityOfService:33];
      [v8 setPromptUserToResolveAuthenticatonFailure:1];
      v9 = _FALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Starting family request.", buf, 2u);
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke;
      v11[3] = &unk_2782F3A88;
      v11[4] = self;
      [v8 startRequestWithCompletionHandler:v11];
    }
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Attempted to load family details without an Apple Account, bailing!", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FACacheImageMarqueeOperationWrapper op being fired off", buf, 2u);
  }

  v8 = [[FACacheImageMarqueeOperationWrapper alloc] initWithFamilyCircle:v5];
  [(FACacheImageMarqueeOperationWrapper *)v8 generateMarqueeWith:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_88;
  block[3] = &unk_2782F3190;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_88(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_2;
  v5[3] = &unk_2782F3A60;
  v5[4] = v2;
  return [v2 _handleFamilyDetailsResponse:v1 error:v3 completion:v5];
}

_BYTE *__64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 64) removeAllObjects];
  result = *(a1 + 32);
  if (result[160] == 1 && a2 != 0)
  {
    [result _setUpFamilySpecifierWasTapped:0];
    result = *(a1 + 32);
  }

  result[160] = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleFamilyDetailsResponse:(id)response error:(id)error completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  self->_isLoadingFamilyDetails = 0;
  if (errorCopy)
  {
    self->_didFailToGetFamilyDetails = 1;
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = errorCopy;
      _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get family details: %@", buf, 0xCu);
    }

    [(FASettingsSpecifierProvider *)self reloadSpecifiers];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_storeStrong(&self->_familyCircle, response);
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _serverResponse = [(FAFamilyCircle *)self->_familyCircle _serverResponse];
      *buf = 138412290;
      v36 = _serverResponse;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Family details response: %@", buf, 0xCu);
    }

    invites = [(FAFamilyCircle *)self->_familyCircle invites];
    v16 = [invites count];

    if (v16 >= 1 && [(FAFamilyCircle *)self->_familyCircle shouldShowInvites])
    {
      v17 = MEMORY[0x277CCABB8];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v19 = [v17 localizedStringFromNumber:v18 numberStyle:0];
      invitationSummary = self->_invitationSummary;
      self->_invitationSummary = v19;

      invites2 = [(FAFamilyCircle *)self->_familyCircle invites];
      v22 = [invites2 mutableCopy];
      pendingInvites = self->_pendingInvites;
      self->_pendingInvites = v22;
    }

    members = [(FAFamilyCircle *)self->_familyCircle members];
    v25 = [members count];

    pendingMembers = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
    v27 = [pendingMembers count];

    if (v27 | v25)
    {
      v29 = [(FAFamilyCircle *)self->_familyCircle me];
      v30 = [(FASettingsSpecifierProvider *)self getFamilyStatusText:v25 pendingMemberCount:v27 me:v29];
      familyStatusSummary = self->_familyStatusSummary;
      self->_familyStatusSummary = v30;

      [(FASettingsSpecifierProvider *)self reloadSpecifiers];
      completionCopy[2](completionCopy, 1);
    }

    else
    {
      v28 = self->_familyStatusSummary;
      self->_familyStatusSummary = 0;

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __77__FASettingsSpecifierProvider__handleFamilyDetailsResponse_error_completion___block_invoke;
      v33[3] = &unk_2782F3AB0;
      v33[4] = self;
      v34 = completionCopy;
      [(FASettingsSpecifierProvider *)self _loadFamilyEligibilityWithCompletion:v33];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __77__FASettingsSpecifierProvider__handleFamilyDetailsResponse_error_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)getFamilyStatusText:(int64_t)text pendingMemberCount:(int64_t)count me:(id)me
{
  v24 = *MEMORY[0x277D85DE8];
  meCopy = me;
  if ([meCopy hasLinkediTunesAccount])
  {
    if (text <= 1)
    {
      if (count < 1)
      {
        text = 0;
        goto LABEL_15;
      }

      if (count == 1)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        text = [v10 localizedStringForKey:@"FAMILY_SENT_INVITE_ONE" value:&stru_282D9AA68 table:@"Localizable"];
LABEL_14:

        goto LABEL_15;
      }

      v16 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FAMILY_SENT_INVITES_MANY" value:&stru_282D9AA68 table:@"Localizable"];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      text = [v16 stringWithFormat:v11, v17];
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FAMILY_MEMBERS_IN_FAMILY" value:&stru_282D9AA68 table:@"Localizable"];
      text = [v9 localizedStringWithFormat:v11, text];
    }

    goto LABEL_14;
  }

  text = [meCopy iTunesNotLinkedMessage];
  if (![text length])
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [meCopy appleID];
      _serverResponse = [(FAFamilyCircle *)self->_familyCircle _serverResponse];
      *buf = 138412546;
      v21 = appleID;
      v22 = 2112;
      v23 = _serverResponse;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Member %@ is not sharing purchases but there is no iTunesNotLinkedMessage, response dictionary is %@", buf, 0x16u);
    }
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return text;
}

- (void)_setUpFamilySpecifierWasTapped:(id)tapped
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v10 = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Setup Family activated with presenter %@", &v10, 0xCu);
  }

  if (self->_familyEligibilityResponse)
  {
    familyEligibilityStatus = self->_familyEligibilityStatus;
    if (familyEligibilityStatus == 1)
    {
      v8 = _FALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Starting Family Setup Flow", &v10, 2u);
      }

      [(FASettingsSpecifierProvider *)self _initiateFamily];
    }

    else if (familyEligibilityStatus == 2)
    {
      [(FASettingsSpecifierProvider *)self _showUnderageAlertWithEligibilityResponse:?];
    }
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Error: The user tapped the Family setup specifier before we got a response from the server. We need to confirm eligibility prior.", &v10, 2u);
    }

    self->_delayedEnterInitiateFlow = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_reloadFamily
{
  [(FASettingsSpecifierProvider *)self _clearFamilyState];

  [(FASettingsSpecifierProvider *)self _reloadFamilySpecifiersAnimated:1];
}

- (void)_initiateFamilyWithResources:(id)resources
{
  resourcesCopy = resources;
  v5 = [(FASettingsSpecifierProvider *)self _configureContextWithType:@"FACircleEventTypeInitiate" resourceDictionary:resourcesCopy];
  context = self->_context;
  self->_context = v5;

  v7 = [(NSArray *)self->_specifiers specifierForID:@"INITIATE_FAMILY"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self willBeginLoadingSpecifier:v7];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v9 = [FACircleStateController alloc];
  v10 = objc_loadWeakRetained(&self->_presenter);
  v22 = [(FACircleStateController *)v9 initWithPresenter:v10];

  [v18[5] setPresentationType:2];
  v11 = v18[5];
  v12 = self->_context;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke;
  v14[3] = &unk_2782F3AD8;
  v16 = &v17;
  v14[4] = self;
  v13 = v7;
  v15 = v13;
  [v11 performWithContext:v12 completion:v14];

  _Block_object_dispose(&v17, 8);
}

void __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke_2;
  block[3] = &unk_2782F3190;
  v6 = a1[5];
  block[4] = a1[4];
  v9 = v6;
  v10 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];

  result = [*(a1 + 48) loadSuccess];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _reloadFamily];
  }

  return result;
}

- (id)_configureContextWithType:(id)type resourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v7 = [[FACircleContext alloc] initWithEventType:typeCopy];

  [(FACircleContext *)v7 setClientName:@"Preferences"];
  if ([dictionaryCopy count])
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientAppContext"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"clientAppContext"];
      [(FACircleContext *)v7 setClientName:v9];
    }
  }

  return v7;
}

- (void)_showUnderageAlertWithEligibilityResponse:(id)response
{
  responseCopy = response;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Error: showing underage alert.", buf, 2u);
  }

  underageEligibilityAlertTitle = [responseCopy underageEligibilityAlertTitle];
  underageEligibilityAlertMessage = [responseCopy underageEligibilityAlertMessage];

  if (underageEligibilityAlertTitle | underageEligibilityAlertMessage)
  {
    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v8 = [v9 alertWithTitle:underageEligibilityAlertTitle message:underageEligibilityAlertMessage buttonTitle:v11];

    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Server did not provide under alert title and message. Cannot show alert!", v13, 2u);
    }
  }
}

- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  if (success)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__FASettingsSpecifierProvider_familySetupViewController_didCompleteWithSuccess___block_invoke;
    v5[3] = &unk_2782F3A60;
    v5[4] = self;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

void __80__FASettingsSpecifierProvider_familySetupViewController_didCompleteWithSuccess___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = *(a1 + 32);
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 4);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];

    v6 = *(a1 + 32);

    [v6 _viewFamilySpecifierWasTapped];
  }

  else
  {
    [v4 _viewFamilySpecifierWasTapped];
    v7 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_pendingInvitationsSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!self->_familyCircle)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Error: pending invites specifier cannot possibly be tapped when no family info is available!";
      v8 = &v10;
LABEL_8:
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![(NSMutableArray *)self->_pendingInvites count])
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "No invites to send to the Invitations VC.";
      v8 = &v9;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(PSSpecifier *)self->_invitationsCellSpecifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  delegate = [(FASettingsSpecifierProvider *)self delegate];
  [delegate specifierProvider:self willBeginLoadingSpecifier:self->_invitationsCellSpecifier];

  [(FASettingsSpecifierProvider *)self _presentPendingInvitesRemoteUI];
LABEL_10:
}

- (void)_presentFlowWithEventType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = completionCopy;
  if (typeCopy)
  {
    v9 = [[FACircleContext alloc] initWithEventType:typeCopy];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v10 = [FACircleStateController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v21 = [(FACircleStateController *)v10 initWithPresenter:WeakRetained];

    v12 = v17[5];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__FASettingsSpecifierProvider__presentFlowWithEventType_completion___block_invoke;
    v13[3] = &unk_2782F3B00;
    v15 = &v16;
    v14 = v8;
    [v12 performWithContext:v9 completion:v13];

    _Block_object_dispose(&v16, 8);
LABEL_5:

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:1 error:0 userInfo:0];
    (v8)[2](v8, v9);
    goto LABEL_5;
  }

LABEL_6:
}

void __68__FASettingsSpecifierProvider__presentFlowWithEventType_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)_presentPendingInvitesRemoteUI
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke;
  v2[3] = &unk_2782F3B28;
  v2[4] = self;
  [(FASettingsSpecifierProvider *)self _presentFlowWithEventType:@"FACircleEventTypeGetFamilyInvitationsUI" completion:v2];
}

void __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke_2;
  block[3] = &unk_2782F29E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadFamily];
  [*(*(a1 + 32) + 48) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(*(a1 + 32) + 48)];
}

- (id)_valueForFamilySpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"_FAFamilyCachedFamilyStateKey"];
  integerValue = [v4 integerValue];

  if (integerValue == 2)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SETUP_FAMILY" value:&stru_282D9AA68 table:@"Localizable"];
  }

  else
  {
    v7 = self->_familyStatusSummary;
  }

  return v7;
}

- (void)_viewFamilySpecifierWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = [(FASettingsSpecifierProvider *)self shouldUseModernNavigationForPresenter:WeakRetained];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_presenter);
    [(FASettingsSpecifierProvider *)self presentFamilySettingsFromPresenter:v5];
  }

  else
  {
    [(FASettingsSpecifierProvider *)self _viewFamilyWithResourceDictionary:self->_cachedResourceDictionary];
  }

  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = 0;
}

- (void)_viewFamilyWithResourceDictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = dictionaryCopy;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "_viewFamilyWithResourceDictionary: %@", buf, 0xCu);
  }

  v5 = [(NSArray *)self->_specifiers specifierForID:@"Family"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self didFinishLoadingSpecifier:v5];

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 specifierProvider:self willBeginLoadingSpecifier:v5];

  if (!v5)
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Family" target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v5 setIdentifier:@"Family"];
  }

  if (self->_familyCircle)
  {
    if (!self->_familyPictureStore)
    {
      v8 = [[FAProfilePictureStore alloc] initWithFamilyCircle:self->_familyCircle];
      familyPictureStore = self->_familyPictureStore;
      self->_familyPictureStore = v8;
    }

    v10 = [FAFamilySettingsMemberSpecifierProvider alloc];
    _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
    v25 = [(FAFamilySettingsMemberSpecifierProvider *)v10 initWithAppleAccount:_appleAccount familyCircle:self->_familyCircle familyPictureStore:self->_familyPictureStore];

    v12 = [_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2 alloc];
    _appleAccount2 = [(FASettingsSpecifierProvider *)self _appleAccount];
    _grandSlamSigner = [(FASettingsSpecifierProvider *)self _grandSlamSigner];
    familyCircle = self->_familyCircle;
    v16 = self->_familyPictureStore;
    accountManager = self->_accountManager;
    mEMORY[0x277D082D0] = [MEMORY[0x277D082D0] sharedInstance];
    v19 = [(FAFamilySettingsViewControllerV2 *)v12 initWithAppleAccount:_appleAccount2 grandSlamSigner:_grandSlamSigner familyCircle:familyCircle pictureStore:v16 accountManager:accountManager peopleDiscoveryService:mEMORY[0x277D082D0]];

    [(FAFamilySettingsViewControllerV2 *)v19 setDelegate:self];
    v20 = objc_loadWeakRetained(&self->_presenter);
    rootController = [v20 rootController];
    [(FARestorableViewController *)v19 setRootController:rootController];

    [(FARestorableViewController *)v19 setSpecifier:v5];
    objc_initWeak(buf, self);
    v22 = self->_familyPictureStore;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3;
    v27[3] = &unk_2782F3B78;
    objc_copyWeak(&v32, buf);
    v23 = v19;
    v28 = v23;
    v29 = v5;
    selfCopy = self;
    v31 = dictionaryCopy;
    [(FAProfilePictureStore *)v22 fetchProfileImagesWithCompletion:v27];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke;
    v33[3] = &unk_2782F3B50;
    v33[4] = self;
    v34 = dictionaryCopy;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v33];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_2;
  v2[3] = &unk_2782F2AF8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 23);
    [v4 specifierProvider:v3 didFinishLoadingSpecifier:*(a1 + 40)];

    v5 = objc_loadWeakRetained(v3 + 4);
    [*(a1 + 32) set_presenter:v5];

    [*(a1 + 48) _presentViewController:*(a1 + 32)];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) fa_eventTypeForFamilyActionURL];
    [v6 _presentFlowWithEventType:v7 completion:0];
  }

  else
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3_cold_1(a1, v8);
    }
  }
}

- (void)_loadFamilyEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke;
  aBlock[3] = &unk_2782F2B38;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_2;
  v14[3] = &unk_2782F3BC8;
  v14[4] = self;
  v15 = completionCopy;
  v6 = completionCopy;
  v7 = _Block_copy(v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_4;
  v11[3] = &unk_2782F3C18;
  v11[4] = self;
  v12 = v5;
  v13 = v7;
  v8 = v7;
  v9 = v5;
  v10 = _Block_copy(v11);
  v9[2](v9, v10);
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEC7E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _grandSlamSigner];
  v10 = [v5 initWithGrandSlamSigner:v6];

  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  [v10 setITunesAccount:v8];

  v9 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v10 handler:v4];
  [*(*(a1 + 32) + 120) addOperation:v9];
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_3;
  block[3] = &unk_2782F3BA0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_4(id *a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] _appleAccount];
  if ([v3 statusCode] == 401 && v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Family eligibility check request returned 401. We need to re-auth...", buf, 2u);
    }

    v6 = *MEMORY[0x277CB90A0];
    v19[0] = MEMORY[0x277CBEC38];
    v7 = *MEMORY[0x277CB9090];
    v18[0] = v6;
    v18[1] = v7;
    v17 = *MEMORY[0x277CEC6F0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v10 = [a1[4] _accountStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_126;
    v12[3] = &unk_2782F3BF0;
    v14 = a1[5];
    v15 = a1[6];
    v13 = v3;
    [v10 renewCredentialsForAccount:v4 options:v9 completion:v12];
  }

  else
  {
    (*(a1[6] + 2))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family eligibility check request: %ld. Error: %@", buf, 0x16u);
  }

  if (a2)
  {
    v7 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_127;
    v9[3] = &unk_2782F2BD8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleFamilyEligibilityResponse:(id)response completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  error = [responseCopy error];

  if (error)
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [responseCopy error];
      v14 = 138412290;
      v15 = error2;
      v12 = "Failed to get family eligibility: %@";
LABEL_6:
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
    }
  }

  else
  {
    self->_familyEligibilityStatus = [responseCopy eligibilityStatus];
    objc_storeStrong(&self->_familyEligibilityResponse, response);
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [(AAFamilyEligibilityResponse *)self->_familyEligibilityResponse responseDictionary];
      v14 = 138412290;
      v15 = error2;
      v12 = "Family eligibility response: %@";
      goto LABEL_6;
    }
  }

  completionCopy[2](completionCopy, error == 0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_clearFamilyState
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FASettingsSpecifierProvider _clearFamilyState", v9, 2u);
  }

  self->_didFailToGetFamilyDetails = 0;
  familyCircle = self->_familyCircle;
  self->_familyCircle = 0;

  pendingInvites = self->_pendingInvites;
  self->_pendingInvites = 0;

  self->_familyEligibilityStatus = 0;
  familyStatusSummary = self->_familyStatusSummary;
  self->_familyStatusSummary = 0;

  invitationSummary = self->_invitationSummary;
  self->_invitationSummary = 0;

  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = 0;
}

- (BOOL)handleURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy copy];
  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = v5;

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = lCopy;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Handle URL in: %@", &v12, 0xCu);
  }

  v8 = [lCopy objectForKeyedSubscript:@"aaaction"];
  if ([v8 isEqual:@"showFamilyInvite"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilyInviteActionURL:lCopy];
  }

  else if ([v8 isEqual:@"setupFamily"])
  {
    [(FASettingsSpecifierProvider *)self _handleStartFamilySetupActionURL:lCopy];
  }

  else if ([v8 isEqual:@"showFamilySettings"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilySettingsURL:lCopy];
  }

  else if ([v8 isEqual:@"showFamilySettingsV2"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilySettingsV2WithResourceDictionary:lCopy];
  }

  else if ([v8 isEqual:@"showChildTransferRequest"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowChildTransferActionURL:lCopy];
  }

  else
  {
    if (![v8 isEqual:@"showAllInvites"])
    {
      v9 = 0;
      goto LABEL_16;
    }

    [(FASettingsSpecifierProvider *)self _handleShowInvitesActionURL:lCopy];
  }

  v9 = 1;
LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_handleShowFamilySettingsV2WithResourceDictionary:(id)dictionary
{
  v4 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getSettingsViewControllerWithResourceDictionary:dictionary];
  [(FASettingsSpecifierProvider *)self _presentViewController:v4];
}

- (void)_presentViewController:(id)controller
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  navigationController = [WeakRetained navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers containsObject:controllerCopy];

  if (v8)
  {
    splitViewController = _FALogSystem();
    if (os_log_type_enabled(splitViewController, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = controllerCopy;
      _os_log_impl(&dword_21BB35000, splitViewController, OS_LOG_TYPE_DEFAULT, "View Controller %@ already exists in Navigation stack, can't push another", &v18, 0xCu);
    }
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_presenter);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = _FALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_presenter);
        v18 = 138412546;
        v19 = controllerCopy;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Calling showController with settingsViewController %@ for presenter %@", &v18, 0x16u);
      }

      splitViewController = objc_loadWeakRetained(&self->_presenter);
      [splitViewController showController:controllerCopy animate:1];
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_presenter);
      splitViewController = [v14 splitViewController];

      v15 = _FALogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_loadWeakRetained(&self->_presenter);
        v18 = 138412802;
        v19 = controllerCopy;
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = splitViewController;
        _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Calling showInitialViewController with settingsViewController %@ for presenter %@ with splitViewController %@", &v18, 0x20u);
      }

      [splitViewController showInitialViewController:controllerCopy];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleShowInvitesActionURL:(id)l
{
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v5 = _appleAccount;
  if (!_appleAccount)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "User not signed in to an Apple Account. How did you even get here?";
LABEL_8:
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([_appleAccount aa_isPrimaryAccount] & 1) == 0)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Non-primary accounts cannot see family invites. How did you even get here?";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__FASettingsSpecifierProvider__handleShowInvitesActionURL___block_invoke;
  v8[3] = &unk_2782F3A60;
  v8[4] = self;
  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v8];
LABEL_10:
}

void __59__FASettingsSpecifierProvider__handleShowInvitesActionURL___block_invoke(uint64_t a1, char a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v4 = [v3 _acuPresenter];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v4 showConfirmationWithButtons:v10 title:v13 message:0 destructive:0 completion:0];

LABEL_6:
    goto LABEL_7;
  }

  v4 = [v3[1] invites];
  v5 = [v4 count];
  v6 = *(a1 + 32);
  if (!v5)
  {
    v8 = [v6 _acuPresenter];
    v14 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v9 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v21 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"NO_INVITATIONS_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
    [v8 showConfirmationWithButtons:v16 title:v19 message:0 destructive:0 completion:0];

    goto LABEL_6;
  }

  [v6 _presentPendingInvitesRemoteUI];
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleShowFamilySettingsURL:(id)l
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__FASettingsSpecifierProvider__handleShowFamilySettingsURL___block_invoke;
  v3[3] = &unk_2782F3A60;
  v3[4] = self;
  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v3];
}

void __60__FASettingsSpecifierProvider__handleShowFamilySettingsURL___block_invoke(uint64_t a1, char a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v6 = [v3 _acuPresenter];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v6 showConfirmationWithButtons:v11 title:v14 message:0 destructive:0 completion:0];

LABEL_7:
    goto LABEL_8;
  }

  v4 = [v3[1] members];
  v5 = [v4 count];

  v6 = _FALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "No family member found. Staying at spyglass.", v16, 2u);
    }

    goto LABEL_7;
  }

  if (v7)
  {
    *v16 = 0;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Viewing family.", v16, 2u);
  }

  [*(a1 + 32) _viewFamilySpecifierWasTapped];
LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

- (id)_acuPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_handleShowInviteActionURL:(id)l isChildTransfer:(BOOL)transfer
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v8 = _appleAccount;
  if (!_appleAccount)
  {
    v9 = _FALogSystem();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v17 = "User not signed in to an Apple Account. How did you even get here?";
LABEL_11:
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    goto LABEL_15;
  }

  if (([_appleAccount aa_isPrimaryAccount] & 1) == 0)
  {
    v9 = _FALogSystem();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v17 = "Non-primary accounts cannot accept family invites. How did you even get here?";
    goto LABEL_11;
  }

  v9 = [lCopy objectForKeyedSubscript:@"inviteCode"];
  if (v9)
  {
    self->_isHandlingURLForInvite = 1;
    v10 = [lCopy objectForKeyedSubscript:@"organizerFirstName"];
    v11 = [lCopy objectForKeyedSubscript:@"organizerLastName"];
    v12 = [lCopy objectForKeyedSubscript:@"organizerEmail"];
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "About to present family invite coming from %@ %@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__FASettingsSpecifierProvider__handleShowInviteActionURL_isChildTransfer___block_invoke;
    v19[3] = &unk_2782F3C40;
    v19[4] = self;
    transferCopy = transfer;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v14 = v12;
    v15 = v11;
    v16 = v10;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v19];
  }

  else
  {
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "Asked to show family invite details but no invite code was provided.", buf, 2u);
    }
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

void __74__FASettingsSpecifierProvider__handleShowInviteActionURL_isChildTransfer___block_invoke(uint64_t a1, char a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 112) = 0;
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v4 = [v3 _acuPresenter];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v29[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v4 showConfirmationWithButtons:v12 title:v15 message:0 destructive:0 completion:0];

LABEL_14:
    goto LABEL_15;
  }

  v4 = [v3[1] invites];
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [v6 code];
      v8 = [v7 isEqualToString:*(a1 + 40)];

      if (v8)
      {
        break;
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_9;
      }
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) _presentPendingInvitesRemoteUI];
      goto LABEL_15;
    }
  }

LABEL_9:
  if (*(a1 + 72) != 1)
  {
    v10 = objc_alloc_init(MEMORY[0x277D08260]);
    [v10 setCode:*(a1 + 40)];
    [v10 setOrganizerFirstName:*(a1 + 48)];
    [v10 setOrganizerLastName:*(a1 + 56)];
    [v10 setOrganizerEmail:*(a1 + 64)];
    v11 = [v4 mutableCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v11 insertObject:v10 atIndex:0];
    [*(a1 + 32) _presentPendingInvitesRemoteUI];
    goto LABEL_14;
  }

  v27 = [*(a1 + 32) _acuPresenter];
  v16 = *(a1 + 32);
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
  v28 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v20 = *(a1 + 32);
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"INVALID_INVITE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v23 = *(a1 + 32);
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"INVALID_INVITE_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
  [v27 showConfirmationWithButtons:v19 title:v22 message:v25 destructive:0 completion:0];

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleStartFamilySetupActionURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController)
  {
    v6 = objc_loadWeakRetained(&self->_presenter);
    [v6 dismissViewControllerAnimated:0 completion:0];
  }

  [(FASettingsSpecifierProvider *)self _initiateFamilyWithResources:lCopy];
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  v14[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _requestConfigurator = [(FASettingsSpecifierProvider *)self _requestConfigurator];
  [_requestConfigurator addFresnoHeadersToRequest:requestCopy];

  _requestConfigurator2 = [(FASettingsSpecifierProvider *)self _requestConfigurator];
  v13 = @"clientAppContext";
  clientName = [(FACircleContext *)self->_context clientName];
  v14[0] = clientName;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [_requestConfigurator2 addFresnoPayloadToRequest:requestCopy additionalPayload:v10];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FASettingsSpecifierProvider *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:0];
  }
}

- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [modelCopy identifier];
    v34 = 138412290;
    v35 = identifier;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Handling an object model: %@", &v34, 0xCu);
  }

  clientInfo = [modelCopy clientInfo];
  v10 = [clientInfo objectForKeyedSubscript:@"needsProfilePhotoHeader"];
  v11 = [v10 isEqual:@"true"];

  if (v11)
  {
    defaultPages = [modelCopy defaultPages];
    firstObject = [defaultPages firstObject];

    hasTableView = [firstObject hasTableView];
    v15 = _FALogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (hasTableView)
    {
      if (v16)
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Handing page over to FAFamilyMemberDetailsPageSurrogate...", &v34, 2u);
      }

      v15 = objc_alloc_init(MEMORY[0x277CEC7F0]);
      _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_firstName = [_appleAccount aa_firstName];
      [v15 setFirstName:aa_firstName];

      _appleAccount2 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_lastName = [_appleAccount2 aa_lastName];
      [v15 setLastName:aa_lastName];

      _appleAccount3 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_appleId = [_appleAccount3 aa_appleId];
      [v15 setAppleID:aa_appleId];

      v23 = MEMORY[0x277CCABB0];
      _appleAccount4 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_personID = [_appleAccount4 aa_personID];
      v26 = [v23 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];
      [v15 setPersonID:v26];

      [v15 setIsMe:1];
      v27 = [FAProfileViewTableViewDecorator alloc];
      tableViewOM = [firstObject tableViewOM];
      tableView = [tableViewOM tableView];
      tableViewOM2 = [firstObject tableViewOM];
      v31 = [(FAProfileViewTableViewDecorator *)v27 initWithTableView:tableView ruiTableView:tableViewOM2 forPerson:v15 pictureStore:self->_familyPictureStore];
      remoteUIDecorator = self->_remoteUIDecorator;
      self->_remoteUIDecorator = v31;
    }

    else if (v16)
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "OM wants us to add a photo header, but it has no table view in its page.", &v34, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FASettingsSpecifierProvider dealloc %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = FASettingsSpecifierProvider;
  [(FASettingsSpecifierProvider *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)familySettingsViewController2StopFamilySharing:(id)sharing
{
  sharingCopy = sharing;
  [(FASettingsSpecifierProvider *)self _clearFamilyState];
  [(FASettingsSpecifierProvider *)self _reloadFamilySpecifiersAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController = [sharingCopy navigationController];
    v8 = objc_loadWeakRetained(&self->_presenter);
    v9 = [navigationController popToViewController:v8 animated:1];
  }

  else
  {
    v12 = 0;
    v10 = [MEMORY[0x277D08358] urlDestinationTo:0 error:&v12];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:v10 withOptions:0];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldUseModernNavigationForPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  v6 = sub_21BBF3664(presenterCopy);

  return v6;
}

- (void)presentFamilySettingsFromPresenter:(id)presenter
{
  v4 = sub_21BE2693C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE293DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_21BE2886C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  presenterCopy = presenter;
  sub_21BE293CC();
  sub_21BE2885C();
  traitCollection = [presenterCopy traitCollection];
  sub_21BE2929C();

  sub_21BBF381C(&qword_27CDB66C0, MEMORY[0x277D4D798]);
  sub_21BE2691C();

  (*(v5 + 8))(v8, v4);
  (*(v12 + 8))(v15, v11);
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Can't present %@, presenter seems deallocated.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end