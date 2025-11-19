@interface WDClinicalOnboardingGatewayCell
- (WDClinicalOnboardingGatewayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
- (void)_didTapConnectButton:(id)a3;
- (void)_positionTapToConnectButton;
- (void)_setAccessibilityIdentifiers;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3;
- (void)_updateForContentSizeCategory:(id)a3;
- (void)_updateLabelVisibility;
- (void)configureWithGateway:(id)a3 dataProvider:(id)a4 connected:(BOOL)a5;
- (void)prepareForReuse;
- (void)setUpConstraints;
- (void)setupSubviews;
- (void)tintColorDidChange;
@end

@implementation WDClinicalOnboardingGatewayCell

- (WDClinicalOnboardingGatewayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingGatewayCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [v3 prepareForReuse];

  [(WDClinicalOnboardingGatewayCell *)self setCurrentGateway:0];
  [(WDClinicalOnboardingGatewayCell *)self setCurrentDataProvider:0];
}

- (void)setupSubviews
{
  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v4 setupSubviews];
  v3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v3 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

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

  v6 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [v7 setContentMode:1];

  [MEMORY[0x1E69DCAE0] mediumLogoViewDimension];
  v9 = v8;
  v10 = [(WDClinicalOnboardingGatewayCell *)self logoView];
  [v10 setSize:v9];
}

- (void)_createTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [v8 setTextColor:v7];

  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
  v9 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [v9 setFont:v10];
}

- (void)_createSubtitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v4;

  v6 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [v8 setTextColor:v7];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v9 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [v9 setFont:v10];
}

- (void)_createDetailLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v4;

  v6 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v7 setNumberOfLines:0];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v9 setTextColor:v8];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v10 setFont:v11];
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
  v10 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_featureDownloadTitleLabel setTextColor:v10];

  v11 = *MEMORY[0x1E69DDD80];
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024];
  [(UILabel *)self->_featureDownloadTitleLabel setFont:v12];

  v13 = MEMORY[0x1E696AAB0];
  v15 = HROsloLocalizedString(@"GATEWAY_FEATURE_DOWNLOAD_TITLE", v14);
  v16 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
  v18 = [MEMORY[0x1E69DC888] labelColor];
  v19 = [v13 attributedStringText:v15 textColor:v16 symbol:v17 symbolColor:v18 useLargeSpacing:0];
  [(UILabel *)self->_featureDownloadTitleLabel setAttributedText:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  featureDownloadTextLabel = self->_featureDownloadTextLabel;
  self->_featureDownloadTextLabel = v20;

  [(UILabel *)self->_featureDownloadTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureDownloadTextLabel setNumberOfLines:0];
  v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_featureDownloadTextLabel setTextColor:v22];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  [(UILabel *)self->_featureDownloadTextLabel setFont:v23];

  v24 = objc_alloc(MEMORY[0x1E69A4128]);
  v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  featureDownloadView = self->_featureDownloadView;
  self->_featureDownloadView = v25;

  [(HKBorderLineView *)self->_featureDownloadView setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [MEMORY[0x1E69DC888] clearColor];
  [(HKBorderLineView *)self->_featureDownloadView setBackgroundColor:v27];

  v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKBorderLineView *)self->_featureDownloadView setBorderLineColor:v28];

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
  v33 = [(UILabel *)self->_featureDownloadTitleLabel topAnchor];
  v34 = [(HKBorderLineView *)self->_featureDownloadView topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [(UILabel *)self->_featureDownloadTextLabel topAnchor];
  v37 = [(UILabel *)self->_featureDownloadTitleLabel bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:2.0];
  [v38 setActive:1];

  v39 = [(UILabel *)self->_featureDownloadTextLabel bottomAnchor];
  v40 = [(HKBorderLineView *)self->_featureDownloadView bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  featureDownloadBottomConstraint = self->_featureDownloadBottomConstraint;
  self->_featureDownloadBottomConstraint = v41;

  [(NSLayoutConstraint *)self->_featureDownloadBottomConstraint setActive:1];
  v43 = [(UILabel *)self->_featureDownloadTitleLabel leadingAnchor];
  v44 = [(HKBorderLineView *)self->_featureDownloadView leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(UILabel *)self->_featureDownloadTitleLabel trailingAnchor];
  v47 = [(HKBorderLineView *)self->_featureDownloadView trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [(UILabel *)self->_featureDownloadTextLabel leadingAnchor];
  v50 = [(HKBorderLineView *)self->_featureDownloadView leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v51 setActive:1];

  v54 = [(UILabel *)self->_featureDownloadTextLabel trailingAnchor];
  v52 = [(HKBorderLineView *)self->_featureDownloadView trailingAnchor];
  v53 = [v54 constraintEqualToAnchor:v52];
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
  v10 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_featureSharingTitleLabel setTextColor:v10];

  v11 = *MEMORY[0x1E69DDD80];
  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  [(UILabel *)self->_featureSharingTitleLabel setFont:v12];

  v13 = MEMORY[0x1E696AAB0];
  v15 = HROsloLocalizedString(@"GATEWAY_FEATURE_SHARING_TITLE", v14);
  v16 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle"];
  v18 = [MEMORY[0x1E69DC888] labelColor];
  v19 = [v13 attributedStringText:v15 textColor:v16 symbol:v17 symbolColor:v18 useLargeSpacing:0];
  [(UILabel *)self->_featureSharingTitleLabel setAttributedText:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  featureSharingTextLabel = self->_featureSharingTextLabel;
  self->_featureSharingTextLabel = v20;

  [(UILabel *)self->_featureSharingTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_featureSharingTextLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_featureSharingTextLabel setNumberOfLines:0];
  v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_featureSharingTextLabel setTextColor:v22];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  [(UILabel *)self->_featureSharingTextLabel setFont:v23];

  v24 = objc_alloc(MEMORY[0x1E69A4128]);
  v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  featureSharingView = self->_featureSharingView;
  self->_featureSharingView = v25;

  [(HKBorderLineView *)self->_featureSharingView setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [MEMORY[0x1E69DC888] clearColor];
  [(HKBorderLineView *)self->_featureSharingView setBackgroundColor:v27];

  v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKBorderLineView *)self->_featureSharingView setBorderLineColor:v28];

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
  v33 = [(UILabel *)self->_featureSharingTitleLabel topAnchor];
  v34 = [(HKBorderLineView *)self->_featureSharingView topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [(UILabel *)self->_featureSharingTextLabel topAnchor];
  v37 = [(UILabel *)self->_featureSharingTitleLabel bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:2.0];
  [v38 setActive:1];

  v39 = [(UILabel *)self->_featureSharingTextLabel bottomAnchor];
  v40 = [(HKBorderLineView *)self->_featureSharingView bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  featureSharingBottomConstraint = self->_featureSharingBottomConstraint;
  self->_featureSharingBottomConstraint = v41;

  [(NSLayoutConstraint *)self->_featureSharingBottomConstraint setActive:1];
  v43 = [(UILabel *)self->_featureSharingTitleLabel leadingAnchor];
  v44 = [(HKBorderLineView *)self->_featureSharingView leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(UILabel *)self->_featureSharingTitleLabel trailingAnchor];
  v47 = [(HKBorderLineView *)self->_featureSharingView trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [(UILabel *)self->_featureSharingTextLabel leadingAnchor];
  v50 = [(HKBorderLineView *)self->_featureSharingView leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v51 setActive:1];

  v54 = [(UILabel *)self->_featureSharingTextLabel trailingAnchor];
  v52 = [(HKBorderLineView *)self->_featureSharingView trailingAnchor];
  v53 = [v54 constraintEqualToAnchor:v52];
  [v53 setActive:1];
}

- (void)_createTapToConnectButton
{
  v3 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
  [v3 setButtonSize:1];
  v4 = HRLocalizedString(@"TAP_TO_CONNECT");
  [v3 setTitle:v4];

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
  [v3 setTitleTextAttributesTransformer:v14];
  [v3 setDefaultContentInsets];
  v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:0];
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
  v13 = [(WDClinicalOnboardingGatewayCell *)self contentView];
  [v13 addSubview:self->_tapToConnectButton];
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

  v8 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [v8 setAxis:1];

  v9 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [v10 setBaselineRelativeArrangement:0];

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
  v8 = [(WDClinicalOnboardingGatewayCell *)self contentView];
  [v8 addSubview:self->_outerSpecContainerView];
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
  v12 = [(WDClinicalOnboardingGatewayCell *)self _contentViewMarginsGuide];
  v3 = [v12 topAnchor];
  v4 = [(UIStackView *)self->_outerSpecContainerView topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v6 = [v12 trailingAnchor];
  v7 = [(UIStackView *)self->_outerSpecContainerView trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [v12 leadingAnchor];
  v10 = [(UIStackView *)self->_outerSpecContainerView leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];
}

- (id)_contentViewMarginsGuide
{
  v2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v3 = [v2 layoutMarginsGuide];

  return v3;
}

- (void)_positionTapToConnectButton
{
  v3 = [(UIButton *)self->_tapToConnectButton leadingAnchor];
  v4 = [(UIStackView *)self->_verticalSpecContainerView leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v6 = [(UIButton *)self->_tapToConnectButton topAnchor];
  v7 = [(UIStackView *)self->_verticalSpecContainerView bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v15 = [(WDClinicalOnboardingGatewayCell *)self _contentViewMarginsGuide];
  v9 = [(UIButton *)self->_tapToConnectButton bottomAnchor];
  v10 = [v15 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIButton *)self->_tapToConnectButton heightAnchor];
  v13 = [v12 constraintEqualToConstant:32.0];
  tapToConnectButtonHeightConstraint = self->_tapToConnectButtonHeightConstraint;
  self->_tapToConnectButtonHeightConstraint = v13;

  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setActive:1];
}

- (void)configureWithGateway:(id)a3 dataProvider:(id)a4 connected:(BOOL)a5
{
  v5 = a5;
  v28 = a3;
  v8 = a4;
  [(WDClinicalOnboardingGatewayCell *)self setCurrentGateway:v28];
  [(WDClinicalOnboardingGatewayCell *)self setCurrentDataProvider:v8];
  if (v28 && v8)
  {
    v9 = [(WDClinicalOnboardingGatewayCell *)self logoView];
    [v9 fetchBrandable:v28 dataProvider:v8];
  }

  v10 = [v28 title];
  v11 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [v11 setText:v10];

  v12 = [v28 subtitle];
  v13 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [v13 setText:v12];

  v14 = [v28 displayableDescription];
  v15 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v15 setText:v14];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = HROsloLocalizedString(@"GATEWAY_%@_FEATURE_DOWNLOAD_TEXT", v17);
  v19 = [v28 title];
  v20 = [v16 initWithFormat:v18, v19];
  [(UILabel *)self->_featureDownloadTextLabel setText:v20];

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = HROsloLocalizedString(@"GATEWAY_%@_FEATURE_SHARING_TEXT", v22);
  v24 = [v28 title];
  v25 = [v21 initWithFormat:v23, v24];
  [(UILabel *)self->_featureSharingTextLabel setText:v25];

  LODWORD(v25) = [v28 supportsSharingToProviderObjC];
  v26 = [(WDClinicalOnboardingGatewayCell *)self featureSharingView];
  [v26 setHidden:v25 ^ 1];

  v27 = [(WDClinicalOnboardingGatewayCell *)self tapToConnectButton];
  [v27 setHidden:v5];

  [(WDClinicalOnboardingGatewayCell *)self _updateLabelVisibility];
  [(WDMedicalRecordGroupableCell *)self _updateForCurrentSizeCategory];
  [(WDClinicalOnboardingGatewayCell *)self _setAccessibilityIdentifiers];
}

- (void)_updateLabelVisibility
{
  v3 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length] == 0;
  v6 = [(WDClinicalOnboardingGatewayCell *)self titleLabel];
  [v6 setHidden:v5];

  v7 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  v8 = [v7 text];
  v9 = [v8 length] == 0;
  v10 = [(WDClinicalOnboardingGatewayCell *)self subtitleLabel];
  [v10 setHidden:v9];

  v11 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  v12 = [v11 text];
  v13 = [v12 length] == 0;
  v14 = [(WDClinicalOnboardingGatewayCell *)self detailLabel];
  [v14 setHidden:v13];

  v15 = [(WDClinicalOnboardingGatewayCell *)self featureDownloadView];
  [v15 setEdges:0];

  v16 = [(WDClinicalOnboardingGatewayCell *)self featureSharingView];
  [v16 setEdges:0];

  v17 = [(WDClinicalOnboardingGatewayCell *)self verticalSpecContainerView];
  [v17 setNeedsUpdateConstraints];
}

- (void)_updateForContentSizeCategory:(id)a3
{
  v16.receiver = self;
  v16.super_class = WDClinicalOnboardingGatewayCell;
  v4 = a3;
  [(WDMedicalRecordGroupableCell *)&v16 _updateForContentSizeCategory:v4];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:{v4, v16.receiver, v16.super_class}];

  v6 = objc_alloc(MEMORY[0x1E69DCA40]);
  v7 = [v6 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 scaledValueForValue:v5 compatibleWithTraitCollection:20.0];
  v9 = v8;
  [v7 scaledValueForValue:v5 compatibleWithTraitCollection:12.0];
  v11 = v10;
  v12 = [(UIButton *)self->_tapToConnectButton isHidden];
  [(UIStackView *)self->_outerSpecContainerView setSpacing:v11];
  [(UIStackView *)self->_verticalSpecContainerView setSpacing:v11];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_titleLabel afterView:2.0];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_subtitleLabel afterView:v11];
  [(UIStackView *)self->_verticalSpecContainerView setCustomSpacing:self->_detailLabel afterView:v9];
  if (v12)
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
  if (v12)
  {
    v15 = 0.0;
  }

  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setConstant:v15];
  [(NSLayoutConstraint *)self->_tapToConnectButtonHeightConstraint setActive:v12 ^ 1u];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingGatewayCell;
  [(WDMedicalRecordGroupableCell *)&v7 _updateBasedOnAccessibilityCategory:?];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v5];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:v6];
  [(UIStackView *)self->_outerSpecContainerView setAxis:v3];
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

- (void)_didTapConnectButton:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v8 = [v7 superview];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v10 = v7;
    v11 = [v10 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [v10 delegate];
      v14 = [v13 conformsToProtocol:&unk_1F4D70F58];

      if (v14)
      {
        v15 = [v10 delegate];
        v16 = [(WDClinicalOnboardingGatewayCell *)v6 currentGateway];
        v17 = [(WDClinicalOnboardingGatewayCell *)v6 currentDataProvider];
        [v15 clinicalOnboardingGatewayCell:v6 didTapConnectWithGateway:v16 dataProvider:v17];
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
  v3 = [(WDClinicalOnboardingGatewayCell *)self tapToConnectButton];
  v4 = [(WDClinicalOnboardingGatewayCell *)self tintColor];
  [v3 setTitleColor:v4 forState:0];
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