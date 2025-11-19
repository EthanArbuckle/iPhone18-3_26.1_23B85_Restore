@interface HUStepperCell
- (HUStepperCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUStepperCellDelegate)stepperCellDelegate;
- (id)_valueDescription;
- (void)_stepperValueDidChange:(id)a3;
- (void)_toggleValueChange:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setMaximumValue:(id)a3;
- (void)setMinimumValue:(id)a3;
- (void)setStepValue:(id)a3;
- (void)setStepperValue:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUStepperCell

- (HUStepperCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = HUStepperCell;
  v4 = [(HUStepperCell *)&v57 initWithStyle:0 reuseIdentifier:a4];
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
          v27 = [(HUStepperCell *)v4 contentView];
          [v27 addSubview:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v23);
    }

    v28 = [(UIStepper *)v4->_stepper centerYAnchor];
    v29 = [(HUStepperCell *)v4 contentView];
    v30 = [v29 centerYAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];

    v32 = [(HUStepperCell *)v4 valueLabel];
    v33 = [v32 centerYAnchor];
    v34 = [(HUStepperCell *)v4 contentView];
    v35 = [v34 centerYAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];

    v37 = [(HUStepperCell *)v4 valueLabel];
    v38 = [v37 trailingAnchor];
    v39 = [(HUStepperCell *)v4 stepper];
    v40 = [v39 leadingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40 constant:-7.0];

    v42 = [(UIStepper *)v4->_stepper trailingAnchor];
    v43 = [(HUStepperCell *)v4 contentView];
    v44 = [v43 readableContentGuide];
    v45 = [v44 trailingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];

    v47 = [(HUStepperCell *)v4 contentView];
    v48 = [v47 heightAnchor];
    v49 = [v48 constraintGreaterThanOrEqualToConstant:*MEMORY[0x277D76F38]];

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

- (void)setMaximumValue:(id)a3
{
  v6 = a3;
  if (![(NSNumber *)self->_maximumValue isEqualToNumber:?])
  {
    v4 = [v6 copy];
    maximumValue = self->_maximumValue;
    self->_maximumValue = v4;

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
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

    [(HUStepperCell *)self updateUIWithAnimation:0];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(HUStepperCell *)self updateUIWithAnimation:0];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUStepperCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [(HUStepperCell *)self textLabel];
  [v7 setText:v6];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  v9 = [(HUStepperCell *)self textLabel];
  [v9 setTextColor:v8];

  v10 = [(HUStepperCell *)self _valueDescription];
  v11 = [(HUStepperCell *)self valueLabel];
  [v11 setText:v10];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v12 = ;
  v13 = [(HUStepperCell *)self valueLabel];
  [v13 setTextColor:v12];

  v14 = [(HUStepperCell *)self valueLabel];
  [v14 sizeToFit];

  LODWORD(v14) = [(HUStepperCell *)self isDisabled];
  v15 = [(HUStepperCell *)self stepper];
  [v15 setUserInteractionEnabled:v14 ^ 1];

  LODWORD(v14) = [(HUStepperCell *)self isDisabled];
  v16 = [(HUStepperCell *)self stepper];
  [v16 setEnabled:v14 ^ 1];

  v17 = [(HUStepperCell *)self minimumValue];
  [v17 doubleValue];
  v19 = v18;
  v20 = [(HUStepperCell *)self stepper];
  [v20 setMinimumValue:v19];

  v21 = [(HUStepperCell *)self maximumValue];
  [v21 doubleValue];
  v23 = v22;
  v24 = [(HUStepperCell *)self stepper];
  [v24 setMaximumValue:v23];

  v25 = [(HUStepperCell *)self stepValue];
  [v25 doubleValue];
  v27 = v26;
  v28 = [(HUStepperCell *)self stepper];
  [v28 setStepValue:v27];

  v29 = [(HUStepperCell *)self stepperValue];
  [v29 doubleValue];
  v31 = v30;
  v32 = [(HUStepperCell *)self stepper];
  [v32 setValue:v31];

  if ([(HUStepperCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v34 = ;
  v33 = [(HUStepperCell *)self stepper];
  [v33 setTintColor:v34];
}

- (void)_stepperValueDidChange:(id)a3
{
  if (![(HUStepperCell *)self isDisabled])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(HUStepperCell *)self stepper];
    [v5 value];
    v8 = [v4 numberWithDouble:?];

    v6 = [(HUStepperCell *)self stepperValue];
    v7 = [v6 compare:v8];

    if (v7)
    {
      [(HUStepperCell *)self setStepperValue:v8];
      [(HUStepperCell *)self _toggleValueChange:self];
      [(HUStepperCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)_toggleValueChange:(id)a3
{
  v7 = [(HUStepperCell *)self stepperCellDelegate];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HUStepperCell *)self stepper];
  [v5 value];
  v6 = [v4 numberWithDouble:?];
  [v7 stepperCell:self steppedToValue:v6];
}

- (id)_valueDescription
{
  v3 = [(HUStepperCell *)self stepperValue];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB8];
    v5 = [(HUStepperCell *)self stepperValue];
    v6 = [v4 localizedStringFromNumber:v5 numberStyle:1];
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