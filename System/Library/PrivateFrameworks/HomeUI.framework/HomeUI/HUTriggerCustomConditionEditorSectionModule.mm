@interface HUTriggerCustomConditionEditorSectionModule
- (BOOL)isConditionEnabled:(id)enabled;
- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)updater;
- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)conditionForItem:(id)item;
- (id)itemForCondition:(id)condition;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)setConditionEnabled:(BOOL)enabled forCondition:(id)condition;
- (void)updateEnabledConditions:(id)conditions disabledConditions:(id)disabledConditions;
@end

@implementation HUTriggerCustomConditionEditorSectionModule

- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerCustomConditionEditorSectionModule.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerCustomConditionEditorSectionModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUTriggerCustomConditionEditorSectionModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    [(HUTriggerCustomConditionEditorSectionModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  itemProvider = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  v4 = [v2 setWithObject:itemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v14[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  itemProvider = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  items = [itemProvider items];

  v7 = [items na_setByIntersectingWithSet:itemsCopy];

  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"custom"];
    allObjects = [v7 allObjects];
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v11 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
    [v8 setItems:v11];

    v14[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (void)updateEnabledConditions:(id)conditions disabledConditions:(id)disabledConditions
{
  disabledConditionsCopy = disabledConditions;
  conditionsCopy = conditions;
  v8 = [conditionsCopy mutableCopy];
  [(HUTriggerCustomConditionEditorSectionModule *)self setMutableEnabledConditions:v8];

  v9 = [disabledConditionsCopy mutableCopy];
  [(HUTriggerCustomConditionEditorSectionModule *)self setMutableDisabledConditions:v9];

  v11 = [conditionsCopy setByAddingObjectsFromSet:disabledConditionsCopy];

  sourceConditionItemProvider = [(HUTriggerCustomConditionEditorSectionModule *)self sourceConditionItemProvider];
  [sourceConditionItemProvider setConditions:v11];
}

- (id)conditionForItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_class();
  v5 = itemCopy;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];

LABEL_7:
    v7 = 0;
  }

  sourceItem = [v7 sourceItem];
  v11 = &unk_2825BD9C0;
  if (sourceItem)
  {
    if ([sourceItem conformsToProtocol:v11])
    {
      v12 = sourceItem;
    }

    else
    {
      v12 = 0;
    }

    v13 = sourceItem;
    if (v12)
    {
      goto LABEL_15;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v16 = NSStringFromProtocol(v11);
    [currentHandler2 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v16}];
  }

  v13 = 0;
LABEL_15:

  condition = [v13 condition];

  return condition;
}

- (id)itemForCondition:(id)condition
{
  conditionCopy = condition;
  itemProvider = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  items = [itemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HUTriggerCustomConditionEditorSectionModule_itemForCondition___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = conditionCopy;
  v7 = conditionCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __64__HUTriggerCustomConditionEditorSectionModule_itemForCondition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];

LABEL_7:
    v7 = 0;
  }

  v10 = [v7 sourceItem];
  v11 = &unk_2825BD9C0;
  if (!v10)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if ([v10 conformsToProtocol:v11])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v10;
  if (!v12)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v16 = NSStringFromProtocol(v11);
    [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v16}];

    goto LABEL_14;
  }

LABEL_15:

  v17 = *(a1 + 32);
  v18 = [v13 condition];
  v19 = [v17 isEqual:v18];

  return v19;
}

- (BOOL)isConditionEnabled:(id)enabled
{
  enabledCopy = enabled;
  enabledConditions = [(HUTriggerCustomConditionEditorSectionModule *)self enabledConditions];
  v6 = [enabledConditions containsObject:enabledCopy];

  return v6;
}

- (void)setConditionEnabled:(BOOL)enabled forCondition:(id)condition
{
  enabledCopy = enabled;
  conditionCopy = condition;
  if ([(HUTriggerCustomConditionEditorSectionModule *)self isConditionEnabled:?]!= enabledCopy)
  {
    if (enabledCopy)
    {
      mutableDisabledConditions = [(HUTriggerCustomConditionEditorSectionModule *)self mutableDisabledConditions];
      [mutableDisabledConditions removeObject:conditionCopy];

      [(HUTriggerCustomConditionEditorSectionModule *)self mutableEnabledConditions];
    }

    else
    {
      mutableEnabledConditions = [(HUTriggerCustomConditionEditorSectionModule *)self mutableEnabledConditions];
      [mutableEnabledConditions removeObject:conditionCopy];

      [(HUTriggerCustomConditionEditorSectionModule *)self mutableDisabledConditions];
    }
    v8 = ;
    [v8 addObject:conditionCopy];
  }
}

- (void)_buildItemProviders
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D145A0]);
  v4 = [MEMORY[0x277CBEB98] set];
  home = [(HUTriggerCustomConditionEditorSectionModule *)self home];
  v6 = [v3 initWithConditions:v4 home:home];
  sourceConditionItemProvider = self->_sourceConditionItemProvider;
  self->_sourceConditionItemProvider = v6;

  v8 = objc_alloc(MEMORY[0x277D14C38]);
  sourceConditionItemProvider = [(HUTriggerCustomConditionEditorSectionModule *)self sourceConditionItemProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HUTriggerCustomConditionEditorSectionModule__buildItemProviders__block_invoke;
  v12[3] = &unk_277DBFAD0;
  objc_copyWeak(&v13, &location);
  v10 = [v8 initWithSourceProvider:sourceConditionItemProvider transformationBlock:v12];
  itemProvider = self->_itemProvider;
  self->_itemProvider = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

id __66__HUTriggerCustomConditionEditorSectionModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HUTriggerCustomConditionEditorSectionModule__buildItemProviders__block_invoke_2;
  v8[3] = &unk_277DBA468;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 initWithSourceItem:v5 transformationBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

id __66__HUTriggerCustomConditionEditorSectionModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) condition];
  [WeakRetained isConditionEnabled:v7];
  v8 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v5;
}

@end