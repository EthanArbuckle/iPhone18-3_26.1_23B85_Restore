@interface CKDetailsAddGroupNameView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)a3;
- (CKDetailsAddGroupNameViewDelegate)delegate;
- (void)commitGroupName;
- (void)setEnabled:(BOOL)a3;
- (void)setGroupName:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation CKDetailsAddGroupNameView

- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)a3
{
  v69[2] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = CKDetailsAddGroupNameView;
  v3 = [(CKDetailsAddGroupNameView *)&v66 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v15 = [v14 localizedUppercaseString];
    [(UILabel *)v12 setText:v15];

    v16 = v4->_placeholderLabel;
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 theme];
    v19 = [v18 primaryLabelColor];
    [(UILabel *)v16 setTextColor:v19];

    v20 = v4->_placeholderLabel;
    v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v20 setFont:v21];

    [(CKDetailsAddGroupNameView *)v4 addSubview:v4->_placeholderLabel];
    [(UILabel *)v4->_placeholderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [[CKDetailsViewAddGroupNameViewUITextField alloc] initWithFrame:v6, v7, v8, v9];
    inputField = v4->_inputField;
    v4->_inputField = v22;

    v24 = v4->_inputField;
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v24 setBackgroundColor:v25];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setReturnKeyType:9];
    v26 = v4->_inputField;
    v27 = *MEMORY[0x1E69DDCF8];
    v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(CKDetailsViewAddGroupNameViewUITextField *)v26 setFont:v28];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setClearButtonMode:1];
    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setDelegate:v4];
    v29 = v4->_inputField;
    v30 = +[CKUIBehavior sharedBehaviors];
    v31 = [v30 theme];
    v32 = [v31 primaryLabelColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v29 setTextColor:v32];

    v33 = v4->_inputField;
    v34 = +[CKUIBehavior sharedBehaviors];
    v35 = [v34 theme];
    -[CKDetailsViewAddGroupNameViewUITextField setKeyboardAppearance:](v33, "setKeyboardAppearance:", [v35 keyboardAppearance]);

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
    v65 = [(UILabel *)v4->_placeholderLabel topAnchor];
    v64 = [(CKDetailsAddGroupNameView *)v4 topAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:4.0];
    v67[0] = v63;
    v62 = [(UILabel *)v4->_placeholderLabel leadingAnchor];
    v61 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v67[1] = v60;
    v59 = [(UILabel *)v4->_placeholderLabel trailingAnchor];
    v58 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v56 = [v59 constraintEqualToAnchor:v58];
    v67[2] = v56;
    v54 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField topAnchor];
    v55 = [(CKDetailsAddGroupNameView *)v4 placeholderLabel];
    v44 = [v55 bottomAnchor];
    v45 = [v54 constraintEqualToAnchor:v44 constant:4.0];
    v67[3] = v45;
    v46 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField leadingAnchor];
    v47 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v67[4] = v48;
    v49 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField trailingAnchor];
    v50 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v67[5] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:6];
    [v57 activateConstraints:v52];
  }

  return v4;
}

- (void)commitGroupName
{
  v3 = [(CKDetailsAddGroupNameView *)self inputField];
  [v3 setCanResignFirstResponderInternal:1];

  v4 = [(CKDetailsAddGroupNameView *)self inputField];
  [v4 resignFirstResponder];
}

- (void)setGroupName:(id)a3
{
  v5 = a3;
  if (self->_groupName != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_groupName, a3);
    v6 = [(CKDetailsAddGroupNameView *)self inputField];
    [v6 setText:self->_groupName];

    v7 = [(CKDetailsAddGroupNameView *)self inputField];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 primaryLabelColor];
    [v7 setTextColor:v10];

    [(CKDetailsAddGroupNameView *)self setNeedsLayout];
    v5 = v11;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = [(CKDetailsAddGroupNameView *)self inputField];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = *MEMORY[0x1E69DB650];
    v8 = [MEMORY[0x1E69DC888] systemGrayColor];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v5 initWithString:v7 attributes:v9];
    [v4 setAttributedPlaceholder:v10];

    v11 = [(CKDetailsAddGroupNameView *)self inputField];
    [v11 setEnabled:self->_enabled];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)textFieldDidBeginEditing:(id)a3
{
  v3 = [(CKDetailsAddGroupNameView *)self inputField];
  [v3 setCanResignFirstResponderInternal:0];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(CKDetailsAddGroupNameView *)self inputField];
  [v4 setCanResignFirstResponderInternal:1];

  v5 = [(CKDetailsAddGroupNameView *)self inputField];
  [v5 resignFirstResponder];

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsAddGroupNameView *)self inputField];
  [v5 setCanResignFirstResponderInternal:1];

  v7 = [(CKDetailsAddGroupNameView *)self delegate];
  v6 = [v4 text];

  [v7 detailsAddGroupNameView:self didCommitGroupName:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  v7 = a5;
  v8 = [a3 text];
  v9 = [v8 length];
  v10 = [v7 length];

  return v9 - length + v10 <= *MEMORY[0x1E69A7030];
}

- (CKDetailsAddGroupNameViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end