@interface SUUICategory
- (BOOL)containsURL:(id)l;
- (SUUICategory)initWithCategoryDictionary:(id)dictionary;
- (id)subcategoryContainingURL:(id)l;
@end

@implementation SUUICategory

- (SUUICategory)initWithCategoryDictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = SUUICategory;
  v5 = [(SUUICategory *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      name = v5->_name;
      v5->_name = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"parentCategoryLabel"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      parentLabel = v5->_parentLabel;
      v5->_parentLabel = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"artwork"];

    v16 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v15];
    artworkProvider = v5->_artworkProvider;
    v5->_artworkProvider = v16;

    v18 = [dictionaryCopy objectForKey:@"genreId"];

    if (objc_opt_respondsToSelector())
    {
      v5->_categoryIdentifier = [v18 longLongValue];
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [dictionaryCopy objectForKey:@"children"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_opt_class();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v32 = v20;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v34;
        do
        {
          v26 = 0;
          do
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v33 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[v21 alloc] initWithCategoryDictionary:v27];
              if (v28)
              {
                [v19 addObject:v28];
              }
            }

            ++v26;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v24);
      }

      v20 = v32;
    }

    v29 = [v19 copy];
    children = v5->_children;
    v5->_children = v29;
  }

  return v5;
}

- (BOOL)containsURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(SUUICategory *)self URL];
  v6 = [lCopy isEqual:v5];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    children = [(SUUICategory *)self children];
    v7 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(children);
          }

          if ([*(*(&v12 + 1) + 8 * i) containsURL:lCopy])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v7;
}

- (id)subcategoryContainingURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(SUUICategory *)self children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsURL:lCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end