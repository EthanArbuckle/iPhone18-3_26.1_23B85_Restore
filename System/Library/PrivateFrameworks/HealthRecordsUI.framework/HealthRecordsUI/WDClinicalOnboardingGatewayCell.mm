@interface WDClinicalOnboardingGatewayCell
- (WDClinicalOnboardingGatewayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_contentViewMarginsGuide;
- (void)_constrainStackViewContainerWithinContentView;
- (void)_createDetailLabel;
- (void)_createDownloadAvailableView;
- (void)_createLogoView;
- (void)_createOuterSpecContainerView;
- (void)_createSharingAvailableView;
- (void)_createSubtitleLabel;
- (void)_createTapToConnectButton;
- (void)_createTitleLabel;
- (void)_createVerticalSpecContainerView;
- (void)_didTapConnectButton:(id)button;
- (void)_positionTapToConnectButton;
- (void)_setAccessibilityIdentifiers;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)category;
- (void)_updateForContentSizeCategory:(id)category;
- (void)_updateLabelVisibility;
- (void)configureWithGateway:(id)gateway dataProvider:(id)provider connected:(BOOL)connected;
- (void)prepareForReuse;
- (void)setUpConstraints;
- (void)setupSubviews;
- (void)tintColorDidChange;
@end

@implementation WDClinicalOnboardingGatewayCell

- (WDClinicalOnboardingGatewayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingGatewayCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDMedicalRecordGroupableCell *)v4 setIntendedPlacement:2];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v4 prepareForReuse];
  [(WDClinicalOnboardingGatewayCell *)self configureWithGateway:0 dataProvider:0 connected:0];
  logoView = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [logoView prepareForReuse];

  [(WDClinicalOnboardingGatewayCell *)self setCurrentGateway:0];
  [(WDClinicalOnboardingGatewayCell *)self setCurrentDataProvider:0];
}

- (void)setupSubviews
{
  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v4 setupSubviews];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [pillBackgroundView setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

  [(WDClinicalOnboardingGatewayCell *)self _createLogoView];
  [(WDClinicalOnboardingGatewayCell *)self _createTitleLabel];
  [(WDClinicalOnboardingGatewayCell *)self _createSubtitleLabel];
  [(WDClinicalOnboardingGatewayCell *)self _createDetailLabel];
  [(WDClinicalOnboardingGatewayCell *)self _createDownloadAvailableView];
  [(WDClinicalOnboardingGatewayCell *)self _createSharingAvailableView];
  [(WDClinicalOnboardingGatewayCell *)self _createVerticalSpecContainerView];
  [(WDClinicalOnboardingGatewayCell *)self _createTapToConnectButton];
  [(WDClinicalOnboardingGatewayCell *)self _createOuterSpecContainerView];
}

- (void)_createLogoView
{
  v3 = [WDBrandLogoView alloc];
  v4 = [(WDBrandLogoView *)v3 initWithFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  logoView = self->_logoView;
  self->_logoView = v4;

  logoView = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [logoView setTranslatesAutoresizingMaskIntoConstraints:0];

  logoView2 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [logoView2 setContentMode:1];

  [MEMORY[0x1E69DCAE0] mediumLogoViewDimension];
  v9 = v8;
  logoView3 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [logoView3 setSize:v9];
}

- (void)_createTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  titleLabel = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel2 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [titleLabel2 setTextColor:labelColor];

  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
  titleLabel3 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [titleLabel3 setFont:v10];
}

- (void)_createSubtitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v4;

  subtitleLabel = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  subtitleLabel2 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:secondaryLabelColor];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  subtitleLabel3 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [subtitleLabel3 setFont:v10];
}

- (void)_createDetailLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v4;

  detailLabel = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel2 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel2 setNumberOfLines:0];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  detailLabel3 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel3 setTextColor:labelColor];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  detailLabel4 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel4 setFont:v11];
}

- (void)_createDownloadAvailableView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F050], v5, v6, v7}];
  featureDownloadTitleLabel = self->_featureDownloadTitleLabel;
  self->_featureDownloadTitleLabel = v8;

  [(UILabel *)self->_featureDownloadTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureDownloadTitleLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_featureDownloadTitleLabel setTextColor:labelColor];

  v11 = *MEMORY[0x1E69DDD80];
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024];
  [(UILabel *)self->_featureDownloadTitleLabel setFont:v12];

  v13 = MEMORY[0x1E696AAB0];
  v15 = HROsloLocalizedString(@"GATEWAY_FEATURE_DOWNLOAD_TITLE", v14);
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  v19 = [v13 attributedStringText:v15 textColor:labelColor2 symbol:v17 symbolColor:labelColor3 useLargeSpacing:0];
  [(UILabel *)self->_featureDownloadTitleLabel setAttributedText:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  featureDownloadTextLabel = self->_featureDownloadTextLabel;
  self->_featureDownloadTextLabel = v20;

  [(UILabel *)self->_featureDownloadTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureDownloadTextLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_featureDownloadTextLabel setTextColor:secondaryLabelColor];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  [(UILabel *)self->_featureDownloadTextLabel setFont:v23];

  v24 = objc_alloc(MEMORY[0x1E69A4128]);
  v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  featureDownloadView = self->_featureDownloadView;
  self->_featureDownloadView = v25;

  [(HKBorderLineView *)self->_featureDownloadView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(HKBorderLineView *)self->_featureDownloadView setBackgroundColor:clearColor];

  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKBorderLineView *)self->_featureDownloadView setBorderLineColor:secondaryLabelColor2];

  [(HKBorderLineView *)self->_featureDownloadView addSubview:self->_featureDownloadTitleLabel];
  [(HKBorderLineView *)self->_featureDownloadView addSubview:self->_featureDownloadTextLabel];
  LODWORD(v29) = 1131610112;
  [(UILabel *)self->_featureDownloadTitleLabel setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(UILabel *)self->_featureDownloadTitleLabel setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1131806720;
  [(UILabel *)self->_featureDownloadTextLabel setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148829696;
  [(UILabel *)self->_featureDownloadTextLabel setContentCompressionResistancePriority:1 forAxis:v32];
  topAnchor = [(UILabel *)self->_featureDownloadTitleLabel topAnchor];
  topAnchor2 = [(HKBorderLineView *)self->_featureDownloadView topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v35 setActive:1];

  topAnchor3 = [(UILabel *)self->_featureDownloadTextLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_featureDownloadTitleLabel bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  [v38 setActive:1];

  bottomAnchor2 = [(UILabel *)self->_featureDownloadTextLabel bottomAnchor];
  bottomAnchor3 = [(HKBorderLineView *)self->_featureDownloadView bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  featureDownloadBottomConstraint = self->_featureDownloadBottomConstraint;
  self->_featureDownloadBottomConstraint = v41;

  [(NSLayoutConstraint *)self->_featureDownloadBottomConstraint setActive:1];
  leadingAnchor = [(UILabel *)self->_featureDownloadTitleLabel leadingAnchor];
  leadingAnchor2 = [(HKBorderLineView *)self->_featureDownloadView leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v45 setActive:1];

  trailingAnchor = [(UILabel *)self->_featureDownloadTitleLabel trailingAnchor];
  trailingAnchor2 = [(HKBorderLineView *)self->_featureDownloadView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v48 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_featureDownloadTextLabel leadingAnchor];
  leadingAnchor4 = [(HKBorderLineView *)self->_featureDownloadView leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v51 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_featureDownloadTextLabel trailingAnchor];
  trailingAnchor4 = [(HKBorderLineView *)self->_featureDownloadView trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v53 setActive:1];
}

- (void)_createSharingAvailableView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F050], v5, v6, v7}];
  featureSharingTitleLabel = self->_featureSharingTitleLabel;
  self->_featureSharingTitleLabel = v8;

  [(UILabel *)self->_featureSharingTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureSharingTitleLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_featureSharingTitleLabel setTextColor:labelColor];

  v11 = *MEMORY[0x1E69DDD80];
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  [(UILabel *)self->_featureSharingTitleLabel setFont:v12];

  v13 = MEMORY[0x1E696AAB0];
  v15 = HROsloLocalizedString(@"GATEWAY_FEATURE_SHARING_TITLE", v14);
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle"];
  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  v19 = [v13 attributedStringText:v15 textColor:labelColor2 symbol:v17 symbolColor:labelColor3 useLargeSpacing:0];
  [(UILabel *)self->_featureSharingTitleLabel setAttributedText:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  featureSharingTextLabel = self->_featureSharingTextLabel;
  self->_featureSharingTextLabel = v20;

  [(UILabel *)self->_featureSharingTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureSharingTextLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_featureSharingTextLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_featureSharingTextLabel setTextColor:secondaryLabelColor];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  [(UILabel *)self->_featureSharingTextLabel setFont:v23];

  v24 = objc_alloc(MEMORY[0x1E69A4128]);
  v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  featureSharingView = self->_featureSharingView;
  self->_featureSharingView = v25;

  [(HKBorderLineView *)self->_featureSharingView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(HKBorderLineView *)self->_featureSharingView setBackgroundColor:clearColor];

  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKBorderLineView *)self->_featureSharingView setBorderLineColor:secondaryLabelColor2];

  [(HKBorderLineView *)self->_featureSharingView addSubview:self->_featureSharingTitleLabel];
  [(HKBorderLineView *)self->_featureSharingView addSubview:self->_featureSharingTextLabel];
  LODWORD(v29) = 1131675648;
  [(UILabel *)self->_featureSharingTitleLabel setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(UILabel *)self->_featureSharingTitleLabel setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1131741184;
  [(UILabel *)self->_featureSharingTextLabel setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148829696;
  [(UILabel *)self->_featureSharingTextLabel setContentCompressionResistancePriority:1 forAxis:v32];
  topAnchor = [(UILabel *)self->_featureSharingTitleLabel topAnchor];
  topAnchor2 = [(HKBorderLineView *)self->_featureSharingView topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v35 setActive:1];

  topAnchor3 = [(UILabel *)self->_featureSharingTextLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_featureSharingTitleLabel bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  [v38 setActive:1];

  bottomAnchor2 = [(UILabel *)self->_featureSharingTextLabel bottomAnchor];
  bottomAnchor3 = [(HKBorderLineView *)self->_featureSharingView bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  featureSharingBottomConstraint = self->_featureSharingBottomConstraint;
  self->_featureSharingBottomConstraint = v41;

  [(NSLayoutConstraint *)self->_featureSharingBottomConstraint setActive:1];
  leadingAnchor = [(UILabel *)self->_featureSharingTitleLabel leadingAnchor];
  leadingAnchor2 = [(HKBorderLineView *)self->_featureSharingView leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v45 setActive:1];

  trailingAnchor = [(UILabel *)self->_featureSharingTitleLabel trailingAnchor];
  trailingAnchor2 = [(HKBorderLineView *)self->_featureSharingView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v48 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_featureSharingTextLabel leadingAnchor];
  leadingAnchor4 = [(HKBorderLineView *)self->_featureSharingView leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v51 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_featureSharingTextLabel trailingAnchor];
  trailingAnchor4 = [(HKBorderLineView *)self->_featureSharingView trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v53 setActive:1];
}

- (void)_createTapToConnectButton
{
  tintedButtonConfiguration = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
  [tintedButtonConfiguration setButtonSize:1];
  v4 = HRLocalizedString(@"TAP_TO_CONNECT");
  [tintedButtonConfiguration setTitle:v4];

  v5 = MEMORY[0x1E69DB878];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v6 pointSize];
  v7 = [v5 systemFontOfSize:? weight:?];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__WDClinicalOnboardingGatewayCell__createTapToConnectButton__block_invoke;
  v14[3] = &unk_1E83DD8E8;
  v15 = v7;
  v8 = v7;
  [tintedButtonConfiguration setTitleTextAttributesTransformer:v14];
  [tintedButtonConfiguration setDefaultContentInsets];
  v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
  tapToConnectButton = self->_tapToConnectButton;
  self->_tapToConnectButton = v9;

  [(UIButton *)self->_tapToConnectButton setTranslatesAutoresizingMaskIntoConstraints:0];
  -[UIButton setEnabled:](self->_tapToConnectButton, "setEnabled:", [MEMORY[0x1E696C608] isRunningStoreDemoMode] ^ 1);
  [(UIButton *)self->_tapToConnectButton setAccessibilityIdentifier:@"UIA.Health.ClinicalOnboarding.Gateway.ConnectAccount"];
  [(UIButton *)self->_tapToConnectButton addTarget:self action:sel__didTapConnectButton_ forControlEvents:64];
  LODWORD(v11) = 1132068864;
  [(UIButton *)self->_tapToConnectButton setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UIButton *)self->_tapToConnectButton setContentCompressionResistancePriority:1 forAxis:v12];
  contentView = [(WDClinicalOnboardingGatewayCell *)self contentView];
  [contentView addSubview:self->_tapToConnectButton];
}

id __60__WDClinicalOnboardingGatewayCell__createTapToConnectButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];
  v4 = [v3 copy];

  return v4;
}

- (void)_createVerticalSpecContainerView
{
  v11[5] = *MEMORY[0x1E69E9840];
  subtitleLabel = self->_subtitleLabel;
  v11[0] = self->_titleLabel;
  v11[1] = subtitleLabel;
  featureDownloadView = self->_featureDownloadView;
  v11[2] = self->_detailLabel;
  v11[3] = featureDownloadView;
  v11[4] = self->_featureSharingView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v6 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v5];
  verticalSpecContainerView = self->_verticalSpecContainerView;
  self->_verticalSpecContainerView = v6;

  verticalSpecContainerView = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [verticalSpecContainerView setAxis:1];

  verticalSpecContainerView2 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [verticalSpecContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  verticalSpecContainerView3 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [verticalSpecContainerView3 setBaselineRelativeArrangement:0];

  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_subtitleLabel afterView:12.0];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_detailLabel afterView:20.0];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_featureDownloadView afterView:12.0];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_featureSharingView afterView:12.0];
}

- (void)_createOuterSpecContainerView
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  verticalSpecContainerView = self->_verticalSpecContainerView;
  v9[0] = self->_logoView;
  v9[1] = verticalSpecContainerView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v3 initWithArrangedSubviews:v5];
  outerSpecContainerView = self->_outerSpecContainerView;
  self->_outerSpecContainerView = v6;

  [(UIStackView *)self->_outerSpecContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_outerSpecContainerView setAxis:0];
  [(UIStackView *)self->_outerSpecContainerView setAlignment:1];
  [(UIStackView *)self->_outerSpecContainerView setSpacing:12.0];
  contentView = [(WDClinicalOnboardingGatewayCell *)self contentView];
  [contentView addSubview:self->_outerSpecContainerView];
}

- (void)setUpConstraints
{
  v3.receiver = self;
  v3.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v3 setUpConstraints];
  [(WDClinicalOnboardingGatewayCell *)self _constrainStackViewContainerWithinContentView];
  [(WDClinicalOnboardingGatewayCell *)self _positionTapToConnectButton];
}

- (void)_constrainStackViewContainerWithinContentView
{
  _contentViewMarginsGuide = [(WDClinicalOnboardingGatewayCell *)self _contentViewMarginsGuide];
  topAnchor = [_contentViewMarginsGuide topAnchor];
  topAnchor2 = [(UIStackView *)self->_outerSpecContainerView topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v5 setActive:1];

  trailingAnchor = [_contentViewMarginsGuide trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_outerSpecContainerView trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v8 setActive:1];

  leadingAnchor = [_contentViewMarginsGuide leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_outerSpecContainerView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v11 setActive:1];
}

- (id)_contentViewMarginsGuide
{
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  layoutMarginsGuide = [pillBackgroundView layoutMarginsGuide];

  return layoutMarginsGuide;
}

- (void)_positionTapToConnectButton
{
  leadingAnchor = [(UIButton *)self->_tapToConnectButton leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_verticalSpecContainerView leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 setActive:1];

  topAnchor = [(UIButton *)self->_tapToConnectButton topAnchor];
  bottomAnchor = [(UIStackView *)self->_verticalSpecContainerView bottomAnchor];
  v8 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v8 setActive:1];

  _contentViewMarginsGuide = [(WDClinicalOnboardingGatewayCell *)self _contentViewMarginsGuide];
  bottomAnchor2 = [(UIButton *)self->_tapToConnectButton bottomAnchor];
  bottomAnchor3 = [_contentViewMarginsGuide bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v11 setActive:1];

  heightAnchor = [(UIButton *)self->_tapToConnectButton heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:32.0];
  tapToConnectButtonHeightConstraint = self->_tapToConnectButtonHeightConstraint;
  self->_tapToConnectButtonHeightConstraint = v13;

  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setActive:1];
}

- (void)configureWithGateway:(id)gateway dataProvider:(id)provider connected:(BOOL)connected
{
  connectedCopy = connected;
  gatewayCopy = gateway;
  providerCopy = provider;
  [(WDClinicalOnboardingGatewayCell *)self setCurrentGateway:gatewayCopy];
  [(WDClinicalOnboardingGatewayCell *)self setCurrentDataProvider:providerCopy];
  if (gatewayCopy && providerCopy)
  {
    logoView = [(WDClinicalOnboardingGatewayCell *)self logoView];
    [logoView fetchBrandable:gatewayCopy dataProvider:providerCopy];
  }

  title = [gatewayCopy title];
  titleLabel = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [titleLabel setText:title];

  subtitle = [gatewayCopy subtitle];
  subtitleLabel = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  displayableDescription = [gatewayCopy displayableDescription];
  detailLabel = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel setText:displayableDescription];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = HROsloLocalizedString(@"GATEWAY_%@_FEATURE_DOWNLOAD_TEXT", v17);
  title2 = [gatewayCopy title];
  v20 = [v16 initWithFormat:v18, title2];
  [(UILabel *)self->_featureDownloadTextLabel setText:v20];

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = HROsloLocalizedString(@"GATEWAY_%@_FEATURE_SHARING_TEXT", v22);
  title3 = [gatewayCopy title];
  v25 = [v21 initWithFormat:v23, title3];
  [(UILabel *)self->_featureSharingTextLabel setText:v25];

  LODWORD(v25) = [gatewayCopy supportsSharingToProviderObjC];
  featureSharingView = [(WDClinicalOnboardingGatewayCell *)self featureSharingView];
  [featureSharingView setHidden:v25 ^ 1];

  tapToConnectButton = [(WDClinicalOnboardingGatewayCell *)self tapToConnectButton];
  [tapToConnectButton setHidden:connectedCopy];

  [(WDClinicalOnboardingGatewayCell *)self _updateLabelVisibility];
  [(WDMedicalRecordGroupableCell *)self _updateForCurrentSizeCategory];
  [(WDClinicalOnboardingGatewayCell *)self _setAccessibilityIdentifiers];
}

- (void)_updateLabelVisibility
{
  titleLabel = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length] == 0;
  titleLabel2 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [titleLabel2 setHidden:v5];

  subtitleLabel = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  text2 = [subtitleLabel text];
  v9 = [text2 length] == 0;
  subtitleLabel2 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [subtitleLabel2 setHidden:v9];

  detailLabel = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  text3 = [detailLabel text];
  v13 = [text3 length] == 0;
  detailLabel2 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [detailLabel2 setHidden:v13];

  featureDownloadView = [(WDClinicalOnboardingGatewayCell *)self featureDownloadView];
  [featureDownloadView setEdges:0];

  featureSharingView = [(WDClinicalOnboardingGatewayCell *)self featureSharingView];
  [featureSharingView setEdges:0];

  verticalSpecContainerView = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [verticalSpecContainerView setNeedsUpdateConstraints];
}

- (void)_updateForContentSizeCategory:(id)category
{
  v16.receiver = self;
  v16.super_class = WDClinicalOnboardingGatewayCell;
  categoryCopy = category;
  [(WDMedicalRecordGroupableCell *)&v16 _updateForContentSizeCategory:categoryCopy];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:{categoryCopy, v16.receiver, v16.super_class}];

  v6 = objc_alloc(MEMORY[0x1E69DCA40]);
  v7 = [v6 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 scaledValueForValue:v5 compatibleWithTraitCollection:20.0];
  v9 = v8;
  [v7 scaledValueForValue:v5 compatibleWithTraitCollection:12.0];
  v11 = v10;
  isHidden = [(UIButton *)self->_tapToConnectButton isHidden];
  [(UIStackView *)self->_outerSpecContainerView setSpacing:v11];
  [(UIStackView *)self->_verticalSpecContainerView setSpacing:v11];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_titleLabel afterView:2.0];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_subtitleLabel afterView:v11];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_detailLabel afterView:v9];
  if (isHidden)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = -v11;
  }

  [(NSLayoutConstraint *)self->_featureDownloadBottomConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_featureSharingBottomConstraint setConstant:v13];
  [v7 scaledValueForValue:v5 compatibleWithTraitCollection:32.0];
  v15 = fmax(v14, 32.0);
  if (isHidden)
  {
    v15 = 0.0;
  }

  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setConstant:v15];
  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setActive:isHidden ^ 1u];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)category
{
  categoryCopy = category;
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v7 _updateBasedOnAccessibilityCategory:?];
  if (categoryCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  if (categoryCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v5];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:v6];
  [(UIStackView *)self->_outerSpecContainerView setAxis:categoryCopy];
}

- (void)_setAccessibilityIdentifiers
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = HKUIJoinStringsForAutomationIdentifier();
  v24[0] = v3;
  v24[1] = @"ProviderName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v5 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:v5];

  v23[0] = v3;
  v23[1] = @"PatientPortal";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v7 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:v7];

  v22[0] = v3;
  v22[1] = @"GetSecureAccess";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v9 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:v9];

  v21[0] = v3;
  v21[1] = @"DownloadClinicalRecords";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_featureDownloadTitleLabel setAccessibilityIdentifier:v11];

  v20[0] = v3;
  v20[1] = @"AnyRecordsCanBeAdded";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_featureDownloadTextLabel setAccessibilityIdentifier:v13];

  v19[0] = v3;
  v19[1] = @"SharingHealthData";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_featureSharingTitleLabel setAccessibilityIdentifier:v15];

  v18[0] = v3;
  v18[1] = @"YouCanChooseToSHare";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_featureSharingTextLabel setAccessibilityIdentifier:v17];
}

- (void)_didTapConnectButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy)
  {
    v7 = selfCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v7 superview];

      v7 = superview;
      if (!superview)
      {
        goto LABEL_5;
      }
    }

    v10 = v7;
    delegate = [v10 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [v10 delegate];
      v14 = [delegate2 conformsToProtocol:&unk_1F4D70F58];

      if (v14)
      {
        delegate3 = [v10 delegate];
        currentGateway = [(WDClinicalOnboardingGatewayCell *)v6 currentGateway];
        currentDataProvider = [(WDClinicalOnboardingGatewayCell *)v6 currentDataProvider];
        [delegate3 clinicalOnboardingGatewayCell:v6 didTapConnectWithGateway:currentGateway dataProvider:currentDataProvider];
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [WDClinicalOnboardingGatewayCell _didTapConnectButton:v18];
      }
    }
  }

  else
  {
LABEL_5:
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [WDClinicalOnboardingGatewayCell _didTapConnectButton:v9];
    }
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingGatewayCell;
  [(WDClinicalOnboardingGatewayCell *)&v5 tintColorDidChange];
  tapToConnectButton = [(WDClinicalOnboardingGatewayCell *)self tapToConnectButton];
  tintColor = [(WDClinicalOnboardingGatewayCell *)self tintColor];
  [tapToConnectButton setTitleColor:tintColor forState:0];
}

- (void)_didTapConnectButton:(void *)a1 .cold.1(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_9(&dword_1D101F000, v4, v5, "%{public}@ table view delegate does not respond to clinicalOnboardingGatewayCell:didTapConnectWithGateway:dataProvider:", v6, v7, v8, v9, 2u);
}

- (void)_didTapConnectButton:(void *)a1 .cold.2(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_9(&dword_1D101F000, v4, v5, "%{public}@ unable to find containing table view", v6, v7, v8, v9, 2u);
}

@end