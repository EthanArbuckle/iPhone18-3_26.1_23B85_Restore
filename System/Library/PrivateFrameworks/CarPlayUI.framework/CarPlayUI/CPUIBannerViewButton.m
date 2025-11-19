@interface CPUIBannerViewButton
+ (id)_chevronImageForTraitCollection:(id)a3;
+ (id)buttonWithChevronImage;
+ (id)buttonWithOK;
+ (id)buttonWithText:(id)a3;
- (CPUIBannerViewButton)initWithFrame:(CGRect)a3;
- (void)_setupImagesIfNecessary;
- (void)_updateFontIfNecessary;
- (void)_updateImageConstraint;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPUIBannerViewButton

- (void)_setupImagesIfNecessary
{
  if ([(CPUIBannerViewButton *)self wantsChevronImage])
  {
    v3 = objc_opt_class();
    v4 = [(CPUIBannerViewButton *)self traitCollection];
    v6 = [v3 _chevronImageForTraitCollection:v4];

    v5 = [(CPUIBannerViewButton *)self imageView];
    [v5 setImage:v6];
  }
}

- (void)_updateFontIfNecessary
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(CPUIBannerViewButton *)self textLabel];

  if (v3)
  {
    v4 = MEMORY[0x277D74310];
    v5 = *MEMORY[0x277D76920];
    v6 = [(CPUIBannerViewButton *)self traitCollection];
    v7 = [v4 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v6];

    v16 = *MEMORY[0x277D74430];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v14 = *MEMORY[0x277D74380];
    v15 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v7 fontDescriptorByAddingAttributes:v10];

    v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
    v13 = [(CPUIBannerViewButton *)self textLabel];
    [v13 setFont:v12];
  }
}

- (void)_updateImageConstraint
{
  v3 = [(CPUIBannerViewButton *)self traitCollection];
  v4 = [v3 layoutDirection];

  v5 = 0.0;
  if (v4 == 1)
  {
    v6 = [(CPUIBannerViewButton *)self traitCollection];
    [v6 displayScale];
    if (v7 <= 2.0)
    {
      v5 = -2.5;
    }

    else
    {
      v5 = -2.0;
    }
  }

  v8 = [(CPUIBannerViewButton *)self imageCenterConstraint];
  [v8 setConstant:v5];
}

- (CPUIBannerViewButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CPUIBannerViewButton;
  v3 = [(CPUIBannerViewButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(CPUIBannerViewButton *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(UIView *)v5 setBackgroundColor:v6];

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
  v4 = [a1 buttonWithText:v3];

  return v4;
}

+ (id)buttonWithText:(id)a3
{
  v49[10] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setText:v5];

  [v7 setTextAlignment:1];
  [v7 sizeToFit];
  v8 = [a1 alloc];
  [v7 frame];
  v9 = CGRectGetWidth(v51) + 12.0;
  [v7 frame];
  v10 = [v8 initWithFrame:{0.0, 0.0, v9, CGRectGetHeight(v52) + 8.0}];
  [v10 setTextLabel:v7];
  [v10 addSubview:v7];
  [v10 _updateFontIfNecessary];
  v11 = [v10 highlightView];
  v12 = [v11 layer];
  [v12 setCornerRadius:6.0];

  v13 = [v11 layer];
  [v13 setCornerCurve:*MEMORY[0x277CDA138]];

  v14 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:v14];

  [v10 setSelected:0];
  v36 = MEMORY[0x277CCAAD0];
  v48 = [v10 leftAnchor];
  v47 = [v7 leftAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:-6.0];
  v49[0] = v46;
  v45 = [v10 rightAnchor];
  v44 = [v7 rightAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:6.0];
  v49[1] = v43;
  v42 = [v10 topAnchor];
  v41 = [v7 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:-4.0];
  v49[2] = v40;
  v39 = [v10 bottomAnchor];
  v38 = [v7 bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:4.0];
  v49[3] = v37;
  v35 = [v10 centerXAnchor];
  v34 = [v7 centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v49[4] = v33;
  v31 = [v10 centerYAnchor];
  v30 = [v7 centerYAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v49[5] = v29;
  v28 = [v11 leftAnchor];
  v27 = [v10 leftAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v49[6] = v26;
  v25 = [v11 rightAnchor];
  v24 = [v10 rightAnchor];
  v15 = [v25 constraintEqualToAnchor:v24];
  v49[7] = v15;
  v32 = v11;
  v16 = [v11 topAnchor];
  v17 = [v10 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v49[8] = v18;
  v19 = [v11 bottomAnchor];
  v20 = [v10 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v49[9] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:10];
  [v36 activateConstraints:v22];

  return v10;
}

+ (id)buttonWithChevronImage
{
  v35[8] = *MEMORY[0x277D85DE8];
  v2 = [[a1 alloc] initWithFrame:{0.0, 0.0, 29.0, 29.0}];
  v3 = [v2 imageView];
  [v3 setHidden:0];

  [v2 setWantsChevronImage:1];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v4];

  v5 = [v2 highlightView];
  v6 = [v5 layer];
  [v6 setCornerRadius:14.5];

  v7 = [v2 imageView];
  v8 = [v7 centerXAnchor];
  v9 = [v2 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v2 setImageCenterConstraint:v10];

  v25 = MEMORY[0x277CCAAD0];
  v34 = [v2 imageView];
  v33 = [v34 centerYAnchor];
  v32 = [v2 centerYAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v35[0] = v31;
  v30 = [v2 imageCenterConstraint];
  v35[1] = v30;
  v29 = [v5 widthAnchor];
  v28 = [v29 constraintEqualToConstant:29.0];
  v35[2] = v28;
  v27 = [v5 heightAnchor];
  v26 = [v27 constraintEqualToConstant:29.0];
  v35[3] = v26;
  v24 = [v2 leftAnchor];
  v23 = [v5 leftAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v35[4] = v22;
  v21 = [v2 rightAnchor];
  v20 = [v5 rightAnchor];
  v11 = [v21 constraintEqualToAnchor:v20];
  v35[5] = v11;
  v12 = [v2 topAnchor];
  v13 = [v5 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v35[6] = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v5 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v35[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  [v25 activateConstraints:v18];

  [v2 _setupImagesIfNecessary];
  [v2 _updateImageConstraint];
  [v2 setSelected:0];

  return v2;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CPUIBannerViewButton;
  [(CPUIBannerViewButton *)&v9 setSelected:?];
  v5 = [(CPUIBannerViewButton *)self highlightView];
  [v5 setHidden:!v3];

  if (v3)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }
  v6 = ;
  v7 = [(CPUIBannerViewButton *)self imageView];
  [v7 setTintColor:v6];

  v8 = [(CPUIBannerViewButton *)self textLabel];
  [v8 setTextColor:v6];

  [(CPUIBannerViewButton *)self _setupImagesIfNecessary];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUIBannerViewButton;
  [(CPUIBannerViewButton *)&v4 traitCollectionDidChange:a3];
  [(CPUIBannerViewButton *)self _updateFontIfNecessary];
  [(CPUIBannerViewButton *)self _setupImagesIfNecessary];
  [(CPUIBannerViewButton *)self _updateImageConstraint];
}

+ (id)_chevronImageForTraitCollection:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74310];
  v4 = *MEMORY[0x277D76920];
  v5 = a3;
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
  v14 = [v13 configurationWithTraitCollection:v5];

  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v14];

  return v15;
}

@end