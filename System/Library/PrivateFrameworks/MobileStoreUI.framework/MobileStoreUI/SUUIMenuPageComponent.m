@interface SUUIMenuPageComponent
- (NSArray)allTitles;
- (SUUIMenuPageComponent)initWithCustomPageContext:(id)a3;
- (SUUIMenuPageComponent)initWithRoomSortData:(id)a3;
- (SUUIMenuPageComponent)initWithViewElement:(id)a3;
- (id)_componentWithContext:(id)a3;
- (id)childComponentsForIndex:(int64_t)a3;
- (id)sortURLForIndex:(int64_t)a3;
@end

@implementation SUUIMenuPageComponent

- (SUUIMenuPageComponent)initWithCustomPageContext:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = SUUIMenuPageComponent;
  v52 = [(SUUIPageComponent *)&v61 initWithCustomPageContext:v4];
  if (v52)
  {
    v5 = [v4 componentDictionary];
    v6 = [v5 objectForKey:@"type"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isEqualToString:@"popup"])
    {
      v52->_menuStyle = 1;
    }

    v7 = [v5 objectForKey:@"moreTitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      titleForMoreItem = v52->_titleForMoreItem;
      v52->_titleForMoreItem = v8;
    }

    v10 = [v5 objectForKey:@"title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      menuTitle = v52->_menuTitle;
      v52->_menuTitle = v11;

      v13 = [v5 objectForKey:@"titleSize"];

      if (objc_opt_respondsToSelector())
      {
        [v13 floatValue];
        v52->_menuTitleFontSize = v14;
      }

      v10 = [v5 objectForKey:@"titleWeight"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52->_menuTitleFontWeight = SUUIPageComponentFontWeightForString(v10);
      }
    }

    v15 = [v5 objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v5;
      v50 = objc_alloc_init(MEMORY[0x277CCA940]);
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      childrenComponents = v52->_childrenComponents;
      v52->_childrenComponents = v16;

      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      titles = v52->_titles;
      v52->_titles = v18;

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = v15;
      v20 = v15;
      v48 = [v20 countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v48)
      {
        v21 = *v58;
        v46 = v4;
        v44 = *v58;
        v45 = v20;
        do
        {
          v22 = 0;
          do
          {
            if (*v58 != v21)
            {
              objc_enumerationMutation(v20);
            }

            v49 = v22;
            v23 = *(*(&v57 + 1) + 8 * v22);
            v24 = [v23 objectForKey:@"content"];
            v25 = v23;
            v26 = v24;
            v27 = [v25 objectForKey:@"title"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [v4 copy];
                v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v30 = v26;
                v31 = v29;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v47 = v30;
                v32 = v30;
                v33 = [v32 countByEnumeratingWithState:&v53 objects:v62 count:16];
                if (v33)
                {
                  v34 = v33;
                  v35 = *v54;
                  do
                  {
                    v36 = 0;
                    v51 = v34;
                    do
                    {
                      if (*v54 != v35)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v37 = *(*(&v53 + 1) + 8 * v36);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v28 setComponentDictionary:v37];
                        v38 = [(SUUIMenuPageComponent *)v52 _componentWithContext:v28];
                        v39 = v38;
                        if (v38)
                        {
                          v40 = [v38 metricsElementName];
                          if (v40)
                          {
                            [v39 _setMetricsLocationPosition:{objc_msgSend(v50, "countForObject:", v40)}];
                            v34 = v51;
                            [v50 addObject:v40];
                          }

                          [v31 addObject:v39];
                        }
                      }

                      ++v36;
                    }

                    while (v34 != v36);
                    v34 = [v32 countByEnumeratingWithState:&v53 objects:v62 count:16];
                  }

                  while (v34);
                }

                if ([v31 count])
                {
                  [(NSMutableArray *)v52->_childrenComponents addObject:v31];
                  [(NSMutableArray *)v52->_titles addObject:v27];
                }

                v4 = v46;
                v21 = v44;
                v20 = v45;
                v26 = v47;
              }
            }

            v22 = v49 + 1;
          }

          while (v49 + 1 != v48);
          v48 = [v20 countByEnumeratingWithState:&v57 objects:v63 count:16];
        }

        while (v48);
      }

      v5 = v43;
      v15 = v42;
    }
  }

  return v52;
}

- (SUUIMenuPageComponent)initWithRoomSortData:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUUIMenuPageComponent;
  v5 = [(SUUIMenuPageComponent *)&v23 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childrenComponents = v5->_childrenComponents;
    v5->_childrenComponents = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortURLStrings = v5->_sortURLStrings;
    v5->_sortURLStrings = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    titles = v5->_titles;
    v5->_titles = v10;

    v12 = [v4 objectForKey:@"defaultSort"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"id"];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 objectForKey:@"sorts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __46__SUUIMenuPageComponent_initWithRoomSortData___block_invoke;
      v20 = &unk_2798FB678;
      v21 = v5;
      v22 = v13;
      [v14 enumerateObjectsUsingBlock:&v17];
    }

    v15 = [(NSMutableArray *)v5->_sortURLStrings count:v17];
    if (v15 != [(NSMutableArray *)v5->_titles count]|| ![(NSMutableArray *)v5->_sortURLStrings count]|| ![(NSMutableArray *)v5->_titles count])
    {

      v5 = 0;
    }
  }

  return v5;
}

uint64_t __46__SUUIMenuPageComponent_initWithRoomSortData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v13;
  if (isKindOfClass)
  {
    v7 = [v13 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 88) addObject:v7];
    }

    v8 = [v13 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 72) addObject:v8];
    }

    v9 = [v13 objectForKey:@"id"];

    if ([v9 isEqual:*(a1 + 40)])
    {
      *(*(a1 + 32) + 32) = a3;
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = [MEMORY[0x277CBEB68] null];
    [v10 addObject:v11];

    v6 = v13;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v6);
}

- (SUUIMenuPageComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIMenuPageComponent;
  v5 = [(SUUIPageComponent *)&v10 initWithViewElement:v4];
  if (v5)
  {
    v5->_defaultSelectedIndex = [v4 initialSelectedItemIndex];
    v6 = [v4 segmentItemTitles];
    v7 = [v6 mutableCopy];
    titles = v5->_titles;
    v5->_titles = v7;
  }

  return v5;
}

- (NSArray)allTitles
{
  v2 = [(NSMutableArray *)self->_titles copy];

  return v2;
}

- (id)childComponentsForIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_childrenComponents objectAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)sortURLForIndex:(int64_t)a3
{
  sortURLStrings = self->_sortURLStrings;
  if (sortURLStrings)
  {
    v4 = [(NSMutableArray *)sortURLStrings objectAtIndex:a3];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_componentWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 componentDictionary];
  v5 = [v4 objectForKey:@"type"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = SUUIPageComponentTypeForBlockType(v5), (v7 = SUUIPageComponentClassForComponentType(v6)) != 0))
  {
    v8 = [[v7 alloc] initWithCustomPageContext:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end