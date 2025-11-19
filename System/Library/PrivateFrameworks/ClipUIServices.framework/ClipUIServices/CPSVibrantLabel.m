@interface CPSVibrantLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (CPSVibrantLabel)initWithTextStyle:(id)a3 textVariant:(int64_t)a4 vibrancyEffectStyle:(int64_t)a5;
@end

@implementation CPSVibrantLabel

- (CPSVibrantLabel)initWithTextStyle:(id)a3 textVariant:(int64_t)a4 vibrancyEffectStyle:(int64_t)a5
{
  v40[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D75210] effectWithStyle:8];
  v10 = [MEMORY[0x277D75D00] effectForBlurEffect:v9 style:a5];
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
    v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v8 variant:a4];
    [(UILabel *)v11->_label setFont:v14];

    [(UILabel *)v11->_label setAdjustsFontForContentSizeCategory:1];
    v15 = [(CPSVibrantLabel *)v11 contentView];
    [v15 addSubview:v11->_label];

    v28 = MEMORY[0x277CCAAD0];
    v34 = [(UILabel *)v11->_label topAnchor];
    v35 = [(CPSVibrantLabel *)v11 contentView];
    v33 = [v35 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v40[0] = v32;
    v30 = [(UILabel *)v11->_label leadingAnchor];
    v31 = [(CPSVibrantLabel *)v11 contentView];
    v29 = [v31 leadingAnchor];
    v27 = [v30 constraintEqualToAnchor:v29];
    v40[1] = v27;
    [(UILabel *)v11->_label bottomAnchor];
    v16 = v36 = v10;
    v17 = [(CPSVibrantLabel *)v11 contentView];
    [v17 bottomAnchor];
    v18 = v38 = v8;
    v19 = [v16 constraintEqualToAnchor:v18];
    v40[2] = v19;
    v20 = [(UILabel *)v11->_label trailingAnchor];
    v21 = [(CPSVibrantLabel *)v11 contentView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v40[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v24];

    v9 = v37;
    v8 = v38;

    v10 = v36;
    v25 = v11;
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end