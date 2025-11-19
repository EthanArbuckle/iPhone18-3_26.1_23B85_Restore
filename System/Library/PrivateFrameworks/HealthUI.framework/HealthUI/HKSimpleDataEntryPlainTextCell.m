@interface HKSimpleDataEntryPlainTextCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (HKSimpleDataEntryCellDelegate)delegate;
- (HKSimpleDataEntryPlainTextCell)initWithIntention:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_informDelegateForContentChange;
- (void)_setupInputTextFieldWithIntention:(int64_t)a3;
- (void)_setupLabels;
- (void)_setupLayoutConstraints;
- (void)_updateForCurrentSizeCategory;
- (void)layoutMarginsDidChange;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKSimpleDataEntryPlainTextCell

- (HKSimpleDataEntryPlainTextCell)initWithIntention:(int64_t)a3 reuseIdentifier:(id)a4
{
  v22.receiver = self;
  v22.super_class = HKSimpleDataEntryPlainTextCell;
  v5 = [(HKSimpleDataEntryPlainTextCell *)&v22 initWithStyle:0 reuseIdentifier:a4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v6;

    [(UILabel *)v5->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_titleLabel setMinimumScaleFactor:0.7];
    [(UILabel *)v5->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    v8 = v5->_titleLabel;
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = objc_alloc_init(HKCaretOptionalTextField);
    inputTextField = v5->_inputTextField;
    v5->_inputTextField = v10;

    [(HKSimpleDataEntryPlainTextCell *)v5 _setupInputTextFieldWithIntention:a3];
    v12 = v5->_inputTextField;
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(HKCaretOptionalTextField *)v12 setTextColor:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    horizontalSeparator = v5->_horizontalSeparator;
    v5->_horizontalSeparator = v14;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKCaretOptionalTextField *)v5->_inputTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_horizontalSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [v16 addSubview:v5->_titleLabel];

    v17 = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [v17 addSubview:v5->_inputTextField];

    v18 = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [v18 addSubview:v5->_horizontalSeparator];

    [(HKCaretOptionalTextField *)v5->_inputTextField setDelegate:v5];
    [(HKCaretOptionalTextField *)v5->_inputTextField addTarget:v5 action:sel_textFieldDidChangeValue_ forControlEvents:0x20000];
    v19 = v5->_horizontalSeparator;
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v19 setBackgroundColor:v20];

    [(HKSimpleDataEntryPlainTextCell *)v5 _setupLabels];
    [(HKSimpleDataEntryPlainTextCell *)v5 _setupLayoutConstraints];
    [(HKSimpleDataEntryPlainTextCell *)v5 _updateForCurrentSizeCategory];
    [(HKSimpleDataEntryPlainTextCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

- (void)_setupInputTextFieldWithIntention:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_26;
        }

        inputTextField = self->_inputTextField;
        v8 = MEMORY[0x1E69DE4E0];
      }

      else
      {
        inputTextField = self->_inputTextField;
        v8 = MEMORY[0x1E69DE4C8];
      }
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          [(HKCaretOptionalTextField *)self->_inputTextField setTextContentType:*MEMORY[0x1E69DE4A0]];
          [(HKCaretOptionalTextField *)self->_inputTextField setKeyboardType:7];
          [(HKCaretOptionalTextField *)self->_inputTextField setAutocapitalizationType:0];
          [(HKCaretOptionalTextField *)self->_inputTextField setAutocorrectionType:1];
          goto LABEL_23;
        }

        v4 = self->_inputTextField;
        v5 = MEMORY[0x1E69DE540];
        goto LABEL_18;
      }

      inputTextField = self->_inputTextField;
      v8 = MEMORY[0x1E69DE4B0];
    }

    [(HKCaretOptionalTextField *)inputTextField setTextContentType:*v8];
    goto LABEL_23;
  }

  if (a3 <= 6)
  {
    v4 = self->_inputTextField;
    if (a3 == 5)
    {
      v5 = MEMORY[0x1E69DE548];
    }

    else
    {
      v5 = MEMORY[0x1E69DE3F8];
    }

LABEL_18:
    [(HKCaretOptionalTextField *)v4 setTextContentType:*v5];
    [(HKCaretOptionalTextField *)self->_inputTextField setAutocapitalizationType:1];
LABEL_23:
    [(HKCaretOptionalTextField *)self->_inputTextField setReturnKeyType:4];
    goto LABEL_26;
  }

  switch(a3)
  {
    case 7:
      characterCountLimit = self->_characterCountLimit;
      self->_characterCountLimit = &unk_1F4382650;

      [(HKCaretOptionalTextField *)self->_inputTextField setDisableActions:1];
      [(HKCaretOptionalTextField *)self->_inputTextField setTextContentType:*MEMORY[0x1E69DE530]];
LABEL_25:
      [(HKCaretOptionalTextField *)self->_inputTextField setKeyboardType:4];
      break;
    case 8:
      v10 = self->_characterCountLimit;
      self->_characterCountLimit = &unk_1F4382668;

      [(HKCaretOptionalTextField *)self->_inputTextField setDisableActions:1];
      [(HKCaretOptionalTextField *)self->_inputTextField setSecureTextEntry:1];
      goto LABEL_25;
    case 9:
      v6 = self->_characterCountLimit;
      self->_characterCountLimit = &unk_1F4382680;

      break;
  }

LABEL_26:
  v11 = self->_inputTextField;
  v12 = self->_characterCountLimit;
  if (v12)
  {
    v13 = [(NSNumber *)v12 integerValue]!= 0;
  }

  else
  {
    v13 = 1;
  }

  [(HKCaretOptionalTextField *)v11 setAllowsSelection:v13];
}

- (void)_setupLabels
{
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v3];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4 symbolicTraits:0];
  [(HKCaretOptionalTextField *)self->_inputTextField setFont:v6];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = HKSimpleDataEntryPlainTextCell;
  [(HKSimpleDataEntryPlainTextCell *)&v3 layoutMarginsDidChange];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_regularConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_largeTextConstraints];
  [(HKSimpleDataEntryPlainTextCell *)self _setupLayoutConstraints];
  [(HKSimpleDataEntryPlainTextCell *)self _updateForCurrentSizeCategory];
}

- (void)_setupLayoutConstraints
{
  v38[6] = *MEMORY[0x1E69E9840];
  v35 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelInpu.isa, self->_titleLabel, self->_inputTextField, self->_horizontalSeparator, 0);
  [(HKSimpleDataEntryPlainTextCell *)self directionalLayoutMargins];
  v4 = v3;
  [(HKSimpleDataEntryPlainTextCell *)self directionalLayoutMargins];
  v6 = v5;
  v37[0] = @"onePixel";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:HKUIOnePixel()];
  v38[0] = v7;
  v37[1] = @"left";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v38[1] = v8;
  v37[2] = @"right";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v38[2] = v9;
  v37[3] = @"edge";
  if (v4 >= v6)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v38[3] = v11;
  v38[4] = &unk_1F43848D0;
  v37[4] = @"inputLeft";
  v37[5] = @"titleInputMin";
  v38[5] = &unk_1F43848E0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

  v13 = MEMORY[0x1E695DF70];
  v34 = [(UILabel *)self->_titleLabel centerYAnchor];
  v14 = [(HKSimpleDataEntryPlainTextCell *)self contentView];
  v15 = [v14 centerYAnchor];
  v16 = [v34 constraintEqualToAnchor:v15];
  v36[0] = v16;
  v17 = [(UILabel *)self->_titleLabel centerYAnchor];
  v18 = [(HKCaretOptionalTextField *)self->_inputTextField centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v36[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v21 = [v13 arrayWithArray:v20];

  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(edge)-[_titleLabel]" options:0 metrics:v12 views:v35];
  [(NSArray *)v21 addObjectsFromArray:v22];

  v23 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(inputLeft)-[_inputTextField]-(edge)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v21 addObjectsFromArray:v23];

  v24 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[_titleLabel]-(>=titleInputMin)-[_inputTextField]" options:0 metrics:v12 views:v35];
  [(NSArray *)v21 addObjectsFromArray:v24];

  v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(left)-[_horizontalSeparator]-(right)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v21 addObjectsFromArray:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_horizontalSeparator(onePixel)]-(0)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v21 addObjectsFromArray:v26];

  regularConstraints = self->_regularConstraints;
  self->_regularConstraints = v21;
  v28 = v21;

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(edge)-[_titleLabel]-(edge)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v29 addObjectsFromArray:v30];

  v31 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(edge)-[_inputTextField]-(edge)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v29 addObjectsFromArray:v31];

  v32 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(edge)-[_titleLabel]-(5)-[_inputTextField]-(edge)-|" options:0 metrics:v12 views:v35];
  [(NSArray *)v29 addObjectsFromArray:v32];

  largeTextConstraints = self->_largeTextConstraints;
  self->_largeTextConstraints = v29;
}

- (void)_updateForCurrentSizeCategory
{
  [(HKSimpleDataEntryPlainTextCell *)self _setupLabels];
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v4 = &OBJC_IVAR___HKSimpleDataEntryPlainTextCell__regularConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___HKSimpleDataEntryPlainTextCell__largeTextConstraints;
  }

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v5 = &OBJC_IVAR___HKSimpleDataEntryPlainTextCell__largeTextConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___HKSimpleDataEntryPlainTextCell__regularConstraints;
  }

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.super.super.isa + *v4)];
  v6 = MEMORY[0x1E696ACD8];
  v7 = *(&self->super.super.super.super.super.isa + *v5);

  [v6 activateConstraints:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSimpleDataEntryPlainTextCell;
  [(HKSimpleDataEntryPlainTextCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKSimpleDataEntryPlainTextCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKSimpleDataEntryPlainTextCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 isEqualToString:self->_lastChangedText];

  if ((v5 & 1) == 0)
  {

    [(HKSimpleDataEntryPlainTextCell *)self _informDelegateForContentChange];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  characterCountLimit = self->_characterCountLimit;
  if (characterCountLimit)
  {
    if ([(NSNumber *)characterCountLimit integerValue])
    {
      v12 = [v9 text];
      v13 = [v12 stringByReplacingCharactersInRange:location withString:{length, v10}];

      v14 = [v13 length];
      v15 = v14 <= [(NSNumber *)self->_characterCountLimit integerValue];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = [a3 _nextKeyResponder];
  [v3 becomeFirstResponder];

  return 1;
}

- (void)_informDelegateForContentChange
{
  v3 = [(HKSimpleDataEntryPlainTextCell *)self delegate];
  [v3 textFieldDidChangeValue:self->_inputTextField forCell:self];

  v4 = [(HKCaretOptionalTextField *)self->_inputTextField text];
  lastChangedText = self->_lastChangedText;
  self->_lastChangedText = v4;

  MEMORY[0x1EEE66BB8](v4, lastChangedText);
}

- (HKSimpleDataEntryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end