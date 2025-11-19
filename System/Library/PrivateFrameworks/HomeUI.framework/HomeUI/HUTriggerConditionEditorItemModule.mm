@interface HUTriggerConditionEditorItemModule
- (BOOL)_isConditionOptionItem:(id)a3 ofType:(unint64_t)a4;
- (BOOL)doesConditionOptionItemRequireInitialConfiguration:(id)a3;
- (BOOL)isConditionOptionItem:(id)a3;
- (BOOL)isCustomConditionSwitchItem:(id)a3;
- (BOOL)isShowConditionOptionsItem:(id)a3;
- (BOOL)shouldShowConditionOptionsForType:(unint64_t)a3;
- (HUTriggerConditionEditorItemModule)initWithItemUpdater:(id)a3 home:(id)a4 conditionCollection:(id)a5 disallowedConditionTypes:(id)a6;
- (id)_allSectionModules;
- (id)_expandingSectionModuleForConditionType:(unint64_t)a3;
- (id)_expandingSectionModules;
- (id)_moduleForConditionOptionItem:(id)a3;
- (id)_sectionModuleForItem:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)conditionForOptionItem:(id)a3;
- (unint64_t)conditionTypeForItem:(id)a3;
- (void)_buildItemProviders;
- (void)_reloadConditionForExpandingSectionModule:(id)a3 remainingConditions:(id)a4;
- (void)_reloadConditionsFromConditionCollection;
- (void)conditionCollectionDidChange;
- (void)setCustomConditionEnabled:(BOOL)a3 forItem:(id)a4;
- (void)setSelectedConditionOptionItem:(id)a3 forType:(unint64_t)a4;
- (void)setShowConditionOptions:(BOOL)a3 forType:(unint64_t)a4;
- (void)updateCondition:(id)a3 forOptionItem:(id)a4;
@end

@implementation HUTriggerConditionEditorItemModule

- (HUTriggerConditionEditorItemModule)initWithItemUpdater:(id)a3 home:(id)a4 conditionCollection:(id)a5 disallowedConditionTypes:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HUTriggerConditionEditorItemModule;
  v14 = [(HFItemModule *)&v17 initWithItemUpdater:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, a4);
    objc_storeStrong(&v15->_conditionCollection, a5);
    objc_storeStrong(&v15->_disallowedConditionTypes, a6);
    [(HUTriggerConditionEditorItemModule *)v15 _buildItemProviders];
  }

  return v15;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [(HUTriggerConditionEditorItemModule *)self disallowedConditionTypes];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "conditionType")}];
        v12 = [v10 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v9 buildSectionsWithDisplayedItems:v21];
          v14 = [v13 na_flatMap:&__block_literal_global_199];
          [v20 addObjectsFromArray:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Conditions"];
  [v15 setItems:v20];
  v16 = MEMORY[0x277D14778];
  v26 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:v21];

  return v18;
}

- (BOOL)isConditionOptionItem:(id)a3
{
  v3 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)doesConditionOptionItemRequireInitialConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:v4];
  v6 = [v5 doesOptionItemRequireInitialUserConfiguration:v4];

  return v6;
}

- (id)conditionForOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:v4];
  if (!v5)
  {
    NSLog(&cfstr_UnrecognizedOp.isa, v4);
  }

  v6 = [v5 conditionForOptionItem:v4];

  return v6;
}

- (void)updateCondition:(id)a3 forOptionItem:(id)a4
{
  v19 = a3;
  v7 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:a4];
  v8 = [v7 selectedOptionItem];

  if (v8)
  {
    v9 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
    v10 = [v7 selectedOptionItem];
    v11 = [v7 conditionForOptionItem:v10];
    [v9 removeCondition:v11];
  }

  v12 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
  [v12 addCondition:v19];

  v13 = [v7 updateSelectionWithCondition:v19];
  v14 = MEMORY[0x277D14788];
  v15 = [v7 itemProviders];
  v16 = [v14 requestToReloadItemProviders:v15 senderSelector:a2];

  v17 = [(HFItemModule *)self itemUpdater];
  v18 = [v17 performItemUpdateRequest:v16];
}

- (unint64_t)conditionTypeForItem:(id)a3
{
  v5 = a3;
  v6 = [(HUTriggerConditionEditorItemModule *)self _sectionModuleForItem:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 conditionType];
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModule.m" lineNumber:96 description:{@"Unknown item %@", v5}];

    v8 = 2;
  }

  return v8;
}

- (void)conditionCollectionDidChange
{
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionsFromConditionCollection];
  v4 = MEMORY[0x277D14788];
  v5 = [(HUTriggerConditionEditorItemModule *)self itemProviders];
  v8 = [v4 requestToReloadItemProviders:v5 senderSelector:a2];

  v6 = [(HFItemModule *)self itemUpdater];
  v7 = [v6 performItemUpdateRequest:v8];
}

- (BOOL)shouldShowConditionOptionsForType:(unint64_t)a3
{
  v3 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:a3];
  v4 = [v3 showOptions];

  return v4;
}

- (void)setShowConditionOptions:(BOOL)a3 forType:(unint64_t)a4
{
  v4 = a3;
  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:a4];
  if ([v7 showOptions] != v4)
  {
    [v7 setShowOptions:v4];
    v8 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__HUTriggerConditionEditorItemModule_setShowConditionOptions_forType___block_invoke;
    v14[3] = &unk_277DC0FA0;
    v15 = v7;
    [v8 na_each:v14];

    v9 = MEMORY[0x277D14788];
    v10 = [(HUTriggerConditionEditorItemModule *)self itemProviders];
    v11 = [v9 requestToReloadItemProviders:v10 senderSelector:a2];

    v12 = [(HFItemModule *)self itemUpdater];
    v13 = [v12 performItemUpdateRequest:v11];
  }
}

uint64_t __70__HUTriggerConditionEditorItemModule_setShowConditionOptions_forType___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    return [a2 setShowOptions:0];
  }

  return result;
}

- (void)setSelectedConditionOptionItem:(id)a3 forType:(unint64_t)a4
{
  v19 = a3;
  if (v19 && ![(HUTriggerConditionEditorItemModule *)self _isConditionOptionItem:v19 ofType:a4])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModule.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"!item || [self _isConditionOptionItem:item ofType:type]"}];
  }

  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:a4];
  v8 = [v7 selectedOptionItem];

  if (v8 != v19)
  {
    v9 = [v7 condition];
    v10 = [v7 selectOptionItem:v19];
    if (v9)
    {
      v11 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
      [v11 removeCondition:v9];
    }

    if (v10)
    {
      v12 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
      [v12 addCondition:v10];
    }

    v13 = MEMORY[0x277D14788];
    v14 = [v7 itemProviders];
    v15 = [v13 requestToReloadItemProviders:v14 senderSelector:a2];

    v16 = [(HFItemModule *)self itemUpdater];
    v17 = [v16 performItemUpdateRequest:v15];
  }
}

- (BOOL)isShowConditionOptionsItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HUTriggerConditionEditorItemModule_isShowConditionOptionsItem___block_invoke;
  v9[3] = &unk_277DC0FC8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

BOOL __65__HUTriggerConditionEditorItemModule_isShowConditionOptionsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 showOptionsItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)setCustomConditionEnabled:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v19 = a4;
  v7 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v8 = [v7 conditionForItem:v19];

  v9 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v10 = [v9 isConditionEnabled:v8];

  if (v10 != v4)
  {
    v11 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
    [v11 setConditionEnabled:v4 forCondition:v8];

    v12 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
    v13 = v12;
    if (v4)
    {
      [v12 addCondition:v8];
    }

    else
    {
      [v12 removeCondition:v8];
    }

    v14 = MEMORY[0x277D14788];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v19];
    v16 = [v14 requestToUpdateItems:v15 senderSelector:a2];

    v17 = [(HFItemModule *)self itemUpdater];
    v18 = [v17 performItemUpdateRequest:v16];
  }
}

- (BOOL)isCustomConditionSwitchItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v6 = [v5 containsItem:v4];

  return v6;
}

- (void)_buildItemProviders
{
  v3 = [(HFItemModule *)self itemUpdater];
  v4 = [(HUTriggerConditionEditorItemModule *)self home];
  v5 = [HUTriggerConditionEditorExpandingSectionModule sectionModuleForConditionType:0 itemUpdater:v3 home:v4];
  [(HUTriggerConditionEditorItemModule *)self setTimeConditionModule:v5];

  v6 = [(HFItemModule *)self itemUpdater];
  v7 = [(HUTriggerConditionEditorItemModule *)self home];
  v8 = [HUTriggerConditionEditorExpandingSectionModule sectionModuleForConditionType:1 itemUpdater:v6 home:v7];
  [(HUTriggerConditionEditorItemModule *)self setLocationConditionModule:v8];

  v9 = [HUTriggerCustomConditionEditorSectionModule alloc];
  v10 = [(HFItemModule *)self itemUpdater];
  v11 = [(HUTriggerConditionEditorItemModule *)self home];
  v12 = [(HUTriggerCustomConditionEditorSectionModule *)v9 initWithItemUpdater:v10 home:v11];
  [(HUTriggerConditionEditorItemModule *)self setCustomConditionsModule:v12];

  [(HUTriggerConditionEditorItemModule *)self _reloadConditionsFromConditionCollection];
  v13 = MEMORY[0x277CBEB98];
  v16 = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v14 = [v13 setWithArray:v16];
  v15 = [v14 na_flatMap:&__block_literal_global_30_1];
  [(HUTriggerConditionEditorItemModule *)self setItemProviders:v15];
}

- (void)_reloadConditionsFromConditionCollection
{
  v3 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
  v4 = [v3 conditions];
  v10 = [v4 mutableCopy];

  v5 = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionForExpandingSectionModule:v5 remainingConditions:v10];

  v6 = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionForExpandingSectionModule:v6 remainingConditions:v10];

  v7 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v9 = [MEMORY[0x277CBEB98] set];
  [v7 updateEnabledConditions:v8 disabledConditions:v9];
}

- (void)_reloadConditionForExpandingSectionModule:(id)a3 remainingConditions:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 preferredConditionFromConditions:v5];
  if (v6)
  {
    [v5 removeObject:v6];
  }

  v7 = [v8 updateSelectionWithCondition:v6];
}

- (id)_allSectionModules
{
  v3 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  v4 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v5 = [v3 arrayByAddingObject:v4];

  return v5;
}

- (id)_expandingSectionModules
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  v7[0] = v3;
  v4 = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (id)_expandingSectionModuleForConditionType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  }

  return v3;
}

- (id)_moduleForConditionOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HUTriggerConditionEditorItemModule__moduleForConditionOptionItem___block_invoke;
  v9[3] = &unk_277DC0FC8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __68__HUTriggerConditionEditorItemModule__moduleForConditionOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 optionItems];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_sectionModuleForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HUTriggerConditionEditorItemModule__sectionModuleForItem___block_invoke;
  v9[3] = &unk_277DC0FF0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)_isConditionOptionItem:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:a4];
  if ([v7 containsItem:v6])
  {
    v8 = [v7 showOptionsItem];
    v9 = v8 != v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end