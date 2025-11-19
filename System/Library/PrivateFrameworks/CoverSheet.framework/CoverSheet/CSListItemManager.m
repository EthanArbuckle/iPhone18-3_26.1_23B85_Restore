@interface CSListItemManager
+ (CSListItemManager)itemManagerWithItemContainer:(id)a3;
+ (CSListItemManager)itemManagerWithItemContainer:(id)a3 itemProviders:(id)a4;
- (CSListItemContaining)itemContainer;
- (id)_initWithItemContainer:(id)a3 itemProviders:(id)a4;
- (id)itemsGroupSortComparatorForListSectionIdentifier:(id)a3;
- (id)itemsViewControllerSortComparatorForListSectionIdentifier:(id)a3;
- (void)_restrictsTouches:(BOOL)a3 forSpecificContentHost:(id)a4;
- (void)addItem:(id)a3;
- (void)cancelTouchesForItem:(id)a3;
- (void)didAddNewSceneHostEnvironment;
- (void)handleRemovedItemsWithContentHosts:(id)a3;
- (void)item:(id)a3 requestsAuthenticationAndPerformBlock:(id)a4;
- (void)item:(id)a3 requestsModalPresentationOfViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)removeItem:(id)a3;
- (void)restrictsTouches:(BOOL)a3 onHostedSceneOfContentHost:(id)a4;
- (void)setListHasNotificationContent:(BOOL)a3;
- (void)setNowPlayingItem:(id)a3;
- (void)significantUserInteractionBeganForItem:(id)a3;
- (void)significantUserInteractionEndedForItem:(id)a3;
- (void)supplementaryViewsContainer:(id)a3 requestsCancelTouches:(BOOL)a4 onSupplementaryViewController:(id)a5;
- (void)supplementaryViewsContainer:(id)a3 requestsCancelTouchesOnAllSupplementaryViewControllers:(BOOL)a4;
- (void)updateItem:(id)a3;
- (void)willPresentPosterSwitcher;
@end

@implementation CSListItemManager

+ (CSListItemManager)itemManagerWithItemContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = CSListItemProvidingGetAllProviders();
  v6 = [v4 _initWithItemContainer:v3 itemProviders:v5];

  return v6;
}

+ (CSListItemManager)itemManagerWithItemContainer:(id)a3 itemProviders:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithItemContainer:v6 itemProviders:v5];

  return v7;
}

- (id)_initWithItemContainer:(id)a3 itemProviders:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = CSListItemManager;
  v8 = [(CSListItemManager *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_itemContainer, v6);
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
    v26 = v7;
    v15 = v7;
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
          v21 = [v20 section];
          v22 = [v21 identifier];
          [(NSDictionary *)v14 setObject:v20 forKey:v22];

          v23 = [v20 section];
          [v6 itemManager:v9 insertSection:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    v24 = v9->_identifiersToProviders;
    v9->_identifiersToProviders = v14;

    v7 = v26;
  }

  return v9;
}

- (void)setListHasNotificationContent:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_listHasNotificationContent != a3)
  {
    self->_listHasNotificationContent = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSDictionary *)self->_identifiersToProviders allValues];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 setListHasAdditionalContent:{self->_listHasNotificationContent | (-[CSListItemManager itemCount](self, "itemCount") != objc_msgSend(v9, "itemCount"))}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (id)itemsGroupSortComparatorForListSectionIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CSListItemManager_itemsGroupSortComparatorForListSectionIdentifier___block_invoke;
  v8[3] = &unk_27838DF60;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
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

- (id)itemsViewControllerSortComparatorForListSectionIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__CSListItemManager_itemsViewControllerSortComparatorForListSectionIdentifier___block_invoke;
  v8[3] = &unk_27838DF88;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
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
    v3 = [(CSListItemManager *)self identifiersToProviders];
    v4 = [v3 allValues];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
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

- (void)setNowPlayingItem:(id)a3
{
  v5 = a3;
  p_nowPlayingItem = &self->_nowPlayingItem;
  if (self->_nowPlayingItem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_nowPlayingItem, a3);
    WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
    [WeakRetained itemManager:self setNowPlayingItem:v8];
  }

  MEMORY[0x2821F9730](p_nowPlayingItem);
}

- (void)addItem:(id)a3
{
  v7 = a3;
  v4 = [v7 identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:v4];

  if (!v5)
  {
    [(NSMutableDictionary *)self->_identifiersToItems setObject:v7 forKey:v4];
    v6 = [(CSListItemManager *)self itemContainer];
    [v6 itemManager:self insertItem:v7];
  }
}

- (void)updateItem:(id)a3
{
  v7 = a3;
  v4 = [v7 identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:v4];

  if (v5)
  {
    v6 = [(CSListItemManager *)self itemContainer];
    [v6 itemManager:self updateItem:v7];
  }
}

- (void)removeItem:(id)a3
{
  v7 = a3;
  v4 = [v7 identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_identifiersToItems removeObjectForKey:v4];
    v6 = [(CSListItemManager *)self itemContainer];
    [v6 itemManager:self removeItem:v7];
  }
}

- (void)item:(id)a3 requestsModalPresentationOfViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self requestsModalPresentationOfViewController:v11 forItem:v12 animated:v6 completion:v10];
}

- (void)item:(id)a3 requestsAuthenticationAndPerformBlock:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self requestsAuthenticationAndPerformBlock:v5];
}

- (void)handleRemovedItemsWithContentHosts:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 contentHost];
        v13 = [v4 containsObject:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(CSListItemManager *)self identifiersToProviders];
  v15 = [v14 allValues];

  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v21 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v20 handleRemovedItems:v5];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }
}

- (void)cancelTouchesForItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self cancelTouchesForInteractionWithItem:v4];
}

- (void)restrictsTouches:(BOOL)a3 onHostedSceneOfContentHost:(id)a4
{
  if (a4)
  {
    [(CSListItemManager *)self _restrictsTouches:a3 forSpecificContentHost:?];
  }
}

- (void)significantUserInteractionBeganForItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self significantUserInteractionBeganWithItem:v4];
}

- (void)significantUserInteractionEndedForItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManager:self significantUserInteractionEndedWithItem:v4];
}

- (void)didAddNewSceneHostEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);
  [WeakRetained itemManagerDidAddNewSceneHostEnvironment];
}

- (void)supplementaryViewsContainer:(id)a3 requestsCancelTouches:(BOOL)a4 onSupplementaryViewController:(id)a5
{
  v5 = a4;
  v11 = a5;
  identifiersToProviders = self->_identifiersToProviders;
  v9 = [a3 identifier];
  v10 = [(NSDictionary *)identifiersToProviders objectForKey:v9];

  if (objc_opt_respondsToSelector())
  {
    [v10 restrictsTouches:v5 onHostedSceneInViewController:v11];
  }
}

- (void)supplementaryViewsContainer:(id)a3 requestsCancelTouchesOnAllSupplementaryViewControllers:(BOOL)a4
{
  v4 = a4;
  identifiersToProviders = self->_identifiersToProviders;
  v6 = [a3 identifier];
  v7 = [(NSDictionary *)identifiersToProviders objectForKey:v6];

  if (objc_opt_respondsToSelector())
  {
    [v7 restrictsTouchesOnAllHostedScenes:v4];
  }
}

- (void)_restrictsTouches:(BOOL)a3 forSpecificContentHost:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (!v6 || ([*(*(&v17 + 1) + 8 * v11) contentHost], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v6))
      {
        v14 = [v12 contentHost];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [v12 contentHost];
          [v16 setRestrictsTouchesOnHostedScene:v4];
        }

        if (v6)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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