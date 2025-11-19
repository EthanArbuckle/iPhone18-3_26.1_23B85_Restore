@interface SUUIShelfMenuBarViewElement
+ (id)supportedFeatures;
- (SUUIShelfMenuBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
- (void)_menuBarViewElementConfigurationRequestsReload:(id)a3;
- (void)_reloadMenuItems;
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SUUIShelfMenuBarViewElement

- (SUUIShelfMenuBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v16 = [v8 getAttribute:@"entityProviderID"];
    v17 = [v16 length];

    if (v17)
    {
      v13 = [(SUUIShelfMenuBarViewElement *)[SUUIDynamicShelfMenuBarViewElement alloc] initWithDOMElement:v8 parent:v9 elementFactory:v10];
      goto LABEL_6;
    }
  }

  v19.receiver = self;
  v19.super_class = SUUIShelfMenuBarViewElement;
  v12 = [(SUUIShelfViewElement *)&v19 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  v13 = v12;
  if (v12)
  {
    self = [(SUUIViewElement *)v12 featureWithName:*MEMORY[0x277D1AF10]];
    v14 = [[SUUIMenuBarViewElementConfiguration alloc] _initWithMenuBarDocument:self];
    configuration = v13->super._configuration;
    v13->super._configuration = v14;

    [(SUUIMenuBarViewElementConfiguration *)v13->super._configuration _setReloadDelegate:v13];
LABEL_6:
  }

  return &v13->super;
}

+ (id)supportedFeatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D1AF10];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SUUIShelfMenuBarViewElement;
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

- (id)applyUpdatesWithElement:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIShelfMenuBarViewElement;
  v4 = a3;
  v5 = [(SUUIShelfViewElement *)&v7 applyUpdatesWithElement:v4];

  if (v4 != self || [v5 updateType])
  {
    [(SUUIMenuBarViewElementConfiguration *)self->_configuration _setNeedsReload:1, v7.receiver, v7.super_class];
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SUUIShelfMenuBarViewElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SUUIShelfMenuBarViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F87B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __59__SUUIShelfMenuBarViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 elementType] == 72)
  {
    v3 = [*(a1 + 32) shelfItemViewElementValidator];
    v4 = v3;
    if (!v3 || (*(v3 + 16))(v3, v5))
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_menuBarViewElementConfigurationRequestsReload:(id)a3
{
  if (self->_configuration == a3)
  {
    [(SUUIShelfMenuBarViewElement *)self _reloadMenuItems];
  }
}

- (void)_reloadMenuItems
{
  v2 = self;
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIShelfMenuBarViewElement *)self style];
  v4 = [v3 valueForStyle:@"itml-shelf-layout"];
  v5 = [v4 isEqualToString:@"zooming"];

  if (v5)
  {
    v28 = v5;
    v29 = v2;
    [(SUUIShelfMenuBarViewElement *)v2 children];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v31 = 0;
          v32 = 0;
          v33 = 0;
          SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(v13, &v31);
          if (v31 == 1)
          {
            v14 = v13;
            v15 = [v14 children];
            v16 = [v15 objectAtIndex:v32];
            v17 = [v15 objectAtIndex:v33];
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v10 addObject:v14];
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v9 addObject:v16];
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v17];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v18 = 2;
    v2 = v29;
    v5 = v28;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v18 = 0;
  }

  v19 = [v9 copy];
  focusedViewElements = v2->_focusedViewElements;
  v2->_focusedViewElements = v19;

  v21 = [v8 copy];
  regularViewElements = v2->_regularViewElements;
  v2->_regularViewElements = v21;

  if (v5)
  {
    v23 = &__block_literal_global_15;
    v24 = v2;
  }

  else
  {
    v24 = v2;
    v23 = 0;
  }

  [(SUUIShelfViewElement *)v24 setShelfItemViewElementValidator:v23];
  v25 = [(SUUIShelfMenuBarViewElement *)v2 style];
  v26 = [v25 valueForStyle:@"itml-scroll-enabled"];
  v27 = [v26 BOOLValue];

  [(SUUIMenuBarViewElementConfiguration *)v2->_configuration _reloadWithMenuBarStyle:v18 menuItemViewElements:v10 scrollEnabled:v27];
}

uint64_t __47__SUUIShelfMenuBarViewElement__reloadMenuItems__block_invoke(uint64_t a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(a2, v3);
  return LOBYTE(v3[0]);
}

@end