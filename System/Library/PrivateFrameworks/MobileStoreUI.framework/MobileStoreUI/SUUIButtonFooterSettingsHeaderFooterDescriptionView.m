@interface SUUIButtonFooterSettingsHeaderFooterDescriptionView
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingsHeaderFooterDescription:(id)a4 context:(id)a5;
+ (id)_buttonWithButtonElement:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)_reloadWithButtonElement:(id)a3 context:(id)a4;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIButtonFooterSettingsHeaderFooterDescriptionView

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingsHeaderFooterDescription:(id)a4 context:(id)a5
{
  v7 = [a4 viewElement];
  v8 = [v7 firstChildForElementType:12];
  v9 = [a1 _buttonWithButtonElement:v8];
  v10 = [v9 titleLabel];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v10 setFont:v11];
  [v10 sizeThatFits:{a3, 1.0}];
  v13 = v12;
  v15 = v14;
  [v10 setFrame:{0.0, 0.0, v12, v14}];
  [v11 _scaledValueForValue:20.0];
  v17 = v16;
  [v10 _firstLineBaselineFrameOriginY];
  v19 = v15 + v17 - v18;

  v20 = v13;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = [a3 viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = v8;

  v10 = [(SUUIViewElement *)self->_viewElement firstChildForElementType:12];
  buttonElement = self->_buttonElement;
  self->_buttonElement = v10;

  button = self->_button;
  if (button)
  {
    [(UIButton *)button removeFromSuperview];
    v13 = self->_button;
    self->_button = 0;
  }

  v14 = [objc_opt_class() _buttonWithButtonElement:self->_buttonElement];
  v15 = self->_button;
  self->_button = v14;

  [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  v21 = [(SUUIButtonViewElement *)self->_buttonElement style];
  v16 = [v21 ikColor];
  v17 = [v7 tintColor];

  v18 = SUUIViewElementPlainColorWithIKColor(v16, v17);

  [(UIButton *)self->_button setTitleColor:v18 forState:0];
  v19 = self->_button;
  v20 = [v18 colorWithAlphaComponent:0.2];
  [(UIButton *)v19 setTitleColor:v20 forState:1];

  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_button];
  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SUUIButtonFooterSettingsHeaderFooterDescriptionView;
  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)&v23 layoutSubviews];
  v3 = [(UIButton *)self->_button titleLabel];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [v3 setFont:v4];
  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self layoutMargins];
  v14 = v13;
  v16 = v15;
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v17 = CGRectGetWidth(v24) - v14 - v16;
  [v3 sizeThatFits:{v17, 1.0}];
  v19 = v18;
  [v4 _scaledValueForValue:20.0];
  v21 = v20;
  [v3 _firstBaselineOffsetFromTop];
  [(UIButton *)self->_button setFrame:v14, v21 - v22, v17, v19];
}

- (void)_buttonTapped:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"headerFooterButton", @"identifier", 0}];
  [(SUUIButtonViewElement *)self->_buttonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v4 completionBlock:0];
}

+ (id)_buttonWithButtonElement:(id)a3
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 buttonText];

  v7 = [v6 string];

  [v5 setTitle:v7 forState:0];
  v8 = [v5 tintColor];
  [v5 setTitleColor:v8 forState:0];

  return v5;
}

- (void)_reloadWithButtonElement:(id)a3 context:(id)a4
{
  v18 = a3;
  objc_storeStrong(&self->_buttonElement, a3);
  v7 = a4;
  button = self->_button;
  if (button)
  {
    [(UIButton *)button removeFromSuperview];
    v9 = self->_button;
    self->_button = 0;
  }

  v10 = [objc_opt_class() _buttonWithButtonElement:v18];
  v11 = self->_button;
  self->_button = v10;

  [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  v12 = [v18 style];
  v13 = [v12 ikColor];
  v14 = [v7 tintColor];

  v15 = SUUIViewElementPlainColorWithIKColor(v13, v14);

  [(UIButton *)self->_button setTitleColor:v15 forState:0];
  v16 = self->_button;
  v17 = [v15 colorWithAlphaComponent:0.2];
  [(UIButton *)v16 setTitleColor:v17 forState:1];

  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_button];
}

@end