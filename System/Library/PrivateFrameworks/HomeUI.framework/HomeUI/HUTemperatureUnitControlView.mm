@interface HUTemperatureUnitControlView
- (HUControlViewDelegate)delegate;
- (HUTemperatureUnitControlView)initWithFrame:(CGRect)a3;
- (id)_unitStringForCurrentUnit;
- (id)value;
- (void)setDisabled:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)updateConstraints;
@end

@implementation HUTemperatureUnitControlView

- (HUTemperatureUnitControlView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = HUTemperatureUnitControlView;
  v3 = [(HUTemperatureUnitControlView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *MEMORY[0x277D76918];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v3->_titleLabel setFont:v7];

    v8 = _HULocalizedStringWithDefaultValue(@"HUTemperatureUnitTitle", @"HUTemperatureUnitTitle", 1);
    [(UILabel *)v3->_titleLabel setText:v8];

    [(HUTemperatureUnitControlView *)v3 addSubview:v3->_titleLabel];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v9;

    [(UILabel *)v3->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    [(UILabel *)v3->_detailLabel setFont:v11];

    v12 = [MEMORY[0x277D75348] systemMidGrayColor];
    [(UILabel *)v3->_detailLabel setTextColor:v12];

    [(HUTemperatureUnitControlView *)v3 addSubview:v3->_detailLabel];
  }

  return v3;
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUTemperatureUnitControlView *)self titleLabel];
  v5 = [v4 leadingAnchor];
  v6 = [(HUTemperatureUnitControlView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(HUTemperatureUnitControlView *)self titleLabel];
  v9 = [v8 topAnchor];
  v10 = [(HUTemperatureUnitControlView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [(HUTemperatureUnitControlView *)self titleLabel];
  v13 = [v12 bottomAnchor];
  v14 = [(HUTemperatureUnitControlView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUTemperatureUnitControlView *)self detailLabel];
  v17 = [v16 trailingAnchor];
  v18 = [(HUTemperatureUnitControlView *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v3 addObject:v19];

  v20 = [(HUTemperatureUnitControlView *)self detailLabel];
  v21 = [v20 topAnchor];
  v22 = [(HUTemperatureUnitControlView *)self topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v3 addObject:v23];

  v24 = [(HUTemperatureUnitControlView *)self detailLabel];
  v25 = [v24 bottomAnchor];
  v26 = [(HUTemperatureUnitControlView *)self bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v3 addObject:v27];

  v28 = [(HUTemperatureUnitControlView *)self labelConstraints];
  LOBYTE(v25) = [v3 isEqualToArray:v28];

  if ((v25 & 1) == 0)
  {
    v29 = [(HUTemperatureUnitControlView *)self labelConstraints];

    if (v29)
    {
      v30 = MEMORY[0x277CCAAD0];
      v31 = [(HUTemperatureUnitControlView *)self labelConstraints];
      [v30 deactivateConstraints:v31];
    }

    [(HUTemperatureUnitControlView *)self setLabelConstraints:v3];
    [MEMORY[0x277CCAAD0] activateConstraints:v3];
  }

  v32.receiver = self;
  v32.super_class = HUTemperatureUnitControlView;
  [(HUTemperatureUnitControlView *)&v32 updateConstraints];
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HUTemperatureUnitControlView *)self currentUnit];

  return [v2 numberWithInteger:v3];
}

- (void)setValue:(id)a3
{
  if (a3)
  {
    -[HUTemperatureUnitControlView setCurrentUnit:](self, "setCurrentUnit:", [a3 integerValue]);
    [(HUTemperatureUnitControlView *)self _unitStringForCurrentUnit];
  }

  else
  {
    HFLocalizedString();
  }
  v5 = ;
  v4 = [(HUTemperatureUnitControlView *)self detailLabel];
  [v4 setText:v5];
}

- (void)setDisabled:(BOOL)a3
{
  self->_viewDisabled = a3;
  if (a3)
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  v4 = [(HUTemperatureUnitControlView *)self titleLabel];
  [v4 setTextColor:v5];
}

- (id)_unitStringForCurrentUnit
{
  v2 = [(HUTemperatureUnitControlView *)self currentUnit];
  if (v2 == 1)
  {
    v3 = @"HUTemperatureFahrenheitUnitTitle";
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = @"HUTemperatureCelsiusUnitTitle";
LABEL_5:
    v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end