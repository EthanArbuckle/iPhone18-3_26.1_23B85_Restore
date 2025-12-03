@interface HUTriggerActionEditorItemManager
- (HUTriggerActionEditorItemManager)initWithDelegate:(id)delegate showShortcutItem:(BOOL)item;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUTriggerActionEditorItemManager

- (HUTriggerActionEditorItemManager)initWithDelegate:(id)delegate showShortcutItem:(BOOL)item
{
  itemCopy = item;
  v30[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v7 = objc_opt_new();
  v8 = [HUViewControllerTableViewItem alloc];
  v9 = [(HFStaticItem *)v8 initWithResults:MEMORY[0x277CBEC10]];
  [v7 addObject:v9];
  if (itemCopy)
  {
    v10 = [HUTriggerHeaderItem alloc];
    v29 = *MEMORY[0x277D13F60];
    v11 = v29;
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorShortcutSectionTitle", @"HUTriggerActionEditorShortcutSectionTitle", 1);
    v30[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v14 = [(HFStaticItem *)v10 initWithResults:v13];

    [v7 addObject:v14];
    v15 = [HUButtonItem alloc];
    v27[0] = v11;
    v16 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorConvertToShortcutTitle", @"HUTriggerActionEditorConvertToShortcutTitle", 1);
    v27[1] = *MEMORY[0x277D13FB8];
    v28[0] = v16;
    v28[1] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v18 = [(HFStaticItem *)v15 initWithResults:v17];

    [v7 addObject:v18];
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__HUTriggerActionEditorItemManager_initWithDelegate_showShortcutItem___block_invoke;
  v25[3] = &unk_277DBA3D0;
  v19 = v7;
  v26 = v19;
  v24.receiver = self;
  v24.super_class = HUTriggerActionEditorItemManager;
  v20 = [(HFSimpleItemManager *)&v24 initWithDelegate:delegateCopy itemProvidersCreator:v25];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_gridItem, v9);
    objc_storeStrong(&v21->_addShortcutHeader, v14);
    objc_storeStrong(&v21->_addShortcutItem, v18);
    v22 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v19];
    [(HFSimpleItemManager *)v21 setItemComparator:v22];
  }

  return v21;
}

id __70__HUTriggerActionEditorItemManager_initWithDelegate_showShortcutItem___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D14B40]);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v4 = [v2 initWithItems:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v19[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionEditorItemManagerGridSectionIdentifier"];
  gridItem = [(HUTriggerActionEditorItemManager *)self gridItem];
  v19[0] = gridItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v5 setItems:v7];

  [array addObject:v5];
  addShortcutHeader = [(HUTriggerActionEditorItemManager *)self addShortcutHeader];

  if (addShortcutHeader)
  {
    v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionEditorItemManagerShortcutsHeaderSectionIdentifier"];
    addShortcutHeader2 = [(HUTriggerActionEditorItemManager *)self addShortcutHeader];
    v18 = addShortcutHeader2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v9 setItems:v11];

    [array addObject:v9];
  }

  addShortcutItem = [(HUTriggerActionEditorItemManager *)self addShortcutItem];

  if (addShortcutItem)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionEditorItemManagerShortcutsItemSectionIdentifier"];
    addShortcutItem2 = [(HUTriggerActionEditorItemManager *)self addShortcutItem];
    v17 = addShortcutItem2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v13 setItems:v15];

    [array addObject:v13];
  }

  return array;
}

@end