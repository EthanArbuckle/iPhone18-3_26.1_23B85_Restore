@interface SUUILoadMoreDataConsumer
- (id)_itemsWithDictionary:(id)dictionary;
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUILoadMoreDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  v12 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v12];
  v8 = v12;
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SUUILoadMoreDataConsumer *)self _itemsWithDictionary:v7];
  }

  if (error && !v9)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

- (id)_itemsWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [dictionaryCopy objectForKey:@"charts"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"contentIds"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v7;
        v22 = dictionaryCopy;
        v9 = [dictionaryCopy objectForKey:@"storePlatformData"];
        v10 = objc_opt_class();
        v11 = SUUIStorePageItemsWithStorePlatformDictionary(v9, 0, v10);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v20 = v8;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NSSet *)self->_unavailableItemIdentifiers containsObject:v17])
              {
                v18 = [v11 objectForKey:v17];
                if (v18)
                {
                  [v5 addObject:v18];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v14);
        }

        dictionaryCopy = v22;
        v8 = v20;
        v7 = v21;
      }
    }
  }

  return v5;
}

@end