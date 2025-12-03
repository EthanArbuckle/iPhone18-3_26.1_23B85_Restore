@interface CPUIBannerViewButton
+ (id)_chevronImageForTraitCollection:(id)collection;
+ (id)buttonWithChevronImage;
+ (id)buttonWithOK;
+ (id)buttonWithText:(id)text;
- (CPUIBannerViewButton)initWithFrame:(CGRect)frame;
- (void)_setupImagesIfNecessary;
- (void)_updateFontIfNecessary;
- (void)_updateImageConstraint;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIBannerViewButton

- (void)_setupImagesIfNecessary
{
  if ([(CPUIBannerViewButton *)self wantsChevronImage])
  {
    v3 = objc_opt_class();
    traitCollection = [(CPUIBannerViewButton *)self traitCollection];
    v6 = [v3 _chevronImageForTraitCollection:traitCollection];

    imageView = [(CPUIBannerViewButton *)self imageView];
    [imageView setImage:v6];
  }
}

- (void)_updateFontIfNecessary
{
  v17[1] = *MEMORY[0x277D85DE8];
  textLabel = [(CPUIBannerViewButton *)self textLabel];

  if (textLabel)
  {
    v4 = MEMORY[0x277D74310];
    v5 = *MEMORY[0x277D76920];
    traitCollection = [(CPUIBannerViewButton *)self traitCollection];
    v7 = [v4 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:traitCollection];

    v16 = *MEMORY[0x277D74430];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v14 = *MEMORY[0x277D74380];
    v15 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v7 fontDescriptorByAddingAttributes:v10];

    v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
    textLabel2 = [(CPUIBannerViewButton *)self textLabel];
    [textLabel2 setFont:v12];
  }
}

- (void)_updateImageConstraint
{
  traitCollection = [(CPUIBannerViewButton *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v5 = 0.0;
  if (layoutDirection == 1)
  {
    traitCollection2 = [(CPUIBannerViewButton *)self traitCollection];
    [traitCollection2 displayScale];
    if (v7 <= 2.0)
    {
      v5 = -2.5;
    }

    else
    {
      v5 = -2.0;
    }
  }

  imageCenterConstraint = [(CPUIBannerViewButton *)self imageCenterConstraint];
  [imageCenterConstraint setConstant:v5];
}

- (CPUIBannerViewButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CPUIBannerViewButton;
  v3 = [(CPUIBannerViewButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(CPUIBannerViewButton *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(UIView *)v5 setBackgroundColor:_carSystemFocusColor];

    [(CPUIBannerViewButton *)v3 addSubview:v5];
    highlightView = v3->_highlightView;
    v3->_highlightView = v5;
    v8 = v5;

    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(UIImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v9 setHidden:1];
    [(CPUIBannerViewButton *)v3 addSubview:v9];
    imageView = v3->_imageView;
    v3->_imageView = v9;
  }

  return v3;
}

+ (id)buttonWithOK
{
  v3 = CPUILocalizedStringForKey(@"BANNER_OKAY");
  v4 = [self buttonWithText:v3];

  return v4;
}

+ (id)buttonWithText:(id)text
{
  v49[10] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756B8];
  textCopy = text;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setText:textCopy];

  [v7 setTextAlignment:1];
  [v7 sizeToFit];
  v8 = [self alloc];
  [v7 frame];
  v9 = CGRectGetWidth(v51) + 12.0;
  [v7 frame];
  v10 = [v8 initWithFrame:{0.0, 0.0, v9, CGRectGetHeight(v52) + 8.0}];
  [v10 setTextLabel:v7];
  [v10 addSubview:v7];
  [v10 _updateFontIfNecessary];
  highlightView = [v10 highlightView];
  layer = [highlightView layer];
  [layer setCornerRadius:6.0];

  layer2 = [highlightView layer];
  [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor];

  [v10 setSelected:0];
  v36 = MEMORY[0x277CCAAD0];
  leftAnchor = [v10 leftAnchor];
  leftAnchor2 = [v7 leftAnchor];
  v46 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-6.0];
  v49[0] = v46;
  rightAnchor = [v10 rightAnchor];
  rightAnchor2 = [v7 rightAnchor];
  v43 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:6.0];
  v49[1] = v43;
  topAnchor = [v10 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-4.0];
  v49[2] = v40;
  bottomAnchor = [v10 bottomAnchor];
  bottomAnchor2 = [v7 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v49[3] = v37;
  centerXAnchor = [v10 centerXAnchor];
  centerXAnchor2 = [v7 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v49[4] = v33;
  centerYAnchor = [v10 centerYAnchor];
  centerYAnchor2 = [v7 centerYAnchor];
  v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[5] = v29;
  leftAnchor3 = [highlightView leftAnchor];
  leftAnchor4 = [v10 leftAnchor];
  v26 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v49[6] = v26;
  rightAnchor3 = [highlightView rightAnchor];
  rightAnchor4 = [v10 rightAnchor];
  v15 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v49[7] = v15;
  v32 = highlightView;
  topAnchor3 = [highlightView topAnchor];
  topAnchor4 = [v10 topAnchor];
  v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v49[8] = v18;
  bottomAnchor3 = [highlightView bottomAnchor];
  bottomAnchor4 = [v10 bottomAnchor];
  v21 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v49[9] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:10];
  [v36 activateConstraints:v22];

  return v10;
}

+ (id)buttonWithChevronImage
{
  v35[8] = *MEMORY[0x277D85DE8];
  v2 = [[self alloc] initWithFrame:{0.0, 0.0, 29.0, 29.0}];
  imageView = [v2 imageView];
  [imageView setHidden:0];

  [v2 setWantsChevronImage:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:clearColor];

  highlightView = [v2 highlightView];
  layer = [highlightView layer];
  [layer setCornerRadius:14.5];

  imageView2 = [v2 imageView];
  centerXAnchor = [imageView2 centerXAnchor];
  centerXAnchor2 = [v2 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v2 setImageCenterConstraint:v10];

  v25 = MEMORY[0x277CCAAD0];
  imageView3 = [v2 imageView];
  centerYAnchor = [imageView3 centerYAnchor];
  centerYAnchor2 = [v2 centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v35[0] = v31;
  imageCenterConstraint = [v2 imageCenterConstraint];
  v35[1] = imageCenterConstraint;
  widthAnchor = [highlightView widthAnchor];
  v28 = [widthAnchor constraintEqualToConstant:29.0];
  v35[2] = v28;
  heightAnchor = [highlightView heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:29.0];
  v35[3] = v26;
  leftAnchor = [v2 leftAnchor];
  leftAnchor2 = [highlightView leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v35[4] = v22;
  rightAnchor = [v2 rightAnchor];
  rightAnchor2 = [highlightView rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v35[5] = v11;
  topAnchor = [v2 topAnchor];
  topAnchor2 = [highlightView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[6] = v14;
  bottomAnchor = [v2 bottomAnchor];
  bottomAnchor2 = [highlightView bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  [v25 activateConstraints:v18];

  [v2 _setupImagesIfNecessary];
  [v2 _updateImageConstraint];
  [v2 setSelected:0];

  return v2;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = CPUIBannerViewButton;
  [(CPUIBannerViewButton *)&v9 setSelected:?];
  highlightView = [(CPUIBannerViewButton *)self highlightView];
  [highlightView setHidden:!selectedCopy];

  if (selectedCopy)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }
  v6 = ;
  imageView = [(CPUIBannerViewButton *)self imageView];
  [imageView setTintColor:v6];

  textLabel = [(CPUIBannerViewButton *)self textLabel];
  [textLabel setTextColor:v6];

  [(CPUIBannerViewButton *)self _setupImagesIfNecessary];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPUIBannerViewButton;
  [(CPUIBannerViewButton *)&v4 traitCollectionDidChange:change];
  [(CPUIBannerViewButton *)self _updateFontIfNecessary];
  [(CPUIBannerViewButton *)self _setupImagesIfNecessary];
  [(CPUIBannerViewButton *)self _updateImageConstraint];
}

+ (id)_chevronImageForTraitCollection:(id)collection
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74310];
  v4 = *MEMORY[0x277D76920];
  collectionCopy = collection;
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  v19 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v17 = *MEMORY[0x277D74380];
  v18 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v11 = [v6 fontDescriptorByAddingAttributes:v10];

  v12 = MEMORY[0x277D755D0];
  [v7 pointSize];
  v13 = [v12 configurationWithPointSize:9 weight:1 scale:?];
  v14 = [v13 configurationWithTraitCollection:collectionCopy];

  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v14];

  return v15;
}

@end