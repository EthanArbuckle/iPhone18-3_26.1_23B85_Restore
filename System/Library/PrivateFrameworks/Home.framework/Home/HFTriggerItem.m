@interface HFTriggerItem
- (HFServiceActionItemProvider)serviceActionItemProvider;
- (HFTriggerItem)init;
- (HFTriggerItem)initWithHome:(id)a3 trigger:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createRichIconDescriptors:(id)a3 options:(id)a4;
- (id)translateToRichIconDescriptors:(id)a3 basedOnActionItems:(id)a4;
@end

@implementation HFTriggerItem

- (HFTriggerItem)initWithHome:(id)a3 trigger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HFTriggerItem;
  v9 = [(HFTriggerItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_trigger, a4);
    serviceActionItemProvider = v10->_serviceActionItemProvider;
    v10->_serviceActionItemProvider = 0;

    v10->_usesRichIconDescriptors = 0;
  }

  return v10;
}

- (HFTriggerItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFTriggerItem.m" lineNumber:55 description:@"Use -initWithHome:trigger:"];

  return 0;
}

- (HFServiceActionItemProvider)serviceActionItemProvider
{
  if (!self->_serviceActionItemProvider && [(HFTriggerItem *)self usesRichIconDescriptors])
  {
    v3 = [(HFTriggerItem *)self trigger];
    v4 = [v3 actionSets];
    v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_143];

    if (v5)
    {
      v6 = [HFServiceActionItemProvider alloc];
      v7 = [(HFTriggerItem *)self home];
      v8 = [(HFServiceActionItemProvider *)v6 initWithHome:v7 actionSet:v5];
      serviceActionItemProvider = self->_serviceActionItemProvider;
      self->_serviceActionItemProvider = v8;
    }
  }

  v10 = self->_serviceActionItemProvider;

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerItem *)self trigger];

  if (!v5)
  {
    NSLog(&cfstr_TriggerMustBeS.isa);
  }

  v6 = [(HFTriggerItem *)self trigger];

  if (v6)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__HFTriggerItem__subclass_updateWithOptions___block_invoke;
    v16[3] = &unk_277DF9660;
    v7 = v4;
    v17 = v7;
    v18 = self;
    v8 = __45__HFTriggerItem__subclass_updateWithOptions___block_invoke(v16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__HFTriggerItem__subclass_updateWithOptions___block_invoke_22;
    v13[3] = &unk_277DFD8C0;
    v14 = v7;
    v15 = self;
    v9 = [v8 flatMap:v13];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v9 = [v10 futureWithError:v11];
  }

  return v9;
}

id __45__HFTriggerItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:&unk_2825243F0];
  }

  else
  {
    v5 = [*(a1 + 40) trigger];
    v4 = [v5 hf_forceDisableReasons];
  }

  return v4;
}

id __45__HFTriggerItem__subclass_updateWithOptions___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = [v4 integerValue];

  v7 = [*(a1 + 32) objectForKeyedSubscript:HFTriggerItemIgnoresDisabledStateOptionKey];
  v8 = [v7 BOOLValue];

  v9 = [HFTriggerUISummary alloc];
  v10 = [*(a1 + 40) trigger];
  v11 = [*(a1 + 40) home];
  v12 = [(HFTriggerUISummary *)v9 initWithTrigger:v10 inHome:v11 forceDisabled:v6 != 0 ignoringDisabled:v8];

  [v5 setObject:v12 forKeyedSubscript:@"HFResultTriggerUISummaryKey"];
  v13 = [(HFTriggerUISummary *)v12 triggerDisplayTitle];
  v14 = v13;
  v15 = MEMORY[0x277CBEC38];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277CBEC38];
  }

  v17 = HFResultHiddenKey;
  if (v13)
  {
    v17 = HFResultDisplayTitleKey;
  }

  [v5 setObject:v16 forKeyedSubscript:*v17];
  [v5 setObject:v15 forKeyedSubscript:@"accessWhileLockedSettingDependency"];
  [v5 setObject:v15 forKeyedSubscript:@"userNotificationSettingsDependency"];
  [v5 setObject:v15 forKeyedSubscript:@"remoteAccessDependency"];
  objc_opt_class();
  v18 = [*(a1 + 40) trigger];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [*(a1 + 40) home];
  v22 = [v21 hf_remoteAccessState] == 1 || objc_msgSend(v20, "triggerActivationState") == 1;

  v23 = [(HFTriggerUISummary *)v12 triggerDescription];
  if (v23)
  {
    [v5 setObject:v23 forKeyedSubscript:@"description"];
  }

  if (v6)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  [v5 setObject:v25 forKeyedSubscript:@"displayWarningIcon"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 40) trigger];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "hf_triggerType")}];
  [v5 setObject:v28 forKeyedSubscript:@"triggerType"];

  v29 = [(HFTriggerUISummary *)v12 triggerIconDescriptor];
  [v5 setObject:v29 forKeyedSubscript:@"icon"];

  v30 = [(HFTriggerUISummary *)v12 triggerSummaryIconDescriptors];
  v31 = [*(a1 + 40) createRichIconDescriptors:v30 options:*(a1 + 32)];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __45__HFTriggerItem__subclass_updateWithOptions___block_invoke_2;
  v35[3] = &unk_277DF5938;
  v36 = v5;
  v32 = v5;
  v33 = [v31 flatMap:v35];

  return v33;
}

id __45__HFTriggerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"iconDescriptorList"];
  v3 = MEMORY[0x277D2C900];
  v4 = [HFItemUpdateOutcome outcomeWithResults:*(a1 + 32)];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (id)createRichIconDescriptors:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HFTriggerItem *)self usesRichIconDescriptors]&& ([(HFTriggerItem *)self serviceActionItemProvider], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(HFTriggerItem *)self serviceActionItemProvider];
    v10 = [v9 reloadItems];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HFTriggerItem_createRichIconDescriptors_options___block_invoke;
    v16[3] = &unk_277DFD910;
    v16[4] = self;
    v17 = v7;
    v11 = [v10 flatMap:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__HFTriggerItem_createRichIconDescriptors_options___block_invoke_3;
    v14[3] = &unk_277DFA5C0;
    v14[4] = self;
    v15 = v6;
    v12 = [v11 flatMap:v14];
  }

  else
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  return v12;
}

id __51__HFTriggerItem_createRichIconDescriptors_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceActionItemProvider];
  v3 = [v2 items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HFTriggerItem_createRichIconDescriptors_options___block_invoke_2;
  v9[3] = &unk_277DFD8E8;
  v10 = *(a1 + 40);
  v4 = [v3 na_map:v9];

  v5 = MEMORY[0x277D2C900];
  v6 = [v4 allObjects];
  v7 = [v5 combineAllFutures:v6];

  return v7;
}

id __51__HFTriggerItem_createRichIconDescriptors_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceActionItemProvider];
  v3 = [v2 items];

  v4 = MEMORY[0x277D2C900];
  v5 = [*(a1 + 32) translateToRichIconDescriptors:*(a1 + 40) basedOnActionItems:v3];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)translateToRichIconDescriptors:(id)a3 basedOnActionItems:(id)a4
{
  v5 = MEMORY[0x277CBEB40];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__HFTriggerItem_translateToRichIconDescriptors_basedOnActionItems___block_invoke;
  v21[3] = &unk_277DFD938;
  v22 = v8;
  v9 = v8;
  [v7 na_each:v21];
  v10 = [v7 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_37_4];

  v11 = [v6 na_map:&__block_literal_global_40_4];

  v12 = [v11 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_98_0];
  v13 = [v9 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HFTriggerItem_translateToRichIconDescriptors_basedOnActionItems___block_invoke_5;
  v18[3] = &unk_277DFD9C0;
  v19 = v12;
  v20 = v10;
  v14 = v10;
  v15 = v12;
  v16 = [v13 na_flatMap:v18];

  return v16;
}

void __67__HFTriggerItem_translateToRichIconDescriptors_basedOnActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

HFCAPackageIconDescriptor *__67__HFTriggerItem_translateToRichIconDescriptors_basedOnActionItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"icon"];
  if ([v3 conformsToProtocol:&unk_28252E568])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [HFCAPackageIconDescriptor alloc];
    v8 = [(HFCAPackageIconDescriptor *)v6 packageIdentifier];
    v9 = [(HFCAPackageIconDescriptor *)v6 state];

    v5 = [(HFCAPackageIconDescriptor *)v7 initWithPackageIdentifier:v8 state:v9];
  }

  return v5;
}

id __67__HFTriggerItem_translateToRichIconDescriptors_basedOnActionItems___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];

    v4 = [v6 allObjects];

    [v4 sortedArrayUsingComparator:&__block_literal_global_101];
  }

  else
  {
    [*(a1 + 40) objectForKeyedSubscript:v4];
  }
  v7 = ;

  return v7;
}

@end