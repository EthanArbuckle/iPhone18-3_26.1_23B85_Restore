@interface CPSLaunchContentViewController
- (BOOL)_userNotificationAuthorizationDenied;
- (BOOL)shouldRequestLocationConfirmationPermission;
- (CPSLaunchContentViewController)initWithCoder:(id)a3;
- (CPSLaunchContentViewController)initWithMetadata:(id)a3;
- (CPSLaunchContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CPSLaunchContentViewController)initWithURL:(id)a3;
- (CPSLaunchContentViewController)initWithURL:(id)a3 displayMode:(unint64_t)a4;
- (CPSLaunchContentViewControllerDelegate)delegate;
- (id)_reasonStringForError:(id)a3;
- (id)_setUpOpenButtonIfNeeded;
- (void)_createClipSourceVibrantLabelIfNeeded;
- (void)_dismissCardWithClipDidOpen:(BOOL)a3 andPerformBlockToLaunchApp:(id)a4;
- (void)_dismissCardWithClipDidOpen:(BOOL)a3 completion:(id)a4;
- (void)_dismissWithClipDidOpen:(BOOL)a3 completion:(id)a4;
- (void)_identifyCardBackgroundViewIfNeeded;
- (void)_openAppClip:(id)a3;
- (void)_openNonAppClipURL:(id)a3;
- (void)_sendAnalyticsIfNeeded;
- (void)_setHeroImage:(id)a3;
- (void)_updateCloseButtonConstraints;
- (void)_updateContent;
- (void)_updateCornerRadiusForButtons;
- (void)_updateHeroImageIfNeeded;
- (void)configurePermissionView;
- (void)createNetworkPathMonitor;
- (void)determineClipCompatibility;
- (void)disableOpenButton;
- (void)dismiss:(id)a3;
- (void)enableOpenButton;
- (void)handlePolicyRecovery;
- (void)loadView;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)logDismissalFromCloseButton:(BOOL)a3;
- (void)openAppStore;
- (void)permissionsViewControllerDidFinish:(id)a3;
- (void)playSoundAndHaptic;
- (void)proxy:(id)a3 didFinishLoadingWithError:(id)a4;
- (void)proxy:(id)a3 didRetrieveApplicationIcon:(id)a4;
- (void)proxy:(id)a3 didRetrieveHeroImage:(id)a4;
- (void)proxyDidInstallApplicationPlaceholder:(id)a3;
- (void)proxyDidUpdateMetadata:(id)a3;
- (void)proxyRemoteServiceDidCrash:(id)a3;
- (void)setUnavailableViewHidden:(BOOL)a3;
- (void)setUpClipInformationContainerView;
- (void)setUpHeroSection;
- (void)setUpInformationSection;
- (void)showUnavailableViewWithReason:(id)a3;
- (void)signInToAppStore;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateOpenButton;
- (void)updatePreferredContentSizeForCardWidth:(double)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CPSLaunchContentViewController

- (void)loadView
{
  v3 = objc_alloc_init(CPSProxCardAutoSizingView);
  [(CPSLaunchContentViewController *)self setView:?];
}

- (CPSLaunchContentViewController)initWithURL:(id)a3
{
  v4 = a3;
  if (v4 && (v9.receiver = self, v9.super_class = CPSLaunchContentViewController, (self = [(CPSLaunchContentViewController *)&v9 initWithNibName:0 bundle:0]) != 0))
  {
    v5 = [objc_alloc(MEMORY[0x277CFA6D8]) initWithURL:v4];
    sessionProxy = self->_sessionProxy;
    self->_sessionProxy = v5;

    [(CPSSessionProxy *)self->_sessionProxy setDelegate:self];
    [(CPSSessionProxy *)self->_sessionProxy connectToService];
    self->_shouldPlaySoundAndHaptic = 1;
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CPSLaunchContentViewController)initWithURL:(id)a3 displayMode:(unint64_t)a4
{
  v5 = [(CPSLaunchContentViewController *)self initWithURL:a3];
  v6 = v5;
  if (v5)
  {
    v5->_displayMode = a4;
    if (a4 == 1)
    {
      v5->_shouldPlaySoundAndHaptic = 0;
    }

    v7 = v5;
  }

  return v6;
}

- (CPSLaunchContentViewController)initWithMetadata:(id)a3
{
  v5 = a3;
  v6 = [v5 clipURL];
  v7 = [(CPSLaunchContentViewController *)self initWithURL:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_clipMetadata, a3);
    [(CPSSessionProxy *)v7->_sessionProxy prewarmClip];
    v8 = v7;
  }

  return v7;
}

- (CPSLaunchContentViewController)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-initWithCoder: is not supported." userInfo:0];
  objc_exception_throw(v4);
}

- (CPSLaunchContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-initWithNibName:bundle: is not supported." userInfo:0];
  objc_exception_throw(v7);
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v8 viewDidLoad];
  [(CPSLaunchContentViewController *)self setUpCard];
  [(CPSLaunchContentViewController *)self setUpHeroSection];
  [(CPSLaunchContentViewController *)self setUpInformationSection];
  [(CPSLaunchContentViewController *)self _updateContent];
  v3 = MEMORY[0x277D75C80];
  v4 = [(CPSLaunchContentViewController *)self traitCollection];
  v5 = [v4 cps_invocationCardPreferredContentSizeCategory];
  v6 = [v3 traitCollectionWithPreferredContentSizeCategory:v5];
  v7 = [(CPSLaunchContentViewController *)self view];
  [v7 _setLocalOverrideTraitCollection:v6];

  [(CPSLaunchContentViewController *)self createNetworkPathMonitor];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v4 viewWillAppear:a3];
  [(CPSLaunchContentViewController *)self _identifyCardBackgroundViewIfNeeded];
  if (self->_shouldPlaySoundAndHaptic)
  {
    self->_shouldPlaySoundAndHaptic = 0;
    [(CPSLaunchContentViewController *)self playSoundAndHaptic];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v6 viewDidAppear:a3];
  delayedPermissionViewUnhideBlock = self->_delayedPermissionViewUnhideBlock;
  if (delayedPermissionViewUnhideBlock)
  {
    delayedPermissionViewUnhideBlock[2]();
    v5 = self->_delayedPermissionViewUnhideBlock;
    self->_delayedPermissionViewUnhideBlock = 0;
  }
}

- (void)playSoundAndHaptic
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_24374B000, log, OS_LOG_TYPE_ERROR, "Error creating system sound ID for audio URL: %@ status: (%d)", &v3, 0x12u);
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(CPSLaunchContentViewController *)self view];
  [v3 frame];
  [(CPSLaunchContentViewController *)self updatePreferredContentSizeForCardWidth:CGRectGetWidth(v6)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CPSLaunchContentViewController_viewDidLayoutSubviews__block_invoke;
  v4[3] = &unk_278DD25D0;
  v4[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

uint64_t __55__CPSLaunchContentViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCornerRadiusForButtons];
  v2 = *(a1 + 32);

  return [v2 _updateCloseButtonConstraints];
}

- (void)_updateCornerRadiusForButtons
{
  [(CPSVibrantButton *)self->_closeButton updateCornerRadius];
  [(CPSVibrantButton *)self->_openVibrantButton updateCornerRadius];
  v3 = self->_openButton;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIButton *)v3 updateCornerRadius];
  }
}

- (void)_updateCloseButtonConstraints
{
  if (_UISolariumEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&self->_cardBackgroundView);
    [WeakRetained _continuousCornerRadius];
    v5 = v4;
    [(CPSVibrantButton *)self->_closeButton bounds];
    v6 = v5 + CGRectGetWidth(v12) * -0.5;

    if (v6 >= 16.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 16.0;
    }

    v8 = v7 + -10.0;
    if (v8 >= 16.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 16.0;
    }

    [(NSLayoutConstraint *)self->_closeButtonXConstraint setConstant:v9];
    closeButtonYConstraint = self->_closeButtonYConstraint;

    [(NSLayoutConstraint *)closeButtonYConstraint setConstant:v9];
  }
}

- (void)_identifyCardBackgroundViewIfNeeded
{
  if (_UISolariumEnabled())
  {
    v3 = [(CPSLaunchContentViewController *)self navigationController];
    v4 = [v3 view];

    v5 = v4;
    while (v5)
    {
      obj = [v5 superview];

      objc_opt_class();
      v5 = obj;
      if (objc_opt_isKindOfClass())
      {
        objc_storeWeak(&self->_cardBackgroundView, obj);

        return;
      }
    }
  }
}

- (void)updateViewConstraints
{
  [(NSLayoutConstraint *)self->_heroContainerAspectRatioConstraint setActive:0];
  v3 = [(CPSLaunchContentViewController *)self traitCollection];
  v4 = [v3 verticalSizeClass];

  v5 = [(UIView *)self->_heroContainerView widthAnchor];
  v6 = [(UIView *)self->_heroContainerView heightAnchor];
  v7 = 1.5;
  if (v4 == 1)
  {
    v7 = 2.0;
  }

  v8 = [v5 constraintEqualToAnchor:v6 multiplier:v7];
  heroContainerAspectRatioConstraint = self->_heroContainerAspectRatioConstraint;
  self->_heroContainerAspectRatioConstraint = v8;

  [(NSLayoutConstraint *)self->_heroContainerAspectRatioConstraint setActive:1];
  [(CPSLaunchContentViewController *)self _updateCloseButtonConstraints];
  v10.receiver = self;
  v10.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v10 updateViewConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v25 traitCollectionDidChange:v4];
  v5 = [(CPSLaunchContentViewController *)self view];
  v6 = [(CPSLaunchContentViewController *)self traitCollection];
  v7 = [v6 cps_invocationCardPreferredContentSizeCategory];

  v8 = [v4 cps_invocationCardPreferredContentSizeCategory];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v7];
    [v5 _setLocalOverrideTraitCollection:v10];
  }

  if (self->_displayMode == 1)
  {
    v11 = [(CPSLaunchContentViewController *)self traitCollection];
    v12 = [v11 preferredContentSizeCategory];
    v13 = [v4 preferredContentSizeCategory];
    v14 = [v12 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(CPSLaunchContentViewController *)self traitCollection];
      v16 = [v15 preferredContentSizeCategory];
      v17 = inlineCardButtonFont(v16);
      v18 = [(CPSVibrantButton *)self->_openVibrantButton uiButton];
      v19 = [v18 titleLabel];
      [v19 setFont:v17];

      v20 = [(CPSLaunchContentViewController *)self traitCollection];
      v21 = [v20 preferredContentSizeCategory];
      v22 = inlineCardButtonFont(v21);
      v23 = [(CPSVibrantButton *)self->_closeButton uiButton];
      v24 = [v23 titleLabel];
      [v24 setFont:v22];
    }
  }

  [v5 setNeedsUpdateConstraints];
}

- (void)setUpHeroSection
{
  v48[7] = *MEMORY[0x277D85DE8];
  v46 = [(CPSLaunchContentViewController *)self view];
  [v46 setAccessibilityIdentifier:@"AppClipCard"];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  heroContainerView = self->_heroContainerView;
  self->_heroContainerView = v3;

  [(UIView *)self->_heroContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v46 addSubview:self->_heroContainerView];
  v5 = MEMORY[0x277D755E8];
  v6 = [MEMORY[0x277D75348] systemFillColor];
  v7 = [v5 cps_imageViewWithImage:0 tintColor:0 backgroundColor:v6];
  heroImageView = self->_heroImageView;
  self->_heroImageView = v7;

  [(UIImageView *)self->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_heroImageView setAccessibilityIgnoresInvertColors:1];
  [(UIView *)self->_heroContainerView addSubview:self->_heroImageView];
  v9 = MEMORY[0x277CCAAD0];
  v45 = [(UIView *)self->_heroContainerView topAnchor];
  v40 = [v46 topAnchor];
  v39 = [v45 constraintEqualToAnchor:?];
  v48[0] = v39;
  v44 = [(UIView *)self->_heroContainerView leadingAnchor];
  v38 = [v46 leadingAnchor];
  v37 = [v44 constraintEqualToAnchor:?];
  v48[1] = v37;
  v43 = [(UIView *)self->_heroContainerView trailingAnchor];
  v36 = [v46 trailingAnchor];
  v35 = [v43 constraintEqualToAnchor:?];
  v48[2] = v35;
  v42 = [(UIImageView *)self->_heroImageView topAnchor];
  v34 = [(UIView *)self->_heroContainerView topAnchor];
  v33 = [v42 constraintEqualToAnchor:?];
  v48[3] = v33;
  v41 = [(UIImageView *)self->_heroImageView bottomAnchor];
  v32 = [(UIView *)self->_heroContainerView bottomAnchor];
  v31 = [v41 constraintEqualToAnchor:?];
  v48[4] = v31;
  v10 = [(UIImageView *)self->_heroImageView leadingAnchor];
  v11 = [(UIView *)self->_heroContainerView leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v48[5] = v12;
  v13 = [(UIImageView *)self->_heroImageView trailingAnchor];
  v14 = [(UIView *)self->_heroContainerView trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v48[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
  [v9 activateConstraints:v16];

  if (self->_displayMode != 1)
  {
    v17 = [[CPSVibrantButton alloc] initWithButtonType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v17;

    [(CPSVibrantButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(CPSVibrantButton *)self->_closeButton uiButton];
    [v19 addTarget:self action:sel_dismiss_ forControlEvents:64];

    [(UIView *)self->_heroContainerView addSubview:self->_closeButton];
    v20 = [(UIView *)self->_heroContainerView trailingAnchor];
    v21 = [(CPSVibrantButton *)self->_closeButton trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];
    closeButtonXConstraint = self->_closeButtonXConstraint;
    self->_closeButtonXConstraint = v22;

    v24 = [(CPSVibrantButton *)self->_closeButton topAnchor];
    v25 = [(UIView *)self->_heroContainerView topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];
    closeButtonYConstraint = self->_closeButtonYConstraint;
    self->_closeButtonYConstraint = v26;

    v28 = MEMORY[0x277CCAAD0];
    v29 = self->_closeButtonYConstraint;
    v47[0] = self->_closeButtonXConstraint;
    v47[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [v28 activateConstraints:v30];
  }
}

- (void)setUpInformationSection
{
  v110[26] = *MEMORY[0x277D85DE8];
  v106 = [(CPSLaunchContentViewController *)self view];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  informationContainerView = self->_informationContainerView;
  self->_informationContainerView = v3;

  [(UIView *)self->_informationContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v106 addSubview:self->_informationContainerView];
  v5 = MEMORY[0x277D755E8];
  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  v7 = [v5 cps_imageViewWithImage:0 tintColor:0 backgroundColor:v6];
  heroMirrorImageView = self->_heroMirrorImageView;
  self->_heroMirrorImageView = v7;

  [(UIImageView *)self->_heroMirrorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  CGAffineTransformMakeScale(&v109, 1.0, -1.0);
  v9 = [(UIImageView *)self->_heroMirrorImageView layer];
  v108 = v109;
  [v9 setAffineTransform:&v108];

  [(UIImageView *)self->_heroMirrorImageView setAccessibilityIgnoresInvertColors:1];
  [(UIView *)self->_informationContainerView addSubview:self->_heroMirrorImageView];
  v10 = objc_alloc(MEMORY[0x277D75D68]);
  v11 = [MEMORY[0x277D75210] effectWithStyle:8];
  v104 = [v10 initWithEffect:v11];

  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_informationContainerView addSubview:v104];
  v105 = [v104 contentView];
  v107 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v107 setContentInsetAdjustmentBehavior:2];
  [v105 addSubview:v107];
  v12 = objc_alloc_init(CPSAppClipUnavailableView);
  unavailableView = self->_unavailableView;
  self->_unavailableView = v12;

  v14 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(CPSAppClipUnavailableView *)self->_unavailableView setBackgroundColor:v14];

  [(CPSAppClipUnavailableView *)self->_unavailableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppClipUnavailableView *)self->_unavailableView setHidden:1];
  [v105 addSubview:self->_unavailableView];
  v15 = objc_alloc_init(MEMORY[0x277D75A68]);
  informationContentView = self->_informationContentView;
  self->_informationContentView = v15;

  [(UIStackView *)self->_informationContentView setAxis:1];
  [(UIStackView *)self->_informationContentView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_informationContentView setInsetsLayoutMarginsFromSafeArea:0];
  [(UIStackView *)self->_informationContentView setDirectionalLayoutMargins:0.0, 24.0, 0.0, 24.0];
  [(UIStackView *)self->_informationContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v107 addSubview:self->_informationContentView];
  [(UIStackView *)self->_informationContentView cps_addArrangedSpacerWithHeight:20.0];
  [(CPSLaunchContentViewController *)self setUpClipInformationContainerView];
  [(UIStackView *)self->_informationContentView addArrangedSubview:self->_clipInformationContainerView];
  [(UIStackView *)self->_informationContentView setCustomSpacing:self->_clipInformationContainerView afterView:32.0];
  v17 = objc_alloc_init(CPSPermissionView);
  permissionView = self->_permissionView;
  self->_permissionView = v17;

  [(CPSPermissionView *)self->_permissionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSPermissionView *)self->_permissionView setHidden:1];
  [(UIStackView *)self->_informationContentView addArrangedSubview:self->_permissionView];
  v19 = [MEMORY[0x277D75D18] cps_vibrantSeparator];
  separatorView = self->_separatorView;
  self->_separatorView = v19;

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_informationContentView addArrangedSubview:self->_separatorView];
  [(UIStackView *)self->_informationContentView setCustomSpacing:self->_separatorView afterView:11.0];
  v21 = objc_alloc_init(CPSAppMetadataView);
  appMetadataView = self->_appMetadataView;
  self->_appMetadataView = v21;

  [(CPSAppMetadataView *)self->_appMetadataView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppMetadataView *)self->_appMetadataView addTarget:self action:sel_openAppStore forControlEvents:0x2000];
  [(CPSAppMetadataView *)self->_appMetadataView setUserInteractionEnabled:0];
  [(UIStackView *)self->_informationContentView addArrangedSubview:self->_appMetadataView];
  [(UIStackView *)self->_informationContentView cps_addArrangedSpacerWithHeight:24.0];
  v23 = [v107 heightAnchor];
  v24 = [(UIStackView *)self->_informationContentView heightAnchor];
  v103 = [v23 constraintEqualToAnchor:v24];

  LODWORD(v25) = 1132068864;
  [v103 setPriority:v25];
  v26 = MEMORY[0x277CCAAD0];
  v102 = [(UIView *)self->_informationContainerView topAnchor];
  v79 = [(UIView *)self->_heroContainerView bottomAnchor];
  v78 = [v102 constraintEqualToAnchor:?];
  v110[0] = v78;
  v101 = [(UIView *)self->_informationContainerView leadingAnchor];
  v77 = [v106 leadingAnchor];
  v76 = [v101 constraintEqualToAnchor:?];
  v110[1] = v76;
  v100 = [(UIView *)self->_informationContainerView trailingAnchor];
  v75 = [v106 trailingAnchor];
  v74 = [v100 constraintEqualToAnchor:?];
  v110[2] = v74;
  v99 = [(UIView *)self->_informationContainerView bottomAnchor];
  v73 = [v106 bottomAnchor];
  v72 = [v99 constraintEqualToAnchor:?];
  v110[3] = v72;
  v98 = [(CPSAppClipUnavailableView *)self->_unavailableView topAnchor];
  v71 = [(UIView *)self->_heroContainerView bottomAnchor];
  v70 = [v98 constraintEqualToAnchor:?];
  v110[4] = v70;
  v97 = [(CPSAppClipUnavailableView *)self->_unavailableView leadingAnchor];
  v69 = [v106 leadingAnchor];
  v68 = [v97 constraintEqualToAnchor:?];
  v110[5] = v68;
  v96 = [(CPSAppClipUnavailableView *)self->_unavailableView trailingAnchor];
  v67 = [v106 trailingAnchor];
  v66 = [v96 constraintEqualToAnchor:?];
  v110[6] = v66;
  v95 = [(CPSAppClipUnavailableView *)self->_unavailableView bottomAnchor];
  v65 = [v106 bottomAnchor];
  v64 = [v95 constraintEqualToAnchor:?];
  v110[7] = v64;
  v94 = [(UIImageView *)self->_heroMirrorImageView topAnchor];
  v63 = [(UIView *)self->_informationContainerView topAnchor];
  v62 = [v94 constraintEqualToAnchor:?];
  v110[8] = v62;
  v93 = [(UIImageView *)self->_heroMirrorImageView leadingAnchor];
  v61 = [(UIImageView *)self->_heroImageView leadingAnchor];
  v60 = [v93 constraintEqualToAnchor:?];
  v110[9] = v60;
  v92 = [(UIImageView *)self->_heroMirrorImageView trailingAnchor];
  v59 = [(UIImageView *)self->_heroImageView trailingAnchor];
  v58 = [v92 constraintEqualToAnchor:?];
  v110[10] = v58;
  v91 = [(UIImageView *)self->_heroMirrorImageView heightAnchor];
  v57 = [(UIImageView *)self->_heroImageView heightAnchor];
  v56 = [v91 constraintEqualToAnchor:?];
  v110[11] = v56;
  v90 = [v104 topAnchor];
  v55 = [(UIView *)self->_informationContainerView topAnchor];
  v54 = [v90 constraintEqualToAnchor:?];
  v110[12] = v54;
  v89 = [v104 leadingAnchor];
  v53 = [(UIView *)self->_informationContainerView leadingAnchor];
  v52 = [v89 constraintEqualToAnchor:?];
  v110[13] = v52;
  v88 = [v104 trailingAnchor];
  v51 = [(UIView *)self->_informationContainerView trailingAnchor];
  v50 = [v88 constraintEqualToAnchor:?];
  v110[14] = v50;
  v87 = [v104 bottomAnchor];
  v49 = [(UIView *)self->_informationContainerView bottomAnchor];
  v48 = [v87 constraintEqualToAnchor:?];
  v110[15] = v48;
  v86 = [v107 topAnchor];
  v47 = [v105 topAnchor];
  v46 = [v86 constraintEqualToAnchor:?];
  v110[16] = v46;
  v85 = [v107 leadingAnchor];
  v45 = [v105 leadingAnchor];
  v44 = [v85 constraintEqualToAnchor:?];
  v110[17] = v44;
  v84 = [v105 trailingAnchor];
  v43 = [v107 trailingAnchor];
  v42 = [v84 constraintEqualToAnchor:?];
  v110[18] = v42;
  v83 = [v105 bottomAnchor];
  v41 = [v107 bottomAnchor];
  v40 = [v83 constraintEqualToAnchor:?];
  v110[19] = v40;
  v82 = [(UIStackView *)self->_informationContentView topAnchor];
  v39 = [v107 topAnchor];
  v38 = [v82 constraintEqualToAnchor:?];
  v110[20] = v38;
  v81 = [(UIStackView *)self->_informationContentView leadingAnchor];
  v37 = [v107 leadingAnchor];
  v36 = [v81 constraintEqualToAnchor:?];
  v110[21] = v36;
  v80 = [(UIStackView *)self->_informationContentView trailingAnchor];
  v27 = [v107 trailingAnchor];
  v28 = [v80 constraintEqualToAnchor:v27];
  v110[22] = v28;
  v29 = [(UIStackView *)self->_informationContentView bottomAnchor];
  v30 = [v107 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v110[23] = v31;
  v32 = [v107 widthAnchor];
  v33 = [(UIStackView *)self->_informationContentView widthAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v110[24] = v34;
  v110[25] = v103;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:26];
  [v26 activateConstraints:v35];
}

- (id)_setUpOpenButtonIfNeeded
{
  openButton = self->_openButton;
  if (openButton)
  {
    if (self->_openVibrantButton)
    {
      openButton = self->_openVibrantButton;
    }

    v4 = openButton;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] cps_colorNamed:@"disabledOpenButtonBackground"];
    if (self->_displayMode == 1)
    {
      v6 = [[CPSVibrantButton alloc] initWithButtonType:0];
      openVibrantButton = self->_openVibrantButton;
      self->_openVibrantButton = v6;

      v8 = [(CPSVibrantButton *)self->_openVibrantButton uiButton];
      v9 = self->_openButton;
      self->_openButton = v8;

      v10 = [(CPSLaunchContentViewController *)self traitCollection];
      v11 = [v10 preferredContentSizeCategory];
      v12 = inlineCardButtonFont(v11);
      v13 = [(UIButton *)self->_openButton titleLabel];
      [v13 setFont:v12];

      v14 = self->_openButton;
      v15 = [MEMORY[0x277D75348] systemBlueColor];
      [(UIButton *)v14 setTitleColor:v15 forState:0];

      [(CPSVibrantButton *)self->_openVibrantButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSVibrantButton *)self->_openVibrantButton setAdjustFontSizeToFitWidth:1];
    }

    else
    {
      v16 = [CPSButton alloc];
      v17 = [MEMORY[0x277D75348] whiteColor];
      v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
      v19 = [(CPSButton *)v16 initWithTitle:0 enabledTitleColor:v17 disabledTitleColor:v18 backgroundColor:v5 textStyle:*MEMORY[0x277D76988] cornerRadius:1 animatesAlphaWhenHighlighted:0.0];
      v20 = self->_openButton;
      self->_openButton = v19;

      v21 = [(UIButton *)self->_openButton titleLabel];
      [v21 setAdjustsFontForContentSizeCategory:1];
    }

    [(UIButton *)self->_openButton setContentEdgeInsets:12.0, 18.0, 12.0, 18.0];
    [(UIButton *)self->_openButton setEnabled:0];
    [(UIButton *)self->_openButton setHidden:1];
    [(UIButton *)self->_openButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1144766464;
    [(UIButton *)self->_openButton setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1132134400;
    [(UIButton *)self->_openButton setContentHuggingPriority:0 forAxis:v23];
    v24 = self->_openVibrantButton;
    if (!v24)
    {
      v24 = self->_openButton;
    }

    v4 = v24;
  }

  return v4;
}

- (void)setUpClipInformationContainerView
{
  v92[10] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  clipInformationContainerView = self->_clipInformationContainerView;
  self->_clipInformationContainerView = v3;

  [(UIView *)self->_clipInformationContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v89 = objc_alloc_init(MEMORY[0x277D75D18]);
  objc_storeStrong(&self->_clipNameAndDescriptionContainer, v89);
  [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_clipInformationContainerView addSubview:v89];
  v5 = [CPSVibrantLabel alloc];
  v6 = [(CPSVibrantLabel *)v5 initWithTextStyle:*MEMORY[0x277D76A20] textVariant:1280 vibrancyEffectStyle:0];
  clipNameVibrantLabel = self->_clipNameVibrantLabel;
  self->_clipNameVibrantLabel = v6;

  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setAccessibilityIdentifier:@"AppClipName"];
  v8 = *MEMORY[0x277CFA678];
  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setText:*MEMORY[0x277CFA678]];
  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setNumberOfLines:2];
  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v89 addSubview:self->_clipNameVibrantLabel];
  v9 = [CPSVibrantLabel alloc];
  v10 = [(CPSVibrantLabel *)v9 initWithTextStyle:*MEMORY[0x277D76968] textVariant:256 vibrancyEffectStyle:0];
  clipDescriptionVibrantLabel = self->_clipDescriptionVibrantLabel;
  self->_clipDescriptionVibrantLabel = v10;

  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel setAccessibilityIdentifier:@"AppClipDescription"];
  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel setText:v8];
  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel setNumberOfLines:2];
  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v89 addSubview:self->_clipDescriptionVibrantLabel];
  v88 = [(CPSLaunchContentViewController *)self _setUpOpenButtonIfNeeded];
  [(UIView *)self->_clipInformationContainerView addSubview:?];
  v12 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel topAnchor];
  v13 = [v89 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  clipNameVibrantLabelTopAnchor = self->_clipNameVibrantLabelTopAnchor;
  self->_clipNameVibrantLabelTopAnchor = v14;

  v16 = MEMORY[0x277CCAAD0];
  v86 = [v89 topAnchor];
  v72 = [(UIView *)self->_clipInformationContainerView topAnchor];
  v70 = [v86 constraintGreaterThanOrEqualToAnchor:?];
  v92[0] = v70;
  v84 = [v89 leadingAnchor];
  v68 = [(UIView *)self->_clipInformationContainerView leadingAnchor];
  v17 = [v84 constraintEqualToAnchor:?];
  v18 = self->_clipNameVibrantLabelTopAnchor;
  v66 = v17;
  v92[1] = v17;
  v92[2] = v18;
  v82 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel leadingAnchor];
  v64 = [v89 leadingAnchor];
  v62 = [v82 constraintEqualToAnchor:?];
  v92[3] = v62;
  v80 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel trailingAnchor];
  v60 = [v89 trailingAnchor];
  v58 = [v80 constraintEqualToAnchor:?];
  v92[4] = v58;
  v78 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel topAnchor];
  v56 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel bottomAnchor];
  v54 = [v78 constraintEqualToAnchor:2.0 constant:?];
  v92[5] = v54;
  v76 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel leadingAnchor];
  v52 = [v89 leadingAnchor];
  v50 = [v76 constraintEqualToAnchor:?];
  v92[6] = v50;
  v74 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel trailingAnchor];
  v48 = [v89 trailingAnchor];
  v19 = [v74 constraintEqualToAnchor:?];
  v92[7] = v19;
  v20 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel bottomAnchor];
  v21 = [v89 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v92[8] = v22;
  v23 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
  v24 = [v88 bottomAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];
  v92[9] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:10];
  [v16 activateConstraints:v26];

  [(CPSLaunchContentViewController *)self _createClipSourceVibrantLabelIfNeeded];
  if (self->_displayMode)
  {
    v27 = [[CPSVibrantButton alloc] initWithButtonType:0];
    closeButton = self->_closeButton;
    self->_closeButton = v27;

    [(CPSVibrantButton *)self->_closeButton setAdjustFontSizeToFitWidth:1];
    v87 = [(CPSVibrantButton *)self->_closeButton uiButton];
    v29 = [(CPSLaunchContentViewController *)self traitCollection];
    v30 = [v29 preferredContentSizeCategory];
    v31 = inlineCardButtonFont(v30);
    v32 = [v87 titleLabel];
    [v32 setFont:v31];

    [v87 setAccessibilityIdentifier:@"ViewInSafariButton"];
    v33 = [MEMORY[0x277D75348] systemBlueColor];
    [v87 setTitleColor:v33 forState:0];

    v34 = _CPSLocalizedString();
    [v87 setTitle:v34 forState:0];

    [(CPSVibrantButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [v87 setContentEdgeInsets:{12.0, 18.0, 12.0, 18.0}];
    [v87 addTarget:self action:sel_dismiss_ forControlEvents:64];
    [(UIView *)self->_clipInformationContainerView addSubview:self->_closeButton];
    v35 = MEMORY[0x277CCAAD0];
    v85 = [(CPSVibrantButton *)self->_closeButton leadingAnchor];
    v65 = [(UIView *)self->_clipInformationContainerView leadingAnchor];
    v73 = [v85 constraintEqualToAnchor:?];
    v90[0] = v73;
    v83 = [(CPSVibrantButton *)self->_closeButton topAnchor];
    v63 = [v88 topAnchor];
    v71 = [v83 constraintEqualToAnchor:?];
    v90[1] = v71;
    v81 = [(CPSVibrantButton *)self->_closeButton bottomAnchor];
    v61 = [v88 bottomAnchor];
    v69 = [v81 constraintEqualToAnchor:?];
    v90[2] = v69;
    v79 = [(CPSVibrantButton *)self->_closeButton widthAnchor];
    v59 = [(UIView *)self->_clipInformationContainerView widthAnchor];
    v57 = [v79 constraintEqualToAnchor:0.5 multiplier:-8.0 constant:?];
    v90[3] = v57;
    v77 = [v88 widthAnchor];
    v55 = [(UIView *)self->_clipInformationContainerView widthAnchor];
    v67 = [v77 constraintEqualToAnchor:0.5 multiplier:-8.0 constant:?];
    v90[4] = v67;
    v75 = [v88 topAnchor];
    v53 = [v89 bottomAnchor];
    v36 = [v75 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
    v90[5] = v36;
    v51 = [v88 trailingAnchor];
    v49 = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    v37 = [v51 constraintEqualToAnchor:?];
    v90[6] = v37;
    v38 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
    v39 = [v88 bottomAnchor];
    v40 = [v38 constraintGreaterThanOrEqualToAnchor:v39];
    v90[7] = v40;
    v41 = [v89 trailingAnchor];
    v42 = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v90[8] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:9];
    [v35 activateConstraints:v44];
  }

  else
  {
    v45 = MEMORY[0x277CCAAD0];
    v87 = [v88 topAnchor];
    v85 = [(UIView *)self->_clipInformationContainerView topAnchor];
    v65 = [v87 constraintGreaterThanOrEqualToAnchor:?];
    v91[0] = v65;
    v73 = [v88 centerYAnchor];
    v83 = [v89 centerYAnchor];
    v63 = [v73 constraintEqualToAnchor:?];
    v91[1] = v63;
    v71 = [v88 leadingAnchor];
    v81 = [v89 trailingAnchor];
    v61 = [v71 constraintEqualToAnchor:16.0 constant:?];
    v91[2] = v61;
    v69 = [v88 trailingAnchor];
    v79 = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    v59 = [v69 constraintEqualToAnchor:?];
    v91[3] = v59;
    v57 = [v88 widthAnchor];
    v46 = [v57 constraintGreaterThanOrEqualToConstant:100.0];
    LODWORD(v47) = 1144750080;
    v77 = v46;
    v55 = [v46 cps_setPriority:v47];
    v91[4] = v55;
    v67 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
    v75 = [v89 bottomAnchor];
    v53 = [v67 constraintGreaterThanOrEqualToAnchor:?];
    v91[5] = v53;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:6];
    [v45 activateConstraints:v36];
  }
}

- (void)configurePermissionView
{
  objc_initWeak(&location, self);
  self->_willConfigurePermissionView = 1;
  sessionProxy = self->_sessionProxy;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CPSLaunchContentViewController_configurePermissionView__block_invoke;
  v4[3] = &unk_278DD2648;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [(CPSSessionProxy *)sessionProxy getLastLaunchOptionsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__CPSLaunchContentViewController_configurePermissionView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_2;
  block[3] = &unk_278DD2620;
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
}

void __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_2(id *a1)
{
  v2 = [a1[4] shouldRequestLocationConfirmationPermission];
  v3 = a1[4];
  v4 = *(v3 + 140);
  v5 = [*(v3 + 138) fullAppName];
  [v4 configureWithAppName:v5 requestsNotificationPermission:objc_msgSend(*(a1[4] + 138) requestsLocationConfirmationPermission:{"clipRequestsNotificationPermission"), v2}];

  if (v2)
  {
    v6 = [a1[5] locationConfirmationGranted];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v8 = 1;
    }

    [*(a1[4] + 140) setLocationConfirmationPermissionEnabled:v8];
  }

  if ([*(a1[4] + 138) clipRequestsNotificationPermission])
  {
    if ([a1[4] _userNotificationAuthorizationDenied])
    {
      [*(a1[4] + 140) setNotificationPermissionEnabled:0];
    }

    else
    {
      v9 = [a1[5] userNotificationGranted];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 BOOLValue];
      }

      else
      {
        v11 = 1;
      }

      [*(a1[4] + 140) setNotificationPermissionEnabled:v11];
    }
  }

  v12 = [CPSPermissionsViewController alloc];
  v13 = [*(a1[4] + 138) fullAppName];
  v14 = [a1[4] _heroImage];
  v15 = [(CPSPermissionsViewController *)v12 initWithAppName:v13 backgroundImage:v14];
  v16 = a1[4];
  v17 = v16[142];
  v16[142] = v15;

  [*(a1[4] + 142) setDelegate:?];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_3;
  v23[3] = &unk_278DD25F8;
  objc_copyWeak(&v24, a1 + 6);
  [*(a1[4] + 140) setOptionsAction:v23];
  [*(a1[4] + 142) setLocationConfirmationPermissionEnabled:{objc_msgSend(*(a1[4] + 140), "locationConfirmationPermissionEnabled")}];
  [*(a1[4] + 142) setNotificationPermissionEnabled:{objc_msgSend(*(a1[4] + 140), "notificationPermissionEnabled")}];
  [*(a1[4] + 130) setCustomSpacing:*(a1[4] + 140) afterView:12.0];
  [*(a1[4] + 140) layoutIfNeeded];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_4;
  v22[3] = &unk_278DD25D0;
  v22[4] = a1[4];
  v18 = MEMORY[0x245D3DDC0](v22);
  if ([a1[4] _appearState] == 2)
  {
    v18[2](v18);
  }

  else if ([a1[4] _appearState])
  {
    v19 = MEMORY[0x245D3DDC0](v18);
    v20 = a1[4];
    v21 = v20[154];
    v20[154] = v19;
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v18];
  }

  objc_destroyWeak(&v24);
}

void __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationController];
    [v2 pushViewController:v3[142] animated:1];

    WeakRetained = v3;
  }
}

uint64_t __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_5;
  v2[3] = &unk_278DD25D0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0 completion:0.2];
}

void __57__CPSLaunchContentViewController_configurePermissionView__block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 1120) setHidden:0];
  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  v5 = [*(a1 + 32) navigationController];
  v2 = [v5 parentViewController];
  v3 = [v2 view];
  [v3 layoutIfNeeded];
}

- (BOOL)_userNotificationAuthorizationDenied
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = getUNNotificationSettingsCenterClass(void)::softClass;
  v16 = getUNNotificationSettingsCenterClass(void)::softClass;
  if (!getUNNotificationSettingsCenterClass(void)::softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZL36getUNNotificationSettingsCenterClassv_block_invoke;
    v12[3] = &unk_278DD27B0;
    v12[4] = &v13;
    ___ZL36getUNNotificationSettingsCenterClassv_block_invoke(v12);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = [v3 currentNotificationSettingsCenter];
  v6 = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
  v7 = [v5 notificationSourceWithIdentifier:v6];
  v8 = [v7 sourceSettings];
  v9 = [v8 notificationSettings];
  v10 = [v9 authorizationStatus];

  return v10 == 1;
}

- (void)enableOpenButton
{
  [(UIButton *)self->_openButton setEnabled:1];
  [(UIButton *)self->_openButton setAccessibilityIdentifier:@"OpenButton"];
  if (!self->_displayMode)
  {
    v3 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)self->_openButton setBackgroundColor:?];
  }
}

- (void)disableOpenButton
{
  [(UIButton *)self->_openButton setEnabled:0];
  if (!self->_displayMode)
  {
    v3 = [MEMORY[0x277D75348] cps_colorNamed:@"disabledOpenButtonBackground"];
    [(UIButton *)self->_openButton setBackgroundColor:?];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [(CPSLaunchContentViewController *)self shouldRequestLocationConfirmationPermission];
  permissionsViewController = self->_permissionsViewController;
  v6 = [(CPSLaunchContentViewController *)self navigationController];
  v7 = [v6 topViewController];
  LOBYTE(permissionsViewController) = [(CPSPermissionsViewController *)permissionsViewController isEqual:v7];

  if (!v4 && (permissionsViewController & 1) != 0)
  {
    v8 = [(CPSLaunchContentViewController *)self navigationController];
    v9 = [v8 popViewControllerAnimated:0];
  }

  permissionView = self->_permissionView;
  v11 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
  [(CPSPermissionView *)permissionView configureWithAppName:v11 requestsNotificationPermission:[(CPSClipMetadata *)self->_clipMetadata clipRequestsNotificationPermission] requestsLocationConfirmationPermission:v4];

  if (!v4)
  {
    [(CPSPermissionView *)self->_permissionView setLocationConfirmationPermissionEnabled:0];
    v12 = self->_permissionsViewController;

    [(CPSPermissionsViewController *)v12 setLocationConfirmationPermissionEnabled:0];
  }
}

- (void)_sendAnalyticsIfNeeded
{
  if (!self->_didSendAnalytics)
  {
    v11 = [(CPSSessionProxy *)self->_sessionProxy metadata];
    v3 = [v11 clipBundleID];
    v4 = [v11 itemID];
    if ([v3 length] && objc_msgSend(v4, "intValue"))
    {
      self->_didSendAnalytics = 1;
      v5 = [MEMORY[0x277CFA680] sharedLogger];
      v6 = [(CPSSessionProxy *)self->_sessionProxy sourceBundleID];
      v7 = [(CPSSessionProxy *)self->_sessionProxy referrerBundleID];
      v8 = [(CPSSessionProxy *)self->_sessionProxy launchReason];
      v9 = [v11 clipRequestURL];
      LOBYTE(v10) = self->_displayMode == 1;
      [v5 didPresentInvocationCardForClip:v3 adamID:v4 sourceBundleIdentifier:v6 referrerBundleIdentifier:v7 event:v8 url:v9 didShowCardInline:v10];
    }
  }
}

- (void)_updateContent
{
  [(CPSLaunchContentViewController *)self _updateHeroImageIfNeeded];
  v23 = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  if (v23)
  {
    v3 = [(CPSSessionProxy *)self->_sessionProxy launchReason];
    if (([(CPSClipMetadata *)self->_clipMetadata isPhysicalInvocationAllowed]& 1) != 0)
    {
      v4 = 0;
    }

    else if ([v3 isEqualToString:*MEMORY[0x277CFA670]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CFA660]))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isEqualToString:*MEMORY[0x277CFA668]];
    }

    if ([v23 isEligible])
    {
      if (v4)
      {
LABEL_10:
        v5 = [MEMORY[0x277CFA680] sharedLogger];
        v6 = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
        [v5 recordDidShowErrorWithBundleID:v6 place:@"card" errorCode:{objc_msgSend(v23, "reason")}];

        if (v4)
        {
          _CPSLocalizedString();
        }

        else
        {
          [v23 localizedMessageForClipMetadata:self->_clipMetadata];
        }
        v22 = ;
        [(CPSLaunchContentViewController *)self showUnavailableViewWithReason:v22];
        v20 = v22;
        goto LABEL_35;
      }
    }

    else if (v4 & 1 | (([v23 isRecoverable] & 1) == 0))
    {
      goto LABEL_10;
    }

    [(CPSLaunchContentViewController *)self setUnavailableViewHidden:1];
  }

  v3 = [(CPSClipMetadata *)self->_clipMetadata fullAppIconURL];
  if ([v3 cps_isFileURL])
  {
    v7 = objc_alloc(MEMORY[0x277D755B8]);
    v8 = [v3 path];
    v9 = [v7 initWithContentsOfFile:v8];
    [(CPSAppMetadataView *)self->_appMetadataView setAppIcon:v9];
  }

  [(CPSLaunchContentViewController *)self _createClipSourceVibrantLabelIfNeeded];
  v10 = [(CPSClipMetadata *)self->_clipMetadata clipName];
  v11 = v10;
  v12 = *MEMORY[0x277CFA678];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *MEMORY[0x277CFA678];
  }

  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setText:v13];

  [(CPSVibrantLabel *)self->_clipNameVibrantLabel layoutIfNeeded];
  v14 = [(CPSClipMetadata *)self->_clipMetadata clipCaption];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = 1088;
  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel setText:v16];

  [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel layoutIfNeeded];
  [(CPSLaunchContentViewController *)self updateOpenButton];
  if (!self->_willConfigurePermissionView && (([(CPSClipMetadata *)self->_clipMetadata clipRequestsNotificationPermission]& 1) != 0 || [(CPSLaunchContentViewController *)self shouldRequestLocationConfirmationPermission]))
  {
    [(CPSLaunchContentViewController *)self configurePermissionView];
  }

  [(CPSAppMetadataView *)self->_appMetadataView updateWithMetadata:self->_clipMetadata];
  v18 = [(CPSClipMetadata *)self->_clipMetadata hasAppMetadata];
  if ((v18 & 1) != 0 || ([(CPSClipMetadata *)self->_clipMetadata fullAppStoreURL], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = [(CPSClipMetadata *)self->_clipMetadata fullAppOnly];
    if ((v18 & 1) == 0)
    {
    }

    if ((v19 & 1) == 0)
    {
      [(CPSAppMetadataView *)self->_appMetadataView setUserInteractionEnabled:1];
    }
  }

  [(CPSAppMetadataView *)self->_appMetadataView layoutIfNeeded];
  [(CPSLaunchContentViewController *)self determineClipCompatibility];
  v20 = [(CPSLaunchContentViewController *)self view];
  [v20 bounds];
  [(CPSLaunchContentViewController *)self updatePreferredContentSizeForCardWidth:v21];
LABEL_35:
}

- (void)_createClipSourceVibrantLabelIfNeeded
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_clipSourceVibrantLabel && self->_clipNameAndDescriptionContainer)
  {
    if ([(CPSClipMetadata *)self->_clipMetadata supportsArcade])
    {
      v3 = [CPSVibrantLabel alloc];
      v4 = [(CPSVibrantLabel *)v3 initWithTextStyle:*MEMORY[0x277D76968] textVariant:0 vibrancyEffectStyle:1];
      clipSourceVibrantLabel = self->_clipSourceVibrantLabel;
      self->_clipSourceVibrantLabel = v4;

      [(CPSVibrantLabel *)self->_clipSourceVibrantLabel setAccessibilityIdentifier:@"AppClipSource"];
      v6 = _CPSLocalizedString();
      [(CPSVibrantLabel *)self->_clipSourceVibrantLabel setText:v6];

      [(CPSVibrantLabel *)self->_clipSourceVibrantLabel setNumberOfLines:1];
      [(CPSVibrantLabel *)self->_clipSourceVibrantLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_clipNameAndDescriptionContainer addSubview:self->_clipSourceVibrantLabel];
      v7 = MEMORY[0x277CCAAD0];
      v20[0] = self->_clipNameVibrantLabelTopAnchor;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [v7 deactivateConstraints:v8];

      v9 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel topAnchor];
      v10 = [(CPSVibrantLabel *)self->_clipSourceVibrantLabel bottomAnchor];
      v11 = [v9 constraintEqualToAnchor:v10 constant:2.0];
      clipNameVibrantLabelTopAnchor = self->_clipNameVibrantLabelTopAnchor;
      self->_clipNameVibrantLabelTopAnchor = v11;

      v13 = MEMORY[0x277CCAAD0];
      v14 = [(CPSVibrantLabel *)self->_clipSourceVibrantLabel topAnchor];
      v15 = [(UIView *)self->_clipNameAndDescriptionContainer topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v17 = self->_clipNameVibrantLabelTopAnchor;
      v19[0] = v16;
      v19[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      [v13 activateConstraints:v18];
    }
  }
}

- (void)updateOpenButton
{
  if (self->_openButton)
  {
    displayMode = self->_displayMode;
    clipMetadata = self->_clipMetadata;
    if (displayMode == 1)
    {
      v5 = [(CPSClipMetadata *)clipMetadata clipAction];
      if (v5 <= 2)
      {
        v5 = _CPSLocalizedString();
      }
    }

    else
    {
      v5 = [(CPSClipMetadata *)clipMetadata clipOpenButtonTitle];
    }

    v6 = MEMORY[0x277D75D18];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __50__CPSLaunchContentViewController_updateOpenButton__block_invoke;
    v15 = &unk_278DD2670;
    v16 = self;
    v7 = v5;
    v17 = v7;
    [v6 performWithoutAnimation:&v12];
    v8 = self->_uiMock_openButtonEnabled;
    v9 = v8;
    if (v8)
    {
      if ([(NSNumber *)v8 BOOLValue:v12])
      {
        [(CPSLaunchContentViewController *)self enableOpenButton];
      }

      else
      {
        [(CPSLaunchContentViewController *)self disableOpenButton];
      }
    }

    v10 = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
    if (!v10)
    {
      goto LABEL_19;
    }

    [(CPSLaunchContentViewController *)self disableOpenButton];
    [(UIButton *)self->_openButton removeTarget:self action:0 forControlEvents:0x2000];
    if ([v10 isEligible])
    {
      if (([(CPSClipMetadata *)self->_clipMetadata hasFullAppInstalledOnSystem]& 1) == 0 && !self->_didInstallApplicationPlaceholder && ![(CPSClipMetadata *)self->_clipMetadata fullAppOnly])
      {
        goto LABEL_19;
      }

      [(CPSLaunchContentViewController *)self enableOpenButton:v12];
      v11 = &selRef__openAppClip_;
    }

    else
    {
      if (![v10 isRecoverable])
      {
LABEL_19:

        return;
      }

      [(CPSLaunchContentViewController *)self enableOpenButton];
      v11 = &selRef_handlePolicyRecovery;
    }

    [(UIButton *)self->_openButton addTarget:self action:*v11 forControlEvents:0x2000, v12, v13, v14, v15, v16];
    goto LABEL_19;
  }
}

uint64_t __50__CPSLaunchContentViewController_updateOpenButton__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1184) setTitle:*(a1 + 40) forState:0];
  [*(a1 + 32) _updateCornerRadiusForButtons];
  v2 = [*(a1 + 40) length] == 0;
  v3 = *(*(a1 + 32) + 1184);

  return [v3 setHidden:v2];
}

- (void)determineClipCompatibility
{
  if (([(CPSClipMetadata *)self->_clipMetadata clipIncompatibleWithCurrentDevice]& 1) != 0 || [(CPSClipMetadata *)self->_clipMetadata deviceCapabilitiesDontMatch])
  {
    v3 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];

    if (v3)
    {
      v4 = [(CPSClipMetadata *)self->_clipMetadata clipIncompatibleWithCurrentDevice];
      v5 = MEMORY[0x277CCACA8];
      if (v4)
      {
        v6 = _CPSLocalizedString();
        v7 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
        [MEMORY[0x277CFA6E0] oppositeDeviceFamilyName];
      }

      else
      {
        v6 = _CPSLocalizedString();
        v7 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
        [MEMORY[0x277CFA6E0] localizedDeviceName];
      }
      v8 = ;
      v11 = [v5 stringWithFormat:v6, v7, v8];

      v9 = [MEMORY[0x277CFA680] sharedLogger];
      v10 = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
      [v9 recordDidShowErrorWithBundleID:v10 place:@"card" errorCode:1001];

      [(CPSLaunchContentViewController *)self showUnavailableViewWithReason:v11];
    }
  }
}

- (void)signInToAppStore
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = getAMSAuthenticateOptionsClass(void)::softClass;
  v16 = getAMSAuthenticateOptionsClass(void)::softClass;
  if (!getAMSAuthenticateOptionsClass(void)::softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZL30getAMSAuthenticateOptionsClassv_block_invoke;
    v12[3] = &unk_278DD27B0;
    v12[4] = &v13;
    ___ZL30getAMSAuthenticateOptionsClassv_block_invoke(v12);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = objc_alloc_init(v3);
  [v5 setAllowServerDialogs:1];
  v6 = objc_alloc(MEMORY[0x277CEE878]);
  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  v9 = [v6 initWithAccount:v8 presentingViewController:self options:v5];

  [(CPSLaunchContentViewController *)self disableOpenButton];
  v10 = [v9 performAuthentication];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__CPSLaunchContentViewController_signInToAppStore__block_invoke;
  v11[3] = &unk_278DD2698;
  v11[4] = self;
  [v10 addFinishBlock:v11];
}

void __50__CPSLaunchContentViewController_signInToAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CPSLaunchContentViewController_signInToAppStore__block_invoke_2;
  v7[3] = &unk_278DD2670;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __50__CPSLaunchContentViewController_signInToAppStore__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    return [v2 enableOpenButton];
  }

  else
  {
    [v2[148] removeTarget:0 action:0 forControlEvents:0x2000];
    [*(*(a1 + 40) + 1104) setInvocationPolicy:0];
    v5 = *(*(a1 + 40) + 1112);

    return [v5 prewarmClip];
  }
}

- (void)handlePolicyRecovery
{
  v3 = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  v4 = [v3 localizedTitle];
  v5 = [v3 localizedMessageForClipMetadata:self->_clipMetadata];
  v6 = [v3 reason];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _CPSLocalizedString();
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  if (v6 == 1)
  {
    v11 = MEMORY[0x277D750F8];
    v12 = _CPSLocalizedString();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke;
    v17[3] = &unk_278DD2710;
    v17[4] = self;
    v13 = [v11 actionWithTitle:v12 style:0 handler:v17];

    [v7 addAction:v13];
    [v7 addAction:v10];
    [v7 setPreferredAction:v13];
  }

  else
  {
    [v7 addAction:v10];
    v14 = MEMORY[0x277D750F8];
    v15 = _CPSLocalizedString();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke_4;
    v16[3] = &unk_278DD2710;
    v16[4] = self;
    v13 = [v14 actionWithTitle:v15 style:0 handler:v16];

    [v7 addAction:v13];
    [v7 setPreferredAction:v13];
  }

  [(CPSLaunchContentViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D66B30]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke_2;
  v5[3] = &unk_278DD26E8;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 requestPasscodeUnlockUIWithOptions:0 withCompletion:v5];
}

void __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke_3;
  block[3] = &unk_278DD26C0;
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__CPSLaunchContentViewController_handlePolicyRecovery__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 signInToAppStore];
  }

  return result;
}

- (void)setUnavailableViewHidden:(BOOL)a3
{
  v3 = a3;
  if ([(CPSAppClipUnavailableView *)self->_unavailableView isHidden]!= a3)
  {
    [(CPSAppClipUnavailableView *)self->_unavailableView setHidden:v3];
    v5 = v3 ^ 1;
    [(UIStackView *)self->_informationContentView setHidden:v5];
    if ((v5 & 1) == 0)
    {
      unavailableView = self->_unavailableView;

      [(CPSAppClipUnavailableView *)unavailableView setReasonString:0];
    }
  }
}

- (void)showUnavailableViewWithReason:(id)a3
{
  v4 = a3;
  [(CPSLaunchContentViewController *)self setUnavailableViewHidden:0];
  [(CPSAppClipUnavailableView *)self->_unavailableView setReasonString:v4];
  v5 = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  if ([v5 reason] == 14)
  {
    v6 = [(CPSSessionProxy *)self->_sessionProxy launchReason];
    v7 = [v6 isEqualToString:*MEMORY[0x277CFA660]];

    if ((v7 & 1) == 0)
    {
      objc_initWeak(&location, self);
      unavailableView = self->_unavailableView;
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __64__CPSLaunchContentViewController_showUnavailableViewWithReason___block_invoke;
      v12 = &unk_278DD25F8;
      objc_copyWeak(&v13, &location);
      [(CPSAppClipUnavailableView *)unavailableView enableURLFallbackWithAction:&v9];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }

  [(CPSAppClipUnavailableView *)self->_unavailableView layoutIfNeeded:v9];
}

void __64__CPSLaunchContentViewController_showUnavailableViewWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[138] clipLaunchURL];
    [v3 _openNonAppClipURL:v2];

    WeakRetained = v3;
  }
}

- (void)_setHeroImage:(id)a3
{
  v5 = a3;
  [(UIImageView *)self->_heroImageView setImage:?];
  [(UIImageView *)self->_heroImageView setAccessibilityIdentifier:@"HeroImage"];
  [(UIImageView *)self->_heroMirrorImageView setImage:v5];
  if (v5)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v4 = ;
  [(CPSAppClipUnavailableView *)self->_unavailableView setBackgroundColor:v4];

  [(CPSPermissionsViewController *)self->_permissionsViewController setBackgroundImage:v5];
}

- (void)_openAppClip:(id)a3
{
  if ([(CPSClipMetadata *)self->_clipMetadata fullAppOnly]&& ([(CPSClipMetadata *)self->_clipMetadata hasFullAppInstalledOnSystem]& 1) == 0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = _CPSLocalizedString();
    v10 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
    v7 = [v8 stringWithFormat:v9, v10];

    v11 = MEMORY[0x277CCACA8];
    v12 = _CPSLocalizedString();
    v13 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
    v14 = [MEMORY[0x277CFA6E0] localizedDeviceName];
    v15 = [v11 stringWithFormat:v12, v13, v14];

    v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v15 preferredStyle:1];
    v17 = MEMORY[0x277D750F8];
    v18 = _CPSLocalizedString();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__CPSLaunchContentViewController__openAppClip___block_invoke;
    v25[3] = &unk_278DD2710;
    v25[4] = self;
    v19 = [v17 actionWithTitle:v18 style:0 handler:v25];

    v20 = MEMORY[0x277D750F8];
    v21 = _CPSLocalizedString();
    v22 = [v20 actionWithTitle:v21 style:1 handler:0];

    [v16 addAction:v19];
    [v16 addAction:v22];
    [v16 setPreferredAction:v19];
    [(CPSLaunchContentViewController *)self presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CFA698]);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPSPermissionView notificationPermissionEnabled](self->_permissionView, "notificationPermissionEnabled")}];
    [v4 setUserNotificationGranted:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPSPermissionView locationConfirmationPermissionEnabled](self->_permissionView, "locationConfirmationPermissionEnabled")}];
    [v4 setLocationConfirmationGranted:v6];

    [v4 setShowsAppAttributionBanner:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__CPSLaunchContentViewController__openAppClip___block_invoke_2;
    v23[3] = &unk_278DD2670;
    v23[4] = self;
    v7 = v4;
    v24 = v7;
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:1 andPerformBlockToLaunchApp:v23];
  }
}

uint64_t __47__CPSLaunchContentViewController__openAppClip___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1112);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&dword_24374B000, v2, OS_LOG_TYPE_DEFAULT, "CPSLaunchContentViewController: Opening clip for proxy (%p)", &v10, 0xCu);
  }

  v4 = [MEMORY[0x277CFA680] sharedLogger];
  v5 = [*(*(a1 + 32) + 1104) clipBundleID];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1104);
  v8 = [*(v6 + 1112) launchReason];
  [v4 recordDidTapOpenButtonInCardWithBundleID:v5 metadata:v7 launchReason:v8 launchOptions:*(a1 + 40) didShowCardInline:*(*(a1 + 32) + 1224) == 1];

  return [*(*(a1 + 32) + 1112) openClipWithLaunchOptions:*(a1 + 40) completion:0];
}

- (void)openAppStore
{
  v3 = [(CPSClipMetadata *)self->_clipMetadata fullAppStoreURL];
  [(CPSLaunchContentViewController *)self _openNonAppClipURL:?];
}

- (void)_openNonAppClipURL:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AC58]];
  v25 = *MEMORY[0x277D76690];
  v6 = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
  v7 = v6;
  if (!v6)
  {
    v7 = [(CPSClipMetadata *)self->_clipMetadata fullAppBundleID];
  }

  v26[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0AC38]];

  if (!v6)
  {
  }

  if ([(CPSSessionProxy *)self->_sessionProxy originIsControlCenter])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v9 = getCCUIAppLaunchOriginControlCenterSymbolLoc(void)::ptr;
    v24 = getCCUIAppLaunchOriginControlCenterSymbolLoc(void)::ptr;
    if (!getCCUIAppLaunchOriginControlCenterSymbolLoc(void)::ptr)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = ___ZL44getCCUIAppLaunchOriginControlCenterSymbolLocv_block_invoke;
      v20[3] = &unk_278DD27B0;
      v20[4] = &v21;
      ___ZL44getCCUIAppLaunchOriginControlCenterSymbolLocv_block_invoke(v20);
      v9 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v9)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCCUIAppLaunchOriginControlCenter()"];
      [v15 handleFailureInFunction:v16 file:@"CPSLaunchContentViewController.mm" lineNumber:44 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [v5 setObject:*v9 forKeyedSubscript:*MEMORY[0x277D0AC28]];
  }

  v10 = [MEMORY[0x277CFA680] sharedLogger];
  v11 = [(CPSSessionProxy *)self->_sessionProxy metadata];
  v12 = [v11 clipBundleID];
  [v10 didCancelInterstitialForClip:v12 withEvent:3 didShowCardInline:self->_displayMode == 1];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__CPSLaunchContentViewController__openNonAppClipURL___block_invoke;
  v17[3] = &unk_278DD2670;
  v13 = v4;
  v18 = v13;
  v14 = v5;
  v19 = v14;
  [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:0 andPerformBlockToLaunchApp:v17];
}

- (BOOL)shouldRequestLocationConfirmationPermission
{
  if (![(CPSClipMetadata *)self->_clipMetadata clipRequestsLocationConfirmationPermission]|| ![(CPSSessionProxy *)self->_sessionProxy canRequestLocationConfirmation])
  {
    return 0;
  }

  v3 = MEMORY[0x277CFA6C0];

  return [v3 locationServiceEnabled];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v4 touchesEnded:a3 withEvent:a4];
}

- (void)dismiss:(id)a3
{
  v6 = a3;
  v4 = [(CPSVibrantButton *)self->_closeButton uiButton];

  if (v4 == v6)
  {
    [(CPSLaunchContentViewController *)self logDismissalFromCloseButton:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained launchContentViewController:self didTapCloseButton:1];
    }
  }

  [(CPSLaunchContentViewController *)self _dismissWithClipDidOpen:0 completion:0];
}

- (void)logDismissalFromCloseButton:(BOOL)a3
{
  v3 = a3;
  v10 = [MEMORY[0x277CFA680] sharedLogger];
  v5 = [(CPSSessionProxy *)self->_sessionProxy metadata];
  v6 = [v5 clipBundleID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_285684560;
  }

  if (v3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v10 didCancelInterstitialForClip:v8 withEvent:v9 didShowCardInline:self->_displayMode == 1];
}

- (void)_dismissWithClipDidOpen:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACC8] currentThread];
  v8 = [v7 isMainThread];

  if (v8)
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:v4 completion:v6];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CPSLaunchContentViewController__dismissWithClipDidOpen_completion___block_invoke;
    block[3] = &unk_278DD2738;
    block[4] = self;
    v11 = v4;
    v10 = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_dismissCardWithClipDidOpen:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  self->_dismissalInProgress = 1;
  if (!a3)
  {
    [(CPSLaunchContentViewController *)self cancelSession];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__CPSLaunchContentViewController__dismissCardWithClipDidOpen_completion___block_invoke;
  v10[3] = &unk_278DD2738;
  v10[4] = self;
  v12 = a3;
  v7 = v6;
  v11 = v7;
  v8 = MEMORY[0x245D3DDC0](v10);
  v9 = v8;
  if (self->_displayMode == 1)
  {
    (*(v8 + 16))(v8);
  }

  else
  {
    [(CPSLaunchContentViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

void __73__CPSLaunchContentViewController__dismissCardWithClipDidOpen_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1248));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained launchContentViewControllerDidDisappear:*(a1 + 32) didOpenClip:*(a1 + 48)];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_dismissCardWithClipDidOpen:(BOOL)a3 andPerformBlockToLaunchApp:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CPSLaunchContentViewController *)self _canLaunchAppSimultaneouslyWithInvocationCardDismissal])
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:v4 completion:0];
    v6[2]();
  }

  else
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:v4 completion:v6];
  }
}

- (void)_updateHeroImageIfNeeded
{
  v3 = [(CPSLaunchContentViewController *)self _heroImage];

  if (v3)
  {
    return;
  }

  v11 = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  v4 = [v11 canShowHeroImage];

  if (v4)
  {
    v5 = [(CPSSessionProxy *)self->_sessionProxy heroImageFileURL];
    if (v5)
    {
      v6 = MEMORY[0x277D755B8];
      v12 = v5;
      v7 = [v5 path];
      v8 = [v6 imageWithContentsOfFile:v7];

      v5 = v12;
      if (v8)
      {
        [(CPSLaunchContentViewController *)self _setHeroImage:v8];
LABEL_10:

        goto LABEL_11;
      }
    }
  }

  v12 = [(CPSClipMetadata *)self->_clipMetadata clipHeroImageURL];
  if ([v12 cps_isFileURL] && (-[CPSClipMetadata isDeveloperOverride](self->_clipMetadata, "isDeveloperOverride") & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D755B8]);
    v8 = [v12 path];
    v10 = [v9 initWithContentsOfFile:v8];
    [(CPSLaunchContentViewController *)self _setHeroImage:v10];

    goto LABEL_10;
  }

LABEL_11:
}

- (id)_reasonStringForError:(id)a3
{
  v4 = a3;
  status = nw_path_get_status(self->_networkPath);
  v6 = MEMORY[0x277CFA658];
  if (status != nw_path_status_unsatisfied)
  {
    goto LABEL_6;
  }

  v7 = [v4 domain];
  if (([v7 isEqualToString:*v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  if ([v4 code] != 10)
  {
    v12 = [v4 code];

    if (v12 == 2)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 = [v4 domain];
    if ([v8 isEqualToString:*v6])
    {
      v9 = [v4 code];

      if (v9 == 10)
      {
LABEL_12:
        v11 = _CPSLocalizedString();
        goto LABEL_15;
      }
    }

    else
    {
    }

    v10 = [v4 localizedDescription];

    if (v10)
    {
      v11 = [v4 localizedDescription];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = cps_networkUnavailableErrorLocalizedDescription();
LABEL_15:
  v13 = v11;

  return v13;
}

- (void)createNetworkPathMonitor
{
  v3 = nw_path_monitor_create();
  networkPathMonitor = self->_networkPathMonitor;
  self->_networkPathMonitor = v3;

  v5 = self->_networkPathMonitor;
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __58__CPSLaunchContentViewController_createNetworkPathMonitor__block_invoke;
  update_handler[3] = &unk_278DD2760;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v5, update_handler);
  nw_path_monitor_set_queue(self->_networkPathMonitor, MEMORY[0x277D85CD0]);
  nw_path_monitor_start(self->_networkPathMonitor);
}

void __58__CPSLaunchContentViewController_createNetworkPathMonitor__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  objc_storeStrong((v6 + 1168), a2);
  if (nw_path_get_status(*(*v5 + 1168)) == nw_path_status_unsatisfied)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__CPSLaunchContentViewController_createNetworkPathMonitor__block_invoke_cold_1(v4, v5, v7);
    }

    v8 = *v5;
    if (v8[147])
    {
      v9 = [v8 _reasonStringForError:?];
      [v8 showUnavailableViewWithReason:v9];
    }
  }

  else
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*v5 + 1176);
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_24374B000, v10, OS_LOG_TYPE_DEFAULT, "Network path: %@ _proxyError: %@", &v12, 0x16u);
    }
  }
}

- (void)permissionsViewControllerDidFinish:(id)a3
{
  v4 = a3;
  if (self->_permissionsViewController == v4)
  {
    v10 = v4;
    v5 = [(CPSLaunchContentViewController *)self navigationController];
    v6 = [v5 topViewController];
    permissionsViewController = self->_permissionsViewController;

    v4 = v10;
    if (v6 == permissionsViewController)
    {
      [(CPSPermissionView *)self->_permissionView setNotificationPermissionEnabled:[(CPSPermissionsViewController *)v10 notificationPermissionEnabled]];
      [(CPSPermissionView *)self->_permissionView setLocationConfirmationPermissionEnabled:[(CPSPermissionsViewController *)v10 locationConfirmationPermissionEnabled]];
      v8 = [(CPSLaunchContentViewController *)self navigationController];
      v9 = [v8 popViewControllerAnimated:1];

      v4 = v10;
    }
  }
}

- (void)updatePreferredContentSizeForCardWidth:(double)a3
{
  v5 = [(CPSLaunchContentViewController *)self view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  v8 = v5;
  [v5 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
  [(CPSLaunchContentViewController *)self setPreferredContentSize:?];
}

- (void)proxyDidUpdateMetadata:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CPSLaunchContentViewController_proxyDidUpdateMetadata___block_invoke;
  v6[3] = &unk_278DD2670;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __57__CPSLaunchContentViewController_proxyDidUpdateMetadata___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 1104))
  {
    [*(a1 + 40) prewarmClip];
  }

  v2 = [*(a1 + 40) metadata];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1104);
  *(v3 + 1104) = v2;

  [*(a1 + 32) _sendAnalyticsIfNeeded];
  v5 = *(a1 + 32);

  return [v5 _updateContent];
}

- (void)proxyDidInstallApplicationPlaceholder:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "CPSLaunchContentViewController: Did install placeholder for proxy (%p)", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CPSLaunchContentViewController_proxyDidInstallApplicationPlaceholder___block_invoke;
  v7[3] = &unk_278DD2670;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __72__CPSLaunchContentViewController_proxyDidInstallApplicationPlaceholder___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1153) = 1;
  [*(a1 + 32) updateOpenButton];
  if ([*(a1 + 40) usedByPPT])
  {
    v2 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__CPSLaunchContentViewController_proxyDidInstallApplicationPlaceholder___block_invoke_2;
    block[3] = &unk_278DD25D0;
    block[4] = *(a1 + 32);
    dispatch_after(v2, MEMORY[0x277D85CD0], block);
  }
}

- (void)proxy:(id)a3 didRetrieveApplicationIcon:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CPSLaunchContentViewController_proxy_didRetrieveApplicationIcon___block_invoke;
  v7[3] = &unk_278DD2670;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __67__CPSLaunchContentViewController_proxy_didRetrieveApplicationIcon___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x277D755B8];
    v5 = [*(a1 + 40) path];
    v4 = [v3 imageWithContentsOfFile:?];
  }

  else
  {
    v4 = 0;
  }

  [*(*(a1 + 32) + 1096) setAppIcon:v4];
  if (v2)
  {
  }
}

- (void)proxy:(id)a3 didRetrieveHeroImage:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPSLaunchContentViewController_proxy_didRetrieveHeroImage___block_invoke;
  block[3] = &unk_278DD25D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)proxyRemoteServiceDidCrash:(id)a3
{
  v3 = a3;
  v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPSLaunchContentViewController *)v3 proxyRemoteServiceDidCrash:v4];
  }
}

- (void)proxy:(id)a3 didFinishLoadingWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v7 cps_privacyPreservingDescription];
    [(CPSLaunchContentViewController *)v6 proxy:v9 didFinishLoadingWithError:buf, v8];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSLaunchContentViewController_proxy_didFinishLoadingWithError___block_invoke;
  block[3] = &unk_278DD2788;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__CPSLaunchContentViewController_proxy_didFinishLoadingWithError___block_invoke(id *a1)
{
  objc_storeStrong(a1[4] + 147, a1[5]);
  v5 = [MEMORY[0x277CFA680] sharedLogger];
  v2 = [a1[6] metadata];
  v3 = [v2 clipBundleID];
  [v5 recordDidShowErrorWithBundleID:v3 place:@"card" errorCode:1000];

  [a1[4] loadViewIfNeeded];
  v4 = a1[4];
  v6 = [v4 _reasonStringForError:a1[5]];
  [v4 showUnavailableViewWithReason:?];
}

- (CPSLaunchContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__CPSLaunchContentViewController_createNetworkPathMonitor__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 1176);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_24374B000, log, OS_LOG_TYPE_ERROR, "Network path: %@ _proxyError: %@", &v4, 0x16u);
}

- (void)proxyRemoteServiceDidCrash:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_24374B000, a2, OS_LOG_TYPE_ERROR, "CPSLaunchContentViewController: Remote service did crash for proxy (%p)", &v2, 0xCu);
}

- (void)proxy:(uint8_t *)buf didFinishLoadingWithError:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_24374B000, log, OS_LOG_TYPE_ERROR, "CPSLaunchContentViewController: -didFinishLoadingWithError: for proxy (%p), error: %{public}@", buf, 0x16u);
}

@end