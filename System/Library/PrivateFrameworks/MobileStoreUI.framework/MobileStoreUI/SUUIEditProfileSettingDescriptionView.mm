@interface SUUIEditProfileSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (id)_baselineFontForTextStyle:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_textFieldWithPlaceholder:(id)a3;
- (void)_updateHandleTextFieldValidity;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation SUUIEditProfileSettingDescriptionView

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  v6 = [a1 _baselineFontForTextStyle:{*MEMORY[0x277D76918], a5}];
  [v6 _scaledValueForValue:48.0];
  v8 = v7 + v7;

  v9 = a3;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v39 = a3;
  objc_storeStrong(&self->_settingDescription, a3);
  v8 = a5;
  v9 = [v8 clientContext];

  clientContext = self->_clientContext;
  self->_clientContext = v9;

  imageView = self->_imageView;
  if (!imageView)
  {
    v12 = objc_alloc_init(SUUIImageView);
    v13 = self->_imageView;
    self->_imageView = v12;

    [(SUUIEditProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v14 = [(SUUIEditProfileSettingDescription *)self->_settingDescription photo];
  [(SUUIImageView *)imageView setImage:v14];

  if (!self->_editButton)
  {
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    editButton = self->_editButton;
    self->_editButton = v15;

    v17 = self->_clientContext;
    if (v17)
    {
      [(SUUIClientContext *)v17 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inBundles:0 inTable:@"Settings"];
    }
    v18 = ;
    [(UIButton *)self->_editButton setTitle:v18 forState:0];
    [(UIButton *)self->_editButton addTarget:self action:sel__editProfilePhoto forControlEvents:64];
    v19 = [(UIButton *)self->_editButton titleLabel];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v19 setFont:v20];

    [(SUUIEditProfileSettingDescriptionView *)self addSubview:self->_editButton];
  }

  nameField = self->_nameField;
  if (!nameField)
  {
    v22 = self->_clientContext;
    if (v22)
    {
      [(SUUIClientContext *)v22 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inBundles:0 inTable:@"Settings"];
    }
    v23 = ;
    v24 = [(SUUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v23];
    v25 = self->_nameField;
    self->_nameField = v24;

    [(UITextField *)self->_nameField setAutocapitalizationType:1];
    [(UITextField *)self->_nameField setAutocorrectionType:1];
    [(SUUIEditProfileSettingDescriptionView *)self addSubview:self->_nameField];
    nameField = self->_nameField;
  }

  v26 = [(SUUIEditProfileSettingDescription *)self->_settingDescription name];
  [(UITextField *)nameField setText:v26];

  handleField = self->_handleField;
  if (!handleField)
  {
    v28 = self->_clientContext;
    if (v28)
    {
      [(SUUIClientContext *)v28 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inTable:@"Settings"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inBundles:0 inTable:@"Settings"];
    }
    v29 = ;
    v30 = [(SUUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v29];
    v31 = self->_handleField;
    self->_handleField = v30;

    [(UITextField *)self->_handleField setAutocapitalizationType:0];
    [(UITextField *)self->_handleField setAutocorrectionType:1];
    [(UITextField *)self->_handleField _setPrefix:@"@"];
    [(SUUIEditProfileSettingDescriptionView *)self addSubview:self->_handleField];
    handleField = self->_handleField;
  }

  v32 = [(SUUIEditProfileSettingDescription *)self->_settingDescription handle];
  [(UITextField *)handleField setText:v32];

  if (!self->_divider1)
  {
    v33 = [MEMORY[0x277CD9ED0] layer];
    divider1 = self->_divider1;
    self->_divider1 = v33;

    v35 = self->_divider1;
    v36 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    -[CALayer setBackgroundColor:](v35, "setBackgroundColor:", [v36 CGColor]);

    v37 = [(SUUIEditProfileSettingDescriptionView *)self layer];
    [v37 addSublayer:self->_divider1];
  }

  v38 = [(SUUIEditProfileSettingDescription *)self->_settingDescription isEditing];
  [(UIButton *)self->_editButton setHidden:v38 ^ 1];
  [(UITextField *)self->_nameField setEnabled:v38];
  [(UITextField *)self->_handleField setEnabled:v38];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  if ([a3 isEqual:self->_handleField])
  {

    [(SUUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 isEqual:self->_nameField];
  handleField = self->_handleField;
  if (v4)
  {
    [(UITextField *)handleField becomeFirstResponder];
  }

  else
  {
    [(UITextField *)handleField resignFirstResponder];
  }

  return 0;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  v12 = [v11 stringByReplacingCharactersInRange:location withString:{length, v10}];

  if ([v9 isEqual:self->_nameField])
  {
    [(SUUIEditProfileSettingDescription *)self->_settingDescription setName:v12];
  }

  else if ([v9 isEqual:self->_handleField])
  {
    [(SUUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v7 = a3;
  if ([v7 isEqual:self->_nameField])
  {
    settingDescription = self->_settingDescription;
    v5 = [v7 text];
    [(SUUIEditProfileSettingDescription *)settingDescription setName:v5];
  }

  else
  {
    if (![v7 isEqual:self->_handleField])
    {
      goto LABEL_6;
    }

    v6 = self->_settingDescription;
    v5 = [v7 text];
    [(SUUIEditProfileSettingDescription *)v6 setHandle:v5];
  }

LABEL_6:
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = SUUIEditProfileSettingDescriptionView;
  [(SUUIEditProfileSettingDescriptionView *)&v51 layoutSubviews];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v48 = v5;
  [(SUUIEditProfileSettingDescriptionView *)self bounds];
  v7 = v6;
  v46 = v8;
  v47 = v6;
  v10 = v9;
  v50 = v11;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v13 = [(UIButton *)self->_editButton titleLabel];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v13 setFont:v14];
  [v14 _scaledValueForValue:16.0];
  v16 = v15;
  [(UIButton *)self->_editButton sizeThatFits:1.0, 1.0];
  v18 = v17;
  v20 = v19;
  v52.origin.y = 8.0;
  v52.origin.x = v4;
  v52.size.width = 56.0;
  v52.size.height = 56.0;
  v21 = v16 + CGRectGetMaxY(v52);
  [v13 _firstBaselineOffsetFromTop];
  v23 = v21 - v22;
  v53.origin.y = 8.0;
  v53.origin.x = v4;
  v53.size.width = 56.0;
  v53.size.height = 56.0;
  v24 = floor((CGRectGetWidth(v53) - v18) * 0.5);
  v54.origin.y = 8.0;
  v54.origin.x = v4;
  v54.size.width = 56.0;
  v54.size.height = 56.0;
  v25 = CGRectGetMinX(v54) + v24;
  v26 = v10;
  [(UIButton *)self->_editButton setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v25, v23, v18, v20, v7, v10, v50, v46)];
  v27 = *MEMORY[0x277D76918];
  v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextField *)self->_nameField setFont:v28];
  [(UITextField *)self->_handleField setFont:v28];
  if (ShouldReverseLayoutDirection)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  [(UITextField *)self->_nameField setTextAlignment:v29];
  [(UITextField *)self->_handleField setTextAlignment:v29];
  v30 = [objc_opt_class() _baselineFontForTextStyle:v27];
  [v30 _scaledValueForValue:30.0];
  v32 = v31;
  [v30 _scaledValueForValue:18.0];
  v45 = v32 + v33;
  v34 = [(UITextField *)self->_nameField _placeholderLabel];
  v55.origin.y = 8.0;
  v55.origin.x = v4;
  v55.size.width = 56.0;
  v55.size.height = 56.0;
  v35 = CGRectGetMaxX(v55) + 16.0;
  [v34 _firstBaselineOffsetFromTop];
  v37 = v32 - v36;
  v44 = v32 - v36;
  v56.origin.x = v47;
  v56.origin.y = v10;
  v56.size.width = v50;
  v56.size.height = v46;
  v38 = CGRectGetWidth(v56) - v35 - v48;
  v57.origin.x = v47;
  v57.origin.y = v10;
  v57.size.width = v50;
  v57.size.height = v46;
  v43 = CGRectGetWidth(v57) - v35;
  [(UITextField *)self->_nameField sizeThatFits:v38, 1.0];
  v49 = v39;
  [(UITextField *)self->_nameField setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v37 + 0.0, v38, v39, v47, v10, v50, v46)];
  v40 = [MEMORY[0x277D759A0] mainScreen];
  [v40 scale];
  v42 = 1.0 / v41;

  [(CALayer *)self->_divider1 setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v45 + 0.0, v43, v42, v47, v26, v50, v46)];
  [(UITextField *)self->_handleField setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v45 + 0.0 + v44, v38, v49, v47, v26, v50, v46)];
  [(SUUIImageView *)self->_imageView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4, 8.0, 56.0, 56.0, v47, v26, v50, v46)];
}

+ (id)_baselineFontForTextStyle:(id)a3
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:0 options:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)_updateHandleTextFieldValidity
{
  settingDescription = self->_settingDescription;
  v4 = [(UITextField *)self->_handleField text];
  [(SUUIEditProfileSettingDescription *)settingDescription setHandle:v4];

  v5 = [(SUUIEditProfileSettingDescription *)self->_settingDescription isHandleValid];
  handleField = self->_handleField;
  if (v5)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v7 = ;
  [(UITextField *)handleField setTextColor:v7];
}

- (id)_textFieldWithPlaceholder:(id)a3
{
  v4 = MEMORY[0x277D75BB8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDelegate:self];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 setFont:v8];
  v9 = [MEMORY[0x277D75348] blackColor];
  [v7 setTextColor:v9];

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = [MEMORY[0x277D75348] systemRedColor];
  v12 = [v10 initWithObjectsAndKeys:{v11, *MEMORY[0x277D740C0], 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v12];
  [v7 setAttributedPlaceholder:v13];

  return v7;
}

@end