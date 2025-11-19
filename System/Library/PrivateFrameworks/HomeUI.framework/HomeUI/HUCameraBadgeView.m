@interface HUCameraBadgeView
- (HUCameraBadgeView)initWithSize:(unint64_t)a3;
- (NSString)labelText;
- (void)setLabelText:(id)a3;
- (void)updateConstraints;
@end

@implementation HUCameraBadgeView

- (HUCameraBadgeView)initWithSize:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = HUCameraBadgeView;
  v4 = [(HUCameraBadgeView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = a3;
    v6 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = v6;

    v8 = [HULegibilityLabel alloc];
    v9 = v5->_legibilitySettings;
    v10 = *MEMORY[0x277D774E0];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:6.0];
    v12 = [(HULegibilityLabel *)v8 initWithSettings:v9 strength:&stru_2823E0EE8 text:v11 font:*MEMORY[0x277D77500] options:v10];
    label = v5->_label;
    v5->_label = v12;

    [(HULegibilityLabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x277D75348] systemWhiteColor];
    [(HULegibilityLabel *)v5->_label setTextColor:v14];

    v15 = 15.0;
    if (!v5->_size)
    {
      v15 = 13.0;
    }

    v16 = [MEMORY[0x277D74300] boldSystemFontOfSize:v15];
    [(HULegibilityLabel *)v5->_label setFont:v16];

    [(HUCameraBadgeView *)v5 addSubview:v5->_label];
  }

  return v5;
}

- (void)updateConstraints
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraBadgeView *)self staticConstraints];

  if (!v3)
  {
    v4 = [(HUCameraBadgeView *)self heightAnchor];
    v5 = v4;
    v6 = 27.0;
    if (!self->_size)
    {
      v6 = 24.0;
    }

    v7 = [v4 constraintGreaterThanOrEqualToConstant:v6];
    v34[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [(HUCameraBadgeView *)self setStaticConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(HUCameraBadgeView *)self staticConstraints];
    [v9 activateConstraints:v10];
  }

  v11 = [(HUCameraBadgeView *)self labelConstraints];

  if (!v11)
  {
    if (self->_size)
    {
      v12 = 11.0;
    }

    else
    {
      v12 = 8.0;
    }

    v31 = [(HUCameraBadgeView *)self label];
    v30 = [v31 leadingAnchor];
    v29 = [(HUCameraBadgeView *)self leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:v12];
    v33[0] = v28;
    v27 = [(HUCameraBadgeView *)self label];
    v26 = [v27 trailingAnchor];
    v25 = [(HUCameraBadgeView *)self trailingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:-v12];
    v33[1] = v24;
    v13 = [(HUCameraBadgeView *)self label];
    v14 = [v13 centerYAnchor];
    v15 = [(HUCameraBadgeView *)self centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v33[2] = v16;
    v17 = [(HUCameraBadgeView *)self label];
    v18 = [v17 heightAnchor];
    v19 = [(HUCameraBadgeView *)self heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v33[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [(HUCameraBadgeView *)self setLabelConstraints:v21];

    v22 = MEMORY[0x277CCAAD0];
    v23 = [(HUCameraBadgeView *)self labelConstraints];
    [v22 activateConstraints:v23];
  }

  v32.receiver = self;
  v32.super_class = HUCameraBadgeView;
  [(HUCameraBadgeView *)&v32 updateConstraints];
}

- (void)setLabelText:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraBadgeView *)self label];
  [v5 setText:v4];
}

- (NSString)labelText
{
  v2 = [(HUCameraBadgeView *)self label];
  v3 = [v2 text];

  return v3;
}

@end