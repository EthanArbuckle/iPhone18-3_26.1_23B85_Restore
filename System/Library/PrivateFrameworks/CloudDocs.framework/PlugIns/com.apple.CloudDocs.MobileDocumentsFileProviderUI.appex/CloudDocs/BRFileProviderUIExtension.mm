@interface BRFileProviderUIExtension
- (BOOL)tooSmallToFitAnything;
- (BOOL)tooSmallToFitIcon;
- (BRFileProviderUIExtension)initWithNibName:(id)name bundle:(id)bundle;
- (NSString)buttonText;
- (NSString)message;
- (id)_imageForContentConfiguration;
- (id)shortButtonTitle;
- (id)title;
- (void)_setButtonTitle:(id)title alternativeShortTitle:(id)shortTitle;
- (void)_updateColors_custom;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateIcon_custom;
- (void)_updateText_custom;
- (void)_updateTraitCollectionDependents_custom;
- (void)_viewDidLayoutSubviews_custom;
- (void)_viewDidLoad_custom;
- (void)_viewSafeAreaInsetsDidChange_custom;
- (void)buttonTapped;
- (void)performLayoutSpecificMethod:(id)method;
- (void)refreshMode;
- (void)setMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonSpacing;
- (void)updateContentLayoutAllowingAnimation:(BOOL)animation;
- (void)updateText;
- (void)updateTitleFont;
- (void)updateTraitCollectionDependents;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation BRFileProviderUIExtension

- (BRFileProviderUIExtension)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = BRFileProviderUIExtension;
  v4 = [(BRFileProviderUIExtension *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"refreshMode" name:NSUbiquityIdentityDidChangeNotification object:0];

    v7 = objc_opt_self();
    v13[0] = v7;
    v8 = objc_opt_self();
    v13[1] = v8;
    v9 = [NSArray arrayWithObjects:v13 count:2];
    v10 = [(BRFileProviderUIExtension *)v4 registerForTraitChanges:v9 withAction:"_setNeedsUpdateContentUnavailableConfiguration"];

    if (qword_10000CB60 != -1)
    {
      sub_100004424();
    }

    v4->_layoutType = byte_10000CB68;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BRFileProviderUIExtension;
  [(BRFileProviderUIExtension *)&v3 viewDidLoad];
  [(BRFileProviderUIExtension *)self performLayoutSpecificMethod:"_viewDidLoad_custom", "_viewDidLoad_system"];
}

- (void)_viewDidLoad_custom
{
  view = [(BRFileProviderUIExtension *)self view];
  v4 = +[UIColor systemBackgroundColor];
  v5 = view;
  [view setBackgroundColor:v4];

  v6 = objc_alloc_init(UIView);
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144750080;
  [(UIView *)v6 setContentHuggingPriority:1 forAxis:v7];
  contentView = self->_contentView;
  self->_contentView = v6;
  v9 = v6;

  v10 = objc_alloc_init(BRIconView);
  iconView = self->_iconView;
  self->_iconView = v10;

  [(BRIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(BRIconView *)self->_iconView layer];
  [layer setBorderWidth:0.5];

  [(BRIconView *)self->_iconView setClipsToBounds:1];
  LODWORD(v13) = 1148846080;
  [(BRIconView *)self->_iconView setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(BRIconView *)self->_iconView setContentHuggingPriority:1 forAxis:v14];
  v15 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v15;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  title = [(BRFileProviderUIExtension *)self title];
  [(UILabel *)self->_titleLabel setText:title];

  LODWORD(v18) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v18];
  LODWORD(v19) = 1144913920;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v19];
  [(BRFileProviderUIExtension *)self updateTitleFont];
  v20 = objc_alloc_init(UILabel);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v20;

  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_messageLabel setAdjustsFontForContentSizeCategory:1];
  v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_messageLabel setFont:v22];

  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  LODWORD(v23) = 1148846080;
  [(UILabel *)self->_messageLabel setContentHuggingPriority:1 forAxis:v23];
  LODWORD(v24) = 1144750080;
  [(UILabel *)self->_messageLabel setContentCompressionResistancePriority:1 forAxis:v24];
  v25 = [UIButton buttonWithType:1];
  button = self->_button;
  self->_button = v25;

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_button setContentEdgeInsets:14.0, 16.0, 14.0, 16.0];
  [(UIButton *)self->_button _setContinuousCornerRadius:8.0];
  v27 = +[UIColor linkColor];
  [(UIButton *)self->_button setBackgroundColor:v27];

  v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setFont:v28];

  titleLabel2 = [(UIButton *)self->_button titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  LODWORD(v31) = 1148846080;
  [(UIButton *)self->_button setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [(UIButton *)self->_button setContentCompressionResistancePriority:1 forAxis:v32];
  LODWORD(v33) = 1143930880;
  [(UIButton *)self->_button setContentHuggingPriority:0 forAxis:v33];
  [(UIButton *)self->_button addTarget:self action:"buttonTapped" forControlEvents:64];
  v34 = self->_button;
  v35 = +[UIColor whiteColor];
  [(UIButton *)v34 setTitleColor:v35 forState:0];

  v131 = v5;
  [v5 addSubview:v9];
  iconView = [(BRFileProviderUIExtension *)self iconView];
  [(UIView *)v9 addSubview:iconView];

  titleLabel3 = [(BRFileProviderUIExtension *)self titleLabel];
  [(UIView *)v9 addSubview:titleLabel3];

  messageLabel = [(BRFileProviderUIExtension *)self messageLabel];
  [(UIView *)v9 addSubview:messageLabel];

  button = [(BRFileProviderUIExtension *)self button];
  [(UIView *)v9 addSubview:button];

  centerYAnchor = [(UIView *)v9 centerYAnchor];
  centerYAnchor2 = [v5 centerYAnchor];
  v132 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  LODWORD(v42) = 1144586240;
  [v132 setPriority:v42];
  topAnchor = [(UIView *)v9 topAnchor];
  topAnchor2 = [(BRIconView *)self->_iconView topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-16.0];
  iconTopConstraint = self->_iconTopConstraint;
  self->_iconTopConstraint = v45;

  LODWORD(v47) = 1144586240;
  [(NSLayoutConstraint *)self->_iconTopConstraint setPriority:v47];
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  bottomAnchor = [(BRIconView *)self->_iconView bottomAnchor];
  v50 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.44262295];
  iconToTitleSpacingConstraint = self->_iconToTitleSpacingConstraint;
  self->_iconToTitleSpacingConstraint = v50;

  topAnchor3 = [(UIView *)v9 topAnchor];
  topAnchor4 = [(UILabel *)self->_titleLabel topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-16.0];
  titleTopFallbackConstraint = self->_titleTopFallbackConstraint;
  self->_titleTopFallbackConstraint = v54;

  heightAnchor = [(UILabel *)self->_titleLabel heightAnchor];
  v57 = [heightAnchor constraintEqualToConstant:0.0];
  titleHeightFallbackConstraint = self->_titleHeightFallbackConstraint;
  self->_titleHeightFallbackConstraint = v57;

  heightAnchor2 = [(UILabel *)self->_messageLabel heightAnchor];
  v60 = [heightAnchor2 constraintEqualToConstant:0.0];
  messageHeightFallbackConstraint = self->_messageHeightFallbackConstraint;
  self->_messageHeightFallbackConstraint = v60;

  widthAnchor = [(UIButton *)self->_button widthAnchor];
  v133 = [widthAnchor constraintGreaterThanOrEqualToConstant:327.0];

  LODWORD(v63) = 1144586240;
  [v133 setPriority:v63];
  lastBaselineAnchor = [(UILabel *)self->_messageLabel lastBaselineAnchor];
  topAnchor5 = [(UIButton *)self->_button topAnchor];
  v66 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor5];
  buttonSpacingConstraint = self->_buttonSpacingConstraint;
  self->_buttonSpacingConstraint = v66;

  [v132 priority];
  *&v69 = v68 + -1.0;
  [(NSLayoutConstraint *)self->_buttonSpacingConstraint setPriority:v69];
  widthAnchor2 = [(UIView *)v9 widthAnchor];
  v129 = [widthAnchor2 constraintLessThanOrEqualToConstant:450.0];
  v134[0] = v129;
  centerXAnchor = [(UIView *)v9 centerXAnchor];
  centerXAnchor2 = [v5 centerXAnchor];
  v126 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v134[1] = v126;
  topAnchor6 = [(UIView *)v9 topAnchor];
  layoutMarginsGuide = [v5 layoutMarginsGuide];
  topAnchor7 = [layoutMarginsGuide topAnchor];
  v122 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7];
  v134[2] = v122;
  leadingAnchor = [(UIView *)v9 leadingAnchor];
  layoutMarginsGuide2 = [v5 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v118 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v134[3] = v118;
  bottomAnchor2 = [(UIView *)v9 bottomAnchor];
  safeAreaLayoutGuide = [v5 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v114 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v134[4] = v114;
  trailingAnchor = [(UIView *)v9 trailingAnchor];
  layoutMarginsGuide3 = [v5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v110 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v134[5] = v110;
  v134[6] = v132;
  centerXAnchor3 = [(BRIconView *)self->_iconView centerXAnchor];
  centerXAnchor4 = [(UIView *)v9 centerXAnchor];
  v107 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v134[7] = v107;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)v9 leadingAnchor];
  v104 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v134[8] = v104;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [(UIView *)v9 trailingAnchor];
  v101 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v70 = self->_iconToTitleSpacingConstraint;
  v134[9] = v101;
  v134[10] = v70;
  leadingAnchor5 = [(UILabel *)self->_messageLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)v9 leadingAnchor];
  v98 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v134[11] = v98;
  trailingAnchor5 = [(UILabel *)self->_messageLabel trailingAnchor];
  trailingAnchor6 = [(UIView *)v9 trailingAnchor];
  v95 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v134[12] = v95;
  firstBaselineAnchor2 = [(UILabel *)self->_messageLabel firstBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v92 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.33333333];
  v134[13] = v92;
  centerXAnchor5 = [(UIButton *)self->_button centerXAnchor];
  centerXAnchor6 = [(UIView *)v9 centerXAnchor];
  v89 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v134[14] = v89;
  leadingAnchor7 = [(UIButton *)self->_button leadingAnchor];
  layoutMarginsGuide4 = [v5 layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide4 leadingAnchor];
  v85 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
  v134[15] = v85;
  trailingAnchor7 = [(UIButton *)self->_button trailingAnchor];
  layoutMarginsGuide5 = [v5 layoutMarginsGuide];
  trailingAnchor8 = [layoutMarginsGuide5 trailingAnchor];
  v81 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v134[16] = v81;
  heightAnchor3 = [(UIButton *)self->_button heightAnchor];
  v72 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:50.0];
  v134[17] = v72;
  bottomAnchor4 = [(UIButton *)self->_button bottomAnchor];
  bottomAnchor5 = [(UIView *)v9 bottomAnchor];
  v75 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-16.0];
  v134[18] = v75;
  v134[19] = v133;
  topAnchor8 = [(UIButton *)self->_button topAnchor];
  bottomAnchor6 = [(UILabel *)self->_messageLabel bottomAnchor];
  v78 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:16.0];
  v79 = self->_buttonSpacingConstraint;
  v134[20] = v78;
  v134[21] = v79;
  v134[22] = self->_iconTopConstraint;
  v80 = [NSArray arrayWithObjects:v134 count:23];
  [NSLayoutConstraint activateConstraints:v80];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BRFileProviderUIExtension;
  [(BRFileProviderUIExtension *)&v3 viewDidLayoutSubviews];
  [(BRFileProviderUIExtension *)self performLayoutSpecificMethod:"_viewDidLayoutSubviews_custom", "_viewDidLayoutSubviews_system"];
}

- (void)_viewDidLayoutSubviews_custom
{
  [(BRFileProviderUIExtension *)self updateText];

  [(BRFileProviderUIExtension *)self updateColors];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = BRFileProviderUIExtension;
  [(BRFileProviderUIExtension *)&v3 viewSafeAreaInsetsDidChange];
  [(BRFileProviderUIExtension *)self performLayoutSpecificMethod:"_viewSafeAreaInsetsDidChange_custom", "_viewSafeAreaInsetsDidChange_system"];
}

- (void)_viewSafeAreaInsetsDidChange_custom
{
  [(BRFileProviderUIExtension *)self updateText];

  [(BRFileProviderUIExtension *)self updateContentLayoutAllowingAnimation:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = BRFileProviderUIExtension;
  [(BRFileProviderUIExtension *)&v15 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(BRFileProviderUIExtension *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  if (preferredContentSizeCategory == preferredContentSizeCategory2)
  {
    horizontalSizeClass = [changeCopy horizontalSizeClass];
    traitCollection2 = [(BRFileProviderUIExtension *)self traitCollection];
    if (horizontalSizeClass == [traitCollection2 horizontalSizeClass])
    {
      verticalSizeClass = [changeCopy verticalSizeClass];
      traitCollection3 = [(BRFileProviderUIExtension *)self traitCollection];
      if (verticalSizeClass == [traitCollection3 verticalSizeClass])
      {
        userInterfaceStyle = [changeCopy userInterfaceStyle];
        traitCollection4 = [(BRFileProviderUIExtension *)self traitCollection];
        userInterfaceStyle2 = [traitCollection4 userInterfaceStyle];

        if (userInterfaceStyle == userInterfaceStyle2)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  [(BRFileProviderUIExtension *)self updateTraitCollectionDependents];
LABEL_10:
}

- (void)updateTraitCollectionDependents
{
  [(BRFileProviderUIExtension *)self performLayoutSpecificMethod:"_updateTraitCollectionDependents_custom", "_updateTraitCollectionDependents_system"];

  [(BRFileProviderUIExtension *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updateTraitCollectionDependents_custom
{
  [(BRFileProviderUIExtension *)self updateIcon];
  [(BRFileProviderUIExtension *)self updateButtonSpacing];
  [(BRFileProviderUIExtension *)self updateTitleFont];
  messageLabel = [(BRFileProviderUIExtension *)self messageLabel];
  [messageLabel forceDisplayIfNeeded];

  titleLabel = [(BRFileProviderUIExtension *)self titleLabel];
  [titleLabel forceDisplayIfNeeded];
}

- (void)buttonTapped
{
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Ubiquity"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(BRFileProviderUIExtension *)self updateText];
  }
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"iCloud Drive" value:&stru_100008480 table:0];

  return v3;
}

- (NSString)message
{
  mode = [(BRFileProviderUIExtension *)self mode];
  if (mode <= 2)
  {
    v4 = *(&off_100008428 + mode);
    v5 = +[NSBundle mainBundle];
    v2 = [v5 localizedStringForKey:v4 value:&stru_100008480 table:0];
  }

  return v2;
}

- (NSString)buttonText
{
  mode = [(BRFileProviderUIExtension *)self mode];
  if (!mode)
  {
    v3 = @"Sign in to iCloud";
    goto LABEL_5;
  }

  if (mode == 1)
  {
    v3 = @"Turn on iCloud Drive";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100008480 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)shortButtonTitle
{
  mode = [(BRFileProviderUIExtension *)self mode];
  if (!mode)
  {
    v3 = @"Sign in to iCloud (Short)";
    goto LABEL_5;
  }

  if (mode == 1)
  {
    v3 = @"Turn on iCloud Drive (Short)";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100008480 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)refreshMode
{
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (qword_10000CB40 != -1)
    {
      sub_10000444C();
    }

    v4 = qword_10000CB48;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = +[UMUserManager sharedManager];
  currentPersona = [v6 currentPersona];

  v47 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    goto LABEL_9;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v46 = 0;
    v31 = [currentPersona copyCurrentPersonaContextWithError:&v46];
    v32 = v46;
    v47 = v31;
    if (v32)
    {
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, 0x90u))
      {
        sub_100004550(v32, v33, v34);
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v49 = personaID;
        v50 = 2112;
        v51 = v10;
        v52 = 2112;
        v53 = v35;
        _os_log_error_impl(&_mh_execute_header, v36, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v40 = brc_bread_crumbs();
      v41 = brc_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_100004460(v40, v41);
      }

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }

    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_1000044D8(v37, v38);
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] refreshing iCloud status%@", buf, 0xCu);
  }

  v13 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v13 aa_primaryAppleAccount];
  v15 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    if ([aa_primaryAppleAccount isEnabledForDataclass:kAccountDataclassUbiquity])
    {
      v45 = v10;
      v16 = BRPrimaryiCloudAccountCopyStatus();
      v17 = 0;
      v18 = [v16 objectForKey:BRAccountIsSessionLoaded];
      bOOLValue = [v18 BOOLValue];

      if (bOOLValue)
      {
        v20 = [v16 objectForKey:BRAccountMigrationStatusKey];
        v44 = v20;
        if (v17 || (v21 = v20) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, 0x90u))
          {
            *buf = 138412802;
            v49 = v17;
            v50 = 2112;
            v51 = v44;
            v52 = 2112;
            v53 = v22;
            _os_log_error_impl(&_mh_execute_header, v23, 0x90u, "[ERROR] Error fetching account status %@ or migration status %@%@", buf, 0x20u);
          }

          v21 = v44;
          if (!v44)
          {
            goto LABEL_44;
          }
        }

        if (([v21 integerValue] & 0xFE) == 2)
        {
          v24 = +[NSFileManager defaultManager];
          ubiquityIdentityToken = [v24 ubiquityIdentityToken];

          if (ubiquityIdentityToken)
          {
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[INFO] token returned: dismiss%@", buf, 0xCu);
            }

            extensionContext = [(BRFileProviderUIExtension *)self extensionContext];
            [extensionContext completeRequest];
          }

          else
          {
            [(BRFileProviderUIExtension *)self setMode:2];
            extensionContext = brc_bread_crumbs();
            v42 = brc_default_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = extensionContext;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[INFO] no token returned: wait for token%@", buf, 0xCu);
            }
          }

          v21 = v44;
        }

        else
        {
LABEL_44:
          [(BRFileProviderUIExtension *)self setMode:1];
          extensionContext = brc_bread_crumbs();
          v39 = brc_default_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = extensionContext;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[INFO] not migrated: turn on mode%@", buf, 0xCu);
          }
        }
      }

      else
      {
        [(BRFileProviderUIExtension *)self setMode:1];
      }

      v10 = v45;
    }

    else
    {
      [(BRFileProviderUIExtension *)self setMode:1];
    }
  }

  else
  {
    [(BRFileProviderUIExtension *)self setMode:0];
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[INFO] no account found: sign in mode%@", buf, 0xCu);
    }
  }

  _BRRestorePersona();
}

- (void)updateText
{
  [(BRFileProviderUIExtension *)self setDidInitializeText:1];

  [(BRFileProviderUIExtension *)self performLayoutSpecificMethod:"_updateText_custom", "_updateText_system"];
}

- (void)_updateText_custom
{
  message = [(BRFileProviderUIExtension *)self message];
  messageLabel = [(BRFileProviderUIExtension *)self messageLabel];
  [messageLabel setText:message];

  buttonText = [(BRFileProviderUIExtension *)self buttonText];
  if (buttonText)
  {
    shortButtonTitle = [(BRFileProviderUIExtension *)self shortButtonTitle];
    [(BRFileProviderUIExtension *)self _setButtonTitle:buttonText alternativeShortTitle:shortButtonTitle];
  }

  button = [(BRFileProviderUIExtension *)self button];
  [button setHidden:buttonText == 0];
}

- (void)_setButtonTitle:(id)title alternativeShortTitle:(id)shortTitle
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002F94;
  v7[3] = &unk_100008330;
  v7[4] = self;
  titleCopy = title;
  shortTitleCopy = shortTitle;
  v5 = shortTitleCopy;
  v6 = titleCopy;
  [UIView performWithoutAnimation:v7];
}

- (void)_updateColors_custom
{
  v6 = +[UIColor separatorColor];
  v3 = v6;
  cGColor = [v6 CGColor];
  layer = [(BRIconView *)self->_iconView layer];
  [layer setBorderColor:cGColor];
}

- (void)updateContentLayoutAllowingAnimation:(BOOL)animation
{
  animationCopy = animation;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003234;
  v9[3] = &unk_100008358;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v6 = v5;
  if (animationCopy)
  {
    (v5[2])(v5);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000032CC;
    v7[3] = &unk_100008380;
    v7[4] = self;
    v8 = v5;
    [UIView performWithoutAnimation:v7];
  }
}

- (void)_updateIcon_custom
{
  traitCollection = [(BRFileProviderUIExtension *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  traitCollection2 = [(BRFileProviderUIExtension *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];

  v8 = verticalSizeClass == 1 || IsAccessibilityCategory;
  if (verticalSizeClass == 1 || IsAccessibilityCategory)
  {
    traitCollection3 = [(BRFileProviderUIExtension *)self traitCollection];
    v10 = sub_1000035D0(traitCollection3);
    iconView = [(BRFileProviderUIExtension *)self iconView];
    [iconView setIconVariant:v10];
  }

  else
  {
    tooSmallToFitIcon = [(BRFileProviderUIExtension *)self tooSmallToFitIcon];
    traitCollection4 = [(BRFileProviderUIExtension *)self traitCollection];
    v14 = sub_1000035D0(traitCollection4);
    iconView2 = [(BRFileProviderUIExtension *)self iconView];
    [iconView2 setIconVariant:v14];

    if ((tooSmallToFitIcon & 1) == 0)
    {
      iconView3 = [(BRFileProviderUIExtension *)self iconView];
      [iconView3 setHidden:0];

      iconTopConstraint = [(BRFileProviderUIExtension *)self iconTopConstraint];
      [iconTopConstraint setActive:1];

      titleTopFallbackConstraint = [(BRFileProviderUIExtension *)self titleTopFallbackConstraint];
      [titleTopFallbackConstraint setActive:0];

      v17 = 0;
      goto LABEL_7;
    }
  }

  iconView4 = [(BRFileProviderUIExtension *)self iconView];
  v17 = 1;
  [iconView4 setHidden:1];

  iconTopConstraint2 = [(BRFileProviderUIExtension *)self iconTopConstraint];
  [iconTopConstraint2 setActive:0];

  titleTopFallbackConstraint2 = [(BRFileProviderUIExtension *)self titleTopFallbackConstraint];
  [titleTopFallbackConstraint2 setActive:1];

  if (v8)
  {
LABEL_7:
    messageLabel = [(BRFileProviderUIExtension *)self messageLabel];
    [messageLabel setHidden:v17];

    messageHeightFallbackConstraint = [(BRFileProviderUIExtension *)self messageHeightFallbackConstraint];
    [messageHeightFallbackConstraint setActive:v17];
  }

  traitCollection5 = [(BRFileProviderUIExtension *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection5 preferredContentSizeCategory];
  v27 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, UIContentSizeCategoryAccessibilityExtraLarge);

  v29 = verticalSizeClass == 1 && v27 == NSOrderedDescending;
  titleLabel = [(BRFileProviderUIExtension *)self titleLabel];
  [titleLabel setHidden:v29];

  titleHeightFallbackConstraint = [(BRFileProviderUIExtension *)self titleHeightFallbackConstraint];
  [titleHeightFallbackConstraint setActive:v29];
}

- (BOOL)tooSmallToFitAnything
{
  if (self->_layoutType == 1)
  {
    return 1;
  }

  view = [(BRFileProviderUIExtension *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v7 = v6;

  view2 = [(BRFileProviderUIExtension *)self view];
  [view2 bounds];
  v10 = v9;

  button = [(BRFileProviderUIExtension *)self button];
  [button systemLayoutSizeFittingSize:{v10, 0.0}];
  v2 = v12 > v7;

  return v2;
}

- (BOOL)tooSmallToFitIcon
{
  view = [(BRFileProviderUIExtension *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v6 = v5;

  view2 = [(BRFileProviderUIExtension *)self view];
  [view2 bounds];
  v9 = v8;

  contentView = [(BRFileProviderUIExtension *)self contentView];
  [contentView systemLayoutSizeFittingSize:{v9, 0.0}];
  v12 = v11;

  if ([(BRIconView *)self->_iconView isHidden])
  {
    iconTopConstraint = [(BRFileProviderUIExtension *)self iconTopConstraint];
    [iconTopConstraint constant];
    v15 = v12 + v14;

    iconView = [(BRFileProviderUIExtension *)self iconView];
    [iconView systemLayoutSizeFittingSize:{v9, 0.0}];
    v18 = v15 + v17;

    iconToTitleSpacingConstraint = [(BRFileProviderUIExtension *)self iconToTitleSpacingConstraint];
    [iconToTitleSpacingConstraint constant];
    v12 = v18 + v20;
  }

  return v12 > v6;
}

- (void)updateButtonSpacing
{
  traitCollection = [(BRFileProviderUIExtension *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    v3 = -72.0;
  }

  else
  {
    v3 = -56.0;
  }

  buttonSpacingConstraint = [(BRFileProviderUIExtension *)self buttonSpacingConstraint];
  [buttonSpacingConstraint setConstant:v3];
}

- (void)updateTitleFont
{
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v3 = [v6 fontDescriptorWithSymbolicTraits:2];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  titleLabel = [(BRFileProviderUIExtension *)self titleLabel];
  [titleLabel setFont:v4];
}

- (id)_imageForContentConfiguration
{
  cachedImage_system = self->_cachedImage_system;
  if (!cachedImage_system)
  {
    if (qword_10000CB70 != -1)
    {
      sub_1000045EC();
    }

    if (byte_10000CB78 == 1)
    {
      v4 = [UIImage imageNamed:@"HeaderIcon-Circular"];
      v5 = self->_cachedImage_system;
      self->_cachedImage_system = v4;
    }

    else
    {
      v5 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
      [v5 setDrawBorder:1];
      v6 = [ISIcon alloc];
      v7 = [v6 initWithType:BRiCloudIconUTI];
      v8 = [v7 prepareImageForDescriptor:v5];
      v9 = +[UIScreen mainScreen];
      traitCollection = [v9 traitCollection];
      [traitCollection displayScale];
      v12 = v11;

      v13 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v8 CGImage], 0, v12);
      v14 = self->_cachedImage_system;
      self->_cachedImage_system = v13;
    }

    cachedImage_system = self->_cachedImage_system;
  }

  v15 = cachedImage_system;

  return v15;
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  objc_initWeak(&location, self);
  if (self->_layoutType == 1)
  {
    v5 = +[UIContentUnavailableConfiguration emptyProminentConfiguration];
    v6 = [v5 updatedConfigurationForState:stateCopy];

    if (qword_10000CB70 != -1)
    {
      sub_100004600();
    }

    v7 = byte_10000CB78;
    imageProperties = [v6 imageProperties];
    v9 = imageProperties;
    v10 = 64.0;
    if (v7)
    {
      v10 = 88.0;
    }

    [imageProperties setMaximumSize:{v10, v10}];

    _imageForContentConfiguration = [(BRFileProviderUIExtension *)self _imageForContentConfiguration];
    [v6 setImage:_imageForContentConfiguration];

    title = [(BRFileProviderUIExtension *)self title];
    [v6 setText:title];

    message = [(BRFileProviderUIExtension *)self message];
    [v6 setSecondaryText:message];

    v14 = +[UIButtonConfiguration borderedProminentButtonConfiguration];
    buttonText = [(BRFileProviderUIExtension *)self buttonText];
    [v14 setTitle:buttonText];

    if (qword_10000CB70 != -1)
    {
      sub_100004600();
    }

    if (byte_10000CB78 == 1)
    {
      [v14 setContentInsets:{10.0, 20.0, 10.0, 20.0}];
    }

    else
    {
      v16 = +[UIColor linkColor];
      [v14 setBaseBackgroundColor:v16];
    }

    buttonProperties = [v6 buttonProperties];
    [buttonProperties setConfiguration:v14];
    [buttonProperties setRole:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100003EF0;
    v31[3] = &unk_1000083A8;
    objc_copyWeak(&v32, &location);
    v18 = [UIAction actionWithHandler:v31];
    [buttonProperties setPrimaryAction:v18];

    traitCollection = [(BRFileProviderUIExtension *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v22 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityExtraLarge);
    if (IsAccessibilityCategory)
    {
      v23 = v22;
      v30 = stateCopy;
      traitCollection2 = [(BRFileProviderUIExtension *)self traitCollection];
      verticalSizeClass = [traitCollection2 verticalSizeClass];

      traitCollection3 = [(BRFileProviderUIExtension *)self traitCollection];
      horizontalSizeClass = [traitCollection3 horizontalSizeClass];

      v28 = [(BRFileProviderUIExtension *)self interfaceOrientation]- 1 >= 2 && [(BRFileProviderUIExtension *)self interfaceOrientation]!= 0;
      if (verticalSizeClass == 1)
      {
        [v6 setSecondaryText:0];
        if (v23 == NSOrderedDescending)
        {
          [v6 setText:0];
        }
      }

      stateCopy = v30;
      if (horizontalSizeClass == 1 && !v28)
      {
        shortButtonTitle = [(BRFileProviderUIExtension *)self shortButtonTitle];
        [v14 setTitle:shortButtonTitle];
      }
    }

    [(BRFileProviderUIExtension *)self _setContentUnavailableConfiguration:v6];

    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(&location);
}

- (void)performLayoutSpecificMethod:(id)method
{
  layoutType = self->_layoutType;
  if (layoutType == 1)
  {
    var1 = method.var1;
  }

  else if (layoutType)
  {
    var1 = 0;
  }

  else
  {
    var1 = method.var0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [(BRFileProviderUIExtension *)self methodForSelector:var1];
    if (v6)
    {

      v6(self, var1);
    }
  }
}

@end