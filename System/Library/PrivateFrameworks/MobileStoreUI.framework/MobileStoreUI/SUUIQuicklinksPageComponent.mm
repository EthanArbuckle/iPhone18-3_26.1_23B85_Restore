@interface SUUIQuicklinksPageComponent
- (SUUIQuicklinksPageComponent)initWithCustomPageContext:(id)context;
- (SUUIQuicklinksPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (id)valueForMetricsField:(id)field;
- (void)_setLinksWithLinksArray:(id)array context:(id)context;
@end

@implementation SUUIQuicklinksPageComponent

- (SUUIQuicklinksPageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUIQuicklinksPageComponent;
  v5 = [(SUUIPageComponent *)&v12 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      title = v5->_title;
      v5->_title = v8;
    }

    v10 = [componentDictionary objectForKey:@"children"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIQuicklinksPageComponent *)v5 _setLinksWithLinksArray:v10 context:contextCopy];
    }
  }

  return v5;
}

- (SUUIQuicklinksPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = SUUIQuicklinksPageComponent;
  v7 = [(SUUIPageComponent *)&v17 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v7)
  {
    componentDictionary = [contextCopy componentDictionary];
    v9 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;

        componentDictionary = v11;
      }
    }

    v12 = [componentDictionary objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      title = v7->_title;
      v7->_title = v13;
    }

    v15 = [componentDictionary objectForKey:@"links"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIQuicklinksPageComponent *)v7 _setLinksWithLinksArray:v15 context:contextCopy];
    }
  }

  return v7;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    title = [(SUUIQuicklinksPageComponent *)self title];
    if (title)
    {
      goto LABEL_8;
    }
  }

  else if ([fieldCopy isEqualToString:*MEMORY[0x277D6A498]])
  {
    title = &unk_286BBE418;
    goto LABEL_8;
  }

  v7.receiver = self;
  v7.super_class = SUUIQuicklinksPageComponent;
  title = [(SUUIPageComponent *)&v7 valueForMetricsField:fieldCopy];
LABEL_8:

  return title;
}

- (void)_setLinksWithLinksArray:(id)array context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [contextCopy copy];
          [v14 setComponentDictionary:v13];
          v15 = [[SUUILink alloc] initWithComponentContext:v14];
          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  links = self->_links;
  self->_links = v16;
}

@end