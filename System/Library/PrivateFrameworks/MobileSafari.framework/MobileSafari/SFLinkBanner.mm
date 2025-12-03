@interface SFLinkBanner
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFLinkBanner)init;
- (id)_messageLabelFont;
- (id)_titleLabelFont;
- (void)_dismiss;
- (void)_open;
- (void)_setShowsDismissButton:(BOOL)button;
- (void)contentSizeCategoryDidChange;
- (void)invalidateBannerLayout;
- (void)layoutSubviews;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setDismissButtonHandler:(id)handler;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setMessageLabelText:(id)text;
- (void)setOpenButtonTitle:(id)title;
- (void)setShouldHideIcon:(BOOL)icon;
- (void)themeDidChange;
@end

@implementation SFLinkBanner

- (SFLinkBanner)init
{
  v80[4] = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = SFLinkBanner;
  v2 = [(SFLinkBanner *)&v77 init];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __20__SFLinkBanner_init__block_invoke;
    aBlock[3] = &unk_1E721B360;
    v4 = v2;
    v76 = v4;
    v72 = _Block_copy(aBlock);
    v72[2]();
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    icon = v4->_icon;
    v4->_icon = v5;

    [(UIImageView *)v4->_icon setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_icon setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v4->_icon setContentMode:1];
    [(SFLinkBanner *)v4 addSubview:v4->_icon];
    layoutMarginsGuide = [(SFLinkBanner *)v4 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];

    leadingAnchor2 = [(UIImageView *)v4->_icon leadingAnchor];
    v9 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];
    v73 = v3;
    iconLeadingConstraintToSuperview = v4->_iconLeadingConstraintToSuperview;
    v4->_iconLeadingConstraintToSuperview = v9;

    v69 = MEMORY[0x1E696ACD8];
    heightAnchor = [(UIImageView *)v4->_icon heightAnchor];
    [objc_opt_class() iconHeight];
    v11 = [heightAnchor constraintEqualToConstant:?];
    v80[0] = v11;
    widthAnchor = [(UIImageView *)v4->_icon widthAnchor];
    heightAnchor2 = [(UIImageView *)v4->_icon heightAnchor];
    v14 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v80[1] = v14;
    v80[2] = v4->_iconLeadingConstraintToSuperview;
    centerYAnchor = [(UIImageView *)v4->_icon centerYAnchor];
    centerYAnchor2 = [(SFLinkBanner *)v4 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v80[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    [v69 activateConstraints:v18];

    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v19;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setNumberOfLines:3];
    _titleLabelFont = [(SFLinkBanner *)v4 _titleLabelFont];
    [(UILabel *)v4->_titleLabel setFont:_titleLabelFont];

    [(SFLinkBanner *)v4 addSubview:v4->_titleLabel];
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v4->_icon trailingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    titleLeadingConstraint = v4->_titleLeadingConstraint;
    v4->_titleLeadingConstraint = v24;

    leadingAnchor4 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v27 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor];

    v28 = v27;
    v71 = v27;
    LODWORD(v29) = 1144733696;
    [v27 setPriority:v29];
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor2 = [(SFLinkBanner *)v4 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
    titleTopConstraint = v4->_titleTopConstraint;
    v4->_titleTopConstraint = v32;

    v34 = MEMORY[0x1E696ACD8];
    v79[0] = v4->_titleTopConstraint;
    v79[1] = v4->_titleLeadingConstraint;
    v79[2] = v28;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    [v34 activateConstraints:v35];

    LODWORD(v36) = 1144733696;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v36];
    v37 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    messageLabel = v4->_messageLabel;
    v4->_messageLabel = v37;

    [(UILabel *)v4->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_messageLabel setNumberOfLines:3];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_messageLabel setTextColor:secondaryLabelColor];

    [(SFLinkBanner *)v4 addSubview:v4->_messageLabel];
    topAnchor3 = [(UILabel *)v4->_messageLabel topAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:2.0];
    messageTopConstraint = v4->_messageTopConstraint;
    v4->_messageTopConstraint = v42;

    bottomAnchor = [(SFLinkBanner *)v4 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_messageLabel bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:9.0];
    messageBottomConstraint = v4->_messageBottomConstraint;
    v4->_messageBottomConstraint = v46;

    v48 = MEMORY[0x1E696ACD8];
    v78[0] = v4->_messageTopConstraint;
    leadingAnchor5 = [(UILabel *)v4->_messageLabel leadingAnchor];
    leadingAnchor6 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v78[1] = v51;
    v78[2] = v4->_messageBottomConstraint;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
    [v48 activateConstraints:v52];

    LODWORD(v53) = 1132068864;
    [(UILabel *)v4->_messageLabel setContentCompressionResistancePriority:0 forAxis:v53];
    v54 = [_SFDimmingButton buttonWithType:1];
    openButton = v4->_openButton;
    v4->_openButton = v54;

    [(_SFDimmingButton *)v4->_openButton setTapTargetSideMargin:&unk_1EFF73F40];
    preferredButtonTintColor = [(SFLinkBanner *)v4 preferredButtonTintColor];
    [(_SFDimmingButton *)v4->_openButton setTintColor:preferredButtonTintColor];

    preferredButtonBackgroundColor = [(SFLinkBanner *)v4 preferredButtonBackgroundColor];
    [(_SFDimmingButton *)v4->_openButton setDimmableBackgroundColor:preferredButtonBackgroundColor];

    [(_SFDimmingButton *)v4->_openButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
    v58 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    titleLabel = [(_SFDimmingButton *)v4->_openButton titleLabel];
    [titleLabel setFont:v58];

    [(_SFDimmingButton *)v4->_openButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFDimmingButton *)v4->_openButton _setCornerRadius:13.5];
    LODWORD(v60) = 1144733696;
    [(_SFDimmingButton *)v4->_openButton setContentHuggingPriority:0 forAxis:v60];
    LODWORD(v61) = 1144733696;
    [(_SFDimmingButton *)v4->_openButton setContentCompressionResistancePriority:0 forAxis:v61];
    [(_SFDimmingButton *)v4->_openButton addTarget:v4 action:sel__open forControlEvents:64];
    [(SFLinkBanner *)v4 addSubview:v4->_openButton];
    v62 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_openButton attribute:6 relatedBy:0 toItem:v4 attribute:18 multiplier:1.0 constant:0.0];
    openButtonTrailingConstraint = v4->_openButtonTrailingConstraint;
    v4->_openButtonTrailingConstraint = v62;

    [(SFLinkBanner *)v4 addConstraint:v4->_openButtonTrailingConstraint];
    v64 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_openButton attribute:5 relatedBy:1 toItem:v4->_titleLabel attribute:6 multiplier:1.0 constant:12.0];
    [(SFLinkBanner *)v4 addConstraint:v64];

    v65 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_openButton attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
    [(SFLinkBanner *)v4 addConstraint:v65];

    v66 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_messageLabel attribute:6 relatedBy:0 toItem:v4->_openButton attribute:5 multiplier:1.0 constant:-12.0];
    [(SFLinkBanner *)v4 addConstraint:v66];

    v3 = v73;
    v67 = v4;
  }

  return v3;
}

void __20__SFLinkBanner_init__block_invoke(uint64_t a1)
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v2 = [SFThemeColorEffectView alloc];
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v4 = [(SFThemeColorEffectView *)v2 initWithEffect:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 456);
    *(v5 + 456) = v4;

    [*(*(a1 + 32) + 456) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 456)];
    [*(a1 + 32) sendSubviewToBack:*(*(a1 + 32) + 456)];
    v7 = [*(a1 + 32) topAnchor];
    v8 = [*(*(a1 + 32) + 456) topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 520);
    *(v10 + 520) = v9;

    v12 = *(a1 + 32);
    v23[0] = v12[65];
    v22 = [v12 bottomAnchor];
    v13 = [*(*(a1 + 32) + 456) bottomAnchor];
    v14 = [v22 constraintEqualToAnchor:v13];
    v23[1] = v14;
    v15 = [*(a1 + 32) leadingAnchor];
    v16 = [*(*(a1 + 32) + 456) leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v23[2] = v17;
    v18 = [*(a1 + 32) trailingAnchor];
    v19 = [*(*(a1 + 32) + 456) trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v23[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v12 addConstraints:v21];
  }
}

- (id)_titleLabelFont
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:32770];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_messageLabelFont
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] variant:0 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)setMessageLabelText:(id)text
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7C8];
  textCopy = text;
  defaultParagraphStyle = [v4 defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setLineSpacing:1.5];
  [v7 setLineBreakMode:4];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12[0] = *MEMORY[0x1E69DB648];
  _messageLabelFont = [(SFLinkBanner *)self _messageLabelFont];
  v12[1] = *MEMORY[0x1E69DB688];
  v13[0] = _messageLabelFont;
  v13[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = [v8 initWithString:textCopy attributes:v10];

  [(UILabel *)self->_messageLabel setAttributedText:v11];
}

- (void)setOpenButtonTitle:(id)title
{
  v4 = [title copy];
  openButtonTitle = self->_openButtonTitle;
  self->_openButtonTitle = v4;

  openButton = [(SFLinkBanner *)self openButton];
  [openButton setTitle:self->_openButtonTitle forState:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFLinkBanner *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_open
{
  openActionHandler = self->_openActionHandler;
  if (openActionHandler)
  {
    openActionHandler[2](openActionHandler, self);
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
  v3.super_class = SFLinkBanner;
  [(SFLinkBanner *)&v3 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  if (margins.leading == 0.0)
  {
    margins.leading = 20.0;
  }

  if (margins.trailing == 0.0)
  {
    margins.trailing = 20.0;
  }

  v3.receiver = self;
  v3.super_class = SFLinkBanner;
  [(SFLinkBanner *)&v3 setDirectionalLayoutMargins:margins.top, margins.leading, margins.bottom, margins.trailing];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SFLinkBanner;
  [(SFLinkBanner *)&v14 layoutSubviews];
  [(_SFDimmingButton *)self->_openButton bounds];
  [(_SFDimmingButton *)self->_openButton _setCornerRadius:CGRectGetHeight(v15) * 0.482142857];
  [(UILabel *)self->_titleLabel bounds];
  Height = CGRectGetHeight(v16);
  v4 = llroundf(Height);
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
  *&v6 = v6;
  if (v4 <= llroundf(*&v6))
  {
    [(UILabel *)self->_messageLabel bounds];
    v7 = CGRectGetHeight(v17);
    v8 = llroundf(v7);
    font2 = [(UILabel *)self->_messageLabel font];
    [font2 lineHeight];
    *&v10 = v10;
    v11 = llroundf(*&v10);

    if (v8 <= v11)
    {
      v12 = 9.0;
      v13 = 2.0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 8.0;
  v13 = 4.0;
LABEL_6:
  [(NSLayoutConstraint *)self->_titleTopConstraint setConstant:v12];
  [(NSLayoutConstraint *)self->_messageBottomConstraint setConstant:v12];
  [(NSLayoutConstraint *)self->_messageTopConstraint setConstant:v13];
}

- (void)contentSizeCategoryDidChange
{
  _titleLabelFont = [(SFLinkBanner *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:_titleLabelFont];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  titleLabel = [(_SFDimmingButton *)self->_openButton titleLabel];
  [titleLabel setFont:v4];

  attributedText = [(UILabel *)self->_messageLabel attributedText];
  string = [attributedText string];
  [(SFLinkBanner *)self setMessageLabelText:string];
}

- (void)invalidateBannerLayout
{
  [(UILabel *)self->_titleLabel invalidateIntrinsicContentSize];
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel invalidateIntrinsicContentSize];
}

- (void)themeDidChange
{
  theme = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  overrideTintColor = [theme overrideTintColor];
  if (overrideTintColor)
  {
    p_openButton = &self->_openButton;
    [(_SFDimmingButton *)self->_openButton setDimmableBackgroundColor:overrideTintColor];
    [theme themeColor];
  }

  else
  {
    preferredButtonBackgroundColor = [(SFLinkBanner *)self preferredButtonBackgroundColor];
    p_openButton = &self->_openButton;
    [(_SFDimmingButton *)self->_openButton setDimmableBackgroundColor:preferredButtonBackgroundColor];

    [(SFLinkBanner *)self preferredButtonTintColor];
  }
  v6 = ;
  [(_SFDimmingButton *)*p_openButton setTintColor:v6];

  [(_SFDimmingButton *)*p_openButton setTintAdjustmentMode:overrideTintColor != 0];
}

- (void)setShouldHideIcon:(BOOL)icon
{
  if (self->_shouldHideIcon != icon)
  {
    iconCopy = icon;
    self->_shouldHideIcon = icon;
    [(UIImageView *)self->_icon setHidden:?];
    titleLeadingConstraint = self->_titleLeadingConstraint;

    [(NSLayoutConstraint *)titleLeadingConstraint setActive:!iconCopy];
  }
}

- (void)setDismissButtonHandler:(id)handler
{
  v4 = handler != 0;
  handlerCopy = handler;
  [(SFLinkBanner *)self _setShowsDismissButton:v4];
  v6 = _Block_copy(handlerCopy);

  dismissButtonHandler = self->_dismissButtonHandler;
  self->_dismissButtonHandler = v6;
}

- (void)_setShowsDismissButton:(BOOL)button
{
  v60[4] = *MEMORY[0x1E69E9840];
  dismissButton = self->_dismissButton;
  if ((((dismissButton == 0) ^ button) & 1) == 0)
  {
    if (button)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        objc_initWeak(&location, self);
        v5 = [SFCloseButton alloc];
        v6 = MEMORY[0x1E69DC628];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __39__SFLinkBanner__setShowsDismissButton___block_invoke;
        v53[3] = &unk_1E721C458;
        objc_copyWeak(&v54, &location);
        v7 = [v6 actionWithHandler:v53];
        v8 = [(SFCloseButton *)v5 initWithStyle:0 primaryAction:v7];
        v9 = self->_dismissButton;
        self->_dismissButton = v8;

        [(UIButton *)self->_dismissButton sizeToFit];
        [(SFLinkBanner *)self addSubview:self->_dismissButton];
        v41 = MEMORY[0x1E696ACD8];
        heightAnchor = [(UIButton *)self->_dismissButton heightAnchor];
        widthAnchor = [(UIButton *)self->_dismissButton widthAnchor];
        v47 = [heightAnchor constraintEqualToAnchor:widthAnchor];
        v60[0] = v47;
        centerYAnchor = [(UIButton *)self->_dismissButton centerYAnchor];
        centerYAnchor2 = [(SFLinkBanner *)self centerYAnchor];
        v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v60[1] = v10;
        trailingAnchor = [(UIButton *)self->_dismissButton trailingAnchor];
        layoutMarginsGuide = [(SFLinkBanner *)self layoutMarginsGuide];
        trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
        v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v60[2] = v14;
        trailingAnchor3 = [(_SFDimmingButton *)self->_openButton trailingAnchor];
        leadingAnchor = [(UIButton *)self->_dismissButton leadingAnchor];
        v17 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-12.0];
        v60[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
        [v41 activateConstraints:v18];

        v19 = MEMORY[0x1E696ACD8];
        openButtonTrailingConstraint = self->_openButtonTrailingConstraint;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&openButtonTrailingConstraint count:1];
        [v19 deactivateConstraints:v20];

        objc_destroyWeak(&v54);
        objc_destroyWeak(&location);
      }

      else
      {
        v52 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
        v50 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v52];
        v24 = [MEMORY[0x1E69DC738] systemButtonWithImage:v50 target:self action:sel__dismiss];
        v25 = self->_dismissButton;
        self->_dismissButton = v24;

        tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [(UIButton *)self->_dismissButton setTintColor:tertiaryLabelColor];

        [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(SFLinkBanner *)self addSubview:self->_dismissButton];
        v38 = MEMORY[0x1E696ACD8];
        widthAnchor2 = [(UIButton *)self->_dismissButton widthAnchor];
        v46 = [widthAnchor2 constraintEqualToConstant:28.0];
        v58[0] = v46;
        heightAnchor2 = [(UIButton *)self->_dismissButton heightAnchor];
        v42 = [heightAnchor2 constraintEqualToConstant:28.0];
        v58[1] = v42;
        leadingAnchor2 = [(UIButton *)self->_dismissButton leadingAnchor];
        layoutMarginsGuide2 = [(SFLinkBanner *)self layoutMarginsGuide];
        leadingAnchor3 = [layoutMarginsGuide2 leadingAnchor];
        v28 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
        v58[2] = v28;
        leadingAnchor4 = [(UIImageView *)self->_icon leadingAnchor];
        trailingAnchor4 = [(UIButton *)self->_dismissButton trailingAnchor];
        v31 = [leadingAnchor4 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
        v58[3] = v31;
        centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
        centerYAnchor4 = [(SFLinkBanner *)self centerYAnchor];
        v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v58[4] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
        [v38 activateConstraints:v35];

        v36 = MEMORY[0x1E696ACD8];
        iconLeadingConstraintToSuperview = self->_iconLeadingConstraintToSuperview;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&iconLeadingConstraintToSuperview count:1];
        [v36 deactivateConstraints:v37];
      }
    }

    else
    {
      [(UIButton *)dismissButton removeFromSuperview];
      v21 = self->_dismissButton;
      self->_dismissButton = 0;

      v22 = MEMORY[0x1E696ACD8];
      v56 = self->_iconLeadingConstraintToSuperview;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      [v22 activateConstraints:v23];
    }
  }
}

void __39__SFLinkBanner__setShowsDismissButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _dismiss];
    WeakRetained = v2;
  }
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