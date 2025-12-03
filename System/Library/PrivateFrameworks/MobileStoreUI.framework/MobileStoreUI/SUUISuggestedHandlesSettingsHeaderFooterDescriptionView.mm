@interface SUUISuggestedHandlesSettingsHeaderFooterDescriptionView
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_helpLabelWithDescription:(id)description forWidth:(double)width;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUISuggestedHandlesSettingsHeaderFooterDescriptionView

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
  suggestedHandles = [descriptionCopy suggestedHandles];
  v9 = [suggestedHandles count];

  v10 = *MEMORY[0x277D769E0];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v11 _scaledValueForValue:30.0];
  v13 = v12;
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
  [v14 _scaledValueForValue:22.0];
  v16 = v15;
  v17 = [self _helpLabelWithDescription:descriptionCopy forWidth:width];

  [v17 _firstLineBaselineFrameOriginY];
  v19 = v16 - v18;
  [v17 _lastLineBaselineFrameOriginY];
  v21 = v19 + v20 + v13 * v9;

  widthCopy = width;
  v23 = v21;
  result.height = v23;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  objc_storeStrong(&self->_description, description);
  descriptionCopy = description;
  v9 = [objc_opt_class() _helpLabelWithDescription:self->_description forWidth:width];
  label = self->_label;
  self->_label = v9;

  [(SUUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  buttons = self->_buttons;
  self->_buttons = v11;

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  suggestedHandles = [(SUUISuggestedHandlesSettingsHeaderFooterDescription *)self->_description suggestedHandles];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __115__SUUISuggestedHandlesSettingsHeaderFooterDescriptionView_reloadWithSettingsHeaderFooterDescription_width_context___block_invoke;
  v16[3] = &unk_2798FB440;
  v17 = v13;
  selfCopy = self;
  v15 = v13;
  [suggestedHandles enumerateObjectsUsingBlock:v16];
}

void __115__SUUISuggestedHandlesSettingsHeaderFooterDescriptionView_reloadWithSettingsHeaderFooterDescription_width_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D75220];
  v6 = a2;
  v11 = [v5 buttonWithType:1];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v6];

  [v11 setTitle:v7 forState:0];
  v8 = [MEMORY[0x277D75348] systemPinkColor];
  [v11 setTitleColor:v8 forState:0];

  v9 = [v11 titleLabel];
  [v9 setFont:*(a1 + 32)];

  v10 = [v11 titleLabel];
  [v10 setTextAlignment:0];

  [v11 setTag:a3];
  [v11 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  [*(*(a1 + 40) + 408) addObject:v11];
  [*(a1 + 40) addSubview:v11];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = SUUISuggestedHandlesSettingsHeaderFooterDescriptionView;
  [(SUUISuggestedHandlesSettingsHeaderFooterDescriptionView *)&v33 layoutSubviews];
  [(SUUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUISuggestedHandlesSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v29 = v12;
  v30 = v11;
  v14 = v13;
  v16 = v15;
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  v17 = CGRectGetWidth(v34) - v14 - v16;
  v18 = *MEMORY[0x277D769E0];
  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v19 _scaledValueForValue:22.0];
  v21 = v20;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v23 = v21 - v22;
  [(UILabel *)self->_label sizeThatFits:v17, 1.0];
  [(UILabel *)self->_label setFrame:v14, v23, v17, v24];
  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:v18];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  [(UILabel *)self->_label _lastLineBaselineFrameOriginY];
  v32[3] = v26;
  [v25 _scaledValueForValue:30.0];
  buttons = self->_buttons;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__SUUISuggestedHandlesSettingsHeaderFooterDescriptionView_layoutSubviews__block_invoke;
  v31[3] = &unk_2798FBF58;
  v31[4] = v32;
  v31[5] = v28;
  *&v31[6] = v4;
  *&v31[7] = v6;
  *&v31[8] = v8;
  *&v31[9] = v10;
  v31[10] = v30;
  *&v31[11] = v14;
  v31[12] = v29;
  *&v31[13] = v16;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v31];
  _Block_object_dispose(v32, 8);
}

void __73__SUUISuggestedHandlesSettingsHeaderFooterDescriptionView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) + *(*(*(a1 + 32) + 8) + 24);
  v3 = a2;
  v8 = [v3 titleLabel];
  [v8 _firstBaselineOffsetFromTop];
  v5 = v4;
  [v3 sizeThatFits:{CGRectGetWidth(*(a1 + 48)), 1.0}];
  [v3 setFrame:{*(a1 + 88), *(*(*(a1 + 32) + 8) + 24) - v5, v6, v7}];
}

- (void)_buttonAction:(id)action
{
  v4 = [action tag];
  description = self->_description;

  [(SUUISuggestedHandlesSettingsHeaderFooterDescription *)description selectedHandleAtIndex:v4];
}

+ (id)_helpLabelWithDescription:(id)description forWidth:(double)width
{
  v5 = MEMORY[0x277D756B8];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  helpText = [descriptionCopy helpText];

  [v7 setText:helpText];
  [v7 setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v7 setFont:v9];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v7 setColor:systemGrayColor];

  [v7 sizeThatFits:{width, 1.0}];
  [v7 setFrame:{0.0, 0.0, width, v11}];

  return v7;
}

@end