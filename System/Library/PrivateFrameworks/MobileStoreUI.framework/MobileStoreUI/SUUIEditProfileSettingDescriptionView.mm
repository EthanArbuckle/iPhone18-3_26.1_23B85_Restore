@interface SUUIEditProfileSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (id)_baselineFontForTextStyle:(id)style;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_textFieldWithPlaceholder:(id)placeholder;
- (void)_updateHandleTextFieldValidity;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SUUIEditProfileSettingDescriptionView

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  v6 = [self _baselineFontForTextStyle:{*MEMORY[0x277D76918], context}];
  [v6 _scaledValueForValue:48.0];
  v8 = v7 + v7;

  widthCopy = width;
  v10 = v8;
  result.height = v10;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  objc_storeStrong(&self->_settingDescription, description);
  contextCopy = context;
  clientContext = [contextCopy clientContext];

  clientContext = self->_clientContext;
  self->_clientContext = clientContext;

  imageView = self->_imageView;
  if (!imageView)
  {
    v12 = objc_alloc_init(SUUIImageView);
    v13 = self->_imageView;
    self->_imageView = v12;

    [(SUUIEditProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  photo = [(SUUIEditProfileSettingDescription *)self->_settingDescription photo];
  [(SUUIImageView *)imageView setImage:photo];

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
    titleLabel = [(UIButton *)self->_editButton titleLabel];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [titleLabel setFont:v20];

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

  name = [(SUUIEditProfileSettingDescription *)self->_settingDescription name];
  [(UITextField *)nameField setText:name];

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

  handle = [(SUUIEditProfileSettingDescription *)self->_settingDescription handle];
  [(UITextField *)handleField setText:handle];

  if (!self->_divider1)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    divider1 = self->_divider1;
    self->_divider1 = layer;

    v35 = self->_divider1;
    v36 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    -[CALayer setBackgroundColor:](v35, "setBackgroundColor:", [v36 CGColor]);

    layer2 = [(SUUIEditProfileSettingDescriptionView *)self layer];
    [layer2 addSublayer:self->_divider1];
  }

  isEditing = [(SUUIEditProfileSettingDescription *)self->_settingDescription isEditing];
  [(UIButton *)self->_editButton setHidden:isEditing ^ 1];
  [(UITextField *)self->_nameField setEnabled:isEditing];
  [(UITextField *)self->_handleField setEnabled:isEditing];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if ([editing isEqual:self->_handleField])
  {

    [(SUUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = [return isEqual:self->_nameField];
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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if ([fieldCopy isEqual:self->_nameField])
  {
    [(SUUIEditProfileSettingDescription *)self->_settingDescription setName:v12];
  }

  else if ([fieldCopy isEqual:self->_handleField])
  {
    [(SUUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([editingCopy isEqual:self->_nameField])
  {
    settingDescription = self->_settingDescription;
    text = [editingCopy text];
    [(SUUIEditProfileSettingDescription *)settingDescription setName:text];
  }

  else
  {
    if (![editingCopy isEqual:self->_handleField])
    {
      goto LABEL_6;
    }

    v6 = self->_settingDescription;
    text = [editingCopy text];
    [(SUUIEditProfileSettingDescription *)v6 setHandle:text];
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
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [titleLabel setFont:v14];
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
  [titleLabel _firstBaselineOffsetFromTop];
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
  _placeholderLabel = [(UITextField *)self->_nameField _placeholderLabel];
  v55.origin.y = 8.0;
  v55.origin.x = v4;
  v55.size.width = 56.0;
  v55.size.height = 56.0;
  v35 = CGRectGetMaxX(v55) + 16.0;
  [_placeholderLabel _firstBaselineOffsetFromTop];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v42 = 1.0 / v41;

  [(CALayer *)self->_divider1 setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v45 + 0.0, v43, v42, v47, v26, v50, v46)];
  [(UITextField *)self->_handleField setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v45 + 0.0 + v44, v38, v49, v47, v26, v50, v46)];
  [(SUUIImageView *)self->_imageView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4, 8.0, 56.0, 56.0, v47, v26, v50, v46)];
}

+ (id)_baselineFontForTextStyle:(id)style
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:0 options:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)_updateHandleTextFieldValidity
{
  settingDescription = self->_settingDescription;
  text = [(UITextField *)self->_handleField text];
  [(SUUIEditProfileSettingDescription *)settingDescription setHandle:text];

  isHandleValid = [(SUUIEditProfileSettingDescription *)self->_settingDescription isHandleValid];
  handleField = self->_handleField;
  if (isHandleValid)
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

- (id)_textFieldWithPlaceholder:(id)placeholder
{
  v4 = MEMORY[0x277D75BB8];
  placeholderCopy = placeholder;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDelegate:self];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 setFont:v8];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v7 setTextColor:blackColor];

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v12 = [v10 initWithObjectsAndKeys:{systemRedColor, *MEMORY[0x277D740C0], 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:placeholderCopy attributes:v12];
  [v7 setAttributedPlaceholder:v13];

  return v7;
}

@end