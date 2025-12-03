@interface CDPUIInheritanceUIProviderImpl
- (BOOL)accessCodeScanner:(id)scanner didScanCode:(id)code;
- (BOOL)manualAccessCodeEntry:(id)entry shouldFinishWithAccessCode:(id)code;
- (CDPUIInheritanceUIProviderImpl)initWithPresentingViewController:(id)controller;
- (id)_buildViewController;
- (id)_cameraLabel;
- (id)_cameraView;
- (id)_contentStackView;
- (void)_dismissViewControllerWithAccessKey:(id)key error:(id)error;
- (void)_keyOptionsTapped:(id)tapped;
- (void)_presentWelcomePage;
- (void)_showEnterCodeLaterAlert;
- (void)_showManualCodeEntryPage;
- (void)_skipTapped:(id)tapped;
- (void)accessCodeScanner:(id)scanner didFailToStarCapture:(id)capture;
- (void)manualAccessCodeEntryDidCancel:(id)cancel;
- (void)promptForAccessCodeForAccessKey:(id)key completion:(id)completion;
- (void)welcomeViewController:(id)controller didCompleteWithError:(id)error;
@end

@implementation CDPUIInheritanceUIProviderImpl

- (CDPUIInheritanceUIProviderImpl)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CDPUIInheritanceUIProviderImpl;
  v6 = [(CDPUIInheritanceUIProviderImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentingViewController, controller);
  }

  return v7;
}

- (void)promptForAccessCodeForAccessKey:(id)key completion:(id)completion
{
  keyCopy = key;
  [(CDPUIInheritanceUIProviderImpl *)self setCompletion:completion];
  [(CDPUIInheritanceUIProviderImpl *)self setAccessKey:keyCopy];

  _buildViewController = [(CDPUIInheritanceUIProviderImpl *)self _buildViewController];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [_buildViewController setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  presentingViewController = [(CDPUIInheritanceUIProviderImpl *)self presentingViewController];
  [presentingViewController presentViewController:_buildViewController animated:1 completion:0];
}

- (id)_buildViewController
{
  v42[4] = *MEMORY[0x277D85DE8];
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  v40 = CDPLocalizedString();
  v3 = MEMORY[0x277CCACA8];
  v4 = CDPLocalizedString();
  primaryAccountFirstName = [mEMORY[0x277CFD480] primaryAccountFirstName];
  v39 = [v3 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, primaryAccountFirstName];

  v6 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v40 detailText:v39 symbolName:0];
  _contentStackView = [(CDPUIInheritanceUIProviderImpl *)self _contentStackView];
  contentView = [v6 contentView];
  [contentView addSubview:_contentStackView];

  v29 = MEMORY[0x277CCAAD0];
  leadingAnchor = [_contentStackView leadingAnchor];
  contentView2 = [v6 contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v33;
  trailingAnchor = [_contentStackView trailingAnchor];
  contentView3 = [v6 contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[1] = v28;
  v38 = _contentStackView;
  topAnchor = [_contentStackView topAnchor];
  contentView4 = [v6 contentView];
  topAnchor2 = [contentView4 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v42[2] = v12;
  bottomAnchor = [_contentStackView bottomAnchor];
  contentView5 = [v6 contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v29 activateConstraints:v17];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v19 = CDPLocalizedString();
  [linkButton setTitle:v19 forState:0];

  [linkButton addTarget:self action:sel__keyOptionsTapped_ forControlEvents:64];
  buttonTray = [v6 buttonTray];
  [buttonTray addButton:linkButton];

  v21 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v6];
  [(CDPUIInheritanceUIProviderImpl *)self setNavigationController:v21];

  v22 = objc_alloc(MEMORY[0x277D751E0]);
  v23 = CDPLocalizedString();
  v24 = [v22 initWithTitle:v23 style:0 target:self action:sel__skipTapped_];
  navigationItem = [v6 navigationItem];
  [navigationItem setLeftBarButtonItem:v24];

  navigationController = [(CDPUIInheritanceUIProviderImpl *)self navigationController];

  return navigationController;
}

- (id)_contentStackView
{
  v17[2] = *MEMORY[0x277D85DE8];
  _cameraView = [(CDPUIInheritanceUIProviderImpl *)self _cameraView];
  _cameraLabel = [(CDPUIInheritanceUIProviderImpl *)self _cameraLabel];
  v5 = objc_alloc(MEMORY[0x277D75A68]);
  v17[0] = _cameraView;
  v17[1] = _cameraLabel;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v5 initWithArrangedSubviews:v6];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:1];
  [v7 setSpacing:15.0];
  v8 = MEMORY[0x277CCAAD0];
  widthAnchor = [_cameraView widthAnchor];
  v10 = [widthAnchor constraintLessThanOrEqualToConstant:308.0];
  v16[0] = v10;
  widthAnchor2 = [_cameraView widthAnchor];
  heightAnchor = [_cameraView heightAnchor];
  v13 = [widthAnchor2 constraintEqualToAnchor:heightAnchor multiplier:1.4];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v8 activateConstraints:v14];

  return v7;
}

- (id)_cameraView
{
  v3 = [CDPUIInheritanceAccessCodeScannerView alloc];
  v4 = [(CDPUIInheritanceAccessCodeScannerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CDPUIInheritanceAccessCodeScannerView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CDPUIInheritanceAccessCodeScannerView *)v4 setDelegate:self];

  return v4;
}

- (id)_cameraLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v3 setTextColor:secondaryLabelColor];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  v5 = CDPLocalizedString();
  [v3 setText:v5];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v3 setFont:v6];

  return v3;
}

- (void)_keyOptionsTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "User asked for access code options.", buf, 2u);
  }

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  objc_initWeak(buf, self);
  v7 = MEMORY[0x277D750F8];
  v8 = CDPLocalizedString();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__CDPUIInheritanceUIProviderImpl__keyOptionsTapped___block_invoke;
  v22[3] = &unk_278E2B820;
  objc_copyWeak(&v23, buf);
  v9 = [v7 actionWithTitle:v8 style:0 handler:v22];

  v10 = MEMORY[0x277D750F8];
  v11 = CDPLocalizedString();
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __52__CDPUIInheritanceUIProviderImpl__keyOptionsTapped___block_invoke_2;
  v20 = &unk_278E2B820;
  objc_copyWeak(&v21, buf);
  v12 = [v10 actionWithTitle:v11 style:0 handler:&v17];

  v13 = MEMORY[0x277D750F8];
  v14 = CDPLocalizedString();
  v15 = [v13 actionWithTitle:v14 style:1 handler:{0, v17, v18, v19, v20}];

  [v6 addAction:v9];
  [v6 addAction:v12];
  [v6 addAction:v15];
  navigationController = [(CDPUIInheritanceUIProviderImpl *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __52__CDPUIInheritanceUIProviderImpl__keyOptionsTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showManualCodeEntryPage];
}

void __52__CDPUIInheritanceUIProviderImpl__keyOptionsTapped___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showEnterCodeLaterAlert];
}

- (void)_showManualCodeEntryPage
{
  v4 = objc_alloc_init(CDPUIManualAccessCodeEntryViewController);
  [(CDPUIManualAccessCodeEntryViewController *)v4 setDelegate:self];
  navigationController = [(CDPUIInheritanceUIProviderImpl *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)_showEnterCodeLaterAlert
{
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  v4 = MEMORY[0x277CCACA8];
  v5 = CDPLocalizedString();
  primaryAccountFirstName = [mEMORY[0x277CFD480] primaryAccountFirstName];
  v7 = [v4 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, primaryAccountFirstName];

  v8 = CDPLocalizedString();
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v7 preferredStyle:1];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D750F8];
  v11 = CDPLocalizedString();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__CDPUIInheritanceUIProviderImpl__showEnterCodeLaterAlert__block_invoke;
  v17[3] = &unk_278E2B820;
  objc_copyWeak(&v18, &location);
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  v13 = MEMORY[0x277D750F8];
  v14 = CDPLocalizedString();
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];

  [v9 addAction:v12];
  [v9 addAction:v15];
  navigationController = [(CDPUIInheritanceUIProviderImpl *)self navigationController];
  [navigationController presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __58__CDPUIInheritanceUIProviderImpl__showEnterCodeLaterAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _skipTapped:0];
}

- (void)_skipTapped:(id)tapped
{
  v4 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5308];
  [(CDPUIInheritanceUIProviderImpl *)self _dismissViewControllerWithAccessKey:0 error:v4];
}

- (void)_dismissViewControllerWithAccessKey:(id)key error:(id)error
{
  keyCopy = key;
  errorCopy = error;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__1;
  v15[4] = __Block_byref_object_dispose__1;
  selfCopy = self;
  presentingViewController = [(CDPUIInheritanceUIProviderImpl *)selfCopy presentingViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__CDPUIInheritanceUIProviderImpl__dismissViewControllerWithAccessKey_error___block_invoke;
  v11[3] = &unk_278E2BF58;
  v14 = v15;
  v9 = keyCopy;
  v12 = v9;
  v10 = errorCopy;
  v13 = v10;
  [presentingViewController dismissViewControllerAnimated:1 completion:v11];

  _Block_object_dispose(v15, 8);
}

void __76__CDPUIInheritanceUIProviderImpl__dismissViewControllerWithAccessKey_error___block_invoke(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) completion];

  if (v2)
  {
    v3 = [*(*(a1[6] + 8) + 40) completion];
    v3[2](v3, a1[4], a1[5]);

    [*(*(a1[6] + 8) + 40) setCompletion:0];
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)_presentWelcomePage
{
  accessKey = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  [(CDPUIInheritanceUIProviderImpl *)self _dismissViewControllerWithAccessKey:accessKey error:0];
}

- (BOOL)manualAccessCodeEntry:(id)entry shouldFinishWithAccessCode:(id)code
{
  codeCopy = code;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIInheritanceUIProviderImpl manualAccessCodeEntry:v6 shouldFinishWithAccessCode:?];
  }

  accessKey = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  [accessKey setWrappedKeyString:codeCopy];

  accessKey2 = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  [accessKey2 setWrappingKeyString:codeCopy];

  v9 = objc_alloc_init(MEMORY[0x277CFD4E8]);
  accessKey3 = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  v11 = [v9 isInheritanceAccessKeyValid:accessKey3];

  v12 = _CDPLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Manual key is valid.", buf, 2u);
    }

    [(CDPUIInheritanceUIProviderImpl *)self _presentWelcomePage];
  }

  else
  {
    if (v13)
    {
      *v15 = 0;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Entered code is not a valid inheritance key.", v15, 2u);
    }
  }

  return v11;
}

- (void)manualAccessCodeEntryDidCancel:(id)cancel
{
  navigationController = [(CDPUIInheritanceUIProviderImpl *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (BOOL)accessCodeScanner:(id)scanner didScanCode:(id)code
{
  codeCopy = code;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "Successfully scanned the access key, checking if it's a valid inheritance key.", buf, 2u);
  }

  accessKey = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  [accessKey setWrappingKeyString:codeCopy];

  v8 = objc_alloc_init(MEMORY[0x277CFD4E8]);
  accessKey2 = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
  v10 = [v8 isInheritanceAccessKeyValid:accessKey2];

  v11 = _CDPLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *v15 = 0;
      _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Scanned code is valid.", v15, 2u);
    }

    [(CDPUIInheritanceUIProviderImpl *)self _presentWelcomePage];
  }

  else
  {
    if (v12)
    {
      *v14 = 0;
      _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Scanned code is not a valid inheritance key.", v14, 2u);
    }
  }

  return v10;
}

- (void)accessCodeScanner:(id)scanner didFailToStarCapture:(id)capture
{
  captureCopy = capture;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CDPUIInheritanceUIProviderImpl accessCodeScanner:captureCopy didFailToStarCapture:v6];
  }

  [(CDPUIInheritanceUIProviderImpl *)self _dismissViewControllerWithAccessKey:0 error:captureCopy];
}

- (void)welcomeViewController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  v9 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
    v7 = 0;
  }

  else
  {
    accessKey = [(CDPUIInheritanceUIProviderImpl *)self accessKey];
    v6 = 0;
    v7 = accessKey;
  }

  [(CDPUIInheritanceUIProviderImpl *)self _dismissViewControllerWithAccessKey:v7 error:v6];
}

- (void)accessCodeScanner:(uint64_t)a1 didFailToStarCapture:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "Error scanning the code: %@", &v2, 0xCu);
}

@end