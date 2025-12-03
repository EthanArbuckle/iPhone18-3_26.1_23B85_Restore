@interface SFBannerCell
- (SFBannerCell)initWithCoder:(id)coder;
- (SFBannerCell)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)focusEffect;
- (void)_updateStyle;
- (void)configureUsingBanner:(id)banner;
- (void)setBannerStyle:(int64_t)style;
- (void)setDismissHandler:(id)handler;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation SFBannerCell

- (SFBannerCell)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v79[5] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = SFBannerCell;
  v5 = [(SFStartPageFilledBackgroundCell *)&v74 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_bannerStyle = style;
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v5 defaultBackgroundConfiguration];
    if (([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled] & 1) == 0)
    {
      v8 = [(UIVisualEffectView *)SFBannerBackgroundView sf_startPageCellBackgroundEffectViewWithShadow:0];
      backgroundView = v6->_backgroundView;
      v6->_backgroundView = v8;

      [(SFBannerBackgroundView *)v6->_backgroundView _setGroupName:0];
      [defaultBackgroundConfiguration setCustomView:v6->_backgroundView];
    }

    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFBannerCell *)v6 setBackgroundConfiguration:defaultBackgroundConfiguration];
    contentView = [(SFBannerCell *)v6 contentView];
    v73 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    v11 = [MEMORY[0x1E69DCC10] sf_startPageBannerTitleLabelWithFont:v73];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v11;

    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v6->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    messageLabel = v6->_messageLabel;
    v6->_messageLabel = v13;

    [(UILabel *)v6->_messageLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_messageLabel setNumberOfLines:0];
    [(UILabel *)v6->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v6->_messageLabel setContentHuggingPriority:1 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v6->_messageLabel setContentCompressionResistancePriority:1 forAxis:v16];
    [contentView addSubview:v6->_messageLabel];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(UIButton *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v17 _sf_setMatchesIntrinsicContentSize];
    v72 = defaultBackgroundConfiguration;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v19 = MEMORY[0x1E69DC888];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __makeDismissButton_block_invoke_0;
    v75[3] = &unk_1E721D228;
    v76 = secondaryLabelColor;
    v20 = secondaryLabelColor;
    v21 = [v19 colorWithDynamicProvider:v75];
    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v23 = [v22 imageWithTintColor:v21 renderingMode:1];
    [(UIButton *)v17 setTintColor:v20];
    [(UIButton *)v17 setImage:v22 forState:0];
    [(UIButton *)v17 setImage:v23 forState:1];

    dismissButton = v6->_dismissButton;
    v6->_dismissButton = v17;

    [(UIButton *)v6->_dismissButton addTarget:v6 action:sel__dismiss_ forControlEvents:0x2000];
    v71 = contentView;
    [contentView addSubview:v6->_dismissButton];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v57 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIButton *)v6->_dismissButton topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v79[0] = v65;
    trailingAnchor = [(UIButton *)v6->_dismissButton trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v79[1] = v59;
    bottomAnchor = [(UIButton *)v6->_dismissButton bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v26 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v79[2] = v26;
    leadingAnchor = [(UILabel *)v6->_messageLabel leadingAnchor];
    v56 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v79[3] = v29;
    bottomAnchor3 = [(UILabel *)v6->_messageLabel bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v79[4] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
    [v57 activateConstraints:v33];

    topAnchor3 = [(UILabel *)v6->_messageLabel topAnchor];
    topAnchor4 = [v56 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v78[0] = v36;
    leadingAnchor3 = [(UIButton *)v6->_dismissButton leadingAnchor];
    trailingAnchor3 = [(UILabel *)v6->_messageLabel trailingAnchor];
    v39 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
    v78[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    minimalLayoutConstraints = v6->_minimalLayoutConstraints;
    v6->_minimalLayoutConstraints = v40;

    topAnchor5 = [(UILabel *)v6->_titleLabel topAnchor];
    topAnchor6 = [v56 topAnchor];
    v66 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v77[0] = v66;
    leadingAnchor4 = [(UILabel *)v6->_titleLabel leadingAnchor];
    leadingAnchor5 = [v56 leadingAnchor];
    v60 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v77[1] = v60;
    trailingAnchor4 = [(UILabel *)v6->_titleLabel trailingAnchor];
    trailingAnchor5 = [v56 trailingAnchor];
    v43 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v77[2] = v43;
    topAnchor7 = [(UILabel *)v6->_messageLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v6->_titleLabel bottomAnchor];
    v46 = [topAnchor7 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:1.0];
    v77[3] = v46;
    trailingAnchor6 = [(UILabel *)v6->_messageLabel trailingAnchor];
    trailingAnchor7 = [v56 trailingAnchor];
    v49 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v77[4] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];
    prominentLayoutConstraints = v6->_prominentLayoutConstraints;
    v6->_prominentLayoutConstraints = v50;

    [(SFBannerCell *)v6 _updateStyle];
    v52 = v6;
  }

  return v6;
}

- (SFBannerCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFBannerCell;
  return [(SFBannerCell *)&v4 initWithCoder:coder];
}

- (void)_updateStyle
{
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_minimalLayoutConstraints active:self->_bannerStyle == 0];
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_prominentLayoutConstraints active:self->_bannerStyle == 1];
  if (([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled] & 1) == 0)
  {
    [(SFBannerBackgroundView *)self->_backgroundView setBannerStyle:self->_bannerStyle];
  }

  [(UIButton *)self->_dismissButton setHidden:self->_dismissHandler == 0];
  [(UILabel *)self->_titleLabel setHidden:self->_bannerStyle == 0];
  bannerStyle = self->_bannerStyle;
  if (bannerStyle == 1)
  {
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    p_messageLabel = &self->_messageLabel;
    [(UILabel *)self->_messageLabel setFont:v10];

    [(UILabel *)self->_messageLabel setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    if (bannerStyle)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v5 = [v4 fontDescriptorWithSymbolicTraits:0];

    v6 = MEMORY[0x1E69DB878];
    [v5 pointSize];
    v7 = [v6 fontWithDescriptor:v5 size:?];

    p_messageLabel = &self->_messageLabel;
    [(UILabel *)self->_messageLabel setFont:v7];

    [(UILabel *)self->_messageLabel setTextAlignment:4];
    labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  [(UILabel *)*p_messageLabel setTextColor:labelColor];

  UIEdgeInsetsMakeWithEdges();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  contentView = [(SFBannerCell *)self contentView];
  [contentView setLayoutMargins:{v12, v14, v16, v18}];
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(SFBannerCell *)self bounds];
  v3 = *MEMORY[0x1E69796E8];

  return [v2 effectWithRoundedRect:v3 cornerRadius:? curve:?];
}

- (void)configureUsingBanner:(id)banner
{
  bannerCopy = banner;
  image = [bannerCopy image];
  if (image)
  {
    v5 = MEMORY[0x1E696AAB0];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:image];
    title4 = [v5 attributedStringWithAttachment:v6];

    title = [bannerCopy title];

    if (title)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
      if ([(UIView *)self _sf_usesLeftToRightLayout])
      {
        [v9 appendAttributedString:title4];
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v10];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        title2 = [bannerCopy title];
        v13 = [v11 initWithString:title2];
        [v9 appendAttributedString:v13];
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        title3 = [bannerCopy title];
        v16 = [v14 initWithString:title3];
        [v9 appendAttributedString:v16];

        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v17];

        [v9 appendAttributedString:title4];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v9];
    }

    else
    {
      [(UILabel *)self->_titleLabel setAttributedText:title4];
    }
  }

  else
  {
    title4 = [bannerCopy title];
    [(UILabel *)self->_titleLabel setText:title4];
  }

  message = [bannerCopy message];
  [(UILabel *)self->_messageLabel setText:message];

  action = [bannerCopy action];
  [(SFBannerCell *)self setDismissHandler:action];

  -[SFBannerCell setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [bannerCopy userInterfaceStyle]);
  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setMessage:(id)message
{
  [(UILabel *)self->_messageLabel setText:message];

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v4;

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setBannerStyle:(int64_t)style
{
  if (self->_bannerStyle != style)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_bannerStyle = style;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__SFBannerCell_setBannerStyle___block_invoke;
    v5[3] = &unk_1E721B360;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

@end