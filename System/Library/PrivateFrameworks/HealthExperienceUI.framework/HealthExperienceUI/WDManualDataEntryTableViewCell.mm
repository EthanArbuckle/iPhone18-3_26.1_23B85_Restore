@interface WDManualDataEntryTableViewCell
- (UIFont)bodyFont;
- (WDManualDataEntryTableViewCell)initWithCoder:(id)a3;
- (WDManualDataEntryTableViewCell)initWithDisplayName:(id)a3 unitName:(id)a4 dataEntryType:(unint64_t)a5;
- (WDManualDataEntryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WDManualDataEntryTableViewCellDelegate)delegate;
- (id)_removeDecimalSeparatorsFromText:(id)a3;
- (id)_sanitizedTextFieldText:(id)a3;
- (void)_localeDidChange:(id)a3;
- (void)_setupConstraints;
- (void)_setupIntegerNumberFormatterIfNeeded;
- (void)_setupUIWithDisplayName:(id)a3 unitName:(id)a4;
- (void)_updateDecimalSeparator;
- (void)_updateDisplayNameLabelConstraints;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)_valueFieldDidChange:(id)a3;
- (void)beginEditing;
- (void)dealloc;
- (void)endEditing;
- (void)setDisplayName:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation WDManualDataEntryTableViewCell

- (WDManualDataEntryTableViewCell)initWithDisplayName:(id)a3 unitName:(id)a4 dataEntryType:(unint64_t)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WDManualDataEntryTableViewCell;
  v10 = [(WDManualDataEntryTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:0];
  v11 = v10;
  if (v10)
  {
    v10->_dataEntryType = a5;
    [(WDManualDataEntryTableViewCell *)v10 _updateDecimalSeparator];
    [(WDManualDataEntryTableViewCell *)v11 _setupUIWithDisplayName:v8 unitName:v9];
    [(WDManualDataEntryTableViewCell *)v11 _setupConstraints];
    [(WDManualDataEntryTableViewCell *)v11 _setupIntegerNumberFormatterIfNeeded];
    [(WDManualDataEntryTableViewCell *)v11 _updateForCurrentSizeCategory];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v11 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v13 = objc_opt_self();
    v18[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(WDManualDataEntryTableViewCell *)v11 registerForTraitChanges:v14 withHandler:&__block_literal_global_3];
  }

  return v11;
}

- (WDManualDataEntryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (WDManualDataEntryTableViewCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDManualDataEntryTableViewCell;
  return [(WDManualDataEntryTableViewCell *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

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

- (void)setDisplayName:(id)a3
{
  [(UILabel *)self->_displayNameLabel setText:a3];
  [(WDManualDataEntryTableViewCell *)self _updateDisplayNameLabelConstraints];

  [(WDManualDataEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_setupConstraints
{
  v51[9] = *MEMORY[0x1E69E9840];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_ValuefieldDisp.isa, self->_valueField, self->_displayNameLabel, self->_unitLabel, 0);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(WDManualDataEntryTableViewCell *)self contentView];
  v6 = [v5 hk_addConstraintsWithFormat:@"V:|-10-[_displayNameLabel]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v6];

  v7 = [(WDManualDataEntryTableViewCell *)self contentView];
  v50 = v3;
  v8 = [v7 hk_addConstraintsWithFormat:@"V:|-10-[_valueField]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v8];

  v9 = [(WDManualDataEntryTableViewCell *)self contentView];
  v10 = [v9 hk_addConstraintsWithFormat:@"V:|-10-[_unitLabel]-10-|" options:0 views:v3];
  [(NSArray *)v4 addObjectsFromArray:v10];

  regularLayoutConstraints = self->_regularLayoutConstraints;
  self->_regularLayoutConstraints = v4;
  v42 = v4;

  v12 = [(UITextField *)self->_valueField trailingAnchor];
  v13 = [(UILabel *)self->_unitLabel leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
  largeTextValueFieldToUnitLabelSpacingConstraint = self->_largeTextValueFieldToUnitLabelSpacingConstraint;
  self->_largeTextValueFieldToUnitLabelSpacingConstraint = v14;

  v49 = [(WDManualDataEntryTableViewCell *)self contentView];
  v48 = [v49 topAnchor];
  v47 = [(UILabel *)self->_displayNameLabel topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:-10.0];
  v51[0] = v46;
  v45 = [(WDManualDataEntryTableViewCell *)self contentView];
  v44 = [v45 bottomAnchor];
  v43 = [(UITextField *)self->_valueField bottomAnchor];
  v41 = [v44 constraintEqualToAnchor:v43 constant:10.0];
  v51[1] = v41;
  v39 = [(UILabel *)self->_displayNameLabel leadingAnchor];
  v40 = [(WDManualDataEntryTableViewCell *)self contentView];
  v38 = [v40 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:16.0];
  v51[2] = v37;
  v35 = [(UILabel *)self->_displayNameLabel trailingAnchor];
  v36 = [(WDManualDataEntryTableViewCell *)self contentView];
  v34 = [v36 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:15.0];
  v51[3] = v33;
  v31 = [(UITextField *)self->_valueField leadingAnchor];
  v32 = [(WDManualDataEntryTableViewCell *)self contentView];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:15.0];
  v51[4] = v29;
  v28 = [(UITextField *)self->_valueField topAnchor];
  v16 = [(UILabel *)self->_displayNameLabel bottomAnchor];
  v17 = [v28 constraintEqualToAnchor:v16 constant:3.0];
  v18 = self->_largeTextValueFieldToUnitLabelSpacingConstraint;
  v51[5] = v17;
  v51[6] = v18;
  v19 = [(UILabel *)self->_unitLabel firstBaselineAnchor];
  v20 = [(UITextField *)self->_valueField firstBaselineAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v51[7] = v21;
  v22 = [(UILabel *)self->_unitLabel trailingAnchor];
  v23 = [(WDManualDataEntryTableViewCell *)self contentView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:16.0];
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
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x1E695D9B0]];
  v6 = [v3 characterDirectionForLanguage:v5];

  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v7 = 2 * (v6 == 2);
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_regularLayoutConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_largeTextLayoutConstraints];
    v8 = [(UILabel *)self->_unitLabel text];
    v9 = [v8 length];

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

  v4 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UITextField *)self->_valueField setFont:v4];

  v5 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_displayNameLabel setFont:v5];

  v6 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_unitLabel setFont:v6];

  [(WDManualDataEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateDisplayNameLabelConstraints
{
  if (self->_displayNameLabelConstraints)
  {
    v3 = [(WDManualDataEntryTableViewCell *)self contentView];
    [v3 removeConstraints:self->_displayNameLabelConstraints];
  }

  v4 = *MEMORY[0x1E69DE090];
  v5 = *(MEMORY[0x1E69DE090] + 8);
  [(UILabel *)self->_displayNameLabel systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], v5];
  firstValue = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [(UILabel *)self->_unitLabel text];
  v7 = [v6 length];

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

  v14 = [(WDManualDataEntryTableViewCell *)self contentView];
  [v14 addConstraints:self->_displayNameLabelConstraints];
}

- (void)_setupUIWithDisplayName:(id)a3 unitName:(id)a4
{
  v30 = a3;
  v6 = a4;
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
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [v12 objectForKey:*MEMORY[0x1E695D9B0]];
  LODWORD(v11) = [v11 characterDirectionForLanguage:v13] != 2;

  [(UITextField *)self->_valueField setTextAlignment:2 * v11];
  [(UITextField *)self->_valueField setUserInteractionEnabled:0];
  [(UITextField *)self->_valueField addTarget:self action:sel__valueFieldDidChange_ forControlEvents:0x20000];
  v14 = [MEMORY[0x1E696C608] sharedBehavior];
  LOBYTE(v12) = [v14 isiPad];

  if ((v12 & 1) == 0)
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
  v17 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UITextField *)self->_valueField setFont:v17];

  v18 = [MEMORY[0x1E69DC888] labelColor];
  [(UITextField *)self->_valueField setTextColor:v18];

  [(UITextField *)self->_valueField setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(WDManualDataEntryTableViewCell *)self contentView];
  [v19 addSubview:self->_valueField];

  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  displayNameLabel = self->_displayNameLabel;
  self->_displayNameLabel = v20;

  [(UILabel *)self->_displayNameLabel setText:v30];
  v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_displayNameLabel setTextColor:v22];

  v23 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_displayNameLabel setFont:v23];

  [(UILabel *)self->_displayNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(WDManualDataEntryTableViewCell *)self contentView];
  [v24 addSubview:self->_displayNameLabel];

  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  unitLabel = self->_unitLabel;
  self->_unitLabel = v25;

  [(UILabel *)self->_unitLabel setText:v6];
  v27 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_unitLabel setTextColor:v27];

  v28 = [(WDManualDataEntryTableViewCell *)self bodyFont];
  [(UILabel *)self->_unitLabel setFont:v28];

  [(UILabel *)self->_unitLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [(WDManualDataEntryTableViewCell *)self contentView];
  [v29 addSubview:self->_unitLabel];

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

- (void)_valueFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v8 = [(WDManualDataEntryTableViewCell *)self _sanitizedTextFieldText:v5];

  [v4 setText:v8];
  v6 = [(WDManualDataEntryTableViewCell *)self delegate];
  v7 = [v4 text];

  [v6 manualDataEntryTableViewCell:self valueDidChangeToValue:v7];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  if (self->_shouldHighlightWhenEditing)
  {
    v4 = a3;
    v5 = [v4 tintColor];
    [v4 setTextColor:v5];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  if (self->_shouldHighlightWhenEditing)
  {
    v4 = MEMORY[0x1E69DC888];
    v5 = a3;
    v6 = [v4 labelColor];
    [v5 setTextColor:v6];
  }
}

- (void)_localeDidChange:(id)a3
{
  [(UITextField *)self->_valueField setText:&stru_1F3823B88];

  [(WDManualDataEntryTableViewCell *)self _updateDecimalSeparator];
}

- (id)_removeDecimalSeparatorsFromText:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 componentsSeparatedByString:self->_decimalSeparator];
  v5 = [v4 firstObject];
  if ([(__CFString *)v5 isEqual:&stru_1F3823B88])
  {

    v5 = @"0";
  }

  if ([v4 count] <= 1)
  {
    v6 = [(NSNumberFormatter *)self->_integerNumberFormatter numberFromString:v5];
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    goto LABEL_14;
  }

  v6 = [v4 objectAtIndexedSubscript:1];
  v15[0] = v5;
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

- (id)_sanitizedTextFieldText:(id)a3
{
  v5 = a3;
  v6 = v5;
  lastValidSanitizedText = v5;
  if (self->_dataEntryType - 1 <= 1)
  {
    if ([v5 length])
    {
      v8 = [(WDManualDataEntryTableViewCell *)self _removeDecimalSeparatorsFromText:v6];
      if ([v8 length])
      {
        objc_storeStrong(&self->_lastValidSanitizedText, v8);
      }
    }

    else
    {
      objc_storeStrong(&self->_lastValidSanitizedText, a3);
    }

    lastValidSanitizedText = self->_lastValidSanitizedText;
  }

  v9 = lastValidSanitizedText;

  return lastValidSanitizedText;
}

- (void)_updateDecimalSeparator
{
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v3 = [v5 decimalSeparator];
  decimalSeparator = self->_decimalSeparator;
  self->_decimalSeparator = v3;
}

- (WDManualDataEntryTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end