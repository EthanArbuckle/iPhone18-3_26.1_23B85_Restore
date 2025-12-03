@interface HUAccessorySceneListItemManager
- (HUAccessorySceneListItemManager)initWithDelegate:(id)delegate serviceLikeItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUAccessorySceneListItemManager

- (HUAccessorySceneListItemManager)initWithDelegate:(id)delegate serviceLikeItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = HUAccessorySceneListItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceLikeItem, item);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v22[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [HUAccessorySceneListContentItem alloc];
  serviceLikeItem = [(HUAccessorySceneListItemManager *)self serviceLikeItem];
  v7 = [(HUAccessorySceneListContentItem *)v5 initWithContentSource:0 serviceLikeItem:serviceLikeItem home:homeCopy];
  existingScenesContentItem = self->_existingScenesContentItem;
  self->_existingScenesContentItem = v7;

  v9 = [HUAccessorySceneListContentItem alloc];
  serviceLikeItem2 = [(HUAccessorySceneListItemManager *)self serviceLikeItem];
  v11 = [(HUAccessorySceneListContentItem *)v9 initWithContentSource:1 serviceLikeItem:serviceLikeItem2 home:homeCopy];

  suggestedScenesContentItem = self->_suggestedScenesContentItem;
  self->_suggestedScenesContentItem = v11;

  existingScenesContentItem = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
  v22[0] = existingScenesContentItem;
  suggestedScenesContentItem = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
  v22[1] = suggestedScenesContentItem;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = [MEMORY[0x277CBEB98] setWithArray:v15];
  v18 = [v16 initWithItems:v17];
  v21 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  return v19;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v21[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  existingScenesContentItem = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
  v7 = [itemsCopy containsObject:existingScenesContentItem];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"existingScenes"];
    v9 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListIncludedScenesHeaderTitle", @"HUAccessorySceneListIncludedScenesHeaderTitle", 1);
    [v8 setHeaderTitle:v9];

    existingScenesContentItem2 = [(HUAccessorySceneListItemManager *)self existingScenesContentItem];
    v21[0] = existingScenesContentItem2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v8 setItems:v11];

    [v5 addObject:v8];
  }

  suggestedScenesContentItem = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
  v13 = [itemsCopy containsObject:suggestedScenesContentItem];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"suggestedScenes"];
    v15 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListSuggestedScenesHeaderTitle", @"HUAccessorySceneListSuggestedScenesHeaderTitle", 1);
    [v14 setHeaderTitle:v15];

    suggestedScenesContentItem2 = [(HUAccessorySceneListItemManager *)self suggestedScenesContentItem];
    v20 = suggestedScenesContentItem2;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v14 setItems:v17];

    [v5 addObject:v14];
  }

  v18 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v18;
}

@end