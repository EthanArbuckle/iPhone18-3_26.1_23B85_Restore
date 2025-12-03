@interface WDManualDataEntryTableViewCell
- (UIFont)bodyFont;
- (WDManualDataEntryTableViewCell)initWithCoder:(id)coder;
- (WDManualDataEntryTableViewCell)initWithDisplayName:(id)name unitName:(id)unitName dataEntryType:(unint64_t)type;
- (WDManualDataEntryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WDManualDataEntryTableViewCellDelegate)delegate;
- (id)_removeDecimalSeparatorsFromText:(id)text;
- (id)_sanitizedTextFieldText:(id)text;
- (void)_localeDidChange:(id)change;
- (void)_setupConstraints;
- (void)_setupIntegerNumberFormatterIfNeeded;
- (void)_setupUIWithDisplayName:(id)name unitName:(id)unitName;
- (void)_updateDecimalSeparator;
- (void)_updateDisplayNameLabelConstraints;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)_valueFieldDidChange:(id)change;
- (void)beginEditing;
- (void)dealloc;
- (void)endEditing;
- (void)setDisplayName:(id)name;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation WDManualDataEntryTableViewCell

- (WDManualDataEntryTableViewCell)initWithDisplayName:(id)name unitName:(id)unitName dataEntryType:(unint64_t)type
{
  v18[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  unitNameCopy = unitName;
  v17.receiver = self;
  v17.super_class = WDManualDataEntryTableViewCell;
  v10 = [(WDManualDataEntryTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:0];
  v11 = v10;
  if (v10)
  {
    v10->_dataEntryType = type;
    [(WDManualDataEntryTableViewCell *)v10 _updateDecimalSeparator];
    [(WDManualDataEntryTableViewCell *)v11 _setupUIWithDisplayName:nameCopy unitName:unitNameCopy];
    [(WDManualDataEntryTableViewCell *)v11 _setupConstraints];
    [(WDManualDataEntryTableViewCell *)v11 _setupIntegerNumberFormatterIfNeeded];
    [(WDManualDataEntryTableViewCell *)v11 _updateForCurrentSizeCategory];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v13 = objc_opt_self();
    v18[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(WDManualDataEntryTableViewCell *)v11 registerForTraitChanges:v14 withHandler:&__block_literal_global_3];
  }

  return v11;
}

- (WDManualDataEntryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (WDManualDataEntryTableViewCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WDManualDataEntryTableViewCell;
  return [(WDManualDataEntryTableViewCell *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = WDManualDataEntryTableViewCell;
  [(WDManualDataEntryTableViewCell *)&v4 dealloc];
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (void)setDisplayName:(id)name
{
  [(UILabel *)self->_displayNameLabel setText:name];
  [(WDManualDataEntryTableViewCell *)self _updateDisplayNameLabelConstraints];

  [(WDManualDataEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_setupConstraints
{
  v51[9] = *MEMORY[0x1E69E9840];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_ValuefieldDisp.isa, self->_valueField, self->_displayNameLabel, self->_unitLabel, 0);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contentView = [(WDManualDataEntryTableViewCell *)self contentView];
  v6 = [contentView hk_addConstraintsWithFormat:@"V:|-10-[_displayNameLabel]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v6];

  contentView2 = [(WDManualDataEntryTableViewCell *)self contentView];
  v50 = v3;
  v8 = [contentView2 hk_addConstraintsWithFormat:@"V:|-10-[_valueField]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v8];

  contentView3 = [(WDManualDataEntryTableViewCell *)self contentView];
  v10 = [contentView3 hk_addConstraintsWithFormat:@"V:|-10-[_unitLabel]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v10];

  regularLayoutConstraints = self->_regularLayoutConstraints;
  self->_regularLayoutConstraints = v4;
  v42 = v4;

  trailingAnchor = [(UITextField *)self->_valueField trailingAnchor];
  leadingAnchor = [(UILabel *)self->_unitLabel leadingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:0.0];
  largeTextValueFieldToUnitLabelSpacingConstraint = self->_largeTextValueFieldToUnitLabelSpacingConstraint;
  self->_largeTextValueFieldToUnitLabelSpacingConstraint = v14;

  contentView4 = [(WDManualDataEntryTableViewCell *)self contentView];
  topAnchor = [contentView4 topAnchor];
  topAnchor2 = [(UILabel *)self->_displayNameLabel topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-10.0];
  v51[0] = v46;
  contentView5 = [(WDManualDataEntryTableViewCell *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  bottomAnchor2 = [(UITextField *)self->_valueField bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v51[1] = v41;
  leadingAnchor2 = [(UILabel *)self->_displayNameLabel leadingAnchor];
  contentView6 = [(WDManualDataEntryTableViewCell *)self contentView];
  leadingAnchor3 = [contentView6 leadingAnchor];
  v37 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
  v51[2] = v37;
  trailingAnchor2 = [(UILabel *)self->_displayNameLabel trailingAnchor];
  contentView7 = [(WDManualDataEntryTableViewCell *)self contentView];
  trailingAnchor3 = [contentView7 trailingAnchor];
  v33 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:15.0];
  v51[3] = v33;
  leadingAnchor4 = [(UITextField *)self->_valueField leadingAnchor];
  contentView8 = [(WDManualDataEntryTableViewCell *)self contentView];
  leadingAnchor5 = [contentView8 leadingAnchor];
  v29 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:15.0];
  v51[4] = v29;
  topAnchor3 = [(UITextField *)self->_valueField topAnchor];
  bottomAnchor3 = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:3.0];
  v18 = self->_largeTextValueFieldToUnitLabelSpacingConstraint;
  v51[5] = v17;
  v51[6] = v18;
  firstBaselineAnchor = [(UILabel *)self->_unitLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [(UITextField *)self->_valueField firstBaselineAnchor];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v51[7] = v21;
  trailingAnchor4 = [(UILabel *)self->_unitLabel trailingAnchor];
  contentView9 = [(WDManualDataEntryTableViewCell *)self contentView];
  trailingAnchor5 = [contentView9 trailingAnchor];
  v25 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:16.0];
  v51[8] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:9];
  largeTextLayoutConstraints = self->_largeTextLayoutConstraints;
  self->_largeTextLayoutConstraints = v26;
}

- (void)_updateForCurrentSizeCategory
{
  [(WDManualDataEntryTableViewCell *)self _updateFont];
  [(WDManualDataEntryTableViewCell *)self _updateDisplayNameLabelConstraints];
  v3 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  v6 = [v3 characterDirectionForLanguage:v5];

  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v7 = 2 * (v6 == 2);
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_regularLayoutConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_largeTextLayoutConstraints];
    text = [(UILabel *)self->_unitLabel text];
    v9 = [text length];

    if (v9)
    {
      v10 = 3.0;
    }

    else
    {
      v10 = 0.0;
    }

    [(NSLayoutConstraint *)self->_largeTextValueFieldToUnitLabelSpacingConstraint setConstant:v10];
  }

  else
  {
    v7 = 2 * (v6 != 2);
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_largeTextLayoutConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_regularLayoutConstraints];
  }

  valueField = self->_valueField;

  [(UITextField *)valueField setTextAlignment:v7];
}

- (void)_updateFont
{
  bodyFont = self->_bodyFont;
  self->_bodyFont = 0;

  bodyFont = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UITextField *)self->_valueField setFont:bodyFont];

  bodyFont2 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_displayNameLabel setFont:bodyFont2];

  bodyFont3 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_unitLabel setFont:bodyFont3];

  [(WDManualDataEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateDisplayNameLabelConstraints
{
  if (self->_displayNameLabelConstraints)
  {
    contentView = [(WDManualDataEntryTableViewCell *)self contentView];
    [contentView removeConstraints:self->_displayNameLabelConstraints];
  }

  v4 = *MEMORY[0x1E69DE090];
  v5 = *(MEMORY[0x1E69DE090] + 8);
  [(UILabel *)self->_displayNameLabel systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], v5];
  firstValue = [MEMORY[0x1E696AD98] numberWithDouble:?];
  text = [(UILabel *)self->_unitLabel text];
  v7 = [text length];

  if (v7)
  {
    [(UILabel *)self->_unitLabel systemLayoutSizeFittingSize:v4, v5];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_ValuefieldDisp.isa, self->_valueField, self->_displayNameLabel, self->_unitLabel, 0);
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Displaynamelab_0.isa, firstValue, v8, 0);

    v11 = @"H:|-16-[_displayNameLabel(displayNameLabelWidth)]-[_valueField]-3-[_unitLabel(unitLabelWidth)]-16-|";
  }

  else
  {
    v9 = _NSDictionaryOfVariableBindings(&cfstr_ValuefieldDisp_0.isa, self->_valueField, self->_displayNameLabel, 0);
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Displaynamelab.isa, firstValue, 0);
    v11 = @"H:|-16-[_displayNameLabel(displayNameLabelWidth)]-[_valueField]-16-|";
  }

  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v11 options:0 metrics:v10 views:v9];
  displayNameLabelConstraints = self->_displayNameLabelConstraints;
  self->_displayNameLabelConstraints = v12;

  contentView2 = [(WDManualDataEntryTableViewCell *)self contentView];
  [contentView2 addConstraints:self->_displayNameLabelConstraints];
}

- (void)_setupUIWithDisplayName:(id)name unitName:(id)unitName
{
  nameCopy = name;
  unitNameCopy = unitName;
  if (self->_dataEntryType == 3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A4130]);
    [(UITextField *)v7 setAllowsSelection:0];
    valueField = self->_valueField;
    self->_valueField = v7;
    v9 = v7;

    [(UITextField *)self->_valueField setAdjustsFontSizeToFitWidth:1];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    v9 = self->_valueField;
    self->_valueField = v10;
  }

  [(UITextField *)self->_valueField setDelegate:self];
  v11 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  LODWORD(v11) = [v11 characterDirectionForLanguage:v13] != 2;

  [(UITextField *)self->_valueField setTextAlignment:2 * v11];
  [(UITextField *)self->_valueField setUserInteractionEnabled:0];
  [(UITextField *)self->_valueField addTarget:self action:sel__valueFieldDidChange_ forControlEvents:0x20000];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  LOBYTE(currentLocale) = [mEMORY[0x1E696C608] isiPad];

  if ((currentLocale & 1) == 0)
  {
    dataEntryType = self->_dataEntryType;
    if (dataEntryType == 1)
    {
      v16 = 4;
    }

    else
    {
      if (dataEntryType != 2)
      {
        goto LABEL_10;
      }

      v16 = 8;
    }

    [(UITextField *)self->_valueField setKeyboardType:v16];
  }

LABEL_10:
  bodyFont = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UITextField *)self->_valueField setFont:bodyFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UITextField *)self->_valueField setTextColor:labelColor];

  [(UITextField *)self->_valueField setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(WDManualDataEntryTableViewCell *)self contentView];
  [contentView addSubview:self->_valueField];

  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  displayNameLabel = self->_displayNameLabel;
  self->_displayNameLabel = v20;

  [(UILabel *)self->_displayNameLabel setText:nameCopy];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_displayNameLabel setTextColor:secondaryLabelColor];

  bodyFont2 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_displayNameLabel setFont:bodyFont2];

  [(UILabel *)self->_displayNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(WDManualDataEntryTableViewCell *)self contentView];
  [contentView2 addSubview:self->_displayNameLabel];

  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  unitLabel = self->_unitLabel;
  self->_unitLabel = v25;

  [(UILabel *)self->_unitLabel setText:unitNameCopy];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_unitLabel setTextColor:labelColor2];

  bodyFont3 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_unitLabel setFont:bodyFont3];

  [(UILabel *)self->_unitLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(WDManualDataEntryTableViewCell *)self contentView];
  [contentView3 addSubview:self->_unitLabel];

  [(WDManualDataEntryTableViewCell *)self setSelectionStyle:0];
}

- (void)_setupIntegerNumberFormatterIfNeeded
{
  if (self->_dataEntryType - 1 <= 1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    integerNumberFormatter = self->_integerNumberFormatter;
    self->_integerNumberFormatter = v4;

    v6 = self->_integerNumberFormatter;

    [(NSNumberFormatter *)v6 setMaximumFractionDigits:0];
  }
}

- (void)beginEditing
{
  if (self->_dataEntryType - 1 <= 2)
  {
    [(UITextField *)self->_valueField setUserInteractionEnabled:1];
    valueField = self->_valueField;

    [(UITextField *)valueField becomeFirstResponder];
  }
}

- (void)endEditing
{
  if (self->_dataEntryType - 1 <= 2)
  {
    [(UITextField *)self->_valueField setUserInteractionEnabled:0];
    valueField = self->_valueField;

    [(UITextField *)valueField resignFirstResponder];
  }
}

- (void)_valueFieldDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  v8 = [(WDManualDataEntryTableViewCell *)self _sanitizedTextFieldText:text];

  [changeCopy setText:v8];
  delegate = [(WDManualDataEntryTableViewCell *)self delegate];
  text2 = [changeCopy text];

  [delegate manualDataEntryTableViewCell:self valueDidChangeToValue:text2];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if (self->_shouldHighlightWhenEditing)
  {
    editingCopy = editing;
    tintColor = [editingCopy tintColor];
    [editingCopy setTextColor:tintColor];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (self->_shouldHighlightWhenEditing)
  {
    v4 = MEMORY[0x1E69DC888];
    editingCopy = editing;
    labelColor = [v4 labelColor];
    [editingCopy setTextColor:labelColor];
  }
}

- (void)_localeDidChange:(id)change
{
  [(UITextField *)self->_valueField setText:&stru_1F3823B88];

  [(WDManualDataEntryTableViewCell *)self _updateDecimalSeparator];
}

- (id)_removeDecimalSeparatorsFromText:(id)text
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = [text componentsSeparatedByString:self->_decimalSeparator];
  firstObject = [v4 firstObject];
  if ([(__CFString *)firstObject isEqual:&stru_1F3823B88])
  {

    firstObject = @"0";
  }

  if ([v4 count] <= 1)
  {
    v6 = [(NSNumberFormatter *)self->_integerNumberFormatter numberFromString:firstObject];
    if (v6)
    {
      v7 = firstObject;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    goto LABEL_14;
  }

  v6 = [v4 objectAtIndexedSubscript:1];
  v15[0] = firstObject;
  v15[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v9 componentsJoinedByString:self->_decimalSeparator];

  v11 = [(NSNumberFormatter *)self->_integerNumberFormatter numberFromString:v10];
  v12 = v11;
  if (self->_dataEntryType == 1)
  {
    v13 = [(NSNumberFormatter *)self->_integerNumberFormatter stringFromNumber:v11];
  }

  else
  {
    if (!v11)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v13 = v10;
  }

  v8 = v13;
LABEL_13:

LABEL_14:

  return v8;
}

- (id)_sanitizedTextFieldText:(id)text
{
  textCopy = text;
  v6 = textCopy;
  lastValidSanitizedText = textCopy;
  if (self->_dataEntryType - 1 <= 1)
  {
    if ([textCopy length])
    {
      v8 = [(WDManualDataEntryTableViewCell *)self _removeDecimalSeparatorsFromText:v6];
      if ([v8 length])
      {
        objc_storeStrong(&self->_lastValidSanitizedText, v8);
      }
    }

    else
    {
      objc_storeStrong(&self->_lastValidSanitizedText, text);
    }

    lastValidSanitizedText = self->_lastValidSanitizedText;
  }

  v9 = lastValidSanitizedText;

  return lastValidSanitizedText;
}

- (void)_updateDecimalSeparator
{
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  decimalSeparator = [v5 decimalSeparator];
  decimalSeparator = self->_decimalSeparator;
  self->_decimalSeparator = decimalSeparator;
}

- (WDManualDataEntryTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end