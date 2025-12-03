@interface SUUICompletionList
- (NSMutableDictionary)cacheRepresentation;
- (SUUICompletionList)initWithCacheRepresentation:(id)representation;
- (SUUICompletionList)initWithCompletionListDictionary:(id)dictionary;
@end

@implementation SUUICompletionList

- (SUUICompletionList)initWithCompletionListDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = SUUICompletionList;
  v5 = [(SUUICompletionList *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"item"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_title, v6);
    }

    v7 = [dictionaryCopy objectForKey:@"hints"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SUUICompletion alloc] initWithCompletionDictionary:v14];
              [(NSArray *)v8 addObject:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      completions = v5->_completions;
      v5->_completions = v8;

      v7 = v18;
    }
  }

  return v5;
}

- (SUUICompletionList)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14.receiver = self;
    v14.super_class = SUUICompletionList;
    v5 = [(SUUICompletionList *)&v14 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        title = v5->_title;
        v5->_title = v7;
      }

      v9 = [representationCopy objectForKey:@"completions"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_opt_class();
        v11 = SUUICacheCodingDecodeArray(v9, v10);
        completions = v5->_completions;
        v5->_completions = v11;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  completions = self->_completions;
  if (completions)
  {
    v5 = SUUICacheCodingEncodeArray(completions);
    [dictionary setObject:v5 forKey:@"completions"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  return dictionary;
}

@end