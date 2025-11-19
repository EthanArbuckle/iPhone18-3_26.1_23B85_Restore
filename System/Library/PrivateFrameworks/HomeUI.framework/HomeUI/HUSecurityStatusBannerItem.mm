@interface HUSecurityStatusBannerItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUSecurityStatusBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUSecurityStatusBannerItem;
  v4 = [(HUStatusBannerItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUSecurityStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __58__HUSecurityStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D13FB8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  if ([v5 BOOLValue])
  {

LABEL_4:
    v8 = MEMORY[0x277D2C900];
    v9 = objc_alloc(MEMORY[0x277D14780]);
    v18 = v4;
    v19[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v9 initWithResults:v10];
    v12 = v8;
    v13 = v11;
    goto LABEL_5;
  }

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F20]];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = [v3 mutableCopy];
  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D140A8]];
  [v10 setObject:@"HFStatusTitleSecuritySystem" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v16 = HFLocalizedString();
  [v10 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v17 = [*(a1 + 32) _descriptionForLocalizedStringKey:@"HUBannerAlert_Security_Description" representedHomeKitObjects:v11];
  [v10 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v10 setObject:&unk_282491FD0 forKeyedSubscript:@"bannerItemCategory"];
  v12 = MEMORY[0x277D2C900];
  v13 = v10;
LABEL_5:
  v14 = [v12 futureWithResult:v13];

  return v14;
}

@end