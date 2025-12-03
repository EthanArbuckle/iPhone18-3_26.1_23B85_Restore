@interface HUQuickControlCollectionItemManager
- (BOOL)isGridItem:(id)item;
- (HUQuickControlCollectionItemManager)initWithDelegate:(id)delegate gridItemProviderCreator:(id)creator supplementaryItemProviderCreator:(id)providerCreator;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUQuickControlCollectionItemManager

- (HUQuickControlCollectionItemManager)initWithDelegate:(id)delegate gridItemProviderCreator:(id)creator supplementaryItemProviderCreator:(id)providerCreator
{
  delegateCopy = delegate;
  creatorCopy = creator;
  providerCreatorCopy = providerCreator;
  if (!creatorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlCollectionItemManager.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"gridItemProviderCreator"}];
  }

  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionItemManager;
  v12 = [(HFItemManager *)&v19 initWithDelegate:delegateCopy sourceItem:0];
  if (v12)
  {
    v13 = _Block_copy(creatorCopy);
    gridItemProviderCreator = v12->_gridItemProviderCreator;
    v12->_gridItemProviderCreator = v13;

    v15 = _Block_copy(providerCreatorCopy);
    supplementaryItemProviderCreator = v12->_supplementaryItemProviderCreator;
    v12->_supplementaryItemProviderCreator = v15;
  }

  return v12;
}

- (BOOL)isGridItem:(id)item
{
  itemCopy = item;
  gridItemProvider = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  items = [gridItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  gridItemProviderCreator = [(HUQuickControlCollectionItemManager *)self gridItemProviderCreator];
  v6 = (gridItemProviderCreator)[2](gridItemProviderCreator, homeCopy);
  [(HUQuickControlCollectionItemManager *)self setGridItemProvider:v6];

  v7 = MEMORY[0x277CBEB18];
  gridItemProvider = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  v9 = [v7 arrayWithObject:gridItemProvider];

  supplementaryItemProviderCreator = [(HUQuickControlCollectionItemManager *)self supplementaryItemProviderCreator];

  if (supplementaryItemProviderCreator)
  {
    supplementaryItemProviderCreator2 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProviderCreator];
    v12 = (supplementaryItemProviderCreator2)[2](supplementaryItemProviderCreator2, homeCopy);
    [(HUQuickControlCollectionItemManager *)self setSupplementaryItemProvider:v12];

    supplementaryItemProvider = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];
    [v9 addObject:supplementaryItemProvider];
  }

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"grid"];
  gridItemProvider = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  items = [gridItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v6 setItems:v11];

  [v5 addObject:v6];
  supplementaryItemProvider = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];

  if (supplementaryItemProvider)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"supplementary"];
    supplementaryItemProvider2 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];
    items2 = [supplementaryItemProvider2 items];
    allObjects2 = [items2 allObjects];
    defaultItemComparator2 = [MEMORY[0x277D14778] defaultItemComparator];
    v18 = [allObjects2 sortedArrayUsingComparator:defaultItemComparator2];
    [v13 setItems:v18];

    [v5 addObject:v13];
  }

  v19 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v19;
}

@end