@interface HUExpandableItemContainerModule
- (BOOL)isOptionItem:(id)a3;
- (BOOL)isShowOptionsItem:(id)a3;
- (BOOL)shouldExpandModuleForShowOptionsItem:(id)a3;
- (NSArray)expandableModules;
- (id)expandableModuleForItem:(id)a3;
- (void)setModuleExpanded:(BOOL)a3 forItem:(id)a4;
@end

@implementation HUExpandableItemContainerModule

- (NSArray)expandableModules
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUExpandableItemContainerModule.m" lineNumber:16 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUExpandableItemContainerModule expandableModules]", objc_opt_class()}];

  return MEMORY[0x277CBEBF8];
}

- (BOOL)isShowOptionsItem:(id)a3
{
  v4 = a3;
  v5 = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUExpandableItemContainerModule_isShowOptionsItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

BOOL __53__HUExpandableItemContainerModule_isShowOptionsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 showOptionsItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (BOOL)isOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HUExpandableItemContainerModule_isOptionItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

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

- (BOOL)shouldExpandModuleForShowOptionsItem:(id)a3
{
  v3 = [(HUExpandableItemContainerModule *)self expandableModuleForItem:a3];
  v4 = [v3 showOptions];

  return v4;
}

- (void)setModuleExpanded:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v7 = [(HUExpandableItemContainerModule *)self expandableModuleForItem:a4];
  if ([v7 showOptions] != v4)
  {
    [v7 setShowOptions:v4];
    v8 = [(HUExpandableItemContainerModule *)self expandableModules];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HUExpandableItemContainerModule_setModuleExpanded_forItem___block_invoke;
    v14[3] = &unk_277DBFBB0;
    v15 = v7;
    [v8 na_each:v14];

    v9 = MEMORY[0x277D14788];
    v10 = [(HFItemModule *)self itemProviders];
    v11 = [v9 requestToReloadItemProviders:v10 senderSelector:a2];

    v12 = [(HFItemModule *)self itemUpdater];
    v13 = [v12 performItemUpdateRequest:v11];
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

- (id)expandableModuleForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUExpandableItemContainerModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUExpandableItemContainerModule_expandableModuleForItem___block_invoke;
  v9[3] = &unk_277DBFB88;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

@end