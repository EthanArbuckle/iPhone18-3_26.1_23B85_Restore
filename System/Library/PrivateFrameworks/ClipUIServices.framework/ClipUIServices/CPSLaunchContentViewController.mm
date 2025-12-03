@interface CPSLaunchContentViewController
- (BOOL)_userNotificationAuthorizationDenied;
- (BOOL)shouldRequestLocationConfirmationPermission;
- (CPSLaunchContentViewController)initWithCoder:(id)coder;
- (CPSLaunchContentViewController)initWithMetadata:(id)metadata;
- (CPSLaunchContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CPSLaunchContentViewController)initWithURL:(id)l;
- (CPSLaunchContentViewController)initWithURL:(id)l displayMode:(unint64_t)mode;
- (CPSLaunchContentViewControllerDelegate)delegate;
- (id)_reasonStringForError:(id)error;
- (id)_setUpOpenButtonIfNeeded;
- (void)_createClipSourceVibrantLabelIfNeeded;
- (void)_dismissCardWithClipDidOpen:(BOOL)open andPerformBlockToLaunchApp:(id)app;
- (void)_dismissCardWithClipDidOpen:(BOOL)open completion:(id)completion;
- (void)_dismissWithClipDidOpen:(BOOL)open completion:(id)completion;
- (void)_identifyCardBackgroundViewIfNeeded;
- (void)_openAppClip:(id)clip;
- (void)_openNonAppClipURL:(id)l;
- (void)_sendAnalyticsIfNeeded;
- (void)_setHeroImage:(id)image;
- (void)_updateCloseButtonConstraints;
- (void)_updateContent;
- (void)_updateCornerRadiusForButtons;
- (void)_updateHeroImageIfNeeded;
- (void)configurePermissionView;
- (void)createNetworkPathMonitor;
- (void)determineClipCompatibility;
- (void)disableOpenButton;
- (void)dismiss:(id)dismiss;
- (void)enableOpenButton;
- (void)handlePolicyRecovery;
- (void)loadView;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)logDismissalFromCloseButton:(BOOL)button;
- (void)openAppStore;
- (void)permissionsViewControllerDidFinish:(id)finish;
- (void)playSoundAndHaptic;
- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error;
- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon;
- (void)proxy:(id)proxy didRetrieveHeroImage:(id)image;
- (void)proxyDidInstallApplicationPlaceholder:(id)placeholder;
- (void)proxyDidUpdateMetadata:(id)metadata;
- (void)proxyRemoteServiceDidCrash:(id)crash;
- (void)setUnavailableViewHidden:(BOOL)hidden;
- (void)setUpClipInformationContainerView;
- (void)setUpHeroSection;
- (void)setUpInformationSection;
- (void)showUnavailableViewWithReason:(id)reason;
- (void)signInToAppStore;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOpenButton;
- (void)updatePreferredContentSizeForCardWidth:(double)width;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CPSLaunchContentViewController

- (void)loadView
{
  v3 = objc_alloc_init(CPSProxCardAutoSizingView);
  [(CPSLaunchContentViewController *)self setView:?];
}

- (CPSLaunchContentViewController)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy && (v9.receiver = self, v9.super_class = CPSLaunchContentViewController, (self = [(CPSLaunchContentViewController *)&v9 initWithNibName:0 bundle:0]) != 0))
  {
    v5 = [objc_alloc(MEMORY[0x277CFA6D8]) initWithURL:lCopy];
    sessionProxy = self->_sessionProxy;
    self->_sessionProxy = v5;

    [(CPSSessionProxy *)self->_sessionProxy setDelegate:self];
    [(CPSSessionProxy *)self->_sessionProxy connectToService];
    self->_shouldPlaySoundAndHaptic = 1;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CPSLaunchContentViewController)initWithURL:(id)l displayMode:(unint64_t)mode
{
  v5 = [(CPSLaunchContentViewController *)self initWithURL:l];
  v6 = v5;
  if (v5)
  {
    v5->_displayMode = mode;
    if (mode == 1)
    {
      v5->_shouldPlaySoundAndHaptic = 0;
    }

    v7 = v5;
  }

  return v6;
}

- (CPSLaunchContentViewController)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  clipURL = [metadataCopy clipURL];
  v7 = [(CPSLaunchContentViewController *)self initWithURL:clipURL];

  if (v7)
  {
    objc_storeStrong(&v7->_clipMetadata, metadata);
    [(CPSSessionProxy *)v7->_sessionProxy prewarmClip];
    v8 = v7;
  }

  return v7;
}

- (CPSLaunchContentViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-initWithCoder: is not supported." userInfo:0];
  objc_exception_throw(v4);
}

- (CPSLaunchContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
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
  traitCollection = [(CPSLaunchContentViewController *)self traitCollection];
  cps_invocationCardPreferredContentSizeCategory = [traitCollection cps_invocationCardPreferredContentSizeCategory];
  v6 = [v3 traitCollectionWithPreferredContentSizeCategory:cps_invocationCardPreferredContentSizeCategory];
  view = [(CPSLaunchContentViewController *)self view];
  [view _setLocalOverrideTraitCollection:v6];

  [(CPSLaunchContentViewController *)self createNetworkPathMonitor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v4 viewWillAppear:appear];
  [(CPSLaunchContentViewController *)self _identifyCardBackgroundViewIfNeeded];
  if (self->_shouldPlaySoundAndHaptic)
  {
    self->_shouldPlaySoundAndHaptic = 0;
    [(CPSLaunchContentViewController *)self playSoundAndHaptic];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v6 viewDidAppear:appear];
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
  selfCopy = self;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_24374B000, log, OS_LOG_TYPE_ERROR, "Error creating system sound ID for audio URL: %@ status: (%d)", &v3, 0x12u);
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v5 viewDidLayoutSubviews];
  view = [(CPSLaunchContentViewController *)self view];
  [view frame];
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
    navigationController = [(CPSLaunchContentViewController *)self navigationController];
    view = [navigationController view];

    v5 = view;
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
  traitCollection = [(CPSLaunchContentViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  widthAnchor = [(UIView *)self->_heroContainerView widthAnchor];
  heightAnchor = [(UIView *)self->_heroContainerView heightAnchor];
  v7 = 1.5;
  if (verticalSizeClass == 1)
  {
    v7 = 2.0;
  }

  v8 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v7];
  heroContainerAspectRatioConstraint = self->_heroContainerAspectRatioConstraint;
  self->_heroContainerAspectRatioConstraint = v8;

  [(NSLayoutConstraint *)self->_heroContainerAspectRatioConstraint setActive:1];
  [(CPSLaunchContentViewController *)self _updateCloseButtonConstraints];
  v10.receiver = self;
  v10.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v10 updateViewConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v25.receiver = self;
  v25.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v25 traitCollectionDidChange:changeCopy];
  view = [(CPSLaunchContentViewController *)self view];
  traitCollection = [(CPSLaunchContentViewController *)self traitCollection];
  cps_invocationCardPreferredContentSizeCategory = [traitCollection cps_invocationCardPreferredContentSizeCategory];

  cps_invocationCardPreferredContentSizeCategory2 = [changeCopy cps_invocationCardPreferredContentSizeCategory];
  v9 = [cps_invocationCardPreferredContentSizeCategory isEqualToString:cps_invocationCardPreferredContentSizeCategory2];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:cps_invocationCardPreferredContentSizeCategory];
    [view _setLocalOverrideTraitCollection:v10];
  }

  if (self->_displayMode == 1)
  {
    traitCollection2 = [(CPSLaunchContentViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v14 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v14 & 1) == 0)
    {
      traitCollection3 = [(CPSLaunchContentViewController *)self traitCollection];
      preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
      v17 = inlineCardButtonFont(preferredContentSizeCategory3);
      uiButton = [(CPSVibrantButton *)self->_openVibrantButton uiButton];
      titleLabel = [uiButton titleLabel];
      [titleLabel setFont:v17];

      traitCollection4 = [(CPSLaunchContentViewController *)self traitCollection];
      preferredContentSizeCategory4 = [traitCollection4 preferredContentSizeCategory];
      v22 = inlineCardButtonFont(preferredContentSizeCategory4);
      uiButton2 = [(CPSVibrantButton *)self->_closeButton uiButton];
      titleLabel2 = [uiButton2 titleLabel];
      [titleLabel2 setFont:v22];
    }
  }

  [view setNeedsUpdateConstraints];
}

- (void)setUpHeroSection
{
  v48[7] = *MEMORY[0x277D85DE8];
  view = [(CPSLaunchContentViewController *)self view];
  [view setAccessibilityIdentifier:@"AppClipCard"];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  heroContainerView = self->_heroContainerView;
  self->_heroContainerView = v3;

  [(UIView *)self->_heroContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_heroContainerView];
  v5 = MEMORY[0x277D755E8];
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  v7 = [v5 cps_imageViewWithImage:0 tintColor:0 backgroundColor:systemFillColor];
  heroImageView = self->_heroImageView;
  self->_heroImageView = v7;

  [(UIImageView *)self->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_heroImageView setAccessibilityIgnoresInvertColors:1];
  [(UIView *)self->_heroContainerView addSubview:self->_heroImageView];
  v9 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_heroContainerView topAnchor];
  topAnchor2 = [view topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:?];
  v48[0] = v39;
  leadingAnchor = [(UIView *)self->_heroContainerView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:?];
  v48[1] = v37;
  trailingAnchor = [(UIView *)self->_heroContainerView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:?];
  v48[2] = v35;
  topAnchor3 = [(UIImageView *)self->_heroImageView topAnchor];
  topAnchor4 = [(UIView *)self->_heroContainerView topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:?];
  v48[3] = v33;
  bottomAnchor = [(UIImageView *)self->_heroImageView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_heroContainerView bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:?];
  v48[4] = v31;
  leadingAnchor3 = [(UIImageView *)self->_heroImageView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_heroContainerView leadingAnchor];
  v12 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48[5] = v12;
  trailingAnchor3 = [(UIImageView *)self->_heroImageView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_heroContainerView trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v48[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
  [v9 activateConstraints:v16];

  if (self->_displayMode != 1)
  {
    v17 = [[CPSVibrantButton alloc] initWithButtonType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v17;

    [(CPSVibrantButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    uiButton = [(CPSVibrantButton *)self->_closeButton uiButton];
    [uiButton addTarget:self action:sel_dismiss_ forControlEvents:64];

    [(UIView *)self->_heroContainerView addSubview:self->_closeButton];
    trailingAnchor5 = [(UIView *)self->_heroContainerView trailingAnchor];
    trailingAnchor6 = [(CPSVibrantButton *)self->_closeButton trailingAnchor];
    v22 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
    closeButtonXConstraint = self->_closeButtonXConstraint;
    self->_closeButtonXConstraint = v22;

    topAnchor5 = [(CPSVibrantButton *)self->_closeButton topAnchor];
    topAnchor6 = [(UIView *)self->_heroContainerView topAnchor];
    v26 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:16.0];
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
  view = [(CPSLaunchContentViewController *)self view];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  informationContainerView = self->_informationContainerView;
  self->_informationContainerView = v3;

  [(UIView *)self->_informationContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_informationContainerView];
  v5 = MEMORY[0x277D755E8];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v7 = [v5 cps_imageViewWithImage:0 tintColor:0 backgroundColor:systemWhiteColor];
  heroMirrorImageView = self->_heroMirrorImageView;
  self->_heroMirrorImageView = v7;

  [(UIImageView *)self->_heroMirrorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  CGAffineTransformMakeScale(&v109, 1.0, -1.0);
  layer = [(UIImageView *)self->_heroMirrorImageView layer];
  v108 = v109;
  [layer setAffineTransform:&v108];

  [(UIImageView *)self->_heroMirrorImageView setAccessibilityIgnoresInvertColors:1];
  [(UIView *)self->_informationContainerView addSubview:self->_heroMirrorImageView];
  v10 = objc_alloc(MEMORY[0x277D75D68]);
  v11 = [MEMORY[0x277D75210] effectWithStyle:8];
  v104 = [v10 initWithEffect:v11];

  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_informationContainerView addSubview:v104];
  contentView = [v104 contentView];
  v107 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v107 setContentInsetAdjustmentBehavior:2];
  [contentView addSubview:v107];
  v12 = objc_alloc_init(CPSAppClipUnavailableView);
  unavailableView = self->_unavailableView;
  self->_unavailableView = v12;

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(CPSAppClipUnavailableView *)self->_unavailableView setBackgroundColor:systemBackgroundColor];

  [(CPSAppClipUnavailableView *)self->_unavailableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppClipUnavailableView *)self->_unavailableView setHidden:1];
  [contentView addSubview:self->_unavailableView];
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
  cps_vibrantSeparator = [MEMORY[0x277D75D18] cps_vibrantSeparator];
  separatorView = self->_separatorView;
  self->_separatorView = cps_vibrantSeparator;

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
  heightAnchor = [v107 heightAnchor];
  heightAnchor2 = [(UIStackView *)self->_informationContentView heightAnchor];
  v103 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v25) = 1132068864;
  [v103 setPriority:v25];
  v26 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_informationContainerView topAnchor];
  bottomAnchor = [(UIView *)self->_heroContainerView bottomAnchor];
  v78 = [topAnchor constraintEqualToAnchor:?];
  v110[0] = v78;
  leadingAnchor = [(UIView *)self->_informationContainerView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:?];
  v110[1] = v76;
  trailingAnchor = [(UIView *)self->_informationContainerView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v74 = [trailingAnchor constraintEqualToAnchor:?];
  v110[2] = v74;
  bottomAnchor2 = [(UIView *)self->_informationContainerView bottomAnchor];
  bottomAnchor3 = [view bottomAnchor];
  v72 = [bottomAnchor2 constraintEqualToAnchor:?];
  v110[3] = v72;
  topAnchor2 = [(CPSAppClipUnavailableView *)self->_unavailableView topAnchor];
  bottomAnchor4 = [(UIView *)self->_heroContainerView bottomAnchor];
  v70 = [topAnchor2 constraintEqualToAnchor:?];
  v110[4] = v70;
  leadingAnchor3 = [(CPSAppClipUnavailableView *)self->_unavailableView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:?];
  v110[5] = v68;
  trailingAnchor3 = [(CPSAppClipUnavailableView *)self->_unavailableView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v66 = [trailingAnchor3 constraintEqualToAnchor:?];
  v110[6] = v66;
  bottomAnchor5 = [(CPSAppClipUnavailableView *)self->_unavailableView bottomAnchor];
  bottomAnchor6 = [view bottomAnchor];
  v64 = [bottomAnchor5 constraintEqualToAnchor:?];
  v110[7] = v64;
  topAnchor3 = [(UIImageView *)self->_heroMirrorImageView topAnchor];
  topAnchor4 = [(UIView *)self->_informationContainerView topAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:?];
  v110[8] = v62;
  leadingAnchor5 = [(UIImageView *)self->_heroMirrorImageView leadingAnchor];
  leadingAnchor6 = [(UIImageView *)self->_heroImageView leadingAnchor];
  v60 = [leadingAnchor5 constraintEqualToAnchor:?];
  v110[9] = v60;
  trailingAnchor5 = [(UIImageView *)self->_heroMirrorImageView trailingAnchor];
  trailingAnchor6 = [(UIImageView *)self->_heroImageView trailingAnchor];
  v58 = [trailingAnchor5 constraintEqualToAnchor:?];
  v110[10] = v58;
  heightAnchor3 = [(UIImageView *)self->_heroMirrorImageView heightAnchor];
  heightAnchor4 = [(UIImageView *)self->_heroImageView heightAnchor];
  v56 = [heightAnchor3 constraintEqualToAnchor:?];
  v110[11] = v56;
  topAnchor5 = [v104 topAnchor];
  topAnchor6 = [(UIView *)self->_informationContainerView topAnchor];
  v54 = [topAnchor5 constraintEqualToAnchor:?];
  v110[12] = v54;
  leadingAnchor7 = [v104 leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_informationContainerView leadingAnchor];
  v52 = [leadingAnchor7 constraintEqualToAnchor:?];
  v110[13] = v52;
  trailingAnchor7 = [v104 trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_informationContainerView trailingAnchor];
  v50 = [trailingAnchor7 constraintEqualToAnchor:?];
  v110[14] = v50;
  bottomAnchor7 = [v104 bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_informationContainerView bottomAnchor];
  v48 = [bottomAnchor7 constraintEqualToAnchor:?];
  v110[15] = v48;
  topAnchor7 = [v107 topAnchor];
  topAnchor8 = [contentView topAnchor];
  v46 = [topAnchor7 constraintEqualToAnchor:?];
  v110[16] = v46;
  leadingAnchor9 = [v107 leadingAnchor];
  leadingAnchor10 = [contentView leadingAnchor];
  v44 = [leadingAnchor9 constraintEqualToAnchor:?];
  v110[17] = v44;
  trailingAnchor9 = [contentView trailingAnchor];
  trailingAnchor10 = [v107 trailingAnchor];
  v42 = [trailingAnchor9 constraintEqualToAnchor:?];
  v110[18] = v42;
  bottomAnchor9 = [contentView bottomAnchor];
  bottomAnchor10 = [v107 bottomAnchor];
  v40 = [bottomAnchor9 constraintEqualToAnchor:?];
  v110[19] = v40;
  topAnchor9 = [(UIStackView *)self->_informationContentView topAnchor];
  topAnchor10 = [v107 topAnchor];
  v38 = [topAnchor9 constraintEqualToAnchor:?];
  v110[20] = v38;
  leadingAnchor11 = [(UIStackView *)self->_informationContentView leadingAnchor];
  leadingAnchor12 = [v107 leadingAnchor];
  v36 = [leadingAnchor11 constraintEqualToAnchor:?];
  v110[21] = v36;
  trailingAnchor11 = [(UIStackView *)self->_informationContentView trailingAnchor];
  trailingAnchor12 = [v107 trailingAnchor];
  v28 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v110[22] = v28;
  bottomAnchor11 = [(UIStackView *)self->_informationContentView bottomAnchor];
  bottomAnchor12 = [v107 bottomAnchor];
  v31 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  v110[23] = v31;
  widthAnchor = [v107 widthAnchor];
  widthAnchor2 = [(UIStackView *)self->_informationContentView widthAnchor];
  v34 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
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

      uiButton = [(CPSVibrantButton *)self->_openVibrantButton uiButton];
      v9 = self->_openButton;
      self->_openButton = uiButton;

      traitCollection = [(CPSLaunchContentViewController *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v12 = inlineCardButtonFont(preferredContentSizeCategory);
      titleLabel = [(UIButton *)self->_openButton titleLabel];
      [titleLabel setFont:v12];

      v14 = self->_openButton;
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(UIButton *)v14 setTitleColor:systemBlueColor forState:0];

      [(CPSVibrantButton *)self->_openVibrantButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSVibrantButton *)self->_openVibrantButton setAdjustFontSizeToFitWidth:1];
    }

    else
    {
      v16 = [CPSButton alloc];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
      v19 = [(CPSButton *)v16 initWithTitle:0 enabledTitleColor:whiteColor disabledTitleColor:v18 backgroundColor:v5 textStyle:*MEMORY[0x277D76988] cornerRadius:1 animatesAlphaWhenHighlighted:0.0];
      v20 = self->_openButton;
      self->_openButton = v19;

      titleLabel2 = [(UIButton *)self->_openButton titleLabel];
      [titleLabel2 setAdjustsFontForContentSizeCategory:1];
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
  _setUpOpenButtonIfNeeded = [(CPSLaunchContentViewController *)self _setUpOpenButtonIfNeeded];
  [(UIView *)self->_clipInformationContainerView addSubview:?];
  topAnchor = [(CPSVibrantLabel *)self->_clipNameVibrantLabel topAnchor];
  topAnchor2 = [v89 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  clipNameVibrantLabelTopAnchor = self->_clipNameVibrantLabelTopAnchor;
  self->_clipNameVibrantLabelTopAnchor = v14;

  v16 = MEMORY[0x277CCAAD0];
  topAnchor3 = [v89 topAnchor];
  topAnchor4 = [(UIView *)self->_clipInformationContainerView topAnchor];
  v70 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:?];
  v92[0] = v70;
  leadingAnchor = [v89 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_clipInformationContainerView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:?];
  v18 = self->_clipNameVibrantLabelTopAnchor;
  v66 = v17;
  v92[1] = v17;
  v92[2] = v18;
  leadingAnchor3 = [(CPSVibrantLabel *)self->_clipNameVibrantLabel leadingAnchor];
  leadingAnchor4 = [v89 leadingAnchor];
  v62 = [leadingAnchor3 constraintEqualToAnchor:?];
  v92[3] = v62;
  trailingAnchor = [(CPSVibrantLabel *)self->_clipNameVibrantLabel trailingAnchor];
  trailingAnchor2 = [v89 trailingAnchor];
  v58 = [trailingAnchor constraintEqualToAnchor:?];
  v92[4] = v58;
  topAnchor5 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel topAnchor];
  bottomAnchor = [(CPSVibrantLabel *)self->_clipNameVibrantLabel bottomAnchor];
  v54 = [topAnchor5 constraintEqualToAnchor:2.0 constant:?];
  v92[5] = v54;
  leadingAnchor5 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel leadingAnchor];
  leadingAnchor6 = [v89 leadingAnchor];
  v50 = [leadingAnchor5 constraintEqualToAnchor:?];
  v92[6] = v50;
  trailingAnchor3 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel trailingAnchor];
  trailingAnchor4 = [v89 trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:?];
  v92[7] = v19;
  bottomAnchor2 = [(CPSVibrantLabel *)self->_clipDescriptionVibrantLabel bottomAnchor];
  bottomAnchor3 = [v89 bottomAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v92[8] = v22;
  bottomAnchor4 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
  bottomAnchor5 = [_setUpOpenButtonIfNeeded bottomAnchor];
  v25 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor5];
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
    uiButton = [(CPSVibrantButton *)self->_closeButton uiButton];
    traitCollection = [(CPSLaunchContentViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v31 = inlineCardButtonFont(preferredContentSizeCategory);
    titleLabel = [uiButton titleLabel];
    [titleLabel setFont:v31];

    [uiButton setAccessibilityIdentifier:@"ViewInSafariButton"];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [uiButton setTitleColor:systemBlueColor forState:0];

    v34 = _CPSLocalizedString();
    [uiButton setTitle:v34 forState:0];

    [(CPSVibrantButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [uiButton setContentEdgeInsets:{12.0, 18.0, 12.0, 18.0}];
    [uiButton addTarget:self action:sel_dismiss_ forControlEvents:64];
    [(UIView *)self->_clipInformationContainerView addSubview:self->_closeButton];
    v35 = MEMORY[0x277CCAAD0];
    leadingAnchor7 = [(CPSVibrantButton *)self->_closeButton leadingAnchor];
    leadingAnchor8 = [(UIView *)self->_clipInformationContainerView leadingAnchor];
    centerYAnchor = [leadingAnchor7 constraintEqualToAnchor:?];
    v90[0] = centerYAnchor;
    topAnchor6 = [(CPSVibrantButton *)self->_closeButton topAnchor];
    topAnchor7 = [_setUpOpenButtonIfNeeded topAnchor];
    leadingAnchor9 = [topAnchor6 constraintEqualToAnchor:?];
    v90[1] = leadingAnchor9;
    bottomAnchor6 = [(CPSVibrantButton *)self->_closeButton bottomAnchor];
    bottomAnchor7 = [_setUpOpenButtonIfNeeded bottomAnchor];
    trailingAnchor9 = [bottomAnchor6 constraintEqualToAnchor:?];
    v90[2] = trailingAnchor9;
    widthAnchor = [(CPSVibrantButton *)self->_closeButton widthAnchor];
    widthAnchor2 = [(UIView *)self->_clipInformationContainerView widthAnchor];
    widthAnchor5 = [widthAnchor constraintEqualToAnchor:0.5 multiplier:-8.0 constant:?];
    v90[3] = widthAnchor5;
    widthAnchor3 = [_setUpOpenButtonIfNeeded widthAnchor];
    widthAnchor4 = [(UIView *)self->_clipInformationContainerView widthAnchor];
    bottomAnchor11 = [widthAnchor3 constraintEqualToAnchor:0.5 multiplier:-8.0 constant:?];
    v90[4] = bottomAnchor11;
    topAnchor8 = [_setUpOpenButtonIfNeeded topAnchor];
    bottomAnchor8 = [v89 bottomAnchor];
    v36 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
    v90[5] = v36;
    trailingAnchor5 = [_setUpOpenButtonIfNeeded trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    v37 = [trailingAnchor5 constraintEqualToAnchor:?];
    v90[6] = v37;
    bottomAnchor9 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
    bottomAnchor10 = [_setUpOpenButtonIfNeeded bottomAnchor];
    v40 = [bottomAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor10];
    v90[7] = v40;
    trailingAnchor7 = [v89 trailingAnchor];
    trailingAnchor8 = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    v43 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v90[8] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:9];
    [v35 activateConstraints:v44];
  }

  else
  {
    v45 = MEMORY[0x277CCAAD0];
    uiButton = [_setUpOpenButtonIfNeeded topAnchor];
    leadingAnchor7 = [(UIView *)self->_clipInformationContainerView topAnchor];
    leadingAnchor8 = [uiButton constraintGreaterThanOrEqualToAnchor:?];
    v91[0] = leadingAnchor8;
    centerYAnchor = [_setUpOpenButtonIfNeeded centerYAnchor];
    topAnchor6 = [v89 centerYAnchor];
    topAnchor7 = [centerYAnchor constraintEqualToAnchor:?];
    v91[1] = topAnchor7;
    leadingAnchor9 = [_setUpOpenButtonIfNeeded leadingAnchor];
    bottomAnchor6 = [v89 trailingAnchor];
    bottomAnchor7 = [leadingAnchor9 constraintEqualToAnchor:16.0 constant:?];
    v91[2] = bottomAnchor7;
    trailingAnchor9 = [_setUpOpenButtonIfNeeded trailingAnchor];
    widthAnchor = [(UIView *)self->_clipInformationContainerView trailingAnchor];
    widthAnchor2 = [trailingAnchor9 constraintEqualToAnchor:?];
    v91[3] = widthAnchor2;
    widthAnchor5 = [_setUpOpenButtonIfNeeded widthAnchor];
    v46 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:100.0];
    LODWORD(v47) = 1144750080;
    widthAnchor3 = v46;
    widthAnchor4 = [v46 cps_setPriority:v47];
    v91[4] = widthAnchor4;
    bottomAnchor11 = [(UIView *)self->_clipInformationContainerView bottomAnchor];
    topAnchor8 = [v89 bottomAnchor];
    bottomAnchor8 = [bottomAnchor11 constraintGreaterThanOrEqualToAnchor:?];
    v91[5] = bottomAnchor8;
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
  currentNotificationSettingsCenter = [v3 currentNotificationSettingsCenter];
  clipBundleID = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
  v7 = [currentNotificationSettingsCenter notificationSourceWithIdentifier:clipBundleID];
  sourceSettings = [v7 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];

  return authorizationStatus == 1;
}

- (void)enableOpenButton
{
  [(UIButton *)self->_openButton setEnabled:1];
  [(UIButton *)self->_openButton setAccessibilityIdentifier:@"OpenButton"];
  if (!self->_displayMode)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
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

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  shouldRequestLocationConfirmationPermission = [(CPSLaunchContentViewController *)self shouldRequestLocationConfirmationPermission];
  permissionsViewController = self->_permissionsViewController;
  navigationController = [(CPSLaunchContentViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  LOBYTE(permissionsViewController) = [(CPSPermissionsViewController *)permissionsViewController isEqual:topViewController];

  if (!shouldRequestLocationConfirmationPermission && (permissionsViewController & 1) != 0)
  {
    navigationController2 = [(CPSLaunchContentViewController *)self navigationController];
    v9 = [navigationController2 popViewControllerAnimated:0];
  }

  permissionView = self->_permissionView;
  fullAppName = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
  [(CPSPermissionView *)permissionView configureWithAppName:fullAppName requestsNotificationPermission:[(CPSClipMetadata *)self->_clipMetadata clipRequestsNotificationPermission] requestsLocationConfirmationPermission:shouldRequestLocationConfirmationPermission];

  if (!shouldRequestLocationConfirmationPermission)
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
    metadata = [(CPSSessionProxy *)self->_sessionProxy metadata];
    clipBundleID = [metadata clipBundleID];
    itemID = [metadata itemID];
    if ([clipBundleID length] && objc_msgSend(itemID, "intValue"))
    {
      self->_didSendAnalytics = 1;
      mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
      sourceBundleID = [(CPSSessionProxy *)self->_sessionProxy sourceBundleID];
      referrerBundleID = [(CPSSessionProxy *)self->_sessionProxy referrerBundleID];
      launchReason = [(CPSSessionProxy *)self->_sessionProxy launchReason];
      clipRequestURL = [metadata clipRequestURL];
      LOBYTE(v10) = self->_displayMode == 1;
      [mEMORY[0x277CFA680] didPresentInvocationCardForClip:clipBundleID adamID:itemID sourceBundleIdentifier:sourceBundleID referrerBundleIdentifier:referrerBundleID event:launchReason url:clipRequestURL didShowCardInline:v10];
    }
  }
}

- (void)_updateContent
{
  [(CPSLaunchContentViewController *)self _updateHeroImageIfNeeded];
  invocationPolicy = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  if (invocationPolicy)
  {
    launchReason = [(CPSSessionProxy *)self->_sessionProxy launchReason];
    if (([(CPSClipMetadata *)self->_clipMetadata isPhysicalInvocationAllowed]& 1) != 0)
    {
      v4 = 0;
    }

    else if ([launchReason isEqualToString:*MEMORY[0x277CFA670]] & 1) != 0 || (objc_msgSend(launchReason, "isEqualToString:", *MEMORY[0x277CFA660]))
    {
      v4 = 1;
    }

    else
    {
      v4 = [launchReason isEqualToString:*MEMORY[0x277CFA668]];
    }

    if ([invocationPolicy isEligible])
    {
      if (v4)
      {
LABEL_10:
        mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
        clipBundleID = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
        [mEMORY[0x277CFA680] recordDidShowErrorWithBundleID:clipBundleID place:@"card" errorCode:{objc_msgSend(invocationPolicy, "reason")}];

        if (v4)
        {
          _CPSLocalizedString();
        }

        else
        {
          [invocationPolicy localizedMessageForClipMetadata:self->_clipMetadata];
        }
        v22 = ;
        [(CPSLaunchContentViewController *)self showUnavailableViewWithReason:v22];
        view = v22;
        goto LABEL_35;
      }
    }

    else if (v4 & 1 | (([invocationPolicy isRecoverable] & 1) == 0))
    {
      goto LABEL_10;
    }

    [(CPSLaunchContentViewController *)self setUnavailableViewHidden:1];
  }

  launchReason = [(CPSClipMetadata *)self->_clipMetadata fullAppIconURL];
  if ([launchReason cps_isFileURL])
  {
    v7 = objc_alloc(MEMORY[0x277D755B8]);
    path = [launchReason path];
    v9 = [v7 initWithContentsOfFile:path];
    [(CPSAppMetadataView *)self->_appMetadataView setAppIcon:v9];
  }

  [(CPSLaunchContentViewController *)self _createClipSourceVibrantLabelIfNeeded];
  clipName = [(CPSClipMetadata *)self->_clipMetadata clipName];
  v11 = clipName;
  v12 = *MEMORY[0x277CFA678];
  if (clipName)
  {
    v13 = clipName;
  }

  else
  {
    v13 = *MEMORY[0x277CFA678];
  }

  [(CPSVibrantLabel *)self->_clipNameVibrantLabel setText:v13];

  [(CPSVibrantLabel *)self->_clipNameVibrantLabel layoutIfNeeded];
  clipCaption = [(CPSClipMetadata *)self->_clipMetadata clipCaption];
  v15 = clipCaption;
  if (clipCaption)
  {
    v16 = clipCaption;
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
  hasAppMetadata = [(CPSClipMetadata *)self->_clipMetadata hasAppMetadata];
  if ((hasAppMetadata & 1) != 0 || ([(CPSClipMetadata *)self->_clipMetadata fullAppStoreURL], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    fullAppOnly = [(CPSClipMetadata *)self->_clipMetadata fullAppOnly];
    if ((hasAppMetadata & 1) == 0)
    {
    }

    if ((fullAppOnly & 1) == 0)
    {
      [(CPSAppMetadataView *)self->_appMetadataView setUserInteractionEnabled:1];
    }
  }

  [(CPSAppMetadataView *)self->_appMetadataView layoutIfNeeded];
  [(CPSLaunchContentViewController *)self determineClipCompatibility];
  view = [(CPSLaunchContentViewController *)self view];
  [view bounds];
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

      topAnchor = [(CPSVibrantLabel *)self->_clipNameVibrantLabel topAnchor];
      bottomAnchor = [(CPSVibrantLabel *)self->_clipSourceVibrantLabel bottomAnchor];
      v11 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:2.0];
      clipNameVibrantLabelTopAnchor = self->_clipNameVibrantLabelTopAnchor;
      self->_clipNameVibrantLabelTopAnchor = v11;

      v13 = MEMORY[0x277CCAAD0];
      topAnchor2 = [(CPSVibrantLabel *)self->_clipSourceVibrantLabel topAnchor];
      topAnchor3 = [(UIView *)self->_clipNameAndDescriptionContainer topAnchor];
      v16 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
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
      clipAction = [(CPSClipMetadata *)clipMetadata clipAction];
      if (clipAction <= 2)
      {
        clipAction = _CPSLocalizedString();
      }
    }

    else
    {
      clipAction = [(CPSClipMetadata *)clipMetadata clipOpenButtonTitle];
    }

    v6 = MEMORY[0x277D75D18];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __50__CPSLaunchContentViewController_updateOpenButton__block_invoke;
    v15 = &unk_278DD2670;
    selfCopy = self;
    v7 = clipAction;
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

    invocationPolicy = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
    if (!invocationPolicy)
    {
      goto LABEL_19;
    }

    [(CPSLaunchContentViewController *)self disableOpenButton];
    [(UIButton *)self->_openButton removeTarget:self action:0 forControlEvents:0x2000];
    if ([invocationPolicy isEligible])
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
      if (![invocationPolicy isRecoverable])
      {
LABEL_19:

        return;
      }

      [(CPSLaunchContentViewController *)self enableOpenButton];
      v11 = &selRef_handlePolicyRecovery;
    }

    [(UIButton *)self->_openButton addTarget:self action:*v11 forControlEvents:0x2000, v12, v13, v14, v15, selfCopy];
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
    fullAppName = [(CPSClipMetadata *)self->_clipMetadata fullAppName];

    if (fullAppName)
    {
      clipIncompatibleWithCurrentDevice = [(CPSClipMetadata *)self->_clipMetadata clipIncompatibleWithCurrentDevice];
      v5 = MEMORY[0x277CCACA8];
      if (clipIncompatibleWithCurrentDevice)
      {
        v6 = _CPSLocalizedString();
        fullAppName2 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
        [MEMORY[0x277CFA6E0] oppositeDeviceFamilyName];
      }

      else
      {
        v6 = _CPSLocalizedString();
        fullAppName2 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
        [MEMORY[0x277CFA6E0] localizedDeviceName];
      }
      v8 = ;
      v11 = [v5 stringWithFormat:v6, fullAppName2, v8];

      mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
      clipBundleID = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
      [mEMORY[0x277CFA680] recordDidShowErrorWithBundleID:clipBundleID place:@"card" errorCode:1001];

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
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v9 = [v6 initWithAccount:ams_activeiTunesAccount presentingViewController:self options:v5];

  [(CPSLaunchContentViewController *)self disableOpenButton];
  performAuthentication = [v9 performAuthentication];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__CPSLaunchContentViewController_signInToAppStore__block_invoke;
  v11[3] = &unk_278DD2698;
  v11[4] = self;
  [performAuthentication addFinishBlock:v11];
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
  invocationPolicy = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  localizedTitle = [invocationPolicy localizedTitle];
  v5 = [invocationPolicy localizedMessageForClipMetadata:self->_clipMetadata];
  reason = [invocationPolicy reason];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:localizedTitle message:v5 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _CPSLocalizedString();
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  if (reason == 1)
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

- (void)setUnavailableViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(CPSAppClipUnavailableView *)self->_unavailableView isHidden]!= hidden)
  {
    [(CPSAppClipUnavailableView *)self->_unavailableView setHidden:hiddenCopy];
    v5 = hiddenCopy ^ 1;
    [(UIStackView *)self->_informationContentView setHidden:v5];
    if ((v5 & 1) == 0)
    {
      unavailableView = self->_unavailableView;

      [(CPSAppClipUnavailableView *)unavailableView setReasonString:0];
    }
  }
}

- (void)showUnavailableViewWithReason:(id)reason
{
  reasonCopy = reason;
  [(CPSLaunchContentViewController *)self setUnavailableViewHidden:0];
  [(CPSAppClipUnavailableView *)self->_unavailableView setReasonString:reasonCopy];
  invocationPolicy = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  if ([invocationPolicy reason] == 14)
  {
    launchReason = [(CPSSessionProxy *)self->_sessionProxy launchReason];
    v7 = [launchReason isEqualToString:*MEMORY[0x277CFA660]];

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

- (void)_setHeroImage:(id)image
{
  imageCopy = image;
  [(UIImageView *)self->_heroImageView setImage:?];
  [(UIImageView *)self->_heroImageView setAccessibilityIdentifier:@"HeroImage"];
  [(UIImageView *)self->_heroMirrorImageView setImage:imageCopy];
  if (imageCopy)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v4 = ;
  [(CPSAppClipUnavailableView *)self->_unavailableView setBackgroundColor:v4];

  [(CPSPermissionsViewController *)self->_permissionsViewController setBackgroundImage:imageCopy];
}

- (void)_openAppClip:(id)clip
{
  if ([(CPSClipMetadata *)self->_clipMetadata fullAppOnly]&& ([(CPSClipMetadata *)self->_clipMetadata hasFullAppInstalledOnSystem]& 1) == 0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = _CPSLocalizedString();
    fullAppName = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
    v7 = [v8 stringWithFormat:v9, fullAppName];

    v11 = MEMORY[0x277CCACA8];
    v12 = _CPSLocalizedString();
    fullAppName2 = [(CPSClipMetadata *)self->_clipMetadata fullAppName];
    localizedDeviceName = [MEMORY[0x277CFA6E0] localizedDeviceName];
    v15 = [v11 stringWithFormat:v12, fullAppName2, localizedDeviceName];

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
  fullAppStoreURL = [(CPSClipMetadata *)self->_clipMetadata fullAppStoreURL];
  [(CPSLaunchContentViewController *)self _openNonAppClipURL:?];
}

- (void)_openNonAppClipURL:(id)l
{
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AC58]];
  v25 = *MEMORY[0x277D76690];
  clipBundleID = [(CPSClipMetadata *)self->_clipMetadata clipBundleID];
  fullAppBundleID = clipBundleID;
  if (!clipBundleID)
  {
    fullAppBundleID = [(CPSClipMetadata *)self->_clipMetadata fullAppBundleID];
  }

  v26[0] = fullAppBundleID;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277D0AC38]];

  if (!clipBundleID)
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCCUIAppLaunchOriginControlCenter()"];
      [currentHandler handleFailureInFunction:v16 file:@"CPSLaunchContentViewController.mm" lineNumber:44 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [dictionary setObject:*v9 forKeyedSubscript:*MEMORY[0x277D0AC28]];
  }

  mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
  metadata = [(CPSSessionProxy *)self->_sessionProxy metadata];
  clipBundleID2 = [metadata clipBundleID];
  [mEMORY[0x277CFA680] didCancelInterstitialForClip:clipBundleID2 withEvent:3 didShowCardInline:self->_displayMode == 1];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__CPSLaunchContentViewController__openNonAppClipURL___block_invoke;
  v17[3] = &unk_278DD2670;
  v13 = lCopy;
  v18 = v13;
  v14 = dictionary;
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = CPSLaunchContentViewController;
  [(CPSLaunchContentViewController *)&v4 touchesEnded:ended withEvent:event];
}

- (void)dismiss:(id)dismiss
{
  dismissCopy = dismiss;
  uiButton = [(CPSVibrantButton *)self->_closeButton uiButton];

  if (uiButton == dismissCopy)
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

- (void)logDismissalFromCloseButton:(BOOL)button
{
  buttonCopy = button;
  mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
  metadata = [(CPSSessionProxy *)self->_sessionProxy metadata];
  clipBundleID = [metadata clipBundleID];
  v7 = clipBundleID;
  if (clipBundleID)
  {
    v8 = clipBundleID;
  }

  else
  {
    v8 = &stru_285684560;
  }

  if (buttonCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [mEMORY[0x277CFA680] didCancelInterstitialForClip:v8 withEvent:v9 didShowCardInline:self->_displayMode == 1];
}

- (void)_dismissWithClipDidOpen:(BOOL)open completion:(id)completion
{
  openCopy = open;
  completionCopy = completion;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:openCopy completion:completionCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CPSLaunchContentViewController__dismissWithClipDidOpen_completion___block_invoke;
    block[3] = &unk_278DD2738;
    block[4] = self;
    v11 = openCopy;
    v10 = completionCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_dismissCardWithClipDidOpen:(BOOL)open completion:(id)completion
{
  completionCopy = completion;
  self->_dismissalInProgress = 1;
  if (!open)
  {
    [(CPSLaunchContentViewController *)self cancelSession];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__CPSLaunchContentViewController__dismissCardWithClipDidOpen_completion___block_invoke;
  v10[3] = &unk_278DD2738;
  v10[4] = self;
  openCopy = open;
  v7 = completionCopy;
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

- (void)_dismissCardWithClipDidOpen:(BOOL)open andPerformBlockToLaunchApp:(id)app
{
  openCopy = open;
  appCopy = app;
  if ([(CPSLaunchContentViewController *)self _canLaunchAppSimultaneouslyWithInvocationCardDismissal])
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:openCopy completion:0];
    appCopy[2]();
  }

  else
  {
    [(CPSLaunchContentViewController *)self _dismissCardWithClipDidOpen:openCopy completion:appCopy];
  }
}

- (void)_updateHeroImageIfNeeded
{
  _heroImage = [(CPSLaunchContentViewController *)self _heroImage];

  if (_heroImage)
  {
    return;
  }

  invocationPolicy = [(CPSClipMetadata *)self->_clipMetadata invocationPolicy];
  canShowHeroImage = [invocationPolicy canShowHeroImage];

  if (canShowHeroImage)
  {
    heroImageFileURL = [(CPSSessionProxy *)self->_sessionProxy heroImageFileURL];
    if (heroImageFileURL)
    {
      v6 = MEMORY[0x277D755B8];
      clipHeroImageURL = heroImageFileURL;
      path = [heroImageFileURL path];
      path2 = [v6 imageWithContentsOfFile:path];

      heroImageFileURL = clipHeroImageURL;
      if (path2)
      {
        [(CPSLaunchContentViewController *)self _setHeroImage:path2];
LABEL_10:

        goto LABEL_11;
      }
    }
  }

  clipHeroImageURL = [(CPSClipMetadata *)self->_clipMetadata clipHeroImageURL];
  if ([clipHeroImageURL cps_isFileURL] && (-[CPSClipMetadata isDeveloperOverride](self->_clipMetadata, "isDeveloperOverride") & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D755B8]);
    path2 = [clipHeroImageURL path];
    v10 = [v9 initWithContentsOfFile:path2];
    [(CPSLaunchContentViewController *)self _setHeroImage:v10];

    goto LABEL_10;
  }

LABEL_11:
}

- (id)_reasonStringForError:(id)error
{
  errorCopy = error;
  status = nw_path_get_status(self->_networkPath);
  v6 = MEMORY[0x277CFA658];
  if (status != nw_path_status_unsatisfied)
  {
    goto LABEL_6;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:*v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  if ([errorCopy code] != 10)
  {
    code = [errorCopy code];

    if (code == 2)
    {
      goto LABEL_14;
    }

LABEL_6:
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:*v6])
    {
      code2 = [errorCopy code];

      if (code2 == 10)
      {
LABEL_12:
        localizedDescription2 = _CPSLocalizedString();
        goto LABEL_15;
      }
    }

    else
    {
    }

    localizedDescription = [errorCopy localizedDescription];

    if (localizedDescription)
    {
      localizedDescription2 = [errorCopy localizedDescription];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_14:
  localizedDescription2 = cps_networkUnavailableErrorLocalizedDescription();
LABEL_15:
  v13 = localizedDescription2;

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

- (void)permissionsViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  if (self->_permissionsViewController == finishCopy)
  {
    v10 = finishCopy;
    navigationController = [(CPSLaunchContentViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    permissionsViewController = self->_permissionsViewController;

    finishCopy = v10;
    if (topViewController == permissionsViewController)
    {
      [(CPSPermissionView *)self->_permissionView setNotificationPermissionEnabled:[(CPSPermissionsViewController *)v10 notificationPermissionEnabled]];
      [(CPSPermissionView *)self->_permissionView setLocationConfirmationPermissionEnabled:[(CPSPermissionsViewController *)v10 locationConfirmationPermissionEnabled]];
      navigationController2 = [(CPSLaunchContentViewController *)self navigationController];
      v9 = [navigationController2 popViewControllerAnimated:1];

      finishCopy = v10;
    }
  }
}

- (void)updatePreferredContentSizeForCardWidth:(double)width
{
  view = [(CPSLaunchContentViewController *)self view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  v8 = view;
  [view systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
  [(CPSLaunchContentViewController *)self setPreferredContentSize:?];
}

- (void)proxyDidUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CPSLaunchContentViewController_proxyDidUpdateMetadata___block_invoke;
  v6[3] = &unk_278DD2670;
  v6[4] = self;
  v7 = metadataCopy;
  v5 = metadataCopy;
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

- (void)proxyDidInstallApplicationPlaceholder:(id)placeholder
{
  v11 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = placeholderCopy;
    _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "CPSLaunchContentViewController: Did install placeholder for proxy (%p)", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CPSLaunchContentViewController_proxyDidInstallApplicationPlaceholder___block_invoke;
  v7[3] = &unk_278DD2670;
  v7[4] = self;
  v8 = placeholderCopy;
  v6 = placeholderCopy;
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

- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon
{
  iconCopy = icon;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CPSLaunchContentViewController_proxy_didRetrieveApplicationIcon___block_invoke;
  v7[3] = &unk_278DD2670;
  v7[4] = self;
  v8 = iconCopy;
  v6 = iconCopy;
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

- (void)proxy:(id)proxy didRetrieveHeroImage:(id)image
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPSLaunchContentViewController_proxy_didRetrieveHeroImage___block_invoke;
  block[3] = &unk_278DD25D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)proxyRemoteServiceDidCrash:(id)crash
{
  crashCopy = crash;
  v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPSLaunchContentViewController *)crashCopy proxyRemoteServiceDidCrash:v4];
  }
}

- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  errorCopy = error;
  v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    cps_privacyPreservingDescription = [errorCopy cps_privacyPreservingDescription];
    [(CPSLaunchContentViewController *)proxyCopy proxy:cps_privacyPreservingDescription didFinishLoadingWithError:buf, v8];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSLaunchContentViewController_proxy_didFinishLoadingWithError___block_invoke;
  block[3] = &unk_278DD2788;
  block[4] = self;
  v13 = errorCopy;
  v14 = proxyCopy;
  v10 = proxyCopy;
  v11 = errorCopy;
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