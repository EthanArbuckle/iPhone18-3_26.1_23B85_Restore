@interface SUUISearchItem
- (SUUISearchItem)initWithLookupDictionary:(id)dictionary;
@end

@implementation SUUISearchItem

- (SUUISearchItem)initWithLookupDictionary:(id)dictionary
{
  v44 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = SUUISearchItem;
  v5 = [(SUUIItem *)&v41 initWithLookupDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = SUUIItemScreenshotsForDictionary(dictionaryCopy);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          if (!v5->_primaryScreenshot)
          {
            objc_storeStrong(&v5->_primaryScreenshot, *(*(&v37 + 1) + 8 * i));
          }

          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    screenshots = v5->_screenshots;
    v5->_screenshots = v13;

    v15 = [dictionaryCopy objectForKey:@"childrenIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      childItemIdentifiers = v5->_childItemIdentifiers;
      v5->_childItemIdentifiers = v16;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      loadedChildItems = v5->_loadedChildItems;
      v5->_loadedChildItems = dictionary;

      v20 = [dictionaryCopy objectForKey:@"children"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v15;
        v31 = dictionaryCopy;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = v5->_childItemIdentifiers;
        v21 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v33 + 1) + 8 * j);
              stringValue = [v25 stringValue];
              v27 = [v20 objectForKey:stringValue];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [[SUUIItem alloc] initWithLookupDictionary:v27];
                if (v28)
                {
                  [(NSMutableDictionary *)v5->_loadedChildItems setObject:v28 forKey:v25];
                }
              }
            }

            v22 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v22);
        }

        v15 = v30;
        dictionaryCopy = v31;
      }
    }
  }

  return v5;
}

@end