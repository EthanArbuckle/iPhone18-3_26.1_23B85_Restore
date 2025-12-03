@interface NTKPeopleComplicationImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKPeopleComplicationImageView)initWithFrame:(CGRect)frame;
- (int64_t)_profileImageFilterStyle;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setImageProvider:(id)provider;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation NTKPeopleComplicationImageView

- (NTKPeopleComplicationImageView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = NTKPeopleComplicationImageView;
  v3 = [(NTKPeopleComplicationImageView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v4;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_nameLabel setTextColor:whiteColor];

    [(UILabel *)v3->_nameLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_nameLabel setTextAlignment:1];
    [(NTKPeopleComplicationImageView *)v3 addSubview:v3->_nameLabel];
    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    profileImageView = v3->_profileImageView;
    v3->_profileImageView = v7;

    [(UIImageView *)v3->_profileImageView setContentMode:1];
    [(UIImageView *)v3->_profileImageView setClipsToBounds:1];
    [(NTKPeopleComplicationImageView *)v3 addSubview:v3->_profileImageView];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    ringView = v3->_ringView;
    v3->_ringView = v9;

    [(UIView *)v3->_ringView setClipsToBounds:1];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    cGColor = [whiteColor2 CGColor];
    layer = [(UIView *)v3->_ringView layer];
    [layer setBorderColor:cGColor];

    v3->_usingPersonSymbol = 0;
    [(NTKPeopleComplicationImageView *)v3 addSubview:v3->_ringView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = NTKPeopleComplicationImageView;
  [(NTKPeopleComplicationImageView *)&v30 layoutSubviews];
  [(NTKPeopleComplicationImageView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  if (v3 >= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v3;
  }

  v12 = (v3 - v11) * 0.5;
  v13 = (v4 - v11) * 0.5;
  [(UIImageView *)self->_profileImageView setFrame:v12, v13, v11, v11];
  layer = [(UIImageView *)self->_profileImageView layer];
  [layer setCornerRadius:v11 * 0.5];

  [(UIView *)self->_ringView setFrame:v12, v13, v11, v11];
  layer2 = [(UIView *)self->_ringView layer];
  [layer2 setCornerRadius:v11 * 0.5];

  layer3 = [(UIView *)self->_ringView layer];
  [layer3 borderWidth];
  v18 = v17 * 0.5;
  layer4 = [(UIView *)self->_ringView layer];
  [layer4 borderWidth];
  v21 = v20 * 0.5;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v9;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v18, v21);
  width = v32.size.width;
  height = v32.size.height;

  [(UILabel *)self->_nameLabel sizeThatFits:width, height];
  v26 = v24;
  v27 = v25;
  if (v25 > 0.0 && v24 > 0.0)
  {
    v28 = v24 / v25;
    v29 = width * width / (v28 * v28 + 1.0);
    v27 = sqrtf(v29);
    v26 = v28 * v27;
  }

  [(UILabel *)self->_nameLabel setFrame:(v9 - v26) * 0.5, (v10 - v27) * 0.5];
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  objc_storeStrong(&self->_imageProvider, provider);
  v5 = self->_imageProvider;
  nameAbbreviation = [(CLKImageProvider *)v5 nameAbbreviation];
  uppercaseString = [nameAbbreviation uppercaseString];
  [(UILabel *)self->_nameLabel setText:uppercaseString];

  profileImage = [(CLKImageProvider *)v5 profileImage];
  if (profileImage)
  {

LABEL_4:
    profileImage2 = [(CLKImageProvider *)v5 profileImage];
    [(UIImageView *)self->_profileImageView setImage:profileImage2];

    profileImage3 = [(CLKImageProvider *)v5 profileImage];
    [(UILabel *)self->_nameLabel setHidden:profileImage3 != 0];

    profileImage4 = [(CLKImageProvider *)v5 profileImage];
    [(UIImageView *)self->_profileImageView setHidden:profileImage4 == 0];

    v14 = MEMORY[0x277CBBB08];
    [(CLKImageProvider *)v5 fontSize];
    v15 = [v14 systemFontOfSize:*MEMORY[0x277CBB6C0] weight:? design:?];
    cLKFontWithAlternativePunctuation = [v15 CLKFontWithAlternativePunctuation];
    [(UILabel *)self->_nameLabel setFont:cLKFontWithAlternativePunctuation];

    v17 = 0;
    goto LABEL_5;
  }

  text = [(UILabel *)self->_nameLabel text];
  v10 = [text length];

  if (v10)
  {
    goto LABEL_4;
  }

  v21 = [MEMORY[0x277CBBB98] _symbolImageProviderWithSystemName:@"person.crop.circle.fill"];
  personSymbolImageProvider = self->_personSymbolImageProvider;
  self->_personSymbolImageProvider = v21;

  v23 = self->_personSymbolImageProvider;
  [(UIImageView *)self->_profileImageView frame];
  v25 = v24;
  v27 = v26;
  [(UIImageView *)self->_profileImageView frame];
  v17 = 1;
  [(CLKSymbolImageProvider *)v23 finalizeWithPointSize:0 weight:5 maxSDKSize:1 maxDeviceSize:v25 maskToCircle:v27];
  v28 = self->_personSymbolImageProvider;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v30 = [(CLKSymbolImageProvider *)v28 createSymbolImageForType:2 color:whiteColor];
  [(UIImageView *)self->_profileImageView setImage:v30];

  [(UIImageView *)self->_profileImageView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:1];
LABEL_5:
  self->_usingPersonSymbol = v17;
  [(CLKImageProvider *)v5 borderWidth];
  v19 = v18;
  layer = [(UIView *)self->_ringView layer];
  [layer setBorderWidth:v19];

  [(NTKPeopleComplicationImageView *)self setNeedsLayout];
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  [(UILabel *)self->_nameLabel setTextColor:self->_color];
  cGColor = [(UIColor *)self->_color CGColor];
  layer = [(UIView *)self->_ringView layer];

  [layer setBorderColor:cGColor];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v6 = [metadata objectForKey:@"NTKPeopleComplicationImageProviderMetadataKey"];

  [(NTKPeopleComplicationImageView *)self setImageProvider:v6];
}

- (int64_t)_profileImageFilterStyle
{
  filterProvider = [(NTKPeopleComplicationImageView *)self filterProvider];
  device = [filterProvider device];
  v4 = NTKShowGossamerUI(device);

  if (v4)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKPeopleComplicationImageView *)self filterProvider];
  v6 = [filterProvider colorForView:self accented:1];
  color = self->_color;
  self->_color = v6;

  self->_monochromeTintAmount = fraction;
  filterProvider2 = [(NTKPeopleComplicationImageView *)self filterProvider];
  v17 = [filterProvider2 filtersForView:self style:3 fraction:fraction];

  if (v17)
  {
    if (self->_usingPersonSymbol)
    {
      layer = [(UIImageView *)self->_profileImageView layer];
      [layer setFilters:v17];
    }

    else
    {
      filterProvider3 = [(NTKPeopleComplicationImageView *)self filterProvider];
      layer = [filterProvider3 filtersForView:self style:-[NTKPeopleComplicationImageView _profileImageFilterStyle](self fraction:{"_profileImageFilterStyle"), fraction}];

      layer2 = [(UIImageView *)self->_profileImageView layer];
      [layer2 setFilters:layer];
    }

    layer3 = [(UILabel *)self->_nameLabel layer];
    [layer3 setFilters:v17];
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v14 = NTKInterpolateBetweenColors();
  cGColor = [v14 CGColor];
  layer4 = [(UIView *)self->_ringView layer];
  [layer4 setBorderColor:cGColor];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end