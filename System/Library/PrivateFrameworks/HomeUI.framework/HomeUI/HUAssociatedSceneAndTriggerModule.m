@interface HUAssociatedSceneAndTriggerModule
- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)a3;
- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)a3 home:(id)a4 serviceLikeItem:(id)a5 context:(unint64_t)a6;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUAssociatedSceneAndTriggerModule

- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_serviceLikeItem_context_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAssociatedSceneAndTriggerModule.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUAssociatedSceneAndTriggerModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUAssociatedSceneAndTriggerModule)initWithItemUpdater:(id)a3 home:(id)a4 serviceLikeItem:(id)a5 context:(unint64_t)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v30.receiver = self;
  v30.super_class = HUAssociatedSceneAndTriggerModule;
  v13 = [(HFItemModule *)&v30 initWithItemUpdater:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, a4);
    objc_storeStrong(&v14->_serviceLikeItem, a5);
    v14->_context = a6;
    v15 = [[HUAssociatedSceneListItem alloc] initWithHome:v11 serviceLikeItem:v12 context:a6];
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
    v23 = [(HUAssociatedSceneAndTriggerModule *)v14 scenesItem];
    v31[0] = v23;
    v24 = [(HUAssociatedSceneAndTriggerModule *)v14 triggersItem];
    v31[1] = v24;
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
  v3 = [(HUAssociatedSceneAndTriggerModule *)self staticItemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"ScenesAndTriggers"];
  v7 = [(HUAssociatedSceneAndTriggerModule *)self scenesItem];
  v15[0] = v7;
  v8 = [(HUAssociatedSceneAndTriggerModule *)self triggersItem];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v6 setItems:v9];

  v10 = MEMORY[0x277D14778];
  v14 = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [v10 filterSections:v11 toDisplayedItems:v5];

  return v12;
}

@end