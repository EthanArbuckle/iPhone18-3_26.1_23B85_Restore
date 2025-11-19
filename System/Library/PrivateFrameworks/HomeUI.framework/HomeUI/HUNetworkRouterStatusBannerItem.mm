@interface HUNetworkRouterStatusBannerItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNetworkRouterStatusBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUNetworkRouterStatusBannerItem;
  v4 = [(HUStatusBannerItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HUNetworkRouterStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __63__HUNetworkRouterStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277D13FB8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v8 = [v3 mutableCopy];
    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D140B0]];
    if ([v9 count] == 1)
    {
      v10 = [v9 anyObject];
      v11 = [v10 type];
    }

    else
    {
      v11 = [MEMORY[0x277D148B8] combinedType];
    }

    if ([v9 count] == 1)
    {
      v12 = [v9 anyObject];
      v13 = [v12 stateTypeIdentifier];
    }

    else
    {
      v13 = [MEMORY[0x277D148B8] combinedStateTypeIdentifier];
    }

    if ((v11 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];
      v7 = [MEMORY[0x277D2C900] futureWithResult:v8];
    }

    else
    {
      v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14078]];
      v15 = [*(a1 + 32) _sortedObjectDisplayNamesForHomeKitObjects:v14];
      v16 = [v15 count];
      v17 = @"HFStatusTitleNetworkRouter_One";
      if (v16 > 1)
      {
        v17 = @"HFStatusTitleNetworkRouter_MultipleUnknown";
      }

      v18 = *MEMORY[0x277D13F68];
      v19 = v17;
      [v8 setObject:v19 forKeyedSubscript:v18];
      v20 = HFLocalizedString();

      [v8 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13F60]];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUBannerNetworkRouter_Description_%@", v13];
      v22 = [*(a1 + 32) _descriptionForLocalizedStringKey:v21 representedHomeKitObjects:v14];
      [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13E20]];

      [v8 setObject:&unk_2824916E8 forKeyedSubscript:@"bannerItemCategory"];
      v7 = [MEMORY[0x277D2C900] futureWithResult:v8];
    }
  }

  return v7;
}

@end