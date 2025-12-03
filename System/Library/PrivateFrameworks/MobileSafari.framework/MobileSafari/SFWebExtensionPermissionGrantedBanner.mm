@interface SFWebExtensionPermissionGrantedBanner
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFWebExtensionPermissionGrantedBanner)initWithExtensions:(id)extensions grantedHost:(id)host;
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
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)themeDidChange;
@end

@implementation SFWebExtensionPermissionGrantedBanner

- (SFWebExtensionPermissionGrantedBanner)initWithExtensions:(id)extensions grantedHost:(id)host
{
  extensionsCopy = extensions;
  hostCopy = host;
  v19.receiver = self;
  v19.super_class = SFWebExtensionPermissionGrantedBanner;
  v8 = [(SFWebExtensionPermissionGrantedBanner *)&v19 init];
  if (v8)
  {
    v9 = [extensionsCopy copy];
    extensions = v8->_extensions;
    v8->_extensions = v9;

    v11 = [hostCopy copy];
    grantedHost = v8->_grantedHost;
    v8->_grantedHost = v11;

    [(SFWebExtensionPermissionGrantedBanner *)v8 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpBackdrop];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpTitleLabel];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpAllowButton];
    [(SFWebExtensionPermissionGrantedBanner *)v8 _setUpResetExtensionPermissionsButton];
    topAnchor = [(UILabel *)v8->_titleLabel topAnchor];
    topAnchor2 = [(SFWebExtensionPermissionGrantedBanner *)v8 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
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
    firstObject = [(NSArray *)self->_extensions firstObject];
    displayName = [firstObject displayName];
    [v4 stringWithFormat:v6, displayName, self->_grantedHost];
  }

  else
  {
    v6 = _WBSLocalizedString();
    firstObject = [(NSArray *)self->_extensions firstObject];
    displayName = [firstObject displayName];
    [v4 localizedStringWithFormat:v6, displayName, v5, self->_grantedHost];
  }
  v14 = ;

  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  _titleLabelFont = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:_titleLabelFont];

  [(UILabel *)self->_titleLabel setText:v14];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:_SFDeviceIsPad() ^ 1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_titleLabel setTextColor:secondaryLabelColor];

  LODWORD(v13) = 1144750080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v13];
  [(SFWebExtensionPermissionGrantedBanner *)self addSubview:self->_titleLabel];
}

- (void)_setUpAllowButton
{
  v3 = [_SFDimmingButton buttonWithType:1];
  allowButton = self->_allowButton;
  self->_allowButton = v3;

  _titleLabelFont = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  titleLabel = [(_SFDimmingButton *)self->_allowButton titleLabel];
  [titleLabel setFont:_titleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(_SFDimmingButton *)self->_allowButton setTintColor:labelColor];

  systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
  [(_SFDimmingButton *)self->_allowButton setDimmableBackgroundColor:systemGray5Color];

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

  _titleLabelFont = [(SFWebExtensionPermissionGrantedBanner *)self _titleLabelFont];
  titleLabel = [(_SFDimmingButton *)self->_resetExtensionPermissionsButton titleLabel];
  [titleLabel setFont:_titleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setTintColor:labelColor];

  systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
  [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:systemGray5Color];

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
    leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor2 = [(SFWebExtensionPermissionGrantedBanner *)self leadingAnchor];
    leadingAnchor5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v45[1] = leadingAnchor5;
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    leadingAnchor3 = [(UIStackView *)self->_buttonStackView leadingAnchor];
    v43 = trailingAnchor;
    layoutMarginsGuide2 = [trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
    v45[2] = layoutMarginsGuide2;
    bottomAnchor = [(SFWebExtensionPermissionGrantedBanner *)self bottomAnchor];
    bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
    v40 = bottomAnchor;
    v30 = [bottomAnchor constraintEqualToAnchor:9.0 constant:?];
    v45[3] = v30;
    trailingAnchor2 = [(UIStackView *)self->_buttonStackView trailingAnchor];
    trailingAnchor3 = [(SFWebExtensionPermissionGrantedBanner *)self trailingAnchor];
    bottomAnchor5 = trailingAnchor2;
    v36 = [trailingAnchor2 constraintEqualToAnchor:-20.0 constant:?];
    v45[4] = v36;
    centerYAnchor = [(UIStackView *)self->_buttonStackView centerYAnchor];
    centerYAnchor2 = [(SFWebExtensionPermissionGrantedBanner *)self centerYAnchor];
    centerXAnchor2 = centerYAnchor;
    bottomAnchor6 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v45[5] = bottomAnchor6;
    topAnchor = [(UIStackView *)self->_buttonStackView topAnchor];
    safeAreaLayoutGuide = [(SFWebExtensionPermissionGrantedBanner *)self safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:10.0];
    v45[6] = v11;
    bottomAnchor3 = [(UIStackView *)self->_buttonStackView bottomAnchor];
    safeAreaLayoutGuide2 = [(SFWebExtensionPermissionGrantedBanner *)self safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide2 bottomAnchor];
    v15 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:10.0];
    v45[7] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:8];
    [v32 activateConstraints:v16];

    layoutMarginsGuide = leadingAnchor2;
    topAnchor3 = v30;

    v19 = centerYAnchor2;
    leadingAnchor4 = leadingAnchor;
  }

  else
  {
    widthAnchor = [(UIStackView *)self->_buttonStackView widthAnchor];
    [(UILabel *)self->_titleLabel frame];
    v23 = [widthAnchor constraintEqualToConstant:v22];
    buttonStackViewWidthConstraint = self->_buttonStackViewWidthConstraint;
    self->_buttonStackViewWidthConstraint = v23;

    v34 = MEMORY[0x1E696ACD8];
    v46[0] = self->_titleTopConstraint;
    leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
    layoutMarginsGuide = [(SFWebExtensionPermissionGrantedBanner *)self layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide leadingAnchor];
    v43 = [leadingAnchor4 constraintEqualToAnchor:?];
    v46[1] = v43;
    trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
    layoutMarginsGuide2 = [(SFWebExtensionPermissionGrantedBanner *)self layoutMarginsGuide];
    [layoutMarginsGuide2 trailingAnchor];
    v40 = leadingAnchor3 = trailingAnchor4;
    bottomAnchor2 = [trailingAnchor4 constraintEqualToAnchor:?];
    v46[2] = bottomAnchor2;
    topAnchor3 = [(UIStackView *)self->_buttonStackView topAnchor];
    bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
    trailingAnchor3 = [topAnchor3 constraintEqualToAnchor:8.0 constant:?];
    v46[3] = trailingAnchor3;
    centerXAnchor = [(UIStackView *)self->_buttonStackView centerXAnchor];
    centerXAnchor2 = [(SFWebExtensionPermissionGrantedBanner *)self centerXAnchor];
    v36 = centerXAnchor;
    v27 = [centerXAnchor constraintEqualToAnchor:?];
    v28 = self->_buttonStackViewWidthConstraint;
    v19 = v27;
    v46[4] = v27;
    v46[5] = v28;
    bottomAnchor6 = [(SFWebExtensionPermissionGrantedBanner *)self bottomAnchor];
    topAnchor = [(UIStackView *)self->_buttonStackView bottomAnchor];
    safeAreaLayoutGuide = [bottomAnchor6 constraintEqualToAnchor:topAnchor constant:9.0];
    v46[6] = safeAreaLayoutGuide;
    topAnchor2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
    [v34 activateConstraints:topAnchor2];
  }
}

- (id)_titleLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFWebExtensionPermissionGrantedBanner *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
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
  v3.super_class = SFWebExtensionPermissionGrantedBanner;
  [(SFWebExtensionPermissionGrantedBanner *)&v3 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
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
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
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
  theme = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  overrideTintColor = [theme overrideTintColor];
  v4 = overrideTintColor;
  if (overrideTintColor)
  {
    systemGray5Color = overrideTintColor;
    p_resetExtensionPermissionsButton = &self->_resetExtensionPermissionsButton;
    [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:systemGray5Color];
    themeColor = [theme themeColor];
    v8 = 1;
  }

  else
  {
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    p_resetExtensionPermissionsButton = &self->_resetExtensionPermissionsButton;
    [(_SFDimmingButton *)self->_resetExtensionPermissionsButton setDimmableBackgroundColor:systemGray5Color];
    themeColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = 0;
  }

  [(_SFDimmingButton *)*p_resetExtensionPermissionsButton setTintColor:themeColor];

  [(_SFDimmingButton *)*p_resetExtensionPermissionsButton setTintAdjustmentMode:v8];
  [(_SFDimmingButton *)self->_allowButton setDimmableBackgroundColor:systemGray5Color];
  if (v4)
  {
    [theme themeColor];
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