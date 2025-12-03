@interface HUStepperCell
- (HUStepperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUStepperCellDelegate)stepperCellDelegate;
- (id)_valueDescription;
- (void)_stepperValueDidChange:(id)change;
- (void)_toggleValueChange:(id)change;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaximumValue:(id)value;
- (void)setMinimumValue:(id)value;
- (void)setStepValue:(id)value;
- (void)setStepperValue:(id)value;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUStepperCell

- (HUStepperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v61 = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = HUStepperCell;
  v4 = [(HUStepperCell *)&v57 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    stepper = v4->_stepper;
    v4->_stepper = v5;

    [(UIStepper *)v4->_stepper sizeToFit];
    [(UIStepper *)v4->_stepper addTarget:v4 action:sel__stepperValueDidChange_ forControlEvents:4096];
    v7 = MEMORY[0x277CCABB0];
    [(UIStepper *)v4->_stepper maximumValue];
    v8 = [v7 numberWithDouble:?];
    maximumValue = v4->_maximumValue;
    v4->_maximumValue = v8;

    v10 = MEMORY[0x277CCABB0];
    [(UIStepper *)v4->_stepper minimumValue];
    v11 = [v10 numberWithDouble:?];
    minimumValue = v4->_minimumValue;
    v4->_minimumValue = v11;

    v13 = MEMORY[0x277CCABB0];
    [(UIStepper *)v4->_stepper stepValue];
    v14 = [v13 numberWithDouble:?];
    stepValue = v4->_stepValue;
    v4->_stepValue = v14;

    v16 = MEMORY[0x277CCABB0];
    [(UIStepper *)v4->_stepper value];
    v17 = [v16 numberWithDouble:?];
    stepperValue = v4->_stepperValue;
    v4->_stepperValue = v17;

    v19 = objc_opt_new();
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v19;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v59[0] = v4->_valueLabel;
    v59[1] = v4->_stepper;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:{2, 0}];
    v22 = [v21 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v54;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v53 + 1) + 8 * i);
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          contentView = [(HUStepperCell *)v4 contentView];
          [contentView addSubview:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v23);
    }

    centerYAnchor = [(UIStepper *)v4->_stepper centerYAnchor];
    contentView2 = [(HUStepperCell *)v4 contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    valueLabel = [(HUStepperCell *)v4 valueLabel];
    centerYAnchor3 = [valueLabel centerYAnchor];
    contentView3 = [(HUStepperCell *)v4 contentView];
    centerYAnchor4 = [contentView3 centerYAnchor];
    v36 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

    valueLabel2 = [(HUStepperCell *)v4 valueLabel];
    trailingAnchor = [valueLabel2 trailingAnchor];
    stepper = [(HUStepperCell *)v4 stepper];
    leadingAnchor = [stepper leadingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-7.0];

    trailingAnchor2 = [(UIStepper *)v4->_stepper trailingAnchor];
    contentView4 = [(HUStepperCell *)v4 contentView];
    readableContentGuide = [contentView4 readableContentGuide];
    trailingAnchor3 = [readableContentGuide trailingAnchor];
    v46 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

    contentView5 = [(HUStepperCell *)v4 contentView];
    heightAnchor = [contentView5 heightAnchor];
    v49 = [heightAnchor constraintGreaterThanOrEqualToConstant:*MEMORY[0x277D76F38]];

    v50 = MEMORY[0x277CCAAD0];
    v58[0] = v36;
    v58[1] = v41;
    v58[2] = v46;
    v58[3] = v31;
    v58[4] = v49;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
    [v50 activateConstraints:v51];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUStepperCell;
  [(HUStepperCell *)&v3 prepareForReuse];
  [(HUStepperCell *)self setDisabled:0];
  [(HUStepperCell *)self setSelectionStyle:0];
}

- (void)setMaximumValue:(id)value
{
  valueCopy = value;
  if (![(NSNumber *)self->_maximumValue isEqualToNumber:?])
  {
    v4 = [valueCopy copy];
    maximumValue = self->_maximumValue;
    self->_maximumValue = v4;

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(HUStepperCell *)self updateUIWithAnimation:0];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUStepperCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [(HUStepperCell *)self textLabel];
  [textLabel setText:v6];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  textLabel2 = [(HUStepperCell *)self textLabel];
  [textLabel2 setTextColor:v8];

  _valueDescription = [(HUStepperCell *)self _valueDescription];
  valueLabel = [(HUStepperCell *)self valueLabel];
  [valueLabel setText:_valueDescription];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v12 = ;
  valueLabel2 = [(HUStepperCell *)self valueLabel];
  [valueLabel2 setTextColor:v12];

  valueLabel3 = [(HUStepperCell *)self valueLabel];
  [valueLabel3 sizeToFit];

  LODWORD(valueLabel3) = [(HUStepperCell *)self isDisabled];
  stepper = [(HUStepperCell *)self stepper];
  [stepper setUserInteractionEnabled:valueLabel3 ^ 1];

  LODWORD(valueLabel3) = [(HUStepperCell *)self isDisabled];
  stepper2 = [(HUStepperCell *)self stepper];
  [stepper2 setEnabled:valueLabel3 ^ 1];

  minimumValue = [(HUStepperCell *)self minimumValue];
  [minimumValue doubleValue];
  v19 = v18;
  stepper3 = [(HUStepperCell *)self stepper];
  [stepper3 setMinimumValue:v19];

  maximumValue = [(HUStepperCell *)self maximumValue];
  [maximumValue doubleValue];
  v23 = v22;
  stepper4 = [(HUStepperCell *)self stepper];
  [stepper4 setMaximumValue:v23];

  stepValue = [(HUStepperCell *)self stepValue];
  [stepValue doubleValue];
  v27 = v26;
  stepper5 = [(HUStepperCell *)self stepper];
  [stepper5 setStepValue:v27];

  stepperValue = [(HUStepperCell *)self stepperValue];
  [stepperValue doubleValue];
  v31 = v30;
  stepper6 = [(HUStepperCell *)self stepper];
  [stepper6 setValue:v31];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v34 = ;
  stepper7 = [(HUStepperCell *)self stepper];
  [stepper7 setTintColor:v34];
}

- (void)_stepperValueDidChange:(id)change
{
  if (![(HUStepperCell *)self isDisabled])
  {
    v4 = MEMORY[0x277CCABB0];
    stepper = [(HUStepperCell *)self stepper];
    [stepper value];
    v8 = [v4 numberWithDouble:?];

    stepperValue = [(HUStepperCell *)self stepperValue];
    v7 = [stepperValue compare:v8];

    if (v7)
    {
      [(HUStepperCell *)self setStepperValue:v8];
      [(HUStepperCell *)self _toggleValueChange:self];
      [(HUStepperCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)_toggleValueChange:(id)change
{
  stepperCellDelegate = [(HUStepperCell *)self stepperCellDelegate];
  v4 = MEMORY[0x277CCABB0];
  stepper = [(HUStepperCell *)self stepper];
  [stepper value];
  v6 = [v4 numberWithDouble:?];
  [stepperCellDelegate stepperCell:self steppedToValue:v6];
}

- (id)_valueDescription
{
  stepperValue = [(HUStepperCell *)self stepperValue];

  if (stepperValue)
  {
    v4 = MEMORY[0x277CCABB8];
    stepperValue2 = [(HUStepperCell *)self stepperValue];
    v6 = [v4 localizedStringFromNumber:stepperValue2 numberStyle:1];
  }

  else
  {
    v6 = &stru_2823E0EE8;
  }

  return v6;
}

- (HUStepperCellDelegate)stepperCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperCellDelegate);

  return WeakRetained;
}

@end