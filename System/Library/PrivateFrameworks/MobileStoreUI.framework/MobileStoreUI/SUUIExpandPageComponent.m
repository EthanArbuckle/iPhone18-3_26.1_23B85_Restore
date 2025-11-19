@interface SUUIExpandPageComponent
- (SUUIExpandPageComponent)initWithViewElement:(id)a3;
@end

@implementation SUUIExpandPageComponent

- (SUUIExpandPageComponent)initWithViewElement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SUUIExpandPageComponent;
  v6 = [(SUUIPageComponent *)&v22 initWithViewElement:v5];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childComponents = v6->_childComponents;
    v6->_childComponents = v7;

    objc_storeStrong(&v6->_viewElement, a3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v5 flattenedChildren];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = SUUIPageComponentClassForComponentType([v14 pageComponentType]);
          if (v15)
          {
            v16 = [[v15 alloc] initWithViewElement:v14];
            if (v16)
            {
              [(NSMutableArray *)v6->_childComponents addObject:v16];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

@end