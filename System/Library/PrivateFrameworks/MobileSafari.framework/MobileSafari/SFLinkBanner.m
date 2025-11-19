@interface SFLinkBanner
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFLinkBanner)init;
- (id)_messageLabelFont;
- (id)_titleLabelFont;
- (void)_dismiss;
- (void)_open;
- (void)_setShowsDismissButton:(BOOL)a3;
- (void)contentSizeCategoryDidChange;
- (void)invalidateBannerLayout;
- (void)layoutSubviews;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setDismissButtonHandler:(id)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setMessageLabelText:(id)a3;
- (void)setOpenButtonTitle:(id)a3;
- (void)setShouldHideIcon:(BOOL)a3;
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
    v7 = [(SFLinkBanner *)v4 layoutMarginsGuide];
    v74 = [v7 leadingAnchor];

    v8 = [(UIImageView *)v4->_icon leadingAnchor];
    v9 = [v8 constraintEqualToAnchor:v74];
    v73 = v3;
    iconLeadingConstraintToSuperview = v4->_iconLeadingConstraintToSuperview;
    v4->_iconLeadingConstraintToSuperview = v9;

    v69 = MEMORY[0x1E696ACD8];
    v70 = [(UIImageView *)v4->_icon heightAnchor];
    [objc_opt_class() iconHeight];
    v11 = [v70 constraintEqualToConstant:?];
    v80[0] = v11;
    v12 = [(UIImageView *)v4->_icon widthAnchor];
    v13 = [(UIImageView *)v4->_icon heightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v80[1] = v14;
    v80[2] = v4->_iconLeadingConstraintToSuperview;
    v15 = [(UIImageView *)v4->_icon centerYAnchor];
    v16 = [(SFLinkBanner *)v4 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v80[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    [v69 activateConstraints:v18];

    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v19;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setNumberOfLines:3];
    v21 = [(SFLinkBanner *)v4 _titleLabelFont];
    [(UILabel *)v4->_titleLabel setFont:v21];

    [(SFLinkBanner *)v4 addSubview:v4->_titleLabel];
    v22 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v23 = [(UIImageView *)v4->_icon trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:8.0];
    titleLeadingConstraint = v4->_titleLeadingConstraint;
    v4->_titleLeadingConstraint = v24;

    v26 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v27 = [v26 constraintEqualToAnchor:v74];

    v28 = v27;
    v71 = v27;
    LODWORD(v29) = 1144733696;
    [v27 setPriority:v29];
    v30 = [(UILabel *)v4->_titleLabel topAnchor];
    v31 = [(SFLinkBanner *)v4 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:9.0];
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
    v39 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_messageLabel setTextColor:v39];

    [(SFLinkBanner *)v4 addSubview:v4->_messageLabel];
    v40 = [(UILabel *)v4->_messageLabel topAnchor];
    v41 = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:2.0];
    messageTopConstraint = v4->_messageTopConstraint;
    v4->_messageTopConstraint = v42;

    v44 = [(SFLinkBanner *)v4 bottomAnchor];
    v45 = [(UILabel *)v4->_messageLabel bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:9.0];
    messageBottomConstraint = v4->_messageBottomConstraint;
    v4->_messageBottomConstraint = v46;

    v48 = MEMORY[0x1E696ACD8];
    v78[0] = v4->_messageTopConstraint;
    v49 = [(UILabel *)v4->_messageLabel leadingAnchor];
    v50 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
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
    v56 = [(SFLinkBanner *)v4 preferredButtonTintColor];
    [(_SFDimmingButton *)v4->_openButton setTintColor:v56];

    v57 = [(SFLinkBanner *)v4 preferredButtonBackgroundColor];
    [(_SFDimmingButton *)v4->_openButton setDimmableBackgroundColor:v57];

    [(_SFDimmingButton *)v4->_openButton setContentEdgeInsets:5.0, 13.0, 5.0, 13.0];
    v58 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    v59 = [(_SFDimmingButton *)v4->_openButton titleLabel];
    [v59 setFont:v58];

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
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:32770];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_messageLabelFont
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] variant:0 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)setMessageLabelText:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7C8];
  v5 = a3;
  v6 = [v4 defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setLineSpacing:1.5];
  [v7 setLineBreakMode:4];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12[0] = *MEMORY[0x1E69DB648];
  v9 = [(SFLinkBanner *)self _messageLabelFont];
  v12[1] = *MEMORY[0x1E69DB688];
  v13[0] = v9;
  v13[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = [v8 initWithString:v5 attributes:v10];

  [(UILabel *)self->_messageLabel setAttributedText:v11];
}

- (void)setOpenButtonTitle:(id)a3
{
  v4 = [a3 copy];
  openButtonTitle = self->_openButtonTitle;
  self->_openButtonTitle = v4;

  v6 = [(SFLinkBanner *)self openButton];
  [v6 setTitle:self->_openButtonTitle forState:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFLinkBanner *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
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
  v3.super_class = SFLinkBanner;
  [(SFLinkBanner *)&v3 setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  if (a3.leading == 0.0)
  {
    a3.leading = 20.0;
  }

  if (a3.trailing == 0.0)
  {
    a3.trailing = 20.0;
  }

  v3.receiver = self;
  v3.super_class = SFLinkBanner;
  [(SFLinkBanner *)&v3 setDirectionalLayoutMargins:a3.top, a3.leading, a3.bottom, a3.trailing];
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
  v5 = [(UILabel *)self->_titleLabel font];
  [v5 lineHeight];
  *&v6 = v6;
  if (v4 <= llroundf(*&v6))
  {
    [(UILabel *)self->_messageLabel bounds];
    v7 = CGRectGetHeight(v17);
    v8 = llroundf(v7);
    v9 = [(UILabel *)self->_messageLabel font];
    [v9 lineHeight];
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
  v3 = [(SFLinkBanner *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  v5 = [(_SFDimmingButton *)self->_openButton titleLabel];
  [v5 setFont:v4];

  v7 = [(UILabel *)self->_messageLabel attributedText];
  v6 = [v7 string];
  [(SFLinkBanner *)self setMessageLabelText:v6];
}

- (void)invalidateBannerLayout
{
  [(UILabel *)self->_titleLabel invalidateIntrinsicContentSize];
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel invalidateIntrinsicContentSize];
}

- (void)themeDidChange
{
  v7 = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:v7];
  v3 = [v7 overrideTintColor];
  if (v3)
  {
    p_openButton = &self->_openButton;
    [(_SFDimmingButton *)self->_openButton setDimmableBackgroundColor:v3];
    [v7 themeColor];
  }

  else
  {
    v5 = [(SFLinkBanner *)self preferredButtonBackgroundColor];
    p_openButton = &self->_openButton;
    [(_SFDimmingButton *)self->_openButton setDimmableBackgroundColor:v5];

    [(SFLinkBanner *)self preferredButtonTintColor];
  }
  v6 = ;
  [(_SFDimmingButton *)*p_openButton setTintColor:v6];

  [(_SFDimmingButton *)*p_openButton setTintAdjustmentMode:v3 != 0];
}

- (void)setShouldHideIcon:(BOOL)a3
{
  if (self->_shouldHideIcon != a3)
  {
    v4 = a3;
    self->_shouldHideIcon = a3;
    [(UIImageView *)self->_icon setHidden:?];
    titleLeadingConstraint = self->_titleLeadingConstraint;

    [(NSLayoutConstraint *)titleLeadingConstraint setActive:!v4];
  }
}

- (void)setDismissButtonHandler:(id)a3
{
  v4 = a3 != 0;
  v5 = a3;
  [(SFLinkBanner *)self _setShowsDismissButton:v4];
  v6 = _Block_copy(v5);

  dismissButtonHandler = self->_dismissButtonHandler;
  self->_dismissButtonHandler = v6;
}

- (void)_setShowsDismissButton:(BOOL)a3
{
  v60[4] = *MEMORY[0x1E69E9840];
  dismissButton = self->_dismissButton;
  if ((((dismissButton == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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
        v51 = [(UIButton *)self->_dismissButton heightAnchor];
        v49 = [(UIButton *)self->_dismissButton widthAnchor];
        v47 = [v51 constraintEqualToAnchor:v49];
        v60[0] = v47;
        v45 = [(UIButton *)self->_dismissButton centerYAnchor];
        v43 = [(SFLinkBanner *)self centerYAnchor];
        v10 = [v45 constraintEqualToAnchor:v43];
        v60[1] = v10;
        v11 = [(UIButton *)self->_dismissButton trailingAnchor];
        v12 = [(SFLinkBanner *)self layoutMarginsGuide];
        v13 = [v12 trailingAnchor];
        v14 = [v11 constraintEqualToAnchor:v13];
        v60[2] = v14;
        v15 = [(_SFDimmingButton *)self->_openButton trailingAnchor];
        v16 = [(UIButton *)self->_dismissButton leadingAnchor];
        v17 = [v15 constraintEqualToAnchor:v16 constant:-12.0];
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

        v26 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [(UIButton *)self->_dismissButton setTintColor:v26];

        [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(SFLinkBanner *)self addSubview:self->_dismissButton];
        v38 = MEMORY[0x1E696ACD8];
        v48 = [(UIButton *)self->_dismissButton widthAnchor];
        v46 = [v48 constraintEqualToConstant:28.0];
        v58[0] = v46;
        v44 = [(UIButton *)self->_dismissButton heightAnchor];
        v42 = [v44 constraintEqualToConstant:28.0];
        v58[1] = v42;
        v39 = [(UIButton *)self->_dismissButton leadingAnchor];
        v40 = [(SFLinkBanner *)self layoutMarginsGuide];
        v27 = [v40 leadingAnchor];
        v28 = [v39 constraintEqualToAnchor:v27];
        v58[2] = v28;
        v29 = [(UIImageView *)self->_icon leadingAnchor];
        v30 = [(UIButton *)self->_dismissButton trailingAnchor];
        v31 = [v29 constraintEqualToSystemSpacingAfterAnchor:v30 multiplier:1.0];
        v58[3] = v31;
        v32 = [(UIButton *)self->_dismissButton centerYAnchor];
        v33 = [(SFLinkBanner *)self centerYAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
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