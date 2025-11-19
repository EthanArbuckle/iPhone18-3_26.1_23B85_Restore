@interface SUUIBrowseItemViewElement
- (NSArray)metadata;
- (SUUIBrowseItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIBrowseItemViewElement

- (SUUIBrowseItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SUUIBrowseItemViewElement;
  v9 = [(SUUIItemViewElement *)&v12 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"expands"];
    *(&v9->super._selected + 1) = [v10 BOOLValue];
  }

  return v9;
}

- (NSArray)metadata
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SUUIBrowseItemViewElement_metadata__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
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

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIBrowseItemViewElement;
  v5 = [(SUUIItemViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    *(&self->super._selected + 1) = [(SUUIBrowseItemViewElement *)v4 expands];
  }

  return v6;
}

@end