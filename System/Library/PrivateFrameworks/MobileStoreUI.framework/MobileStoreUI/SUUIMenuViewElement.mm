@interface SUUIMenuViewElement
- (BOOL)isEnabled;
- (NSArray)menuItemTitles;
- (SUUIItemViewElement)titleItem;
- (SUUIMenuViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)selectedItemIndex;
- (void)_enumerateItemElementsUsingBlock:(id)block;
- (void)dispatchEventOfType:(unint64_t)type forItemAtIndex:(int64_t)index;
@end

@implementation SUUIMenuViewElement

- (SUUIMenuViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIMenuViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      v11 = -1;
    }

    v9->_enabled = v11;
  }

  return v9;
}

- (void)dispatchEventOfType:(unint64_t)type forItemAtIndex:(int64_t)index
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SUUIMenuViewElement_dispatchEventOfType_forItemAtIndex___block_invoke;
  v4[3] = &__block_descriptor_48_e36_v32__0__SUUIItemViewElement_8Q16_B24l;
  v4[4] = index;
  v4[5] = type;
  [(SUUIMenuViewElement *)self _enumerateItemElementsUsingBlock:v4];
}

uint64_t __58__SUUIMenuViewElement_dispatchEventOfType_forItemAtIndex___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    result = [a2 dispatchEventOfType:*(result + 40) canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    *a4 = 1;
  }

  return result;
}

- (NSArray)menuItemTitles
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SUUIMenuViewElement_menuItemTitles__block_invoke;
  v6[3] = &unk_2798FAC28;
  v4 = array;
  v7 = v4;
  [(SUUIMenuViewElement *)self _enumerateItemElementsUsingBlock:v6];

  return v4;
}

void __37__SUUIMenuViewElement_menuItemTitles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemText];
  v4 = [v3 string];

  [*(a1 + 32) addObject:v4];
}

- (int64_t)selectedItemIndex
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SUUIMenuViewElement_selectedItemIndex__block_invoke;
  v4[3] = &unk_2798FAC00;
  v4[4] = &v5;
  [(SUUIMenuViewElement *)self _enumerateItemElementsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__SUUIMenuViewElement_selectedItemIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSelected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (SUUIItemViewElement)titleItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__78;
  v9 = __Block_byref_object_dispose__78;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SUUIMenuViewElement_titleItem__block_invoke;
  v4[3] = &unk_2798FAC00;
  v4[4] = &v5;
  [(SUUIMenuViewElement *)self _enumerateItemElementsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __32__SUUIMenuViewElement_titleItem__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 isSelected])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

  else if (!a3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUIMenuViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_enabled = elementCopy->_enabled;
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SUUIMenuViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

- (void)_enumerateItemElementsUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUUIMenuViewElement__enumerateItemElementsUsingBlock___block_invoke;
  v6[3] = &unk_2798F91A8;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __56__SUUIMenuViewElement__enumerateItemElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 elementType] == 59)
  {
    v3 = [v5 itemText];
    v4 = [v3 string];

    if (v4)
    {
      (*(*(a1 + 32) + 16))();
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

@end