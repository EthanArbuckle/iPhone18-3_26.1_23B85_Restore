@interface CCUISensorAttributionWebsiteView
- (CCUISensorAttributionWebsiteView)initWithSensorActivityData:(id)a3 maxSize:(CGSize)a4;
- (CGRect)cachedExpandedRect;
- (id)_titleLabelForSensorActivityData:(id)a3 maxSize:(CGSize)a4;
- (void)setBlurRadius:(double)a3;
@end

@implementation CCUISensorAttributionWebsiteView

- (id)_titleLabelForSensorActivityData:(id)a3 maxSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x277D756B8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 website];

  v10 = [MEMORY[0x277CF0D60] defaultFontProvider];
  v11 = [v10 preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:1];

  [v8 setAdjustsFontSizeToFitWidth:1];
  [v8 setMinimumScaleFactor:0.5];
  [v8 setText:v9];
  [v8 setFont:v11];
  v12 = [v8 layer];
  v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  [v12 setCompositingFilter:v13];

  v14 = [v8 layer];
  [v14 setAllowsGroupBlending:0];

  v15 = [MEMORY[0x277D75348] grayColor];
  [v8 setTextColor:v15];

  [v8 sizeThatFits:{width, height}];
  BSRectWithSize();
  [v8 setFrame:?];

  return v8;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(CCUISensorAttributionWebsiteView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (CCUISensorAttributionWebsiteView)initWithSensorActivityData:(id)a3 maxSize:(CGSize)a4
{
  width = a4.width;
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = CCUISensorAttributionWebsiteView;
  v7 = [(CCUISensorAttributionWebsiteView *)&v20 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    v9 = [(CCUISensorAttributionWebsiteView *)v7 layer];
    v21[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v9 setFilters:v10];

    v11 = [(CCUISensorAttributionWebsiteView *)v7 layer];
    [v11 setAllowsGroupBlending:0];

    [(SBFView *)v7 setAnimatedLayerProperties:&unk_28302E358];
    [(CCUISensorAttributionWebsiteView *)v7 setClipsToBounds:0];
    v12 = [objc_alloc(MEMORY[0x277D756C8]) initWithDelegate:v7];
    [(CCUISensorAttributionWebsiteView *)v7 addInteraction:v12];
    v13 = [(CCUISensorAttributionWebsiteView *)v7 _titleLabelForSensorActivityData:v6 maxSize:width, 20.0];
    websiteLabel = v7->_websiteLabel;
    v7->_websiteLabel = v13;

    [(CCUISensorAttributionWebsiteView *)v7 addSubview:v7->_websiteLabel];
    v15 = [MEMORY[0x277D75128] sharedApplication];
    v16 = [v15 userInterfaceLayoutDirection];

    [(UILabel *)v7->_websiteLabel bounds];
    if (v16 == 1)
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