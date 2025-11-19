@interface CCUISensorEntityHeaderView
+ (CGSize)iconSize;
- (CCUISensorEntityHeaderView)initWithSensorEntity:(id)a3 maxSize:(CGSize)a4;
- (CGRect)cachedExpandedRect;
- (CGSize)expectedSize;
- (id)_titleLabelForSensorAttributionEntity:(id)a3 maxSize:(CGSize)a4;
- (void)setBlurRadius:(double)a3;
@end

@implementation CCUISensorEntityHeaderView

- (id)_titleLabelForSensorAttributionEntity:(id)a3 maxSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D756B8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 displayNameForCompactView];

  v10 = [MEMORY[0x277CF0D60] defaultFontProvider];
  v11 = [v10 preferredFontForTextStyle:*MEMORY[0x277D76998] hiFontStyle:4];

  v12 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v13 = [v12 mutableCopy];

  [v13 setUsesDefaultHyphenation:1];
  v14 = *MEMORY[0x277D740A8];
  v19[0] = *MEMORY[0x277D74118];
  v19[1] = v14;
  v20[0] = v13;
  v20[1] = v11;
  v19[2] = *MEMORY[0x277D740C0];
  v15 = [MEMORY[0x277D75348] whiteColor];
  v20[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9 attributes:v16];
  [v8 setNumberOfLines:0];
  [v8 setAttributedText:v17];
  [v8 sizeThatFits:{width, height}];
  [v8 setAdjustsFontForContentSizeCategory:1];
  BSRectWithSize();
  [v8 setFrame:?];

  return v8;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(CCUISensorEntityHeaderView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (CCUISensorEntityHeaderView)initWithSensorEntity:(id)a3 maxSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v48[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v47.receiver = self;
  v47.super_class = CCUISensorEntityHeaderView;
  v8 = [(CCUISensorEntityHeaderView *)&v47 init];
  if (v8)
  {
    v9 = [v7 bundleIdentifier];
    [objc_opt_class() iconSize];
    v11 = v10;
    v12 = width - (v10 + 16.0);
    if (v9)
    {
      v13 = +[CCUISensorEntityIconCache sharedInstance];
      v14 = [v13 imageForEntity:v7];
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
    entityIconView = v8->_entityIconView;
    v8->_entityIconView = v15;

    [(CCUISensorEntityHeaderView *)v8 addSubview:v8->_entityIconView];
    v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    v18 = [(CCUISensorEntityHeaderView *)v8 layer];
    v48[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    [v18 setFilters:v19];

    [(SBFView *)v8 setAnimatedLayerProperties:&unk_28302E3D0];
    [(CCUISensorEntityHeaderView *)v8 setClipsToBounds:0];
    v20 = [(CCUISensorEntityHeaderView *)v8 _titleLabelForSensorAttributionEntity:v7 maxSize:v12, height];
    appNameLabel = v8->_appNameLabel;
    v8->_appNameLabel = v20;

    [(CCUISensorEntityHeaderView *)v8 addSubview:v8->_appNameLabel];
    v22 = [MEMORY[0x277D75128] sharedApplication];
    v23 = [v22 userInterfaceLayoutDirection];

    v24 = 0.0;
    if (v23 == 1)
    {
      [(UILabel *)v8->_appNameLabel bounds];
      v24 = v25 + 8.0;
    }

    v26 = [MEMORY[0x277D75128] sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];

    if (v27 == 1)
    {
      [(UILabel *)v8->_appNameLabel bounds];
      v29 = v28;
      [(UILabel *)v8->_appNameLabel bounds];
      v31 = v30;
      v32 = 0.0;
    }

    else
    {
      v32 = v11 + 8.0;
      [(UILabel *)v8->_appNameLabel bounds];
      v29 = v33;
      [(UILabel *)v8->_appNameLabel bounds];
      v31 = v34;
    }

    [(UIImageView *)v8->_entityIconView setFrame:v24, 0.0, v11, v11];
    [(UILabel *)v8->_appNameLabel setFrame:v32, 0.0, v29, v31];
    v35 = v8->_entityIconView;
    [(UIImageView *)v35 center];
    v37 = v36;
    [(UILabel *)v8->_appNameLabel center];
    [(UIImageView *)v35 setCenter:v37];
    v38 = [MEMORY[0x277D75128] sharedApplication];
    v39 = [v38 userInterfaceLayoutDirection];
    if (v39 == 1)
    {
      v40 = v24;
    }

    else
    {
      v40 = v32;
    }

    v41 = 0.0;
    if (v39 == 1)
    {
      v42 = v11;
    }

    else
    {
      v42 = v29;
    }

    if (v39 == 1)
    {
      v43 = v11;
    }

    else
    {
      v43 = v31;
    }

    MaxX = CGRectGetMaxX(*&v40);

    if (v31 >= v11)
    {
      v45 = v31;
    }

    else
    {
      v45 = v11;
    }

    v8->_expectedSize.width = MaxX;
    v8->_expectedSize.height = v45;
    [(CCUISensorEntityHeaderView *)v8 setFrame:0.0, 0.0, MaxX];
  }

  return v8;
}

+ (CGSize)iconSize
{
  +[CCUISensorEntityIconCache iconSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)cachedExpandedRect
{
  x = self->cachedExpandedRect.origin.x;
  y = self->cachedExpandedRect.origin.y;
  width = self->cachedExpandedRect.size.width;
  height = self->cachedExpandedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)expectedSize
{
  width = self->_expectedSize.width;
  height = self->_expectedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end