@interface HFItemModule
- (BOOL)containsItem:(id)a3;
- (BOOL)supportsReordering;
- (HFItemModule)init;
- (HFItemModule)initWithItemUpdater:(id)a3;
- (HFItemUpdating)itemUpdater;
- (HFReorderableHomeKitItemList)reorderableHomeKitItemList;
- (NSSet)allItems;
- (NSSet)itemProviders;
- (id)_itemComparator;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)matchingItemForHomeKitObject:(id)a3;
- (void)setReorderableHomeKitItemList:(id)a3;
- (void)updateModuleIdentifierInItems;
@end

@implementation HFItemModule

- (HFItemModule)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItemUpdater_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemModule.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFItemModule init]", v5}];

  return 0;
}

- (HFItemModule)initWithItemUpdater:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HFItemModule;
  v5 = [(HFItemModule *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_itemUpdater, v4);
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"%@-%p", v9, v6];
    moduleIdentifier = v6->_moduleIdentifier;
    v6->_moduleIdentifier = v10;
  }

  return v6;
}

- (NSSet)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders || ([(HFItemModule *)self buildItemProviders], v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_itemProviders, self->_itemProviders = v5, v6, (itemProviders = self->_itemProviders) != 0))
  {
    v7 = itemProviders;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"HFItemModule.m" lineNumber:47 description:{@"%@ must either override itemProviders or buildItemProviders, but does not", v11}];

    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFItemModule.m" lineNumber:58 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemModule buildSectionsWithDisplayedItems:]", objc_opt_class()}];

  return MEMORY[0x277CBEBF8];
}

- (void)updateModuleIdentifierInItems
{
  v3 = [(HFItemModule *)self allItems];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HFItemModule_updateModuleIdentifierInItems__block_invoke;
  v4[3] = &unk_277DF94B8;
  v4[4] = self;
  [v3 na_each:v4];
}

void __45__HFItemModule_updateModuleIdentifierInItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 moduleIdentifier];
  [v3 setModuleIdentifier:v4];
}

- (NSSet)allItems
{
  v2 = [(HFItemModule *)self itemProviders];
  v3 = [v2 na_flatMap:&__block_literal_global_162];

  return v3;
}

- (BOOL)containsItem:(id)a3
{
  v4 = a3;
  v5 = [(HFItemModule *)self itemProviders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__HFItemModule_containsItem___block_invoke;
  v9[3] = &unk_277DF6898;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

uint64_t __29__HFItemModule_containsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (BOOL)supportsReordering
{
  v2 = [(HFItemModule *)self _reorderableHomeKitItemListKey];
  v3 = v2 != 0;

  return v3;
}

- (HFReorderableHomeKitItemList)reorderableHomeKitItemList
{
  if ([(HFItemModule *)self supportsReordering])
  {
    v3 = [(HFItemModule *)self clientReorderableHomeKitItemList];

    if (v3)
    {
      v4 = [(HFItemModule *)self clientReorderableHomeKitItemList];
    }

    else
    {
      v5 = [(HFItemModule *)self itemUpdater];
      v6 = [v5 sourceItem];
      v7 = [v6 latestResults];
      v8 = [(HFItemModule *)self _reorderableHomeKitItemListKey];
      v4 = [v7 objectForKeyedSubscript:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setReorderableHomeKitItemList:(id)a3
{
  v4 = a3;
  if ([(HFItemModule *)self supportsReordering])
  {
    [(HFItemModule *)self setClientReorderableHomeKitItemList:v4];
  }
}

- (id)_itemComparator
{
  v2 = [(HFItemModule *)self reorderableHomeKitItemList];
  v3 = [v2 sortedHomeKitItemComparator];
  v4 = v3;
  if (v3)
  {
    v5 = _Block_copy(v3);
  }

  else
  {
    v6 = +[HFItemSection defaultItemComparator];
    v5 = _Block_copy(v6);
  }

  return v5;
}

- (id)matchingItemForHomeKitObject:(id)a3
{
  v4 = a3;
  v5 = [(HFItemModule *)self allItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HFItemModule_matchingItemForHomeKitObject___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__HFItemModule_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28252A8F8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 homeKitObject];

  if (v5)
  {
    if ([v6 isEqual:*(a1 + 32)])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 uniqueIdentifier];
      v9 = [*(a1 + 32) uniqueIdentifier];
      v7 = [v8 isEqual:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HFItemUpdating)itemUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_itemUpdater);

  return WeakRetained;
}

@end