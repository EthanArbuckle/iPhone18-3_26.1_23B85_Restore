@interface HUTriggerConditionEditorExpandingSectionModule
+ (id)sectionModuleForConditionType:(unint64_t)a3 itemUpdater:(id)a4 home:(id)a5;
- (BOOL)conditionIsDisabled;
- (HUTriggerConditionEditorExpandingSectionModule)initWithItemUpdater:(id)a3 conditionType:(unint64_t)a4 home:(id)a5;
- (id)buildConditionOptionItems;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)conditionForOptionItem:(id)a3;
- (id)conditionTitle;
- (id)createNoConditionOptionItemWithTitle:(id)a3;
- (id)itemProviders;
- (id)preferredConditionFromConditions:(id)a3;
- (id)sectionID;
- (id)selectOptionItem:(id)a3;
- (id)selectOptionItemForCondition:(id)a3;
- (id)updateSelectionWithCondition:(id)a3;
- (void)_buildItemProvider;
@end

@implementation HUTriggerConditionEditorExpandingSectionModule

+ (id)sectionModuleForConditionType:(unint64_t)a3 itemUpdater:(id)a4 home:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!a3)
  {
    v9 = off_277DB18C0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v9 = off_277DB1880;
LABEL_5:
    v10 = [objc_alloc(*v9) initWithItemUpdater:v7 conditionType:a3 home:v8];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (HUTriggerConditionEditorExpandingSectionModule)initWithItemUpdater:(id)a3 conditionType:(unint64_t)a4 home:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUTriggerConditionEditorExpandingSectionModule;
  v10 = [(HFItemModule *)&v13 initWithItemUpdater:a3];
  v11 = v10;
  if (v10)
  {
    v10->_conditionType = a4;
    v10->_showOptions = 0;
    objc_storeStrong(&v10->_home, a5);
    [(HUTriggerConditionEditorExpandingSectionModule *)v11 _buildItemProvider];
  }

  return v11;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUTriggerConditionEditorExpandingSectionModule *)self itemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)sectionID
{
  v2 = [(HUTriggerConditionEditorExpandingSectionModule *)self conditionType];
  v3 = @"location";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return @"time";
  }
}

- (void)_buildItemProvider
{
  v3 = [(HUTriggerConditionEditorExpandingSectionModule *)self home];
  v4 = [v3 areBulletinNotificationsSupported];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke;
  v14[3] = &unk_277DB8E98;
  objc_copyWeak(&v15, &location);
  v16 = v4;
  v6 = [v5 initWithResultsBlock:v14];
  [(HUTriggerConditionEditorExpandingSectionModule *)self setShowOptionsItem:v6];

  v7 = [(HUTriggerConditionEditorExpandingSectionModule *)self buildConditionOptionItems];
  [(HUTriggerConditionEditorExpandingSectionModule *)self setOptionItems:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [(HUTriggerConditionEditorExpandingSectionModule *)self optionItems];
  v10 = [v8 setWithArray:v9];
  v11 = [(HUTriggerConditionEditorExpandingSectionModule *)self showOptionsItem];
  v12 = [v10 setByAddingObject:v11];

  v13 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v12];
  [(HUTriggerConditionEditorExpandingSectionModule *)self setItemProvider:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke_2;
    v11[3] = &unk_277DB7478;
    v11[4] = WeakRetained;
    v4 = __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke_2(v11);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke_14;
    v9[3] = &unk_277DBB390;
    v9[4] = v3;
    v10 = *(a1 + 40);
    v5 = [v4 flatMap:v9];
  }

  else
  {
    v6 = MEMORY[0x277D2C900];
    v12 = *MEMORY[0x277D13FB8];
    v13[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = [v6 futureWithResult:v4];
  }

  v7 = v5;

  return v7;
}

id __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke_2(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) condition];

  if (v2)
  {
    v3 = [HUTriggerConditionSummaryItem alloc];
    v4 = [*(a1 + 32) condition];
    v18[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v6 = [*(a1 + 32) home];
    v7 = [(HUTriggerConditionSummaryItem *)v3 initWithConditions:v5 home:v6];

    v16 = @"triggerConditionSummaryStyle";
    v17 = &unk_2824910B8;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [(HUTriggerConditionSummaryItem *)v7 updateWithOptions:v8];
  }

  else
  {
    v7 = [*(a1 + 32) noConditionSummaryTitle];
    v10 = MEMORY[0x277D14780];
    v14 = *MEMORY[0x277D13F60];
    v15 = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [v10 outcomeWithResults:v11];

    v9 = [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  v12 = v9;

  return v12;
}

id __68__HUTriggerConditionEditorExpandingSectionModule__buildItemProvider__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) conditionTitle];
  v6 = *MEMORY[0x277D13F60];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = [v3 objectForKeyedSubscript:v6];

  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v8 = MEMORY[0x277CCABB0];
  if ([*(a1 + 32) conditionIsDisabled])
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 40) ^ 1u;
  }

  v10 = [v8 numberWithInt:v9];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v11;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = [(HUTriggerConditionEditorExpandingSectionModule *)self sectionID];
  v7 = [v5 initWithIdentifier:v6];

  v8 = MEMORY[0x277CBEB18];
  v9 = [(HUTriggerConditionEditorExpandingSectionModule *)self showOptionsItem];
  v10 = [v8 arrayWithObject:v9];

  if ([(HUTriggerConditionEditorExpandingSectionModule *)self showOptions])
  {
    v11 = [(HUTriggerConditionEditorExpandingSectionModule *)self optionItems];
    [v10 addObjectsFromArray:v11];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HUTriggerConditionEditorExpandingSectionModule_buildSectionsWithDisplayedItems___block_invoke;
  v16[3] = &unk_277DB85D8;
  v17 = v4;
  v12 = v4;
  v13 = [v10 na_filter:v16];
  [v7 setItems:v13];

  v18[0] = v7;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  return v14;
}

- (id)selectOptionItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HUTriggerConditionEditorExpandingSectionModule *)self conditionForOptionItem:v4];
  }

  else
  {
    v5 = 0;
  }

  [(HUTriggerConditionEditorExpandingSectionModule *)self setSelectedOptionItem:v4];
  [(HUTriggerConditionEditorExpandingSectionModule *)self setCondition:v5];

  return v5;
}

- (id)updateSelectionWithCondition:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerConditionEditorExpandingSectionModule *)self selectOptionItemForCondition:v4];
  [(HUTriggerConditionEditorExpandingSectionModule *)self setSelectedOptionItem:v5];

  [(HUTriggerConditionEditorExpandingSectionModule *)self setCondition:v4];

  return [(HUTriggerConditionEditorExpandingSectionModule *)self selectedOptionItem];
}

- (id)createNoConditionOptionItemWithTitle:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HUTriggerConditionEditorExpandingSectionModule_createNoConditionOptionItemWithTitle___block_invoke;
  v9[3] = &unk_277DBB3B8;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [v5 initWithResultsAndItemBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

id __87__HUTriggerConditionEditorExpandingSectionModule_createNoConditionOptionItemWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained selectedOptionItem];

  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277D14068];
  v12[0] = *MEMORY[0x277D13F60];
  v12[1] = v7;
  v13[0] = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)selectOptionItemForCondition:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:165 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule selectOptionItemForCondition:]", objc_opt_class()}];

  return 0;
}

- (id)conditionForOptionItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:171 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule conditionForOptionItem:]", objc_opt_class()}];

  return 0;
}

- (id)buildConditionOptionItems
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:177 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule buildConditionOptionItems]", objc_opt_class()}];

  return MEMORY[0x277CBEBF8];
}

- (id)conditionTitle
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:183 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule conditionTitle]", objc_opt_class()}];

  return &stru_2823E0EE8;
}

- (BOOL)conditionIsDisabled
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:189 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule conditionIsDisabled]", objc_opt_class()}];

  return 1;
}

- (id)preferredConditionFromConditions:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorExpandingSectionModule.m" lineNumber:195 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUTriggerConditionEditorExpandingSectionModule preferredConditionFromConditions:]", objc_opt_class()}];

  return 0;
}

@end