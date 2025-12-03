@interface HFFaucetServiceItem
- (BOOL)_shouldSubsumeValveInOverallActiveState;
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)servicesToReadForCharacteristicType:(id)type;
@end

@implementation HFFaucetServiceItem

- (BOOL)_shouldSubsumeValveInOverallActiveState
{
  service = [(HFServiceItem *)self service];
  v3 = [service hf_childServicesOfType:*MEMORY[0x277CD0F38]];
  v4 = [v3 count] < 2;

  return v4;
}

- (id)servicesToReadForCharacteristicType:(id)type
{
  v11.receiver = self;
  v11.super_class = HFFaucetServiceItem;
  typeCopy = type;
  v5 = [(HFServiceItem *)&v11 servicesToReadForCharacteristicType:typeCopy];
  v6 = [typeCopy isEqualToString:{*MEMORY[0x277CCF748], v11.receiver, v11.super_class}];

  if (v6)
  {
    service = [(HFServiceItem *)self service];
    v8 = [service hf_childServicesOfType:*MEMORY[0x277CD0F38]];
    v9 = [v5 na_setByRemovingObjectsFromSet:v8];

    v5 = v9;
  }

  return v5;
}

- (id)createControlItemsWithOptions:(id)options
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  optionsCopy = options;
  v6 = [v4 set];
  service = [(HFServiceItem *)self service];
  hf_childServices = [service hf_childServices];
  v9 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_17];

  v10 = MEMORY[0x277CBEB58];
  service2 = [(HFServiceItem *)self service];
  v12 = [v10 setWithObject:service2];

  [v12 na_safeAddObject:v9];
  service3 = [(HFServiceItem *)self service];
  v14 = *MEMORY[0x277CD0F38];
  v15 = [service3 hf_childServicesOfType:*MEMORY[0x277CD0F38]];
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
    valueSource = [(HFServiceItem *)self valueSource];
    service4 = [(HFServiceItem *)self service];
    v23 = [(HFChildServiceControlItem *)v20 initWithBaseValueSource:valueSource parentService:service4 childServiceFilter:v19 displayResults:0];

    [v6 na_safeAddObject:v23];
    v16 = 1;
  }

  v24 = [(HFServiceItem *)self controlItemValueSourceForServices:v12];
  v25 = [HFFaucetActiveStateControlItem alloc];
  v37 = @"title";
  v26 = HFItemOptionalLocalizedString(@"HFControlTitleFaucetActive", optionsCopy);
  v38[0] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v28 = [(HFFaucetActiveStateControlItem *)v25 initWithValueSource:v24 valveControlMode:v16 displayResults:v27];
  [v6 addObject:v28];

  v29 = [HFHeaterCoolerThresholdControlItem alloc];
  v35 = @"title";
  v30 = HFItemOptionalLocalizedString(@"HFControlTitleFaucetTemperature", optionsCopy);

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

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  v6 = [v4 set];
  v7 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v6 options:optionsCopy];

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

- (id)currentStateActionBuildersForHome:(id)home
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

@end