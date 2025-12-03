@interface CPSPermissionsViewController
- (CPSPermissionsViewController)init;
- (CPSPermissionsViewController)initWithAppName:(id)name backgroundImage:(id)image;
- (CPSPermissionsViewController)initWithCoder:(id)coder;
- (CPSPermissionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CPSPermissionsViewControllerDelegate)delegate;
- (void)doneTapped;
- (void)loadView;
- (void)setBackgroundImage:(id)image;
- (void)setUpOptionsContainer;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePreferredContentSizeForCardWidth:(double)width;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSPermissionsViewController

- (void)loadView
{
  v3 = objc_alloc_init(CPSProxCardAutoSizingView);
  [(CPSPermissionsViewController *)self setView:v3];
}

- (CPSPermissionsViewController)initWithAppName:(id)name backgroundImage:(id)image
{
  nameCopy = name;
  imageCopy = image;
  v29.receiver = self;
  v29.super_class = CPSPermissionsViewController;
  v9 = [(CPSPermissionsViewController *)&v29 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appName, name);
    objc_storeStrong(&v10->_backgroundImage, image);
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

- (CPSPermissionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionsViewController initWithNibName:bundle:] is not available." userInfo:0];
  objc_exception_throw(v7);
}

- (CPSPermissionsViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSPermissionsViewController initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = CPSPermissionsViewController;
  changeCopy = change;
  [(CPSPermissionsViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(CPSPermissionsViewController *)self traitCollection:v10.receiver];
  cps_invocationCardPreferredContentSizeCategory = [v5 cps_invocationCardPreferredContentSizeCategory];

  cps_invocationCardPreferredContentSizeCategory2 = [changeCopy cps_invocationCardPreferredContentSizeCategory];

  LOBYTE(changeCopy) = [cps_invocationCardPreferredContentSizeCategory isEqual:cps_invocationCardPreferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    view = [(CPSPermissionsViewController *)self view];
    v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:cps_invocationCardPreferredContentSizeCategory];
    [view _setLocalOverrideTraitCollection:v9];

    [view frame];
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
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(UIImageView *)self->_backgroundImageView setBackgroundColor:secondarySystemBackgroundColor];

  view = [(CPSPermissionsViewController *)self view];
  [view addSubview:self->_backgroundImageView];

  v7 = objc_alloc(MEMORY[0x277D75D68]);
  v8 = [MEMORY[0x277D75210] effectWithStyle:8];
  v9 = [v7 initWithEffect:v8];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CPSPermissionsViewController *)self view];
  [view2 addSubview:v9];

  v11 = [MEMORY[0x277D75220] buttonWithType:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = _CPSLocalizedString();
  [v11 setTitle:v12 forState:0];

  v13 = *MEMORY[0x277D76988];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  titleLabel = [v11 titleLabel];
  [titleLabel setFont:v14];

  titleLabel2 = [v11 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  [v11 addTarget:self action:sel_doneTapped forControlEvents:0x2000];
  LODWORD(v17) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v17];
  if (_UISolariumEnabled() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [v11 setConfiguration:_glassButtonConfiguration];
  }

  contentView = [v9 contentView];
  [contentView addSubview:v11];

  v20 = [[CPSVibrantLabel alloc] initWithTextStyle:v13 textVariant:256 vibrancyEffectStyle:0];
  [(CPSVibrantLabel *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = _CPSLocalizedString();
  [(CPSVibrantLabel *)v20 setText:v21];

  [(CPSVibrantLabel *)v20 setAdjustsFontSizeToFitWidth:1];
  contentView2 = [v9 contentView];
  [contentView2 addSubview:v20];

  cps_vibrantSeparator = [MEMORY[0x277D75D18] cps_vibrantSeparator];
  [cps_vibrantSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [v9 contentView];
  [contentView3 addSubview:cps_vibrantSeparator];

  v25 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setContentInsetAdjustmentBehavior:2];
  contentView4 = [v9 contentView];
  [contentView4 addSubview:v25];

  [(CPSPermissionsViewController *)self setUpOptionsContainer];
  [v25 addSubview:self->_optionsContainer];
  v95 = MEMORY[0x277CCAAD0];
  topAnchor = [v9 topAnchor];
  view3 = [(CPSPermissionsViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v134 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v139[0] = v134;
  leadingAnchor = [v9 leadingAnchor];
  view4 = [(CPSPermissionsViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v130 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v139[1] = v130;
  trailingAnchor = [v9 trailingAnchor];
  view5 = [(CPSPermissionsViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v126 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v139[2] = v126;
  bottomAnchor = [v9 bottomAnchor];
  view6 = [(CPSPermissionsViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v122 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v139[3] = v122;
  topAnchor3 = [(UIImageView *)self->_backgroundImageView topAnchor];
  contentView5 = [v9 contentView];
  topAnchor4 = [contentView5 topAnchor];
  v118 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v139[4] = v118;
  leadingAnchor3 = [(UIImageView *)self->_backgroundImageView leadingAnchor];
  contentView6 = [v9 contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v113 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v139[5] = v113;
  trailingAnchor3 = [(UIImageView *)self->_backgroundImageView trailingAnchor];
  contentView7 = [v9 contentView];
  trailingAnchor4 = [contentView7 trailingAnchor];
  v108 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v139[6] = v108;
  bottomAnchor3 = [(UIImageView *)self->_backgroundImageView bottomAnchor];
  contentView8 = [v9 contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v104 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v139[7] = v104;
  topAnchor5 = [(CPSVibrantLabel *)v20 topAnchor];
  contentView9 = [v9 contentView];
  topAnchor6 = [contentView9 topAnchor];
  v99 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:24.0];
  v139[8] = v99;
  leadingAnchor5 = [(CPSVibrantLabel *)v20 leadingAnchor];
  contentView10 = [v9 contentView];
  leadingAnchor6 = [contentView10 leadingAnchor];
  v94 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:24.0];
  v139[9] = v94;
  centerYAnchor = [v11 centerYAnchor];
  centerYAnchor2 = [(CPSVibrantLabel *)v20 centerYAnchor];
  v91 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v139[10] = v91;
  v114 = v11;
  leadingAnchor7 = [v11 leadingAnchor];
  v112 = v20;
  trailingAnchor5 = [(CPSVibrantLabel *)v20 trailingAnchor];
  v87 = [leadingAnchor7 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:1.0];
  v139[11] = v87;
  contentView11 = [v9 contentView];
  trailingAnchor6 = [contentView11 trailingAnchor];
  trailingAnchor7 = [v11 trailingAnchor];
  v82 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:24.0];
  v139[12] = v82;
  topAnchor7 = [cps_vibrantSeparator topAnchor];
  bottomAnchor5 = [(CPSVibrantLabel *)v20 bottomAnchor];
  v79 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:24.0];
  v139[13] = v79;
  leadingAnchor8 = [cps_vibrantSeparator leadingAnchor];
  contentView12 = [v9 contentView];
  leadingAnchor9 = [contentView12 leadingAnchor];
  v74 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v139[14] = v74;
  v103 = cps_vibrantSeparator;
  trailingAnchor8 = [cps_vibrantSeparator trailingAnchor];
  contentView13 = [v9 contentView];
  trailingAnchor9 = [contentView13 trailingAnchor];
  v70 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v139[15] = v70;
  topAnchor8 = [v25 topAnchor];
  bottomAnchor6 = [cps_vibrantSeparator bottomAnchor];
  v67 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6];
  v139[16] = v67;
  leadingAnchor10 = [v25 leadingAnchor];
  contentView14 = [v9 contentView];
  leadingAnchor11 = [contentView14 leadingAnchor];
  v63 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v139[17] = v63;
  v27 = v25;
  v84 = v25;
  trailingAnchor10 = [v25 trailingAnchor];
  contentView15 = [v9 contentView];
  trailingAnchor11 = [contentView15 trailingAnchor];
  v59 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v139[18] = v59;
  bottomAnchor7 = [v9 bottomAnchor];
  bottomAnchor8 = [v25 bottomAnchor];
  v56 = [bottomAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor8];
  v139[19] = v56;
  topAnchor9 = [(UIView *)self->_optionsContainer topAnchor];
  topAnchor10 = [v25 topAnchor];
  v53 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v139[20] = v53;
  leadingAnchor12 = [(UIView *)self->_optionsContainer leadingAnchor];
  leadingAnchor13 = [v25 leadingAnchor];
  v50 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  v139[21] = v50;
  trailingAnchor12 = [(UIView *)self->_optionsContainer trailingAnchor];
  trailingAnchor13 = [v25 trailingAnchor];
  v47 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  v139[22] = v47;
  bottomAnchor9 = [(UIView *)self->_optionsContainer bottomAnchor];
  [v25 bottomAnchor];
  v29 = v28 = self;
  [bottomAnchor9 constraintEqualToAnchor:v29];
  v30 = v88 = v9;
  v139[23] = v30;
  widthAnchor = [v25 widthAnchor];
  v32 = v28;
  v78 = v28;
  widthAnchor2 = [(UIView *)v28->_optionsContainer widthAnchor];
  v34 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v139[24] = v34;
  heightAnchor = [v27 heightAnchor];
  heightAnchor2 = [(UIView *)v32->_optionsContainer heightAnchor];
  v37 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  LODWORD(v38) = 1132068864;
  v39 = [v37 cps_setPriority:v38];
  v139[25] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:26];
  [v95 activateConstraints:v40];

  v41 = MEMORY[0x277D75C80];
  traitCollection = [(CPSPermissionsViewController *)v78 traitCollection];
  cps_invocationCardPreferredContentSizeCategory = [traitCollection cps_invocationCardPreferredContentSizeCategory];
  v44 = [v41 traitCollectionWithPreferredContentSizeCategory:cps_invocationCardPreferredContentSizeCategory];
  view7 = [(CPSPermissionsViewController *)v78 view];
  [view7 _setLocalOverrideTraitCollection:v44];
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
  topAnchor = [(CPSPermissionItemView *)self->_locationConfirmationItemView topAnchor];
  topAnchor2 = [(UIView *)self->_optionsContainer topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
  v28[0] = v25;
  leadingAnchor = [(CPSPermissionItemView *)self->_locationConfirmationItemView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_optionsContainer leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  v28[1] = v22;
  trailingAnchor = [(UIView *)self->_optionsContainer trailingAnchor];
  trailingAnchor2 = [(CPSPermissionItemView *)self->_locationConfirmationItemView trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:24.0];
  v28[2] = v18;
  topAnchor3 = [(CPSPermissionItemView *)self->_notificationItemView topAnchor];
  bottomAnchor = [(CPSPermissionItemView *)self->_locationConfirmationItemView bottomAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:32.0];
  v28[3] = v15;
  leadingAnchor3 = [(CPSPermissionItemView *)self->_notificationItemView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_optionsContainer leadingAnchor];
  v7 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  v28[4] = v7;
  trailingAnchor3 = [(UIView *)self->_optionsContainer trailingAnchor];
  trailingAnchor4 = [(CPSPermissionItemView *)self->_notificationItemView trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:24.0];
  v28[5] = v10;
  bottomAnchor2 = [(UIView *)self->_optionsContainer bottomAnchor];
  bottomAnchor3 = [(CPSPermissionItemView *)self->_notificationItemView bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:32.0];
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

  view = [(CPSPermissionsViewController *)self view];
  [view frame];
  [(CPSPermissionsViewController *)self updatePreferredContentSizeForCardWidth:CGRectGetWidth(v6)];
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_backgroundImage != imageCopy)
  {
    view = [(CPSPermissionsViewController *)self view];
    [view layoutIfNeeded];

    objc_storeStrong(&self->_backgroundImage, image);
    [(UIImageView *)self->_backgroundImageView setImage:self->_backgroundImage];
    self->_backgroundImageNeedsUpdate = 1;
    view2 = [(CPSPermissionsViewController *)self view];
    [view2 setNeedsLayout];

    v8 = MEMORY[0x277D75D18];
    view3 = [(CPSPermissionsViewController *)self view];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__CPSPermissionsViewController_setBackgroundImage___block_invoke;
    v10[3] = &unk_278DD2268;
    v10[4] = self;
    [v8 transitionWithView:view3 duration:5242880 options:v10 animations:0 completion:0.5];
  }
}

void __51__CPSPermissionsViewController_setBackgroundImage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)doneTapped
{
  delegate = [(CPSPermissionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CPSPermissionsViewController *)self delegate];
    [delegate2 permissionsViewControllerDidFinish:self];
  }
}

- (void)updatePreferredContentSizeForCardWidth:(double)width
{
  view = [(CPSPermissionsViewController *)self view];
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1112014848;
  [view systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v5, v6}];
  [(CPSPermissionsViewController *)self setPreferredContentSize:?];
}

- (CPSPermissionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end