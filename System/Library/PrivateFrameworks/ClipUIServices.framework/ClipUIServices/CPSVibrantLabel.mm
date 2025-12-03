@interface CPSVibrantLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (CPSVibrantLabel)initWithTextStyle:(id)style textVariant:(int64_t)variant vibrancyEffectStyle:(int64_t)effectStyle;
@end

@implementation CPSVibrantLabel

- (CPSVibrantLabel)initWithTextStyle:(id)style textVariant:(int64_t)variant vibrancyEffectStyle:(int64_t)effectStyle
{
  v40[4] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  v9 = [MEMORY[0x277D75210] effectWithStyle:8];
  v10 = [MEMORY[0x277D75D00] effectForBlurEffect:v9 style:effectStyle];
  v39.receiver = self;
  v39.super_class = CPSVibrantLabel;
  v11 = [(CPSVibrantLabel *)&v39 initWithEffect:v10];
  if (v11)
  {
    v12 = objc_opt_new();
    v37 = v9;
    label = v11->_label;
    v11->_label = v12;

    [(UILabel *)v11->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:styleCopy variant:variant];
    [(UILabel *)v11->_label setFont:v14];

    [(UILabel *)v11->_label setAdjustsFontForContentSizeCategory:1];
    contentView = [(CPSVibrantLabel *)v11 contentView];
    [contentView addSubview:v11->_label];

    v28 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v11->_label topAnchor];
    contentView2 = [(CPSVibrantLabel *)v11 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[0] = v32;
    leadingAnchor = [(UILabel *)v11->_label leadingAnchor];
    contentView3 = [(CPSVibrantLabel *)v11 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[1] = v27;
    [(UILabel *)v11->_label bottomAnchor];
    v16 = v36 = v10;
    contentView4 = [(CPSVibrantLabel *)v11 contentView];
    [contentView4 bottomAnchor];
    v18 = v38 = styleCopy;
    v19 = [v16 constraintEqualToAnchor:v18];
    v40[2] = v19;
    trailingAnchor = [(UILabel *)v11->_label trailingAnchor];
    contentView5 = [(CPSVibrantLabel *)v11 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v24];

    v9 = v37;
    styleCopy = v38;

    v10 = v36;
    v25 = v11;
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end