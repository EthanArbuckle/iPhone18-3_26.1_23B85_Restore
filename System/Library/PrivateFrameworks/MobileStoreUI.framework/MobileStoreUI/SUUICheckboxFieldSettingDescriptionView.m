@interface SUUICheckboxFieldSettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
- (void)_addInputWithElement:(id)a3;
- (void)_addLabelWithElement:(id)a3;
- (void)_addSwitchWithElement:(id)a3;
- (void)_switchValueChanged:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)tintColorDidChange;
@end

@implementation SUUICheckboxFieldSettingDescriptionView

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
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  objc_storeStrong(&self->_settingDescription, a3);
  v7 = a3;
  v8 = [v7 viewElement];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SUUICheckboxFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v9[3] = &unk_2798F5B20;
  v9[4] = self;
  [v8 enumerateChildrenUsingBlock:v9];
  [(SUUICheckboxFieldSettingDescriptionView *)self setNeedsLayout];
}

uint64_t __86__SUUICheckboxFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if (v3 == 18)
  {
    v3 = [*(a1 + 32) _addInputWithElement:v6];
  }

  else
  {
    v4 = v6;
    if (v3 != 138)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) _addLabelWithElement:v6];
  }

  v4 = v6;
LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SUUICheckboxFieldSettingDescriptionView;
  [(SUUICheckboxFieldSettingDescriptionView *)&v3 tintColorDidChange];
  [(SUUICheckboxFieldSettingDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SUUICheckboxFieldSettingDescriptionView;
  [(SUUICheckboxFieldSettingDescriptionView *)&v28 layoutSubviews];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(SUUICheckboxFieldSettingDescriptionView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UISwitch *)self->_switch sizeThatFits:1.0, 1.0];
  v16 = v15;
  v18 = v17;
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  v19 = CGRectGetWidth(v29) - v6 - v16;
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v20 = floor((CGRectGetHeight(v30) - v18) * 0.5);
  [(UISwitch *)self->_switch setFrame:v19, v20, v16, v18];
  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v31.origin.x = v19;
  v31.origin.y = v20;
  v31.size.width = v16;
  v31.size.height = v18;
  v22 = CGRectGetMinX(v31) - v4 + -16.0;
  [v21 _scaledValueForValue:30.0];
  v24 = v23;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v26 = v24 - v25;
  [(UILabel *)self->_label sizeThatFits:v22, 1.0];
  [(UILabel *)self->_label setFrame:v4, v26, v22, v27];
}

- (void)_switchValueChanged:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{-[UISwitch isOn](self->_switch, "isOn")}];
  [(SUUIFieldSettingDescription *)self->_settingDescription setFieldValue:v4 forKey:@"selected"];
}

- (void)_addInputWithElement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inputViewElement, a3);
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(SUUICheckboxFieldSettingDescriptionView *)self _addSwitchWithElement:v5];
  }
}

- (void)_addLabelWithElement:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  v9 = [v5 text];

  v10 = [v9 string];
  [(UILabel *)v8 setText:v10];

  v11 = self->_label;
  v12 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v11 setTextColor:v12];

  v13 = self->_label;

  [(SUUICheckboxFieldSettingDescriptionView *)self addSubview:v13];
}

- (void)_addSwitchWithElement:(id)a3
{
  v4 = MEMORY[0x277D75AE8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = self->_switch;
  self->_switch = v6;

  v8 = [v5 isSelected];
  v9 = [(SUUIFieldSettingDescription *)self->_settingDescription fieldValueForKey:@"selected"];
  v10 = v9;
  if (v9)
  {
    v8 = [v9 BOOLValue];
  }

  [(UISwitch *)self->_switch setOn:v8];
  [(UISwitch *)self->_switch addTarget:self action:sel__switchValueChanged_ forControlEvents:4096];
  [(SUUICheckboxFieldSettingDescriptionView *)self addSubview:self->_switch];
}

@end