@interface HUTemperatureUnitControlView
- (HUControlViewDelegate)delegate;
- (HUTemperatureUnitControlView)initWithFrame:(CGRect)frame;
- (id)_unitStringForCurrentUnit;
- (id)value;
- (void)setDisabled:(BOOL)disabled;
- (void)setValue:(id)value;
- (void)updateConstraints;
@end

@implementation HUTemperatureUnitControlView

- (HUTemperatureUnitControlView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = HUTemperatureUnitControlView;
  v3 = [(HUTemperatureUnitControlView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
    [(UILabel *)v3->_detailLabel setTextColor:systemMidGrayColor];

    [(HUTemperatureUnitControlView *)v3 addSubview:v3->_detailLabel];
  }

  return v3;
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  titleLabel = [(HUTemperatureUnitControlView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(HUTemperatureUnitControlView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v7];

  titleLabel2 = [(HUTemperatureUnitControlView *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  topAnchor2 = [(HUTemperatureUnitControlView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v11];

  titleLabel3 = [(HUTemperatureUnitControlView *)self titleLabel];
  bottomAnchor = [titleLabel3 bottomAnchor];
  bottomAnchor2 = [(HUTemperatureUnitControlView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v15];

  detailLabel = [(HUTemperatureUnitControlView *)self detailLabel];
  trailingAnchor = [detailLabel trailingAnchor];
  trailingAnchor2 = [(HUTemperatureUnitControlView *)self trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v19];

  detailLabel2 = [(HUTemperatureUnitControlView *)self detailLabel];
  topAnchor3 = [detailLabel2 topAnchor];
  topAnchor4 = [(HUTemperatureUnitControlView *)self topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v23];

  detailLabel3 = [(HUTemperatureUnitControlView *)self detailLabel];
  bottomAnchor3 = [detailLabel3 bottomAnchor];
  bottomAnchor4 = [(HUTemperatureUnitControlView *)self bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v27];

  labelConstraints = [(HUTemperatureUnitControlView *)self labelConstraints];
  LOBYTE(bottomAnchor3) = [array isEqualToArray:labelConstraints];

  if ((bottomAnchor3 & 1) == 0)
  {
    labelConstraints2 = [(HUTemperatureUnitControlView *)self labelConstraints];

    if (labelConstraints2)
    {
      v30 = MEMORY[0x277CCAAD0];
      labelConstraints3 = [(HUTemperatureUnitControlView *)self labelConstraints];
      [v30 deactivateConstraints:labelConstraints3];
    }

    [(HUTemperatureUnitControlView *)self setLabelConstraints:array];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  v32.receiver = self;
  v32.super_class = HUTemperatureUnitControlView;
  [(HUTemperatureUnitControlView *)&v32 updateConstraints];
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  currentUnit = [(HUTemperatureUnitControlView *)self currentUnit];

  return [v2 numberWithInteger:currentUnit];
}

- (void)setValue:(id)value
{
  if (value)
  {
    -[HUTemperatureUnitControlView setCurrentUnit:](self, "setCurrentUnit:", [value integerValue]);
    [(HUTemperatureUnitControlView *)self _unitStringForCurrentUnit];
  }

  else
  {
    HFLocalizedString();
  }
  v5 = ;
  detailLabel = [(HUTemperatureUnitControlView *)self detailLabel];
  [detailLabel setText:v5];
}

- (void)setDisabled:(BOOL)disabled
{
  self->_viewDisabled = disabled;
  if (disabled)
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  titleLabel = [(HUTemperatureUnitControlView *)self titleLabel];
  [titleLabel setTextColor:v5];
}

- (id)_unitStringForCurrentUnit
{
  currentUnit = [(HUTemperatureUnitControlView *)self currentUnit];
  if (currentUnit == 1)
  {
    v3 = @"HUTemperatureFahrenheitUnitTitle";
    goto LABEL_5;
  }

  if (!currentUnit)
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