@interface SFInteractiveBannerCell
- (SFInteractiveBannerCell)initWithFrame:(CGRect)frame;
- (void)_actionButtonTapped:(id)tapped;
- (void)_removeActionButton;
- (void)_updateActionButtonWithText:(id)text;
- (void)configureUsingBanner:(id)banner;
- (void)setBackdropCaptureView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFInteractiveBannerCell

- (void)_removeActionButton
{
  [(UIButton *)self->_actionButton removeFromSuperview];
  actionButton = self->_actionButton;
  self->_actionButton = 0;
}

- (SFInteractiveBannerCell)initWithFrame:(CGRect)frame
{
  v72[12] = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = SFInteractiveBannerCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v71 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    if (([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled] & 1) == 0)
    {
      v6 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:1];
      backgroundEffectView = v4->_backgroundEffectView;
      v4->_backgroundEffectView = v6;

      [defaultBackgroundConfiguration setCustomView:v4->_backgroundEffectView];
    }

    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFInteractiveBannerCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
    contentView = [(SFInteractiveBannerCell *)v4 contentView];
    [contentView setLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
    v70 = defaultBackgroundConfiguration;
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    leadingLabel = v4->_leadingLabel;
    v4->_leadingLabel = v9;

    [(UILabel *)v4->_leadingLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_leadingLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    [(UILabel *)v4->_leadingLabel setFont:v11];

    [(UILabel *)v4->_leadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v4->_leadingLabel setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v4->_leadingLabel setContentHuggingPriority:0 forAxis:v13];
    [contentView addSubview:v4->_leadingLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    captionLabel = v4->_captionLabel;
    v4->_captionLabel = v14;

    [(UILabel *)v4->_captionLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_captionLabel setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v17 = [v16 fontDescriptorWithSymbolicTraits:0];

    v18 = MEMORY[0x1E69DB878];
    [v17 pointSize];
    v19 = [v18 fontWithDescriptor:v17 size:?];

    [(UILabel *)v4->_captionLabel setFont:v19];
    [(UILabel *)v4->_captionLabel setNumberOfLines:0];
    [(UILabel *)v4->_captionLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_captionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = contentView;
    [contentView addSubview:v4->_captionLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textLayoutGuide = v4->_textLayoutGuide;
    v4->_textLayoutGuide = v20;

    [(UILayoutGuide *)v4->_textLayoutGuide setIdentifier:@"SFPrivacyReportBannerText"];
    [contentView addLayoutGuide:v4->_textLayoutGuide];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v52 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v72[0] = v66;
    widthAnchor = [(UILayoutGuide *)v4->_textLayoutGuide widthAnchor];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v62 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v72[1] = v62;
    topAnchor = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v72[2] = v59;
    heightAnchor = [(UILayoutGuide *)v4->_textLayoutGuide heightAnchor];
    v64 = layoutMarginsGuide;
    heightAnchor2 = [layoutMarginsGuide heightAnchor];
    v56 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v72[3] = v56;
    centerYAnchor = [(UILayoutGuide *)v4->_textLayoutGuide centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    LODWORD(v23) = 1144750080;
    v51 = [v53 sf_withPriority:v23];
    v72[4] = v51;
    leadingAnchor3 = [(UILabel *)v4->_leadingLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v72[5] = v48;
    topAnchor3 = [(UILabel *)v4->_leadingLabel topAnchor];
    topAnchor4 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v72[6] = v45;
    heightAnchor3 = [(UILabel *)v4->_leadingLabel heightAnchor];
    heightAnchor4 = [(UILayoutGuide *)v4->_textLayoutGuide heightAnchor];
    v42 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v72[7] = v42;
    leadingAnchor5 = [(UILabel *)v4->_captionLabel leadingAnchor];
    trailingAnchor = [(UILabel *)v4->_leadingLabel trailingAnchor];
    v39 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:20.0];
    v72[8] = v39;
    trailingAnchor2 = [(UILabel *)v4->_captionLabel trailingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)v4->_textLayoutGuide trailingAnchor];
    v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v72[9] = v25;
    topAnchor5 = [(UILabel *)v4->_captionLabel topAnchor];
    topAnchor6 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    v28 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v72[10] = v28;
    heightAnchor5 = [(UILabel *)v4->_captionLabel heightAnchor];
    heightAnchor6 = [(UILayoutGuide *)v4->_textLayoutGuide heightAnchor];
    v31 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v72[11] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:12];
    [v52 activateConstraints:v32];

    [(SFInteractiveBannerCell *)v4 _updateVibrancy];
    v33 = v4->_backgroundEffectView;
    sf_startPageBackgroundTraits = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v35 = [(UIVisualEffectView *)v33 registerForTraitChanges:sf_startPageBackgroundTraits withTarget:v4 action:sel__updateVibrancy];

    v36 = v4;
  }

  return v4;
}

- (void)configureUsingBanner:(id)banner
{
  bannerCopy = banner;
  message = [bannerCopy message];
  [(UILabel *)self->_captionLabel setText:message];

  action = [bannerCopy action];
  buttonAction = self->_buttonAction;
  self->_buttonAction = action;

  title = [bannerCopy title];
  [(SFInteractiveBannerCell *)self _updateActionButtonWithText:title];

  v9 = MEMORY[0x1E69DB7F0];
  image = [bannerCopy image];

  v13 = [v9 textAttachmentWithImage:image];

  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v12 appendAttributedString:v11];
  [(UILabel *)self->_leadingLabel setAttributedText:v12];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SFInteractiveBannerCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFInteractiveBannerCell;
  [(SFInteractiveBannerCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    backgroundEffectView = self->_backgroundEffectView;
    configurationState = [(SFInteractiveBannerCell *)self configurationState];
    [(UIVisualEffectView *)backgroundEffectView sf_setHighlighted:highlightedCopy cellState:configurationState];
  }
}

- (void)_actionButtonTapped:(id)tapped
{
  buttonAction = self->_buttonAction;
  if (buttonAction)
  {
    buttonAction[2]();
  }
}

- (void)_updateActionButtonWithText:(id)text
{
  v30[4] = *MEMORY[0x1E69E9840];
  actionButton = self->_actionButton;
  if (actionButton)
  {
    textCopy = text;
    [(UIButton *)actionButton setTitle:textCopy forState:0];
  }

  else
  {
    v6 = MEMORY[0x1E69DC740];
    textCopy2 = text;
    textCopy = [v6 grayButtonConfiguration];
    [textCopy setContentInsets:{6.0, 14.0, 6.0, 14.0}];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textCopy setBaseForegroundColor:labelColor];

    [textCopy setCornerStyle:4];
    v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:textCopy primaryAction:0];
    v10 = self->_actionButton;
    self->_actionButton = v9;

    [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(UIButton *)self->_actionButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)self->_actionButton setTitle:textCopy2 forState:0];
    [(UIButton *)self->_actionButton addTarget:self action:sel__actionButtonTapped_ forControlEvents:0x2000];
    contentView = [(SFInteractiveBannerCell *)self contentView];
    [contentView addSubview:self->_actionButton];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v24 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
    leadingAnchor2 = [(UILabel *)self->_captionLabel leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v26;
    trailingAnchor = [(UIButton *)self->_actionButton trailingAnchor];
    v13 = layoutMarginsGuide;
    v23 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v30[1] = v15;
    topAnchor = [(UIButton *)self->_actionButton topAnchor];
    bottomAnchor = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
    v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:12.0];
    v30[2] = v18;
    bottomAnchor2 = [(UIButton *)self->_actionButton bottomAnchor];
    bottomAnchor3 = [v13 bottomAnchor];
    v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v30[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v22];
  }
}

- (void)setBackdropCaptureView:(id)view
{
  viewCopy = view;
  _captureView = [(UIVisualEffectView *)self->_backgroundEffectView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundEffectView _setCaptureView:viewCopy];
  }
}

@end