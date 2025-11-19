@interface SFWebExtensionPermissionGrantedBanner
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFWebExtensionPermissionGrantedBanner)initWithExtensions:(id)a3 grantedHost:(id)a4;
- (id)_titleLabelFont;
- (void)_dismiss;
- (void)_resetExtensionPermissions;
- (void)_setUpAllowButton;
- (void)_setUpBackdrop;
- (void)_setUpButtonStackView;
- (void)_setUpConstraints;
- (void)_setUpResetExtensionPermissionsButton;
- (void)_setUpTitleLabel;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)themeDidChange;
@end

@implementation SFWebExtensionPermissionGrantedBanner

- (SFWebExtensionPermissionGrantedBanner)initWithExtensions:(id)a3 grantedHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SFWebExtensionPermissionGrantedBanner;
  v8 = [(SFWebExtensionPermissionGrantedBanner *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensions = v8->_extensions;
    v8->_extensions = v9;

    v11 = [v7 copy];
    grantedHost = v8->_grantedHost;
    v8->_grantedHost = v11;

    [(SFWebExtensionPermissionGrantedBanner *)v8 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpBackdrop];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpTitleLabel];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpAllowButton];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpResetExtensionPermissionsButton];
    v13 = [(UILabel *)v8->_titleLabel topAnchor];
    v14 = [(SFWebExtensionPermissionGrantedBanner *)v8 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:9.0];
    titleTopConstraint = v8->_titleTopConstraint;
    v8->_titleTopConstraint = v15;

    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpButtonStackView];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpConstraints];
    [(SFWebExtensionPermissionGrantedBanner *)v8 sizeToFit];
    v17 = v8;
  }

  return v8;
}

- (void)_setUpBackdrop
{
  v3 = [SFThemeColorEffectView alloc];
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
  v5 = [(SFThemeColorEffectView *)v3 initWithEffect:v4];
  backdrop = self->_backdrop;
  self->_backdrop = v5;

  [(SFThemeColorEffectView *)self->_backdrop setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFWebExtensionPermissionGrantedBanner *)self addSubview:self->_backdrop];
  [(SFWebExtensionPermissionGrantedBanner *)self sendSubviewToBack:self->_backdrop];
  v7 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:self->_backdrop withFrameOfView:self];
  backdropConstraints = self->_backdropConstraints;
  self->_backdropConstraints = v7;

  v9 = MEMORY[0x1E696ACD8];
  v10 = self->_backdropConstraints;

  [v9 activateConstraints:v10];
}

- (void)_setUpTitleLabel
{
  v3 = [(NSArray *)self->_extensions count];
  v4 = MEMORY[0x1E696AEC0];
  v5 = v3 - 1;
  if (v3 == 1)
  {
    v6 = _WBSLocalizedString();
    v7 = [(NSArray *)self->_extensions firstObject];
    v8 = [v7 displayName];
    [v4 stringWithFormat:v6, v8, self->_grantedHost];
  }

  else
  {
    v6 = _WBSLocalizedString();
    v7 = [(NSArray *)self->_extensions firstObject];
    v8 = [v7 displayName];
    [v4 localizedStringWithFormat:v6, v8, v5, self->_grantedHost];
  }
  v14 = ;

  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:v11];

  [(UILabel *)self->_titleLabel setText:v14];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:_SFDeviceIsPad() ^ 1];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_titleLabel setTextColor:v12];

  LODWORD(v13) = 1144750080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v13];
  [(SFWebExtensionPermissionGrantedBanner *)self addSubview:self->_titleLabel];
}

- (void)_setUpAllowButton
{
  v3 = [_SFDimmingButton buttonWithType:1];
  allowButton = self->_allowButton;
  self->_allowButton = v3;

  v5 = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  v6 = [(_SFDimmingButton *)self->_allowButton titleLabel];
  [v6 setFont:v5];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  [(_SFDimmingButton *)self->_allowButton setTintColor:v7];

  v8 = [MEMORY[0x1E69DC888] systemGray5Color];
  [(_SFDimmingButton *)self->_allowButton setDimmableBackgroundColor:v8];

  [(_SFDimmingButton *)self->_allowButton setTapTargetSideMargin:&unk_1EFF74270];
  [(_SFDimmingButton *)self->_allowButton _setCornerRadius:13.5];
  [(_SFDimmingButton *)self->_allowButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
  [(_SFDimmingButton *)self->_allowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = self->_allowButton;
  v10 = _WBSLocalizedString();
  [(_SFDimmingButton *)v9 setTitle:v10 forState:0];

  v11 = self->_allowButton;

  [(_SFDimmingButton *)v11 addTarget:self action:sel__dismiss forControlEvents:64];
}

- (void)_setUpResetExtensionPermissionsButton
{
  v3 = [_SFDimmingButton buttonWithType:1];
  resetExtensionPermissionsButton = self->_resetExtensionPermissionsButton;
  self->_resetExtensionPermissionsButton = v3;

  v5 = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  v6 = [(_SFDimmingButton *)self->_resetExtensionPermissionsButton titleLabel];
  [v6 setFont:v5];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setTintColor:v7];

  v8 = [MEMORY[0x1E69DC888] systemGray5Color];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:v8];

  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setTapTargetSideMargin:&unk_1EFF74270];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton _setCornerRadius:13.5];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = self->_resetExtensionPermissionsButton;
  v10 = _WBSLocalizedString();
  [(_SFDimmingButton *)v9 setTitle:v10 forState:0];

  v11 = self->_resetExtensionPermissionsButton;

  [(_SFDimmingButton *)v11 addTarget:self action:sel__resetExtensionPermissions forControlEvents:64];
}

- (void)_setUpButtonStackView
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  resetExtensionPermissionsButton = self->_resetExtensionPermissionsButton;
  v9[0] = self->_allowButton;
  v9[1] = resetExtensionPermissionsButton;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v3 initWithArrangedSubviews:v5];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v6;

  [(UIStackView *)self->_buttonStackView setAxis:0];
  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStackView setSpacing:8.0];
  [(UIStackView *)self->_buttonStackView setDistribution:2];
  LODWORD(v8) = 1148846080;
  [(UIStackView *)self->_buttonStackView setContentCompressionResistancePriority:0 forAxis:v8];
  if ((_SFDeviceIsPad() & 1) == 0)
  {
    [(UIStackView *)self->_buttonStackView setDistribution:1];
  }

  [(SFWebExtensionPermissionGrantedBanner *)self addSubview:self->_buttonStackView];
}

- (void)_setUpConstraints
{
  v46[7] = *MEMORY[0x1E69E9840];
  if (_SFDeviceIsPad())
  {
    v32 = MEMORY[0x1E696ACD8];
    v45[0] = self->_titleTopConstraint;
    v33 = [(UILabel *)self->_titleLabel leadingAnchor];
    v31 = [(SFWebExtensionPermissionGrantedBanner *)self leadingAnchor];
    v44 = [v33 constraintEqualToAnchor:v31 constant:20.0];
    v45[1] = v44;
    v3 = [(UILabel *)self->_titleLabel trailingAnchor];
    v42 = [(UIStackView *)self->_buttonStackView leadingAnchor];
    v43 = v3;
    v41 = [v3 constraintEqualToAnchor:-16.0 constant:?];
    v45[2] = v41;
    v4 = [(SFWebExtensionPermissionGrantedBanner *)self bottomAnchor];
    v39 = [(UILabel *)self->_titleLabel bottomAnchor];
    v40 = v4;
    v30 = [v4 constraintEqualToAnchor:9.0 constant:?];
    v45[3] = v30;
    v5 = [(UIStackView *)self->_buttonStackView trailingAnchor];
    v37 = [(SFWebExtensionPermissionGrantedBanner *)self trailingAnchor];
    v38 = v5;
    v36 = [v5 constraintEqualToAnchor:-20.0 constant:?];
    v45[4] = v36;
    v6 = [(UIStackView *)self->_buttonStackView centerYAnchor];
    v29 = [(SFWebExtensionPermissionGrantedBanner *)self centerYAnchor];
    v35 = v6;
    v7 = [v6 constraintEqualToAnchor:v29];
    v45[5] = v7;
    v8 = [(UIStackView *)self->_buttonStackView topAnchor];
    v9 = [(SFWebExtensionPermissionGrantedBanner *)self safeAreaLayoutGuide];
    v10 = [v9 topAnchor];
    v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:10.0];
    v45[6] = v11;
    v12 = [(UIStackView *)self->_buttonStackView bottomAnchor];
    v13 = [(SFWebExtensionPermissionGrantedBanner *)self safeAreaLayoutGuide];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14 constant:10.0];
    v45[7] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:8];
    [v32 activateConstraints:v16];

    v17 = v31;
    v18 = v30;

    v19 = v29;
    v20 = v33;
  }

  else
  {
    v21 = [(UIStackView *)self->_buttonStackView widthAnchor];
    [(UILabel *)self->_titleLabel frame];
    v23 = [v21 constraintEqualToConstant:v22];
    buttonStackViewWidthConstraint = self->_buttonStackViewWidthConstraint;
    self->_buttonStackViewWidthConstraint = v23;

    v34 = MEMORY[0x1E696ACD8];
    v46[0] = self->_titleTopConstraint;
    v20 = [(UILabel *)self->_titleLabel leadingAnchor];
    v17 = [(SFWebExtensionPermissionGrantedBanner *)self layoutMarginsGuide];
    v44 = [v17 leadingAnchor];
    v43 = [v20 constraintEqualToAnchor:?];
    v46[1] = v43;
    v25 = [(UILabel *)self->_titleLabel trailingAnchor];
    v41 = [(SFWebExtensionPermissionGrantedBanner *)self layoutMarginsGuide];
    [v41 trailingAnchor];
    v40 = v42 = v25;
    v39 = [v25 constraintEqualToAnchor:?];
    v46[2] = v39;
    v18 = [(UIStackView *)self->_buttonStackView topAnchor];
    v38 = [(UILabel *)self->_titleLabel bottomAnchor];
    v37 = [v18 constraintEqualToAnchor:8.0 constant:?];
    v46[3] = v37;
    v26 = [(UIStackView *)self->_buttonStackView centerXAnchor];
    v35 = [(SFWebExtensionPermissionGrantedBanner *)self centerXAnchor];
    v36 = v26;
    v27 = [v26 constraintEqualToAnchor:?];
    v28 = self->_buttonStackViewWidthConstraint;
    v19 = v27;
    v46[4] = v27;
    v46[5] = v28;
    v7 = [(SFWebExtensionPermissionGrantedBanner *)self bottomAnchor];
    v8 = [(UIStackView *)self->_buttonStackView bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:9.0];
    v46[6] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
    [v34 activateConstraints:v10];
  }
}

- (id)_titleLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFWebExtensionPermissionGrantedBanner *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_resetExtensionPermissions
{
  resetExtensionPermissionsHandler = self->_resetExtensionPermissionsHandler;
  if (resetExtensionPermissionsHandler)
  {
    resetExtensionPermissionsHandler[2](resetExtensionPermissionsHandler, self);
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
  v3.super_class = SFWebExtensionPermissionGrantedBanner;
  [(SFWebExtensionPermissionGrantedBanner *)&v3 setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SFWebExtensionPermissionGrantedBanner;
  [(SFWebExtensionPermissionGrantedBanner *)&v19 layoutSubviews];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton bounds];
  v3 = CGRectGetHeight(v20) * 0.482142857;
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton _setCornerRadius:v3];
  [(_SFDimmingButton *)self->_allowButton _setCornerRadius:v3];
  [(UILabel *)self->_titleLabel bounds];
  Height = CGRectGetHeight(v21);
  v5 = _SFRoundFloatToPixels(Height);
  v6 = [(UILabel *)self->_titleLabel font];
  [v6 lineHeight];
  v8 = _SFRoundFloatToPixels(v7);

  v9 = 9.0;
  if (v5 > v8)
  {
    v9 = 8.0;
  }

  [(NSLayoutConstraint *)self->_titleTopConstraint setConstant:v9];
  if ((_SFDeviceIsPad() & 1) == 0)
  {
    [(UILabel *)self->_titleLabel frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UILabel *)self->_titleLabel sizeToFit];
    [(UILabel *)self->_titleLabel frame];
    [(NSLayoutConstraint *)self->_buttonStackViewWidthConstraint setConstant:v18];
    [(UILabel *)self->_titleLabel setFrame:v11, v13, v15, v17];
  }
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
    p_resetExtensionPermissionsButton = &self->_resetExtensionPermissionsButton;
    [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:v5];
    v7 = [v10 themeColor];
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGray5Color];
    p_resetExtensionPermissionsButton = &self->_resetExtensionPermissionsButton;
    [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:v5];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = 0;
  }

  [(_SFDimmingButton *)*p_resetExtensionPermissionsButton setTintColor:v7];

  [(_SFDimmingButton *)*p_resetExtensionPermissionsButton setTintAdjustmentMode:v8];
  [(_SFDimmingButton *)self->_allowButton setDimmableBackgroundColor:v5];
  if (v4)
  {
    [v10 themeColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v9 = ;
  [(_SFDimmingButton *)self->_allowButton setTintColor:v9];

  [(_SFDimmingButton *)self->_allowButton setTintAdjustmentMode:v8];
}

- (void)_dismiss
{
  allowButtonHandler = self->_allowButtonHandler;
  if (allowButtonHandler)
  {
    allowButtonHandler[2](allowButtonHandler, self);
  }
}

@end