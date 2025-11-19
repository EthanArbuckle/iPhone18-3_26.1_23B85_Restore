@interface HRImageLabel
- (BOOL)_isTextTallerThanImage;
- (CGSize)imageSize;
- (HRImageLabel)initWithImage:(id)a3 size:(CGSize)a4 text:(id)a5 userInterfaceStyleChanged:(id)a6;
- (id)_textLabelBoldFont;
- (id)_textLabelFont;
- (id)initWIthImage:(id)a3 text:(id)a4;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)_updateImageTextAlignmentConstraints;
- (void)_updateTextLabelFont;
- (void)layoutSubviews;
- (void)setBoldText:(BOOL)a3;
- (void)setImageLeadingSpacing:(double)a3;
- (void)setImageTrailingSpacing:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRImageLabel

- (HRImageLabel)initWithImage:(id)a3 size:(CGSize)a4 text:(id)a5 userInterfaceStyleChanged:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HRImageLabel;
  v15 = [(HRImageLabel *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, a3);
    v16->_imageSize.width = width;
    v16->_imageSize.height = height;
    objc_storeStrong(&v16->_text, a5);
    v16->_imageAlignment = 0;
    v17 = MEMORY[0x25309CD70](v14);
    userInterfaceStyleChanged = v16->_userInterfaceStyleChanged;
    v16->_userInterfaceStyleChanged = v17;

    [(HRImageLabel *)v16 _setUpUI];
    [(HRImageLabel *)v16 _setUpConstraints];
  }

  return v16;
}

- (id)initWIthImage:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_opt_class()) initWithImage:v7 size:v6 text:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  return v8;
}

- (void)setBoldText:(BOOL)a3
{
  self->_boldText = a3;
  [(HRImageLabel *)self _updateTextLabelFont];

  [(HRImageLabel *)self _updateImageTextAlignmentConstraints];
}

- (void)setImageLeadingSpacing:(double)a3
{
  self->_imageLeadingSpacing = a3;
  v4 = [(HRImageLabel *)self imageLeadingConstraint];
  [v4 setConstant:a3];
}

- (void)setImageTrailingSpacing:(double)a3
{
  self->_imageTrailingSpacing = a3;
  v4 = [(HRImageLabel *)self imageTrailingConstraint];
  [v4 setConstant:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = HRImageLabel;
  [(HRImageLabel *)&v9 traitCollectionDidChange:a3];
  v4 = [(HRImageLabel *)self textLabel];
  v5 = [v4 font];
  v6 = [(HRImageLabel *)self traitCollection];
  v7 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

  v8 = [(HRImageLabel *)self textLabel];
  [v8 setFont:v7];

  [(HRImageLabel *)self _updateImageTextAlignmentConstraints];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HRImageLabel;
  [(HRImageLabel *)&v3 layoutSubviews];
  [(HRImageLabel *)self _updateCurrentUserInterfaceStyleIfNeeded];
  [(HRImageLabel *)self _updateImageTextAlignmentConstraints];
}

- (void)_updateCurrentUserInterfaceStyleIfNeeded
{
  v3 = [(HRImageLabel *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if ([(HRImageLabel *)self currentUserInterfaceStyle]!= v4)
  {
    [(HRImageLabel *)self setCurrentUserInterfaceStyle:v4];
    v5 = [(HRImageLabel *)self userInterfaceStyleChanged];

    if (v5)
    {
      v6 = [(HRImageLabel *)self userInterfaceStyleChanged];
      v6[2](v6, self, v4);
    }
  }
}

- (void)_setUpUI
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [(HRImageLabel *)self image];
  v5 = [v3 initWithImage:v4];
  [(HRImageLabel *)self setImageView:v5];

  v6 = [(HRImageLabel *)self imageView];
  [v6 setContentMode:1];

  v7 = [(HRImageLabel *)self imageView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HRImageLabel *)self imageView];
  [(HRImageLabel *)self addSubview:v8];

  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRImageLabel *)self setTextLabel:v9];

  v10 = [(HRImageLabel *)self text];
  v11 = [(HRImageLabel *)self textLabel];
  [v11 setText:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v13 = [(HRImageLabel *)self textLabel];
  [v13 setFont:v12];

  v14 = [(HRImageLabel *)self textLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HRImageLabel *)self textLabel];
  [v15 setNumberOfLines:0];

  v16 = [(HRImageLabel *)self textLabel];
  [(HRImageLabel *)self addSubview:v16];
}

- (void)_setUpConstraints
{
  [(HRImageLabel *)self imageSize];
  if (v4 != *MEMORY[0x277CBF3A8] || v3 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [(HRImageLabel *)self imageView];
    v7 = [v6 widthAnchor];
    [(HRImageLabel *)self imageSize];
    v8 = [v7 constraintEqualToConstant:?];
    [v8 setActive:1];

    v9 = [(HRImageLabel *)self imageView];
    v10 = [v9 heightAnchor];
    [(HRImageLabel *)self imageSize];
    v12 = [v10 constraintEqualToConstant:v11];
    [v12 setActive:1];
  }

  [(HRImageLabel *)self setImageLeadingSpacing:0.0];
  [(HRImageLabel *)self setImageTrailingSpacing:14.0];
  v13 = [(HRImageLabel *)self imageView];
  v14 = [v13 leadingAnchor];
  v15 = [(HRImageLabel *)self leadingAnchor];
  [(HRImageLabel *)self imageLeadingSpacing];
  v16 = [v14 constraintEqualToAnchor:v15 constant:?];
  [(HRImageLabel *)self setImageLeadingConstraint:v16];

  v17 = [(HRImageLabel *)self imageLeadingConstraint];
  [v17 setActive:1];

  v18 = [(HRImageLabel *)self textLabel];
  v19 = [v18 leadingAnchor];
  v20 = [(HRImageLabel *)self imageView];
  v21 = [v20 trailingAnchor];
  [(HRImageLabel *)self imageTrailingSpacing];
  v22 = [v19 constraintEqualToAnchor:v21 constant:?];
  [(HRImageLabel *)self setImageTrailingConstraint:v22];

  v23 = [(HRImageLabel *)self imageTrailingConstraint];
  [v23 setActive:1];

  v24 = [(HRImageLabel *)self textLabel];
  v25 = [v24 trailingAnchor];
  v26 = [(HRImageLabel *)self trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  [(HRImageLabel *)self _updateImageTextAlignmentConstraints];
}

- (void)_updateTextLabelFont
{
  if ([(HRImageLabel *)self boldText])
  {
    [(HRImageLabel *)self _textLabelBoldFont];
  }

  else
  {
    [(HRImageLabel *)self _textLabelFont];
  }
  v4 = ;
  v3 = [(HRImageLabel *)self textLabel];
  [v3 setFont:v4];
}

- (void)_updateImageTextAlignmentConstraints
{
  v67[3] = *MEMORY[0x277D85DE8];
  v3 = [(HRImageLabel *)self imageTextAlignmentConstraints];

  if (v3)
  {
    v4 = [(HRImageLabel *)self imageTextAlignmentConstraints];
    [(HRImageLabel *)self removeConstraints:v4];

    [(HRImageLabel *)self setImageTextAlignmentConstraints:0];
  }

  v5 = [(HRImageLabel *)self imageAlignment];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v40 = [(HRImageLabel *)self textLabel];
      v41 = [v40 topAnchor];
      v42 = [(HRImageLabel *)self topAnchor];
      v9 = [v41 constraintEqualToAnchor:v42];

      [v9 setActive:1];
      v43 = [(HRImageLabel *)self imageView];
      v44 = [v43 topAnchor];
      v45 = [(HRImageLabel *)self topAnchor];
      v14 = [v44 constraintEqualToAnchor:v45];

      LODWORD(v46) = 1148846080;
      [v14 setPriority:v46];
      LODWORD(v43) = [(HRImageLabel *)self _isTextTallerThanImage];
      v47 = [(HRImageLabel *)self bottomAnchor];
      if (v43)
      {
        [(HRImageLabel *)self textLabel];
      }

      else
      {
        [(HRImageLabel *)self imageView];
      }
      v54 = ;
      v55 = [v54 bottomAnchor];
      v19 = [v47 constraintEqualToAnchor:v55];

      LODWORD(v56) = 1144750080;
      [v19 setPriority:v56];
      v63 = v9;
      v64 = v14;
      v65 = v19;
      v30 = MEMORY[0x277CBEA60];
      v31 = &v63;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_20;
      }

      v20 = [(HRImageLabel *)self textLabel];
      v21 = [v20 topAnchor];
      v22 = [(HRImageLabel *)self topAnchor];
      v9 = [v21 constraintEqualToAnchor:v22];

      [v9 setActive:1];
      v23 = [(HRImageLabel *)self imageView];
      v24 = [v23 firstBaselineAnchor];
      v25 = [(HRImageLabel *)self textLabel];
      v26 = [v25 firstBaselineAnchor];
      v14 = [v24 constraintEqualToAnchor:v26];

      [v14 setActive:1];
      v27 = [(HRImageLabel *)self bottomAnchor];
      v28 = [(HRImageLabel *)self textLabel];
      v29 = [v28 bottomAnchor];
      v19 = [v27 constraintEqualToAnchor:v29];

      [v19 setActive:1];
      v60 = v9;
      v61 = v14;
      v62 = v19;
      v30 = MEMORY[0x277CBEA60];
      v31 = &v60;
    }

LABEL_18:
    v57 = [v30 arrayWithObjects:v31 count:{3, v60, v61, v62, v63, v64, v65}];
    [(HRImageLabel *)self setImageTextAlignmentConstraints:v57];

    goto LABEL_19;
  }

  if (!v5)
  {
    v32 = [(HRImageLabel *)self imageView];
    v33 = [v32 centerYAnchor];
    v34 = [(HRImageLabel *)self textLabel];
    v35 = [v34 centerYAnchor];
    v9 = [v33 constraintEqualToAnchor:v35];

    LODWORD(v36) = 1144750080;
    [v9 setPriority:v36];
    if ([(HRImageLabel *)self _isTextTallerThanImage])
    {
      v37 = [(HRImageLabel *)self textLabel];
      v38 = [v37 topAnchor];
      v39 = [(HRImageLabel *)self topAnchor];
      v14 = [v38 constraintEqualToAnchor:v39];

      [(HRImageLabel *)self textLabel];
    }

    else
    {
      v48 = [(HRImageLabel *)self imageView];
      v49 = [v48 topAnchor];
      v50 = [(HRImageLabel *)self topAnchor];
      v14 = [v49 constraintEqualToAnchor:v50];

      [(HRImageLabel *)self imageView];
    }
    v51 = ;
    v52 = [v51 bottomAnchor];
    v53 = [(HRImageLabel *)self bottomAnchor];
    v19 = [v52 constraintEqualToAnchor:v53];

    v67[0] = v14;
    v67[1] = v19;
    v67[2] = v9;
    v30 = MEMORY[0x277CBEA60];
    v31 = v67;
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v6 = [(HRImageLabel *)self textLabel];
    v7 = [v6 topAnchor];
    v8 = [(HRImageLabel *)self topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setActive:1];
    v10 = [(HRImageLabel *)self imageView];
    v11 = [v10 centerYAnchor];
    v12 = [(HRImageLabel *)self textLabel];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];

    v15 = [(HRImageLabel *)self textLabel];
    v16 = [v15 font];
    [v16 lineHeight];
    [v14 setConstant:v17 * 0.5];

    LODWORD(v18) = 1144750080;
    [v14 setPriority:v18];
    v66[0] = v9;
    v66[1] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    [(HRImageLabel *)self setImageTextAlignmentConstraints:v19];
LABEL_19:
  }

LABEL_20:
  v58 = MEMORY[0x277CCAAD0];
  v59 = [(HRImageLabel *)self imageTextAlignmentConstraints];
  [v58 activateConstraints:v59];
}

- (BOOL)_isTextTallerThanImage
{
  v2 = self;
  v3 = [(HRImageLabel *)self textLabel];
  [v3 frame];
  Height = CGRectGetHeight(v7);
  [(HRImageLabel *)v2 imageSize];
  LOBYTE(v2) = Height > v5;

  return v2;
}

- (id)_textLabelFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRImageLabel *)self _textLabelFontStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_textLabelBoldFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRImageLabel *)self _textLabelFontStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end