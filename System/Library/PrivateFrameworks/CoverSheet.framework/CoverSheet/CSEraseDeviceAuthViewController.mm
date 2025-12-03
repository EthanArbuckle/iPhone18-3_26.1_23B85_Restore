@interface CSEraseDeviceAuthViewController
- (CSEraseDeviceAuthViewControllerDelegate)delegate;
- (void)_activateConstraints;
- (void)_handleCancelButtonAction;
- (void)_presentEraseConfirmationAlertWithAuthResults:(id)results;
- (void)_updateForFailedAppleIDAuthentication;
- (void)loadView;
- (void)setAuthContext:(id)context;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)viewDidLoad;
@end

@implementation CSEraseDeviceAuthViewController

- (void)loadView
{
  v39.receiver = self;
  v39.super_class = CSEraseDeviceAuthViewController;
  [(CSEraseDeviceAuthViewController *)&v39 loadView];
  view = [(CSEraseDeviceAuthViewController *)self view];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [plainButtonConfiguration setBaseForegroundColor:whiteColor];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DASHBOARD_BLOCK_CANCEL_BUTTON" value:&stru_28302FDA0 table:@"CoverSheet"];
  [plainButtonConfiguration setTitle:v7];

  v8 = [MEMORY[0x277D75220] buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v8;

  [(UIButton *)self->_cancelButton setConfiguration:plainButtonConfiguration];
  [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_cancelButton addTarget:self action:sel__handleCancelButtonAction forControlEvents:64];
  [view addSubview:self->_cancelButton];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  labelsContainerView = self->_labelsContainerView;
  self->_labelsContainerView = v10;

  v12 = self->_labelsContainerView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v12 setBackgroundColor:clearColor];

  [(UIView *)self->_labelsContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_labelsContainerView];
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v15;

  v17 = self->_titleLabel;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v17 setTextColor:whiteColor2];

  v19 = self->_titleLabel;
  v20 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76A08] hiFontStyle:1];
  [(UILabel *)v19 setFont:v20];

  v21 = self->_titleLabel;
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"DASHBOARD_BLOCK_ERASE_AUTH_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];
  [(UILabel *)v21 setText:v23];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_labelsContainerView addSubview:self->_titleLabel];
  v24 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v24;

  v26 = self->_subtitleLabel;
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v26 setTextColor:whiteColor3];

  v28 = self->_subtitleLabel;
  v29 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
  [(UILabel *)v28 setFont:v29];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_labelsContainerView addSubview:self->_subtitleLabel];
  v30 = objc_alloc_init(MEMORY[0x277D75D18]);
  springView = self->_springView;
  self->_springView = v30;

  [(UIView *)self->_springView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_springView];
  v32 = objc_alloc_init(MEMORY[0x277CF03A0]);
  authenticationViewController = self->_authenticationViewController;
  self->_authenticationViewController = v32;

  [(AKInlineSignInViewController *)self->_authenticationViewController setDelegate:self];
  [(AKInlineSignInViewController *)self->_authenticationViewController setSecondaryButtonTitle:0];
  [(AKInlineSignInViewController *)self->_authenticationViewController setTertiaryButtonTitle:0];
  v34 = self->_authenticationViewController;
  whiteColor4 = [MEMORY[0x277D75348] whiteColor];
  [(AKInlineSignInViewController *)v34 setEntryDescriptionTextColor:whiteColor4];

  v36 = self->_authenticationViewController;
  whiteColor5 = [MEMORY[0x277D75348] whiteColor];
  [(AKInlineSignInViewController *)v36 setEntryFieldTextColor:whiteColor5];

  [(AKInlineSignInViewController *)self->_authenticationViewController setPrimaryButtonHidden:1];
  [(AKInlineSignInViewController *)self->_authenticationViewController setShouldPromptForPasswordOnly:1];
  [(AKInlineSignInViewController *)self->_authenticationViewController setWantsAuthenticationProgress:1];
  view2 = [(AKInlineSignInViewController *)self->_authenticationViewController view];
  [(UIView *)self->_springView addSubview:view2];
  [(CSEraseDeviceAuthViewController *)self _activateConstraints];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSEraseDeviceAuthViewController;
  [(CSEraseDeviceAuthViewController *)&v5 viewDidLoad];
  authenticationViewController = self->_authenticationViewController;
  if (authenticationViewController)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__CSEraseDeviceAuthViewController_viewDidLoad__block_invoke;
    v4[3] = &unk_27838B798;
    v4[4] = self;
    [(CSEraseDeviceAuthViewController *)self bs_addChildViewController:authenticationViewController animated:0 transitionBlock:v4];
  }
}

void __46__CSEraseDeviceAuthViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCAAD0];
  v3 = *(a1 + 32);
  v20 = a2;
  v19 = [v3 _authenticationView];
  v18 = [v19 topAnchor];
  v17 = [*(*(a1 + 32) + 1016) bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:-29.0];
  v21[0] = v16;
  v15 = [*(a1 + 32) _authenticationView];
  v4 = [v15 leadingAnchor];
  v5 = [*(a1 + 32) view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v21[1] = v7;
  v8 = [*(a1 + 32) _authenticationView];
  v9 = [v8 trailingAnchor];
  v10 = [*(a1 + 32) view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v14 activateConstraints:v13];

  v20[2]();
}

- (void)setAuthContext:(id)context
{
  authenticationViewController = context;
  v5 = authenticationViewController;
  if (self->_authContext != authenticationViewController)
  {
    self->_authContext = authenticationViewController;
    authenticationViewController = self->_authenticationViewController;
    if (authenticationViewController)
    {
      v6 = v5;
      authenticationViewController = [(AKInlineSignInViewController *)authenticationViewController setContext:v5];
      v5 = v6;
    }
  }

  MEMORY[0x2821F96F8](authenticationViewController, v5);
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CSEraseDeviceAuthViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_27838B7C0;
  v12 = errorCopy;
  selfCopy = self;
  v14 = resultsCopy;
  v9 = resultsCopy;
  v10 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __89__CSEraseDeviceAuthViewController_signInViewController_didAuthenticateWithResults_error___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _updateForFailedAppleIDAuthentication];
  }

  else
  {
    return [v2 _presentEraseConfirmationAlertWithAuthResults:a1[6]];
  }
}

- (void)_activateConstraints
{
  v94[17] = *MEMORY[0x277D85DE8];
  view = [(CSEraseDeviceAuthViewController *)self view];
  v74 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIButton *)self->_cancelButton topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v89 = __sb__runningInSpringBoard();
  if (v89)
  {
    v6 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v6 = [currentDevice userInterfaceIdiom] == 1;
  }

  v7 = 5.0;
  if (v6)
  {
    v7 = 9.0;
  }

  v88 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7];
  v94[0] = v88;
  leadingAnchor = [(UIButton *)self->_cancelButton leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v85 = __sb__runningInSpringBoard();
  v92 = topAnchor;
  v90 = topAnchor2;
  if (v85)
  {
    v10 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v10 = [currentDevice2 userInterfaceIdiom] == 1;
  }

  v11 = 15.0;
  if (v10)
  {
    v11 = 8.0;
  }

  v87 = leadingAnchor;
  v84 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  v94[1] = v84;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor3 = [(UIView *)self->_labelsContainerView topAnchor];
  v83 = firstBaselineAnchor;
  v81 = [firstBaselineAnchor constraintEqualToAnchor:?];
  v94[2] = v81;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_labelsContainerView centerXAnchor];
  v80 = centerXAnchor;
  v78 = [centerXAnchor constraintEqualToAnchor:?];
  v94[3] = v78;
  topAnchor4 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v77 = topAnchor4;
  v75 = [topAnchor4 constraintEqualToAnchor:8.0 constant:?];
  v94[4] = v75;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_labelsContainerView leadingAnchor];
  v73 = leadingAnchor3;
  v71 = [leadingAnchor3 constraintEqualToAnchor:?];
  v94[5] = v71;
  trailingAnchor = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_labelsContainerView trailingAnchor];
  v70 = trailingAnchor;
  v68 = [trailingAnchor constraintEqualToAnchor:?];
  v94[6] = v68;
  bottomAnchor2 = [(UIView *)self->_labelsContainerView bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v67 = bottomAnchor2;
  v65 = [bottomAnchor2 constraintEqualToAnchor:?];
  v94[7] = v65;
  widthAnchor = [(UIView *)self->_labelsContainerView widthAnchor];
  widthAnchor2 = [(UILabel *)self->_titleLabel widthAnchor];
  v64 = widthAnchor;
  v62 = [widthAnchor constraintLessThanOrEqualToAnchor:?];
  v94[8] = v62;
  widthAnchor3 = [(UIView *)self->_labelsContainerView widthAnchor];
  widthAnchor4 = [(UILabel *)self->_subtitleLabel widthAnchor];
  v61 = widthAnchor3;
  v59 = [widthAnchor3 constraintLessThanOrEqualToAnchor:?];
  v94[9] = v59;
  leadingAnchor5 = [(UIView *)self->_labelsContainerView leadingAnchor];
  leadingAnchor6 = [view leadingAnchor];
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    v22 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    v22 = [currentDevice3 userInterfaceIdiom] == 1;
  }

  v23 = 130.0;
  if (!v22)
  {
    v23 = 20.0;
  }

  v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v23];
  v94[10] = v55;
  trailingAnchor3 = [(UIView *)self->_labelsContainerView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v52 = __sb__runningInSpringBoard();
  v93 = view;
  v86 = leadingAnchor2;
  v57 = leadingAnchor6;
  v58 = leadingAnchor5;
  if (v52)
  {
    v26 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    v26 = [currentDevice4 userInterfaceIdiom] == 1;
  }

  v27 = -130.0;
  if (!v26)
  {
    v27 = -20.0;
  }

  v53 = trailingAnchor4;
  v54 = trailingAnchor3;
  v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v27];
  v94[11] = v51;
  topAnchor5 = [(UIView *)self->_labelsContainerView topAnchor];
  topAnchor6 = [(UIButton *)self->_cancelButton topAnchor];
  v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:80.0];
  v94[12] = v48;
  topAnchor7 = [(UIView *)self->_springView topAnchor];
  bottomAnchor4 = [(UIView *)self->_labelsContainerView bottomAnchor];
  v45 = [topAnchor7 constraintEqualToAnchor:bottomAnchor4 constant:-29.0];
  v94[13] = v45;
  leadingAnchor7 = [(UIView *)self->_springView leadingAnchor];
  view2 = [(CSEraseDeviceAuthViewController *)self view];
  leadingAnchor8 = [view2 leadingAnchor];
  v28 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v94[14] = v28;
  trailingAnchor5 = [(UIView *)self->_springView trailingAnchor];
  view3 = [(CSEraseDeviceAuthViewController *)self view];
  trailingAnchor6 = [view3 trailingAnchor];
  v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v94[15] = v32;
  heightAnchor = [(UIView *)self->_springView heightAnchor];
  _authenticationView = [(CSEraseDeviceAuthViewController *)self _authenticationView];
  heightAnchor2 = [_authenticationView heightAnchor];
  v36 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v94[16] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:17];
  [v74 activateConstraints:v37];

  if ((v52 & 1) == 0)
  {
  }

  if ((v56 & 1) == 0)
  {
  }

  if ((v85 & 1) == 0)
  {
  }

  if ((v89 & 1) == 0)
  {
  }
}

- (void)_handleCancelButtonAction
{
  delegate = [(CSEraseDeviceAuthViewController *)self delegate];
  [delegate cancelButtonTapped];
}

- (void)_presentEraseConfirmationAlertWithAuthResults:(id)results
{
  resultsCopy = results;
  delegate = [(CSEraseDeviceAuthViewController *)self delegate];
  v6 = MEMORY[0x277D05540];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CSEraseDeviceAuthViewController__presentEraseConfirmationAlertWithAuthResults___block_invoke;
  v10[3] = &unk_27838B7E8;
  v11 = delegate;
  selfCopy = self;
  v13 = resultsCopy;
  v7 = resultsCopy;
  v8 = delegate;
  v9 = [v6 alertControllerWithCompletion:v10];
  [(CSEraseDeviceAuthViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __81__CSEraseDeviceAuthViewController__presentEraseConfirmationAlertWithAuthResults___block_invoke(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  v7 = a1[5];
  if (a2)
  {
    return [v6 authViewController:v7 didConfirmEraseAfterAuthenticationWithResults:a1[6] shouldEraseDataPlan:a3];
  }

  else
  {
    return [v6 authViewControllerDidCancelToEraseDeviceAfterAuthentication:{v7, a4, a3}];
  }
}

- (void)_updateForFailedAppleIDAuthentication
{
  view = [(AKInlineSignInViewController *)self->_authenticationViewController view];
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.x"];
  [v4 setMass:1.20000005];
  [v4 setStiffness:1200.0];
  [v4 setDamping:12.0];
  LODWORD(v5) = 1028389654;
  LODWORD(v6) = 990057071;
  LODWORD(v7) = 1059712716;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v5 :v6 :v7 :v8];
  [v4 setTimingFunction:v9];

  [v4 setDuration:0.666999996];
  [v4 setVelocity:0.0];
  v10 = *MEMORY[0x277CDA228];
  [v4 setFillMode:*MEMORY[0x277CDA228]];
  v11 = MEMORY[0x277CCABB0];
  layer = [view layer];
  [layer position];
  v14 = v13 + 75.0;
  *&v14 = v14;
  v15 = [v11 numberWithFloat:v14];
  [v4 setFromValue:v15];

  layer2 = [view layer];
  [layer2 addAnimation:v4 forKey:@"shake"];

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.x"];
  LODWORD(v18) = 1054276898;
  LODWORD(v19) = 1058305108;
  LODWORD(v20) = 1.0;
  v21 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v18 :0.0 :v19 :v20];
  [v17 setTimingFunction:v21];

  [v17 setDuration:0.100000001];
  [v17 setFillMode:v10];
  v22 = MEMORY[0x277CCABB0];
  layer3 = [(UIView *)self->_springView layer];
  [layer3 position];
  v25 = v24 + -75.0;
  *&v25 = v25;
  v26 = [v22 numberWithFloat:v25];
  [v17 setFromValue:v26];

  layer4 = [(UIView *)self->_springView layer];
  [layer4 addAnimation:v17 forKey:@"force-off-center"];

  v28 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_28307A3A0, 0}];
  v29 = objc_alloc(MEMORY[0x277D757B8]);
  v30 = [MEMORY[0x277D76138] privateConfigurationForTypes:v28];
  v31 = [v29 initWithConfiguration:v30];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __72__CSEraseDeviceAuthViewController__updateForFailedAppleIDAuthentication__block_invoke;
  v33[3] = &unk_27838B810;
  v34 = v31;
  v35 = 1001;
  v32 = v31;
  [v32 activateWithCompletionBlock:v33];
}

uint64_t __72__CSEraseDeviceAuthViewController__updateForFailedAppleIDAuthentication__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _privateNotificationOccurred:*(a1 + 40)];
  }

  v3 = *(a1 + 32);

  return [v3 deactivate];
}

- (CSEraseDeviceAuthViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end