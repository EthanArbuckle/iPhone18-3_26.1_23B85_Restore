@interface SFSiteCardCell
- (NSString)caption;
- (NSString)subtitle;
- (NSString)title;
- (SFSiteCardCell)initWithCoder:(id)coder;
- (SFSiteCardCell)initWithFrame:(CGRect)frame;
- (id)focusEffect;
- (void)_updateVibrancy;
- (void)setBackdropCaptureView:(id)view;
- (void)setBadge:(id)badge;
- (void)setCaption:(id)caption;
- (void)setCaptionText:(id)text icon:(id)icon;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFSiteCardCell

- (SFSiteCardCell)initWithFrame:(CGRect)frame
{
  v112[18] = *MEMORY[0x1E69E9840];
  v111.receiver = self;
  v111.super_class = SFSiteCardCell;
  v3 = [(SFSiteCardCell *)&v111 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:1];
    backgroundEffectView = v3->_backgroundEffectView;
    v3->_backgroundEffectView = v4;

    defaultBackgroundConfiguration = [(SFSiteCardCell *)v3 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCustomView:v3->_backgroundEffectView];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFSiteCardCell *)v3 setBackgroundConfiguration:defaultBackgroundConfiguration];
    v55 = defaultBackgroundConfiguration;
    contentView = [(SFSiteCardCell *)v3 contentView];
    UIEdgeInsetsMakeWithEdges();
    [contentView setLayoutMargins:?];
    v7 = objc_alloc_init(_SFSiteIconView);
    imageView = v3->_imageView;
    v3->_imageView = v7;

    [(_SFSiteIconView *)v3->_imageView _setContinuousCornerRadius:3.0];
    [(_SFSiteIconView *)v3->_imageView setClipsToBounds:1];
    [(_SFSiteIconView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_imageView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textLayoutGuide = v3->_textLayoutGuide;
    v3->_textLayoutGuide = v9;

    [(UILayoutGuide *)v3->_textLayoutGuide setIdentifier:@"SFSiteCardText"];
    [contentView addLayoutGuide:v3->_textLayoutGuide];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v11;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v13 = *MEMORY[0x1E69DDC50];
    [(UILabel *)v3->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v15 = [v14 fontDescriptorWithSymbolicTraits:32770];

    v16 = MEMORY[0x1E69DB878];
    [v15 pointSize];
    v17 = [v16 fontWithDescriptor:v15 size:?];

    [(UILabel *)v3->_titleLabel setFont:v17];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    [contentView addSubview:v3->_titleLabel];
    v19 = objc_alloc_init(MEMORY[0x1E69DD298]);
    subtitleEffectView = v3->_subtitleEffectView;
    v3->_subtitleEffectView = v19;

    [(UIVisualEffectView *)v3->_subtitleEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_subtitleEffectView];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v21;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_subtitleLabel setMaximumContentSizeCategory:v13];
    v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v24 = [v23 fontDescriptorWithSymbolicTraits:0];

    v25 = MEMORY[0x1E69DB878];
    [v24 pointSize];
    v26 = [v25 fontWithDescriptor:v24 size:?];

    [(UILabel *)v3->_subtitleLabel setFont:v26];
    [(UILabel *)v3->_subtitleLabel setLineBreakMode:5];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:secondaryLabelColor];

    contentView2 = [(UIVisualEffectView *)v3->_subtitleEffectView contentView];
    [contentView2 addSubview:v3->_subtitleLabel];

    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v56 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(_SFSiteIconView *)v3->_imageView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v101 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v112[0] = v101;
    leadingAnchor3 = [(UILayoutGuide *)v3->_textLayoutGuide leadingAnchor];
    trailingAnchor = [(_SFSiteIconView *)v3->_imageView trailingAnchor];
    v98 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v112[1] = v98;
    trailingAnchor2 = [(UILayoutGuide *)v3->_textLayoutGuide trailingAnchor];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v95 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v112[2] = v95;
    topAnchor = [(_SFSiteIconView *)v3->_imageView topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v92 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v112[3] = v92;
    centerYAnchor = [(_SFSiteIconView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v89 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v112[4] = v89;
    bottomAnchor = [(_SFSiteIconView *)v3->_imageView bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v86 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v112[5] = v86;
    topAnchor3 = [(UILayoutGuide *)v3->_textLayoutGuide topAnchor];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v83 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v112[6] = v83;
    bottomAnchor3 = [(UILayoutGuide *)v3->_textLayoutGuide bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v80 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v112[7] = v80;
    widthAnchor = [(_SFSiteIconView *)v3->_imageView widthAnchor];
    v78 = [widthAnchor constraintEqualToConstant:78.0];
    LODWORD(v29) = 1148682240;
    v77 = [v78 sf_withPriority:v29];
    v112[8] = v77;
    heightAnchor = [(_SFSiteIconView *)v3->_imageView heightAnchor];
    widthAnchor2 = [(_SFSiteIconView *)v3->_imageView widthAnchor];
    v74 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v112[9] = v74;
    leadingAnchor4 = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor5 = [(UILayoutGuide *)v3->_textLayoutGuide leadingAnchor];
    v71 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v112[10] = v71;
    widthAnchor3 = [(UILabel *)v3->_titleLabel widthAnchor];
    widthAnchor4 = [(UILayoutGuide *)v3->_textLayoutGuide widthAnchor];
    v68 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v112[11] = v68;
    leadingAnchor6 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)v3->_textLayoutGuide leadingAnchor];
    v65 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v112[12] = v65;
    widthAnchor5 = [(UILabel *)v3->_subtitleLabel widthAnchor];
    widthAnchor6 = [(UILayoutGuide *)v3->_textLayoutGuide widthAnchor];
    v62 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v112[13] = v62;
    topAnchor5 = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor6 = [(UILayoutGuide *)v3->_textLayoutGuide topAnchor];
    v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v112[14] = v59;
    topAnchor7 = [(UILabel *)v3->_subtitleLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v30 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:2.0];
    v112[15] = v30;
    bottomAnchor6 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    bottomAnchor7 = [(UILayoutGuide *)v3->_textLayoutGuide bottomAnchor];
    v33 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
    v112[16] = v33;
    contentView3 = [(SFSiteCardCell *)v3 contentView];
    heightAnchor2 = [contentView3 heightAnchor];
    v36 = [heightAnchor2 constraintEqualToConstant:0.0];
    LODWORD(v37) = 1132003328;
    v38 = [v36 sf_withPriority:v37];
    v112[17] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:18];
    [v56 activateConstraints:v39];

    v40 = MEMORY[0x1E696ACD8];
    v41 = v3->_subtitleLabel;
    contentView4 = [(UIVisualEffectView *)v3->_subtitleEffectView contentView];
    v43 = [v40 safari_constraintsMatchingFrameOfView:v41 withFrameOfView:contentView4];
    [v40 activateConstraints:v43];

    [(SFSiteCardCell *)v3 _updateVibrancy];
    v44 = v3->_backgroundEffectView;
    sf_startPageBackgroundTraits = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v46 = [(UIVisualEffectView *)v44 registerForTraitChanges:sf_startPageBackgroundTraits withTarget:v3->_backgroundEffectView action:sel_sf_configureAsStartPageBackground];

    v47 = v3->_subtitleEffectView;
    sf_startPageBackgroundTraits2 = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __32__SFSiteCardCell_initWithFrame___block_invoke;
    v108[3] = &unk_1E721DE38;
    objc_copyWeak(&v109, &location);
    v49 = [(UIVisualEffectView *)v47 registerForTraitChanges:sf_startPageBackgroundTraits2 withHandler:v108];

    captionLabel = v3->_captionLabel;
    sf_startPageBackgroundTraits3 = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __32__SFSiteCardCell_initWithFrame___block_invoke_2;
    v106[3] = &unk_1E721DE38;
    objc_copyWeak(&v107, &location);
    v52 = [(SFSiteCardSourceView *)captionLabel registerForTraitChanges:sf_startPageBackgroundTraits3 withHandler:v106];

    v53 = v3;
    objc_destroyWeak(&v107);
    objc_destroyWeak(&v109);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __32__SFSiteCardCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[84] sf_configureAsStartPageForegroundWithEffectStyle:1];
    WeakRetained = v2;
  }
}

void __32__SFSiteCardCell_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[82] sf_configureAsStartPageForegroundWithEffectStyle:1];
    WeakRetained = v2;
  }
}

- (SFSiteCardCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSiteCardCell;
  return [(SFSiteCardCell *)&v4 initWithCoder:coder];
}

- (void)_updateVibrancy
{
  [(UIVisualEffectView *)self->_backgroundEffectView sf_configureAsStartPageBackground];
  [(UIVisualEffectView *)self->_subtitleEffectView sf_configureAsStartPageForegroundWithEffectStyle:1];
  captionLabel = self->_captionLabel;

  [(UIVisualEffectView *)captionLabel sf_configureAsStartPageForegroundWithEffectStyle:1];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SFSiteCardCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFSiteCardCell;
  [(SFSiteCardCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    backgroundEffectView = self->_backgroundEffectView;
    configurationState = [(SFSiteCardCell *)self configurationState];
    [(UIVisualEffectView *)backgroundEffectView sf_setHighlighted:highlightedCopy cellState:configurationState];
  }
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(SFSiteCardCell *)self bounds];
  v3 = *MEMORY[0x1E69796E8];

  return [v2 effectWithRoundedRect:v3 cornerRadius:? curve:?];
}

- (void)setCaptionText:(id)text icon:(id)icon
{
  v26[4] = *MEMORY[0x1E69E9840];
  textCopy = text;
  iconCopy = icon;
  if (!self->_captionLabel)
  {
    v8 = [textCopy length];
    if (iconCopy || v8)
    {
      v9 = objc_alloc_init(SFSiteCardSourceView);
      captionLabel = self->_captionLabel;
      self->_captionLabel = v9;

      [(SFSiteCardSourceView *)self->_captionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(SFSiteCardCell *)self contentView];
      [contentView addSubview:self->_captionLabel];

      v20 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(SFSiteCardSourceView *)self->_captionLabel leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
      v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v26[0] = v23;
      widthAnchor = [(SFSiteCardSourceView *)self->_captionLabel widthAnchor];
      widthAnchor2 = [(UILayoutGuide *)self->_textLayoutGuide widthAnchor];
      v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v26[1] = v19;
      topAnchor = [(SFSiteCardSourceView *)self->_captionLabel topAnchor];
      bottomAnchor = [(UILabel *)self->_subtitleLabel bottomAnchor];
      v13 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
      v26[2] = v13;
      bottomAnchor2 = [(SFSiteCardSourceView *)self->_captionLabel bottomAnchor];
      bottomAnchor3 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
      v16 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
      v26[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v20 activateConstraints:v17];

      [(SFSiteCardCell *)self _updateVibrancy];
    }
  }

  [(SFSiteCardSourceView *)self->_captionLabel setText:textCopy];
  [(SFSiteCardSourceView *)self->_captionLabel setImage:iconCopy];
}

- (void)setBadge:(id)badge
{
  v26[4] = *MEMORY[0x1E69E9840];
  badgeCopy = badge;
  badgeView = self->_badgeView;
  if (badgeCopy && !badgeView)
  {
    contentView = [(SFSiteCardCell *)self contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v7 = self->_badgeView;
    self->_badgeView = v6;

    [(UIImageView *)self->_badgeView setClipsToBounds:1];
    [(UIImageView *)self->_badgeView setHidden:1];
    [(UIImageView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView insertSubview:self->_badgeView aboveSubview:self->_imageView];
    [(UIImageView *)self->_badgeView layer];
    v8 = v25 = badgeCopy;
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.668 alpha:0.6];
    [v8 setBorderColor:{objc_msgSend(v9, "CGColor")}];

    [v8 setBorderWidth:_SFOnePixel()];
    [v8 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v8 setCornerRadius:4.0];
    [v8 setShadowOffset:{0.0, 1.0}];
    LODWORD(v10) = 1025758986;
    [v8 setShadowOpacity:v10];
    [v8 setShadowRadius:3.0];
    v20 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIImageView *)self->_badgeView topAnchor];
    topAnchor2 = [(_SFSiteIconView *)self->_imageView topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-5.0];
    v26[0] = v21;
    leadingAnchor = [(UIImageView *)self->_badgeView leadingAnchor];
    leadingAnchor2 = [(_SFSiteIconView *)self->_imageView leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-5.0];
    v26[1] = v11;
    widthAnchor = [(UIImageView *)self->_badgeView widthAnchor];
    heightAnchor = [(UIImageView *)self->_badgeView heightAnchor];
    v14 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v26[2] = v14;
    widthAnchor2 = [(UIImageView *)self->_badgeView widthAnchor];
    v16 = [widthAnchor2 constraintEqualToConstant:20.0];
    v26[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v17];

    badgeCopy = v25;
    badgeView = self->_badgeView;
  }

  [(UIImageView *)badgeView setImage:badgeCopy];
  [(UIImageView *)self->_badgeView setHidden:badgeCopy == 0];
}

- (NSString)title
{
  text = [(UILabel *)self->_titleLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_1EFF36230;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)subtitle
{
  text = [(UILabel *)self->_subtitleLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_1EFF36230;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)caption
{
  text = [(SFSiteCardSourceView *)self->_captionLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_1EFF36230;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setCaption:(id)caption
{
  [(SFSiteCardSourceView *)self->_captionLabel setText:caption];
  captionLabel = self->_captionLabel;

  [(SFSiteCardSourceView *)captionLabel setImage:0];
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