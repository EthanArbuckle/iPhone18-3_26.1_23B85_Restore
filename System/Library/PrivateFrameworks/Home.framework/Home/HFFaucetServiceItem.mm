@interface HFFaucetServiceItem
- (BOOL)_shouldSubsumeValveInOverallActiveState;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)servicesToReadForCharacteristicType:(id)a3;
@end

@implementation HFFaucetServiceItem

- (BOOL)_shouldSubsumeValveInOverallActiveState
{
  v2 = [(HFServiceItem *)self service];
  v3 = [v2 hf_childServicesOfType:*MEMORY[0x277CD0F38]];
  v4 = [v3 count] < 2;

  return v4;
}

- (id)servicesToReadForCharacteristicType:(id)a3
{
  v11.receiver = self;
  v11.super_class = HFFaucetServiceItem;
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
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HFServiceItem *)self service];
  v8 = [v7 hf_childServices];
  v9 = [v8 na_firstObjectPassingTest:&__block_literal_global_17];

  v10 = MEMORY[0x277CBEB58];
  v11 = [(HFServiceItem *)self service];
  v12 = [v10 setWithObject:v11];

  [v12 na_safeAddObject:v9];
  v13 = [(HFServiceItem *)self service];
  v14 = *MEMORY[0x277CD0F38];
  v15 = [v13 hf_childServicesOfType:*MEMORY[0x277CD0F38]];
  [v12 unionSet:v15];

  if ([(HFFaucetServiceItem *)self _shouldSubsumeValveInOverallActiveState])
  {
    v16 = 0;
  }

  else
  {
    v17 = [HFChildServiceFilter alloc];
    v18 = [MEMORY[0x277CBEB98] setWithObject:v14];
    v19 = [(HFChildServiceFilter *)v17 initWithChildServiceTypes:v18];

    v20 = [HFChildServiceControlItem alloc];
    v21 = [(HFServiceItem *)self valueSource];
    v22 = [(HFServiceItem *)self service];
    v23 = [(HFChildServiceControlItem *)v20 initWithBaseValueSource:v21 parentService:v22 childServiceFilter:v19 displayResults:0];

    [v6 na_safeAddObject:v23];
    v16 = 1;
  }

  v24 = [(HFServiceItem *)self controlItemValueSourceForServices:v12];
  v25 = [HFFaucetActiveStateControlItem alloc];
  v37 = @"title";
  v26 = HFItemOptionalLocalizedString(@"HFControlTitleFaucetActive", v5);
  v38[0] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v28 = [(HFFaucetActiveStateControlItem *)v25 initWithValueSource:v24 valveControlMode:v16 displayResults:v27];
  [v6 addObject:v28];

  v29 = [HFHeaterCoolerThresholdControlItem alloc];
  v35 = @"title";
  v30 = HFItemOptionalLocalizedString(@"HFControlTitleFaucetTemperature", v5);

  v36 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v32 = [(HFHeaterCoolerThresholdControlItem *)v29 initWithValueSource:v24 displayResults:v31];

  [v6 na_safeAddObject:v32];
  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __53__HFFaucetServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E60]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v6 options:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFFaucetServiceItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DF2828;
  v10[4] = self;
  v8 = [v7 flatMap:v10];

  return v8;
}

id __51__HFFaucetServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  [v4 setObject:&unk_282523520 forKeyedSubscript:@"controlSummaryStyle"];
  [*(a1 + 32) applyInflectionToDescriptions:v4];
  v5 = MEMORY[0x277D2C900];
  v6 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

@end