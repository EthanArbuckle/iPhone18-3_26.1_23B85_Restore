@interface OBPasscodeField
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (NSString)stringValue;
- (OBPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields;
- (OBPasscodeFieldDelegate)delegate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)keyboardType;
- (void)_updateDots;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)setStringValue:(id)value;
@end

@implementation OBPasscodeField

- (OBPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields
{
  v13.receiver = self;
  v13.super_class = OBPasscodeField;
  v4 = [(OBPasscodeField *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    value = v4->_value;
    v4->_value = v5;

    v4->_numberOfEntryFields = fields;
    v4->_enabled = 1;
    for (i = objc_alloc_init(MEMORY[0x1E695DF70]); fields; --fields)
    {
      v8 = objc_alloc_init(OBPasscodeFieldDot);
      [(OBPasscodeFieldDot *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(NSArray *)i addObject:v8];
      [(OBPasscodeField *)v4 addArrangedSubview:v8];
    }

    dotViews = v4->_dotViews;
    v4->_dotViews = i;
    v10 = i;

    [(OBPasscodeField *)v4 setSpacing:28.0];
    [(OBPasscodeField *)v4 setSemanticContentAttribute:3];
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__passcodeFieldTapped_];

    [(OBPasscodeField *)v4 addGestureRecognizer:v11];
  }

  return v4;
}

- (NSString)stringValue
{
  value = [(OBPasscodeField *)self value];
  v3 = [value copy];

  return v3;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  value = [(OBPasscodeField *)self value];
  [value setString:valueCopy];

  [(OBPasscodeField *)self _updateDots];
  value2 = [(OBPasscodeField *)self value];
  v7 = [value2 length];
  numberOfEntryFields = [(OBPasscodeField *)self numberOfEntryFields];

  if (v7 == numberOfEntryFields)
  {
    delegate = [(OBPasscodeField *)self delegate];
    value3 = [(OBPasscodeField *)self value];
    v10 = [value3 copy];
    [delegate passcodeField:self enteredPasscode:v10];
  }
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PASSCODE" value:&stru_1F2CE9518 table:@"Localizable"];

  return v3;
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PASSCODE_VALUES" value:&stru_1F2CE9518 table:@"Localizable"];
  value = [(OBPasscodeField *)self value];
  v7 = [v3 localizedStringWithFormat:v5, objc_msgSend(value, "length"), -[OBPasscodeField numberOfEntryFields](self, "numberOfEntryFields")];

  return v7;
}

- (void)_updateDots
{
  if ([(OBPasscodeField *)self numberOfEntryFields])
  {
    v3 = 0;
    do
    {
      dotViews = [(OBPasscodeField *)self dotViews];
      v5 = [dotViews objectAtIndex:v3];

      stringValue = [(OBPasscodeField *)self stringValue];
      [v5 setFilled:{v3 < objc_msgSend(stringValue, "length")}];

      ++v3;
    }

    while (v3 < [(OBPasscodeField *)self numberOfEntryFields]);
  }
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = OBPasscodeField;
  becomeFirstResponder = [(OBPasscodeField *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }

  return becomeFirstResponder;
}

- (int64_t)keyboardType
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 11;
  }

  else
  {
    return 127;
  }
}

- (BOOL)hasText
{
  stringValue = [(OBPasscodeField *)self stringValue];
  v3 = [stringValue length] != 0;

  return v3;
}

- (void)insertText:(id)text
{
  textCopy = text;
  if ([(OBPasscodeField *)self isEnabled])
  {
    stringValue = [(OBPasscodeField *)self stringValue];
    v5 = [stringValue length];
    numberOfEntryFields = [(OBPasscodeField *)self numberOfEntryFields];

    if (v5 != numberOfEntryFields && ([textCopy isEqualToString:@"\n"] & 1) == 0)
    {
      if ([textCopy length])
      {
        value = [(OBPasscodeField *)self value];
        [value appendString:textCopy];

        [(OBPasscodeField *)self _updateDots];
        stringValue2 = [(OBPasscodeField *)self stringValue];
        v9 = [stringValue2 length];
        numberOfEntryFields2 = [(OBPasscodeField *)self numberOfEntryFields];

        if (v9 == numberOfEntryFields2)
        {
          delegate = [(OBPasscodeField *)self delegate];
          value2 = [(OBPasscodeField *)self value];
          v13 = [value2 copy];
          [delegate passcodeField:self enteredPasscode:v13];
        }
      }
    }
  }
}

- (void)deleteBackward
{
  stringValue = [(OBPasscodeField *)self stringValue];
  v4 = [stringValue length];

  if (v4)
  {
    value = [(OBPasscodeField *)self value];
    stringValue2 = [(OBPasscodeField *)self stringValue];
    [value deleteCharactersInRange:{objc_msgSend(stringValue2, "length") - 1, 1}];

    [(OBPasscodeField *)self _updateDots];
  }
}

- (OBPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end