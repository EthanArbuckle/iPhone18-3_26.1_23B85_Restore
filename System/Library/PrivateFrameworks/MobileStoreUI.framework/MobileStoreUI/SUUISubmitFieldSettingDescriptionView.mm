@interface SUUISubmitFieldSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context;
- (id)_currentControllerValue;
- (void)_addInputWithElement:(id)element;
- (void)_addSubmitInputWithElement:(id)element;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)setEnabled:(BOOL)enabled;
- (void)tintColorDidChange;
@end

@implementation SUUISubmitFieldSettingDescriptionView

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = SUUISubmitFieldSettingDescriptionView;
  [(SUUIFieldSettingDescriptionView *)&v7 setEnabled:?];
  label = self->_label;
  if (label)
  {
    if (enabledCopy)
    {
      [(SUUISubmitFieldSettingDescriptionView *)self tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v6 = ;
    [(UILabel *)label setTextColor:v6];
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
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__43;
  v10[4] = __Block_byref_object_dispose__43;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__SUUISubmitFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke;
  v9[3] = &unk_2798F5FB8;
  v9[4] = v10;
  [viewElement enumerateChildrenUsingBlock:v9];
  _Block_object_dispose(v10, 8);
}

void __90__SUUISubmitFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [v5 elementType];
  if ((v4 - 139) < 2 || v4 == 58)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
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
  viewElement = [descriptionCopy viewElement];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SUUISubmitFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v9[3] = &unk_2798F5B20;
  v9[4] = self;
  [viewElement enumerateChildrenUsingBlock:v9];
  [(SUUISubmitFieldSettingDescriptionView *)self setNeedsLayout];
}

void __84__SUUISubmitFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 elementType];
  if ((v3 - 139) < 2 || v3 == 58)
  {
    [*(a1 + 32) _addInputWithElement:v4];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SUUISubmitFieldSettingDescriptionView;
  [(SUUISubmitFieldSettingDescriptionView *)&v3 tintColorDidChange];
  [(SUUISubmitFieldSettingDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SUUISubmitFieldSettingDescriptionView;
  [(SUUISubmitFieldSettingDescriptionView *)&v18 layoutSubviews];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(SUUISubmitFieldSettingDescriptionView *)self bounds];
  v7 = CGRectGetWidth(v19) - v4 - v6;
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_label setFont:v8];
  [v8 _scaledValueForValue:30.0];
  v10 = v9;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v12 = v10 - v11;
  [(UILabel *)self->_label sizeThatFits:v7, 1.0];
  [(UILabel *)self->_label setFrame:v4, v12, v7, v13];
  _currentControllerValue = [(SUUISubmitFieldSettingDescriptionView *)self _currentControllerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [_currentControllerValue BOOLValue];
    label = self->_label;
    if (bOOLValue)
    {
      [(SUUISubmitFieldSettingDescriptionView *)self tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v17 = ;
    [(UILabel *)label setTextColor:v17];
  }
}

- (void)_addInputWithElement:(id)element
{
  elementCopy = element;
  objc_storeStrong(&self->_inputViewElement, element);
  if ([elementCopy isMemberOfClass:objc_opt_class()])
  {
    [(SUUISubmitFieldSettingDescriptionView *)self _addSubmitInputWithElement:elementCopy];
  }
}

- (void)_addSubmitInputWithElement:(id)element
{
  v4 = MEMORY[0x277D756B8];
  elementCopy = element;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  label = [elementCopy label];

  [(UILabel *)v8 setText:label];
  v10 = self->_label;
  grayColor = [MEMORY[0x277D75348] grayColor];
  [(UILabel *)v10 setTextColor:grayColor];

  v12 = self->_label;

  [(SUUISubmitFieldSettingDescriptionView *)self addSubview:v12];
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

@end