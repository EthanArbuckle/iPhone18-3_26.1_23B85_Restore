@interface OBBulletedListItem
- (NSArray)imageContainerSizeConstraints;
- (OBBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button;
- (OBBulletedListItem)initWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color;
- (OBBulletedListItem)initWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button;
- (double)_combinedLabelHeight;
- (double)_horizontalMargins;
- (id)_descriptionFont;
- (id)_titleFont;
- (void)_updateImageViewLayout;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation OBBulletedListItem

- (OBBulletedListItem)initWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color
{
  v10 = MEMORY[0x1E69DCAB8];
  colorCopy = color;
  descriptionCopy = description;
  titleCopy = title;
  v14 = [v10 _systemImageNamed:name];
  v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v16 = [v14 imageWithConfiguration:v15];

  v17 = [(OBBulletedListItem *)self initWithTitle:titleCopy description:descriptionCopy image:v16 tintColor:colorCopy];
  return v17;
}

- (OBBulletedListItem)initWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button
{
  v12 = MEMORY[0x1E69DCAB8];
  buttonCopy = button;
  colorCopy = color;
  descriptionCopy = description;
  titleCopy = title;
  v17 = [v12 _systemImageNamed:name];
  v18 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v19 = [v17 imageWithConfiguration:v18];

  v20 = [(OBBulletedListItem *)self initWithTitle:titleCopy description:descriptionCopy image:v19 tintColor:colorCopy linkButton:buttonCopy];
  return v20;
}

- (OBBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button
{
  v143[9] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  imageCopy = image;
  colorCopy = color;
  buttonCopy = button;
  if (titleCopy | descriptionCopy)
  {
    v142.receiver = self;
    v142.super_class = OBBulletedListItem;
    v18 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
    v22 = [(OBBulletedListItem *)&v142 initWithFrame:*MEMORY[0x1E695F058], v19, v20, v21];
    if (!v22)
    {
LABEL_25:
      self = v22;
      selfCopy = self;
      goto LABEL_26;
    }

    v139 = imageCopy;
    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    [(OBBulletedListItem *)v22 setImageView:v23];

    imageView = [(OBBulletedListItem *)v22 imageView];
    [imageView setTintColor:colorCopy];

    imageView2 = [(OBBulletedListItem *)v22 imageView];
    [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    imageView3 = [(OBBulletedListItem *)v22 imageView];
    [imageView3 setContentMode:1];

    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v19, v20, v21}];
    imageContainer = v22->_imageContainer;
    v22->_imageContainer = v27;

    [(UIView *)v22->_imageContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v22->_imageContainer addSubview:v22->_imageView];
    if ([titleCopy length])
    {
      v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
      [(OBBulletedListItem *)v22 setTitleLabel:v29];

      titleLabel = [(OBBulletedListItem *)v22 titleLabel];
      [titleLabel setNumberOfLines:0];

      titleLabel2 = [(OBBulletedListItem *)v22 titleLabel];
      [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

      titleLabel3 = [(OBBulletedListItem *)v22 titleLabel];
      [titleLabel3 setText:titleCopy];

      titleLabel4 = [(OBBulletedListItem *)v22 titleLabel];
      LODWORD(v34) = 1148846080;
      [titleLabel4 setContentHuggingPriority:1 forAxis:v34];
    }

    v141 = titleCopy;
    if ([descriptionCopy length])
    {
      v35 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
      [(OBBulletedListItem *)v22 setDescriptionLabel:v35];

      descriptionLabel = [(OBBulletedListItem *)v22 descriptionLabel];
      [descriptionLabel setNumberOfLines:0];

      descriptionLabel2 = [(OBBulletedListItem *)v22 descriptionLabel];
      [descriptionLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

      descriptionLabel3 = [(OBBulletedListItem *)v22 descriptionLabel];
      [descriptionLabel3 setText:descriptionCopy];

      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] colorWithRed:0.56 green:0.56 blue:0.58 alpha:1.0];
      }
      v39 = ;
      descriptionLabel4 = [(OBBulletedListItem *)v22 descriptionLabel];
      [descriptionLabel4 setTextColor:v39];

      descriptionLabel5 = [(OBBulletedListItem *)v22 descriptionLabel];
      LODWORD(v42) = 1148846080;
      [descriptionLabel5 setContentHuggingPriority:1 forAxis:v42];
    }

    _titleFont = [(OBBulletedListItem *)v22 _titleFont];
    titleLabel5 = [(OBBulletedListItem *)v22 titleLabel];
    [titleLabel5 setFont:_titleFont];

    _descriptionFont = [(OBBulletedListItem *)v22 _descriptionFont];
    descriptionLabel6 = [(OBBulletedListItem *)v22 descriptionLabel];
    [descriptionLabel6 setFont:_descriptionFont];

    v47 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v18, v19, v20, v21}];
    [(OBBulletedListItem *)v22 setStackView:v47];

    stackView = [(OBBulletedListItem *)v22 stackView];
    [stackView setAxis:1];

    stackView2 = [(OBBulletedListItem *)v22 stackView];
    [stackView2 setAlignment:0];

    stackView3 = [(OBBulletedListItem *)v22 stackView];
    [stackView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView4 = [(OBBulletedListItem *)v22 stackView];
    titleLabel6 = [(OBBulletedListItem *)v22 titleLabel];
    [stackView4 addArrangedSubview:titleLabel6];

    stackView5 = [(OBBulletedListItem *)v22 stackView];
    descriptionLabel7 = [(OBBulletedListItem *)v22 descriptionLabel];
    [stackView5 addArrangedSubview:descriptionLabel7];

    if (buttonCopy)
    {
      objc_storeStrong(&v22->_accessoryButton, button);
      [(UIButton *)v22->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [(UIButton *)v22->_accessoryButton setContentHorizontalAlignment:4];
      }

      stackView6 = [(OBBulletedListItem *)v22 stackView];
      accessoryButton = [(OBBulletedListItem *)v22 accessoryButton];
      [stackView6 addArrangedSubview:accessoryButton];
    }

    v138 = colorCopy;
    v140 = descriptionCopy;
    [(OBBulletedListItem *)v22 addSubview:v22->_imageContainer];
    stackView7 = [(OBBulletedListItem *)v22 stackView];
    [(OBBulletedListItem *)v22 addSubview:stackView7];

    stackView8 = [(OBBulletedListItem *)v22 stackView];
    _titleFont2 = [(OBBulletedListItem *)v22 _titleFont];
    [_titleFont2 leading];
    [stackView8 setSpacing:?];

    imageContainer = [(OBBulletedListItem *)v22 imageContainer];
    topAnchor = [imageContainer topAnchor];
    topAnchor2 = [(OBBulletedListItem *)v22 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(OBBulletedListItem *)v22 setTopConstraintToImageContainer:v63];

    bottomAnchor = [(OBBulletedListItem *)v22 bottomAnchor];
    imageContainer2 = [(OBBulletedListItem *)v22 imageContainer];
    bottomAnchor2 = [imageContainer2 bottomAnchor];
    v67 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(OBBulletedListItem *)v22 setBottomConstraintToImageContainer:v67];

    stackView9 = [(OBBulletedListItem *)v22 stackView];
    topAnchor3 = [stackView9 topAnchor];
    topAnchor4 = [(OBBulletedListItem *)v22 topAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [(OBBulletedListItem *)v22 setTopConstraintToStackView:v71];

    bottomAnchor3 = [(OBBulletedListItem *)v22 bottomAnchor];
    stackView10 = [(OBBulletedListItem *)v22 stackView];
    bottomAnchor4 = [stackView10 bottomAnchor];
    v75 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [(OBBulletedListItem *)v22 setBottomConstraintToStackView:v75];

    imageView4 = [(OBBulletedListItem *)v22 imageView];
    image = [imageView4 image];
    [(OBBulletedListItem *)v22 imageSizeForImage:image];
    v79 = v78;

    v80 = 1.0;
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      imageView5 = [(OBBulletedListItem *)v22 imageView];
      image2 = [imageView5 image];
      if (image2)
      {
        v83 = image2;
        imageView6 = [(OBBulletedListItem *)v22 imageView];
        image3 = [imageView6 image];
        [image3 size];
        v87 = v86;

        if (v87 <= 0.0)
        {
          goto LABEL_20;
        }

        imageView5 = [(OBBulletedListItem *)v22 imageView];
        image4 = [imageView5 image];
        [image4 size];
        v90 = v89;
        imageView7 = [(OBBulletedListItem *)v22 imageView];
        image5 = [imageView7 image];
        [image5 size];
        v80 = v90 / v93;
      }
    }

LABEL_20:
    v122 = MEMORY[0x1E696ACD8];
    imageView8 = [(OBBulletedListItem *)v22 imageView];
    widthAnchor = [imageView8 widthAnchor];
    v134 = [widthAnchor constraintEqualToConstant:v79];
    v143[0] = v134;
    imageView9 = [(OBBulletedListItem *)v22 imageView];
    heightAnchor = [imageView9 heightAnchor];
    imageView10 = [(OBBulletedListItem *)v22 imageView];
    widthAnchor2 = [imageView10 widthAnchor];
    v129 = [heightAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v80];
    v143[1] = v129;
    imageView11 = [(OBBulletedListItem *)v22 imageView];
    centerXAnchor = [imageView11 centerXAnchor];
    imageContainer3 = [(OBBulletedListItem *)v22 imageContainer];
    centerXAnchor2 = [imageContainer3 centerXAnchor];
    v124 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v143[2] = v124;
    imageView12 = [(OBBulletedListItem *)v22 imageView];
    centerYAnchor = [imageView12 centerYAnchor];
    imageContainer4 = [(OBBulletedListItem *)v22 imageContainer];
    centerYAnchor2 = [imageContainer4 centerYAnchor];
    v118 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v143[3] = v118;
    imageView13 = [(OBBulletedListItem *)v22 imageView];
    topAnchor5 = [imageView13 topAnchor];
    imageContainer5 = [(OBBulletedListItem *)v22 imageContainer];
    topAnchor6 = [imageContainer5 topAnchor];
    v113 = [topAnchor5 constraintLessThanOrEqualToAnchor:topAnchor6];
    v143[4] = v113;
    imageView14 = [(OBBulletedListItem *)v22 imageView];
    bottomAnchor5 = [imageView14 bottomAnchor];
    imageContainer6 = [(OBBulletedListItem *)v22 imageContainer];
    bottomAnchor6 = [imageContainer6 bottomAnchor];
    v95 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v143[5] = v95;
    stackView11 = [(OBBulletedListItem *)v22 stackView];
    [stackView11 trailingAnchor];
    v97 = v137 = buttonCopy;
    trailingAnchor = [(OBBulletedListItem *)v22 trailingAnchor];
    [(OBBulletedListItem *)v22 trailingMargin];
    v100 = [v97 constraintEqualToAnchor:trailingAnchor constant:-v99];
    v143[6] = v100;
    topConstraintToStackView = [(OBBulletedListItem *)v22 topConstraintToStackView];
    v143[7] = topConstraintToStackView;
    bottomConstraintToStackView = [(OBBulletedListItem *)v22 bottomConstraintToStackView];
    v143[8] = bottomConstraintToStackView;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:9];
    [v122 activateConstraints:v103];

    buttonCopy = v137;
    [(OBBulletedListItem *)v22 _updateImageViewLayout];
    accessoryButton2 = [(OBBulletedListItem *)v22 accessoryButton];

    descriptionCopy = v140;
    titleCopy = v141;
    colorCopy = v138;
    imageCopy = v139;
    if (accessoryButton2)
    {
      descriptionLabel8 = [(OBBulletedListItem *)v22 descriptionLabel];

      if (descriptionLabel8)
      {
        [(OBBulletedListItem *)v22 descriptionLabel];
      }

      else
      {
        [(OBBulletedListItem *)v22 titleLabel];
      }
      v106 = ;
      stackView12 = [(OBBulletedListItem *)v22 stackView];
      [stackView12 setCustomSpacing:v106 afterView:0.0];
    }

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_26:

  v108 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v8 traitCollectionDidChange:change];
  [(OBBulletedListItem *)self _updateImageViewLayout];
  _titleFont = [(OBBulletedListItem *)self _titleFont];
  titleLabel = [(OBBulletedListItem *)self titleLabel];
  [titleLabel setFont:_titleFont];

  _descriptionFont = [(OBBulletedListItem *)self _descriptionFont];
  descriptionLabel = [(OBBulletedListItem *)self descriptionLabel];
  [descriptionLabel setFont:_descriptionFont];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v18 layoutSubviews];
  imageView = [(OBBulletedListItem *)self imageView];
  image = [imageView image];
  [(OBBulletedListItem *)self imageSizeForImage:image];
  v6 = v5;

  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v6 <= v7)
  {
    v9 = 0;
  }

  else
  {
    stackViewLeadingConstraintVertical = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    if ([stackViewLeadingConstraintVertical isActive])
    {
      v9 = 0;
    }

    else
    {
      topConstraintToImageContainer = [(OBBulletedListItem *)self topConstraintToImageContainer];
      v9 = [topConstraintToImageContainer isActive] ^ 1;
    }
  }

  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v6 <= v11)
  {
    stackViewLeadingConstraintVertical2 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    if ([stackViewLeadingConstraintVertical2 isActive])
    {
      v12 = 0;
    }

    else
    {
      topConstraintToStackView = [(OBBulletedListItem *)self topConstraintToStackView];
      v12 = [topConstraintToStackView isActive] ^ 1;
    }
  }

  else
  {
    v12 = 0;
  }

  stackViewLeadingConstraintVertical3 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
  if ([stackViewLeadingConstraintVertical3 isActive])
  {
    topConstraintToStackView2 = [(OBBulletedListItem *)self topConstraintToStackView];
    v17 = [topConstraintToStackView2 isActive] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (((v9 | v12) & 1) != 0 || v17)
  {
    [(OBBulletedListItem *)self setNeedsUpdateConstraints];
  }
}

- (NSArray)imageContainerSizeConstraints
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (!self->_imageContainerSizeConstraints)
  {
    if (!+[OBFeatureFlags isNaturalUIEnabled](OBFeatureFlags, "isNaturalUIEnabled") || +[OBViewUtilities shouldUseAccessibilityLayout])
    {
      imageContainer = [(OBBulletedListItem *)self imageContainer];
      widthAnchor = [imageContainer widthAnchor];
      v5 = [widthAnchor constraintEqualToConstant:40.0];
      v35[0] = v5;
      imageContainer2 = [(OBBulletedListItem *)self imageContainer];
      heightAnchor = [imageContainer2 heightAnchor];
      imageContainer3 = [heightAnchor constraintEqualToConstant:40.0];
      v35[1] = imageContainer3;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      imageContainerSizeConstraints = self->_imageContainerSizeConstraints;
      self->_imageContainerSizeConstraints = v9;
LABEL_11:

      goto LABEL_12;
    }

    imageView = [(OBBulletedListItem *)self imageView];
    image = [imageView image];
    [(OBBulletedListItem *)self imageSizeForImage:image];
    v14 = v13;

    v15 = 1.0;
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      imageView2 = [(OBBulletedListItem *)self imageView];
      image2 = [imageView2 image];
      if (!image2)
      {
LABEL_9:

        goto LABEL_10;
      }

      v18 = image2;
      imageView3 = [(OBBulletedListItem *)self imageView];
      image3 = [imageView3 image];
      [image3 size];
      v22 = v21;

      if (v22 > 0.0)
      {
        imageView2 = [(OBBulletedListItem *)self imageView];
        image4 = [imageView2 image];
        [image4 size];
        v25 = v24;
        imageView4 = [(OBBulletedListItem *)self imageView];
        image5 = [imageView4 image];
        [image5 size];
        v15 = v25 / v28;

        goto LABEL_9;
      }
    }

LABEL_10:
    imageContainer = [(OBBulletedListItem *)self imageContainer];
    widthAnchor = [imageContainer widthAnchor];
    v5 = [widthAnchor constraintEqualToConstant:v14];
    v36[0] = v5;
    imageContainer2 = [(OBBulletedListItem *)self imageContainer];
    heightAnchor = [imageContainer2 heightAnchor];
    imageContainer3 = [(OBBulletedListItem *)self imageContainer];
    imageContainerSizeConstraints = [imageContainer3 widthAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:imageContainerSizeConstraints multiplier:v15];
    v36[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v31 = self->_imageContainerSizeConstraints;
    self->_imageContainerSizeConstraints = v30;

    goto LABEL_11;
  }

LABEL_12:
  v32 = self->_imageContainerSizeConstraints;
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)_updateImageViewLayout
{
  v68[5] = *MEMORY[0x1E69E9840];
  imageContainer = [(OBBulletedListItem *)self imageContainer];
  [imageContainer removeFromSuperview];

  imageView = [(OBBulletedListItem *)self imageView];
  image = [imageView image];
  [(OBBulletedListItem *)self imageSizeForImage:image];
  v7 = v6;

  if ([(OBBulletedListItem *)self shouldLayoutVertically])
  {
    stackView = [(OBBulletedListItem *)self stackView];
    imageContainer2 = [(OBBulletedListItem *)self imageContainer];
    [stackView insertArrangedSubview:imageContainer2 atIndex:0];

    stackView2 = [(OBBulletedListItem *)self stackView];
    [(OBBulletedListItem *)self _imageTextPadding];
    v12 = v11;
    imageContainer3 = [(OBBulletedListItem *)self imageContainer];
    [stackView2 setCustomSpacing:imageContainer3 afterView:v12];

    stackViewLeadingConstraintVertical = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];

    if (!stackViewLeadingConstraintVertical)
    {
      stackView3 = [(OBBulletedListItem *)self stackView];
      leadingAnchor = [stackView3 leadingAnchor];
      leadingAnchor2 = [(OBBulletedListItem *)self leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(OBBulletedListItem *)self setStackViewLeadingConstraintVertical:v18];
    }

    stackViewLeadingConstraintHorizontal = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];
    [stackViewLeadingConstraintHorizontal setActive:0];

    stackViewLeadingConstraintVertical2 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    [stackViewLeadingConstraintVertical2 setActive:1];

    v21 = MEMORY[0x1E696ACD8];
    imageContainerSizeConstraints = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [v21 activateConstraints:?];
    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    imageContainer4 = [(OBBulletedListItem *)self imageContainer];
    [(OBBulletedListItem *)self addSubview:imageContainer4];

    stackViewLeadingConstraintHorizontal2 = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];

    if (!stackViewLeadingConstraintHorizontal2)
    {
      stackView4 = [(OBBulletedListItem *)self stackView];
      leadingAnchor3 = [stackView4 leadingAnchor];
      imageContainer5 = [(OBBulletedListItem *)self imageContainer];
      trailingAnchor = [imageContainer5 trailingAnchor];
      [(OBBulletedListItem *)self _imageTextPadding];
      v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
      [(OBBulletedListItem *)self setStackViewLeadingConstraintHorizontal:v29];
    }

    v30 = MEMORY[0x1E696ACD8];
    imageContainerSizeConstraints2 = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [v30 deactivateConstraints:imageContainerSizeConstraints2];

    stackViewLeadingConstraintHorizontal3 = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];
    [stackViewLeadingConstraintHorizontal3 setActive:1];

    stackViewLeadingConstraintVertical3 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    [stackViewLeadingConstraintVertical3 setActive:0];

    v59 = MEMORY[0x1E696ACD8];
    topConstraintToImageContainer = [(OBBulletedListItem *)self topConstraintToImageContainer];
    v68[0] = topConstraintToImageContainer;
    bottomConstraintToImageContainer = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
    v68[1] = bottomConstraintToImageContainer;
    imageContainer6 = [(OBBulletedListItem *)self imageContainer];
    widthAnchor = [imageContainer6 widthAnchor];
    v60 = [widthAnchor constraintEqualToConstant:v7];
    v68[2] = v60;
    leadingAnchor4 = [(OBBulletedListItem *)self leadingAnchor];
    imageContainer7 = [(OBBulletedListItem *)self imageContainer];
    leadingAnchor5 = [imageContainer7 leadingAnchor];
    [(OBBulletedListItem *)self leadingMargin];
    v37 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:-v36];
    v68[3] = v37;
    imageContainer8 = [(OBBulletedListItem *)self imageContainer];
    trailingAnchor2 = [imageContainer8 trailingAnchor];
    stackView5 = [(OBBulletedListItem *)self stackView];
    leadingAnchor6 = [stackView5 leadingAnchor];
    [(OBBulletedListItem *)self _imageTextPadding];
    v43 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6 constant:-v42];
    v68[4] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
    [v59 activateConstraints:v44];

    v45 = +[OBFeatureFlags isNaturalUIEnabled];
    v46 = MEMORY[0x1E696ACD8];
    if (v45)
    {
      imageContainer9 = [(OBBulletedListItem *)self imageContainer];
      topAnchor = [imageContainer9 topAnchor];
      stackView6 = [(OBBulletedListItem *)self stackView];
      topAnchor2 = [stackView6 topAnchor];
      [(OBBulletedListItem *)self topMargin];
      v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      v67 = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
      [v46 activateConstraints:v52];
    }

    else
    {
      imageContainer9 = [(OBBulletedListItem *)self stackView];
      topAnchor = [imageContainer9 centerYAnchor];
      imageContainer10 = [(OBBulletedListItem *)self imageContainer];
      centerYAnchor = [imageContainer10 centerYAnchor];
      v55 = [topAnchor constraintEqualToAnchor:centerYAnchor];
      v66 = v55;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [v46 activateConstraints:v56];
    }

    v57 = *MEMORY[0x1E69E9840];
  }
}

- (double)_horizontalMargins
{
  shouldLayoutVertically = [(OBBulletedListItem *)self shouldLayoutVertically];
  result = 0.0;
  if (!shouldLayoutVertically)
  {
    v4 = +[OBFeatureFlags isNaturalUIEnabled];
    result = 4.0;
    if (!v4)
    {
      v5 = +[OBDevice currentDevice];
      templateType = [v5 templateType];

      result = 10.0;
      if (templateType <= 0xA)
      {
        return dbl_1B4FFC370[templateType];
      }
    }
  }

  return result;
}

- (id)_descriptionFont
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  v3 = MEMORY[0x1E69DDCF8];
  if (!v2)
  {
    v3 = MEMORY[0x1E69DDD80];
  }

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v3];

  return v4;
}

- (id)_titleFont
{
  descriptionLabel = [(OBBulletedListItem *)self descriptionLabel];

  if (descriptionLabel)
  {
    v4 = +[OBFeatureFlags isNaturalUIEnabled];
    v5 = MEMORY[0x1E69DDCF8];
    if (!v4)
    {
      v5 = MEMORY[0x1E69DDD80];
    }

    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*v5];
    v7 = [v6 fontDescriptorWithSymbolicTraits:2];

    _descriptionFont = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    _descriptionFont = [(OBBulletedListItem *)self _descriptionFont];
  }

  return _descriptionFont;
}

- (void)updateConstraints
{
  v23.receiver = self;
  v23.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v23 updateConstraints];
  topConstraintToStackView = [(OBBulletedListItem *)self topConstraintToStackView];
  [topConstraintToStackView setActive:0];

  bottomConstraintToStackView = [(OBBulletedListItem *)self bottomConstraintToStackView];
  [bottomConstraintToStackView setActive:0];

  imageView = [(OBBulletedListItem *)self imageView];
  image = [imageView image];
  [(OBBulletedListItem *)self imageSizeForImage:image];
  v8 = v7;

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v8 <= v11 || (-[OBBulletedListItem stackViewLeadingConstraintVertical](self, "stackViewLeadingConstraintVertical"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isActive], v12, (v13 & 1) != 0))
  {
    topConstraintToImageContainer = [(OBBulletedListItem *)self topConstraintToImageContainer];
    [array addObject:topConstraintToImageContainer];

    bottomConstraintToImageContainer = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
    [array addObject:bottomConstraintToImageContainer];

    topConstraintToStackView2 = [(OBBulletedListItem *)self topConstraintToStackView];
    [array2 addObject:topConstraintToStackView2];

    bottomConstraintToStackView2 = [(OBBulletedListItem *)self bottomConstraintToStackView];
  }

  else
  {
    topConstraintToStackView3 = [(OBBulletedListItem *)self topConstraintToStackView];
    [array addObject:topConstraintToStackView3];

    bottomConstraintToStackView3 = [(OBBulletedListItem *)self bottomConstraintToStackView];
    [array addObject:bottomConstraintToStackView3];

    imageContainerSizeConstraints = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [array2 addObjectsFromArray:imageContainerSizeConstraints];

    topConstraintToImageContainer2 = [(OBBulletedListItem *)self topConstraintToImageContainer];
    [array2 addObject:topConstraintToImageContainer2];

    bottomConstraintToStackView2 = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
  }

  v22 = bottomConstraintToStackView2;
  [array2 addObject:bottomConstraintToStackView2];

  [MEMORY[0x1E696ACD8] deactivateConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array2];
}

- (double)_combinedLabelHeight
{
  titleLabel = [(OBBulletedListItem *)self titleLabel];
  [(OBBulletedListItem *)self bounds];
  [titleLabel systemLayoutSizeFittingSize:{v4, 0.0}];
  v6 = v5;
  descriptionLabel = [(OBBulletedListItem *)self descriptionLabel];
  [(OBBulletedListItem *)self bounds];
  [descriptionLabel systemLayoutSizeFittingSize:{v8, 0.0}];
  v10 = v6 + v9;

  return v10;
}

@end