@interface SUUITextHeaderSettingsHeaderFooterDescriptionView
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_concatenateTextFromLabelElements:(id)elements;
+ (id)_labelWithLabelElements:(id)elements;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUITextHeaderSettingsHeaderFooterDescriptionView

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
  viewElement = [description viewElement];
  v8 = [objc_opt_class() _labelElementsFromViewElement:viewElement];
  v9 = [self _labelWithLabelElements:v8];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v9 setFont:v10];
  [v9 sizeThatFits:{width, 1.0}];
  v12 = v11;
  v14 = v13;
  [v9 setFrame:{0.0, 0.0, v11, v13}];
  [v10 _scaledValueForValue:8.0];
  v16 = v15;
  [v9 _lastLineBaselineFrameOriginY];
  v18 = v14 + v16 - (v14 - v17);

  v19 = v12;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  viewElement = [description viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = viewElement;

  v12 = [objc_opt_class() _labelElementsFromViewElement:self->_viewElement];
  label = self->_label;
  if (label)
  {
    [(UILabel *)label removeFromSuperview];
    v9 = self->_label;
    self->_label = 0;
  }

  v10 = [objc_opt_class() _labelWithLabelElements:v12];
  v11 = self->_label;
  self->_label = v10;

  [(SUUITextHeaderSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
  [(SUUITextHeaderSettingsHeaderFooterDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SUUITextHeaderSettingsHeaderFooterDescriptionView;
  [(SUUITextHeaderSettingsHeaderFooterDescriptionView *)&v25 layoutSubviews];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)self->_label setFont:v3];
  [(SUUITextHeaderSettingsHeaderFooterDescriptionView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SUUITextHeaderSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v13 = v12;
  v15 = v14;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v16 = CGRectGetWidth(v26) - v13 - v15;
  [(UILabel *)self->_label sizeThatFits:v16, 1.0];
  v18 = v17;
  [v3 _scaledValueForValue:8.0];
  v20 = v19;
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  v22 = v20 - v21;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Height = CGRectGetHeight(v27);
  [(UILabel *)self->_label setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v13, Height - v22 - v18, v16, v18, v5, v7, v9, v11)];
  if (storeShouldReverseLayoutDirection())
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  [(UILabel *)self->_label setTextAlignment:v24];
}

+ (id)_concatenateTextFromLabelElements:(id)elements
{
  v19 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        text = [*(*(&v14 + 1) + 8 * i) text];
        string = [text string];

        [v4 addObject:string];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@"\n"];

  return v12;
}

+ (id)_labelWithLabelElements:(id)elements
{
  v4 = MEMORY[0x277D756B8];
  elementsCopy = elements;
  v6 = objc_alloc_init(v4);
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  [v6 setTextColor:v7];

  v8 = [self _concatenateTextFromLabelElements:elementsCopy];

  [v6 setText:v8];

  return v6;
}

@end