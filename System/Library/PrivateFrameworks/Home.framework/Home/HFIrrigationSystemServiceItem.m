@interface HFIrrigationSystemServiceItem
- (id)_childValveServiceFilter;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)servicesToReadForCharacteristicType:(id)a3;
@end

@implementation HFIrrigationSystemServiceItem

- (id)_childValveServiceFilter
{
  v2 = [HFChildServiceFilter alloc];
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0F38]];
  v4 = [(HFChildServiceFilter *)v2 initWithChildServiceTypes:v3];

  return v4;
}

- (id)servicesToReadForCharacteristicType:(id)a3
{
  v11.receiver = self;
  v11.super_class = HFIrrigationSystemServiceItem;
  v4 = a3;
  v5 = [(HFServiceItem *)&v11 servicesToReadForCharacteristicType:v4];
  v6 = [v4 isEqualToString:{*MEMORY[0x277CCF748], v11.receiver, v11.super_class}];

  if (v6)
  {
    v7 = [(HFServiceItem *)self service];
    v8 = [v7 hf_childServicesOfType:*MEMORY[0x277CD0F38]];
    v9 = [v5 na_setByRemovingObjectsFromSet:v8];

    v5 = v9;
  }

  return v5;
}

- (id)createControlItemsWithOptions:(id)a3
{
  v4 = [(HFIrrigationSystemServiceItem *)self _childValveServiceFilter];
  v5 = [(HFServiceItem *)self service];
  v6 = [v4 filteredChildServicesForParentService:v5];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [HFChildServiceControlItem alloc];
    v9 = [(HFServiceItem *)self valueSource];
    v10 = [(HFServiceItem *)self service];
    v11 = [(HFChildServiceControlItem *)v8 initWithBaseValueSource:v9 parentService:v10 childServiceFilter:v4 displayResults:0];

    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF908];
  v15[0] = *MEMORY[0x277CCF748];
  v15[1] = v5;
  v15[2] = *MEMORY[0x277CCF9F8];
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:v15 count:3];
  v9 = [v4 setWithArray:v8];

  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HFIrrigationSystemServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __61__HFIrrigationSystemServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  [v4 setObject:&unk_282523DC0 forKeyedSubscript:@"controlSummaryStyle"];
  v5 = [*(a1 + 32) service];
  v6 = [v5 hf_childServicesOfType:*MEMORY[0x277CD0F38]];
  if ([v6 count])
  {
    v7 = [*(a1 + 32) _childValveServiceFilter];
    v8 = [*(a1 + 32) service];
    v9 = [v7 filteredChildServicesForParentService:v8];
    v10 = [v9 count];

    if (v10)
    {
      goto LABEL_6;
    }

    v5 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescription.IrrigationSystem, NoValvesConfigured, Context:Control", @"HFServiceDescription.IrrigationSystem, NoValvesConfigured, Context:Control", 1);
    [v4 setObject:v5 forKeyedSubscript:@"controlDescription"];
  }

  else
  {
  }

LABEL_6:
  [*(a1 + 32) applyInflectionToDescriptions:v4];
  v11 = MEMORY[0x277D2C900];
  v12 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v13 = [v11 futureWithResult:v12];

  return v13;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

@end