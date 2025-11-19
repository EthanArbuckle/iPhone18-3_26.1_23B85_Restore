@interface CPSPermissionsViewController
- (CPSPermissionsViewController)init;
- (CPSPermissionsViewController)initWithAppName:(id)a3 backgroundImage:(id)a4;
- (CPSPermissionsViewController)initWithCoder:(id)a3;
- (CPSPermissionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CPSPermissionsViewControllerDelegate)delegate;
- (void)doneTapped;
- (void)loadView;
- (void)setBackgroundImage:(id)a3;
- (void)setUpOptionsContainer;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSizeForCardWidth:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSPermissionsViewController

- (void)loadView
{
  v3 = objc_alloc_init(CPSProxCardAutoSizingView);
  [(CPSPermissionsViewController *)self setView:v3];
}

- (CPSPermissionsViewController)initWithAppName:(id)a3 backgroundImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = CPSPermissionsViewController;
  v9 = [(CPSPermissionsViewController *)&v29 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appName, a3);
    objc_storeStrong(&v10->_backgroundImage, a4);
    v11 = [CPSPermissionItemView alloc];
    _UISolariumEnabled();
    v12 = _CPSLocalizedString();
    v13 = _CPSLocalizedString();
    v14 = MEMORY[0x277CCACA8];
    v15 = _CPSLocalizedString();
    v16 = [v14 stringWithFormat:v15, v10->_appName];
    v17 = [(CPSPermissionItemView *)v11 initWithTitle:v12 label:v13 description:v16];
    notificationItemView = v10->_notificationItemView;
    v10->_notificationItemView = v17;

    v19 = [CPSPermissionItemView alloc];
    _UISolariumEnabled();
    v20 = _CPSLocalizedString();
    v21 = _CPSLocalizedString();
    v22 = MEMORY[0x277CCACA8];
    v23 = _CPSLocalizedString();
    v24 = [v22 stringWithFormat:v23, v10->_appName];
    v25 = [(CPSPermissionItemView *)v19 initWithTitle:v20 label:v21 description:v24];
    locationConfirmationItemView = v10->_locationConfirmationItemView;
    v10->_locationConfirmationItemView = v25;

    v10->_backgroundImageNeedsUpdate = 1;
    v27 = v10;
  }

  return v10;
}

- (CPSPermissionsViewController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionsViewController init:] is not available." userInfo:0];
  objc_exception_throw(v2);
}

- (CPSPermissionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionsViewController initWithNibName:bundle:] is not available." userInfo:0];
  objc_exception_throw(v7);
}

- (CPSPermissionsViewController)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionsViewController initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPSPermissionsViewController;
  v4 = a3;
  [(CPSPermissionsViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(CPSPermissionsViewController *)self traitCollection:v10.receiver];
  v6 = [v5 cps_invocationCardPreferredContentSizeCategory];

  v7 = [v4 cps_invocationCardPreferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqual:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [(CPSPermissionsViewController *)self view];
    v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v6];
    [v8 _setLocalOverrideTraitCollection:v9];

    [v8 frame];
    [(CPSPermissionsViewController *)self updatePreferredContentSizeForCardWidth:CGRectGetWidth(v11)];
  }
}

- (void)viewDidLoad
{
  v139[26] = *MEMORY[0x277D85DE8];
  v138.receiver = self;
  v138.super_class = CPSPermissionsViewController;
  [(CPSPermissionsViewController *)&v138 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_backgroundImage];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = v3;

  [(UIImageView *)self->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_backgroundImageView setContentCompressionResistancePriority:1 forAxis:0.0];
  [(UIImageView *)self->_backgroundImageView setContentHuggingPriority:1 forAxis:0.0];
  [(UIImageView *)self->_backgroundImageView setContentMode:2];
  v5 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(UIImageView *)self->_backgroundImageView setBackgroundColor:v5];

  v6 = [(CPSPermissionsViewController *)self view];
  [v6 addSubview:self->_backgroundImageView];

  v7 = objc_alloc(MEMORY[0x277D75D68]);
  v8 = [MEMORY[0x277D75210] effectWithStyle:8];
  v9 = [v7 initWithEffect:v8];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(CPSPermissionsViewController *)self view];
  [v10 addSubview:v9];

  v11 = [MEMORY[0x277D75220] buttonWithType:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = _CPSLocalizedString();
  [v11 setTitle:v12 forState:0];

  v13 = *MEMORY[0x277D76988];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v15 = [v11 titleLabel];
  [v15 setFont:v14];

  v16 = [v11 titleLabel];
  [v16 setAdjustsFontForContentSizeCategory:1];

  [v11 addTarget:self action:sel_doneTapped forControlEvents:0x2000];
  LODWORD(v17) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v17];
  if (_UISolariumEnabled() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [v11 setConfiguration:v18];
  }

  v19 = [v9 contentView];
  [v19 addSubview:v11];

  v20 = [[CPSVibrantLabel alloc] initWithTextStyle:v13 textVariant:256 vibrancyEffectStyle:0];
  [(CPSVibrantLabel *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = _CPSLocalizedString();
  [(CPSVibrantLabel *)v20 setText:v21];

  [(CPSVibrantLabel *)v20 setAdjustsFontSizeToFitWidth:1];
  v22 = [v9 contentView];
  [v22 addSubview:v20];

  v23 = [MEMORY[0x277D75D18] cps_vibrantSeparator];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v9 contentView];
  [v24 addSubview:v23];

  v25 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setContentInsetAdjustmentBehavior:2];
  v26 = [v9 contentView];
  [v26 addSubview:v25];

  [(CPSPermissionsViewController *)self setUpOptionsContainer];
  [v25 addSubview:self->_optionsContainer];
  v95 = MEMORY[0x277CCAAD0];
  v136 = [v9 topAnchor];
  v137 = [(CPSPermissionsViewController *)self view];
  v135 = [v137 topAnchor];
  v134 = [v136 constraintEqualToAnchor:v135];
  v139[0] = v134;
  v132 = [v9 leadingAnchor];
  v133 = [(CPSPermissionsViewController *)self view];
  v131 = [v133 leadingAnchor];
  v130 = [v132 constraintEqualToAnchor:v131];
  v139[1] = v130;
  v128 = [v9 trailingAnchor];
  v129 = [(CPSPermissionsViewController *)self view];
  v127 = [v129 trailingAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v139[2] = v126;
  v124 = [v9 bottomAnchor];
  v125 = [(CPSPermissionsViewController *)self view];
  v123 = [v125 bottomAnchor];
  v122 = [v124 constraintEqualToAnchor:v123];
  v139[3] = v122;
  v120 = [(UIImageView *)self->_backgroundImageView topAnchor];
  v121 = [v9 contentView];
  v119 = [v121 topAnchor];
  v118 = [v120 constraintEqualToAnchor:v119];
  v139[4] = v118;
  v116 = [(UIImageView *)self->_backgroundImageView leadingAnchor];
  v117 = [v9 contentView];
  v115 = [v117 leadingAnchor];
  v113 = [v116 constraintEqualToAnchor:v115];
  v139[5] = v113;
  v110 = [(UIImageView *)self->_backgroundImageView trailingAnchor];
  v111 = [v9 contentView];
  v109 = [v111 trailingAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v139[6] = v108;
  v106 = [(UIImageView *)self->_backgroundImageView bottomAnchor];
  v107 = [v9 contentView];
  v105 = [v107 bottomAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v139[7] = v104;
  v101 = [(CPSVibrantLabel *)v20 topAnchor];
  v102 = [v9 contentView];
  v100 = [v102 topAnchor];
  v99 = [v101 constraintEqualToAnchor:v100 constant:24.0];
  v139[8] = v99;
  v97 = [(CPSVibrantLabel *)v20 leadingAnchor];
  v98 = [v9 contentView];
  v96 = [v98 leadingAnchor];
  v94 = [v97 constraintEqualToAnchor:v96 constant:24.0];
  v139[9] = v94;
  v93 = [v11 centerYAnchor];
  v92 = [(CPSVibrantLabel *)v20 centerYAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v139[10] = v91;
  v114 = v11;
  v90 = [v11 leadingAnchor];
  v112 = v20;
  v89 = [(CPSVibrantLabel *)v20 trailingAnchor];
  v87 = [v90 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v89 multiplier:1.0];
  v139[11] = v87;
  v86 = [v9 contentView];
  v85 = [v86 trailingAnchor];
  v83 = [v11 trailingAnchor];
  v82 = [v85 constraintEqualToAnchor:v83 constant:24.0];
  v139[12] = v82;
  v81 = [v23 topAnchor];
  v80 = [(CPSVibrantLabel *)v20 bottomAnchor];
  v79 = [v81 constraintEqualToAnchor:v80 constant:24.0];
  v139[13] = v79;
  v76 = [v23 leadingAnchor];
  v77 = [v9 contentView];
  v75 = [v77 leadingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v139[14] = v74;
  v103 = v23;
  v72 = [v23 trailingAnchor];
  v73 = [v9 contentView];
  v71 = [v73 trailingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v139[15] = v70;
  v69 = [v25 topAnchor];
  v68 = [v23 bottomAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v139[16] = v67;
  v65 = [v25 leadingAnchor];
  v66 = [v9 contentView];
  v64 = [v66 leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v139[17] = v63;
  v27 = v25;
  v84 = v25;
  v61 = [v25 trailingAnchor];
  v62 = [v9 contentView];
  v60 = [v62 trailingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v139[18] = v59;
  v58 = [v9 bottomAnchor];
  v57 = [v25 bottomAnchor];
  v56 = [v58 constraintGreaterThanOrEqualToAnchor:v57];
  v139[19] = v56;
  v55 = [(UIView *)self->_optionsContainer topAnchor];
  v54 = [v25 topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v139[20] = v53;
  v52 = [(UIView *)self->_optionsContainer leadingAnchor];
  v51 = [v25 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v139[21] = v50;
  v49 = [(UIView *)self->_optionsContainer trailingAnchor];
  v48 = [v25 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v139[22] = v47;
  v46 = [(UIView *)self->_optionsContainer bottomAnchor];
  [v25 bottomAnchor];
  v29 = v28 = self;
  [v46 constraintEqualToAnchor:v29];
  v30 = v88 = v9;
  v139[23] = v30;
  v31 = [v25 widthAnchor];
  v32 = v28;
  v78 = v28;
  v33 = [(UIView *)v28->_optionsContainer widthAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v139[24] = v34;
  v35 = [v27 heightAnchor];
  v36 = [(UIView *)v32->_optionsContainer heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  LODWORD(v38) = 1132068864;
  v39 = [v37 cps_setPriority:v38];
  v139[25] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:26];
  [v95 activateConstraints:v40];

  v41 = MEMORY[0x277D75C80];
  v42 = [(CPSPermissionsViewController *)v78 traitCollection];
  v43 = [v42 cps_invocationCardPreferredContentSizeCategory];
  v44 = [v41 traitCollectionWithPreferredContentSizeCategory:v43];
  v45 = [(CPSPermissionsViewController *)v78 view];
  [v45 _setLocalOverrideTraitCollection:v44];
}

- (void)setUpOptionsContainer
{
  v28[7] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  optionsContainer = self->_optionsContainer;
  self->_optionsContainer = v3;

  [(UIView *)self->_optionsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSPermissionItemView *)self->_notificationItemView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_optionsContainer addSubview:self->_notificationItemView];
  [(CPSPermissionItemView *)self->_locationConfirmationItemView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_optionsContainer addSubview:self->_locationConfirmationItemView];
  v20 = MEMORY[0x277CCAAD0];
  v27 = [(CPSPermissionItemView *)self->_locationConfirmationItemView topAnchor];
  v26 = [(UIView *)self->_optionsContainer topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:24.0];
  v28[0] = v25;
  v24 = [(CPSPermissionItemView *)self->_locationConfirmationItemView leadingAnchor];
  v23 = [(UIView *)self->_optionsContainer leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:24.0];
  v28[1] = v22;
  v21 = [(UIView *)self->_optionsContainer trailingAnchor];
  v19 = [(CPSPermissionItemView *)self->_locationConfirmationItemView trailingAnchor];
  v18 = [v21 constraintEqualToAnchor:v19 constant:24.0];
  v28[2] = v18;
  v17 = [(CPSPermissionItemView *)self->_notificationItemView topAnchor];
  v16 = [(CPSPermissionItemView *)self->_locationConfirmationItemView bottomAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:32.0];
  v28[3] = v15;
  v5 = [(CPSPermissionItemView *)self->_notificationItemView leadingAnchor];
  v6 = [(UIView *)self->_optionsContainer leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:24.0];
  v28[4] = v7;
  v8 = [(UIView *)self->_optionsContainer trailingAnchor];
  v9 = [(CPSPermissionItemView *)self->_notificationItemView trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:24.0];
  v28[5] = v10;
  v11 = [(UIView *)self->_optionsContainer bottomAnchor];
  v12 = [(CPSPermissionItemView *)self->_notificationItemView bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:32.0];
  v28[6] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];
  [v20 activateConstraints:v14];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPSPermissionsViewController;
  [(CPSPermissionsViewController *)&v5 viewDidLayoutSubviews];
  if (self->_backgroundImageNeedsUpdate)
  {
    self->_backgroundImageNeedsUpdate = 0;
    v3 = 0.0;
    if (self->_backgroundImage)
    {
      v3 = 1.0;
    }

    [(UIImageView *)self->_backgroundImageView setAlpha:v3];
    [(CPSPermissionItemView *)self->_notificationItemView setHasBlurEffect:self->_backgroundImage != 0];
    [(CPSPermissionItemView *)self->_locationConfirmationItemView setHasBlurEffect:self->_backgroundImage != 0];
  }

  v4 = [(CPSPermissionsViewController *)self view];
  [v4 frame];
  [(CPSPermissionsViewController *)self updatePreferredContentSizeForCardWidth:CGRectGetWidth(v6)];
}

- (void)setBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->_backgroundImage != v5)
  {
    v6 = [(CPSPermissionsViewController *)self view];
    [v6 layoutIfNeeded];

    objc_storeStrong(&self->_backgroundImage, a3);
    [(UIImageView *)self->_backgroundImageView setImage:self->_backgroundImage];
    self->_backgroundImageNeedsUpdate = 1;
    v7 = [(CPSPermissionsViewController *)self view];
    [v7 setNeedsLayout];

    v8 = MEMORY[0x277D75D18];
    v9 = [(CPSPermissionsViewController *)self view];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__CPSPermissionsViewController_setBackgroundImage___block_invoke;
    v10[3] = &unk_278DD2268;
    v10[4] = self;
    [v8 transitionWithView:v9 duration:5242880 options:v10 animations:0 completion:0.5];
  }
}

void __51__CPSPermissionsViewController_setBackgroundImage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)doneTapped
{
  v3 = [(CPSPermissionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CPSPermissionsViewController *)self delegate];
    [v5 permissionsViewControllerDidFinish:self];
  }
}

- (void)updatePreferredContentSizeForCardWidth:(double)a3
{
  v7 = [(CPSPermissionsViewController *)self view];
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1112014848;
  [v7 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v5, v6}];
  [(CPSPermissionsViewController *)self setPreferredContentSize:?];
}

- (CPSPermissionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end