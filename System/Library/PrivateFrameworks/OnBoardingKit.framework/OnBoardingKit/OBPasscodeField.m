@interface OBPasscodeField
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (NSString)stringValue;
- (OBPasscodeField)initWithNumberOfEntryFields:(unint64_t)a3;
- (OBPasscodeFieldDelegate)delegate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)keyboardType;
- (void)_updateDots;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation OBPasscodeField

- (OBPasscodeField)initWithNumberOfEntryFields:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = OBPasscodeField;
  v4 = [(OBPasscodeField *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    value = v4->_value;
    v4->_value = v5;

    v4->_numberOfEntryFields = a3;
    v4->_enabled = 1;
    for (i = objc_alloc_init(MEMORY[0x1E695DF70]); a3; --a3)
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
  v2 = [(OBPasscodeField *)self value];
  v3 = [v2 copy];

  return v3;
}

- (void)setStringValue:(id)a3
{
  v4 = a3;
  v5 = [(OBPasscodeField *)self value];
  [v5 setString:v4];

  [(OBPasscodeField *)self _updateDots];
  v6 = [(OBPasscodeField *)self value];
  v7 = [v6 length];
  v8 = [(OBPasscodeField *)self numberOfEntryFields];

  if (v7 == v8)
  {
    v11 = [(OBPasscodeField *)self delegate];
    v9 = [(OBPasscodeField *)self value];
    v10 = [v9 copy];
    [v11 passcodeField:self enteredPasscode:v10];
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
  v6 = [(OBPasscodeField *)self value];
  v7 = [v3 localizedStringWithFormat:v5, objc_msgSend(v6, "length"), -[OBPasscodeField numberOfEntryFields](self, "numberOfEntryFields")];

  return v7;
}

- (void)_updateDots
{
  if ([(OBPasscodeField *)self numberOfEntryFields])
  {
    v3 = 0;
    do
    {
      v4 = [(OBPasscodeField *)self dotViews];
      v5 = [v4 objectAtIndex:v3];

      v6 = [(OBPasscodeField *)self stringValue];
      [v5 setFilled:{v3 < objc_msgSend(v6, "length")}];

      ++v3;
    }

    while (v3 < [(OBPasscodeField *)self numberOfEntryFields]);
  }
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = OBPasscodeField;
  v2 = [(OBPasscodeField *)&v5 becomeFirstResponder];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v3 setReturnKeyEnabled:0];
  }

  return v2;
}

- (int64_t)keyboardType
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
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
  v2 = [(OBPasscodeField *)self stringValue];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)insertText:(id)a3
{
  v14 = a3;
  if ([(OBPasscodeField *)self isEnabled])
  {
    v4 = [(OBPasscodeField *)self stringValue];
    v5 = [v4 length];
    v6 = [(OBPasscodeField *)self numberOfEntryFields];

    if (v5 != v6 && ([v14 isEqualToString:@"\n"] & 1) == 0)
    {
      if ([v14 length])
      {
        v7 = [(OBPasscodeField *)self value];
        [v7 appendString:v14];

        [(OBPasscodeField *)self _updateDots];
        v8 = [(OBPasscodeField *)self stringValue];
        v9 = [v8 length];
        v10 = [(OBPasscodeField *)self numberOfEntryFields];

        if (v9 == v10)
        {
          v11 = [(OBPasscodeField *)self delegate];
          v12 = [(OBPasscodeField *)self value];
          v13 = [v12 copy];
          [v11 passcodeField:self enteredPasscode:v13];
        }
      }
    }
  }
}

- (void)deleteBackward
{
  v3 = [(OBPasscodeField *)self stringValue];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(OBPasscodeField *)self value];
    v6 = [(OBPasscodeField *)self stringValue];
    [v5 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];

    [(OBPasscodeField *)self _updateDots];
  }
}

- (OBPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end