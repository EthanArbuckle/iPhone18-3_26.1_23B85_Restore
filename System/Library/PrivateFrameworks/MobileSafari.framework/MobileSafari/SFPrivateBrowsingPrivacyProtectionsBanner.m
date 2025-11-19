@interface SFPrivateBrowsingPrivacyProtectionsBanner
- (BOOL)_shouldUseCompactModeLayout;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFPrivateBrowsingPrivacyProtectionsBanner)init;
- (id)_titleLabelFont:(BOOL)a3;
- (void)_createLayoutConstraints;
- (void)_dismiss;
- (void)_reducePrivacyProtections;
- (void)_updateButtonStackViewAxisIfNeeded;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
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
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v14];

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
    v20 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [v20 setFont:v19];

    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(_SFDimmingButton *)v3->_dismissButton setTintColor:v21];

    v22 = [MEMORY[0x1E69DC888] systemGray5Color];
    [(_SFDimmingButton *)v3->_dismissButton setDimmableBackgroundColor:v22];

    v23 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [v23 setLineBreakMode:0];

    v24 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [v24 setTextAlignment:1];

    v25 = [(_SFDimmingButton *)v3->_dismissButton titleLabel];
    [v25 setAdjustsFontForContentSizeCategory:1];

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
    v32 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [v32 setFont:v31];

    v33 = [MEMORY[0x1E69DC888] labelColor];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setTintColor:v33];

    v34 = [MEMORY[0x1E69DC888] systemGray5Color];
    [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton setDimmableBackgroundColor:v34];

    v35 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [v35 setLineBreakMode:0];

    v36 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [v36 setTextAlignment:1];

    v37 = [(_SFDimmingButton *)v3->_reducePrivacyProtectionsButton titleLabel];
    [v37 setAdjustsFontForContentSizeCategory:1];

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
  v2 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self traitCollection];
  if ([v2 horizontalSizeClass] == 1)
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
  v3 = [(UILabel *)self->_titleLabel topAnchor];
  v4 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:9.0];
  titleTopConstraint = self->_titleTopConstraint;
  self->_titleTopConstraint = v5;

  [(NSLayoutConstraint *)self->_titleTopConstraint setActive:1];
  v7 = [(UIStackView *)self->_buttonStackView widthAnchor];
  [(UILabel *)self->_titleLabel frame];
  v9 = [v7 constraintEqualToConstant:v8];
  compactModeButtonStackViewWidthConstraint = self->_compactModeButtonStackViewWidthConstraint;
  self->_compactModeButtonStackViewWidthConstraint = v9;

  v56[0] = self->_compactModeButtonStackViewWidthConstraint;
  v51 = [(UILabel *)self->_titleLabel leadingAnchor];
  v53 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self layoutMarginsGuide];
  v49 = [v53 leadingAnchor];
  v47 = [v51 constraintEqualToAnchor:v49];
  v56[1] = v47;
  v45 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self layoutMarginsGuide];
  v43 = [v45 trailingAnchor];
  v41 = [(UILabel *)self->_titleLabel trailingAnchor];
  v39 = [v43 constraintEqualToAnchor:v41];
  v56[2] = v39;
  v37 = [(UIStackView *)self->_buttonStackView topAnchor];
  v11 = [(UILabel *)self->_titleLabel bottomAnchor];
  v12 = [v37 constraintEqualToAnchor:v11 constant:8.0];
  v56[3] = v12;
  v13 = [(UIStackView *)self->_buttonStackView centerXAnchor];
  v14 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v56[4] = v15;
  v16 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self bottomAnchor];
  v17 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:9.0];
  v56[5] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:6];
  compactModeConstraints = self->_compactModeConstraints;
  self->_compactModeConstraints = v19;

  v54 = [(UILabel *)self->_titleLabel leadingAnchor];
  v52 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self leadingAnchor];
  v50 = [v54 constraintEqualToAnchor:v52 constant:20.0];
  v55[0] = v50;
  v48 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  v46 = [(UILabel *)self->_titleLabel trailingAnchor];
  v44 = [v48 constraintEqualToAnchor:v46 constant:16.0];
  v55[1] = v44;
  v42 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self bottomAnchor];
  v40 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [v42 constraintEqualToAnchor:v40 constant:9.0];
  v55[2] = v38;
  v36 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self trailingAnchor];
  v35 = [(UIStackView *)self->_buttonStackView trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:20.0];
  v55[3] = v34;
  v33 = [(UIStackView *)self->_buttonStackView centerYAnchor];
  v32 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self centerYAnchor];
  v21 = [v33 constraintEqualToAnchor:v32];
  v55[4] = v21;
  v22 = [(UIStackView *)self->_buttonStackView topAnchor];
  v23 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self safeAreaLayoutGuide];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24 constant:10.0];
  v55[5] = v25;
  v26 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self safeAreaLayoutGuide];
  v27 = [v26 bottomAnchor];
  v28 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:10.0];
  v55[6] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:7];
  regularModeConstraints = self->_regularModeConstraints;
  self->_regularModeConstraints = v30;
}

- (void)updateConstraintsForLayoutMode
{
  v3 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _shouldUseCompactModeLayout];
  titleLabel = self->_titleLabel;
  if (v3)
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

- (id)_titleLabelFont:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = v4;
  if (v3)
  {
    v6 = 32770;
  }

  else
  {
    v6 = 0x8000;
  }

  v7 = [v4 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits:v6];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
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

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  if (a3.left == 0.0)
  {
    a3.left = 20.0;
  }

  if (a3.right == 0.0)
  {
    a3.right = 20.0;
  }

  v3.receiver = self;
  v3.super_class = SFPrivateBrowsingPrivacyProtectionsBanner;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)&v3 setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SFPrivateBrowsingPrivacyProtectionsBanner;
  [(SFPrivateBrowsingPrivacyProtectionsBanner *)&v18 layoutSubviews];
  [(UILabel *)self->_titleLabel bounds];
  Height = CGRectGetHeight(v19);
  v4 = _SFRoundFloatToPixels(Height);
  v5 = [(UILabel *)self->_titleLabel font];
  [v5 lineHeight];
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
  v4 = [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton titleLabel];
  v5 = [v4 text];
  v32 = *MEMORY[0x1E69DB648];
  v6 = v32;
  v7 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _titleLabelFont:1];
  v33[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v9 = [v3 initWithString:v5 attributes:v8];

  v10 = CTLineCreateWithAttributedString(v9);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v10, 0);
  width = BoundsWithOptions.size.width;
  CFRelease(v10);
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = [(_SFDimmingButton *)self->_dismissButton titleLabel];
  v14 = [v13 text];
  v30 = v6;
  v15 = [(SFPrivateBrowsingPrivacyProtectionsBanner *)self _titleLabelFont:1];
  v31 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v17 = [v12 initWithString:v14 attributes:v16];

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
  v10 = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:v10];
  v3 = [v10 overrideTintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    p_reducePrivacyProtectionsButton = &self->_reducePrivacyProtectionsButton;
    [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton setDimmableBackgroundColor:v5];
    v7 = [v10 themeColor];
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGray5Color];
    p_reducePrivacyProtectionsButton = &self->_reducePrivacyProtectionsButton;
    [(_SFDimmingButton *)self->_reducePrivacyProtectionsButton setDimmableBackgroundColor:v5];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = 0;
  }

  [(_SFDimmingButton *)*p_reducePrivacyProtectionsButton setTintColor:v7];

  [(_SFDimmingButton *)*p_reducePrivacyProtectionsButton setTintAdjustmentMode:v8];
  [(_SFDimmingButton *)self->_dismissButton setDimmableBackgroundColor:v5];
  if (v4)
  {
    [v10 themeColor];
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