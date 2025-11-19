@interface HUAccessibilityEditableTableCellWithStepper
- (HUAccessibilityEditableTableCellWithStepper)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUStepperCellDelegate)stepperCellDelegate;
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)stepValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)stringValueForSpecifier:(id)a3;
- (void)_update;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setMaximumValue:(id)a3;
- (void)setMinimumValue:(id)a3;
- (void)setStepValue:(id)a3;
- (void)setStepperValue:(id)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
@end

@implementation HUAccessibilityEditableTableCellWithStepper

- (HUAccessibilityEditableTableCellWithStepper)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = HUAccessibilityEditableTableCellWithStepper;
  v4 = [(AXUISettingsEditableTableCellWithStepper *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUAccessibilityEditableTableCellWithStepper *)v4 setDisabled:0];
    v6 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];

    if (!v6)
    {
      v7 = objc_opt_new();
      [(AXUISettingsEditableTableCellWithStepper *)v5 setSecondsLabel:v7];

      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v9 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v9 setFont:v8];

      v10 = [MEMORY[0x277D75348] clearColor];
      v11 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v11 setBackgroundColor:v10];

      v12 = [MEMORY[0x277D75348] systemBlackColor];
      v13 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v13 setTextColor:v12];

      v14 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v14 setAdjustsFontForContentSizeCategory:1];

      v15 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v15 setIsAccessibilityElement:0];

      v16 = [(HUAccessibilityEditableTableCellWithStepper *)v5 contentView];
      v17 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [v16 addSubview:v17];
    }
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUAccessibilityEditableTableCellWithStepper;
  [(AXUISettingsEditableTableCellWithStepper *)&v3 prepareForReuse];
  [(HUAccessibilityEditableTableCellWithStepper *)self setDisabled:0];
  [(AXUISettingsEditableTextCell *)self setSelectionStyle:0];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUAccessibilityEditableTableCellWithStepper;
  [(AXUISettingsEditableTableCellWithStepper *)&v5 layoutSubviews];
  v3 = [MEMORY[0x277D75348] labelColor];
  v4 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v4 setTextColor:v3];
}

- (void)setMaximumValue:(id)a3
{
  v6 = a3;
  if (![(NSNumber *)self->_maximumValue isEqualToNumber:?])
  {
    v4 = [v6 copy];
    maximumValue = self->_maximumValue;
    self->_maximumValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setMinimumValue:(id)a3
{
  v6 = a3;
  if (![(NSNumber *)self->_minimumValue isEqualToNumber:?])
  {
    v4 = [v6 copy];
    minimumValue = self->_minimumValue;
    self->_minimumValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setStepValue:(id)a3
{
  v6 = a3;
  if (![(NSNumber *)self->_stepValue isEqualToNumber:?])
  {
    v4 = [v6 copy];
    stepValue = self->_stepValue;
    self->_stepValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setStepperValue:(id)a3
{
  v6 = a3;
  if (![(NSNumber *)self->_stepperValue isEqualToNumber:?])
  {
    v4 = [v6 copy];
    stepperValue = self->_stepperValue;
    self->_stepperValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)_update
{
  if ([(HUAccessibilityEditableTableCellWithStepper *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v3 = ;
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self secondsLabel];
  [v4 setTextColor:v3];

  LODWORD(v3) = [(HUAccessibilityEditableTableCellWithStepper *)self isDisabled];
  v5 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v5 setUserInteractionEnabled:v3 ^ 1];

  LODWORD(v3) = [(HUAccessibilityEditableTableCellWithStepper *)self isDisabled];
  v6 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v6 setEnabled:v3 ^ 1];

  if ([(HUAccessibilityEditableTableCellWithStepper *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v7 = ;
  v8 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v8 setTintColor:v7];

  v9 = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];

  if (v9)
  {
    [(AXUISettingsEditableTextCell *)self updateText];
    v10 = [(HUAccessibilityEditableTableCellWithStepper *)self minimumValue];
    if (v10)
    {
      v15 = v10;
      v11 = [(HUAccessibilityEditableTableCellWithStepper *)self maximumValue];
      if (v11)
      {
        v12 = v11;
        v13 = [(HUAccessibilityEditableTableCellWithStepper *)self stepValue];

        if (v13)
        {
          v14 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];

          if (v14 != self)
          {

            [(AXUISettingsEditableTableCellWithStepper *)self setDelegate:self];
          }
        }
      }

      else
      {
      }
    }
  }
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(HUAccessibilityEditableTableCellWithStepper *)self setStepperValue:v6];

  v7 = [(HUAccessibilityEditableTableCellWithStepper *)self stepperCellDelegate];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v7 stepperCell:self steppedToValue:v8];

  [(HUAccessibilityEditableTableCellWithStepper *)self _update];

  [(HUAccessibilityEditableTableCellWithStepper *)self setNeedsLayout];
}

- (double)stepValueForSpecifier:(id)a3
{
  v3 = [(HUAccessibilityEditableTableCellWithStepper *)self stepValue];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v3 = [(HUAccessibilityEditableTableCellWithStepper *)self minimumValue];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v3 = [(HUAccessibilityEditableTableCellWithStepper *)self maximumValue];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)stringValueForSpecifier:(id)a3
{
  v3 = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (HUStepperCellDelegate)stepperCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperCellDelegate);

  return WeakRetained;
}

@end