@interface SUUIHandleRulesSettingsHeaderFooterDescriptionView
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_labelWithDescription:(id)description forWidth:(double)width;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUIHandleRulesSettingsHeaderFooterDescriptionView

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context
{
  descriptionCopy = description;
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v8 _scaledValueForValue:22.0];
  v10 = v9;
  v11 = [self _labelWithDescription:descriptionCopy forWidth:width];
  [v11 _firstLineBaselineFrameOriginY];
  v13 = v10 - v12;
  [v11 _lastLineBaselineFrameOriginY];
  v15 = v13 + v14;

  widthCopy = width;
  v17 = v15;
  result.height = v17;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  objc_storeStrong(&self->_description, description);
  descriptionCopy = description;
  v8 = [objc_opt_class() _labelWithDescription:self->_description forWidth:width];
  label = self->_label;
  self->_label = v8;

  [(SUUIHandleRulesSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SUUIHandleRulesSettingsHeaderFooterDescriptionView;
  [(SUUIHandleRulesSettingsHeaderFooterDescriptionView *)&v23 layoutSubviews];
  [(SUUIHandleRulesSettingsHeaderFooterDescriptionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIHandleRulesSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v15 = CGRectGetWidth(v24) - v12 - v14;
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v16 _scaledValueForValue:22.0];
  v18 = v17;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v20 = v18 - v19;
  [(UILabel *)self->_label sizeThatFits:v15, 1.0];
  [(UILabel *)self->_label setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12, v20, v15, v21, v4, v6, v8, v10)];
  if (storeShouldReverseLayoutDirection())
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  [(UILabel *)self->_label setTextAlignment:v22];
}

+ (id)_labelWithDescription:(id)description forWidth:(double)width
{
  v5 = MEMORY[0x277D756B8];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  text = [descriptionCopy text];
  [v7 setText:text];
  [v7 setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v7 setFont:v9];
  showInvalid = [descriptionCopy showInvalid];

  if (showInvalid)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v11 = ;
  [v7 setColor:v11];
  [v7 sizeThatFits:{width, 1.0}];
  [v7 setFrame:{0.0, 0.0, width, v12}];

  return v7;
}

@end