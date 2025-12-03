@interface OBComplexPasscodeInputView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (OBComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only;
- (id)passcode;
- (void)setPasscode:(id)passcode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBComplexPasscodeInputView

- (OBComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only
{
  onlyCopy = only;
  v39[5] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = OBComplexPasscodeInputView;
  v5 = [(OBComplexPasscodeInputView *)&v38 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(UITextField *)v5->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)v5->_passcodeField setDelegate:v5];
    [(UITextField *)v5->_passcodeField setSecureTextEntry:1];
    [(UITextField *)v5->_passcodeField setReturnKeyType:4];
    if (onlyCopy)
    {
      [(UITextField *)v5->_passcodeField setKeyboardType:4];
    }

    textInputTraits = [(UITextField *)v5->_passcodeField textInputTraits];
    [textInputTraits setDevicePasscodeEntry:1];
    [(UITextField *)v5->_passcodeField setTextAlignment:1];
    v8 = v5->_passcodeField;
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v8 setFont:v9];

    layer = [(UITextField *)v5->_passcodeField layer];
    [layer setBorderWidth:1.0];

    traitCollection = [(OBComplexPasscodeInputView *)v5 traitCollection];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __56__OBComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke;
    v36[3] = &unk_1E7C15590;
    v12 = v5;
    v37 = v12;
    [traitCollection performAsCurrentTraitCollection:v36];

    layer2 = [(UITextField *)v5->_passcodeField layer];
    [layer2 setCornerRadius:10.0];

    v14 = v5->_passcodeField;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextField *)v14 setTextColor:labelColor];

    [(OBComplexPasscodeInputView *)v12 addSubview:v5->_passcodeField];
    v29 = MEMORY[0x1E696ACD8];
    heightAnchor = [(UITextField *)v5->_passcodeField heightAnchor];
    [(UITextField *)v5->_passcodeField intrinsicContentSize];
    v33 = [heightAnchor constraintEqualToConstant:v16 + v16];
    v39[0] = v33;
    leadingAnchor = [(UITextField *)v5->_passcodeField leadingAnchor];
    leadingAnchor2 = [(OBComplexPasscodeInputView *)v12 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[1] = v30;
    trailingAnchor = [(UITextField *)v5->_passcodeField trailingAnchor];
    trailingAnchor2 = [(OBComplexPasscodeInputView *)v12 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[2] = v18;
    topAnchor = [(UITextField *)v5->_passcodeField topAnchor];
    topAnchor2 = [(OBComplexPasscodeInputView *)v12 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[3] = v21;
    bottomAnchor = [(UITextField *)v5->_passcodeField bottomAnchor];
    bottomAnchor2 = [(OBComplexPasscodeInputView *)v12 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)setPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [(OBComplexPasscodeInputView *)self passcodeField];
  [passcodeField setText:passcodeCopy];
}

- (id)passcode
{
  passcodeField = [(OBComplexPasscodeInputView *)self passcodeField];
  text = [passcodeField text];

  return text;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = OBComplexPasscodeInputView;
  [(OBComplexPasscodeInputView *)&v7 traitCollectionDidChange:change];
  passcodeField = [(OBComplexPasscodeInputView *)self passcodeField];
  layer = [passcodeField layer];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [layer setBorderColor:{objc_msgSend(labelColor, "CGColor")}];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  delegate = [(OBPasscodeInputView *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    delegate2 = [(OBPasscodeInputView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      text = [fieldCopy text];
      v16 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

      delegate3 = [(OBPasscodeInputView *)self delegate];
      [delegate3 passcodeInput:self willChangeContents:v16];
    }
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  delegate = [(OBPasscodeInputView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(OBPasscodeInputView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(OBPasscodeInputView *)self delegate];
      passcode = [(OBComplexPasscodeInputView *)self passcode];
      [delegate3 passcodeInput:self enteredPasscode:passcode];
    }
  }

  return 1;
}

@end