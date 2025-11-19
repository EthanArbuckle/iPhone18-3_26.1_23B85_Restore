@interface HUStepperControlView
- (BOOL)isDisabled;
- (HUControlViewDelegate)delegate;
- (HUStepperControlView)initWithFrame:(CGRect)a3;
- (double)maxValue;
- (double)minValue;
- (double)stepValue;
- (id)_defaultValueFormatter;
- (void)_stepperTouchDown:(id)a3;
- (void)_stepperTouchUp:(id)a3;
- (void)_stepperValueChanged:(id)a3;
- (void)_updateValueLabel;
- (void)setDisabled:(BOOL)a3;
- (void)setMaxValue:(double)a3;
- (void)setMinValue:(double)a3;
- (void)setStepValue:(double)a3;
- (void)setValue:(id)a3;
- (void)setValueFormatter:(id)a3;
- (void)updateConstraints;
@end

@implementation HUStepperControlView

- (HUStepperControlView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUStepperControlView;
  v3 = [(HUStepperControlView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75AC0]);
    stepper = v3->_stepper;
    v3->_stepper = v4;

    v6 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIStepper *)v3->_stepper setTintColor:v6];

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
    v9 = [(HUStepperControlView *)v3 _defaultValueFormatter];
    valueFormatter = v3->_valueFormatter;
    v3->_valueFormatter = v9;

    [(HUStepperControlView *)v3 _updateValueLabel];
  }

  return v3;
}

- (double)minValue
{
  v2 = [(HUStepperControlView *)self stepper];
  [v2 minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)a3
{
  v4 = [(HUStepperControlView *)self stepper];
  [v4 setMinimumValue:a3];
}

- (double)maxValue
{
  v2 = [(HUStepperControlView *)self stepper];
  [v2 maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)a3
{
  v4 = [(HUStepperControlView *)self stepper];
  [v4 setMaximumValue:a3];
}

- (double)stepValue
{
  v2 = [(HUStepperControlView *)self stepper];
  [v2 stepValue];
  v4 = v3;

  return v4;
}

- (void)setStepValue:(double)a3
{
  v4 = [(HUStepperControlView *)self stepper];
  [v4 setStepValue:a3];
}

- (void)setValueFormatter:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(HUStepperControlView *)self _defaultValueFormatter];
  }

  valueFormatter = self->_valueFormatter;
  self->_valueFormatter = v4;

  [(HUStepperControlView *)self _updateValueLabel];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUStepperControlView *)self valueLabel];
  v5 = [v4 heightAnchor];
  v6 = [(HUStepperControlView *)self heightAnchor];
  v7 = [v5 constraintLessThanOrEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(HUStepperControlView *)self valueLabel];
  v9 = [v8 centerYAnchor];
  v10 = [(HUStepperControlView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [(HUStepperControlView *)self valueLabel];
  v13 = [v12 trailingAnchor];
  v14 = [(HUStepperControlView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUStepperControlView *)self valueLabel];
  v17 = [v16 leadingAnchor];
  v18 = [(HUStepperControlView *)self stepper];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:8.0];
  [v3 addObject:v20];

  v21 = [(HUStepperControlView *)self stepper];
  v22 = [v21 centerYAnchor];
  v23 = [(HUStepperControlView *)self centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v3 addObject:v24];

  v25 = [(HUStepperControlView *)self stepper];
  v26 = [v25 leadingAnchor];
  v27 = [(HUStepperControlView *)self leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  v29 = [(HUStepperControlView *)self heightAnchor];
  v30 = [(HUStepperControlView *)self stepper];
  v31 = [v30 heightAnchor];
  v32 = [v29 constraintGreaterThanOrEqualToAnchor:v31];
  [v3 addObject:v32];

  v33 = [(HUStepperControlView *)self layoutConstraints];
  LOBYTE(v30) = [v3 isEqualToArray:v33];

  if ((v30 & 1) == 0)
  {
    v34 = [(HUStepperControlView *)self layoutConstraints];

    if (v34)
    {
      v35 = MEMORY[0x277CCAAD0];
      v36 = [(HUStepperControlView *)self layoutConstraints];
      [v35 deactivateConstraints:v36];
    }

    [(HUStepperControlView *)self setLayoutConstraints:v3];
    [MEMORY[0x277CCAAD0] activateConstraints:v3];
  }

  v37.receiver = self;
  v37.super_class = HUStepperControlView;
  [(HUStepperControlView *)&v37 updateConstraints];
}

- (void)setValue:(id)a3
{
  objc_storeStrong(&self->_value, a3);
  v5 = a3;
  [v5 doubleValue];
  v7 = v6;

  v8 = [(HUStepperControlView *)self stepper];
  [v8 setValue:v7];

  [(HUStepperControlView *)self _updateValueLabel];
}

- (BOOL)isDisabled
{
  v2 = [(HUStepperControlView *)self stepper];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (void)setDisabled:(BOOL)a3
{
  v4 = !a3;
  v5 = [(HUStepperControlView *)self stepper];
  [v5 setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v7 = ;
  v6 = [(HUStepperControlView *)self valueLabel];
  [v6 setTextColor:v7];
}

- (void)_updateValueLabel
{
  v6 = [(HUStepperControlView *)self valueFormatter];
  v3 = [(HUStepperControlView *)self value];
  v4 = [v6 stringForObjectValue:v3];
  v5 = [(HUStepperControlView *)self valueLabel];
  [v5 setText:v4];
}

- (id)_defaultValueFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMaximumFractionDigits:0];

  return v2;
}

- (void)_stepperTouchDown:(id)a3
{
  v4 = [(HUStepperControlView *)self delegate];
  [v4 controlViewDidBeginUserInteraction:self];
}

- (void)_stepperTouchUp:(id)a3
{
  v4 = [(HUStepperControlView *)self delegate];
  [v4 controlViewDidEndUserInteraction:self];
}

- (void)_stepperValueChanged:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HUStepperControlView *)self stepper];
  [v5 value];
  v6 = [v4 numberWithDouble:?];
  value = self->_value;
  self->_value = v6;

  [(HUStepperControlView *)self _updateValueLabel];
  v9 = [(HUStepperControlView *)self delegate];
  v8 = [(HUStepperControlView *)self value];
  [v9 controlView:self valueDidChange:v8];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end