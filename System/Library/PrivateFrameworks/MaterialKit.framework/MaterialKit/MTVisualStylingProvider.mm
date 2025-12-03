@interface MTVisualStylingProvider
+ (id)_visualStylingProviderForRecipe:(int64_t)recipe category:(int64_t)category andUserInterfaceStyle:(int64_t)style;
+ (id)_visualStylingProviderForRecipeNamed:(id)named andCategory:(int64_t)category;
+ (id)_visualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle;
- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)layer;
- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)provider;
- (id)_visualStylingForContinuallyUpdatedView:(id)view;
- (id)_visualStylingForStyle:(int64_t)style;
- (id)_visualStylingForStyleNamed:(id)named;
- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)style;
- (void)_addObserver:(id)observer;
- (void)_automaticallyUpdateViewOrLayer:(id)layer withStyleNamed:(id)named andObserverBlock:(id)block;
- (void)_removeObserver:(id)observer;
- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)layer;
- (void)_updateVisualStyleOfViewOrLayer:(id)layer;
- (void)automaticallyUpdateLayer:(id)layer withStyle:(int64_t)style andObserverBlock:(id)block;
- (void)automaticallyUpdateView:(id)view withStyle:(int64_t)style andObserverBlock:(id)block;
- (void)providedStylesDidChangeForProvider:(id)provider;
@end

@implementation MTVisualStylingProvider

- (void)automaticallyUpdateView:(id)view withStyle:(int64_t)style andObserverBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if (viewCopy && MTIsValidVisualStyle(style))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(style);
    [(MTVisualStylingProvider *)self _automaticallyUpdateViewOrLayer:viewCopy withStyleNamed:v9 andObserverBlock:blockCopy];
  }
}

- (void)automaticallyUpdateLayer:(id)layer withStyle:(int64_t)style andObserverBlock:(id)block
{
  layerCopy = layer;
  blockCopy = block;
  if (layerCopy && MTIsValidVisualStyle(style))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(style);
    [(MTVisualStylingProvider *)self _automaticallyUpdateViewOrLayer:layerCopy withStyleNamed:v9 andObserverBlock:blockCopy];
  }
}

- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)style
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setUserInteractionEnabled:0];
  [(MTVisualStylingProvider *)self automaticallyUpdateView:v5 withStyle:style andObserverBlock:&__block_literal_global_3];
  return v5;
}

id __65__MTVisualStylingProvider_newAutomaticallyUpdatingViewWithStyle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MTVisualStylingProvider_newAutomaticallyUpdatingViewWithStyle___block_invoke_2;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (void)providedStylesDidChangeForProvider:(id)provider
{
  v24 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_styleNamesToVisualStylings removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_viewsAndLayersToCoreMaterialVisualStyles;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTVisualStylingProvider *)self _updateVisualStyleOfViewOrLayer:*(*(&v18 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  [(NSPointerArray *)self->_privateObservers compact];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_privateObservers;
  v10 = [(NSPointerArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) providedStylesDidChangeForProvider:{self, v14}];
      }

      while (v11 != v13);
      v11 = [(NSPointerArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_automaticallyUpdateViewOrLayer:(id)layer withStyleNamed:(id)named andObserverBlock:(id)block
{
  layerCopy = layer;
  namedCopy = named;
  blockCopy = block;
  if (layerCopy)
  {
    v10 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:namedCopy];

    if (v10)
    {
      viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      if (!viewsAndLayersToCoreMaterialVisualStyles)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v13 = self->_viewsAndLayersToCoreMaterialVisualStyles;
        self->_viewsAndLayersToCoreMaterialVisualStyles = weakToStrongObjectsMapTable;

        viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      }

      [(NSMapTable *)viewsAndLayersToCoreMaterialVisualStyles setObject:namedCopy forKey:layerCopy];
      if (blockCopy)
      {
        viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        if (!viewsAndLayersToObserverBlocks)
        {
          weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          v16 = self->_viewsAndLayersToObserverBlocks;
          self->_viewsAndLayersToObserverBlocks = weakToStrongObjectsMapTable2;

          viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        }

        v17 = [blockCopy copy];
        v18 = MEMORY[0x223D601D0]();
        [(NSMapTable *)viewsAndLayersToObserverBlocks setObject:v18 forKey:layerCopy];
      }

      [(MTVisualStylingProvider *)self _updateVisualStyleOfViewOrLayer:layerCopy];
    }
  }
}

- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)layer
{
  if (layer)
  {
    viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
    layerCopy = layer;
    [(NSMapTable *)viewsAndLayersToCoreMaterialVisualStyles removeObjectForKey:layerCopy];
    [(NSMapTable *)self->_viewsAndLayersToObserverBlocks removeObjectForKey:layerCopy];
  }
}

- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)layer
{
  v15 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if (layerCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_viewsAndLayersToCoreMaterialVisualStyles;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (*(*(&v10 + 1) + 8 * i) == layerCopy)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_updateVisualStyleOfViewOrLayer:(id)layer
{
  layerCopy = layer;
  v4 = [(NSMapTable *)self->_viewsAndLayersToCoreMaterialVisualStyles objectForKey:?];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [(NSMapTable *)self->_viewsAndLayersToObserverBlocks objectForKey:layerCopy];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self, layerCopy);
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:v4];
    [layerCopy mt_replaceVisualStyling:v8];
LABEL_9:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:v4];
    [layerCopy mt_replaceAllVisualStylingWithStyling:v8];
    goto LABEL_9;
  }

LABEL_10:
  if (v7)
  {
    (v7)[2](v7, self, layerCopy);
  }

LABEL_13:
}

+ (id)_visualStylingProviderForRecipe:(int64_t)recipe category:(int64_t)category andUserInterfaceStyle:(int64_t)style
{
  if (recipe)
  {
    v7 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, style);
    v8 = [self _visualStylingProviderForRecipeNamed:v7 andCategory:category];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if (category == 3)
  {
    v7 = MTCoreMaterialPlatformColorsStyleNameForUserInterfaceStyle(style);
    v8 = [self _visualStylingProviderForStyleSetNamed:v7 inBundle:0];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)_visualStylingProviderForRecipeNamed:(id)named andCategory:(int64_t)category
{
  namedCopy = named;
  if (namedCopy)
  {
    v7 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
    if (v7)
    {
      v8 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForRecipe:namedCopy andCategory:v7];
      if (v8)
      {
        v9 = [[self alloc] initWithCoreMaterialVisualStylingProvider:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_visualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle
{
  if (named)
  {
    v5 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForStyleSetNamed:named inBundle:bundle];
    if (v5)
    {
      v6 = [[self alloc] initWithCoreMaterialVisualStylingProvider:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_visualStylingForStyle:(int64_t)style
{
  v4 = MTCoreMaterialVisualStyleForVisualStyle(style);
  if (v4)
  {
    v5 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_visualStylingForStyleNamed:(id)named
{
  namedCopy = named;
  if (namedCopy)
  {
    v5 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:namedCopy];
    if (!v5)
    {
      v6 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:namedCopy];
      if (v6)
      {
        v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_visualStylingClass"))];
        styleNamesToVisualStylings = self->_styleNamesToVisualStylings;
        if (!styleNamesToVisualStylings)
        {
          v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v9 = self->_styleNamesToVisualStylings;
          self->_styleNamesToVisualStylings = v8;

          styleNamesToVisualStylings = self->_styleNamesToVisualStylings;
        }

        [(NSMutableDictionary *)styleNamesToVisualStylings setObject:v5 forKey:namedCopy];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_visualStylingForContinuallyUpdatedView:(id)view
{
  if (view)
  {
    v4 = [(NSMapTable *)self->_viewsAndLayersToCoreMaterialVisualStyles objectForKey:?];
    if (v4)
    {
      v5 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    privateObservers = self->_privateObservers;
    v8 = observerCopy;
    if (!privateObservers)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:5];
      v7 = self->_privateObservers;
      self->_privateObservers = v6;

      privateObservers = self->_privateObservers;
    }

    [(NSPointerArray *)privateObservers addPointer:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    privateObservers = self->_privateObservers;
    if (privateObservers)
    {
      [(NSPointerArray *)privateObservers compact];
      if ([(NSPointerArray *)self->_privateObservers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_privateObservers pointerAtIndex:v5]!= observerCopy)
        {
          if (++v5 >= [(NSPointerArray *)self->_privateObservers count])
          {
            goto LABEL_9;
          }
        }

        [(NSPointerArray *)self->_privateObservers removePointerAtIndex:v5];
      }
    }
  }

LABEL_9:
}

- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [(MTVisualStylingProvider(Internal) *)a2 initWithCoreMaterialVisualStylingProvider:?];
  }

  v10.receiver = self;
  v10.super_class = MTVisualStylingProvider;
  v7 = [(MTVisualStylingProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_coreMaterialVisualStylingProvider, provider);
    [(MTCoreMaterialVisualStylingProvider *)v8->_coreMaterialVisualStylingProvider addObserver:v8];
  }

  return v8;
}

@end