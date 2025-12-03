@interface CSStatusTextViewController
- (CSStatusTextViewController)init;
- (CSStatusTextViewControllerDelegate)delegate;
- (id)_legalContact;
- (id)_legalString;
- (void)_profileStateChangedNotification:(id)notification;
- (void)_updateText;
- (void)_updateTextForDeviceInformation;
- (void)_updateTextForLegal;
- (void)_updateTextForProfiles;
- (void)_updateTextForProvisionalEnrollment;
- (void)_updateTextForSupervision;
- (void)_updateTribecaText;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)setOverrideFooterText:(id)text;
- (void)setTribecaText:(id)text;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CSStatusTextViewController

- (CSStatusTextViewController)init
{
  v10.receiver = self;
  v10.super_class = CSStatusTextViewController;
  v2 = [(CSStatusTextViewController *)&v10 init];
  if (v2)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x277D262A0];

    mEMORY[0x277D65F18] = [MEMORY[0x277D65F18] sharedInstance];
    basebandLoggingManager = v2->_basebandLoggingManager;
    v2->_basebandLoggingManager = mEMORY[0x277D65F18];

    [(SBFRemoteBasebandLoggingManager *)v2->_basebandLoggingManager addObserver:v2];
    v7 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v2->_lockScreenDefaults;
    v2->_lockScreenDefaults = v7;

    v2->_activationLockNotifyToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  [(SBFRemoteBasebandLoggingManager *)self->_basebandLoggingManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = CSStatusTextViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)setOverrideFooterText:(id)text
{
  textCopy = text;
  if (self->_overrideFooterText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_overrideFooterText, text);
    [(CSStatusTextViewController *)self _updateText];
    textCopy = v6;
  }
}

- (void)setTribecaText:(id)text
{
  textCopy = text;
  if (self->_tribecaText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_tribecaText, text);
    [(CSStatusTextViewController *)self _updateText];
    textCopy = v6;
  }
}

- (void)loadView
{
  v3 = [CSStatusTextView alloc];
  v4 = [(CSStatusTextView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  view = self->_view;
  self->_view = v4;

  [(CSStatusTextView *)self->_view bs_setHitTestingDisabled:1];
  v6 = self->_view;

  [(CSStatusTextViewController *)self setView:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = CSStatusTextViewController;
  [(CSCoverSheetViewControllerBase *)&v15 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__profileStateChangedNotification_ name:*MEMORY[0x277D26148] object:0];
  [defaultCenter addObserver:self selector:sel__profileStateChangedNotification_ name:*MEMORY[0x277D25C90] object:0];
  v5 = tribeca_supported_text();

  if (v5)
  {
    if (self->_activationLockNotifyToken < 0)
    {
      objc_initWeak(&location, self);
      uTF8String = [*MEMORY[0x277D08FA0] UTF8String];
      v7 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __45__CSStatusTextViewController_viewWillAppear___block_invoke;
      v12 = &unk_27838C9F8;
      objc_copyWeak(&v13, &location);
      notify_register_dispatch(uTF8String, &self->_activationLockNotifyToken, v7, &v9);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    [(CSStatusTextViewController *)self _updateTribecaText:v9];
  }

  [(CSStatusTextViewController *)self _updateText];
}

void __45__CSStatusTextViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTribecaText];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  activationLockNotifyToken = self->_activationLockNotifyToken;
  if ((activationLockNotifyToken & 0x80000000) == 0)
  {
    notify_cancel(activationLockNotifyToken);
    self->_activationLockNotifyToken = -1;
  }

  v7.receiver = self;
  v7.super_class = CSStatusTextViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidDisappear:disappearCopy];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(CSStatusTextViewController *)self _updateText];
  }

  v5.receiver = self;
  v5.super_class = CSStatusTextViewController;
  [(CSStatusTextViewController *)&v5 didMoveToParentViewController:controllerCopy];
}

- (void)_profileStateChangedNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CSStatusTextViewController__profileStateChangedNotification___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateTribecaText
{
  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__CSStatusTextViewController__updateTribecaText__block_invoke;
  v4[3] = &unk_27838CA20;
  v4[4] = self;
  [mEMORY[0x277D08F78] fmipStateWithCompletion:v4];
}

void __48__CSStatusTextViewController__updateTribecaText__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    if (a2 >= 3)
    {
      v6 = tribeca_supported_text();
    }

    else
    {
      v6 = &stru_28302FDA0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__CSStatusTextViewController__updateTribecaText__block_invoke_2;
    v8[3] = &unk_27838B838;
    v8[4] = *(a1 + 32);
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

- (void)_updateText
{
  if ([(CSStatusTextViewController *)self isViewLoaded])
  {
    view = self->_view;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CSStatusTextViewController__updateText__block_invoke;
    v5[3] = &unk_27838B770;
    v5[4] = self;
    [(CSStatusTextView *)view updateTextsWithBlock:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained coverSheetStatusTextViewControllerContentDidChange:self];
  }
}

uint64_t __41__CSStatusTextViewController__updateText__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTextForProfiles];
  v2 = *(a1 + 32);

  return [v2 _updateTextForLegal];
}

- (void)_updateTextForProfiles
{
  view = self->_view;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__CSStatusTextViewController__updateTextForProfiles__block_invoke;
  v3[3] = &unk_27838B770;
  v3[4] = self;
  [(CSStatusTextView *)view updateTextsWithBlock:v3];
}

uint64_t __52__CSStatusTextViewController__updateTextForProfiles__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTextForDeviceInformation];
  [*(a1 + 32) _updateTextForSupervision];
  v2 = *(a1 + 32);

  return [v2 _updateTextForProvisionalEnrollment];
}

- (void)_updateTextForDeviceInformation
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (ct_green_tea_logging_enabled())
  {
    [v5 addObject:@"Regulatory Logging Enabled"];
  }

  if ([(NSString *)self->_tribecaText length])
  {
    [v5 addObject:self->_tribecaText];
  }

  if ([(SBFRemoteBasebandLoggingManager *)self->_basebandLoggingManager isLogCollectionEnabled])
  {
    [v5 addObject:*MEMORY[0x277D66050]];
  }

  if ([(NSString *)self->_overrideFooterText length])
  {
    [v5 addObject:self->_overrideFooterText];
  }

  else
  {
    deviceLockScreenFootnote = [(MCProfileConnection *)self->_profileConnection deviceLockScreenFootnote];
    deviceAssetTag = [(MCProfileConnection *)self->_profileConnection deviceAssetTag];
    if ([deviceLockScreenFootnote length])
    {
      [v5 addObject:deviceLockScreenFootnote];
    }

    if ([deviceAssetTag length])
    {
      [v5 addObject:deviceAssetTag];
    }
  }

  [(CSStatusTextView *)self->_view setDeviceInformationText:v5];
}

- (void)_updateTextForSupervision
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults showSupervisionText]&& [(MCProfileConnection *)self->_profileConnection isSupervised])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    cloudConfigurationDetails = [(MCProfileConnection *)self->_profileConnection cloudConfigurationDetails];
    v5 = [cloudConfigurationDetails objectForKeyedSubscript:*MEMORY[0x277D26360]];

    if ([v5 length])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"LOCK_SCREEN_SUPERVISION_NOTICE_WITH_ORGNAME"];
      v8 = [v3 localizedStringForKey:v7 value:&stru_28302FDA0 table:@"CoverSheet"];
      v10 = [v6 stringWithFormat:v8, v5];
    }

    else
    {
      v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"LOCK_SCREEN_SUPERVISION_NOTICE"];
      v10 = [v3 localizedStringForKey:v7 value:&stru_28302FDA0 table:@"CoverSheet"];
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  [(CSStatusTextView *)self->_view setSupervisionText:v9];
}

- (void)_updateTextForProvisionalEnrollment
{
  view = self->_view;
  deviceProvisionalEnrollmentFootnote = [(MCProfileConnection *)self->_profileConnection deviceProvisionalEnrollmentFootnote];
  [(CSStatusTextView *)view setProvisionalEnrollmentText:deviceProvisionalEnrollmentFootnote];
}

- (void)_updateTextForLegal
{
  if ([(CSStatusTextViewController *)self _isSecurityResearchDevice]|| os_variant_has_internal_content() && [(SBLockScreenDefaults *)self->_lockScreenDefaults showLegalText])
  {
    view = self->_view;
    _legalString = [(CSStatusTextViewController *)self _legalString];
    [(CSStatusTextView *)view setInternalLegalText:_legalString];
  }

  else
  {
    v4 = self->_view;

    [(CSStatusTextView *)v4 setInternalLegalText:0];
  }
}

- (id)_legalString
{
  if ([(CSStatusTextViewController *)self _isSecurityResearchDevice])
  {
    v3 = @"Security Research Device";
  }

  else
  {
    v3 = @"Confidential & Proprietary";
  }

  _legalContact = [(CSStatusTextViewController *)self _legalContact];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@ %@", v3, @"Call", _legalContact];

  return v5;
}

- (id)_legalContact
{
  if (_legalContact_onceToken != -1)
  {
    [CSStatusTextViewController _legalContact];
  }

  v3 = _legalContact_sLegalContact;

  return v3;
}

void __43__CSStatusTextViewController__legalContact__block_invoke()
{
  v0 = @"+1 855-499-6467";
  v1 = MGGetProductType();
  if (v1 <= 2032616840)
  {
    if (v1 > 1234705394)
    {
      if (v1 == 1234705395 || v1 == 1353145733)
      {
        goto LABEL_20;
      }

      v2 = 2001966017;
    }

    else
    {
      if (v1 == -1 || v1 == 341800273)
      {
        goto LABEL_20;
      }

      v2 = 910181310;
    }
  }

  else if (v1 <= 3196158496)
  {
    if (v1 == 2032616841 || v1 == 2236272848)
    {
      goto LABEL_20;
    }

    v2 = 2458172802;
  }

  else if (v1 > 3743999267)
  {
    if (v1 == 3743999268)
    {
      goto LABEL_20;
    }

    v2 = 3801472101;
  }

  else
  {
    if (v1 == 3196158497)
    {
      goto LABEL_20;
    }

    v2 = 3636345305;
  }

  if (v1 != v2)
  {
    v0 = @"+1 877-595-1125";
  }

LABEL_20:
  v3 = _legalContact_sLegalContact;
  _legalContact_sLegalContact = v0;
}

- (CSStatusTextViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end