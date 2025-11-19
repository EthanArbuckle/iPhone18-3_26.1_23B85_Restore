@interface HUAccessorySceneListItemManager
- (HUAccessorySceneListItemManager)initWithDelegate:(id)a3 serviceLikeItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUAccessorySceneListItemManager

- (HUAccessorySceneListItemManager)initWithDelegate:(id)a3 serviceLikeItem:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUAccessorySceneListItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceLikeItem, a4);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUAccessorySceneListContentItem alloc];
  v6 = [(HUAccessorySceneListItemManager *)self serviceLikeItem];
  v7 = [(HUAccessorySceneListContentItem *)v5 initWithContentSource:0 serviceLikeItem:v6 home:v4];
  existingScenesContentItem = self->_existingScenesContentItem;
  self->_existingScenesContentItem = v7;

  v9 = [HUAccessorySceneListContentItem alloc];
  v10 = [(HUAccessorySceneListItemManager *)self serviceLikeItem];
  v11 = [(HUAccessorySceneListContentItem *)v9 initWithContentSource:1 serviceLikeItem:v10 home:v4];

  suggestedScenesContentItem = self->_suggestedScenesContentItem;
  self->_suggestedScenesContentItem = v11;

  v13 = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
  v22[0] = v13;
  v14 = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
  v22[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = [MEMORY[0x277CBEB98] setWithArray:v15];
  v18 = [v16 initWithItems:v17];
  v21 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  return v19;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"existingScenes"];
    v9 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListIncludedScenesHeaderTitle", @"HUAccessorySceneListIncludedScenesHeaderTitle", 1);
    [v8 setHeaderTitle:v9];

    v10 = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
    v21[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v8 setItems:v11];

    [v5 addObject:v8];
  }

  v12 = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
  v13 = [v4 containsObject:v12];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"suggestedScenes"];
    v15 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListSuggestedScenesHeaderTitle", @"HUAccessorySceneListSuggestedScenesHeaderTitle", 1);
    [v14 setHeaderTitle:v15];

    v16 = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
    v20 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v14 setItems:v17];

    [v5 addObject:v14];
  }

  v18 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v18;
}

@end