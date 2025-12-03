@interface SUUITrackViewElement
- (BOOL)isEnabled;
- (SUUIActionsViewElement)swipeActions;
- (SUUITrackViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUITrackViewElement

- (SUUITrackViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUITrackViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v11) = -1;
    }

    v9->_enabled = v11;
    v12 = [elementCopy getAttribute:@"selected"];
    if ([v12 length])
    {
      v9->_selected = [v12 BOOLValue];
    }
  }

  return v9;
}

- (SUUIActionsViewElement)swipeActions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__80;
  v11 = 0;
  children = [(SUUITrackViewElement *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SUUITrackViewElement_swipeActions__block_invoke;
  v5[3] = &unk_2798FCB30;
  v5[4] = &v6;
  [children enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__SUUITrackViewElement_swipeActions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUITrackViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_selected = elementCopy->_selected;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUUITrackViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUITrackViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __52__SUUITrackViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] != 3)
  {
    (*(*(a1 + 32) + 16))();
  }
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
  v6.super_class = SUUITrackViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

@end