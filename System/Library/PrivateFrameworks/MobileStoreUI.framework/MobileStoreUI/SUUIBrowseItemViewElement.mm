@interface SUUIBrowseItemViewElement
- (NSArray)metadata;
- (SUUIBrowseItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIBrowseItemViewElement

- (SUUIBrowseItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUIBrowseItemViewElement;
  v9 = [(SUUIItemViewElement *)&v12 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"expands"];
    *(&v9->super._selected + 1) = [v10 BOOLValue];
  }

  return v9;
}

- (NSArray)metadata
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SUUIBrowseItemViewElement_metadata__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __37__SUUIBrowseItemViewElement_metadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 138)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUIBrowseItemViewElement;
  v5 = [(SUUIItemViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    *(&self->super._selected + 1) = [(SUUIBrowseItemViewElement *)elementCopy expands];
  }

  return v6;
}

@end