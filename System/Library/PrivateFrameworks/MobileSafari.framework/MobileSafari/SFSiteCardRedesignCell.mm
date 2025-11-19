@interface SFSiteCardRedesignCell
- (BOOL)_titleLabelPrefersMultipleLines;
- (NSString)subtitle;
- (NSString)title;
- (SFSiteCardRedesignCell)initWithCoder:(id)a3;
- (SFSiteCardRedesignCell)initWithFrame:(CGRect)a3;
- (id)focusEffect;
- (void)_updateLayoutForContentSizeChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCaptionText:(id)a3 icon:(id)a4;
- (void)setMetadata:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SFSiteCardRedesignCell

- (SFSiteCardRedesignCell)initWithFrame:(CGRect)a3
{
  v106[1] = *MEMORY[0x1E69E9840];
  v100.receiver = self;
  v100.super_class = SFSiteCardRedesignCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v100 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSiteCardRedesignCell *)v3 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    v98 = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [v98 setCornerRadius:20.0];
    [(SFSiteCardRedesignCell *)v4 setBackgroundConfiguration:v98];
    v5 = [(SFSiteCardRedesignCell *)v4 contentView];
    UIEdgeInsetsMakeWithEdges();
    [v5 setLayoutMargins:?];
    v6 = objc_alloc_init(_SFSiteIconView);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(_SFSiteIconView *)v4->_imageView _setContinuousCornerRadius:8.0];
    [(_SFSiteIconView *)v4->_imageView setClipsToBounds:1];
    [(_SFSiteIconView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_imageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textLayoutGuide = v4->_textLayoutGuide;
    v4->_textLayoutGuide = v8;

    [(UILayoutGuide *)v4->_textLayoutGuide setIdentifier:@"SFSiteCardText"];
    v99 = v5;
    [v5 addLayoutGuide:v4->_textLayoutGuide];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v4->_titleLabel setFont:v12];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v13];

    [v5 addSubview:v4->_titleLabel];
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
    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v23];

    LODWORD(v24) = 1132068864;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v24];
    [v99 addSubview:v4->_subtitleLabel];
    v25 = [(_SFSiteIconView *)v4->_imageView widthAnchor];
    v26 = [(SFSiteCardRedesignCell *)v4 traitCollection];
    v27 = [v25 constraintEqualToConstant:iconDimension(v26)];
    LODWORD(v28) = 1148682240;
    v29 = [v27 sf_withPriority:v28];
    iconDimensionConstraint = v4->_iconDimensionConstraint;
    v4->_iconDimensionConstraint = v29;

    v31 = [v99 layoutMarginsGuide];
    v75 = MEMORY[0x1E696ACD8];
    v97 = [(_SFSiteIconView *)v4->_imageView leadingAnchor];
    v88 = v31;
    v96 = [v31 leadingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v102[0] = v95;
    v94 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v93 = [(_SFSiteIconView *)v4->_imageView trailingAnchor];
    v92 = [v94 constraintEqualToAnchor:v93 constant:12.0];
    v102[1] = v92;
    v91 = [(UILayoutGuide *)v4->_textLayoutGuide trailingAnchor];
    v90 = [v31 trailingAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v102[2] = v89;
    v87 = [(_SFSiteIconView *)v4->_imageView topAnchor];
    v86 = [v31 topAnchor];
    v85 = [v87 constraintGreaterThanOrEqualToAnchor:v86];
    v102[3] = v85;
    v84 = [(_SFSiteIconView *)v4->_imageView centerYAnchor];
    v83 = [v31 centerYAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v102[4] = v82;
    v81 = [(_SFSiteIconView *)v4->_imageView bottomAnchor];
    v80 = [v31 bottomAnchor];
    v79 = [v81 constraintLessThanOrEqualToAnchor:v80];
    v102[5] = v79;
    v78 = [(UILayoutGuide *)v4->_textLayoutGuide bottomAnchor];
    v77 = [v31 bottomAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:2.0];
    v102[6] = v76;
    v74 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    v73 = [v31 topAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:-2.0];
    v102[7] = v72;
    v71 = [(UILayoutGuide *)v4->_textLayoutGuide heightAnchor];
    v70 = [(_SFSiteIconView *)v4->_imageView heightAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    LODWORD(v32) = 1148600320;
    v68 = [v69 sf_withPriority:v32];
    v102[8] = v68;
    v102[9] = v4->_iconDimensionConstraint;
    v67 = [(_SFSiteIconView *)v4->_imageView heightAnchor];
    v66 = [(_SFSiteIconView *)v4->_imageView widthAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v102[10] = v65;
    v64 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v63 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v102[11] = v62;
    v61 = [(UILabel *)v4->_titleLabel widthAnchor];
    v60 = [(UILayoutGuide *)v4->_textLayoutGuide widthAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v102[12] = v59;
    v58 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    v57 = [(UILayoutGuide *)v4->_textLayoutGuide leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v102[13] = v56;
    v55 = [(UILabel *)v4->_subtitleLabel widthAnchor];
    v54 = [(UILayoutGuide *)v4->_textLayoutGuide widthAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v102[14] = v53;
    v52 = [(UILabel *)v4->_titleLabel topAnchor];
    v51 = [(UILayoutGuide *)v4->_textLayoutGuide topAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:0.0];
    v102[15] = v50;
    v49 = [(UILabel *)v4->_subtitleLabel topAnchor];
    v48 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v33 = [v49 constraintEqualToAnchor:v48 constant:2.0];
    v102[16] = v33;
    v34 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    v35 = [(UILayoutGuide *)v4->_textLayoutGuide bottomAnchor];
    v36 = [v34 constraintLessThanOrEqualToAnchor:v35];
    v102[17] = v36;
    v37 = [(SFSiteCardRedesignCell *)v4 contentView];
    v38 = [v37 heightAnchor];
    v39 = [v38 constraintEqualToConstant:0.0];
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

- (SFSiteCardRedesignCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFSiteCardRedesignCell;
  return [(SFSiteCardRedesignCell *)&v4 initWithCoder:a3];
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
  v3 = [(SFSiteCardRedesignCell *)self traitCollection];
  [(NSLayoutConstraint *)self->_iconDimensionConstraint setConstant:iconDimension(v3)];

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

- (void)setCaptionText:(id)a3 icon:(id)a4
{
  v26[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_captionLabel)
  {
    v8 = [v6 length];
    if (v7 || v8)
    {
      v9 = objc_alloc_init(SFSiteCardSourceView);
      captionLabel = self->_captionLabel;
      self->_captionLabel = v9;

      [(SFSiteCardSourceView *)self->_captionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [(SFSiteCardRedesignCell *)self contentView];
      [v11 addSubview:self->_captionLabel];

      v20 = MEMORY[0x1E696ACD8];
      v25 = [(SFSiteCardSourceView *)self->_captionLabel leadingAnchor];
      v24 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
      v23 = [v25 constraintEqualToAnchor:v24];
      v26[0] = v23;
      v22 = [(SFSiteCardSourceView *)self->_captionLabel widthAnchor];
      v21 = [(UILayoutGuide *)self->_textLayoutGuide widthAnchor];
      v19 = [v22 constraintEqualToAnchor:v21];
      v26[1] = v19;
      v18 = [(SFSiteCardSourceView *)self->_captionLabel topAnchor];
      v12 = [(UILabel *)self->_subtitleLabel bottomAnchor];
      v13 = [v18 constraintGreaterThanOrEqualToAnchor:v12 constant:2.0];
      v26[2] = v13;
      v14 = [(SFSiteCardSourceView *)self->_captionLabel bottomAnchor];
      v15 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v26[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v20 activateConstraints:v17];
    }
  }

  [(SFSiteCardSourceView *)self->_captionLabel setText:v6];
  [(SFSiteCardSourceView *)self->_captionLabel setImage:v7];
}

- (NSString)title
{
  v2 = [(UILabel *)self->_titleLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFF36230;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(SFSiteCardRedesignCell *)self setNeedsLayout];
}

- (NSString)subtitle
{
  v2 = [(UILabel *)self->_subtitleLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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

- (void)setMetadata:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_metadata, a3);
  v5 = a3;
  v6 = [v5 title];
  [(SFSiteCardRedesignCell *)self setTitle:v6];

  v7 = [(LPLinkMetadata *)self->_metadata URL];
  v8 = [v7 host];
  v9 = [v8 safari_highLevelDomainFromHost];
  [(SFSiteCardRedesignCell *)self setSubtitle:v9];

  v10 = [(SFSiteCardRedesignCell *)self traitCollection];
  v11 = iconDimension(v10);

  imageView = self->_imageView;
  v13 = MEMORY[0x1E69DCAD8];
  v14 = [MEMORY[0x1E69DC888] systemFillColor];
  v18[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16 = [v13 configurationWithPaletteColors:v15];

  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari" withConfiguration:v16];

  [(_SFSiteIconView *)imageView updateSiteIconViewWithLinkMetadata:v5 requiredImageSize:v17 fallbackIcon:v11, v11];
}

@end