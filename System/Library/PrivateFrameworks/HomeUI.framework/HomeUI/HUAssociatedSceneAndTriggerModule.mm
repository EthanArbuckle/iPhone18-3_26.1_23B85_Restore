@interface HUAssociatedSceneAndTriggerModule
- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)updater;
- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)updater home:(id)home serviceLikeItem:(id)item context:(unint64_t)context;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
@end

@implementation HUAssociatedSceneAndTriggerModule

- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_serviceLikeItem_context_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAssociatedSceneAndTriggerModule.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUAssociatedSceneAndTriggerModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)updater home:(id)home serviceLikeItem:(id)item context:(unint64_t)context
{
  v33[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  itemCopy = item;
  v30.receiver = self;
  v30.super_class = HUAssociatedSceneAndTriggerModule;
  v13 = [(HFItemModule *)&v30 initWithItemUpdater:updater];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v14->_serviceLikeItem, item);
    v14->_context = context;
    v15 = [[HUAssociatedSceneListItem alloc] initWithHome:homeCopy serviceLikeItem:itemCopy context:context];
    scenesItem = v14->_scenesItem;
    v14->_scenesItem = &v15->super;

    v17 = objc_alloc(MEMORY[0x277D14B38]);
    v32 = *MEMORY[0x277D13FB8];
    v33[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v19 = [v17 initWithResults:v18];
    triggersItem = v14->_triggersItem;
    v14->_triggersItem = v19;

    v21 = objc_alloc(MEMORY[0x277D14B40]);
    v22 = MEMORY[0x277CBEB98];
    scenesItem = [(HUAssociatedSceneAndTriggerModule *)v14 scenesItem];
    v31[0] = scenesItem;
    triggersItem = [(HUAssociatedSceneAndTriggerModule *)v14 triggersItem];
    v31[1] = triggersItem;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v26 = [v22 setWithArray:v25];
    v27 = [v21 initWithItems:v26];
    staticItemProvider = v14->_staticItemProvider;
    v14->_staticItemProvider = v27;
  }

  return v14;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  staticItemProvider = [(HUAssociatedSceneAndTriggerModule *)self staticItemProvider];
  v4 = [v2 setWithObject:staticItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"ScenesAndTriggers"];
  scenesItem = [(HUAssociatedSceneAndTriggerModule *)self scenesItem];
  v15[0] = scenesItem;
  triggersItem = [(HUAssociatedSceneAndTriggerModule *)self triggersItem];
  v15[1] = triggersItem;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v6 setItems:v9];

  v10 = MEMORY[0x277D14778];
  v14 = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [v10 filterSections:v11 toDisplayedItems:itemsCopy];

  return v12;
}

@end