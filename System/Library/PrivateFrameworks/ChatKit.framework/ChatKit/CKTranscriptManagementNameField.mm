@interface CKTranscriptManagementNameField
- (CKTranscriptManagementNameField)initWithFrame:(CGRect)frame;
- (CKTranscriptManagementNameFieldDelegate)delegate;
- (NSString)groupName;
- (void)commitGroupName;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setGroupName:(id)name;
- (void)setIsOverlay:(BOOL)overlay;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation CKTranscriptManagementNameField

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = CKTranscriptManagementNameField;
  [(CKTranscriptManagementNameField *)&v3 dealloc];
}

- (CKTranscriptManagementNameField)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = CKTranscriptManagementNameField;
  v3 = [(CKTranscriptManagementNameField *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    nameFieldFont = [v12 nameFieldFont];
    [v11 setFont:nameFieldFont];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v11 setBackgroundColor:clearColor];

    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    [v11 setTextColor:darkGrayColor];

    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"GROUP_NAME_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [v11 setText:v17];

    [(CKTranscriptManagementNameField *)v4 addSubview:v11];
    [(CKTranscriptManagementNameField *)v4 setFieldLabel:v11];
    v18 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v7, v8, v9, v10}];
    v19 = +[CKUIBehavior sharedBehaviors];
    nameFieldFont2 = [v19 nameFieldFont];
    [v18 setFont:nameFieldFont2];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v18 setBackgroundColor:clearColor2];

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
    theme = [v25 theme];
    recipientsDividerColor = [theme recipientsDividerColor];
    [v24 setBackgroundColor:recipientsDividerColor];

    [(CKTranscriptManagementNameField *)v4 setTopSeparator:v24];
    topSeparator = [(CKTranscriptManagementNameField *)v4 topSeparator];
    [(CKTranscriptManagementNameField *)v4 addSubview:topSeparator];

    v29 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
    v30 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v30 theme];
    recipientsDividerColor2 = [theme2 recipientsDividerColor];
    [v29 setBackgroundColor:recipientsDividerColor2];

    [(CKTranscriptManagementNameField *)v4 setBottomSeparator:v29];
    bottomSeparator = [(CKTranscriptManagementNameField *)v4 bottomSeparator];
    [(CKTranscriptManagementNameField *)v4 addSubview:bottomSeparator];

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
  fieldLabel = [(CKTranscriptManagementNameField *)self fieldLabel];
  [(CKTranscriptManagementNameField *)self bounds];
  [fieldLabel sizeThatFits:{v9, 1.79769313e308}];
  v11 = v10;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection)
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
  fieldLabel2 = [(CKTranscriptManagementNameField *)self fieldLabel];
  [fieldLabel2 setFrame:{v16, v18, v11, 44.0}];

  if (userInterfaceLayoutDirection)
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

  textField = [(CKTranscriptManagementNameField *)self textField];
  [textField setFrame:{v22, v21 + -44.0, v26, 44.0}];

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

  bottomSeparator = [(CKTranscriptManagementNameField *)self bottomSeparator];
  [bottomSeparator setFrame:{v7, v39, v31, v34}];

  topSeparator = [(CKTranscriptManagementNameField *)self topSeparator];
  [topSeparator setFrame:{v7, 0.0, v31, v34}];
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(CKTranscriptManagementNameField *)self delegate];
  text = [editingCopy text];

  [delegate nameField:self didCommitGroupName:text];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    [(CKTranscriptManagementNameField *)self setUserInteractionEnabled:?];
    textField = [(CKTranscriptManagementNameField *)self textField];
    [textField setUserInteractionEnabled:enabledCopy];

    LODWORD(textField) = [(CKTranscriptManagementNameField *)self isEnabled];
    fieldLabel = [(CKTranscriptManagementNameField *)self fieldLabel];
    if (textField)
    {
      darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
      [fieldLabel setTextColor:darkGrayColor];

      textField2 = [(CKTranscriptManagementNameField *)self textField];
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
      [fieldLabel setTextColor:lightGrayColor];

      textField2 = [(CKTranscriptManagementNameField *)self textField];
      [MEMORY[0x1E69DC888] lightGrayColor];
    }
    v10 = ;
    [textField2 setTextColor:v10];
  }
}

- (void)setIsOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  self->_isOverlay = overlay;
  if (overlay)
  {
    [(CKTranscriptManagementNameField *)self setBackgroundColor:0];
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CKTranscriptManagementNameField *)self setBackgroundColor:whiteColor];
  }

  backdropView = [(CKTranscriptManagementNameField *)self backdropView];
  [backdropView setHidden:overlayCopy ^ 1];

  bottomSeparator = [(CKTranscriptManagementNameField *)self bottomSeparator];
  [bottomSeparator setHidden:overlayCopy ^ 1];

  topSeparator = [(CKTranscriptManagementNameField *)self topSeparator];
  [topSeparator setHidden:overlayCopy];
}

- (NSString)groupName
{
  textField = [(CKTranscriptManagementNameField *)self textField];
  text = [textField text];

  return text;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  textField = [(CKTranscriptManagementNameField *)self textField];
  [textField setText:nameCopy];
}

- (void)commitGroupName
{
  textField = [(CKTranscriptManagementNameField *)self textField];
  [textField resignFirstResponder];
}

- (CKTranscriptManagementNameFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end