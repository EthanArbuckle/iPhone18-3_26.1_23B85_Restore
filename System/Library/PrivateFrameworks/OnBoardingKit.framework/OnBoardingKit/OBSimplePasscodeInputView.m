@interface OBSimplePasscodeInputView
- (OBSimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4;
- (id)passcode;
- (void)passcodeField:(id)a3 enteredPasscode:(id)a4;
- (void)setPasscode:(id)a3;
@end

@implementation OBSimplePasscodeInputView

- (OBSimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = OBSimplePasscodeInputView;
  v5 = [(OBSimplePasscodeInputView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [[OBPasscodeField alloc] initWithNumberOfEntryFields:a4];
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(OBPasscodeField *)v5->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(OBPasscodeField *)v5->_passcodeField setDelegate:v5];
    [(OBSimplePasscodeInputView *)v5 addSubview:v5->_passcodeField];
    v19 = MEMORY[0x1E696ACD8];
    v23 = [(OBPasscodeField *)v5->_passcodeField leadingAnchor];
    v22 = [(OBSimplePasscodeInputView *)v5 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(OBPasscodeField *)v5->_passcodeField trailingAnchor];
    v8 = [(OBSimplePasscodeInputView *)v5 trailingAnchor];
    v9 = [v20 constraintEqualToAnchor:v8];
    v25[1] = v9;
    v10 = [(OBPasscodeField *)v5->_passcodeField topAnchor];
    v11 = [(OBSimplePasscodeInputView *)v5 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v25[2] = v12;
    v13 = [(OBPasscodeField *)v5->_passcodeField bottomAnchor];
    v14 = [(OBSimplePasscodeInputView *)v5 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v25[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setPasscode:(id)a3
{
  v4 = a3;
  v5 = [(OBSimplePasscodeInputView *)self passcodeField];
  [v5 setStringValue:v4];
}

- (id)passcode
{
  v2 = [(OBSimplePasscodeInputView *)self passcodeField];
  v3 = [v2 stringValue];

  return v3;
}

- (void)passcodeField:(id)a3 enteredPasscode:(id)a4
{
  v10 = a4;
  v5 = [(OBPasscodeInputView *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(OBPasscodeInputView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(OBPasscodeInputView *)self delegate];
      [v9 passcodeInput:self enteredPasscode:v10];
    }
  }
}

@end