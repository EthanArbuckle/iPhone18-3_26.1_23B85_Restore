@interface SUUINearMeViewElement
- (SUUINearMeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (void)_itemsDidChange:(id)change;
- (void)dealloc;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUINearMeViewElement

- (SUUINearMeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v10.receiver = self;
  v10.super_class = SUUINearMeViewElement;
  v5 = [(SUUIViewElement *)&v10 initWithDOMElement:element parent:parent elementFactory:factory];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SUUINearMeViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
    block[3] = &unk_2798F5BE8;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v6;
}

void __66__SUUINearMeViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1)
{
  v3 = +[SUUINearMeController sharedController];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__itemsDidChange_ name:@"SUUINearMeItemsDidChangeNotification" object:v3];

  if ([v3 status])
  {
    [*(a1 + 32) _itemsDidChange:0];
  }

  else
  {
    [v3 getItems];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUUINearMeViewElement;
  [(SUUIViewElement *)&v4 dealloc];
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v5 = SUUICoreLocationFramework();
  v6 = [SUUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa v5)];
  if (SUUINearMeIsEnabledForAuthorizationStatus(v6))
  {
    v7.receiver = self;
    v7.super_class = SUUINearMeViewElement;
    [(SUUIViewElement *)&v7 enumerateChildrenUsingBlock:blockCopy];
  }
}

- (void)_itemsDidChange:(id)change
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = +[SUUINearMeController sharedController];
  items = [v4 items];

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = items;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v20 + 1) + 8 * v11), "itemIdentifier")}];
        [array addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = +[SUUINearMeController sharedController];
  responseDictionary = [v13 responseDictionary];

  if (responseDictionary)
  {
    v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:responseDictionary options:0 error:0];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__SUUINearMeViewElement__itemsDidChange___block_invoke;
    v18[3] = &unk_2798F5AF8;
    v18[4] = self;
    v19 = v16;
    v17 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }
}

void __41__SUUINearMeViewElement__itemsDidChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = @"nearMe";
  v5[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 dispatchEventOfType:13 canBubble:0 isCancelable:1 extraInfo:v3 completionBlock:0];
}

@end