@interface HUStepperControlView
- (BOOL)isDisabled;
- (HUControlViewDelegate)delegate;
- (HUStepperControlView)initWithFrame:(CGRect)frame;
- (double)maxValue;
- (double)minValue;
- (double)stepValue;
- (id)_defaultValueFormatter;
- (void)_stepperTouchDown:(id)down;
- (void)_stepperTouchUp:(id)up;
- (void)_stepperValueChanged:(id)changed;
- (void)_updateValueLabel;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaxValue:(double)value;
- (void)setMinValue:(double)value;
- (void)setStepValue:(double)value;
- (void)setValue:(id)value;
- (void)setValueFormatter:(id)formatter;
- (void)updateConstraints;
@end

@implementation HUStepperControlView

- (HUStepperControlView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUStepperControlView;
  v3 = [(HUStepperControlView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75AC0]);
    stepper = v3->_stepper;
    v3->_stepper = v4;

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIStepper *)v3->_stepper setTintColor:systemOrangeColor];

    [(UIStepper *)v3->_stepper setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStepper *)v3->_stepper addTarget:v3 action:sel__stepperTouchDown_ forControlEvents:1];
    [(UIStepper *)v3->_stepper addTarget:v3 action:sel__stepperValueChanged_ forControlEvents:4096];
    [(UIStepper *)v3->_stepper addTarget:v3 action:sel__stepperTouchUp_ forControlEvents:448];
    [(HUStepperControlView *)v3 addSubview:v3->_stepper];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v7;

    [(UILabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUStepperControlView *)v3 addSubview:v3->_valueLabel];
    _defaultValueFormatter = [(HUStepperControlView *)v3 _defaultValueFormatter];
    valueFormatter = v3->_valueFormatter;
    v3->_valueFormatter = _defaultValueFormatter;

    [(HUStepperControlView *)v3 _updateValueLabel];
  }

  return v3;
}

- (double)minValue
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)value
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper setMinimumValue:value];
}

- (double)maxValue
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)value
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper setMaximumValue:value];
}

- (double)stepValue
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper stepValue];
  v4 = v3;

  return v4;
}

- (void)setStepValue:(double)value
{
  stepper = [(HUStepperControlView *)self stepper];
  [stepper setStepValue:value];
}

- (void)setValueFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (!formatterCopy)
  {
    formatterCopy = [(HUStepperControlView *)self _defaultValueFormatter];
  }

  valueFormatter = self->_valueFormatter;
  self->_valueFormatter = formatterCopy;

  [(HUStepperControlView *)self _updateValueLabel];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  valueLabel = [(HUStepperControlView *)self valueLabel];
  heightAnchor = [valueLabel heightAnchor];
  heightAnchor2 = [(HUStepperControlView *)self heightAnchor];
  v7 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  [array addObject:v7];

  valueLabel2 = [(HUStepperControlView *)self valueLabel];
  centerYAnchor = [valueLabel2 centerYAnchor];
  centerYAnchor2 = [(HUStepperControlView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v11];

  valueLabel3 = [(HUStepperControlView *)self valueLabel];
  trailingAnchor = [valueLabel3 trailingAnchor];
  trailingAnchor2 = [(HUStepperControlView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v15];

  valueLabel4 = [(HUStepperControlView *)self valueLabel];
  leadingAnchor = [valueLabel4 leadingAnchor];
  stepper = [(HUStepperControlView *)self stepper];
  trailingAnchor3 = [stepper trailingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:8.0];
  [array addObject:v20];

  stepper2 = [(HUStepperControlView *)self stepper];
  centerYAnchor3 = [stepper2 centerYAnchor];
  centerYAnchor4 = [(HUStepperControlView *)self centerYAnchor];
  v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v24];

  stepper3 = [(HUStepperControlView *)self stepper];
  leadingAnchor2 = [stepper3 leadingAnchor];
  leadingAnchor3 = [(HUStepperControlView *)self leadingAnchor];
  v28 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v28];

  heightAnchor3 = [(HUStepperControlView *)self heightAnchor];
  stepper4 = [(HUStepperControlView *)self stepper];
  heightAnchor4 = [stepper4 heightAnchor];
  v32 = [heightAnchor3 constraintGreaterThanOrEqualToAnchor:heightAnchor4];
  [array addObject:v32];

  layoutConstraints = [(HUStepperControlView *)self layoutConstraints];
  LOBYTE(stepper4) = [array isEqualToArray:layoutConstraints];

  if ((stepper4 & 1) == 0)
  {
    layoutConstraints2 = [(HUStepperControlView *)self layoutConstraints];

    if (layoutConstraints2)
    {
      v35 = MEMORY[0x277CCAAD0];
      layoutConstraints3 = [(HUStepperControlView *)self layoutConstraints];
      [v35 deactivateConstraints:layoutConstraints3];
    }

    [(HUStepperControlView *)self setLayoutConstraints:array];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  v37.receiver = self;
  v37.super_class = HUStepperControlView;
  [(HUStepperControlView *)&v37 updateConstraints];
}

- (void)setValue:(id)value
{
  objc_storeStrong(&self->_value, value);
  valueCopy = value;
  [valueCopy doubleValue];
  v7 = v6;

  stepper = [(HUStepperControlView *)self stepper];
  [stepper setValue:v7];

  [(HUStepperControlView *)self _updateValueLabel];
}

- (BOOL)isDisabled
{
  stepper = [(HUStepperControlView *)self stepper];
  isEnabled = [stepper isEnabled];

  return isEnabled ^ 1;
}

- (void)setDisabled:(BOOL)disabled
{
  v4 = !disabled;
  stepper = [(HUStepperControlView *)self stepper];
  [stepper setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v7 = ;
  valueLabel = [(HUStepperControlView *)self valueLabel];
  [valueLabel setTextColor:v7];
}

- (void)_updateValueLabel
{
  valueFormatter = [(HUStepperControlView *)self valueFormatter];
  value = [(HUStepperControlView *)self value];
  v4 = [valueFormatter stringForObjectValue:value];
  valueLabel = [(HUStepperControlView *)self valueLabel];
  [valueLabel setText:v4];
}

- (id)_defaultValueFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMaximumFractionDigits:0];

  return v2;
}

- (void)_stepperTouchDown:(id)down
{
  delegate = [(HUStepperControlView *)self delegate];
  [delegate controlViewDidBeginUserInteraction:self];
}

- (void)_stepperTouchUp:(id)up
{
  delegate = [(HUStepperControlView *)self delegate];
  [delegate controlViewDidEndUserInteraction:self];
}

- (void)_stepperValueChanged:(id)changed
{
  v4 = MEMORY[0x277CCABB0];
  stepper = [(HUStepperControlView *)self stepper];
  [stepper value];
  v6 = [v4 numberWithDouble:?];
  value = self->_value;
  self->_value = v6;

  [(HUStepperControlView *)self _updateValueLabel];
  delegate = [(HUStepperControlView *)self delegate];
  value = [(HUStepperControlView *)self value];
  [delegate controlView:self valueDidChange:value];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end