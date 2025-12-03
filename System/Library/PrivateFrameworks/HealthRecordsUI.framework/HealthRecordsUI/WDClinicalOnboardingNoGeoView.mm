@interface WDClinicalOnboardingNoGeoView
- (WDClinicalOnboardingNoGeoView)init;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_tappedLocationServices:(id)services;
- (void)_updateForCurrentSizeCategory;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDClinicalOnboardingNoGeoView

- (WDClinicalOnboardingNoGeoView)init
{
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingNoGeoView;
  v2 = [(WDClinicalOnboardingNoGeoView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WDClinicalOnboardingNoGeoView *)v2 _setupSubviews];
    [(WDClinicalOnboardingNoGeoView *)v3 _setupConstraints];
  }

  return v3;
}

- (void)_setupSubviews
{
  v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WDClinicalOnboardingNoGeoView *)self addSubview:v33];
  [(WDClinicalOnboardingNoGeoView *)self setContainerView:v33];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDClinicalOnboardingNoGeoView *)self setTitleLabel:v3];

  titleLabel = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v5 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_LOCATION_SERVICES_OFF_TITLE");
  titleLabel2 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel2 setText:v5];

  titleLabel3 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel3 setTextAlignment:1];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel4 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel4 setTextColor:labelColor];

  titleLabel5 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [v33 addSubview:titleLabel6];

  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDClinicalOnboardingNoGeoView *)self setSubtitleLabel:v12];

  subtitleLabel = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:0];

  v14 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_LOCATION_SERVICES_OFF_SUBTITLE");
  subtitleLabel2 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel2 setText:v14];

  subtitleLabel3 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel3 setTextAlignment:1];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  subtitleLabel4 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel4 setTextColor:systemGrayColor];

  subtitleLabel5 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel6 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [v33 addSubview:subtitleLabel6];

  v21 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [(WDClinicalOnboardingNoGeoView *)self setLocationServicesButton:v21];

  locationServicesButton = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  titleLabel7 = [locationServicesButton titleLabel];
  [titleLabel7 setNumberOfLines:0];

  locationServicesButton2 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  titleLabel8 = [locationServicesButton2 titleLabel];
  [titleLabel8 setTextAlignment:1];

  locationServicesButton3 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  [locationServicesButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  locationServicesButton4 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  v28 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_LOCATION_SERVICES_SETTINGS_TITLE");
  [locationServicesButton4 setTitle:v28 forState:0];

  locationServicesButton5 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [locationServicesButton5 setTitleColor:systemBlueColor forState:0];

  locationServicesButton6 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  [locationServicesButton6 addTarget:self action:sel__tappedLocationServices_ forControlEvents:64];

  locationServicesButton7 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  [v33 addSubview:locationServicesButton7];
}

- (void)_setupConstraints
{
  safeAreaLayoutGuide = [(WDClinicalOnboardingNoGeoView *)self safeAreaLayoutGuide];
  topAnchor = [(UIView *)self->_containerView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v5 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [v5 setActive:1];

  bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v8 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  [v8 setActive:1];

  leadingAnchor = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v11 = *MEMORY[0x1E69A4090];
  v12 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:*MEMORY[0x1E69A4090]];
  [v12 setActive:1];

  trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v11];
  [v15 setActive:1];

  centerXAnchor = [(UIView *)self->_containerView centerXAnchor];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];

  centerYAnchor = [(UIView *)self->_containerView centerYAnchor];
  centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(WDClinicalOnboardingNoGeoView *)self setContainerCenterYConstraint:v21];

  containerCenterYConstraint = [(WDClinicalOnboardingNoGeoView *)self containerCenterYConstraint];
  [containerCenterYConstraint setActive:1];

  titleLabel = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_containerView leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v26 setActive:1];

  titleLabel2 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_containerView trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v30 setActive:1];

  titleLabel3 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  topAnchor3 = [titleLabel3 topAnchor];
  topAnchor4 = [(UIView *)self->_containerView topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v34 setActive:1];

  subtitleLabel = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  leadingAnchor5 = [subtitleLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_containerView leadingAnchor];
  v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v38 setActive:1];

  subtitleLabel2 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  trailingAnchor5 = [subtitleLabel2 trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_containerView trailingAnchor];
  v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v42 setActive:1];

  subtitleLabel3 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  firstBaselineAnchor = [subtitleLabel3 firstBaselineAnchor];
  titleLabel4 = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  v47 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
  [(WDClinicalOnboardingNoGeoView *)self setSubtitleBaselineConstraint:v47];

  subtitleBaselineConstraint = [(WDClinicalOnboardingNoGeoView *)self subtitleBaselineConstraint];
  [subtitleBaselineConstraint setActive:1];

  locationServicesButton = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  leadingAnchor7 = [locationServicesButton leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_containerView leadingAnchor];
  v52 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v52 setActive:1];

  locationServicesButton2 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  trailingAnchor7 = [locationServicesButton2 trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_containerView trailingAnchor];
  v56 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v56 setActive:1];

  locationServicesButton3 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  bottomAnchor3 = [locationServicesButton3 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v60 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v60 setActive:1];

  locationServicesButton4 = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  titleLabel5 = [locationServicesButton4 titleLabel];
  firstBaselineAnchor2 = [titleLabel5 firstBaselineAnchor];
  subtitleLabel4 = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  lastBaselineAnchor2 = [subtitleLabel4 lastBaselineAnchor];
  v66 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor2];
  [(WDClinicalOnboardingNoGeoView *)self setLocationServicesButtonBaselineConstraint:v66];

  locationServicesButtonBaselineConstraint = [(WDClinicalOnboardingNoGeoView *)self locationServicesButtonBaselineConstraint];
  [locationServicesButtonBaselineConstraint setActive:1];

  [(WDClinicalOnboardingNoGeoView *)self _updateForCurrentSizeCategory];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDClinicalOnboardingNoGeoView;
  [(WDClinicalOnboardingNoGeoView *)&v6 layoutSubviews];
  [(WDClinicalOnboardingNoGeoView *)self bounds];
  v4 = -(v3 * 0.5 + v3 * -0.45);
  containerCenterYConstraint = [(WDClinicalOnboardingNoGeoView *)self containerCenterYConstraint];
  [containerCenterYConstraint setConstant:v4];
}

- (void)_tappedLocationServices:(id)services
{
  internalPrivacySettingsURLString = [MEMORY[0x1E69A2D68] internalPrivacySettingsURLString];
  v6 = [internalPrivacySettingsURLString stringByAppendingString:@"/LOCATION/com.apple.Health"];

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  [defaultWorkspace openSensitiveURL:v5 withOptions:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingNoGeoView;
  [(WDClinicalOnboardingNoGeoView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDClinicalOnboardingNoGeoView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDClinicalOnboardingNoGeoView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)_updateForCurrentSizeCategory
{
  v3 = *MEMORY[0x1E69DDC50];
  v4 = *MEMORY[0x1E69DDDC0];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] variant:1280 maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  titleLabel = [(WDClinicalOnboardingNoGeoView *)self titleLabel];
  [titleLabel setFont:v5];

  v7 = *MEMORY[0x1E69DDD80];
  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:0 maximumContentSizeCategory:v3];
  subtitleLabel = [(WDClinicalOnboardingNoGeoView *)self subtitleLabel];
  [subtitleLabel setFont:v8];

  v20 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v4 variant:256 maximumContentSizeCategory:v3];
  [v20 _scaledValueForValue:26.0];
  v11 = v10;
  subtitleBaselineConstraint = [(WDClinicalOnboardingNoGeoView *)self subtitleBaselineConstraint];
  [subtitleBaselineConstraint setConstant:v11];

  v13 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:0 maximumContentSizeCategory:v3];
  locationServicesButton = [(WDClinicalOnboardingNoGeoView *)self locationServicesButton];
  titleLabel2 = [locationServicesButton titleLabel];
  [titleLabel2 setFont:v13];

  v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v7 variant:0 maximumContentSizeCategory:v3];
  [v16 _scaledValueForValue:32.0];
  v18 = v17;
  locationServicesButtonBaselineConstraint = [(WDClinicalOnboardingNoGeoView *)self locationServicesButtonBaselineConstraint];
  [locationServicesButtonBaselineConstraint setConstant:v18];
}

@end