@interface SUUICarouselPageComponent
- (SUUICarouselPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SUUICarouselPageComponent)initWithViewElement:(id)a3;
- (id)valueForMetricsField:(id)a3;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)updateWithMissingItems:(id)a3;
@end

@implementation SUUICarouselPageComponent

- (SUUICarouselPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32.receiver = self;
  v32.super_class = SUUICarouselPageComponent;
  v27 = [(SUUIPageComponent *)&v32 initWithFeaturedContentContext:v6 kind:a4];
  if (v27)
  {
    v7 = [v6 componentDictionary];
    v8 = [v7 objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v7;
      v9 = [v6 copy];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = v8;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setComponentDictionary:v16];
              v17 = [[SUUICarouselItem alloc] initWithComponentContext:v9];
              v18 = [(SUUICarouselItem *)v17 link];
              if ([v18 isActionable])
              {
                [v10 addObject:v17];
              }

              else
              {
                v19 = [v18 itemIdentifier];
                if (v19 && ([v6 isUnavailableItemIdentifier:v19] & 1) == 0)
                {
                  ++v27->_missingItemCount;
                  [v10 addObject:v17];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v13);
      }

      if ([v6 layoutStyle] == 1 && objc_msgSend(v10, "count") >= 3)
      {
        v20 = [v10 objectAtIndex:1];
        [v10 removeObjectAtIndex:1];
        [v10 addObject:v20];
      }

      v21 = [v10 copy];
      carouselItems = v27->_carouselItems;
      v27->_carouselItems = v21;

      v8 = v25;
      v7 = v26;
    }

    v27->_cycleInterval = 5.0;
  }

  return v27;
}

- (SUUICarouselPageComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUICarouselPageComponent;
  v5 = [(SUUIPageComponent *)&v8 initWithViewElement:v4];
  if (v5)
  {
    [v4 displayInterval];
    if (v6 < 0.0)
    {
      v6 = 5.0;
    }

    v5->_cycleInterval = v6;
  }

  return v5;
}

- (void)updateWithMissingItems:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_carouselItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 link];
        v12 = [v11 itemIdentifier];
        if (v12 && ([v11 isActionable] & 1) == 0)
        {
          v13 = [v4 objectForKey:v12];
          if (v13)
          {
            [v10 _setLinkItem:v13];
            --self->_missingItemCount;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_carouselItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) link];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(SUUIPageComponent *)self _enumerateMissingItemIdentifiersFromLinks:v7 startIndex:a3 usingBlock:v6];
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6A498]])
  {
    v5 = &unk_286BBE190;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUUICarouselPageComponent;
    v5 = [(SUUIPageComponent *)&v7 valueForMetricsField:v4];
  }

  return v5;
}

@end