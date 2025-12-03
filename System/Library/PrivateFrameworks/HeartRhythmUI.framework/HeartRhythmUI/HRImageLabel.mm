@interface HRImageLabel
- (BOOL)_isTextTallerThanImage;
- (CGSize)imageSize;
- (HRImageLabel)initWithImage:(id)image size:(CGSize)size text:(id)text userInterfaceStyleChanged:(id)changed;
- (id)_textLabelBoldFont;
- (id)_textLabelFont;
- (id)initWIthImage:(id)image text:(id)text;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)_updateImageTextAlignmentConstraints;
- (void)_updateTextLabelFont;
- (void)layoutSubviews;
- (void)setBoldText:(BOOL)text;
- (void)setImageLeadingSpacing:(double)spacing;
- (void)setImageTrailingSpacing:(double)spacing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRImageLabel

- (HRImageLabel)initWithImage:(id)image size:(CGSize)size text:(id)text userInterfaceStyleChanged:(id)changed
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  textCopy = text;
  changedCopy = changed;
  v20.receiver = self;
  v20.super_class = HRImageLabel;
  v15 = [(HRImageLabel *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, image);
    v16->_imageSize.width = width;
    v16->_imageSize.height = height;
    objc_storeStrong(&v16->_text, text);
    v16->_imageAlignment = 0;
    v17 = MEMORY[0x25309CD70](changedCopy);
    userInterfaceStyleChanged = v16->_userInterfaceStyleChanged;
    v16->_userInterfaceStyleChanged = v17;

    [(HRImageLabel *)v16 _setUpUI];
    [(HRImageLabel *)v16 _setUpConstraints];
  }

  return v16;
}

- (id)initWIthImage:(id)image text:(id)text
{
  textCopy = text;
  imageCopy = image;
  v8 = [objc_alloc(objc_opt_class()) initWithImage:imageCopy size:textCopy text:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  return v8;
}

- (void)setBoldText:(BOOL)text
{
  self->_boldText = text;
  [(HRImageLabel *)self _updateTextLabelFont];

  [(HRImageLabel *)self _updateImageTextAlignmentConstraints];
}

- (void)setImageLeadingSpacing:(double)spacing
{
  self->_imageLeadingSpacing = spacing;
  imageLeadingConstraint = [(HRImageLabel *)self imageLeadingConstraint];
  [imageLeadingConstraint setConstant:spacing];
}

- (void)setImageTrailingSpacing:(double)spacing
{
  self->_imageTrailingSpacing = spacing;
  imageTrailingConstraint = [(HRImageLabel *)self imageTrailingConstraint];
  [imageTrailingConstraint setConstant:spacing];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = HRImageLabel;
  [(HRImageLabel *)&v9 traitCollectionDidChange:change];
  textLabel = [(HRImageLabel *)self textLabel];
  font = [textLabel font];
  traitCollection = [(HRImageLabel *)self traitCollection];
  v7 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  textLabel2 = [(HRImageLabel *)self textLabel];
  [textLabel2 setFont:v7];

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
  traitCollection = [(HRImageLabel *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if ([(HRImageLabel *)self currentUserInterfaceStyle]!= userInterfaceStyle)
  {
    [(HRImageLabel *)self setCurrentUserInterfaceStyle:userInterfaceStyle];
    userInterfaceStyleChanged = [(HRImageLabel *)self userInterfaceStyleChanged];

    if (userInterfaceStyleChanged)
    {
      userInterfaceStyleChanged2 = [(HRImageLabel *)self userInterfaceStyleChanged];
      userInterfaceStyleChanged2[2](userInterfaceStyleChanged2, self, userInterfaceStyle);
    }
  }
}

- (void)_setUpUI
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  image = [(HRImageLabel *)self image];
  v5 = [v3 initWithImage:image];
  [(HRImageLabel *)self setImageView:v5];

  imageView = [(HRImageLabel *)self imageView];
  [imageView setContentMode:1];

  imageView2 = [(HRImageLabel *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView3 = [(HRImageLabel *)self imageView];
  [(HRImageLabel *)self addSubview:imageView3];

  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRImageLabel *)self setTextLabel:v9];

  text = [(HRImageLabel *)self text];
  textLabel = [(HRImageLabel *)self textLabel];
  [textLabel setText:text];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel2 = [(HRImageLabel *)self textLabel];
  [textLabel2 setFont:v12];

  textLabel3 = [(HRImageLabel *)self textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel4 = [(HRImageLabel *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  textLabel5 = [(HRImageLabel *)self textLabel];
  [(HRImageLabel *)self addSubview:textLabel5];
}

- (void)_setUpConstraints
{
  [(HRImageLabel *)self imageSize];
  if (v4 != *MEMORY[0x277CBF3A8] || v3 != *(MEMORY[0x277CBF3A8] + 8))
  {
    imageView = [(HRImageLabel *)self imageView];
    widthAnchor = [imageView widthAnchor];
    [(HRImageLabel *)self imageSize];
    v8 = [widthAnchor constraintEqualToConstant:?];
    [v8 setActive:1];

    imageView2 = [(HRImageLabel *)self imageView];
    heightAnchor = [imageView2 heightAnchor];
    [(HRImageLabel *)self imageSize];
    v12 = [heightAnchor constraintEqualToConstant:v11];
    [v12 setActive:1];
  }

  [(HRImageLabel *)self setImageLeadingSpacing:0.0];
  [(HRImageLabel *)self setImageTrailingSpacing:14.0];
  imageView3 = [(HRImageLabel *)self imageView];
  leadingAnchor = [imageView3 leadingAnchor];
  leadingAnchor2 = [(HRImageLabel *)self leadingAnchor];
  [(HRImageLabel *)self imageLeadingSpacing];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [(HRImageLabel *)self setImageLeadingConstraint:v16];

  imageLeadingConstraint = [(HRImageLabel *)self imageLeadingConstraint];
  [imageLeadingConstraint setActive:1];

  textLabel = [(HRImageLabel *)self textLabel];
  leadingAnchor3 = [textLabel leadingAnchor];
  imageView4 = [(HRImageLabel *)self imageView];
  trailingAnchor = [imageView4 trailingAnchor];
  [(HRImageLabel *)self imageTrailingSpacing];
  v22 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
  [(HRImageLabel *)self setImageTrailingConstraint:v22];

  imageTrailingConstraint = [(HRImageLabel *)self imageTrailingConstraint];
  [imageTrailingConstraint setActive:1];

  textLabel2 = [(HRImageLabel *)self textLabel];
  trailingAnchor2 = [textLabel2 trailingAnchor];
  trailingAnchor3 = [(HRImageLabel *)self trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
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
  textLabel = [(HRImageLabel *)self textLabel];
  [textLabel setFont:v4];
}

- (void)_updateImageTextAlignmentConstraints
{
  v67[3] = *MEMORY[0x277D85DE8];
  imageTextAlignmentConstraints = [(HRImageLabel *)self imageTextAlignmentConstraints];

  if (imageTextAlignmentConstraints)
  {
    imageTextAlignmentConstraints2 = [(HRImageLabel *)self imageTextAlignmentConstraints];
    [(HRImageLabel *)self removeConstraints:imageTextAlignmentConstraints2];

    [(HRImageLabel *)self setImageTextAlignmentConstraints:0];
  }

  imageAlignment = [(HRImageLabel *)self imageAlignment];
  if (imageAlignment > 1)
  {
    if (imageAlignment == 2)
    {
      textLabel = [(HRImageLabel *)self textLabel];
      topAnchor = [textLabel topAnchor];
      topAnchor2 = [(HRImageLabel *)self topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];

      [v9 setActive:1];
      imageView = [(HRImageLabel *)self imageView];
      topAnchor3 = [imageView topAnchor];
      topAnchor4 = [(HRImageLabel *)self topAnchor];
      v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

      LODWORD(v46) = 1148846080;
      [v14 setPriority:v46];
      LODWORD(imageView) = [(HRImageLabel *)self _isTextTallerThanImage];
      bottomAnchor = [(HRImageLabel *)self bottomAnchor];
      if (imageView)
      {
        [(HRImageLabel *)self textLabel];
      }

      else
      {
        [(HRImageLabel *)self imageView];
      }
      v54 = ;
      bottomAnchor2 = [v54 bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

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
      if (imageAlignment != 3)
      {
        goto LABEL_20;
      }

      textLabel2 = [(HRImageLabel *)self textLabel];
      topAnchor5 = [textLabel2 topAnchor];
      topAnchor6 = [(HRImageLabel *)self topAnchor];
      v9 = [topAnchor5 constraintEqualToAnchor:topAnchor6];

      [v9 setActive:1];
      imageView2 = [(HRImageLabel *)self imageView];
      firstBaselineAnchor = [imageView2 firstBaselineAnchor];
      textLabel3 = [(HRImageLabel *)self textLabel];
      firstBaselineAnchor2 = [textLabel3 firstBaselineAnchor];
      v14 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];

      [v14 setActive:1];
      bottomAnchor3 = [(HRImageLabel *)self bottomAnchor];
      textLabel4 = [(HRImageLabel *)self textLabel];
      bottomAnchor4 = [textLabel4 bottomAnchor];
      v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

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

  if (!imageAlignment)
  {
    imageView3 = [(HRImageLabel *)self imageView];
    centerYAnchor = [imageView3 centerYAnchor];
    textLabel5 = [(HRImageLabel *)self textLabel];
    centerYAnchor2 = [textLabel5 centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v36) = 1144750080;
    [v9 setPriority:v36];
    if ([(HRImageLabel *)self _isTextTallerThanImage])
    {
      textLabel6 = [(HRImageLabel *)self textLabel];
      topAnchor7 = [textLabel6 topAnchor];
      topAnchor8 = [(HRImageLabel *)self topAnchor];
      v14 = [topAnchor7 constraintEqualToAnchor:topAnchor8];

      [(HRImageLabel *)self textLabel];
    }

    else
    {
      imageView4 = [(HRImageLabel *)self imageView];
      topAnchor9 = [imageView4 topAnchor];
      topAnchor10 = [(HRImageLabel *)self topAnchor];
      v14 = [topAnchor9 constraintEqualToAnchor:topAnchor10];

      [(HRImageLabel *)self imageView];
    }
    v51 = ;
    bottomAnchor5 = [v51 bottomAnchor];
    bottomAnchor6 = [(HRImageLabel *)self bottomAnchor];
    v19 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];

    v67[0] = v14;
    v67[1] = v19;
    v67[2] = v9;
    v30 = MEMORY[0x277CBEA60];
    v31 = v67;
    goto LABEL_18;
  }

  if (imageAlignment == 1)
  {
    textLabel7 = [(HRImageLabel *)self textLabel];
    topAnchor11 = [textLabel7 topAnchor];
    topAnchor12 = [(HRImageLabel *)self topAnchor];
    v9 = [topAnchor11 constraintEqualToAnchor:topAnchor12];

    [v9 setActive:1];
    imageView5 = [(HRImageLabel *)self imageView];
    centerYAnchor3 = [imageView5 centerYAnchor];
    textLabel8 = [(HRImageLabel *)self textLabel];
    topAnchor13 = [textLabel8 topAnchor];
    v14 = [centerYAnchor3 constraintEqualToAnchor:topAnchor13];

    textLabel9 = [(HRImageLabel *)self textLabel];
    font = [textLabel9 font];
    [font lineHeight];
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
  imageTextAlignmentConstraints3 = [(HRImageLabel *)self imageTextAlignmentConstraints];
  [v58 activateConstraints:imageTextAlignmentConstraints3];
}

- (BOOL)_isTextTallerThanImage
{
  selfCopy = self;
  textLabel = [(HRImageLabel *)self textLabel];
  [textLabel frame];
  Height = CGRectGetHeight(v7);
  [(HRImageLabel *)selfCopy imageSize];
  LOBYTE(selfCopy) = Height > v5;

  return selfCopy;
}

- (id)_textLabelFont
{
  v2 = MEMORY[0x277D74300];
  _textLabelFontStyle = [(HRImageLabel *)self _textLabelFontStyle];
  v4 = [v2 preferredFontForTextStyle:_textLabelFontStyle];

  return v4;
}

- (id)_textLabelBoldFont
{
  v2 = MEMORY[0x277D74300];
  _textLabelFontStyle = [(HRImageLabel *)self _textLabelFontStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_textLabelFontStyle symbolicTraits:2];

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