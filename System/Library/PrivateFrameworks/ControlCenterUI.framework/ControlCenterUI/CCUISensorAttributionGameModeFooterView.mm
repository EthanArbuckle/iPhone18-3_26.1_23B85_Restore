@interface CCUISensorAttributionGameModeFooterView
- (CCUISensorAttributionGameModeFooterView)initWithLabel:(id)a3;
- (CGRect)cachedExpandedRect;
- (void)setBlurRadius:(double)a3;
@end

@implementation CCUISensorAttributionGameModeFooterView

- (CCUISensorAttributionGameModeFooterView)initWithLabel:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CCUISensorAttributionGameModeFooterView;
  v5 = [(CCUISensorAttributionGameModeFooterView *)&v31 init];
  if (v5)
  {
    v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    v6 = [(CCUISensorAttributionGameModeFooterView *)v5 layer];
    v33[0] = v29;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v6 setFilters:v7];

    [(SBFView *)v5 setAnimatedLayerProperties:&unk_28302E3B8];
    [(CCUISensorAttributionGameModeFooterView *)v5 setClipsToBounds:0];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277CF0D60] defaultFontProvider];
    v28 = [v9 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:4];

    [(UILabel *)v8 setFont:v28];
    [(UILabel *)v8 setLineBreakMode:0];
    [(UILabel *)v8 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8 setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)v8 setMinimumScaleFactor:0.5];
    v10 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v8 setTextColor:v10];

    [(UILabel *)v8 setText:v4];
    [(CCUISensorAttributionGameModeFooterView *)v5 addSubview:v8];
    label = v5->_label;
    v5->_label = v8;
    v12 = v8;

    v22 = MEMORY[0x277CCAAD0];
    v27 = [(UILabel *)v12 topAnchor];
    v26 = [(CCUISensorAttributionGameModeFooterView *)v5 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v32[0] = v25;
    v24 = [(UILabel *)v12 bottomAnchor];
    v23 = [(CCUISensorAttributionGameModeFooterView *)v5 bottomAnchor];
    v13 = [v24 constraintEqualToAnchor:v23];
    v32[1] = v13;
    [(UILabel *)v12 leadingAnchor];
    v14 = v30 = v4;
    v15 = [(CCUISensorAttributionGameModeFooterView *)v5 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v32[2] = v16;
    v17 = [(UILabel *)v12 trailingAnchor];
    v18 = [(CCUISensorAttributionGameModeFooterView *)v5 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v32[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    [v22 activateConstraints:v20];

    v4 = v30;
  }

  return v5;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(CCUISensorAttributionGameModeFooterView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
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