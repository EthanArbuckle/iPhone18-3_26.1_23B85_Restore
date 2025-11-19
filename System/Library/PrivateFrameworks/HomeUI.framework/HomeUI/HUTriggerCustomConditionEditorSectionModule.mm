@interface HUTriggerCustomConditionEditorSectionModule
- (BOOL)isConditionEnabled:(id)a3;
- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)a3;
- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)conditionForItem:(id)a3;
- (id)itemForCondition:(id)a3;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)setConditionEnabled:(BOOL)a3 forCondition:(id)a4;
- (void)updateEnabledConditions:(id)a3 disabledConditions:(id)a4;
@end

@implementation HUTriggerCustomConditionEditorSectionModule

- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUTriggerCustomConditionEditorSectionModule.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerCustomConditionEditorSectionModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUTriggerCustomConditionEditorSectionModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUTriggerCustomConditionEditorSectionModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    [(HUTriggerCustomConditionEditorSectionModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  v6 = [v5 items];

  v7 = [v6 na_setByIntersectingWithSet:v4];

  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"custom"];
    v9 = [v7 allObjects];
    v10 = [MEMORY[0x277D14778] defaultItemComparator];
    v11 = [v9 sortedArrayUsingComparator:v10];
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

- (void)updateEnabledConditions:(id)a3 disabledConditions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mutableCopy];
  [(HUTriggerCustomConditionEditorSectionModule *)self setMutableEnabledConditions:v8];

  v9 = [v6 mutableCopy];
  [(HUTriggerCustomConditionEditorSectionModule *)self setMutableDisabledConditions:v9];

  v11 = [v7 setByAddingObjectsFromSet:v6];

  v10 = [(HUTriggerCustomConditionEditorSectionModule *)self sourceConditionItemProvider];
  [v10 setConditions:v11];
}

- (id)conditionForItem:(id)a3
{
  v3 = a3;
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
  if (v10)
  {
    if ([v10 conformsToProtocol:v11])
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v10;
    if (v12)
    {
      goto LABEL_15;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v16 = NSStringFromProtocol(v11);
    [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v16}];
  }

  v13 = 0;
LABEL_15:

  v17 = [v13 condition];

  return v17;
}

- (id)itemForCondition:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerCustomConditionEditorSectionModule *)self itemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HUTriggerCustomConditionEditorSectionModule_itemForCondition___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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

- (BOOL)isConditionEnabled:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerCustomConditionEditorSectionModule *)self enabledConditions];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setConditionEnabled:(BOOL)a3 forCondition:(id)a4
{
  v4 = a3;
  v9 = a4;
  if ([(HUTriggerCustomConditionEditorSectionModule *)self isConditionEnabled:?]!= v4)
  {
    if (v4)
    {
      v6 = [(HUTriggerCustomConditionEditorSectionModule *)self mutableDisabledConditions];
      [v6 removeObject:v9];

      [(HUTriggerCustomConditionEditorSectionModule *)self mutableEnabledConditions];
    }

    else
    {
      v7 = [(HUTriggerCustomConditionEditorSectionModule *)self mutableEnabledConditions];
      [v7 removeObject:v9];

      [(HUTriggerCustomConditionEditorSectionModule *)self mutableDisabledConditions];
    }
    v8 = ;
    [v8 addObject:v9];
  }
}

- (void)_buildItemProviders
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D145A0]);
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HUTriggerCustomConditionEditorSectionModule *)self home];
  v6 = [v3 initWithConditions:v4 home:v5];
  sourceConditionItemProvider = self->_sourceConditionItemProvider;
  self->_sourceConditionItemProvider = v6;

  v8 = objc_alloc(MEMORY[0x277D14C38]);
  v9 = [(HUTriggerCustomConditionEditorSectionModule *)self sourceConditionItemProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HUTriggerCustomConditionEditorSectionModule__buildItemProviders__block_invoke;
  v12[3] = &unk_277DBFAD0;
  objc_copyWeak(&v13, &location);
  v10 = [v8 initWithSourceProvider:v9 transformationBlock:v12];
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