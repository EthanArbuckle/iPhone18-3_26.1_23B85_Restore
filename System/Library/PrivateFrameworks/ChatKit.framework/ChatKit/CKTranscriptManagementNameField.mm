@interface CKTranscriptManagementNameField
- (CKTranscriptManagementNameField)initWithFrame:(CGRect)a3;
- (CKTranscriptManagementNameFieldDelegate)delegate;
- (NSString)groupName;
- (void)commitGroupName;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setGroupName:(id)a3;
- (void)setIsOverlay:(BOOL)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation CKTranscriptManagementNameField

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = CKTranscriptManagementNameField;
  [(CKTranscriptManagementNameField *)&v3 dealloc];
}

- (CKTranscriptManagementNameField)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = CKTranscriptManagementNameField;
  v3 = [(CKTranscriptManagementNameField *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKTranscriptManagementNameField *)v3 setEnabled:1];
    v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2010];
    [(CKTranscriptManagementNameField *)v4 setBackdropView:v5];
    [(CKTranscriptManagementNameField *)v4 addSubview:v5];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 nameFieldFont];
    [v11 setFont:v13];

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [v11 setBackgroundColor:v14];

    v15 = [MEMORY[0x1E69DC888] darkGrayColor];
    [v11 setTextColor:v15];

    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"GROUP_NAME_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [v11 setText:v17];

    [(CKTranscriptManagementNameField *)v4 addSubview:v11];
    [(CKTranscriptManagementNameField *)v4 setFieldLabel:v11];
    v18 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v7, v8, v9, v10}];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 nameFieldFont];
    [v18 setFont:v20];

    v21 = [MEMORY[0x1E69DC888] clearColor];
    [v18 setBackgroundColor:v21];

    v22 = CKFrameworkBundle();
    v23 = [v22 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    [v18 setPlaceholder:v23];

    [v18 setReturnKeyType:9];
    [v18 setClearButtonMode:1];
    [v18 setDelegate:v4];
    [(CKTranscriptManagementNameField *)v4 addSubview:v18];
    [(CKTranscriptManagementNameField *)v4 setTextField:v18];
    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
    v25 = +[CKUIBehavior sharedBehaviors];
    v26 = [v25 theme];
    v27 = [v26 recipientsDividerColor];
    [v24 setBackgroundColor:v27];

    [(CKTranscriptManagementNameField *)v4 setTopSeparator:v24];
    v28 = [(CKTranscriptManagementNameField *)v4 topSeparator];
    [(CKTranscriptManagementNameField *)v4 addSubview:v28];

    v29 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
    v30 = +[CKUIBehavior sharedBehaviors];
    v31 = [v30 theme];
    v32 = [v31 recipientsDividerColor];
    [v29 setBackgroundColor:v32];

    [(CKTranscriptManagementNameField *)v4 setBottomSeparator:v29];
    v33 = [(CKTranscriptManagementNameField *)v4 bottomSeparator];
    [(CKTranscriptManagementNameField *)v4 addSubview:v33];

    [(CKTranscriptManagementNameField *)v4 setBackgroundColor:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CKTranscriptManagementNameField;
  [(CKTranscriptManagementNameField *)&v43 layoutSubviews];
  [(CKTranscriptManagementNameField *)self layoutMargins];
  v42 = v3;
  v5 = v4;
  v6 = MEMORY[0x1E695F058];
  v7 = *MEMORY[0x1E695F058];
  v8 = [(CKTranscriptManagementNameField *)self fieldLabel];
  [(CKTranscriptManagementNameField *)self bounds];
  [v8 sizeThatFits:{v9, 1.79769313e308}];
  v11 = v10;

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v13 = [v12 userInterfaceLayoutDirection];

  if (v13)
  {
    v14 = *(v6 + 8);
    [(CKTranscriptManagementNameField *)self bounds];
    MaxX = CGRectGetMaxX(v44);
    v45.size.height = 44.0;
    v45.origin.x = v7;
    v45.origin.y = v14;
    v45.size.width = v11;
    v16 = MaxX - CGRectGetWidth(v45) - v5;
  }

  else
  {
    v16 = v42;
  }

  [(CKTranscriptManagementNameField *)self bounds];
  v18 = v17 + -44.0 + -1.0;
  v19 = [(CKTranscriptManagementNameField *)self fieldLabel];
  [v19 setFrame:{v16, v18, v11, 44.0}];

  if (v13)
  {
    [(CKTranscriptManagementNameField *)self bounds];
    v21 = v20;
    [(CKTranscriptManagementNameField *)self bounds];
    v22 = v5;
    v23 = v7;
    v25 = v24 - v22;
    v46.origin.x = v16;
    v46.origin.y = v18;
    v46.size.width = v11;
    v46.size.height = 44.0;
    v26 = v25 - CGRectGetWidth(v46) + v42 * -2.0;
    v7 = v23;
  }

  else
  {
    v47.origin.x = v16;
    v47.origin.y = v18;
    v47.size.width = v11;
    v47.size.height = 44.0;
    v22 = CGRectGetMaxX(v47) + 5.0;
    [(CKTranscriptManagementNameField *)self bounds];
    v21 = v27;
    [(CKTranscriptManagementNameField *)self bounds];
    v26 = v28 - v22 - v5;
  }

  v29 = [(CKTranscriptManagementNameField *)self textField];
  [v29 setFrame:{v22, v21 + -44.0, v26, 44.0}];

  [(CKTranscriptManagementNameField *)self bounds];
  v31 = v30;
  v32 = +[CKUIBehavior sharedBehaviors];
  [v32 defaultSeparatorHeight];
  v34 = v33;

  [(CKTranscriptManagementNameField *)self bounds];
  v36 = v35;
  v37 = +[CKUIBehavior sharedBehaviors];
  [v37 defaultSeparatorHeight];
  v39 = v36 - v38;

  v40 = [(CKTranscriptManagementNameField *)self bottomSeparator];
  [v40 setFrame:{v7, v39, v31, v34}];

  v41 = [(CKTranscriptManagementNameField *)self topSeparator];
  [v41 setFrame:{v7, 0.0, v31, v34}];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v6 = [(CKTranscriptManagementNameField *)self delegate];
  v5 = [v4 text];

  [v6 nameField:self didCommitGroupName:v5];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    [(CKTranscriptManagementNameField *)self setUserInteractionEnabled:?];
    v6 = [(CKTranscriptManagementNameField *)self textField];
    [v6 setUserInteractionEnabled:v4];

    LODWORD(v6) = [(CKTranscriptManagementNameField *)self isEnabled];
    v7 = [(CKTranscriptManagementNameField *)self fieldLabel];
    if (v6)
    {
      v8 = [MEMORY[0x1E69DC888] darkGrayColor];
      [v7 setTextColor:v8];

      v11 = [(CKTranscriptManagementNameField *)self textField];
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] lightGrayColor];
      [v7 setTextColor:v9];

      v11 = [(CKTranscriptManagementNameField *)self textField];
      [MEMORY[0x1E69DC888] lightGrayColor];
    }
    v10 = ;
    [v11 setTextColor:v10];
  }
}

- (void)setIsOverlay:(BOOL)a3
{
  v3 = a3;
  self->_isOverlay = a3;
  if (a3)
  {
    [(CKTranscriptManagementNameField *)self setBackgroundColor:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(CKTranscriptManagementNameField *)self setBackgroundColor:v5];
  }

  v6 = [(CKTranscriptManagementNameField *)self backdropView];
  [v6 setHidden:v3 ^ 1];

  v7 = [(CKTranscriptManagementNameField *)self bottomSeparator];
  [v7 setHidden:v3 ^ 1];

  v8 = [(CKTranscriptManagementNameField *)self topSeparator];
  [v8 setHidden:v3];
}

- (NSString)groupName
{
  v2 = [(CKTranscriptManagementNameField *)self textField];
  v3 = [v2 text];

  return v3;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptManagementNameField *)self textField];
  [v5 setText:v4];
}

- (void)commitGroupName
{
  v2 = [(CKTranscriptManagementNameField *)self textField];
  [v2 resignFirstResponder];
}

- (CKTranscriptManagementNameFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end