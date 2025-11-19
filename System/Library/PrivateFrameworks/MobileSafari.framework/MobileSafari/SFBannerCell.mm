@interface SFBannerCell
- (SFBannerCell)initWithCoder:(id)a3;
- (SFBannerCell)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)focusEffect;
- (void)_updateStyle;
- (void)configureUsingBanner:(id)a3;
- (void)setBannerStyle:(int64_t)a3;
- (void)setDismissHandler:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SFBannerCell

- (SFBannerCell)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v79[5] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = SFBannerCell;
  v5 = [(SFStartPageFilledBackgroundCell *)&v74 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_bannerStyle = a4;
    v7 = [(SFStartPageFilledBackgroundCell *)v5 defaultBackgroundConfiguration];
    if (([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled] & 1) == 0)
    {
      v8 = [(UIVisualEffectView *)SFBannerBackgroundView sf_startPageCellBackgroundEffectViewWithShadow:0];
      backgroundView = v6->_backgroundView;
      v6->_backgroundView = v8;

      [(SFBannerBackgroundView *)v6->_backgroundView _setGroupName:0];
      [v7 setCustomView:v6->_backgroundView];
    }

    [v7 setCornerRadius:20.0];
    [(SFBannerCell *)v6 setBackgroundConfiguration:v7];
    v10 = [(SFBannerCell *)v6 contentView];
    v73 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    v11 = [MEMORY[0x1E69DCC10] sf_startPageBannerTitleLabelWithFont:v73];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v11;

    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v6->_titleLabel];
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
    [v10 addSubview:v6->_messageLabel];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(UIButton *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v17 _sf_setMatchesIntrinsicContentSize];
    v72 = v7;
    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v19 = MEMORY[0x1E69DC888];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __makeDismissButton_block_invoke_0;
    v75[3] = &unk_1E721D228;
    v76 = v18;
    v20 = v18;
    v21 = [v19 colorWithDynamicProvider:v75];
    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v23 = [v22 imageWithTintColor:v21 renderingMode:1];
    [(UIButton *)v17 setTintColor:v20];
    [(UIButton *)v17 setImage:v22 forState:0];
    [(UIButton *)v17 setImage:v23 forState:1];

    dismissButton = v6->_dismissButton;
    v6->_dismissButton = v17;

    [(UIButton *)v6->_dismissButton addTarget:v6 action:sel__dismiss_ forControlEvents:0x2000];
    v71 = v10;
    [v10 addSubview:v6->_dismissButton];
    v25 = [v10 layoutMarginsGuide];
    v57 = MEMORY[0x1E696ACD8];
    v69 = [(UIButton *)v6->_dismissButton topAnchor];
    v67 = [v25 topAnchor];
    v65 = [v69 constraintEqualToAnchor:v67];
    v79[0] = v65;
    v63 = [(UIButton *)v6->_dismissButton trailingAnchor];
    v61 = [v25 trailingAnchor];
    v59 = [v63 constraintEqualToAnchor:v61];
    v79[1] = v59;
    v55 = [(UIButton *)v6->_dismissButton bottomAnchor];
    v54 = [v25 bottomAnchor];
    v26 = [v55 constraintLessThanOrEqualToAnchor:v54];
    v79[2] = v26;
    v27 = [(UILabel *)v6->_messageLabel leadingAnchor];
    v56 = v25;
    v28 = [v25 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v79[3] = v29;
    v30 = [(UILabel *)v6->_messageLabel bottomAnchor];
    v31 = [v25 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v79[4] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
    [v57 activateConstraints:v33];

    v34 = [(UILabel *)v6->_messageLabel topAnchor];
    v35 = [v56 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v78[0] = v36;
    v37 = [(UIButton *)v6->_dismissButton leadingAnchor];
    v38 = [(UILabel *)v6->_messageLabel trailingAnchor];
    v39 = [v37 constraintEqualToSystemSpacingAfterAnchor:v38 multiplier:1.0];
    v78[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    minimalLayoutConstraints = v6->_minimalLayoutConstraints;
    v6->_minimalLayoutConstraints = v40;

    v70 = [(UILabel *)v6->_titleLabel topAnchor];
    v68 = [v56 topAnchor];
    v66 = [v70 constraintEqualToAnchor:v68];
    v77[0] = v66;
    v64 = [(UILabel *)v6->_titleLabel leadingAnchor];
    v62 = [v56 leadingAnchor];
    v60 = [v64 constraintEqualToAnchor:v62];
    v77[1] = v60;
    v58 = [(UILabel *)v6->_titleLabel trailingAnchor];
    v42 = [v56 trailingAnchor];
    v43 = [v58 constraintEqualToAnchor:v42];
    v77[2] = v43;
    v44 = [(UILabel *)v6->_messageLabel topAnchor];
    v45 = [(UILabel *)v6->_titleLabel bottomAnchor];
    v46 = [v44 constraintEqualToSystemSpacingBelowAnchor:v45 multiplier:1.0];
    v77[3] = v46;
    v47 = [(UILabel *)v6->_messageLabel trailingAnchor];
    v48 = [v56 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v77[4] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];
    prominentLayoutConstraints = v6->_prominentLayoutConstraints;
    v6->_prominentLayoutConstraints = v50;

    [(SFBannerCell *)v6 _updateStyle];
    v52 = v6;
  }

  return v6;
}

- (SFBannerCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFBannerCell;
  return [(SFBannerCell *)&v4 initWithCoder:a3];
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
    v9 = [MEMORY[0x1E69DC888] labelColor];
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
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  [(UILabel *)*p_messageLabel setTextColor:v9];

  UIEdgeInsetsMakeWithEdges();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SFBannerCell *)self contentView];
  [v19 setLayoutMargins:{v12, v14, v16, v18}];
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(SFBannerCell *)self bounds];
  v3 = *MEMORY[0x1E69796E8];

  return [v2 effectWithRoundedRect:v3 cornerRadius:? curve:?];
}

- (void)configureUsingBanner:(id)a3
{
  v20 = a3;
  v4 = [v20 image];
  if (v4)
  {
    v5 = MEMORY[0x1E696AAB0];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v4];
    v7 = [v5 attributedStringWithAttachment:v6];

    v8 = [v20 title];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
      if ([(UIView *)self _sf_usesLeftToRightLayout])
      {
        [v9 appendAttributedString:v7];
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v10];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v12 = [v20 title];
        v13 = [v11 initWithString:v12];
        [v9 appendAttributedString:v13];
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        v15 = [v20 title];
        v16 = [v14 initWithString:v15];
        [v9 appendAttributedString:v16];

        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v17];

        [v9 appendAttributedString:v7];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v9];
    }

    else
    {
      [(UILabel *)self->_titleLabel setAttributedText:v7];
    }
  }

  else
  {
    v7 = [v20 title];
    [(UILabel *)self->_titleLabel setText:v7];
  }

  v18 = [v20 message];
  [(UILabel *)self->_messageLabel setText:v18];

  v19 = [v20 action];
  [(SFBannerCell *)self setDismissHandler:v19];

  -[SFBannerCell setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v20 userInterfaceStyle]);
  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setMessage:(id)a3
{
  [(UILabel *)self->_messageLabel setText:a3];

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v4;

  [(SFBannerCell *)self setNeedsLayout];
}

- (void)setBannerStyle:(int64_t)a3
{
  if (self->_bannerStyle != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_bannerStyle = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__SFBannerCell_setBannerStyle___block_invoke;
    v5[3] = &unk_1E721B360;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

@end