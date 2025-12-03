@interface SUUIButtonFooterSettingsHeaderFooterDescriptionView
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_buttonWithButtonElement:(id)element;
- (void)_buttonTapped:(id)tapped;
- (void)_reloadWithButtonElement:(id)element context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUIButtonFooterSettingsHeaderFooterDescriptionView

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
  v8 = [viewElement firstChildForElementType:12];
  v9 = [self _buttonWithButtonElement:v8];
  titleLabel = [v9 titleLabel];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [titleLabel setFont:v11];
  [titleLabel sizeThatFits:{width, 1.0}];
  v13 = v12;
  v15 = v14;
  [titleLabel setFrame:{0.0, 0.0, v12, v14}];
  [v11 _scaledValueForValue:20.0];
  v17 = v16;
  [titleLabel _firstLineBaselineFrameOriginY];
  v19 = v15 + v17 - v18;

  v20 = v13;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  contextCopy = context;
  viewElement = [description viewElement];
  viewElement = self->_viewElement;
  self->_viewElement = viewElement;

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
  style = [(SUUIButtonViewElement *)self->_buttonElement style];
  ikColor = [style ikColor];
  tintColor = [contextCopy tintColor];

  v18 = SUUIViewElementPlainColorWithIKColor(ikColor, tintColor);

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
  titleLabel = [(UIButton *)self->_button titleLabel];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [titleLabel setFont:v4];
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
  [titleLabel sizeThatFits:{v17, 1.0}];
  v19 = v18;
  [v4 _scaledValueForValue:20.0];
  v21 = v20;
  [titleLabel _firstBaselineOffsetFromTop];
  [(UIButton *)self->_button setFrame:v14, v21 - v22, v17, v19];
}

- (void)_buttonTapped:(id)tapped
{
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"headerFooterButton", @"identifier", 0}];
  [(SUUIButtonViewElement *)self->_buttonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v4 completionBlock:0];
}

+ (id)_buttonWithButtonElement:(id)element
{
  v3 = MEMORY[0x277D75220];
  elementCopy = element;
  v5 = objc_alloc_init(v3);
  buttonText = [elementCopy buttonText];

  string = [buttonText string];

  [v5 setTitle:string forState:0];
  tintColor = [v5 tintColor];
  [v5 setTitleColor:tintColor forState:0];

  return v5;
}

- (void)_reloadWithButtonElement:(id)element context:(id)context
{
  elementCopy = element;
  objc_storeStrong(&self->_buttonElement, element);
  contextCopy = context;
  button = self->_button;
  if (button)
  {
    [(UIButton *)button removeFromSuperview];
    v9 = self->_button;
    self->_button = 0;
  }

  v10 = [objc_opt_class() _buttonWithButtonElement:elementCopy];
  v11 = self->_button;
  self->_button = v10;

  [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  style = [elementCopy style];
  ikColor = [style ikColor];
  tintColor = [contextCopy tintColor];

  v15 = SUUIViewElementPlainColorWithIKColor(ikColor, tintColor);

  [(UIButton *)self->_button setTitleColor:v15 forState:0];
  v16 = self->_button;
  v17 = [v15 colorWithAlphaComponent:0.2];
  [(UIButton *)v16 setTitleColor:v17 forState:1];

  [(SUUIButtonFooterSettingsHeaderFooterDescriptionView *)self addSubview:self->_button];
}

@end