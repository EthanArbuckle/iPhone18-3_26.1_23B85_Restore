@interface SUUITextFieldSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_currentControllerValue;
- (void)_addInputWithElement:(id)element;
- (void)_addLabelWithElement:(id)element;
- (void)_addTextInputWithElement:(id)element;
- (void)_alignView:(id)view withBaselineLabel:(id)label font:(id)font offsetX:(double)x fitWidth:(double)width;
- (void)_arrangeTextField:(id)field andLabel:(id)label;
- (void)_fillLayoutWithView:(id)view labelForBaselinePosition:(id)position;
- (void)_updateTextFieldValue:(id)value;
- (void)beginEdits;
- (void)commitEdits;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)setEnabled:(BOOL)enabled;
- (void)textFieldDidEndEditing:(id)editing;
- (void)tintColorDidChange;
@end

@implementation SUUITextFieldSettingDescriptionView

- (void)beginEdits
{
  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField becomeFirstResponder];
  }
}

- (void)commitEdits
{
  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField resignFirstResponder];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = SUUITextFieldSettingDescriptionView;
  [(SUUIFieldSettingDescriptionView *)&v7 setEnabled:?];
  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField setEnabled:enabledCopy];
    v6 = 0.5;
    if (enabledCopy)
    {
      v6 = 1.0;
    }

    [(UITextField *)self->_textField setAlpha:v6];
  }
}

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  viewElement = [descriptionCopy viewElement];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__89;
  v30 = __Block_byref_object_dispose__89;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__89;
  v24 = __Block_byref_object_dispose__89;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__SUUITextFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke;
  v19[3] = &unk_2798FCDC8;
  v19[4] = &v26;
  v19[5] = &v20;
  [viewElement enumerateChildrenUsingBlock:v19];
  if (v27[5] && v21[5])
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    text = [v27[5] text];
    string = [text string];
    [v9 setText:string];

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v9 setFont:v12];

    [v9 sizeThatFits:{1.0, 1.0}];
    v14 = v13;
    v15 = [contextCopy aggregateValueForKey:@"SUUITextFieldSettingDescriptionFieldLabelWidthKey"];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
      v14 = fmax(v14, v17);
    }

    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v14];
    [contextCopy setAggregateValue:v18 forKey:@"SUUITextFieldSettingDescriptionFieldLabelWidthKey"];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __88__SUUITextFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 elementType];
  if ((v4 - 139) >= 2)
  {
    if (v4 == 138)
    {
      v5 = 32;
      goto LABEL_6;
    }

    if (v4 != 58)
    {
      goto LABEL_7;
    }
  }

  v5 = 40;
LABEL_6:
  objc_storeStrong((*(*(a1 + v5) + 8) + 40), a2);
LABEL_7:
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  objc_storeStrong(&self->_settingDescription, description);
  descriptionCopy = description;
  contextCopy = context;
  viewElement = [descriptionCopy viewElement];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__SUUITextFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v13[3] = &unk_2798F5B20;
  v13[4] = self;
  [viewElement enumerateChildrenUsingBlock:v13];
  v11 = [contextCopy aggregateValueForKey:@"SUUITextFieldSettingDescriptionFieldLabelWidthKey"];

  [v11 doubleValue];
  self->_aggregateLabelWidth = v12;
  [(SUUITextFieldSettingDescriptionView *)self setNeedsLayout];
}

uint64_t __82__SUUITextFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if ((v3 - 139) < 2 || v3 == 58)
  {
    v3 = [*(a1 + 32) _addInputWithElement:v6];
  }

  else
  {
    v4 = v6;
    if (v3 != 138)
    {
      goto LABEL_7;
    }

    v3 = [*(a1 + 32) _addLabelWithElement:v6];
  }

  v4 = v6;
LABEL_7:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  [(SUUITextFieldSettingDescriptionView *)self _updateTextFieldValue:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  [(SUUITextFieldSettingDescriptionView *)self _updateTextFieldValue:v11];
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  controller = [(SUUIFieldSettingDescription *)self->_settingDescription controller];
  if ([controller isMemberOfClass:objc_opt_class()])
  {
    [controller returnInSettingDescription:self->_settingDescription];
  }

  return 0;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SUUITextFieldSettingDescriptionView;
  [(SUUITextFieldSettingDescriptionView *)&v3 tintColorDidChange];
  [(SUUITextFieldSettingDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SUUITextFieldSettingDescriptionView;
  [(SUUITextFieldSettingDescriptionView *)&v7 layoutSubviews];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textField = self->_textField;
  if (self->_label || !textField)
  {
    [(SUUITextFieldSettingDescriptionView *)self _arrangeTextField:textField andLabel:?];
  }

  else
  {
    [(UITextField *)self->_textField setFont:v3];
    v5 = self->_textField;
    _placeholderLabel = [(UITextField *)v5 _placeholderLabel];
    [(SUUITextFieldSettingDescriptionView *)self _fillLayoutWithView:v5 labelForBaselinePosition:_placeholderLabel];
  }
}

- (void)_addInputWithElement:(id)element
{
  elementCopy = element;
  objc_storeStrong(&self->_inputViewElement, element);
  if ([elementCopy isMemberOfClass:objc_opt_class()])
  {
    [(SUUITextFieldSettingDescriptionView *)self _addTextInputWithElement:elementCopy];
  }
}

- (void)_addLabelWithElement:(id)element
{
  v4 = MEMORY[0x277D756B8];
  elementCopy = element;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  text = [elementCopy text];

  string = [text string];
  [(UILabel *)v8 setText:string];

  v11 = self->_label;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v11 setTextColor:blackColor];

  v13 = self->_label;

  [(SUUITextFieldSettingDescriptionView *)self addSubview:v13];
}

- (void)_addTextInputWithElement:(id)element
{
  elementCopy = element;
  v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
  textField = self->_textField;
  self->_textField = v4;

  -[UITextField setSecureTextEntry:](self->_textField, "setSecureTextEntry:", [elementCopy isSecure]);
  v6 = self->_textField;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UITextField *)v6 setTextColor:blackColor];

  [(UITextField *)self->_textField setDelegate:self];
  [(UITextField *)self->_textField setAutocorrectionType:1];
  [(UITextField *)self->_textField setAutocapitalizationType:0];
  -[UITextField setKeyboardType:](self->_textField, "setKeyboardType:", [elementCopy keyboardType]);
  _currentControllerValue = [(SUUITextFieldSettingDescriptionView *)self _currentControllerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITextField *)self->_textField setText:_currentControllerValue];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  v11 = [v9 initWithObjectsAndKeys:{lightGrayColor, *MEMORY[0x277D740C0], 0}];

  v12 = objc_alloc(MEMORY[0x277CCA898]);
  placeholderText = [elementCopy placeholderText];
  v14 = [v12 initWithString:placeholderText attributes:v11];

  [(UITextField *)self->_textField setAttributedPlaceholder:v14];
  [(SUUITextFieldSettingDescriptionView *)self addSubview:self->_textField];
}

- (void)_alignView:(id)view withBaselineLabel:(id)label font:(id)font offsetX:(double)x fitWidth:(double)width
{
  fontCopy = font;
  labelCopy = label;
  viewCopy = view;
  [(SUUITextFieldSettingDescriptionView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [fontCopy _scaledValueForValue:30.0];
  v23 = v22;

  [labelCopy _firstBaselineOffsetFromTop];
  v25 = v24;

  [viewCopy sizeThatFits:{width, 1.0}];
  [viewCopy setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(x, v23 - v25, width, v26, v15, v17, v19, v21)}];
}

- (void)_arrangeTextField:(id)field andLabel:(id)label
{
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76918];
  labelCopy = label;
  fieldCopy = field;
  v22 = [v6 preferredFontForTextStyle:v7];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  [(SUUITextFieldSettingDescriptionView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(SUUITextFieldSettingDescriptionView *)self _alignView:labelCopy withBaselineLabel:labelCopy font:v22 offsetX:v11 fitWidth:self->_aggregateLabelWidth];
  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  [(SUUITextFieldSettingDescriptionView *)self _alignView:fieldCopy withBaselineLabel:labelCopy font:v22 offsetX:v11 + self->_aggregateLabelWidth + 16.0 fitWidth:CGRectGetWidth(v24) - (v11 + self->_aggregateLabelWidth + 16.0) - v13];
}

- (id)_currentControllerValue
{
  controller = [(SUUIFieldSettingDescription *)self->_settingDescription controller];
  if ([controller isMemberOfClass:objc_opt_class()])
  {
    v4 = [controller valueForSettingDescription:self->_settingDescription];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateTextFieldValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    valueCopy = &stru_286AECDE0;
  }

  v7 = valueCopy;
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{valueCopy, @"value", 0}];
  [(SUUIInputViewElement *)self->_inputViewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v5 completionBlock:0];
  controller = [(SUUIFieldSettingDescription *)self->_settingDescription controller];
  if ([controller isMemberOfClass:objc_opt_class()])
  {
    [controller setValue:v7 forSettingDescription:self->_settingDescription];
  }
}

- (void)_fillLayoutWithView:(id)view labelForBaselinePosition:(id)position
{
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76918];
  positionCopy = position;
  viewCopy = view;
  v14 = [v6 preferredFontForTextStyle:v7];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  [(SUUITextFieldSettingDescriptionView *)self bounds];
  [(SUUITextFieldSettingDescriptionView *)self _alignView:viewCopy withBaselineLabel:positionCopy font:v14 offsetX:v11 fitWidth:CGRectGetWidth(v16) - v11 - v13];
}

@end