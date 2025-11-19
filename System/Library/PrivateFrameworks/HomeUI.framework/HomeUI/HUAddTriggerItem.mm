@interface HUAddTriggerItem
- (BOOL)_itemisHidden;
- (HUAddTriggerItem)initWithHome:(id)a3 mode:(unint64_t)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUAddTriggerItem

- (HUAddTriggerItem)initWithHome:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUAddTriggerItem;
  v8 = [(HUAddTriggerItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v9->_mode = a4;
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v26[6] = *MEMORY[0x277D85DE8];
  v4 = [(HUAddTriggerItem *)self _itemisHidden];
  v5 = [(HUAddTriggerItem *)self mode];
  v6 = @"HUMacToolbarAddMenuAutomation";
  if (!v5)
  {
    v6 = @"HUTriggerListAddTriggerButtonTitle";
  }

  v7 = MEMORY[0x277D2C900];
  v8 = MEMORY[0x277D14780];
  v9 = v6;
  v10 = [v8 alloc];
  v11 = *MEMORY[0x277D13F68];
  v26[0] = v9;
  v12 = *MEMORY[0x277D13F60];
  v25[0] = v11;
  v25[1] = v12;
  v13 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  v26[1] = v13;
  v25[2] = *MEMORY[0x277D13FB8];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v15 = *MEMORY[0x277D13F98];
  v26[2] = v14;
  v26[3] = MEMORY[0x277CBEC38];
  v16 = *MEMORY[0x277D13DA8];
  v25[3] = v15;
  v25[4] = v16;
  v17 = MEMORY[0x277CBEB98];
  v18 = [(HUAddTriggerItem *)self home];
  v19 = [v17 setWithObject:v18];
  v26[4] = v19;
  v25[5] = *MEMORY[0x277D13DA0];
  v20 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v26[5] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v22 = [v10 initWithResults:v21];
  v23 = [v7 futureWithResult:v22];

  return v23;
}

- (BOOL)_itemisHidden
{
  v3 = [(HUAddTriggerItem *)self home];
  v4 = [v3 hf_hasAnyVisibleTriggers];

  v5 = [(HUAddTriggerItem *)self mode];
  v6 = v5 == 0;
  if (!v5 && (v4 & 1) == 0)
  {
    v6 = [MEMORY[0x277D14CE8] isAMac];
  }

  v7 = [(HUAddTriggerItem *)self home];
  v8 = v6 | ~[v7 hf_userCanCreateTrigger];

  return v8 & 1;
}

@end