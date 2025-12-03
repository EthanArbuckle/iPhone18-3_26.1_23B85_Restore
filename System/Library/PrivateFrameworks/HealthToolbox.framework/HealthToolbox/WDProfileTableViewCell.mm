@interface WDProfileTableViewCell
- (BOOL)becomeFirstResponder;
- (WDProfileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupAccessibilitySizeConstraintsWithTrailingConstant:(double)constant;
- (void)_setupConstraints;
- (void)_setupConstraintsForContentSize;
- (void)_setupNonAccessibilitySizeConstraints;
- (void)_setupUI;
- (void)_updateClearButtonState;
- (void)_updateClearButtonStateForBirthdate;
- (void)_updateForCurrentSizeCategory;
- (void)setDisplayName:(id)name;
- (void)setDisplayValue:(id)value;
- (void)setPlaceholderValue:(id)value;
- (void)setShouldUseSelectedColorForDisplayValue:(BOOL)value;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAutomationIdentifiersForProfileDetail:(id)detail;
@end

@implementation WDProfileTableViewCell

- (WDProfileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDProfileTableViewCell;
  v4 = [(WDProfileTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDProfileTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)updateAutomationIdentifiersForProfileDetail:(id)detail
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"HealthDetail";
  v15[1] = detail;
  v4 = MEMORY[0x277CBEA60];
  detailCopy = detail;
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  normalDisplayValueColor = self->_normalDisplayValueColor;
  self->_normalDisplayValueColor = labelColor;

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

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v14 = [v20 _flatImageWithColor:systemRedColor];

  v15 = [MEMORY[0x277D75220] buttonWithType:0];
  clearButton = self->_clearButton;
  self->_clearButton = v15;

  [(UIButton *)self->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_clearButton setImage:v14 forState:0];
  [(WDProfileTableViewCell *)self _updateClearButtonState];
  contentView = [(WDProfileTableViewCell *)self contentView];
  [contentView addSubview:self->_clearButton];

  contentView2 = [(WDProfileTableViewCell *)self contentView];
  [contentView2 addSubview:self->_displayNameLabel];

  contentView3 = [(WDProfileTableViewCell *)self contentView];
  [contentView3 addSubview:self->_displayValueTextField];

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
  contentView = [(WDProfileTableViewCell *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v4 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:12.5];
  v17[0] = v4;
  leadingAnchor = [(UIButton *)self->_clearButton leadingAnchor];
  trailingAnchor = [(UILabel *)self->_displayNameLabel trailingAnchor];
  v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:5.0];
  v17[1] = v7;
  topAnchor = [(UITextField *)self->_displayValueTextField topAnchor];
  contentView2 = [(WDProfileTableViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.5];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  normalSizeConstraints = self->_normalSizeConstraints;
  self->_normalSizeConstraints = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setupAccessibilitySizeConstraintsWithTrailingConstant:(double)constant
{
  v23[4] = *MEMORY[0x277D85DE8];
  trailingAnchor = [(UILabel *)self->_displayNameLabel trailingAnchor];
  contentView = [(WDProfileTableViewCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:constant];
  v23[0] = v19;
  topAnchor = [(UITextField *)self->_displayValueTextField topAnchor];
  bottomAnchor = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v5 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:12.5];
  v23[1] = v5;
  leadingAnchor = [(UIButton *)self->_clearButton leadingAnchor];
  contentView2 = [(WDProfileTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v23[2] = v9;
  contentView3 = [(WDProfileTableViewCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  trailingAnchor4 = [(UITextField *)self->_displayValueTextField trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:constant];
  v23[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  accessibilitySizeConstraints = self->_accessibilitySizeConstraints;
  self->_accessibilitySizeConstraints = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraints
{
  v41[8] = *MEMORY[0x277D85DE8];
  isEditing = [(WDProfileTableViewCell *)self isEditing];
  v4 = objc_opt_class();
  if (isEditing)
  {
    [v4 editingTrailingEdgeMargin];
  }

  else
  {
    [v4 notEditingTrailingEdgeMargin];
  }

  v6 = v5;
  contentView = [(WDProfileTableViewCell *)self contentView];
  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [(UITextField *)self->_displayValueTextField trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v6];
  displayValueTrailingConstraint = self->_displayValueTrailingConstraint;
  self->_displayValueTrailingConstraint = v10;

  widthAnchor = [(UIButton *)self->_clearButton widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:22.0];
  clearButtonWidthAnchor = self->_clearButtonWidthAnchor;
  self->_clearButtonWidthAnchor = v13;

  leadingAnchor = [(UITextField *)self->_displayValueTextField leadingAnchor];
  trailingAnchor3 = [(UIButton *)self->_clearButton trailingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:5.0];
  displayValueLeadingAnchor = self->_displayValueLeadingAnchor;
  self->_displayValueLeadingAnchor = v17;

  [(WDProfileTableViewCell *)self _setupNonAccessibilitySizeConstraints];
  [(WDProfileTableViewCell *)self _setupAccessibilitySizeConstraintsWithTrailingConstant:v6];
  v34 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)self->_displayNameLabel topAnchor];
  contentView2 = [(WDProfileTableViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.5];
  v41[0] = v37;
  leadingAnchor2 = [(UILabel *)self->_displayNameLabel leadingAnchor];
  contentView3 = [(WDProfileTableViewCell *)self contentView];
  leadingAnchor3 = [contentView3 leadingAnchor];
  v32 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:20.0];
  v19 = self->_clearButtonWidthAnchor;
  v41[1] = v32;
  v41[2] = v19;
  heightAnchor = [(UIButton *)self->_clearButton heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:22.0];
  v41[3] = v20;
  centerYAnchor = [(UIButton *)self->_clearButton centerYAnchor];
  centerYAnchor2 = [(UITextField *)self->_displayValueTextField centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24 = self->_displayValueLeadingAnchor;
  v41[4] = v23;
  v41[5] = v24;
  v41[6] = self->_displayValueTrailingConstraint;
  contentView4 = [(WDProfileTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [(UITextField *)self->_displayValueTextField bottomAnchor];
  v28 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:12.5];
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

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  objc_storeStrong(&self->_displayName, name);
  text = [(UILabel *)self->_displayNameLabel text];
  v6 = [text isEqualToString:nameCopy];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_displayNameLabel setText:nameCopy];
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisplayValue:(id)value
{
  valueCopy = value;
  objc_storeStrong(&self->_displayValue, value);
  text = [(UITextField *)self->_displayValueTextField text];
  v6 = [text isEqualToString:valueCopy];

  if ((v6 & 1) == 0)
  {
    [(UITextField *)self->_displayValueTextField setText:valueCopy];
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setPlaceholderValue:(id)value
{
  valueCopy = value;
  objc_storeStrong(&self->_placeholderValue, value);
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:valueCopy];
  [(UITextField *)self->_displayValueTextField setAttributedPlaceholder:v5];

  displayValue = [(WDProfileTableViewCell *)self displayValue];
  v7 = [displayValue length];

  if (!v7)
  {
    [(WDProfileTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseSelectedColorForDisplayValue:(BOOL)value
{
  valueCopy = value;
  v14[1] = *MEMORY[0x277D85DE8];
  self->_shouldUseSelectedColorForDisplayValue = value;
  v5 = &OBJC_IVAR___WDProfileTableViewCell__normalDisplayValueColor;
  if (value)
  {
    v5 = &OBJC_IVAR___WDProfileTableViewCell__selectedDisplayValueColor;
  }

  [(UITextField *)self->_displayValueTextField setTextColor:*(&self->super.super.super.super.isa + *v5)];
  if (self->_placeholderValue)
  {
    if (valueCopy)
    {
      systemGrayColor = self->_selectedDisplayValueColor;
    }

    else
    {
      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    }

    v7 = systemGrayColor;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDProfileTableViewCell;
  [(WDProfileTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDProfileTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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
  inputView = [(WDProfileTableViewCell *)self inputView];

  if (inputView)
  {
    v7.receiver = self;
    v7.super_class = WDProfileTableViewCell;
    return [(WDProfileTableViewCell *)&v7 becomeFirstResponder];
  }

  else
  {
    displayValueTextField = [(WDProfileTableViewCell *)self displayValueTextField];
    becomeFirstResponder = [displayValueTextField becomeFirstResponder];

    return becomeFirstResponder;
  }
}

- (void)_updateClearButtonState
{
  isHidden = [(UIButton *)self->_clearButton isHidden];
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
    isHidden2 = [(UIButton *)self->_clearButton isHidden];
    v6 = 22.0;
    if (isHidden2)
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_clearButtonWidthAnchor setConstant:v6];
    isHidden3 = [(UIButton *)self->_clearButton isHidden];
    v8 = 5.0;
    if (isHidden3)
    {
      v8 = 0.0;
    }

    [(NSLayoutConstraint *)self->_displayValueLeadingAnchor setConstant:v8];
  }

  if (isHidden != [(UIButton *)self->_clearButton isHidden])
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