@interface HUMediaServiceErrorBannerItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUMediaServiceErrorBannerItem

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUMediaServiceErrorBannerItem;
  v4 = [(HUBannerItem *)&v6 copyWithZone:zone];
  [v4 copyLatestResultsFromItem:self];
  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = [options objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = MEMORY[0x277D2C900];
    v7 = objc_alloc(MEMORY[0x277D14780]);
    v24 = *MEMORY[0x277D13FB8];
    v25[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v7 initWithResults:v8];
    v10 = [v6 futureWithResult:v9];
  }

  else
  {
    mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
    home = [(HUBannerItem *)self home];
    v8 = [mEMORY[0x277D14820] mediaServicesForHome:home];

    v13 = [v8 na_firstObjectPassingTest:&__block_literal_global_233];
    if (v13 || [(HUBannerItem *)self forceShowBanner])
    {
      v14 = MEMORY[0x277D2C900];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __61__HUMediaServiceErrorBannerItem__subclass_updateWithOptions___block_invoke_2;
      v22[3] = &unk_277DB7580;
      v15 = v13;
      v23 = v15;
      v16 = [v14 futureWithBlock:v22];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__HUMediaServiceErrorBannerItem__subclass_updateWithOptions___block_invoke_4;
      v19[3] = &unk_277DC2588;
      v9 = v15;
      v20 = v9;
      selfCopy = self;
      v10 = [v16 flatMap:v19];
    }

    else
    {
      v18 = objc_opt_new();
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      v10 = [MEMORY[0x277D2C900] futureWithResult:v18];

      v9 = 0;
    }
  }

  return v10;
}

void __61__HUMediaServiceErrorBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D755B8];
  v5 = [*(a1 + 32) iconImageURL];
  v6 = [v4 hf_fetchImageFromURL:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HUMediaServiceErrorBannerItem__subclass_updateWithOptions___block_invoke_3;
  v9[3] = &unk_277DBD728;
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

id __61__HUMediaServiceErrorBannerItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) serviceName];
  v12 = HULocalizedStringWithFormat(@"HUMediaServiceError_Title_FormatString", @"%@", v6, v7, v8, v9, v10, v11, v5);
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v4 setObject:@"Home.Banners.MediaServiceError.ReconnectAccount" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v4 setObject:@"HUMediaServiceError" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v19 = HULocalizedStringWithFormat(@"HUMediaServiceError_Details_FormatString", @"%@", v13, v14, v15, v16, v17, v18, v5);
  [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v26 = HULocalizedStringWithFormat(@"HUMediaServiceError_Button_FormatString", @"%@", v20, v21, v22, v23, v24, v25, v5);
  [v4 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13DE8]];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13E98]];
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x277D14838]);
    v28 = *MEMORY[0x277D13AE8];
    v37[0] = *MEMORY[0x277D13AF0];
    v37[1] = v28;
    v29 = *MEMORY[0x277D13A48];
    v38[0] = *MEMORY[0x277D13A58];
    v38[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v31 = [v27 initWithImageIdentifiersKeyedBySize:v30];
    [v4 setObject:v31 forKeyedSubscript:*MEMORY[0x277D13E88]];
  }

  v32 = [*(a1 + 32) bundleIdentifier];
  [v4 setObject:v32 forKeyedSubscript:@"HFResultMediaServiceBundleIdentifierKey"];

  LOBYTE(v32) = [*(a1 + 32) authFatalError];
  v33 = [*(a1 + 40) forceShowBanner];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:((v33 | v32) & 1) == 0];
  [v4 setObject:v34 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  [v4 setObject:&unk_282491FE8 forKeyedSubscript:@"bannerItemCategory"];
  v35 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v35;
}

@end