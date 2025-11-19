@interface HUQuickControlCollectionItemManager
- (BOOL)isGridItem:(id)a3;
- (HUQuickControlCollectionItemManager)initWithDelegate:(id)a3 gridItemProviderCreator:(id)a4 supplementaryItemProviderCreator:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUQuickControlCollectionItemManager

- (HUQuickControlCollectionItemManager)initWithDelegate:(id)a3 gridItemProviderCreator:(id)a4 supplementaryItemProviderCreator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HUQuickControlCollectionItemManager.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"gridItemProviderCreator"}];
  }

  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionItemManager;
  v12 = [(HFItemManager *)&v19 initWithDelegate:v9 sourceItem:0];
  if (v12)
  {
    v13 = _Block_copy(v10);
    gridItemProviderCreator = v12->_gridItemProviderCreator;
    v12->_gridItemProviderCreator = v13;

    v15 = _Block_copy(v11);
    supplementaryItemProviderCreator = v12->_supplementaryItemProviderCreator;
    v12->_supplementaryItemProviderCreator = v15;
  }

  return v12;
}

- (BOOL)isGridItem:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlCollectionItemManager *)self gridItemProviderCreator];
  v6 = (v5)[2](v5, v4);
  [(HUQuickControlCollectionItemManager *)self setGridItemProvider:v6];

  v7 = MEMORY[0x277CBEB18];
  v8 = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  v9 = [v7 arrayWithObject:v8];

  v10 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProviderCreator];

  if (v10)
  {
    v11 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProviderCreator];
    v12 = (v11)[2](v11, v4);
    [(HUQuickControlCollectionItemManager *)self setSupplementaryItemProvider:v12];

    v13 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];
    [v9 addObject:v13];
  }

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"grid"];
  v7 = [(HUQuickControlCollectionItemManager *)self gridItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11];

  [v5 addObject:v6];
  v12 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"supplementary"];
    v14 = [(HUQuickControlCollectionItemManager *)self supplementaryItemProvider];
    v15 = [v14 items];
    v16 = [v15 allObjects];
    v17 = [MEMORY[0x277D14778] defaultItemComparator];
    v18 = [v16 sortedArrayUsingComparator:v17];
    [v13 setItems:v18];

    [v5 addObject:v13];
  }

  v19 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v19;
}

@end