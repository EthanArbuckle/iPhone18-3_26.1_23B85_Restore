@interface SUUIGalleryPageComponent
- (SUUIGalleryPageComponent)initWithCustomPageContext:(id)context;
@end

@implementation SUUIGalleryPageComponent

- (SUUIGalleryPageComponent)initWithCustomPageContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = SUUIGalleryPageComponent;
  v5 = [(SUUIPageComponent *)&v31 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"cycleInterval"];
    if (objc_opt_respondsToSelector())
    {
      [v7 floatValue];
      v5->_cycleInterval = v8;
    }

    v9 = [componentDictionary objectForKey:@"hidesPageIndicator"];

    if (objc_opt_respondsToSelector())
    {
      v5->_hidesPageIndicator = [v9 BOOLValue];
    }

    v10 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v9;
      v25 = componentDictionary;
      v11 = [contextCopy copy];
      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v17 objectForKey:@"type"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && SUUIPageComponentTypeForBlockType(v18) == 10)
              {
                [v11 setComponentDictionary:v17];
                v19 = [objc_alloc(SUUIPageComponentClassForComponentType(10)) initWithCustomPageContext:v11];
                if (v19)
                {
                  [v26 addObject:v19];
                }
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v14);
      }

      v20 = [v26 copy];
      childComponents = v5->_childComponents;
      v5->_childComponents = v20;

      v9 = v24;
      componentDictionary = v25;
      v10 = v23;
    }
  }

  return v5;
}

@end