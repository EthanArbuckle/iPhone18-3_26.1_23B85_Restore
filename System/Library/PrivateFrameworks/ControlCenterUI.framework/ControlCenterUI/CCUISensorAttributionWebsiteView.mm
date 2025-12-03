@interface CCUISensorAttributionWebsiteView
- (CCUISensorAttributionWebsiteView)initWithSensorActivityData:(id)data maxSize:(CGSize)size;
- (CGRect)cachedExpandedRect;
- (id)_titleLabelForSensorActivityData:(id)data maxSize:(CGSize)size;
- (void)setBlurRadius:(double)radius;
@end

@implementation CCUISensorAttributionWebsiteView

- (id)_titleLabelForSensorActivityData:(id)data maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277D756B8];
  dataCopy = data;
  v8 = objc_alloc_init(v6);
  website = [dataCopy website];

  defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
  v11 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:1];

  [v8 setAdjustsFontSizeToFitWidth:1];
  [v8 setMinimumScaleFactor:0.5];
  [v8 setText:website];
  [v8 setFont:v11];
  layer = [v8 layer];
  v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  [layer setCompositingFilter:v13];

  layer2 = [v8 layer];
  [layer2 setAllowsGroupBlending:0];

  grayColor = [MEMORY[0x277D75348] grayColor];
  [v8 setTextColor:grayColor];

  [v8 sizeThatFits:{width, height}];
  BSRectWithSize();
  [v8 setFrame:?];

  return v8;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(CCUISensorAttributionWebsiteView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (CCUISensorAttributionWebsiteView)initWithSensorActivityData:(id)data maxSize:(CGSize)size
{
  width = size.width;
  v21[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = CCUISensorAttributionWebsiteView;
  v7 = [(CCUISensorAttributionWebsiteView *)&v20 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    layer = [(CCUISensorAttributionWebsiteView *)v7 layer];
    v21[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [layer setFilters:v10];

    layer2 = [(CCUISensorAttributionWebsiteView *)v7 layer];
    [layer2 setAllowsGroupBlending:0];

    [(SBFView *)v7 setAnimatedLayerProperties:&unk_28302E358];
    [(CCUISensorAttributionWebsiteView *)v7 setClipsToBounds:0];
    v12 = [objc_alloc(MEMORY[0x277D756C8]) initWithDelegate:v7];
    [(CCUISensorAttributionWebsiteView *)v7 addInteraction:v12];
    v13 = [(CCUISensorAttributionWebsiteView *)v7 _titleLabelForSensorActivityData:dataCopy maxSize:width, 20.0];
    websiteLabel = v7->_websiteLabel;
    v7->_websiteLabel = v13;

    [(CCUISensorAttributionWebsiteView *)v7 addSubview:v7->_websiteLabel];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    [(UILabel *)v7->_websiteLabel bounds];
    if (userInterfaceLayoutDirection == 1)
    {
      v18 = width - v17;
      [(UILabel *)v7->_websiteLabel bounds];
    }

    else
    {
      v18 = 0.0;
    }

    [(UILabel *)v7->_websiteLabel setFrame:v18, 0.0];
    [(CCUISensorAttributionWebsiteView *)v7 setFrame:0.0, 0.0, width, 20.0];
  }

  return v7;
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