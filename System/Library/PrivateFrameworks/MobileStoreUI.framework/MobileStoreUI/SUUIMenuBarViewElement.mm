@interface SUUIMenuBarViewElement
+ (id)supportedFeatures;
- (SUUIMenuBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)_menuBarViewElementConfigurationRequestsReload:(id)reload;
- (void)_reloadMenuItems;
@end

@implementation SUUIMenuBarViewElement

- (SUUIMenuBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v20 = [elementCopy getAttribute:@"entityProviderID"];
    v21 = [v20 length];

    if (v21)
    {
      _shelfMenuBarViewElementClass = SUUIDynamicMenuBarViewElement;
      goto LABEL_9;
    }
  }

  v12 = objc_opt_class();
  if (v12 == [objc_opt_class() _titlesMenuBarViewElementClass])
  {
    v13 = [elementCopy getAttribute:@"type"];
    v14 = [v13 isEqualToString:@"shelf"];

    if (v14)
    {
      _shelfMenuBarViewElementClass = [objc_opt_class() _shelfMenuBarViewElementClass];
LABEL_9:
      v17 = [[_shelfMenuBarViewElementClass alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
      goto LABEL_10;
    }
  }

  v23.receiver = self;
  v23.super_class = SUUIMenuBarViewElement;
  v16 = [(SUUIViewElement *)&v23 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  v17 = v16;
  if (v16)
  {
    self = [(SUUIViewElement *)v16 featureWithName:*MEMORY[0x277D1AF10]];
    v18 = [[SUUIMenuBarViewElementConfiguration alloc] _initWithMenuBarDocument:self];
    configuration = v17->_configuration;
    v17->_configuration = v18;

    [(SUUIMenuBarViewElementConfiguration *)v17->_configuration _setReloadDelegate:v17];
LABEL_10:
  }

  return v17;
}

+ (id)supportedFeatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D1AF10];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SUUIMenuBarViewElement;
  v4 = objc_msgSendSuper2(&v8, sel_supportedFeatures);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)applyUpdatesWithElement:(id)element
{
  v7.receiver = self;
  v7.super_class = SUUIMenuBarViewElement;
  elementCopy = element;
  v5 = [(SUUIViewElement *)&v7 applyUpdatesWithElement:elementCopy];

  if (elementCopy != self || [v5 updateType])
  {
    [(SUUIMenuBarViewElementConfiguration *)self->_configuration _setNeedsReload:1, v7.receiver, v7.super_class];
  }

  return v5;
}

- (void)_menuBarViewElementConfigurationRequestsReload:(id)reload
{
  if (self->_configuration == reload)
  {
    [(SUUIMenuBarViewElement *)self _reloadMenuItems];
  }
}

- (void)_reloadMenuItems
{
  v23 = *MEMORY[0x277D85DE8];
  children = [(SUUIMenuBarViewElement *)self children];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 elementType] == 72)
        {
          v11 = v10;
          v12 = [v11 firstChildForElementType:138];
          if (v12)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v6 addObject:v12];
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v7 addObject:v11];
          }
        }
      }

      v5 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  objc_storeStrong(&self->_titleViewElements, v6);
  if (v7 && [v7 count])
  {
    v13 = 1;
  }

  else
  {
    v14 = [(SUUIViewElement *)self firstChildForElementType:4];

    if (v14)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }
  }

  style = [(SUUIMenuBarViewElement *)self style];
  v16 = [style valueForStyle:@"itml-scroll-enabled"];
  bOOLValue = [v16 BOOLValue];

  [(SUUIMenuBarViewElementConfiguration *)self->_configuration _reloadWithMenuBarStyle:v13 menuItemViewElements:v7 scrollEnabled:bOOLValue];
}

@end