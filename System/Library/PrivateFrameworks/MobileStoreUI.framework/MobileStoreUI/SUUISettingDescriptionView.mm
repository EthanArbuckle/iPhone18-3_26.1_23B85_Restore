@interface SUUISettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)layoutMargins;
@end

@implementation SUUISettingDescriptionView

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
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  v17.receiver = self;
  v17.super_class = SUUISettingDescriptionView;
  [(SUUISettingDescriptionView *)&v17 layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  hasDisclosureChevron = [(SUUISettingDescriptionView *)self hasDisclosureChevron];
  v12 = fmax(v10, 36.0);
  if (hasDisclosureChevron)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = v4;
  v15 = v6;
  v16 = v8;
  result.right = v13;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end