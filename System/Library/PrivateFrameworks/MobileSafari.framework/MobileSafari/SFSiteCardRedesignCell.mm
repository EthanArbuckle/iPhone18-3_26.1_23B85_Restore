@interface SFSiteCardRedesignCell
- (BOOL)_titleLabelPrefersMultipleLines;
- (NSString)subtitle;
- (NSString)title;
- (SFSiteCardRedesignCell)initWithCoder:(id)coder;
- (SFSiteCardRedesignCell)initWithFrame:(CGRect)frame;
- (id)focusEffect;
- (void)_updateLayoutForContentSizeChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCaptionText:(id)text icon:(id)icon;
- (void)setMetadata:(id)metadata;
- (void)setTitle:(id)title;
@end

@implementation SFSiteCardRedesignCell

- (SFSiteCardRedesignCell)initWithFrame:(CGRect)frame
{
  v106[1] = *MEMORY[0x1E69E9840];
  v100.receiver = self;
  v100.super_class = SFSiteCardRedesignCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v100 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSiteCardRedesignCell *)v3 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFSiteCardRedesignCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
    contentView = [(SFSiteCardRedesignCell *)v4 contentView];
    UIEdgeInsetsMakeWithEdges();
    [contentView setLayoutMargins:?];
    v6 = objc_alloc_init(_SFSiteIconView);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(_SFSiteIconView *)v4->_imageView _setContinuousCornerRadius:8.0];
    [(_SFSiteIconView *)v4->_imageView setClipsToBounds:1];
    [(_SFSiteIconView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_imageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textLayoutGuide = v4->_textLayoutGuide;
    v4->_textLayoutGuide = v8;

    [(UILayoutGuide *)v4->_textLayoutGuide setIdentifier:@"SFSiteCardText"];
    v99 = contentView;
    [contentView addLayoutGuide:v4->_textLayoutGuide];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v4->_titleLabel setFont:v12];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:labelColor];

    [contentView addSubview:v4->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v14;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v105 = *MEMORY[0x1E69DB8F0];
    v103 = *MEMORY[0x1E69DB990];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
    v104 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v106[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    v20 = [v16 fontDescriptorByAddingAttributes:v19];

    v21 = MEMORY[0x1E69DB878];
    [v20 pointSize];
    v22 = [v21 fontWithDescriptor:v20 size:?];

    [(UILabel *)v4->_subtitleLabel setFont:v22];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:secondaryLabelColor];

    LODWORD(v24) = 1132068864;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v24];
    [v99 addSubview:v4->_subtitleLabel];
    widthAnchor = [(_SFSiteIconView *)v4->_imageView widthAnchor];
    traitCollection = [(SFSiteCardRedesignCell *)v4 traitCollection];
    v27 = [widthAnchor constraintEqualToConstant:iconDimension(traitCollection)];
    LODWORD(v28) = 1148682240;
    v29 = [v27 sf_withPriority:v28];
    iconDimensionConstraint = v4->_iconDimensionConstraint;
    v4->_iconDimensionConstraint = v29;

    layoutMarginsGuide = [v99 layoutMarginsGuide];
    v75 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(_SFSiteIconView *)v4->_imageView leadingAnchor];
    v88 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v95 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v102[0] = v95;
    leadingAnchor3 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    trailingAnchor = [(_SFSiteIconView *)v4->_imageView trailingAnchor];
    v92 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
    v102[1] = v92;
    trailingAnchor2 = [(UILayoutGuide *)v4->_textLayoutGuide trailingAnchor];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v89 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v102[2] = v89;
    topAnchor = [(_SFSiteIconView *)v4->_imageView topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v85 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v102[3] = v85;
    centerYAnchor = [(_SFSiteIconView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v82 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v102[4] = v82;
    bottomAnchor = [(_SFSiteIconView *)v4->_imageView bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v79 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v102[5] = v79;
    bottomAnchor3 = [(UILayoutGuide *)v4->_textLayoutGuide bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:2.0];
    v102[6] = v76;
    topAnchor3 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v72 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-2.0];
    v102[7] = v72;
    heightAnchor = [(UILayoutGuide *)v4->_textLayoutGuide heightAnchor];
    heightAnchor2 = [(_SFSiteIconView *)v4->_imageView heightAnchor];
    v69 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    LODWORD(v32) = 1148600320;
    v68 = [v69 sf_withPriority:v32];
    v102[8] = v68;
    v102[9] = v4->_iconDimensionConstraint;
    heightAnchor3 = [(_SFSiteIconView *)v4->_imageView heightAnchor];
    widthAnchor2 = [(_SFSiteIconView *)v4->_imageView widthAnchor];
    v65 = [heightAnchor3 constraintEqualToAnchor:widthAnchor2];
    v102[10] = v65;
    leadingAnchor4 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor5 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v62 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v102[11] = v62;
    widthAnchor3 = [(UILabel *)v4->_titleLabel widthAnchor];
    widthAnchor4 = [(UILayoutGuide *)v4->_textLayoutGuide widthAnchor];
    v59 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v102[12] = v59;
    leadingAnchor6 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v56 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v102[13] = v56;
    widthAnchor5 = [(UILabel *)v4->_subtitleLabel widthAnchor];
    widthAnchor6 = [(UILayoutGuide *)v4->_textLayoutGuide widthAnchor];
    v53 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v102[14] = v53;
    topAnchor5 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor6 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    v50 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:0.0];
    v102[15] = v50;
    topAnchor7 = [(UILabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v33 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:2.0];
    v102[16] = v33;
    bottomAnchor6 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    bottomAnchor7 = [(UILayoutGuide *)v4->_textLayoutGuide bottomAnchor];
    v36 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
    v102[17] = v36;
    contentView2 = [(SFSiteCardRedesignCell *)v4 contentView];
    heightAnchor4 = [contentView2 heightAnchor];
    v39 = [heightAnchor4 constraintEqualToConstant:0.0];
    LODWORD(v40) = 1132003328;
    v41 = [v39 sf_withPriority:v40];
    v102[18] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:19];
    [v75 activateConstraints:v42];

    v43 = objc_opt_self();
    v101 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    v45 = [(SFSiteCardRedesignCell *)v4 registerForTraitChanges:v44 withAction:sel__updateLayoutForContentSizeChange];

    v46 = v4;
  }

  return v4;
}

- (SFSiteCardRedesignCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSiteCardRedesignCell;
  return [(SFSiteCardRedesignCell *)&v4 initWithCoder:coder];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SFSiteCardRedesignCell;
  [(SFSiteCardRedesignCell *)&v3 prepareForReuse];
  [(_SFSiteIconView *)self->_imageView setImage:0];
  [(SFSiteCardSourceView *)self->_captionLabel setText:&stru_1EFF36230];
  [(SFSiteCardSourceView *)self->_captionLabel setImage:0];
}

- (void)_updateLayoutForContentSizeChange
{
  traitCollection = [(SFSiteCardRedesignCell *)self traitCollection];
  [(NSLayoutConstraint *)self->_iconDimensionConstraint setConstant:iconDimension(traitCollection)];

  [(SFSiteCardRedesignCell *)self setNeedsLayout];
}

- (BOOL)_titleLabelPrefersMultipleLines
{
  [(UILabel *)self->_titleLabel bounds];
  v3 = v2;
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 weight:*MEMORY[0x1E69DB980]];
  [v4 lineHeight];
  v6 = v3 >= v5 + v5;

  return v6;
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(SFSiteCardRedesignCell *)self bounds];
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
      contentView = [(SFSiteCardRedesignCell *)self contentView];
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
      v13 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:2.0];
      v26[2] = v13;
      bottomAnchor2 = [(SFSiteCardSourceView *)self->_captionLabel bottomAnchor];
      bottomAnchor3 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
      v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v26[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v20 activateConstraints:v17];
    }
  }

  [(SFSiteCardSourceView *)self->_captionLabel setText:textCopy];
  [(SFSiteCardSourceView *)self->_captionLabel setImage:iconCopy];
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

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(SFSiteCardRedesignCell *)self setNeedsLayout];
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

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = SFSiteCardRedesignCell;
  [(SFSiteCardRedesignCell *)&v2 layoutSubviews];
}

- (void)setMetadata:(id)metadata
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_metadata, metadata);
  metadataCopy = metadata;
  title = [metadataCopy title];
  [(SFSiteCardRedesignCell *)self setTitle:title];

  v7 = [(LPLinkMetadata *)self->_metadata URL];
  host = [v7 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  [(SFSiteCardRedesignCell *)self setSubtitle:safari_highLevelDomainFromHost];

  traitCollection = [(SFSiteCardRedesignCell *)self traitCollection];
  v11 = iconDimension(traitCollection);

  imageView = self->_imageView;
  v13 = MEMORY[0x1E69DCAD8];
  systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
  v18[0] = systemFillColor;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16 = [v13 configurationWithPaletteColors:v15];

  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari" withConfiguration:v16];

  [(_SFSiteIconView *)imageView updateSiteIconViewWithLinkMetadata:metadataCopy requiredImageSize:v17 fallbackIcon:v11, v11];
}

@end