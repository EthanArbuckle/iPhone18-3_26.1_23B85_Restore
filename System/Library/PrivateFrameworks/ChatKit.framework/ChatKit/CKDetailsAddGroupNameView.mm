@interface CKDetailsAddGroupNameView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)frame;
- (CKDetailsAddGroupNameViewDelegate)delegate;
- (void)commitGroupName;
- (void)setEnabled:(BOOL)enabled;
- (void)setGroupName:(id)name;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation CKDetailsAddGroupNameView

- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)frame
{
  v69[2] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = CKDetailsAddGroupNameView;
  v3 = [(CKDetailsAddGroupNameView *)&v66 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    placeholderLabel = v4->_placeholderLabel;
    v4->_placeholderLabel = v10;

    v12 = v4->_placeholderLabel;
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"GROUP_NAME_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    localizedUppercaseString = [v14 localizedUppercaseString];
    [(UILabel *)v12 setText:localizedUppercaseString];

    v16 = v4->_placeholderLabel;
    v17 = +[CKUIBehavior sharedBehaviors];
    theme = [v17 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [(UILabel *)v16 setTextColor:primaryLabelColor];

    v20 = v4->_placeholderLabel;
    v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v20 setFont:v21];

    [(CKDetailsAddGroupNameView *)v4 addSubview:v4->_placeholderLabel];
    [(UILabel *)v4->_placeholderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [[CKDetailsViewAddGroupNameViewUITextField alloc] initWithFrame:v6, v7, v8, v9];
    inputField = v4->_inputField;
    v4->_inputField = v22;

    v24 = v4->_inputField;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v24 setBackgroundColor:clearColor];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setReturnKeyType:9];
    v26 = v4->_inputField;
    v27 = *MEMORY[0x1E69DDCF8];
    v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(CKDetailsViewAddGroupNameViewUITextField *)v26 setFont:v28];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setClearButtonMode:1];
    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setDelegate:v4];
    v29 = v4->_inputField;
    v30 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v30 theme];
    primaryLabelColor2 = [theme2 primaryLabelColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v29 setTextColor:primaryLabelColor2];

    v33 = v4->_inputField;
    v34 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v34 theme];
    -[CKDetailsViewAddGroupNameViewUITextField setKeyboardAppearance:](v33, "setKeyboardAppearance:", [theme3 keyboardAppearance]);

    v36 = v4->_inputField;
    v37 = objc_alloc(MEMORY[0x1E696AAB0]);
    v38 = CKFrameworkBundle();
    v39 = [v38 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    v68[0] = *MEMORY[0x1E69DB650];
    v40 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemBlueColor"];
    v69[0] = v40;
    v68[1] = *MEMORY[0x1E69DB648];
    v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v27];
    v69[1] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
    v43 = [v37 initWithString:v39 attributes:v42];
    [(CKDetailsViewAddGroupNameViewUITextField *)v36 setAttributedPlaceholder:v43];

    [(CKDetailsAddGroupNameView *)v4 addSubview:v4->_inputField];
    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v4->_placeholderLabel topAnchor];
    topAnchor2 = [(CKDetailsAddGroupNameView *)v4 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v67[0] = v63;
    leadingAnchor = [(UILabel *)v4->_placeholderLabel leadingAnchor];
    leadingAnchor2 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v67[1] = v60;
    trailingAnchor = [(UILabel *)v4->_placeholderLabel trailingAnchor];
    trailingAnchor2 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v67[2] = v56;
    topAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField topAnchor];
    placeholderLabel = [(CKDetailsAddGroupNameView *)v4 placeholderLabel];
    bottomAnchor = [placeholderLabel bottomAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v67[3] = v45;
    leadingAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField leadingAnchor];
    leadingAnchor4 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v67[4] = v48;
    trailingAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField trailingAnchor];
    trailingAnchor4 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v67[5] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:6];
    [v57 activateConstraints:v52];
  }

  return v4;
}

- (void)commitGroupName
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField2 resignFirstResponder];
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if (self->_groupName != nameCopy)
  {
    v11 = nameCopy;
    objc_storeStrong(&self->_groupName, name);
    inputField = [(CKDetailsAddGroupNameView *)self inputField];
    [inputField setText:self->_groupName];

    inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [inputField2 setTextColor:primaryLabelColor];

    [(CKDetailsAddGroupNameView *)self setNeedsLayout];
    nameCopy = v11;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    inputField = [(CKDetailsAddGroupNameView *)self inputField];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = *MEMORY[0x1E69DB650];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v13[0] = systemGrayColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v5 initWithString:v7 attributes:v9];
    [inputField setAttributedPlaceholder:v10];

    inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
    [inputField2 setEnabled:self->_enabled];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(CKDetailsViewAddGroupNameViewUITextField *)self->_inputField sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_placeholderLabel sizeThatFits:width, height];
  v9 = v7 + v8 + 8.0;
  [(CKDetailsAddGroupNameView *)self layoutMargins];
  v11 = v10 + v9;
  [(CKDetailsAddGroupNameView *)self layoutMargins];
  v13 = v12 + v11;
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:0];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField2 resignFirstResponder];

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  delegate = [(CKDetailsAddGroupNameView *)self delegate];
  text = [editingCopy text];

  [delegate detailsAddGroupNameView:self didCommitGroupName:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  stringCopy = string;
  text = [field text];
  v9 = [text length];
  v10 = [stringCopy length];

  return v9 - length + v10 <= *MEMORY[0x1E69A7030];
}

- (CKDetailsAddGroupNameViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end