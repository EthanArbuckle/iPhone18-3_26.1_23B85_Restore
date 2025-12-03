@interface HUCameraBadgeView
- (HUCameraBadgeView)initWithSize:(unint64_t)size;
- (NSString)labelText;
- (void)setLabelText:(id)text;
- (void)updateConstraints;
@end

@implementation HUCameraBadgeView

- (HUCameraBadgeView)initWithSize:(unint64_t)size
{
  v18.receiver = self;
  v18.super_class = HUCameraBadgeView;
  v4 = [(HUCameraBadgeView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = size;
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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(HULegibilityLabel *)v5->_label setTextColor:systemWhiteColor];

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
  staticConstraints = [(HUCameraBadgeView *)self staticConstraints];

  if (!staticConstraints)
  {
    heightAnchor = [(HUCameraBadgeView *)self heightAnchor];
    v5 = heightAnchor;
    v6 = 27.0;
    if (!self->_size)
    {
      v6 = 24.0;
    }

    v7 = [heightAnchor constraintGreaterThanOrEqualToConstant:v6];
    v34[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [(HUCameraBadgeView *)self setStaticConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    staticConstraints2 = [(HUCameraBadgeView *)self staticConstraints];
    [v9 activateConstraints:staticConstraints2];
  }

  labelConstraints = [(HUCameraBadgeView *)self labelConstraints];

  if (!labelConstraints)
  {
    if (self->_size)
    {
      v12 = 11.0;
    }

    else
    {
      v12 = 8.0;
    }

    label = [(HUCameraBadgeView *)self label];
    leadingAnchor = [label leadingAnchor];
    leadingAnchor2 = [(HUCameraBadgeView *)self leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
    v33[0] = v28;
    label2 = [(HUCameraBadgeView *)self label];
    trailingAnchor = [label2 trailingAnchor];
    trailingAnchor2 = [(HUCameraBadgeView *)self trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
    v33[1] = v24;
    label3 = [(HUCameraBadgeView *)self label];
    centerYAnchor = [label3 centerYAnchor];
    centerYAnchor2 = [(HUCameraBadgeView *)self centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v33[2] = v16;
    label4 = [(HUCameraBadgeView *)self label];
    heightAnchor2 = [label4 heightAnchor];
    heightAnchor3 = [(HUCameraBadgeView *)self heightAnchor];
    v20 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v33[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [(HUCameraBadgeView *)self setLabelConstraints:v21];

    v22 = MEMORY[0x277CCAAD0];
    labelConstraints2 = [(HUCameraBadgeView *)self labelConstraints];
    [v22 activateConstraints:labelConstraints2];
  }

  v32.receiver = self;
  v32.super_class = HUCameraBadgeView;
  [(HUCameraBadgeView *)&v32 updateConstraints];
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  label = [(HUCameraBadgeView *)self label];
  [label setText:textCopy];
}

- (NSString)labelText
{
  label = [(HUCameraBadgeView *)self label];
  text = [label text];

  return text;
}

@end