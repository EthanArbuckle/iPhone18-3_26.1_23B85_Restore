@interface HUTriggerConditionEditorItemModule
- (BOOL)_isConditionOptionItem:(id)item ofType:(unint64_t)type;
- (BOOL)doesConditionOptionItemRequireInitialConfiguration:(id)configuration;
- (BOOL)isConditionOptionItem:(id)item;
- (BOOL)isCustomConditionSwitchItem:(id)item;
- (BOOL)isShowConditionOptionsItem:(id)item;
- (BOOL)shouldShowConditionOptionsForType:(unint64_t)type;
- (HUTriggerConditionEditorItemModule)initWithItemUpdater:(id)updater home:(id)home conditionCollection:(id)collection disallowedConditionTypes:(id)types;
- (id)_allSectionModules;
- (id)_expandingSectionModuleForConditionType:(unint64_t)type;
- (id)_expandingSectionModules;
- (id)_moduleForConditionOptionItem:(id)item;
- (id)_sectionModuleForItem:(id)item;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)conditionForOptionItem:(id)item;
- (unint64_t)conditionTypeForItem:(id)item;
- (void)_buildItemProviders;
- (void)_reloadConditionForExpandingSectionModule:(id)module remainingConditions:(id)conditions;
- (void)_reloadConditionsFromConditionCollection;
- (void)conditionCollectionDidChange;
- (void)setCustomConditionEnabled:(BOOL)enabled forItem:(id)item;
- (void)setSelectedConditionOptionItem:(id)item forType:(unint64_t)type;
- (void)setShowConditionOptions:(BOOL)options forType:(unint64_t)type;
- (void)updateCondition:(id)condition forOptionItem:(id)item;
@end

@implementation HUTriggerConditionEditorItemModule

- (HUTriggerConditionEditorItemModule)initWithItemUpdater:(id)updater home:(id)home conditionCollection:(id)collection disallowedConditionTypes:(id)types
{
  homeCopy = home;
  collectionCopy = collection;
  typesCopy = types;
  v17.receiver = self;
  v17.super_class = HUTriggerConditionEditorItemModule;
  v14 = [(HFItemModule *)&v17 initWithItemUpdater:updater];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
    objc_storeStrong(&v15->_conditionCollection, collection);
    objc_storeStrong(&v15->_disallowedConditionTypes, types);
    [(HUTriggerConditionEditorItemModule *)v15 _buildItemProviders];
  }

  return v15;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _allSectionModules = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v5 = [_allSectionModules countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(_allSectionModules);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        disallowedConditionTypes = [(HUTriggerConditionEditorItemModule *)self disallowedConditionTypes];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "conditionType")}];
        v12 = [disallowedConditionTypes containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v9 buildSectionsWithDisplayedItems:itemsCopy];
          v14 = [v13 na_flatMap:&__block_literal_global_199];
          [v20 addObjectsFromArray:v14];
        }
      }

      v6 = [_allSectionModules countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Conditions"];
  [v15 setItems:v20];
  v16 = MEMORY[0x277D14778];
  v26 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:itemsCopy];

  return v18;
}

- (BOOL)isConditionOptionItem:(id)item
{
  v3 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:item];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)doesConditionOptionItemRequireInitialConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:configurationCopy];
  v6 = [v5 doesOptionItemRequireInitialUserConfiguration:configurationCopy];

  return v6;
}

- (id)conditionForOptionItem:(id)item
{
  itemCopy = item;
  v5 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:itemCopy];
  if (!v5)
  {
    NSLog(&cfstr_UnrecognizedOp.isa, itemCopy);
  }

  v6 = [v5 conditionForOptionItem:itemCopy];

  return v6;
}

- (void)updateCondition:(id)condition forOptionItem:(id)item
{
  conditionCopy = condition;
  v7 = [(HUTriggerConditionEditorItemModule *)self _moduleForConditionOptionItem:item];
  selectedOptionItem = [v7 selectedOptionItem];

  if (selectedOptionItem)
  {
    conditionCollection = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
    selectedOptionItem2 = [v7 selectedOptionItem];
    v11 = [v7 conditionForOptionItem:selectedOptionItem2];
    [conditionCollection removeCondition:v11];
  }

  conditionCollection2 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
  [conditionCollection2 addCondition:conditionCopy];

  v13 = [v7 updateSelectionWithCondition:conditionCopy];
  v14 = MEMORY[0x277D14788];
  itemProviders = [v7 itemProviders];
  v16 = [v14 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v18 = [itemUpdater performItemUpdateRequest:v16];
}

- (unint64_t)conditionTypeForItem:(id)item
{
  itemCopy = item;
  v6 = [(HUTriggerConditionEditorItemModule *)self _sectionModuleForItem:itemCopy];
  v7 = v6;
  if (v6)
  {
    conditionType = [v6 conditionType];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModule.m" lineNumber:96 description:{@"Unknown item %@", itemCopy}];

    conditionType = 2;
  }

  return conditionType;
}

- (void)conditionCollectionDidChange
{
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionsFromConditionCollection];
  v4 = MEMORY[0x277D14788];
  itemProviders = [(HUTriggerConditionEditorItemModule *)self itemProviders];
  v8 = [v4 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v7 = [itemUpdater performItemUpdateRequest:v8];
}

- (BOOL)shouldShowConditionOptionsForType:(unint64_t)type
{
  v3 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:type];
  showOptions = [v3 showOptions];

  return showOptions;
}

- (void)setShowConditionOptions:(BOOL)options forType:(unint64_t)type
{
  optionsCopy = options;
  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:type];
  if ([v7 showOptions] != optionsCopy)
  {
    [v7 setShowOptions:optionsCopy];
    _expandingSectionModules = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__HUTriggerConditionEditorItemModule_setShowConditionOptions_forType___block_invoke;
    v14[3] = &unk_277DC0FA0;
    v15 = v7;
    [_expandingSectionModules na_each:v14];

    v9 = MEMORY[0x277D14788];
    itemProviders = [(HUTriggerConditionEditorItemModule *)self itemProviders];
    v11 = [v9 requestToReloadItemProviders:itemProviders senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v13 = [itemUpdater performItemUpdateRequest:v11];
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

- (void)setSelectedConditionOptionItem:(id)item forType:(unint64_t)type
{
  itemCopy = item;
  if (itemCopy && ![(HUTriggerConditionEditorItemModule *)self _isConditionOptionItem:itemCopy ofType:type])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModule.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"!item || [self _isConditionOptionItem:item ofType:type]"}];
  }

  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:type];
  selectedOptionItem = [v7 selectedOptionItem];

  if (selectedOptionItem != itemCopy)
  {
    condition = [v7 condition];
    v10 = [v7 selectOptionItem:itemCopy];
    if (condition)
    {
      conditionCollection = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
      [conditionCollection removeCondition:condition];
    }

    if (v10)
    {
      conditionCollection2 = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
      [conditionCollection2 addCondition:v10];
    }

    v13 = MEMORY[0x277D14788];
    itemProviders = [v7 itemProviders];
    v15 = [v13 requestToReloadItemProviders:itemProviders senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v17 = [itemUpdater performItemUpdateRequest:v15];
  }
}

- (BOOL)isShowConditionOptionsItem:(id)item
{
  itemCopy = item;
  _expandingSectionModules = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HUTriggerConditionEditorItemModule_isShowConditionOptionsItem___block_invoke;
  v9[3] = &unk_277DC0FC8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [_expandingSectionModules na_any:v9];

  return v7;
}

BOOL __65__HUTriggerConditionEditorItemModule_isShowConditionOptionsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 showOptionsItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)setCustomConditionEnabled:(BOOL)enabled forItem:(id)item
{
  enabledCopy = enabled;
  itemCopy = item;
  customConditionsModule = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v8 = [customConditionsModule conditionForItem:itemCopy];

  customConditionsModule2 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v10 = [customConditionsModule2 isConditionEnabled:v8];

  if (v10 != enabledCopy)
  {
    customConditionsModule3 = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
    [customConditionsModule3 setConditionEnabled:enabledCopy forCondition:v8];

    conditionCollection = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
    v13 = conditionCollection;
    if (enabledCopy)
    {
      [conditionCollection addCondition:v8];
    }

    else
    {
      [conditionCollection removeCondition:v8];
    }

    v14 = MEMORY[0x277D14788];
    v15 = [MEMORY[0x277CBEB98] setWithObject:itemCopy];
    v16 = [v14 requestToUpdateItems:v15 senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v18 = [itemUpdater performItemUpdateRequest:v16];
  }
}

- (BOOL)isCustomConditionSwitchItem:(id)item
{
  itemCopy = item;
  customConditionsModule = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v6 = [customConditionsModule containsItem:itemCopy];

  return v6;
}

- (void)_buildItemProviders
{
  itemUpdater = [(HFItemModule *)self itemUpdater];
  home = [(HUTriggerConditionEditorItemModule *)self home];
  v5 = [HUTriggerConditionEditorExpandingSectionModule sectionModuleForConditionType:0 itemUpdater:itemUpdater home:home];
  [(HUTriggerConditionEditorItemModule *)self setTimeConditionModule:v5];

  itemUpdater2 = [(HFItemModule *)self itemUpdater];
  home2 = [(HUTriggerConditionEditorItemModule *)self home];
  v8 = [HUTriggerConditionEditorExpandingSectionModule sectionModuleForConditionType:1 itemUpdater:itemUpdater2 home:home2];
  [(HUTriggerConditionEditorItemModule *)self setLocationConditionModule:v8];

  v9 = [HUTriggerCustomConditionEditorSectionModule alloc];
  itemUpdater3 = [(HFItemModule *)self itemUpdater];
  home3 = [(HUTriggerConditionEditorItemModule *)self home];
  v12 = [(HUTriggerCustomConditionEditorSectionModule *)v9 initWithItemUpdater:itemUpdater3 home:home3];
  [(HUTriggerConditionEditorItemModule *)self setCustomConditionsModule:v12];

  [(HUTriggerConditionEditorItemModule *)self _reloadConditionsFromConditionCollection];
  v13 = MEMORY[0x277CBEB98];
  _allSectionModules = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v14 = [v13 setWithArray:_allSectionModules];
  v15 = [v14 na_flatMap:&__block_literal_global_30_1];
  [(HUTriggerConditionEditorItemModule *)self setItemProviders:v15];
}

- (void)_reloadConditionsFromConditionCollection
{
  conditionCollection = [(HUTriggerConditionEditorItemModule *)self conditionCollection];
  conditions = [conditionCollection conditions];
  v10 = [conditions mutableCopy];

  timeConditionModule = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionForExpandingSectionModule:timeConditionModule remainingConditions:v10];

  locationConditionModule = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  [(HUTriggerConditionEditorItemModule *)self _reloadConditionForExpandingSectionModule:locationConditionModule remainingConditions:v10];

  customConditionsModule = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v9 = [MEMORY[0x277CBEB98] set];
  [customConditionsModule updateEnabledConditions:v8 disabledConditions:v9];
}

- (void)_reloadConditionForExpandingSectionModule:(id)module remainingConditions:(id)conditions
{
  moduleCopy = module;
  conditionsCopy = conditions;
  v6 = [moduleCopy preferredConditionFromConditions:conditionsCopy];
  if (v6)
  {
    [conditionsCopy removeObject:v6];
  }

  v7 = [moduleCopy updateSelectionWithCondition:v6];
}

- (id)_allSectionModules
{
  _expandingSectionModules = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  customConditionsModule = [(HUTriggerConditionEditorItemModule *)self customConditionsModule];
  v5 = [_expandingSectionModules arrayByAddingObject:customConditionsModule];

  return v5;
}

- (id)_expandingSectionModules
{
  v7[2] = *MEMORY[0x277D85DE8];
  timeConditionModule = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  v7[0] = timeConditionModule;
  locationConditionModule = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  v7[1] = locationConditionModule;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (id)_expandingSectionModuleForConditionType:(unint64_t)type
{
  if (type == 1)
  {
    locationConditionModule = [(HUTriggerConditionEditorItemModule *)self locationConditionModule];
  }

  else if (type)
  {
    locationConditionModule = 0;
  }

  else
  {
    locationConditionModule = [(HUTriggerConditionEditorItemModule *)self timeConditionModule];
  }

  return locationConditionModule;
}

- (id)_moduleForConditionOptionItem:(id)item
{
  itemCopy = item;
  _expandingSectionModules = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HUTriggerConditionEditorItemModule__moduleForConditionOptionItem___block_invoke;
  v9[3] = &unk_277DC0FC8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [_expandingSectionModules na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __68__HUTriggerConditionEditorItemModule__moduleForConditionOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 optionItems];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_sectionModuleForItem:(id)item
{
  itemCopy = item;
  _allSectionModules = [(HUTriggerConditionEditorItemModule *)self _allSectionModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HUTriggerConditionEditorItemModule__sectionModuleForItem___block_invoke;
  v9[3] = &unk_277DC0FF0;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [_allSectionModules na_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)_isConditionOptionItem:(id)item ofType:(unint64_t)type
{
  itemCopy = item;
  v7 = [(HUTriggerConditionEditorItemModule *)self _expandingSectionModuleForConditionType:type];
  if ([v7 containsItem:itemCopy])
  {
    showOptionsItem = [v7 showOptionsItem];
    v9 = showOptionsItem != itemCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end