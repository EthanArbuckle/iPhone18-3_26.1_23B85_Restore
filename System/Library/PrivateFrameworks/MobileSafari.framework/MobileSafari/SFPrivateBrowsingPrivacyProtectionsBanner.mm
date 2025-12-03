@interface SFPrivateBrowsingPrivacyProtectionsBanner
- (BOOL)_shouldUseCompactModeLayout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFPrivateBrowsingPrivacyProtectionsBanner)init;
- (id)_titleLabelFont:(BOOL)font;
- (void)_createLayoutConstraints;
- (void)_dismiss;
- (void)_reducePrivacyProtections;
- (void)_updateButtonStackViewAxisIfNeeded;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)themeDidChange;
- (void)updateConstraintsForLayoutMode;
@end

@implementation SFPrivateBrowsingPrivacyProtectionsBanner

- (SFPrivateBrowsingPrivacyProtectionsBanner)init
{
  v50[2] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = SFPrivateBrowsingPrivacyProtectionsBanner;
  v2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)&v48 init];
  v3 = v2;
  if (v2)
  {
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v2 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    v4 = [SFThemeColorEffectView alloc];
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v6 = [(SFThemeColorEffectView *)v4 initWithEffect:v5];
    backdrop = v3->_backdrop;
    v3->_backdrop = v6;

    [(SFThemeColorEffectView *)v3->_backdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 addSubview:v3->_backdrop];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 sendSubviewToBack:v3->_backdrop];
    v8 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:v3->_backdrop withFrameOfView:v3];
    backdropConstraints = v3->_backdropConstraints;
    v3->_backdropConstraints = v8;

    [MEMORY[0x1E696ACD8] activateConstraints:v3->_backdropConstraints];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v10;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v12 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 _titleLabelFont:0];
    [(UILabel *)v3->_titleLabel setFont:v12];

    v13 = _WBSLocalizedString();
    [(UILabel *)v3->_titleLabel setText:v13];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

    LODWORD(v15) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v3->_titleLabel setContentHuggingPriority:1 forAxis:v16];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 addSubview:v3->_titleLabel];
    v17 = [_SFDimmingButton buttonWithType:1];
    dismissButton = v3->_dismissButton;
    v3->_dismissButton = v17;

    [(_SFDimmingButton *)v3->_dismissButton setAccessibilityIdentifier:@"DismissBannerButton"];
    v19 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 _titleLabelFont:1];
    titleLabel = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [titleLabel setFont:v19];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(_SFDimmingButton *)v3->_dismissButton setTintColor:secondaryLabelColor2];

    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    [(_SFDimmingButton *)v3->_dismissButton setDimmableBackgroundColor:systemGray5Color];

    titleLabel2 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [titleLabel2 setLineBreakMode:0];

    titleLabel3 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [titleLabel3 setTextAlignment:1];

    titleLabel4 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [titleLabel4 setAdjustsFontForContentSizeCategory:1];

    [(_SFDimmingButton *)v3->_dismissButton setTapTargetSideMargin:&unk_1EFF74288];
    [(_SFDimmingButton *)v3->_dismissButton _setCornerRadius:13.5];
    [(_SFDimmingButton *)v3->_dismissButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
    [(_SFDimmingButton *)v3->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = v3->_dismissButton;
    v27 = _WBSLocalizedString();
    [(_SFDimmingButton *)v26 setTitle:v27 forState:0];

    [(_SFDimmingButton *)v3->_dismissButton addTarget:v3 action:sel__dismiss forControlEvents:64];
    LODWORD(v28) = 1148846080;
    [(_SFDimmingButton *)v3->_dismissButton setContentCompressionResistancePriority:1 forAxis:v28];
    v29 = [_SFDimmingButton buttonWithType:1];
    reducePrivacyProtectionsButton = v3->_reducePrivacyProtectionsButton;
    v3->_reducePrivacyProtectionsButton = v29;

    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setAccessibilityIdentifier:@"ReducePrivacyProtectionsButton"];
    v31 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 _titleLabelFont:1];
    titleLabel5 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [titleLabel5 setFont:v31];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setTintColor:labelColor];

    systemGray5Color2 = [MEMORY[0x1E69DC888] systemGray5Color];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setDimmableBackgroundColor:systemGray5Color2];

    titleLabel6 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [titleLabel6 setLineBreakMode:0];

    titleLabel7 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [titleLabel7 setTextAlignment:1];

    titleLabel8 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [titleLabel8 setAdjustsFontForContentSizeCategory:1];

    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setTapTargetSideMargin:&unk_1EFF74288];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton _setCornerRadius:13.5];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton addTarget:v3 action:sel__reducePrivacyProtections forControlEvents:64];
    LODWORD(v38) = 1148846080;
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setContentCompressionResistancePriority:1 forAxis:v38];
    v39 = objc_alloc(MEMORY[0x1E69DCF90]);
    v50[0] = v3->_dismissButton;
    v50[1] = v3->_reducePrivacyProtectionsButton;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v41 = [v39 initWithArrangedSubviews:v40];
    buttonStackView = v3->_buttonStackView;
    v3->_buttonStackView = v41;

    [(UIStackView *)v3->_buttonStackView setAxis:0];
    [(UIStackView *)v3->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_buttonStackView setSpacing:8.0];
    LODWORD(v43) = 1148846080;
    [(UIStackView *)v3->_buttonStackView setContentCompressionResistancePriority:0 forAxis:v43];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 addSubview:v3->_buttonStackView];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 _createLayoutConstraints];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 updateConstraintsForLayoutMode];
    v49 = objc_opt_class();
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v45 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)v3 registerForTraitChanges:v44 withAction:sel_updateConstraintsForLayoutMode];

    v46 = v3;
  }

  return v3;
}

- (BOOL)_shouldUseCompactModeLayout
{
  traitCollection = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = _SFDeviceIsPad() ^ 1;
  }

  return v3;
}

- (void)_createLayoutConstraints
{
  v56[6] = *MEMORY[0x1E69E9840];
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  titleTopConstraint = self->_titleTopConstraint;
  self->_titleTopConstraint = v5;

  [(NSLayoutConstraint *)self->_titleTopConstraint setActive:1];
  widthAnchor = [(UIStackView *)self->_buttonStackView widthAnchor];
  [(UILabel *)self->_titleLabel frame];
  v9 = [widthAnchor constraintEqualToConstant:v8];
  compactModeButtonStackViewWidthConstraint = self->_compactModeButtonStackViewWidthConstraint;
  self->_compactModeButtonStackViewWidthConstraint = v9;

  v56[0] = self->_compactModeButtonStackViewWidthConstraint;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  layoutMarginsGuide = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[1] = v47;
  layoutMarginsGuide2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[2] = v39;
  topAnchor3 = [(UIStackView *)self->_buttonStackView topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v12 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
  v56[3] = v12;
  centerXAnchor = [(UIStackView *)self->_buttonStackView centerXAnchor];
  centerXAnchor2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[4] = v15;
  bottomAnchor2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self bottomAnchor];
  bottomAnchor3 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:9.0];
  v56[5] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:6];
  compactModeConstraints = self->_compactModeConstraints;
  self->_compactModeConstraints = v19;

  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self leadingAnchor];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v55[0] = v50;
  leadingAnchor5 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  v44 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
  v55[1] = v44;
  bottomAnchor4 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self bottomAnchor];
  bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:9.0];
  v55[2] = v38;
  trailingAnchor4 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self trailingAnchor];
  trailingAnchor5 = [(UIStackView *)self->_buttonStackView trailingAnchor];
  v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:20.0];
  v55[3] = v34;
  centerYAnchor = [(UIStackView *)self->_buttonStackView centerYAnchor];
  centerYAnchor2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v55[4] = v21;
  topAnchor4 = [(UIStackView *)self->_buttonStackView topAnchor];
  safeAreaLayoutGuide = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide topAnchor];
  v25 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:10.0];
  v55[5] = v25;
  safeAreaLayoutGuide2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor7 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v29 = [bottomAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor7 constant:10.0];
  v55[6] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:7];
  regularModeConstraints = self->_regularModeConstraints;
  self->_regularModeConstraints = v30;
}

- (void)updateConstraintsForLayoutMode
{
  _shouldUseCompactModeLayout = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _shouldUseCompactModeLayout];
  titleLabel = self->_titleLabel;
  if (_shouldUseCompactModeLayout)
  {
    v5 = 1;
    [(UILabel *)titleLabel setTextAlignment:1];
    reducePrivacyProtectionsButton = self->_reducePrivacyProtectionsButton;
    v7 = &OBJC_IVAR___SFPrivateBrowsingPrivacyProtectionsBanner__compactModeConstraints;
    v8 = &OBJC_IVAR___SFPrivateBrowsingPrivacyProtectionsBanner__regularModeConstraints;
  }

  else
  {
    [(UILabel *)titleLabel setTextAlignment:4];
    reducePrivacyProtectionsButton = self->_reducePrivacyProtectionsButton;
    v7 = &OBJC_IVAR___SFPrivateBrowsingPrivacyProtectionsBanner__regularModeConstraints;
    v8 = &OBJC_IVAR___SFPrivateBrowsingPrivacyProtectionsBanner__compactModeConstraints;
    v5 = 2;
  }

  v9 = _WBSLocalizedString();
  [(_SFDimmingButton *)reducePrivacyProtectionsButton setTitle:v9 forState:0];

  [(UIStackView *)self->_buttonStackView setDistribution:v5];
  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.super.isa + *v8)];
  v10 = MEMORY[0x1E696ACD8];
  v11 = *(&self->super.super.super.super.isa + *v7);

  [v10 activateConstraints:v11];
}

- (id)_titleLabelFont:(BOOL)font
{
  fontCopy = font;
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = v4;
  if (fontCopy)
  {
    v6 = 32770;
  }

  else
  {
    v6 = 0x8000;
  }

  fontDescriptor = [v4 fontDescriptor];
  v8 = [fontDescriptor fontDescriptorWithSymbolicTraits:v6];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_reducePrivacyProtections
{
  reducePrivacyProtectionsActionHandler = self->_reducePrivacyProtectionsActionHandler;
  if (reducePrivacyProtectionsActionHandler)
  {
    reducePrivacyProtectionsActionHandler[2](reducePrivacyProtectionsActionHandler, self);
  }
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  if (margins.left == 0.0)
  {
    margins.left = 20.0;
  }

  if (margins.right == 0.0)
  {
    margins.right = 20.0;
  }

  v3.receiver = self;
  v3.super_class = SFPrivateBrowsingPrivacyProtectionsBanner;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)&v3 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SFPrivateBrowsingPrivacyProtectionsBanner;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)&v18 layoutSubviews];
  [(UILabel *)self->_titleLabel bounds];
  Height = CGRectGetHeight(v19);
  v4 = _SFRoundFloatToPixels(Height);
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
  v7 = _SFRoundFloatToPixels(v6);

  v8 = 9.0;
  if (v4 > v7)
  {
    v8 = 8.0;
  }

  [(NSLayoutConstraint *)self->_titleTopConstraint setConstant:v8];
  if ([(SFPrivateBrowsingPrivacyProtectionsBanner *)self _shouldUseCompactModeLayout])
  {
    [(UILabel *)self->_titleLabel frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UILabel *)self->_titleLabel sizeToFit];
    [(UILabel *)self->_titleLabel frame];
    [(NSLayoutConstraint *)self->_compactModeButtonStackViewWidthConstraint setConstant:v17];
    [(UILabel *)self->_titleLabel setFrame:v10, v12, v14, v16];
    [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _updateButtonStackViewAxisIfNeeded];
  }

  else
  {
    [(UIStackView *)self->_buttonStackView setAxis:0];
  }
}

- (void)_updateButtonStackViewAxisIfNeeded
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  titleLabel = [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton titleLabel];
  text = [titleLabel text];
  v32 = *MEMORY[0x1E69DB648];
  v6 = v32;
  v7 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _titleLabelFont:1];
  v33[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v9 = [v3 initWithString:text attributes:v8];

  v10 = CTLineCreateWithAttributedString(v9);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v10, 0);
  width = BoundsWithOptions.size.width;
  CFRelease(v10);
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  titleLabel2 = [(_SFDimmingButton *)self->_dismissButton titleLabel];
  text2 = [titleLabel2 text];
  v30 = v6;
  v15 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _titleLabelFont:1];
  v31 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v17 = [v12 initWithString:text2 attributes:v16];

  v18 = CTLineCreateWithAttributedString(v17);
  v35 = CTLineGetBoundsWithOptions(v18, 0);
  v19 = v35.size.width;
  CFRelease(v18);
  [(UIStackView *)self->_buttonStackView frame];
  v20 = 0;
  v22 = (v21 + -8.0 + -52.0) * 0.5;
  if (width <= v22 && v19 <= v22)
  {
    goto LABEL_9;
  }

  [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton frame];
  v25 = v24;
  [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton intrinsicContentSize];
  if (v25 <= v26 || ([(_SFDimmingButton *)self->_dismissButton frame], v28 = v27, [(_SFDimmingButton *)self->_dismissButton intrinsicContentSize], v28 <= v29))
  {
    v20 = 1;
LABEL_9:
    [(UIStackView *)self->_buttonStackView setAxis:v20];
  }

  [(SFPrivateBrowsingPrivacyProtectionsBanner *)self sizeToFit];
}

- (void)themeDidChange
{
  theme = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  overrideTintColor = [theme overrideTintColor];
  v4 = overrideTintColor;
  if (overrideTintColor)
  {
    systemGray5Color = overrideTintColor;
    p_reducePrivacyProtectionsButton = &self->_reducePrivacyProtectionsButton;
    [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton setDimmableBackgroundColor:systemGray5Color];
    themeColor = [theme themeColor];
    v8 = 1;
  }

  else
  {
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    p_reducePrivacyProtectionsButton = &self->_reducePrivacyProtectionsButton;
    [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton setDimmableBackgroundColor:systemGray5Color];
    themeColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = 0;
  }

  [(_SFDimmingButton *)*p_reducePrivacyProtectionsButton setTintColor:themeColor];

  [(_SFDimmingButton *)*p_reducePrivacyProtectionsButton setTintAdjustmentMode:v8];
  [(_SFDimmingButton *)self->_dismissButton setDimmableBackgroundColor:systemGray5Color];
  if (v4)
  {
    [theme themeColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v9 = ;
  [(_SFDimmingButton *)self->_dismissButton setTintColor:v9];

  [(_SFDimmingButton *)self->_dismissButton setTintAdjustmentMode:v8];
}

- (void)_dismiss
{
  dismissButtonHandler = self->_dismissButtonHandler;
  if (dismissButtonHandler)
  {
    dismissButtonHandler[2](dismissButtonHandler, self);
  }
}

@end