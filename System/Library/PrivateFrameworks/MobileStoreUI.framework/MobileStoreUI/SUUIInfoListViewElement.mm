@interface SUUIInfoListViewElement
- (SUUIInfoListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)pageComponentType;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUIInfoListViewElement

- (SUUIInfoListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUIInfoListViewElement;
  v9 = [(SUUIViewElement *)&v12 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"type"];
    v9->_infoListType = [v10 isEqualToString:@"titleAbove"];
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUIInfoListViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_infoListType = [(SUUIInfoListViewElement *)elementCopy infoListType];
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUUIInfoListViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUIInfoListViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __55__SUUIInfoListViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 56)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)pageComponentType
{
  if (self->_infoListType == 1)
  {
    return 27;
  }

  else
  {
    return 26;
  }
}

@end