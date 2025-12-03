@interface CCUISensorAttributionGameModeFooterView
- (CCUISensorAttributionGameModeFooterView)initWithLabel:(id)label;
- (CGRect)cachedExpandedRect;
- (void)setBlurRadius:(double)radius;
@end

@implementation CCUISensorAttributionGameModeFooterView

- (CCUISensorAttributionGameModeFooterView)initWithLabel:(id)label
{
  v33[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v31.receiver = self;
  v31.super_class = CCUISensorAttributionGameModeFooterView;
  v5 = [(CCUISensorAttributionGameModeFooterView *)&v31 init];
  if (v5)
  {
    v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    layer = [(CCUISensorAttributionGameModeFooterView *)v5 layer];
    v33[0] = v29;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [layer setFilters:v7];

    [(SBFView *)v5 setAnimatedLayerProperties:&unk_28302E3B8];
    [(CCUISensorAttributionGameModeFooterView *)v5 setClipsToBounds:0];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
    v28 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:4];

    [(UILabel *)v8 setFont:v28];
    [(UILabel *)v8 setLineBreakMode:0];
    [(UILabel *)v8 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8 setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)v8 setMinimumScaleFactor:0.5];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v8 setTextColor:whiteColor];

    [(UILabel *)v8 setText:labelCopy];
    [(CCUISensorAttributionGameModeFooterView *)v5 addSubview:v8];
    label = v5->_label;
    v5->_label = v8;
    v12 = v8;

    v22 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v12 topAnchor];
    topAnchor2 = [(CCUISensorAttributionGameModeFooterView *)v5 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[0] = v25;
    bottomAnchor = [(UILabel *)v12 bottomAnchor];
    bottomAnchor2 = [(CCUISensorAttributionGameModeFooterView *)v5 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[1] = v13;
    [(UILabel *)v12 leadingAnchor];
    v14 = v30 = labelCopy;
    leadingAnchor = [(CCUISensorAttributionGameModeFooterView *)v5 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:leadingAnchor];
    v32[2] = v16;
    trailingAnchor = [(UILabel *)v12 trailingAnchor];
    trailingAnchor2 = [(CCUISensorAttributionGameModeFooterView *)v5 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    [v22 activateConstraints:v20];

    labelCopy = v30;
  }

  return v5;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(CCUISensorAttributionGameModeFooterView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
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