@interface MTVisualStylingProvider
+ (id)_visualStylingProviderForRecipe:(int64_t)a3 category:(int64_t)a4 andUserInterfaceStyle:(int64_t)a5;
+ (id)_visualStylingProviderForRecipeNamed:(id)a3 andCategory:(int64_t)a4;
+ (id)_visualStylingProviderForStyleSetNamed:(id)a3 inBundle:(id)a4;
- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)a3;
- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)a3;
- (id)_visualStylingForContinuallyUpdatedView:(id)a3;
- (id)_visualStylingForStyle:(int64_t)a3;
- (id)_visualStylingForStyleNamed:(id)a3;
- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)a3;
- (void)_addObserver:(id)a3;
- (void)_automaticallyUpdateViewOrLayer:(id)a3 withStyleNamed:(id)a4 andObserverBlock:(id)a5;
- (void)_removeObserver:(id)a3;
- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)a3;
- (void)_updateVisualStyleOfViewOrLayer:(id)a3;
- (void)automaticallyUpdateLayer:(id)a3 withStyle:(int64_t)a4 andObserverBlock:(id)a5;
- (void)automaticallyUpdateView:(id)a3 withStyle:(int64_t)a4 andObserverBlock:(id)a5;
- (void)providedStylesDidChangeForProvider:(id)a3;
@end

@implementation MTVisualStylingProvider

- (void)automaticallyUpdateView:(id)a3 withStyle:(int64_t)a4 andObserverBlock:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (v10 && MTIsValidVisualStyle(a4))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(a4);
    [(MTVisualStylingProvider *)self _automaticallyUpdateViewOrLayer:v10 withStyleNamed:v9 andObserverBlock:v8];
  }
}

- (void)automaticallyUpdateLayer:(id)a3 withStyle:(int64_t)a4 andObserverBlock:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (v10 && MTIsValidVisualStyle(a4))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(a4);
    [(MTVisualStylingProvider *)self _automaticallyUpdateViewOrLayer:v10 withStyleNamed:v9 andObserverBlock:v8];
  }
}

- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setUserInteractionEnabled:0];
  [(MTVisualStylingProvider *)self automaticallyUpdateView:v5 withStyle:a3 andObserverBlock:&__block_literal_global_3];
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

- (void)providedStylesDidChangeForProvider:(id)a3
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

- (void)_automaticallyUpdateViewOrLayer:(id)a3 withStyleNamed:(id)a4 andObserverBlock:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (v19)
  {
    v10 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:v8];

    if (v10)
    {
      viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      if (!viewsAndLayersToCoreMaterialVisualStyles)
      {
        v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v13 = self->_viewsAndLayersToCoreMaterialVisualStyles;
        self->_viewsAndLayersToCoreMaterialVisualStyles = v12;

        viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      }

      [(NSMapTable *)viewsAndLayersToCoreMaterialVisualStyles setObject:v8 forKey:v19];
      if (v9)
      {
        viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        if (!viewsAndLayersToObserverBlocks)
        {
          v15 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          v16 = self->_viewsAndLayersToObserverBlocks;
          self->_viewsAndLayersToObserverBlocks = v15;

          viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        }

        v17 = [v9 copy];
        v18 = MEMORY[0x223D601D0]();
        [(NSMapTable *)viewsAndLayersToObserverBlocks setObject:v18 forKey:v19];
      }

      [(MTVisualStylingProvider *)self _updateVisualStyleOfViewOrLayer:v19];
    }
  }
}

- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)a3
{
  if (a3)
  {
    viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
    v5 = a3;
    [(NSMapTable *)viewsAndLayersToCoreMaterialVisualStyles removeObjectForKey:v5];
    [(NSMapTable *)self->_viewsAndLayersToObserverBlocks removeObjectForKey:v5];
  }
}

- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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

          if (*(*(&v10 + 1) + 8 * i) == v4)
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

- (void)_updateVisualStyleOfViewOrLayer:(id)a3
{
  v9 = a3;
  v4 = [(NSMapTable *)self->_viewsAndLayersToCoreMaterialVisualStyles objectForKey:?];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [(NSMapTable *)self->_viewsAndLayersToObserverBlocks objectForKey:v9];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self, v9);
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:v4];
    [v9 mt_replaceVisualStyling:v8];
LABEL_9:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:v4];
    [v9 mt_replaceAllVisualStylingWithStyling:v8];
    goto LABEL_9;
  }

LABEL_10:
  if (v7)
  {
    (v7)[2](v7, self, v9);
  }

LABEL_13:
}

+ (id)_visualStylingProviderForRecipe:(int64_t)a3 category:(int64_t)a4 andUserInterfaceStyle:(int64_t)a5
{
  if (a3)
  {
    v7 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(a3, a5);
    v8 = [a1 _visualStylingProviderForRecipeNamed:v7 andCategory:a4];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v7 = MTCoreMaterialPlatformColorsStyleNameForUserInterfaceStyle(a5);
    v8 = [a1 _visualStylingProviderForStyleSetNamed:v7 inBundle:0];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)_visualStylingProviderForRecipeNamed:(id)a3 andCategory:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(a4);
    if (v7)
    {
      v8 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForRecipe:v6 andCategory:v7];
      if (v8)
      {
        v9 = [[a1 alloc] initWithCoreMaterialVisualStylingProvider:v8];
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

+ (id)_visualStylingProviderForStyleSetNamed:(id)a3 inBundle:(id)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForStyleSetNamed:a3 inBundle:a4];
    if (v5)
    {
      v6 = [[a1 alloc] initWithCoreMaterialVisualStylingProvider:v5];
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

- (id)_visualStylingForStyle:(int64_t)a3
{
  v4 = MTCoreMaterialVisualStyleForVisualStyle(a3);
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

- (id)_visualStylingForStyleNamed:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:v4];
    if (!v5)
    {
      v6 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:v4];
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

        [(NSMutableDictionary *)styleNamesToVisualStylings setObject:v5 forKey:v4];
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

- (id)_visualStylingForContinuallyUpdatedView:(id)a3
{
  if (a3)
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

- (void)_addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    privateObservers = self->_privateObservers;
    v8 = v4;
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

- (void)_removeObserver:(id)a3
{
  v6 = a3;
  if (v6)
  {
    privateObservers = self->_privateObservers;
    if (privateObservers)
    {
      [(NSPointerArray *)privateObservers compact];
      if ([(NSPointerArray *)self->_privateObservers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_privateObservers pointerAtIndex:v5]!= v6)
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

- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(MTVisualStylingProvider(Internal) *)a2 initWithCoreMaterialVisualStylingProvider:?];
  }

  v10.receiver = self;
  v10.super_class = MTVisualStylingProvider;
  v7 = [(MTVisualStylingProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_coreMaterialVisualStylingProvider, a3);
    [(MTCoreMaterialVisualStylingProvider *)v8->_coreMaterialVisualStylingProvider addObserver:v8];
  }

  return v8;
}

@end