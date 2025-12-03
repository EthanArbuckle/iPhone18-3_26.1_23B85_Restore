@interface HUAccessibilityEditableTableCellWithStepper
- (HUAccessibilityEditableTableCellWithStepper)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUStepperCellDelegate)stepperCellDelegate;
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)stepValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)stringValueForSpecifier:(id)specifier;
- (void)_update;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaximumValue:(id)value;
- (void)setMinimumValue:(id)value;
- (void)setStepValue:(id)value;
- (void)setStepperValue:(id)value;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation HUAccessibilityEditableTableCellWithStepper

- (HUAccessibilityEditableTableCellWithStepper)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = HUAccessibilityEditableTableCellWithStepper;
  v4 = [(AXUISettingsEditableTableCellWithStepper *)&v19 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUAccessibilityEditableTableCellWithStepper *)v4 setDisabled:0];
    secondsLabel = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];

    if (!secondsLabel)
    {
      v7 = objc_opt_new();
      [(AXUISettingsEditableTableCellWithStepper *)v5 setSecondsLabel:v7];

      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      secondsLabel2 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [secondsLabel2 setFont:v8];

      clearColor = [MEMORY[0x277D75348] clearColor];
      secondsLabel3 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [secondsLabel3 setBackgroundColor:clearColor];

      systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
      secondsLabel4 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [secondsLabel4 setTextColor:systemBlackColor];

      secondsLabel5 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [secondsLabel5 setAdjustsFontForContentSizeCategory:1];

      secondsLabel6 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [secondsLabel6 setIsAccessibilityElement:0];

      contentView = [(HUAccessibilityEditableTableCellWithStepper *)v5 contentView];
      secondsLabel7 = [(AXUISettingsEditableTableCellWithStepper *)v5 secondsLabel];
      [contentView addSubview:secondsLabel7];
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setTextColor:labelColor];
}

- (void)setMaximumValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_maximumValue isEqualToNumber:?])
  {
    v4 = [valueCopy copy];
    maximumValue = self->_maximumValue;
    self->_maximumValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setMinimumValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_minimumValue isEqualToNumber:?])
  {
    v4 = [valueCopy copy];
    minimumValue = self->_minimumValue;
    self->_minimumValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setStepValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_stepValue isEqualToNumber:?])
  {
    v4 = [valueCopy copy];
    stepValue = self->_stepValue;
    self->_stepValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setStepperValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_stepperValue isEqualToNumber:?])
  {
    v4 = [valueCopy copy];
    stepperValue = self->_stepperValue;
    self->_stepperValue = v4;

    [(HUAccessibilityEditableTableCellWithStepper *)self _update];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
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
  secondsLabel = [(AXUISettingsEditableTableCellWithStepper *)self secondsLabel];
  [secondsLabel setTextColor:v3];

  LODWORD(v3) = [(HUAccessibilityEditableTableCellWithStepper *)self isDisabled];
  stepper = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper setUserInteractionEnabled:v3 ^ 1];

  LODWORD(v3) = [(HUAccessibilityEditableTableCellWithStepper *)self isDisabled];
  stepper2 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper2 setEnabled:v3 ^ 1];

  if ([(HUAccessibilityEditableTableCellWithStepper *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v7 = ;
  stepper3 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper3 setTintColor:v7];

  stepperValue = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];

  if (stepperValue)
  {
    [(AXUISettingsEditableTextCell *)self updateText];
    minimumValue = [(HUAccessibilityEditableTableCellWithStepper *)self minimumValue];
    if (minimumValue)
    {
      v15 = minimumValue;
      maximumValue = [(HUAccessibilityEditableTableCellWithStepper *)self maximumValue];
      if (maximumValue)
      {
        v12 = maximumValue;
        stepValue = [(HUAccessibilityEditableTableCellWithStepper *)self stepValue];

        if (stepValue)
        {
          delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];

          if (delegate != self)
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

- (double)valueForSpecifier:(id)specifier
{
  stepperValue = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];
  [stepperValue doubleValue];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:specifier];
  [(HUAccessibilityEditableTableCellWithStepper *)self setStepperValue:v6];

  stepperCellDelegate = [(HUAccessibilityEditableTableCellWithStepper *)self stepperCellDelegate];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [stepperCellDelegate stepperCell:self steppedToValue:v8];

  [(HUAccessibilityEditableTableCellWithStepper *)self _update];

  [(HUAccessibilityEditableTableCellWithStepper *)self setNeedsLayout];
}

- (double)stepValueForSpecifier:(id)specifier
{
  stepValue = [(HUAccessibilityEditableTableCellWithStepper *)self stepValue];
  [stepValue doubleValue];
  v5 = v4;

  return v5;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  minimumValue = [(HUAccessibilityEditableTableCellWithStepper *)self minimumValue];
  [minimumValue doubleValue];
  v5 = v4;

  return v5;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  maximumValue = [(HUAccessibilityEditableTableCellWithStepper *)self maximumValue];
  [maximumValue doubleValue];
  v5 = v4;

  return v5;
}

- (id)stringValueForSpecifier:(id)specifier
{
  stepperValue = [(HUAccessibilityEditableTableCellWithStepper *)self stepperValue];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (HUStepperCellDelegate)stepperCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperCellDelegate);

  return WeakRetained;
}

@end