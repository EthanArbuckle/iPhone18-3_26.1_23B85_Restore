@interface BRFileProviderUIExtension
- (BOOL)tooSmallToFitAnything;
- (BOOL)tooSmallToFitIcon;
- (BRFileProviderUIExtension)initWithNibName:(id)a3 bundle:(id)a4;
- (NSString)buttonText;
- (NSString)message;
- (id)_imageForContentConfiguration;
- (id)shortButtonTitle;
- (id)title;
- (void)_setButtonTitle:(id)a3 alternativeShortTitle:(id)a4;
- (void)_updateColors_custom;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateIcon_custom;
- (void)_updateText_custom;
- (void)_updateTraitCollectionDependents_custom;
- (void)_viewDidLayoutSubviews_custom;
- (void)_viewDidLoad_custom;
- (void)_viewSafeAreaInsetsDidChange_custom;
- (void)buttonTapped;
- (void)performLayoutSpecificMethod:(id)a3;
- (void)refreshMode;
- (void)setMode:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateButtonSpacing;
- (void)updateContentLayoutAllowingAnimation:(BOOL)a3;
- (void)updateText;
- (void)updateTitleFont;
- (void)updateTraitCollectionDependents;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation BRFileProviderUIExtension

- (BRFileProviderUIExtension)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = BRFileProviderUIExtension;
  v4 = [(BRFileProviderUIExtension *)&v12 initWithNibName:a3 bundle:a4];
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
  v3 = [(BRFileProviderUIExtension *)self view];
  v4 = +[UIColor systemBackgroundColor];
  v5 = v3;
  [v3 setBackgroundColor:v4];

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
  v12 = [(BRIconView *)self->_iconView layer];
  [v12 setBorderWidth:0.5];

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
  v17 = [(BRFileProviderUIExtension *)self title];
  [(UILabel *)self->_titleLabel setText:v17];

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
  v29 = [(UIButton *)self->_button titleLabel];
  [v29 setFont:v28];

  v30 = [(UIButton *)self->_button titleLabel];
  [v30 setAdjustsFontForContentSizeCategory:1];

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
  v36 = [(BRFileProviderUIExtension *)self iconView];
  [(UIView *)v9 addSubview:v36];

  v37 = [(BRFileProviderUIExtension *)self titleLabel];
  [(UIView *)v9 addSubview:v37];

  v38 = [(BRFileProviderUIExtension *)self messageLabel];
  [(UIView *)v9 addSubview:v38];

  v39 = [(BRFileProviderUIExtension *)self button];
  [(UIView *)v9 addSubview:v39];

  v40 = [(UIView *)v9 centerYAnchor];
  v41 = [v5 centerYAnchor];
  v132 = [v40 constraintEqualToAnchor:v41];

  LODWORD(v42) = 1144586240;
  [v132 setPriority:v42];
  v43 = [(UIView *)v9 topAnchor];
  v44 = [(BRIconView *)self->_iconView topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-16.0];
  iconTopConstraint = self->_iconTopConstraint;
  self->_iconTopConstraint = v45;

  LODWORD(v47) = 1144586240;
  [(NSLayoutConstraint *)self->_iconTopConstraint setPriority:v47];
  v48 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v49 = [(BRIconView *)self->_iconView bottomAnchor];
  v50 = [v48 constraintEqualToSystemSpacingBelowAnchor:v49 multiplier:1.44262295];
  iconToTitleSpacingConstraint = self->_iconToTitleSpacingConstraint;
  self->_iconToTitleSpacingConstraint = v50;

  v52 = [(UIView *)v9 topAnchor];
  v53 = [(UILabel *)self->_titleLabel topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];
  titleTopFallbackConstraint = self->_titleTopFallbackConstraint;
  self->_titleTopFallbackConstraint = v54;

  v56 = [(UILabel *)self->_titleLabel heightAnchor];
  v57 = [v56 constraintEqualToConstant:0.0];
  titleHeightFallbackConstraint = self->_titleHeightFallbackConstraint;
  self->_titleHeightFallbackConstraint = v57;

  v59 = [(UILabel *)self->_messageLabel heightAnchor];
  v60 = [v59 constraintEqualToConstant:0.0];
  messageHeightFallbackConstraint = self->_messageHeightFallbackConstraint;
  self->_messageHeightFallbackConstraint = v60;

  v62 = [(UIButton *)self->_button widthAnchor];
  v133 = [v62 constraintGreaterThanOrEqualToConstant:327.0];

  LODWORD(v63) = 1144586240;
  [v133 setPriority:v63];
  v64 = [(UILabel *)self->_messageLabel lastBaselineAnchor];
  v65 = [(UIButton *)self->_button topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  buttonSpacingConstraint = self->_buttonSpacingConstraint;
  self->_buttonSpacingConstraint = v66;

  [v132 priority];
  *&v69 = v68 + -1.0;
  [(NSLayoutConstraint *)self->_buttonSpacingConstraint setPriority:v69];
  v130 = [(UIView *)v9 widthAnchor];
  v129 = [v130 constraintLessThanOrEqualToConstant:450.0];
  v134[0] = v129;
  v128 = [(UIView *)v9 centerXAnchor];
  v127 = [v5 centerXAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v134[1] = v126;
  v124 = [(UIView *)v9 topAnchor];
  v125 = [v5 layoutMarginsGuide];
  v123 = [v125 topAnchor];
  v122 = [v124 constraintGreaterThanOrEqualToAnchor:v123];
  v134[2] = v122;
  v120 = [(UIView *)v9 leadingAnchor];
  v121 = [v5 layoutMarginsGuide];
  v119 = [v121 leadingAnchor];
  v118 = [v120 constraintGreaterThanOrEqualToAnchor:v119];
  v134[3] = v118;
  v116 = [(UIView *)v9 bottomAnchor];
  v117 = [v5 safeAreaLayoutGuide];
  v115 = [v117 bottomAnchor];
  v114 = [v116 constraintLessThanOrEqualToAnchor:v115];
  v134[4] = v114;
  v112 = [(UIView *)v9 trailingAnchor];
  v113 = [v5 layoutMarginsGuide];
  v111 = [v113 trailingAnchor];
  v110 = [v112 constraintLessThanOrEqualToAnchor:v111];
  v134[5] = v110;
  v134[6] = v132;
  v109 = [(BRIconView *)self->_iconView centerXAnchor];
  v108 = [(UIView *)v9 centerXAnchor];
  v107 = [v109 constraintEqualToAnchor:v108];
  v134[7] = v107;
  v106 = [(UILabel *)self->_titleLabel leadingAnchor];
  v105 = [(UIView *)v9 leadingAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v134[8] = v104;
  v103 = [(UILabel *)self->_titleLabel trailingAnchor];
  v102 = [(UIView *)v9 trailingAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v70 = self->_iconToTitleSpacingConstraint;
  v134[9] = v101;
  v134[10] = v70;
  v100 = [(UILabel *)self->_messageLabel leadingAnchor];
  v99 = [(UIView *)v9 leadingAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v134[11] = v98;
  v97 = [(UILabel *)self->_messageLabel trailingAnchor];
  v96 = [(UIView *)v9 trailingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v134[12] = v95;
  v94 = [(UILabel *)self->_messageLabel firstBaselineAnchor];
  v93 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v92 = [v94 constraintEqualToSystemSpacingBelowAnchor:v93 multiplier:1.33333333];
  v134[13] = v92;
  v91 = [(UIButton *)self->_button centerXAnchor];
  v90 = [(UIView *)v9 centerXAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v134[14] = v89;
  v87 = [(UIButton *)self->_button leadingAnchor];
  v88 = [v5 layoutMarginsGuide];
  v86 = [v88 leadingAnchor];
  v85 = [v87 constraintGreaterThanOrEqualToAnchor:v86];
  v134[15] = v85;
  v83 = [(UIButton *)self->_button trailingAnchor];
  v84 = [v5 layoutMarginsGuide];
  v82 = [v84 trailingAnchor];
  v81 = [v83 constraintLessThanOrEqualToAnchor:v82];
  v134[16] = v81;
  v71 = [(UIButton *)self->_button heightAnchor];
  v72 = [v71 constraintGreaterThanOrEqualToConstant:50.0];
  v134[17] = v72;
  v73 = [(UIButton *)self->_button bottomAnchor];
  v74 = [(UIView *)v9 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-16.0];
  v134[18] = v75;
  v134[19] = v133;
  v76 = [(UIButton *)self->_button topAnchor];
  v77 = [(UILabel *)self->_messageLabel bottomAnchor];
  v78 = [v76 constraintGreaterThanOrEqualToAnchor:v77 constant:16.0];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BRFileProviderUIExtension;
  [(BRFileProviderUIExtension *)&v15 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(BRFileProviderUIExtension *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  if (v5 == v7)
  {
    v8 = [v4 horizontalSizeClass];
    v9 = [(BRFileProviderUIExtension *)self traitCollection];
    if (v8 == [v9 horizontalSizeClass])
    {
      v10 = [v4 verticalSizeClass];
      v11 = [(BRFileProviderUIExtension *)self traitCollection];
      if (v10 == [v11 verticalSizeClass])
      {
        v12 = [v4 userInterfaceStyle];
        v13 = [(BRFileProviderUIExtension *)self traitCollection];
        v14 = [v13 userInterfaceStyle];

        if (v12 == v14)
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
  v3 = [(BRFileProviderUIExtension *)self messageLabel];
  [v3 forceDisplayIfNeeded];

  v4 = [(BRFileProviderUIExtension *)self titleLabel];
  [v4 forceDisplayIfNeeded];
}

- (void)buttonTapped
{
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Ubiquity"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
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
  v3 = [(BRFileProviderUIExtension *)self mode];
  if (v3 <= 2)
  {
    v4 = *(&off_100008428 + v3);
    v5 = +[NSBundle mainBundle];
    v2 = [v5 localizedStringForKey:v4 value:&stru_100008480 table:0];
  }

  return v2;
}

- (NSString)buttonText
{
  v2 = [(BRFileProviderUIExtension *)self mode];
  if (!v2)
  {
    v3 = @"Sign in to iCloud";
    goto LABEL_5;
  }

  if (v2 == 1)
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
  v2 = [(BRFileProviderUIExtension *)self mode];
  if (!v2)
  {
    v3 = @"Sign in to iCloud (Short)";
    goto LABEL_5;
  }

  if (v2 == 1)
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
  v7 = [v6 currentPersona];

  v47 = 0;
  v8 = [v7 userPersonaUniqueString];
  v9 = v8;
  if (v8 == v4 || [(NSString *)v8 isEqualToString:v4])
  {
    goto LABEL_9;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v46 = 0;
    v31 = [v7 copyCurrentPersonaContextWithError:&v46];
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

    v10 = [v7 br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

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
    if (v5 && ([v7 isDataSeparatedPersona] & 1) == 0)
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
  v14 = [v13 aa_primaryAppleAccount];
  v15 = v14;
  if (v14)
  {
    if ([v14 isEnabledForDataclass:kAccountDataclassUbiquity])
    {
      v45 = v10;
      v16 = BRPrimaryiCloudAccountCopyStatus();
      v17 = 0;
      v18 = [v16 objectForKey:BRAccountIsSessionLoaded];
      v19 = [v18 BOOLValue];

      if (v19)
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
          v25 = [v24 ubiquityIdentityToken];

          if (v25)
          {
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[INFO] token returned: dismiss%@", buf, 0xCu);
            }

            v28 = [(BRFileProviderUIExtension *)self extensionContext];
            [v28 completeRequest];
          }

          else
          {
            [(BRFileProviderUIExtension *)self setMode:2];
            v28 = brc_bread_crumbs();
            v42 = brc_default_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v28;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[INFO] no token returned: wait for token%@", buf, 0xCu);
            }
          }

          v21 = v44;
        }

        else
        {
LABEL_44:
          [(BRFileProviderUIExtension *)self setMode:1];
          v28 = brc_bread_crumbs();
          v39 = brc_default_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = v28;
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
  v3 = [(BRFileProviderUIExtension *)self message];
  v4 = [(BRFileProviderUIExtension *)self messageLabel];
  [v4 setText:v3];

  v7 = [(BRFileProviderUIExtension *)self buttonText];
  if (v7)
  {
    v5 = [(BRFileProviderUIExtension *)self shortButtonTitle];
    [(BRFileProviderUIExtension *)self _setButtonTitle:v7 alternativeShortTitle:v5];
  }

  v6 = [(BRFileProviderUIExtension *)self button];
  [v6 setHidden:v7 == 0];
}

- (void)_setButtonTitle:(id)a3 alternativeShortTitle:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002F94;
  v7[3] = &unk_100008330;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [UIView performWithoutAnimation:v7];
}

- (void)_updateColors_custom
{
  v6 = +[UIColor separatorColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(BRIconView *)self->_iconView layer];
  [v5 setBorderColor:v4];
}

- (void)updateContentLayoutAllowingAnimation:(BOOL)a3
{
  v3 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003234;
  v9[3] = &unk_100008358;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v6 = v5;
  if (v3)
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
  v3 = [(BRFileProviderUIExtension *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(BRFileProviderUIExtension *)self traitCollection];
  v7 = [v6 verticalSizeClass];

  v8 = v7 == 1 || IsAccessibilityCategory;
  if (v7 == 1 || IsAccessibilityCategory)
  {
    v9 = [(BRFileProviderUIExtension *)self traitCollection];
    v10 = sub_1000035D0(v9);
    v11 = [(BRFileProviderUIExtension *)self iconView];
    [v11 setIconVariant:v10];
  }

  else
  {
    v12 = [(BRFileProviderUIExtension *)self tooSmallToFitIcon];
    v13 = [(BRFileProviderUIExtension *)self traitCollection];
    v14 = sub_1000035D0(v13);
    v15 = [(BRFileProviderUIExtension *)self iconView];
    [v15 setIconVariant:v14];

    if ((v12 & 1) == 0)
    {
      v20 = [(BRFileProviderUIExtension *)self iconView];
      [v20 setHidden:0];

      v21 = [(BRFileProviderUIExtension *)self iconTopConstraint];
      [v21 setActive:1];

      v22 = [(BRFileProviderUIExtension *)self titleTopFallbackConstraint];
      [v22 setActive:0];

      v17 = 0;
      goto LABEL_7;
    }
  }

  v16 = [(BRFileProviderUIExtension *)self iconView];
  v17 = 1;
  [v16 setHidden:1];

  v18 = [(BRFileProviderUIExtension *)self iconTopConstraint];
  [v18 setActive:0];

  v19 = [(BRFileProviderUIExtension *)self titleTopFallbackConstraint];
  [v19 setActive:1];

  if (v8)
  {
LABEL_7:
    v23 = [(BRFileProviderUIExtension *)self messageLabel];
    [v23 setHidden:v17];

    v24 = [(BRFileProviderUIExtension *)self messageHeightFallbackConstraint];
    [v24 setActive:v17];
  }

  v25 = [(BRFileProviderUIExtension *)self traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  v27 = UIContentSizeCategoryCompareToCategory(v26, UIContentSizeCategoryAccessibilityExtraLarge);

  v29 = v7 == 1 && v27 == NSOrderedDescending;
  v30 = [(BRFileProviderUIExtension *)self titleLabel];
  [v30 setHidden:v29];

  v31 = [(BRFileProviderUIExtension *)self titleHeightFallbackConstraint];
  [v31 setActive:v29];
}

- (BOOL)tooSmallToFitAnything
{
  if (self->_layoutType == 1)
  {
    return 1;
  }

  v4 = [(BRFileProviderUIExtension *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;

  v8 = [(BRFileProviderUIExtension *)self view];
  [v8 bounds];
  v10 = v9;

  v11 = [(BRFileProviderUIExtension *)self button];
  [v11 systemLayoutSizeFittingSize:{v10, 0.0}];
  v2 = v12 > v7;

  return v2;
}

- (BOOL)tooSmallToFitIcon
{
  v3 = [(BRFileProviderUIExtension *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;

  v7 = [(BRFileProviderUIExtension *)self view];
  [v7 bounds];
  v9 = v8;

  v10 = [(BRFileProviderUIExtension *)self contentView];
  [v10 systemLayoutSizeFittingSize:{v9, 0.0}];
  v12 = v11;

  if ([(BRIconView *)self->_iconView isHidden])
  {
    v13 = [(BRFileProviderUIExtension *)self iconTopConstraint];
    [v13 constant];
    v15 = v12 + v14;

    v16 = [(BRFileProviderUIExtension *)self iconView];
    [v16 systemLayoutSizeFittingSize:{v9, 0.0}];
    v18 = v15 + v17;

    v19 = [(BRFileProviderUIExtension *)self iconToTitleSpacingConstraint];
    [v19 constant];
    v12 = v18 + v20;
  }

  return v12 > v6;
}

- (void)updateButtonSpacing
{
  v5 = [(BRFileProviderUIExtension *)self traitCollection];
  if ([v5 horizontalSizeClass] == 2)
  {
    v3 = -72.0;
  }

  else
  {
    v3 = -56.0;
  }

  v4 = [(BRFileProviderUIExtension *)self buttonSpacingConstraint];
  [v4 setConstant:v3];
}

- (void)updateTitleFont
{
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v3 = [v6 fontDescriptorWithSymbolicTraits:2];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [(BRFileProviderUIExtension *)self titleLabel];
  [v5 setFont:v4];
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
      v10 = [v9 traitCollection];
      [v10 displayScale];
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

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (self->_layoutType == 1)
  {
    v5 = +[UIContentUnavailableConfiguration emptyProminentConfiguration];
    v6 = [v5 updatedConfigurationForState:v4];

    if (qword_10000CB70 != -1)
    {
      sub_100004600();
    }

    v7 = byte_10000CB78;
    v8 = [v6 imageProperties];
    v9 = v8;
    v10 = 64.0;
    if (v7)
    {
      v10 = 88.0;
    }

    [v8 setMaximumSize:{v10, v10}];

    v11 = [(BRFileProviderUIExtension *)self _imageForContentConfiguration];
    [v6 setImage:v11];

    v12 = [(BRFileProviderUIExtension *)self title];
    [v6 setText:v12];

    v13 = [(BRFileProviderUIExtension *)self message];
    [v6 setSecondaryText:v13];

    v14 = +[UIButtonConfiguration borderedProminentButtonConfiguration];
    v15 = [(BRFileProviderUIExtension *)self buttonText];
    [v14 setTitle:v15];

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

    v17 = [v6 buttonProperties];
    [v17 setConfiguration:v14];
    [v17 setRole:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100003EF0;
    v31[3] = &unk_1000083A8;
    objc_copyWeak(&v32, &location);
    v18 = [UIAction actionWithHandler:v31];
    [v17 setPrimaryAction:v18];

    v19 = [(BRFileProviderUIExtension *)self traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);
    v22 = UIContentSizeCategoryCompareToCategory(v20, UIContentSizeCategoryAccessibilityExtraLarge);
    if (IsAccessibilityCategory)
    {
      v23 = v22;
      v30 = v4;
      v24 = [(BRFileProviderUIExtension *)self traitCollection];
      v25 = [v24 verticalSizeClass];

      v26 = [(BRFileProviderUIExtension *)self traitCollection];
      v27 = [v26 horizontalSizeClass];

      v28 = [(BRFileProviderUIExtension *)self interfaceOrientation]- 1 >= 2 && [(BRFileProviderUIExtension *)self interfaceOrientation]!= 0;
      if (v25 == 1)
      {
        [v6 setSecondaryText:0];
        if (v23 == NSOrderedDescending)
        {
          [v6 setText:0];
        }
      }

      v4 = v30;
      if (v27 == 1 && !v28)
      {
        v29 = [(BRFileProviderUIExtension *)self shortButtonTitle];
        [v14 setTitle:v29];
      }
    }

    [(BRFileProviderUIExtension *)self _setContentUnavailableConfiguration:v6];

    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(&location);
}

- (void)performLayoutSpecificMethod:(id)a3
{
  layoutType = self->_layoutType;
  if (layoutType == 1)
  {
    var1 = a3.var1;
  }

  else if (layoutType)
  {
    var1 = 0;
  }

  else
  {
    var1 = a3.var0;
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