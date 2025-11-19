@interface NTKPeopleComplicationImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKPeopleComplicationImageView)initWithFrame:(CGRect)a3;
- (int64_t)_profileImageFilterStyle;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setImageProvider:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
@end

@implementation NTKPeopleComplicationImageView

- (NTKPeopleComplicationImageView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = NTKPeopleComplicationImageView;
  v3 = [(NTKPeopleComplicationImageView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v4;

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_nameLabel setTextColor:v6];

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
    v11 = [MEMORY[0x277D75348] whiteColor];
    v12 = [v11 CGColor];
    v13 = [(UIView *)v3->_ringView layer];
    [v13 setBorderColor:v12];

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
  v14 = [(UIImageView *)self->_profileImageView layer];
  [v14 setCornerRadius:v11 * 0.5];

  [(UIView *)self->_ringView setFrame:v12, v13, v11, v11];
  v15 = [(UIView *)self->_ringView layer];
  [v15 setCornerRadius:v11 * 0.5];

  v16 = [(UIView *)self->_ringView layer];
  [v16 borderWidth];
  v18 = v17 * 0.5;
  v19 = [(UIView *)self->_ringView layer];
  [v19 borderWidth];
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

- (void)setImageProvider:(id)a3
{
  v31 = a3;
  objc_storeStrong(&self->_imageProvider, a3);
  v5 = self->_imageProvider;
  v6 = [(CLKImageProvider *)v5 nameAbbreviation];
  v7 = [v6 uppercaseString];
  [(UILabel *)self->_nameLabel setText:v7];

  v8 = [(CLKImageProvider *)v5 profileImage];
  if (v8)
  {

LABEL_4:
    v11 = [(CLKImageProvider *)v5 profileImage];
    [(UIImageView *)self->_profileImageView setImage:v11];

    v12 = [(CLKImageProvider *)v5 profileImage];
    [(UILabel *)self->_nameLabel setHidden:v12 != 0];

    v13 = [(CLKImageProvider *)v5 profileImage];
    [(UIImageView *)self->_profileImageView setHidden:v13 == 0];

    v14 = MEMORY[0x277CBBB08];
    [(CLKImageProvider *)v5 fontSize];
    v15 = [v14 systemFontOfSize:*MEMORY[0x277CBB6C0] weight:? design:?];
    v16 = [v15 CLKFontWithAlternativePunctuation];
    [(UILabel *)self->_nameLabel setFont:v16];

    v17 = 0;
    goto LABEL_5;
  }

  v9 = [(UILabel *)self->_nameLabel text];
  v10 = [v9 length];

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
  v29 = [MEMORY[0x277D75348] whiteColor];
  v30 = [(CLKSymbolImageProvider *)v28 createSymbolImageForType:2 color:v29];
  [(UIImageView *)self->_profileImageView setImage:v30];

  [(UIImageView *)self->_profileImageView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:1];
LABEL_5:
  self->_usingPersonSymbol = v17;
  [(CLKImageProvider *)v5 borderWidth];
  v19 = v18;
  v20 = [(UIView *)self->_ringView layer];
  [v20 setBorderWidth:v19];

  [(NTKPeopleComplicationImageView *)self setNeedsLayout];
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  [(UILabel *)self->_nameLabel setTextColor:self->_color];
  v6 = [(UIColor *)self->_color CGColor];
  v7 = [(UIView *)self->_ringView layer];

  [v7 setBorderColor:v6];
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKey:@"NTKPeopleComplicationImageProviderMetadataKey"];

  [(NTKPeopleComplicationImageView *)self setImageProvider:v6];
}

- (int64_t)_profileImageFilterStyle
{
  v2 = [(NTKPeopleComplicationImageView *)self filterProvider];
  v3 = [v2 device];
  v4 = NTKShowGossamerUI(v3);

  if (v4)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKPeopleComplicationImageView *)self filterProvider];
  v6 = [v5 colorForView:self accented:1];
  color = self->_color;
  self->_color = v6;

  self->_monochromeTintAmount = a3;
  v8 = [(NTKPeopleComplicationImageView *)self filterProvider];
  v17 = [v8 filtersForView:self style:3 fraction:a3];

  if (v17)
  {
    if (self->_usingPersonSymbol)
    {
      v9 = [(UIImageView *)self->_profileImageView layer];
      [v9 setFilters:v17];
    }

    else
    {
      v10 = [(NTKPeopleComplicationImageView *)self filterProvider];
      v9 = [v10 filtersForView:self style:-[NTKPeopleComplicationImageView _profileImageFilterStyle](self fraction:{"_profileImageFilterStyle"), a3}];

      v11 = [(UIImageView *)self->_profileImageView layer];
      [v11 setFilters:v9];
    }

    v12 = [(UILabel *)self->_nameLabel layer];
    [v12 setFilters:v17];
  }

  v13 = [MEMORY[0x277D75348] whiteColor];
  v14 = NTKInterpolateBetweenColors();
  v15 = [v14 CGColor];
  v16 = [(UIView *)self->_ringView layer];
  [v16 setBorderColor:v15];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end