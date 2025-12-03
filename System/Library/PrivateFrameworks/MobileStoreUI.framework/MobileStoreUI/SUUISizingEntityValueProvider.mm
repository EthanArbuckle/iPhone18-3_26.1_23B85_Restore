@interface SUUISizingEntityValueProvider
- (id)initForViewElement:(id)element;
- (id)valuesForEntityProperties:(id)properties;
- (void)_insertTallestValueForViewElement:(id)element;
@end

@implementation SUUISizingEntityValueProvider

- (id)initForViewElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SUUISizingEntityValueProvider;
  v5 = [(SUUISizingEntityValueProvider *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tallestValues = v5->_tallestValues;
    v5->_tallestValues = v6;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__SUUISizingEntityValueProvider_initForViewElement___block_invoke;
    v9[3] = &unk_2798F5B20;
    v10 = v5;
    [elementCopy enumerateChildrenUsingBlock:v9];
  }

  return v5;
}

- (id)valuesForEntityProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = propertiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_tallestValues objectForKey:v11, v14];
        if (v12)
        {
          [dictionary setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)_insertTallestValueForViewElement:(id)element
{
  elementCopy = element;
  attributes = [elementCopy attributes];
  v5 = [attributes objectForKey:@"valueProperty"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = elementCopy;
      style = [v6 style];
      maxTextLines = [style maxTextLines];
      if (!style || maxTextLines <= 0)
      {
        maxTextLines = [v6 numberOfLines];
      }

      selfCopy = self;
      if (maxTextLines <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = maxTextLines;
      }

      if (v9 < 1)
      {
        selfCopy = &stru_286AECDE0;
      }

      else
      {
        v10 = 0;
        v11 = &stru_286AECDE0;
        do
        {
          selfCopy = [(__CFString *)v11 stringByAppendingString:@"X", selfCopy];

          if (v10 < v9 - 1)
          {
            v13 = [(__CFString *)selfCopy stringByAppendingString:@"\n"];

            selfCopy = v13;
          }

          ++v10;
          v11 = selfCopy;
        }

        while (v9 != v10);
      }

      [(NSMutableDictionary *)selfCopy->_tallestValues setObject:selfCopy forKey:v5, selfCopy];
    }
  }
}

@end