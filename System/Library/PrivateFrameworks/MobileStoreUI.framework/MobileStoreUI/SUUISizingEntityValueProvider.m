@interface SUUISizingEntityValueProvider
- (id)initForViewElement:(id)a3;
- (id)valuesForEntityProperties:(id)a3;
- (void)_insertTallestValueForViewElement:(id)a3;
@end

@implementation SUUISizingEntityValueProvider

- (id)initForViewElement:(id)a3
{
  v4 = a3;
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
    [v4 enumerateChildrenUsingBlock:v9];
  }

  return v5;
}

- (id)valuesForEntityProperties:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_insertTallestValueForViewElement:(id)a3
{
  v15 = a3;
  v4 = [v15 attributes];
  v5 = [v4 objectForKey:@"valueProperty"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v15;
      v7 = [v6 style];
      v8 = [v7 maxTextLines];
      if (!v7 || v8 <= 0)
      {
        v8 = [v6 numberOfLines];
      }

      v14 = self;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      if (v9 < 1)
      {
        v12 = &stru_286AECDE0;
      }

      else
      {
        v10 = 0;
        v11 = &stru_286AECDE0;
        do
        {
          v12 = [(__CFString *)v11 stringByAppendingString:@"X", v14];

          if (v10 < v9 - 1)
          {
            v13 = [(__CFString *)v12 stringByAppendingString:@"\n"];

            v12 = v13;
          }

          ++v10;
          v11 = v12;
        }

        while (v9 != v10);
      }

      [(NSMutableDictionary *)v14->_tallestValues setObject:v12 forKey:v5, v14];
    }
  }
}

@end