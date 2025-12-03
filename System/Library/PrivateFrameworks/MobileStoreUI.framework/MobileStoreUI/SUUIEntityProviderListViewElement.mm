@interface SUUIEntityProviderListViewElement
- (SUUIEntityProviderListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIEntityProviderListViewElement

- (SUUIEntityProviderListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SUUIEntityProviderListViewElement;
  v5 = [(SUUIViewElement *)&v21 initWithDOMElement:element parent:parent elementFactory:factory];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    children = [(SUUIEntityProviderListViewElement *)v5 children];
    v8 = [children countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(children);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          elementID = [v12 elementID];
          if ([elementID length] && objc_msgSend(v12, "conformsToProtocol:", &unk_286C96960))
          {
            [v6 setObject:v12 forKey:elementID];
          }
        }

        v9 = [children countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    entityProviders = v5->_entityProviders;
    v5->_entityProviders = v14;
  }

  return v5;
}

@end