@interface TabCloseUndoAction
- (TabCloseUndoAction)initWithTabs:(id)tabs tabOrderIndexes:(id)indexes pinnedTabsContainer:(id)container;
- (unint64_t)orderIndexForTab:(id)tab;
@end

@implementation TabCloseUndoAction

- (TabCloseUndoAction)initWithTabs:(id)tabs tabOrderIndexes:(id)indexes pinnedTabsContainer:(id)container
{
  tabsCopy = tabs;
  indexesCopy = indexes;
  containerCopy = container;
  v26.receiver = self;
  v26.super_class = TabCloseUndoAction;
  v11 = [(TabCloseUndoAction *)&v26 init];
  if (v11)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__TabCloseUndoAction_initWithTabs_tabOrderIndexes_pinnedTabsContainer___block_invoke;
    v24[3] = &unk_2781D5E00;
    v12 = indexesCopy;
    v25 = v12;
    v13 = [tabsCopy sortedArrayUsingComparator:v24];
    v14 = [v13 copy];
    allTabs = v11->_allTabs;
    v11->_allTabs = v14;

    v16 = [v13 safari_filterObjectsUsingBlock:&__block_literal_global_4];
    globallyPinnedTabs = v11->_globallyPinnedTabs;
    v11->_globallyPinnedTabs = v16;

    objc_storeStrong(&v11->_pinnedTabsContainer, container);
    v18 = [v12 copy];
    tabOrderIndexes = v11->_tabOrderIndexes;
    v11->_tabOrderIndexes = v18;

    v20 = [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:v13 groupedUsingBlock:&__block_literal_global_4];
    tabsByTabGroupUUID = v11->_tabsByTabGroupUUID;
    v11->_tabsByTabGroupUUID = v20;

    v22 = v11;
  }

  return v11;
}

uint64_t __71__TabCloseUndoAction_initWithTabs_tabOrderIndexes_pinnedTabsContainer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

BOOL __71__TabCloseUndoAction_initWithTabs_tabOrderIndexes_pinnedTabsContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 tabGroupUUID];
  v3 = v2 == 0;

  return v3;
}

- (unint64_t)orderIndexForTab:(id)tab
{
  v3 = [(NSDictionary *)self->_tabOrderIndexes objectForKeyedSubscript:tab];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

@end