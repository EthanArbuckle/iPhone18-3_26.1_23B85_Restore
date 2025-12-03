@interface HUDoorbellChimeDevicesItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)enableDoorbellChime:(BOOL)chime forItem:(id)item;
- (void)mediaProfileContainer:(id)container didUpdateSettingKeypath:(id)keypath value:(id)value;
@end

@implementation HUDoorbellChimeDevicesItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc(MEMORY[0x277D147F0]);
  home = [(HFItemManager *)self home];
  v7 = [v5 initWithHome:home];

  [v7 setFilter:&__block_literal_global_194];
  v8 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v7 transformationBlock:&__block_literal_global_256];
  v9 = objc_alloc(MEMORY[0x277D142F0]);
  home2 = [(HFItemManager *)self home];
  v11 = [v9 initWithHome:home2];

  [v11 setFilter:&__block_literal_global_263_0];
  v12 = objc_alloc(MEMORY[0x277D14C38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_5;
  v15[3] = &unk_277DC0A98;
  v15[4] = self;
  v13 = [v12 initWithSourceProvider:v11 transformationBlock:v15];
  [array addObject:v8];
  [array addObject:v13];

  return array;
}

uint64_t __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2825BCB38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (!v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_13;
    }

    v6 = [v2 hf_isHomePod];
LABEL_12:
    v5 = v6;
    goto LABEL_13;
  }

  if (([MEMORY[0x277D14810] isHomePodMediaSystem:v4] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14810], "isHomePod:", v4) & 1) == 0)
  {
    v6 = [MEMORY[0x277D14810] isSiriEndpoint:v4];
    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:

  return v5;
}

id __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D14C30]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_3;
  v7[3] = &unk_277DC0760;
  v8 = v2;
  v4 = v2;
  v5 = [v3 initWithSourceItem:v4 transformationBlock:v7];

  return v5;
}

id __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = MEMORY[0x277D14810];
  v8 = [*(a1 + 32) mediaProfileContainer];
  LODWORD(v7) = [v7 supportsDoorbellChime:v8];

  if (v7)
  {
    v9 = MEMORY[0x277CCABB0];
    [*(a1 + 32) isDoorbellChimeEnabled];
    v10 = [v9 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  return v6;
}

void *__64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 hf_siriEndpointProfile];
  if (v6)
  {
    v7 = [v5 hf_primaryService];

    if (v7)
    {
      v6 = [v5 supportsDoorbellChime];
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

id __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_6;
  v9[3] = &unk_277DBDC00;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 initWithSourceItem:v6 transformationBlock:v9];

  return v7;
}

id __64__HUDoorbellChimeDevicesItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([v10 isSiriEndpointAccessory])
  {
    v11 = [v10 commonSettingsManager];

    if (v11)
    {
      v12 = [v10 commonSettingsManager];
      [v12 addObserver:*(a1 + 40)];
    }
  }

  v13 = MEMORY[0x277CCABB0];
  [v10 isDoorbellChimeEnabled];
  v14 = [v13 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

- (id)enableDoorbellChime:(BOOL)chime forItem:(id)item
{
  sourceItem = [item sourceItem];
  v6 = &unk_28251AE08;
  if ([sourceItem conformsToProtocol:v6])
  {
    v7 = sourceItem;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HUDoorbellChimeDevicesItemManager_enableDoorbellChime_forItem___block_invoke;
    v12[3] = &unk_277DBB320;
    v13 = v8;
    chimeCopy = chime;
    futureWithNoResult = [v9 futureWithBlock:v12];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __65__HUDoorbellChimeDevicesItemManager_enableDoorbellChime_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) enableDoorbellChime:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HUDoorbellChimeDevicesItemManager_enableDoorbellChime_forItem___block_invoke_2;
  v7[3] = &unk_277DB7530;
  v8 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

void __65__HUDoorbellChimeDevicesItemManager_enableDoorbellChime_forItem___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to enable/disable doorbell chime setting : %@", &v6, 0xCu);
    }

    [*(a1 + 32) finishWithError:v4];
  }

  [*(a1 + 32) finishWithNoResult];
}

- (void)mediaProfileContainer:(id)container didUpdateSettingKeypath:(id)keypath value:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  keypathCopy = keypath;
  valueCopy = value;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = keypathCopy;
    v14 = 2112;
    v15 = valueCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Received update for setting keypath %@ value = %@", &v12, 0x16u);
  }

  v11 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
}

@end