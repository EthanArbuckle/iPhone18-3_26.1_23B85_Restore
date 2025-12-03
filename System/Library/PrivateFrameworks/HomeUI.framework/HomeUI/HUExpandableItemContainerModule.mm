@interface HUExpandableItemContainerModule
- (BOOL)isOptionItem:(id)item;
- (BOOL)isShowOptionsItem:(id)item;
- (BOOL)shouldExpandModuleForShowOptionsItem:(id)item;
- (NSArray)expandableModules;
- (id)expandableModuleForItem:(id)item;
- (void)setModuleExpanded:(BOOL)expanded forItem:(id)item;
@end

@implementation HUExpandableItemContainerModule

- (NSArray)expandableModules
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUExpandableItemContainerModule.m" lineNumber:16 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUExpandableItemContainerModule expandableModules]", objc_opt_class()}];

  return MEMORY[0x277CBEBF8];
}

- (BOOL)isShowOptionsItem:(id)item
{
  itemCopy = item;
  expandableModules = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUExpandableItemContainerModule_isShowOptionsItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [expandableModules na_any:v9];

  return v7;
}

BOOL __53__HUExpandableItemContainerModule_isShowOptionsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 showOptionsItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (BOOL)isOptionItem:(id)item
{
  itemCopy = item;
  expandableModules = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HUExpandableItemContainerModule_isOptionItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [expandableModules na_any:v9];

  return v7;
}

BOOL __48__HUExpandableItemContainerModule_isOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allItems];
  if ([v4 containsObject:*(a1 + 32)])
  {
    v5 = [v3 showOptionsItem];
    v6 = v5 != *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldExpandModuleForShowOptionsItem:(id)item
{
  v3 = [(HUExpandableItemContainerModule *)self expandableModuleForItem:item];
  showOptions = [v3 showOptions];

  return showOptions;
}

- (void)setModuleExpanded:(BOOL)expanded forItem:(id)item
{
  expandedCopy = expanded;
  v7 = [(HUExpandableItemContainerModule *)self expandableModuleForItem:item];
  if ([v7 showOptions] != expandedCopy)
  {
    [v7 setShowOptions:expandedCopy];
    expandableModules = [(HUExpandableItemContainerModule *)self expandableModules];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HUExpandableItemContainerModule_setModuleExpanded_forItem___block_invoke;
    v14[3] = &unk_277DBFBB0;
    v15 = v7;
    [expandableModules na_each:v14];

    v9 = MEMORY[0x277D14788];
    itemProviders = [(HFItemModule *)self itemProviders];
    v11 = [v9 requestToReloadItemProviders:itemProviders senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v13 = [itemUpdater performItemUpdateRequest:v11];
  }
}

uint64_t __61__HUExpandableItemContainerModule_setModuleExpanded_forItem___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    return [a2 setShowOptions:0];
  }

  return result;
}

- (id)expandableModuleForItem:(id)item
{
  itemCopy = item;
  expandableModules = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUExpandableItemContainerModule_expandableModuleForItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [expandableModules na_firstObjectPassingTest:v9];

  return v7;
}

@end