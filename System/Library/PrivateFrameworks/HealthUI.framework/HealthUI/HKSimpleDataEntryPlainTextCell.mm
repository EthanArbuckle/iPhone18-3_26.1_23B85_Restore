@interface HKSimpleDataEntryPlainTextCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (HKSimpleDataEntryCellDelegate)delegate;
- (HKSimpleDataEntryPlainTextCell)initWithIntention:(int64_t)intention reuseIdentifier:(id)identifier;
- (void)_informDelegateForContentChange;
- (void)_setupInputTextFieldWithIntention:(int64_t)intention;
- (void)_setupLabels;
- (void)_setupLayoutConstraints;
- (void)_updateForCurrentSizeCategory;
- (void)layoutMarginsDidChange;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKSimpleDataEntryPlainTextCell

- (HKSimpleDataEntryPlainTextCell)initWithIntention:(int64_t)intention reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = HKSimpleDataEntryPlainTextCell;
  v5 = [(HKSimpleDataEntryPlainTextCell *)&v22 initWithStyle:0 reuseIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v6;

    [(UILabel *)v5->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_titleLabel setMinimumScaleFactor:0.7];
    [(UILabel *)v5->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    v8 = v5->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v8 setTextColor:labelColor];

    v10 = objc_alloc_init(HKCaretOptionalTextField);
    inputTextField = v5->_inputTextField;
    v5->_inputTextField = v10;

    [(HKSimpleDataEntryPlainTextCell *)v5 _setupInputTextFieldWithIntention:intention];
    v12 = v5->_inputTextField;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(HKCaretOptionalTextField *)v12 setTextColor:labelColor2];

    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    horizontalSeparator = v5->_horizontalSeparator;
    v5->_horizontalSeparator = v14;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKCaretOptionalTextField *)v5->_inputTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_horizontalSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [contentView addSubview:v5->_titleLabel];

    contentView2 = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [contentView2 addSubview:v5->_inputTextField];

    contentView3 = [(HKSimpleDataEntryPlainTextCell *)v5 contentView];
    [contentView3 addSubview:v5->_horizontalSeparator];

    [(HKCaretOptionalTextField *)v5->_inputTextField setDelegate:v5];
    [(HKCaretOptionalTextField *)v5->_inputTextField addTarget:v5 action:sel_textFieldDidChangeValue_ forControlEvents:0x20000];
    v19 = v5->_horizontalSeparator;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v19 setBackgroundColor:clearColor];

    [(HKSimpleDataEntryPlainTextCell *)v5 _setupLabels];
    [(HKSimpleDataEntryPlainTextCell *)v5 _setupLayoutConstraints];
    [(HKSimpleDataEntryPlainTextCell *)v5 _updateForCurrentSizeCategory];
    [(HKSimpleDataEntryPlainTextCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

- (void)_setupInputTextFieldWithIntention:(int64_t)intention
{
  if (intention <= 4)
  {
    if (intention <= 1)
    {
      if (intention)
      {
        if (intention != 1)
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
      if (intention != 2)
      {
        if (intention == 3)
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

  if (intention <= 6)
  {
    v4 = self->_inputTextField;
    if (intention == 5)
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

  switch(intention)
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
  centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
  contentView = [(HKSimpleDataEntryPlainTextCell *)self contentView];
  centerYAnchor2 = [contentView centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v36[0] = v16;
  centerYAnchor3 = [(UILabel *)self->_titleLabel centerYAnchor];
  centerYAnchor4 = [(HKCaretOptionalTextField *)self->_inputTextField centerYAnchor];
  v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKSimpleDataEntryPlainTextCell;
  [(HKSimpleDataEntryPlainTextCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKSimpleDataEntryPlainTextCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKSimpleDataEntryPlainTextCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  v5 = [text isEqualToString:self->_lastChangedText];

  if ((v5 & 1) == 0)
  {

    [(HKSimpleDataEntryPlainTextCell *)self _informDelegateForContentChange];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  characterCountLimit = self->_characterCountLimit;
  if (characterCountLimit)
  {
    if ([(NSNumber *)characterCountLimit integerValue])
    {
      text = [fieldCopy text];
      v13 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

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

- (BOOL)textFieldShouldReturn:(id)return
{
  _nextKeyResponder = [return _nextKeyResponder];
  [_nextKeyResponder becomeFirstResponder];

  return 1;
}

- (void)_informDelegateForContentChange
{
  delegate = [(HKSimpleDataEntryPlainTextCell *)self delegate];
  [delegate textFieldDidChangeValue:self->_inputTextField forCell:self];

  text = [(HKCaretOptionalTextField *)self->_inputTextField text];
  lastChangedText = self->_lastChangedText;
  self->_lastChangedText = text;

  MEMORY[0x1EEE66BB8](text, lastChangedText);
}

- (HKSimpleDataEntryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end