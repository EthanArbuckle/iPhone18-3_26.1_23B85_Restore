@interface SUUICollectionListViewElement
- (SUUICollectionListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUICollectionListViewElement

- (SUUICollectionListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SUUICollectionListViewElement;
  v5 = [(SUUIViewElement *)&v17 initWithDOMElement:element parent:parent elementFactory:factory];
  v6 = v5;
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v7 = [(SUUICollectionListViewElement *)v5 children:0];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            NSLog(&cfstr_OmgSearchInACo.isa);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

@end