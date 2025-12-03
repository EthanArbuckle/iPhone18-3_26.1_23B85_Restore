@interface CCUISensorAttributionPrivacyHeaderView
- (CCUISensorAttributionPrivacyHeaderView)initWithTitle:(id)title systemImageName:(id)name;
- (CGRect)cachedExpandedRect;
- (void)_ensureTrailingLabel;
- (void)_removeTrailingLabel;
- (void)setBlurRadius:(double)radius;
- (void)setTrailingText:(id)text;
@end

@implementation CCUISensorAttributionPrivacyHeaderView

- (void)_ensureTrailingLabel
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (!self->_trailingLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
    v22 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76998] hiFontStyle:4];

    [(UILabel *)v3 setFont:v22];
    [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)v3 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3 setMinimumScaleFactor:0.5];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3 setTextColor:whiteColor];

    [(CCUISensorAttributionPrivacyHeaderView *)self addSubview:v3];
    trailingLabel = self->_trailingLabel;
    self->_trailingLabel = v3;
    v7 = v3;

    v17 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v7 topAnchor];
    topAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)self topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[0] = v19;
    bottomAnchor = [(UILabel *)v7 bottomAnchor];
    bottomAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)self bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[1] = v9;
    leadingAnchor = [(UILabel *)v7 leadingAnchor];
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    v12 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:16.0];
    v23[2] = v12;
    trailingAnchor2 = [(UILabel *)v7 trailingAnchor];
    trailingAnchor3 = [(CCUISensorAttributionPrivacyHeaderView *)self trailingAnchor];
    v15 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
    v23[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [v17 activateConstraints:v16];
  }
}

- (CCUISensorAttributionPrivacyHeaderView)initWithTitle:(id)title systemImageName:(id)name
{
  v52[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  nameCopy = name;
  v50.receiver = self;
  v50.super_class = CCUISensorAttributionPrivacyHeaderView;
  v8 = [(CCUISensorAttributionPrivacyHeaderView *)&v50 init];
  if (v8)
  {
    v47 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    layer = [(CCUISensorAttributionPrivacyHeaderView *)v8 layer];
    v52[0] = v47;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [layer setFilters:v10];

    [(SBFView *)v8 setAnimatedLayerProperties:&unk_28302E400];
    [(CCUISensorAttributionPrivacyHeaderView *)v8 setClipsToBounds:0];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
    v13 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76998] hiFontStyle:4];

    v46 = v13;
    [(UILabel *)v11 setFont:v13];
    [(UILabel *)v11 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v11 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(UILabel *)v11 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11 setMinimumScaleFactor:0.5];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v11 setTextColor:whiteColor];

    [(UILabel *)v11 setText:titleCopy];
    [(CCUISensorAttributionPrivacyHeaderView *)v8 addSubview:v11];
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v11;
    v16 = v11;

    [v13 pointSize];
    v45 = [MEMORY[0x277D74300] systemFontOfSize:? weight:?];
    v44 = [MEMORY[0x277D755D0] configurationWithFont:v45 scale:0];
    v43 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy withConfiguration:v44];
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v43];
    [(UIImageView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIImageView *)v17 setTintColor:systemWhiteColor];

    [(CCUISensorAttributionPrivacyHeaderView *)v8 addSubview:v17];
    imageView = v8->_imageView;
    v8->_imageView = v17;
    v20 = v17;

    v34 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v16 topAnchor];
    topAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)v8 topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[0] = v40;
    bottomAnchor = [(UILabel *)v16 bottomAnchor];
    bottomAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)v8 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[1] = v37;
    leadingAnchor = [(UILabel *)v16 leadingAnchor];
    leadingAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)v8 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:28.0];
    v51[2] = v33;
    trailingAnchor = [(UILabel *)v16 trailingAnchor];
    trailingAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)v8 trailingAnchor];
    [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v30 = v48 = nameCopy;
    v51[3] = v30;
    v21 = v20;
    [(UIImageView *)v20 leadingAnchor];
    v22 = v49 = titleCopy;
    leadingAnchor3 = [(CCUISensorAttributionPrivacyHeaderView *)v8 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:leadingAnchor3];
    v51[4] = v24;
    centerYAnchor = [(UIImageView *)v20 centerYAnchor];
    centerYAnchor2 = [(CCUISensorAttributionPrivacyHeaderView *)v8 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v51[5] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:6];
    [v34 activateConstraints:v28];

    titleCopy = v49;
    nameCopy = v48;
  }

  return v8;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(CCUISensorAttributionPrivacyHeaderView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setTrailingText:(id)text
{
  textCopy = text;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [textCopy copy];
    trailingText = self->_trailingText;
    self->_trailingText = v4;

    if (textCopy)
    {
      [(CCUISensorAttributionPrivacyHeaderView *)self _ensureTrailingLabel];
      [(UILabel *)self->_trailingLabel setText:textCopy];
    }

    else
    {
      [(CCUISensorAttributionPrivacyHeaderView *)self _removeTrailingLabel];
    }
  }
}

- (void)_removeTrailingLabel
{
  [(UILabel *)self->_trailingLabel removeFromSuperview];
  trailingLabel = self->_trailingLabel;
  self->_trailingLabel = 0;
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