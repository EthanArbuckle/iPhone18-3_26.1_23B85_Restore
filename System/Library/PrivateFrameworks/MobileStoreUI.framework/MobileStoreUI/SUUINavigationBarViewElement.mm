@interface SUUINavigationBarViewElement
- (BOOL)isTransparent;
- (NSArray)mainViewElements;
- (NSArray)navigationPalettes;
- (SUUINavigationBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (UIColor)tintColor;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUINavigationBarViewElement

- (SUUINavigationBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUINavigationBarViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"hideShadow"];
    v9->_hidesShadow = [v10 BOOLValue];

    v11 = [elementCopy getAttribute:@"hideBackButton"];
    v9->_hidesBackButton = [v11 BOOLValue];
  }

  return v9;
}

- (BOOL)isTransparent
{
  style = [(SUUINavigationBarViewElement *)self style];
  ikBackgroundColor = [style ikBackgroundColor];

  if (ikBackgroundColor)
  {
    v7 = 0.0;
    color = [ikBackgroundColor color];
    [color getWhite:0 alpha:&v7];

    v5 = v7 < 0.00000011920929;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIColor)tintColor
{
  style = [(SUUINavigationBarViewElement *)self style];
  ikColor = [style ikColor];
  color = [ikColor color];

  return color;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUINavigationBarViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_hidesShadow = [(SUUINavigationBarViewElement *)elementCopy hidesShadow];
    self->_hidesBackButton = [(SUUINavigationBarViewElement *)elementCopy hidesBackButton];
  }

  return v6;
}

- (NSArray)mainViewElements
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SUUINavigationBarViewElement_mainViewElements__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __48__SUUINavigationBarViewElement_mainViewElements__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 12) > 0x39 || ((1 << (v3 - 12)) & 0x200004000000003) == 0;
  if (!v4 || (v3 - 106) <= 0x23 && ((1 << (v3 - 106)) & 0x900000009) != 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSArray)navigationPalettes
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SUUINavigationBarViewElement_navigationPalettes__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __50__SUUINavigationBarViewElement_navigationPalettes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 75)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end