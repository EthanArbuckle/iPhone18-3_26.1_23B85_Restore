@interface WDProfileTableViewCell
- (BOOL)becomeFirstResponder;
- (WDProfileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupAccessibilitySizeConstraintsWithTrailingConstant:(double)a3;
- (void)_setupConstraints;
- (void)_setupConstraintsForContentSize;
- (void)_setupNonAccessibilitySizeConstraints;
- (void)_setupUI;
- (void)_updateClearButtonState;
- (void)_updateClearButtonStateForBirthdate;
- (void)_updateForCurrentSizeCategory;
- (void)setDisplayName:(id)a3;
- (void)setDisplayValue:(id)a3;
- (void)setPlaceholderValue:(id)a3;
- (void)setShouldUseSelectedColorForDisplayValue:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAutomationIdentifiersForProfileDetail:(id)a3;
@end

@implementation WDProfileTableViewCell

- (WDProfileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDProfileTableViewCell;
  v4 = [(WDProfileTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WDProfileTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)updateAutomationIdentifiersForProfileDetail:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"HealthDetail";
  v15[1] = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v15 count:2];
  v7 = HKUIJoinStringsForAutomationIdentifier();

  [(WDProfileTableViewCell *)self setAccessibilityIdentifier:v7];
  v14[0] = v7;
  v14[1] = @"Title";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = HKUIJoinStringsForAutomationIdentifier();
  [(UILabel *)self->_displayNameLabel setAccessibilityIdentifier:v9];

  v13[0] = v7;
  v13[1] = @"Value";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = HKUIJoinStringsForAutomationIdentifier();
  [(UITextField *)self->_displayValueTextField setAccessibilityIdentifier:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupUI
{
  v3 = [MEMORY[0x277D75348] labelColor];
  normalDisplayValueColor = self->_normalDisplayValueColor;
  self->_normalDisplayValueColor = v3;

  v5 = HKHealthKeyColor();
  selectedDisplayValueColor = self->_selectedDisplayValueColor;
  self->_selectedDisplayValueColor = v5;

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  displayNameLabel = self->_displayNameLabel;
  self->_displayNameLabel = v7;

  [(UILabel *)self->_displayNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = objc_alloc_init(MEMORY[0x277D75BB8]);
  displayValueTextField = self->_displayValueTextField;
  self->_displayValueTextField = v9;

  [(UITextField *)self->_displayValueTextField setDelegate:self];
  [(UITextField *)self->_displayValueTextField setTextColor:self->_normalDisplayValueColor];
  [(UITextField *)self->_displayValueTextField setUserInteractionEnabled:0];
  [(UITextField *)self->_displayValueTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = MEMORY[0x277D755B8];
  v12 = HKHealthUIFrameworkBundle();
  v20 = [v11 imageNamed:@"remove_button_minus" inBundle:v12];

  v13 = [MEMORY[0x277D75348] systemRedColor];
  v14 = [v20 _flatImageWithColor:v13];

  v15 = [MEMORY[0x277D75220] buttonWithType:0];
  clearButton = self->_clearButton;
  self->_clearButton = v15;

  [(UIButton *)self->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_clearButton setImage:v14 forState:0];
  [(WDProfileTableViewCell *)self _updateClearButtonState];
  v17 = [(WDProfileTableViewCell *)self contentView];
  [v17 addSubview:self->_clearButton];

  v18 = [(WDProfileTableViewCell *)self contentView];
  [v18 addSubview:self->_displayNameLabel];

  v19 = [(WDProfileTableViewCell *)self contentView];
  [v19 addSubview:self->_displayValueTextField];

  [(WDProfileTableViewCell *)self _updateForCurrentSizeCategory];
  [(WDProfileTableViewCell *)self _setupConstraints];
}

- (void)_updateForCurrentSizeCategory
{
  v5 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_displayNameLabel setFont:v5];
  [(UITextField *)self->_displayValueTextField setFont:v5];
  [(UILabel *)self->_displayNameLabel setTextAlignment:4];
  v3 = 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:0] != 1);
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  [(UITextField *)self->_displayValueTextField setTextAlignment:v4];
  [(UILabel *)self->_displayNameLabel setAdjustsFontSizeToFitWidth:0];
  [(UITextField *)self->_displayValueTextField setAdjustsFontSizeToFitWidth:HKUIApplicationIsUsingAccessibilityContentSizeCategory()];
  [(UILabel *)self->_displayNameLabel setNumberOfLines:0];
}

- (void)_setupNonAccessibilitySizeConstraints
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16 = [(WDProfileTableViewCell *)self contentView];
  v15 = [v16 bottomAnchor];
  v3 = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v4 = [v15 constraintGreaterThanOrEqualToAnchor:v3 constant:12.5];
  v17[0] = v4;
  v5 = [(UIButton *)self->_clearButton leadingAnchor];
  v6 = [(UILabel *)self->_displayNameLabel trailingAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:5.0];
  v17[1] = v7;
  v8 = [(UITextField *)self->_displayValueTextField topAnchor];
  v9 = [(WDProfileTableViewCell *)self contentView];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:12.5];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  normalSizeConstraints = self->_normalSizeConstraints;
  self->_normalSizeConstraints = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setupAccessibilitySizeConstraintsWithTrailingConstant:(double)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = [(UILabel *)self->_displayNameLabel trailingAnchor];
  v22 = [(WDProfileTableViewCell *)self contentView];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:a3];
  v23[0] = v19;
  v18 = [(UITextField *)self->_displayValueTextField topAnchor];
  v17 = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v5 = [v18 constraintEqualToAnchor:v17 constant:12.5];
  v23[1] = v5;
  v6 = [(UIButton *)self->_clearButton leadingAnchor];
  v7 = [(WDProfileTableViewCell *)self contentView];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:20.0];
  v23[2] = v9;
  v10 = [(WDProfileTableViewCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [(UITextField *)self->_displayValueTextField trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a3];
  v23[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  accessibilitySizeConstraints = self->_accessibilitySizeConstraints;
  self->_accessibilitySizeConstraints = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraints
{
  v41[8] = *MEMORY[0x277D85DE8];
  v3 = [(WDProfileTableViewCell *)self isEditing];
  v4 = objc_opt_class();
  if (v3)
  {
    [v4 editingTrailingEdgeMargin];
  }

  else
  {
    [v4 notEditingTrailingEdgeMargin];
  }

  v6 = v5;
  v7 = [(WDProfileTableViewCell *)self contentView];
  v8 = [v7 trailingAnchor];
  v9 = [(UITextField *)self->_displayValueTextField trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v6];
  displayValueTrailingConstraint = self->_displayValueTrailingConstraint;
  self->_displayValueTrailingConstraint = v10;

  v12 = [(UIButton *)self->_clearButton widthAnchor];
  v13 = [v12 constraintEqualToConstant:22.0];
  clearButtonWidthAnchor = self->_clearButtonWidthAnchor;
  self->_clearButtonWidthAnchor = v13;

  v15 = [(UITextField *)self->_displayValueTextField leadingAnchor];
  v16 = [(UIButton *)self->_clearButton trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:5.0];
  displayValueLeadingAnchor = self->_displayValueLeadingAnchor;
  self->_displayValueLeadingAnchor = v17;

  [(WDProfileTableViewCell *)self _setupNonAccessibilitySizeConstraints];
  [(WDProfileTableViewCell *)self _setupAccessibilitySizeConstraintsWithTrailingConstant:v6];
  v34 = MEMORY[0x277CCAAD0];
  v39 = [(UILabel *)self->_displayNameLabel topAnchor];
  v40 = [(WDProfileTableViewCell *)self contentView];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:12.5];
  v41[0] = v37;
  v35 = [(UILabel *)self->_displayNameLabel leadingAnchor];
  v36 = [(WDProfileTableViewCell *)self contentView];
  v33 = [v36 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33 constant:20.0];
  v19 = self->_clearButtonWidthAnchor;
  v41[1] = v32;
  v41[2] = v19;
  v31 = [(UIButton *)self->_clearButton heightAnchor];
  v20 = [v31 constraintEqualToConstant:22.0];
  v41[3] = v20;
  v21 = [(UIButton *)self->_clearButton centerYAnchor];
  v22 = [(UITextField *)self->_displayValueTextField centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v24 = self->_displayValueLeadingAnchor;
  v41[4] = v23;
  v41[5] = v24;
  v41[6] = self->_displayValueTrailingConstraint;
  v25 = [(WDProfileTableViewCell *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [(UITextField *)self->_displayValueTextField bottomAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27 constant:12.5];
  v41[7] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:8];
  [v34 activateConstraints:v29];

  [(WDProfileTableViewCell *)self _setupConstraintsForContentSize];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsForContentSize
{
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v4 = &OBJC_IVAR___WDProfileTableViewCell__normalSizeConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___WDProfileTableViewCell__accessibilitySizeConstraints;
  }

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v5 = &OBJC_IVAR___WDProfileTableViewCell__accessibilitySizeConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___WDProfileTableViewCell__normalSizeConstraints;
  }

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 22.0;
  }

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 5.0;
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:*(&self->super.super.super.super.isa + *v4)];
  [MEMORY[0x277CCAAD0] activateConstraints:*(&self->super.super.super.super.isa + *v5)];
  [(NSLayoutConstraint *)self->_clearButtonWidthAnchor setConstant:v6];
  displayValueLeadingAnchor = self->_displayValueLeadingAnchor;

  [(NSLayoutConstraint *)displayValueLeadingAnchor setConstant:v7];
}

- (void)setDisplayName:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_displayName, a3);
  v5 = [(UILabel *)self->_displayNameLabel text];
  v6 = [v5 isEqualToString:v7];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_displayNameLabel setText:v7];
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisplayValue:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_displayValue, a3);
  v5 = [(UITextField *)self->_displayValueTextField text];
  v6 = [v5 isEqualToString:v7];

  if ((v6 & 1) == 0)
  {
    [(UITextField *)self->_displayValueTextField setText:v7];
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setPlaceholderValue:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_placeholderValue, a3);
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  [(UITextField *)self->_displayValueTextField setAttributedPlaceholder:v5];

  v6 = [(WDProfileTableViewCell *)self displayValue];
  v7 = [v6 length];

  if (!v7)
  {
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseSelectedColorForDisplayValue:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x277D85DE8];
  self->_shouldUseSelectedColorForDisplayValue = a3;
  v5 = &OBJC_IVAR___WDProfileTableViewCell__normalDisplayValueColor;
  if (a3)
  {
    v5 = &OBJC_IVAR___WDProfileTableViewCell__selectedDisplayValueColor;
  }

  [(UITextField *)self->_displayValueTextField setTextColor:*(&self->super.super.super.super.isa + *v5)];
  if (self->_placeholderValue)
  {
    if (v3)
    {
      v6 = self->_selectedDisplayValueColor;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] systemGrayColor];
    }

    v7 = v6;
    v8 = objc_alloc(MEMORY[0x277CCAB48]);
    placeholderValue = self->_placeholderValue;
    v13 = *MEMORY[0x277D740C0];
    v14[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v8 initWithString:placeholderValue attributes:v10];
    [(UITextField *)self->_displayValueTextField setAttributedPlaceholder:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDProfileTableViewCell;
  [(WDProfileTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDProfileTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDProfileTableViewCell *)self _updateForCurrentSizeCategory];
      [(WDProfileTableViewCell *)self _setupConstraintsForContentSize];
      [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(WDProfileTableViewCell *)self inputView];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = WDProfileTableViewCell;
    return [(WDProfileTableViewCell *)&v7 becomeFirstResponder];
  }

  else
  {
    v5 = [(WDProfileTableViewCell *)self displayValueTextField];
    v6 = [v5 becomeFirstResponder];

    return v6;
  }
}

- (void)_updateClearButtonState
{
  v3 = [(UIButton *)self->_clearButton isHidden];
  if ([(WDProfileTableViewCell *)self shouldDisplayClearButtonDuringEditing])
  {
    v4 = [(WDProfileTableViewCell *)self isEditing]^ 1;
  }

  else
  {
    v4 = 1;
  }

  [(UIButton *)self->_clearButton setHidden:v4];
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v5 = [(UIButton *)self->_clearButton isHidden];
    v6 = 22.0;
    if (v5)
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_clearButtonWidthAnchor setConstant:v6];
    v7 = [(UIButton *)self->_clearButton isHidden];
    v8 = 5.0;
    if (v7)
    {
      v8 = 0.0;
    }

    [(NSLayoutConstraint *)self->_displayValueLeadingAnchor setConstant:v8];
  }

  if (v3 != [(UIButton *)self->_clearButton isHidden])
  {

    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateClearButtonStateForBirthdate
{
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    [(NSLayoutConstraint *)self->_clearButtonWidthAnchor setConstant:22.0];
    [(NSLayoutConstraint *)self->_displayValueLeadingAnchor setConstant:5.0];
  }

  [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
}

@end