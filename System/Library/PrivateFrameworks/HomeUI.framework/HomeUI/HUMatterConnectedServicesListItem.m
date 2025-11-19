@interface HUMatterConnectedServicesListItem
- (HUMatterConnectedServicesListItem)initWithAccessory:(id)a3 home:(id)a4 itemProvider:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUMatterConnectedServicesListItem

- (HUMatterConnectedServicesListItem)initWithAccessory:(id)a3 home:(id)a4 itemProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((v9 != 0) == (v10 != 0))
  {
    NSLog(&cfstr_ExactlyOneShou.isa);
  }

  v15.receiver = self;
  v15.super_class = HUMatterConnectedServicesListItem;
  v12 = [(HUMatterConnectedServicesListItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessory, a3);
    objc_storeStrong(&v13->_home, a4);
    objc_storeStrong(&v13->_itemProvider, a5);
  }

  return v13;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v20[0] = *MEMORY[0x277D13F60];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedServicesTitle", @"HUMatterConnectedServicesTitle", 1);
    v8 = *MEMORY[0x277D13E20];
    v21[0] = v7;
    v21[1] = &stru_2823E0EE8;
    v9 = *MEMORY[0x277D13FD0];
    v20[1] = v8;
    v20[2] = v9;
    v20[3] = *MEMORY[0x277D13FB8];
    v21[2] = MEMORY[0x277CBEC38];
    v21[3] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

    v11 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277D14780] outcomeWithResults:v10];
    v13 = [v11 futureWithResult:v12];
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = [(HUMatterConnectedServicesListItem *)self itemProvider];
    v15 = [v14 reloadItems];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__HUMatterConnectedServicesListItem__subclass_updateWithOptions___block_invoke;
    v17[3] = &unk_277DB84D8;
    objc_copyWeak(&v18, &location);
    v13 = [v15 flatMap:v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  return v13;
}

id __65__HUMatterConnectedServicesListItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained itemProvider];
  v3 = [v2 items];
  v4 = [v3 na_filter:&__block_literal_global_18];

  v5 = [WeakRetained accessory];

  if (v5)
  {
    v6 = [WeakRetained accessory];
    if ([v6 supportsCHIP])
    {
      v7 = [v4 count] < 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v4 count] == 0;
  }

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", objc_msgSend(v4, "count")];
  v18[0] = *MEMORY[0x277D13F60];
  v9 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedServicesTitle", @"HUMatterConnectedServicesTitle", 1);
  v10 = *MEMORY[0x277D13E20];
  v19[0] = v9;
  v19[1] = v8;
  v11 = *MEMORY[0x277D13FD0];
  v18[1] = v10;
  v18[2] = v11;
  v19[2] = MEMORY[0x277CBEC28];
  v18[3] = *MEMORY[0x277D13FB8];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277D14780] outcomeWithResults:v13];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

uint64_t __65__HUMatterConnectedServicesListItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
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

  v6 = [v5 connectedEcosystem];
  v7 = [v6 vendor];
  if ([v7 isSystemCommissionerVendor])
  {
    v8 = [v5 connectedEcosystem];
    v9 = [v8 owned] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end