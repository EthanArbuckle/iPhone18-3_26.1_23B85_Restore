@interface OBComplexPasscodeInputView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (OBComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4;
- (id)passcode;
- (void)setPasscode:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBComplexPasscodeInputView

- (OBComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4
{
  v4 = a4;
  v39[5] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = OBComplexPasscodeInputView;
  v5 = [(OBComplexPasscodeInputView *)&v38 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(UITextField *)v5->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)v5->_passcodeField setDelegate:v5];
    [(UITextField *)v5->_passcodeField setSecureTextEntry:1];
    [(UITextField *)v5->_passcodeField setReturnKeyType:4];
    if (v4)
    {
      [(UITextField *)v5->_passcodeField setKeyboardType:4];
    }

    v35 = [(UITextField *)v5->_passcodeField textInputTraits];
    [v35 setDevicePasscodeEntry:1];
    [(UITextField *)v5->_passcodeField setTextAlignment:1];
    v8 = v5->_passcodeField;
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v8 setFont:v9];

    v10 = [(UITextField *)v5->_passcodeField layer];
    [v10 setBorderWidth:1.0];

    v11 = [(OBComplexPasscodeInputView *)v5 traitCollection];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __56__OBComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke;
    v36[3] = &unk_1E7C15590;
    v12 = v5;
    v37 = v12;
    [v11 performAsCurrentTraitCollection:v36];

    v13 = [(UITextField *)v5->_passcodeField layer];
    [v13 setCornerRadius:10.0];

    v14 = v5->_passcodeField;
    v15 = [MEMORY[0x1E69DC888] labelColor];
    [(UITextField *)v14 setTextColor:v15];

    [(OBComplexPasscodeInputView *)v12 addSubview:v5->_passcodeField];
    v29 = MEMORY[0x1E696ACD8];
    v34 = [(UITextField *)v5->_passcodeField heightAnchor];
    [(UITextField *)v5->_passcodeField intrinsicContentSize];
    v33 = [v34 constraintEqualToConstant:v16 + v16];
    v39[0] = v33;
    v32 = [(UITextField *)v5->_passcodeField leadingAnchor];
    v31 = [(OBComplexPasscodeInputView *)v12 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v39[1] = v30;
    v28 = [(UITextField *)v5->_passcodeField trailingAnchor];
    v17 = [(OBComplexPasscodeInputView *)v12 trailingAnchor];
    v18 = [v28 constraintEqualToAnchor:v17];
    v39[2] = v18;
    v19 = [(UITextField *)v5->_passcodeField topAnchor];
    v20 = [(OBComplexPasscodeInputView *)v12 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v39[3] = v21;
    v22 = [(UITextField *)v5->_passcodeField bottomAnchor];
    v23 = [(OBComplexPasscodeInputView *)v12 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v39[4] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];
    [v29 activateConstraints:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

void __56__OBComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) layer];
  v1 = [MEMORY[0x1E69DC888] labelColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)setPasscode:(id)a3
{
  v4 = a3;
  v5 = [(OBComplexPasscodeInputView *)self passcodeField];
  [v5 setText:v4];
}

- (id)passcode
{
  v2 = [(OBComplexPasscodeInputView *)self passcodeField];
  v3 = [v2 text];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = OBComplexPasscodeInputView;
  [(OBComplexPasscodeInputView *)&v7 traitCollectionDidChange:a3];
  v4 = [(OBComplexPasscodeInputView *)self passcodeField];
  v5 = [v4 layer];
  v6 = [MEMORY[0x1E69DC888] labelColor];
  [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(OBPasscodeInputView *)self delegate];
  if (v11)
  {
    v12 = v11;
    v13 = [(OBPasscodeInputView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v9 text];
      v16 = [v15 stringByReplacingCharactersInRange:location withString:{length, v10}];

      v17 = [(OBPasscodeInputView *)self delegate];
      [v17 passcodeInput:self willChangeContents:v16];
    }
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(OBPasscodeInputView *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(OBPasscodeInputView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(OBPasscodeInputView *)self delegate];
      v9 = [(OBComplexPasscodeInputView *)self passcode];
      [v8 passcodeInput:self enteredPasscode:v9];
    }
  }

  return 1;
}

@end