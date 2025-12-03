@interface CSListItemManager
+ (CSListItemManager)itemManagerWithItemContainer:(id)container;
+ (CSListItemManager)itemManagerWithItemContainer:(id)container itemProviders:(id)providers;
- (CSListItemContaining)itemContainer;
- (id)_initWithItemContainer:(id)container itemProviders:(id)providers;
- (id)itemsGroupSortComparatorForListSectionIdentifier:(id)identifier;
- (id)itemsViewControllerSortComparatorForListSectionIdentifier:(id)identifier;
- (void)_restrictsTouches:(BOOL)touches forSpecificContentHost:(id)host;
- (void)addItem:(id)item;
- (void)cancelTouchesForItem:(id)item;
- (void)didAddNewSceneHostEnvironment;
- (void)handleRemovedItemsWithContentHosts:(id)hosts;
- (void)item:(id)item requestsAuthenticationAndPerformBlock:(id)block;
- (void)item:(id)item requestsModalPresentationOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeItem:(id)item;
- (void)restrictsTouches:(BOOL)touches onHostedSceneOfContentHost:(id)host;
- (void)setListHasNotificationContent:(BOOL)content;
- (void)setNowPlayingItem:(id)item;
- (void)significantUserInteractionBeganForItem:(id)item;
- (void)significantUserInteractionEndedForItem:(id)item;
- (void)supplementaryViewsContainer:(id)container requestsCancelTouches:(BOOL)touches onSupplementaryViewController:(id)controller;
- (void)supplementaryViewsContainer:(id)container requestsCancelTouchesOnAllSupplementaryViewControllers:(BOOL)controllers;
- (void)updateItem:(id)item;
- (void)willPresentPosterSwitcher;
@end

@implementation CSListItemManager

+ (CSListItemManager)itemManagerWithItemContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc(objc_opt_class());
  v5 = CSListItemProvidingGetAllProviders();
  v6 = [v4 _initWithItemContainer:containerCopy itemProviders:v5];

  return v6;
}

+ (CSListItemManager)itemManagerWithItemContainer:(id)container itemProviders:(id)providers
{
  providersCopy = providers;
  containerCopy = container;
  v7 = [objc_alloc(objc_opt_class()) _initWithItemContainer:containerCopy itemProviders:providersCopy];

  return v7;
}

- (id)_initWithItemContainer:(id)container itemProviders:(id)providers
{
  v33 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  providersCopy = providers;
  v31.receiver = self;
  v31.super_class = CSListItemManager;
  v8 = [(CSListItemManager *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_itemContainer, containerCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToItems = v9->_identifiersToItems;
    v9->_identifiersToItems = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToProviders = v9->_identifiersToProviders;
    v9->_identifiersToProviders = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = providersCopy;
    v15 = providersCopy;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          [v20 setItemManager:v9];
          section = [v20 section];
          identifier = [section identifier];
          [(NSDictionary *)v14 setObject:v20 forKey:identifier];

          section2 = [v20 section];
          [containerCopy itemManager:v9 insertSection:section2];
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    v24 = v9->_identifiersToProviders;
    v9->_identifiersToProviders = v14;

    providersCopy = v26;
  }

  return v9;
}

- (void)setListHasNotificationContent:(BOOL)content
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_listHasNotificationContent != content)
  {
    self->_listHasNotificationContent = content;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSDictionary *)self->_identifiersToProviders allValues];
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 setListHasAdditionalContent:{self->_listHasNotificationContent | (-[CSListItemManager itemCount](self, "itemCount") != objc_msgSend(v9, "itemCount"))}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (id)itemsGroupSortComparatorForListSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CSListItemManager_itemsGroupSortComparatorForListSectionIdentifier___block_invoke;
  v8[3] = &unk_27838DF60;
  objc_copyWeak(&v10, &location);
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = MEMORY[0x223D698D0](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

uint64_t __70__CSListItemManager_itemsGroupSortComparatorForListSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained identifiersToProviders];
    v10 = [v9 objectForKey:*(a1 + 32)];

    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v10 itemsGroupSortComparator];
      v12 = (v11)[2](v11, v5, v6);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)itemsViewControllerSortComparatorForListSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__CSListItemManager_itemsViewControllerSortComparatorForListSectionIdentifier___block_invoke;
  v8[3] = &unk_27838DF88;
  objc_copyWeak(&v10, &location);
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = MEMORY[0x223D698D0](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

uint64_t __79__CSListItemManager_itemsViewControllerSortComparatorForListSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained identifiersToProviders];
    v10 = [v9 objectForKey:*(a1 + 32)];

    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v10 itemsViewControllerSortComparator];
      v12 = (v11)[2](v11, v5, v6);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)willPresentPosterSwitcher
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(CSListItemManager *)self isPresentingSupplementaryContent])
  {
    identifiersToProviders = [(CSListItemManager *)self identifiersToProviders];
    allValues = [identifiersToProviders allValues];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = allValues;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 willPresentPosterSwitcher];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setNowPlayingItem:(id)item
{
  itemCopy = item;
  p_nowPlayingItem = &self->_nowPlayingItem;
  if (self->_nowPlayingItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_nowPlayingItem, item);
    WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
    [WeakRetained itemManager:self setNowPlayingItem:v8];
  }

  MEMORY[0x2821F9730](p_nowPlayingItem);
}

- (void)addItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:identifier];

  if (!v5)
  {
    [(NSMutableDictionary *)self->_identifiersToItems setObject:itemCopy forKey:identifier];
    itemContainer = [(CSListItemManager *)self itemContainer];
    [itemContainer itemManager:self insertItem:itemCopy];
  }
}

- (void)updateItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:identifier];

  if (v5)
  {
    itemContainer = [(CSListItemManager *)self itemContainer];
    [itemContainer itemManager:self updateItem:itemCopy];
  }
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:identifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_identifiersToItems removeObjectForKey:identifier];
    itemContainer = [(CSListItemManager *)self itemContainer];
    [itemContainer itemManager:self removeItem:itemCopy];
  }
}

- (void)item:(id)item requestsModalPresentationOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self requestsModalPresentationOfViewController:controllerCopy forItem:itemCopy animated:animatedCopy completion:completionCopy];
}

- (void)item:(id)item requestsAuthenticationAndPerformBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self requestsAuthenticationAndPerformBlock:blockCopy];
}

- (void)handleRemovedItemsWithContentHosts:(id)hosts
{
  v31 = *MEMORY[0x277D85DE8];
  hostsCopy = hosts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allValues = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v7 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        contentHost = [v11 contentHost];
        v13 = [hostsCopy containsObject:contentHost];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  identifiersToProviders = [(CSListItemManager *)self identifiersToProviders];
  allValues2 = [identifiersToProviders allValues];

  v16 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(allValues2);
        }

        v20 = *(*(&v21 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v20 handleRemovedItems:v5];
        }
      }

      v17 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }
}

- (void)cancelTouchesForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self cancelTouchesForInteractionWithItem:itemCopy];
}

- (void)restrictsTouches:(BOOL)touches onHostedSceneOfContentHost:(id)host
{
  if (host)
  {
    [(CSListItemManager *)self _restrictsTouches:touches forSpecificContentHost:?];
  }
}

- (void)significantUserInteractionBeganForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self significantUserInteractionBeganWithItem:itemCopy];
}

- (void)significantUserInteractionEndedForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self significantUserInteractionEndedWithItem:itemCopy];
}

- (void)didAddNewSceneHostEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManagerDidAddNewSceneHostEnvironment];
}

- (void)supplementaryViewsContainer:(id)container requestsCancelTouches:(BOOL)touches onSupplementaryViewController:(id)controller
{
  touchesCopy = touches;
  controllerCopy = controller;
  identifiersToProviders = self->_identifiersToProviders;
  identifier = [container identifier];
  v10 = [(NSDictionary *)identifiersToProviders objectForKey:identifier];

  if (objc_opt_respondsToSelector())
  {
    [v10 restrictsTouches:touchesCopy onHostedSceneInViewController:controllerCopy];
  }
}

- (void)supplementaryViewsContainer:(id)container requestsCancelTouchesOnAllSupplementaryViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  identifiersToProviders = self->_identifiersToProviders;
  identifier = [container identifier];
  v7 = [(NSDictionary *)identifiersToProviders objectForKey:identifier];

  if (objc_opt_respondsToSelector())
  {
    [v7 restrictsTouchesOnAllHostedScenes:controllersCopy];
  }
}

- (void)_restrictsTouches:(BOOL)touches forSpecificContentHost:(id)host
{
  touchesCopy = touches;
  v22 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(allValues);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (!hostCopy || ([*(*(&v17 + 1) + 8 * v11) contentHost], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == hostCopy))
      {
        contentHost = [v12 contentHost];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          contentHost2 = [v12 contentHost];
          [contentHost2 setRestrictsTouchesOnHostedScene:touchesCopy];
        }

        if (hostCopy)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (CSListItemContaining)itemContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);

  return WeakRetained;
}

@end