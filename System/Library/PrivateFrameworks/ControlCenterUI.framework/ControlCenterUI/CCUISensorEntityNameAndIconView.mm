@interface CCUISensorEntityNameAndIconView
+ (CGSize)iconSize;
- (CCUISensorEntityNameAndIconView)initWithSensorEntity:(id)entity maxSize:(CGSize)size;
- (CGRect)cachedExpandedRect;
- (id)_titleLabelForSensorAttributionEntity:(id)entity maxSize:(CGSize)size;
- (void)setBlurRadius:(double)radius;
@end

@implementation CCUISensorEntityNameAndIconView

- (id)_titleLabelForSensorAttributionEntity:(id)entity maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24[3] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  traitCollection = [(CCUISensorEntityNameAndIconView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  displayNameForListView = [entityCopy displayNameForListView];

  defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
  v14 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:1];

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v16 = [defaultParagraphStyle mutableCopy];

  [v16 setUsesDefaultHyphenation:1];
  v17 = *MEMORY[0x277D740A8];
  v23[0] = *MEMORY[0x277D74118];
  v23[1] = v17;
  v24[0] = v16;
  v24[1] = v14;
  v23[2] = *MEMORY[0x277D740C0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v24[2] = whiteColor;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:displayNameForListView attributes:v19];
  if (IsAccessibilityCategory)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  [v11 setNumberOfLines:v21];
  [v11 setAttributedText:v20];
  [v11 sizeThatFits:{width, height}];
  if (IsAccessibilityCategory)
  {
    [v11 setAdjustsFontForContentSizeCategory:1];
  }

  BSRectWithSize();
  [v11 setFrame:?];

  return v11;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(CCUISensorEntityNameAndIconView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (CCUISensorEntityNameAndIconView)initWithSensorEntity:(id)entity maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v51[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v50.receiver = self;
  v50.super_class = CCUISensorEntityNameAndIconView;
  v8 = [(CCUISensorEntityNameAndIconView *)&v50 init];
  if (v8)
  {
    bundleIdentifier = [entityCopy bundleIdentifier];
    [objc_opt_class() iconSize];
    v11 = v10;
    v12 = width - (v10 + 16.0);
    if (bundleIdentifier)
    {
      v13 = +[CCUISensorEntityIconCache sharedInstance];
      v14 = [v13 imageForEntity:entityCopy];
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
    entityIconView = v8->_entityIconView;
    v8->_entityIconView = v15;

    [(CCUISensorEntityNameAndIconView *)v8 addSubview:v8->_entityIconView];
    v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    layer = [(CCUISensorEntityNameAndIconView *)v8 layer];
    v51[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    [layer setFilters:v19];

    [(SBFView *)v8 setAnimatedLayerProperties:&unk_28302E3A0];
    [(CCUISensorEntityNameAndIconView *)v8 setClipsToBounds:0];
    height = [(CCUISensorEntityNameAndIconView *)v8 _titleLabelForSensorAttributionEntity:entityCopy maxSize:v12, height];
    appNameLabel = v8->_appNameLabel;
    v8->_appNameLabel = height;

    [(CCUISensorEntityNameAndIconView *)v8 addSubview:v8->_appNameLabel];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v24 = 0.0;
    if (userInterfaceLayoutDirection == 1)
    {
      [(UILabel *)v8->_appNameLabel bounds];
      v24 = v25 + 8.0;
    }

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
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
    traitCollection = [(CCUISensorEntityNameAndIconView *)v8 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v38 = v8->_entityIconView;
      [(UIImageView *)v38 center];
      v40 = v39;
      [(UILabel *)v8->_appNameLabel center];
      [(UIImageView *)v38 setCenter:v40];
    }

    mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection3 = [mEMORY[0x277D75128]3 userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection3 == 1)
    {
      v43 = v24;
    }

    else
    {
      v43 = v32;
    }

    v44 = 0.0;
    if (userInterfaceLayoutDirection3 == 1)
    {
      v45 = v11;
    }

    else
    {
      v45 = v29;
    }

    if (userInterfaceLayoutDirection3 == 1)
    {
      v46 = v11;
    }

    else
    {
      v46 = v31;
    }

    MaxX = CGRectGetMaxX(*&v43);

    if (v31 >= v11)
    {
      v48 = v31;
    }

    else
    {
      v48 = v11;
    }

    [(CCUISensorEntityNameAndIconView *)v8 setFrame:0.0, 0.0, MaxX, v48];
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

@end