@interface HUEnergySettingsItemModule
- (HUEnergySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)subscriptionChanged:(id)a3;
@end

@implementation HUEnergySettingsItemModule

- (HUEnergySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUEnergySettingsItemModule;
  v8 = [(HFItemModule *)&v13 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = +[HUHomeEnergyManagerHelper tccApps];
    [(HUEnergySettingsItemModule *)v9 setTccApps:v10];

    [(HUEnergySettingsItemModule *)v9 _buildItemProviders];
    [(HUEnergySettingsItemModule *)v9 setHasSentUtilityAnalytics:0];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v9 selector:sel_subscriptionChanged_ name:@"hasUtilitySubscriptionDidChange" object:0];
  }

  return v9;
}

- (void)_buildItemProviders
{
  v33[3] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v32[0] = *MEMORY[0x277D13EA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D14CE8], "isUsingiCloud") ^ 1}];
  v33[0] = v4;
  v32[1] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtility", @"HUEnergySettingsConnectUtility", 1);
  v32[2] = *MEMORY[0x277D13EA0];
  v33[1] = v5;
  v33[2] = @"plus";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v7 = [v3 initWithResults:v6];
  [(HUEnergySettingsItemModule *)self setConnectUtilityItem:v7];

  v8 = objc_alloc(MEMORY[0x277D14B38]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke;
  v28[3] = &unk_277DB7448;
  objc_copyWeak(&v29, &location);
  v9 = [v8 initWithResultsBlock:v28];
  [(HUEnergySettingsItemModule *)self setUtilityDetailsItem:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_2_145;
  v26[3] = &unk_277DB7448;
  objc_copyWeak(&v27, &location);
  v11 = [v10 initWithResultsBlock:v26];
  [(HUEnergySettingsItemModule *)self setGridForecastItem:v11];

  v12 = [(HUEnergySettingsItemModule *)self tccApps];
  v13 = [v12 na_map:&__block_literal_global_243];
  [(HUEnergySettingsItemModule *)self setEkAppsItems:v13];

  v14 = [(HUEnergySettingsItemModule *)self connectUtilityItem];
  v31[0] = v14;
  v15 = [(HUEnergySettingsItemModule *)self utilityDetailsItem];
  v31[1] = v15;
  v16 = [(HUEnergySettingsItemModule *)self gridForecastItem];
  v31[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];

  v18 = objc_alloc(MEMORY[0x277D14B40]);
  v19 = [MEMORY[0x277CBEB98] setWithArray:v17];
  v20 = [v18 initWithItems:v19];
  [(HUEnergySettingsItemModule *)self setStaticItemProvider:v20];

  v21 = objc_alloc(MEMORY[0x277D14B40]);
  v22 = MEMORY[0x277CBEB98];
  v23 = [(HUEnergySettingsItemModule *)self ekAppsItems];
  v24 = [v22 setWithArray:v23];
  v25 = [v21 initWithItems:v24];
  [(HUEnergySettingsItemModule *)self setStaticEKAppsItemProvider:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained home];
  v3 = [v2 hf_hasUtilitySubscription];

  if (v3)
  {
    goto LABEL_2;
  }

  v6 = [WeakRetained home];
  v7 = [v6 hf_currentUserIsAdministrator];

  if ((v7 & 1) == 0)
  {
    v12 = MEMORY[0x277D2C900];
    v34 = *MEMORY[0x277D13FB8];
    v35[0] = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = v35;
    v15 = &v34;
LABEL_9:
    v4 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v5 = [v12 futureWithResult:v4];
    goto LABEL_10;
  }

  v8 = [WeakRetained home];
  v9 = [v8 hf_isHomeElectricitySupported];

  if ((v9 & 1) == 0)
  {
    v12 = MEMORY[0x277D2C900];
    v32 = *MEMORY[0x277D13FB8];
    v33 = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v33;
    v15 = &v32;
    goto LABEL_9;
  }

  v10 = [MEMORY[0x277D146E8] sharedDispatcher];
  v11 = [v10 homeManager];
  if ([v11 hasOptedToHH2])
  {

    goto LABEL_16;
  }

  v18 = [MEMORY[0x277D14CE8] isUsingiCloud];

  if (v18)
  {
    v12 = MEMORY[0x277D2C900];
    v30 = *MEMORY[0x277D13FB8];
    v31 = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v31;
    v15 = &v30;
    goto LABEL_9;
  }

LABEL_16:
  v19 = [WeakRetained home];
  v20 = [v19 hf_cachedHasEnergySite];

  if (!v20)
  {
LABEL_2:
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_2;
    v27[3] = &unk_277DB7580;
    v27[4] = WeakRetained;
    v4 = [MEMORY[0x277D2C900] futureWithBlock:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_4;
    v26[3] = &unk_277DC2E28;
    v26[4] = WeakRetained;
    v5 = [v4 flatMap:v26];
LABEL_10:
    v16 = v5;
    goto LABEL_11;
  }

  v21 = MEMORY[0x277D2C900];
  v29[0] = MEMORY[0x277CBEC38];
  v22 = *MEMORY[0x277D13F60];
  v28[0] = @"show-connect-utility-item";
  v28[1] = v22;
  v4 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityTitle", @"HUEnergySettingsConnectUtilityTitle", 1);
  v29[1] = v4;
  v28[2] = *MEMORY[0x277D13E30];
  v23 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityDetail", @"HUEnergySettingsConnectUtilityDetail", 1);
  v29[2] = v23;
  v28[3] = *MEMORY[0x277D13E98];
  v24 = HUImageNamed(@"Onboarding-HomeUtilityLogo");
  v29[3] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v16 = [v21 futureWithResult:v25];

LABEL_11:

  return v16;
}

void __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HUHomeEnergyManagerHelper alloc];
  v5 = [*(a1 + 32) home];
  v6 = [(HUHomeEnergyManagerHelper *)v4 initWithHome:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_3;
  v8[3] = &unk_277DBB8D8;
  v9 = v3;
  v7 = v3;
  [(HUHomeEnergyManagerHelper *)v6 utilityDetailsWithCompletionHandler:v8];
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 hf_cachedHasEnergySite];

  if (v5)
  {
    [*(a1 + 32) setDetailsDict:v3];
    v6 = [v3 objectForKeyedSubscript:@"utilitySubscriptionID"];

    v7 = MEMORY[0x277D2C900];
    if (v6)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_5;
      v20[3] = &unk_277DB7580;
      v8 = v3;
      v21 = v8;
      v9 = [v7 futureWithBlock:v20];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_125;
      v18[3] = &unk_277DBAFF8;
      v19 = v8;
      v10 = [v9 flatMap:v18];

      v11 = v21;
    }

    else
    {
      v23[0] = MEMORY[0x277CBEC38];
      v13 = *MEMORY[0x277D13F60];
      v22[0] = @"show-connect-utility-item";
      v22[1] = v13;
      v11 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityTitle", @"HUEnergySettingsConnectUtilityTitle", 1);
      v23[1] = v11;
      v22[2] = *MEMORY[0x277D13E30];
      v14 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityDetail", @"HUEnergySettingsConnectUtilityDetail", 1);
      v23[2] = v14;
      v22[3] = *MEMORY[0x277D13E98];
      v15 = HUImageNamed(@"Onboarding-HomeUtilityLogo");
      v23[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
      v10 = [v7 futureWithResult:v16];
    }
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v24 = *MEMORY[0x277D13FB8];
    v25[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v12 futureWithResult:v11];
  }

  return v10;
}

void __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"utilityArtworkURL"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v6 = [MEMORY[0x277CCAD30] sharedSession];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_122;
    v14 = &unk_277DC2E00;
    v15 = v3;
    v16 = v5;
    v7 = v5;
    v8 = [v6 dataTaskWithURL:v7 completionHandler:&v11];

    [v8 resume];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:@"utilityName"];
      *buf = 136315394;
      v18 = "[HUEnergySettingsItemModule _buildItemProviders]_block_invoke_5";
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "(%s) missing artwork url for %@", buf, 0x16u);
    }

    [v3 finishWithNoResult];
  }
}

void __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_122(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = HFLogForCategory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v17 = *(a1 + 40);
    v18 = 136315650;
    v19 = "[HUEnergySettingsItemModule _buildItemProviders]_block_invoke";
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v9;
    v14 = "(%s) error occurred loading artwork url %@: %@";
    v15 = v10;
    v16 = 32;
LABEL_10:
    _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, v14, &v18, v16);
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277D755B8] imageWithData:v7];
  if (v11)
  {
    v12 = v11;
    [*(a1 + 32) finishWithResult:v11];

    goto LABEL_6;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v18 = 136315394;
    v19 = "[HUEnergySettingsItemModule _buildItemProviders]_block_invoke";
    v20 = 2112;
    v21 = v13;
    v14 = "(%s) could not create image for %@";
    v15 = v10;
    v16 = 22;
    goto LABEL_10;
  }

LABEL_3:

  [*(a1 + 32) finishWithNoResult];
LABEL_6:
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"isDisconnected"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUUtilityDetailsUtilityDisconnectedTitle", @"HUUtilityDetailsUtilityDisconnectedTitle", 1);
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

  else
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"utilityAccountNumber"];
    v14 = HULocalizedStringWithFormat(@"HUEnergySettingsUtilityAccountNumber", @"%@", v8, v9, v10, v11, v12, v13, v7);
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"utilityName"];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13F60]];

  objc_opt_class();
  v16 = v3;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = v16;
  if (!v18)
  {
    v19 = HUImageNamed(@"Onboarding-HomeUtilityLogo");
  }

  [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13E98]];
  v20 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v20;
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_2_145(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsShow_Title", @"HUEnergySettingsShow_Title", 1);
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D13FB8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [WeakRetained home];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "hf_isGridForecastSupported") ^ 1}];
  v10[2] = *MEMORY[0x277D13F10];
  v11[1] = v6;
  v11[2] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_3_149(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_4_151;
  v7[3] = &unk_277DB7478;
  v8 = v2;
  v4 = v2;
  v5 = [v3 initWithResultsBlock:v7];

  return v5;
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_4_151(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_5_152;
  v8[3] = &unk_277DB7580;
  v9 = *(a1 + 32);
  v3 = [v2 futureWithBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_7;
  v6[3] = &unk_277DBAFF8;
  v7 = *(a1 + 32);
  v4 = [v3 flatMap:v6];

  return v4;
}

void __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_5_152(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D1B1A8]);
  v5 = [*(a1 + 32) bundleID];
  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:32.0 scale:{32.0, v9}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_6;
  v12[3] = &unk_277DBD860;
  v14 = v9;
  v13 = v3;
  v11 = v3;
  [v6 getImageForImageDescriptor:v10 completion:v12];
}

void __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(a2 scale:"CGImage") orientation:{0, *(a1 + 40)}];
  [*(a1 + 32) finishWithResult:v3];
}

id __49__HUEnergySettingsItemModule__buildItemProviders__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [*(a1 + 32) name];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EA8]];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13E98]];
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v6;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUEnergySettingsItemModule *)self staticItemProvider];
  v5 = [(HUEnergySettingsItemModule *)self staticEKAppsItemProvider];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUEnergySettingsItemModule *)self gridForecastItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEnergySettingsShowGridSectionIdentifier"];
    v9 = [(HUEnergySettingsItemModule *)self gridForecastItem];
    v49[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    [v8 setItems:v10];

    v11 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsShow_LearnMore_Footer", @"HUEnergySettingsShow_LearnMore_Footer", 1);
    v18 = HULocalizedStringWithFormat(@"HUEnergySettingsShow_Footer", @"%@", v12, v13, v14, v15, v16, v17, v11);
    v19 = MEMORY[0x277CCA898];
    v20 = [MEMORY[0x277CBEBC0] hu_gridForecastLearnMoreURL];
    v21 = [v19 hf_attributedLinkStringForString:v18 linkString:v11 linkURL:v20];

    [v8 setAttributedFooterTitle:v21];
    [v5 addObject:v8];
  }

  v22 = [(HUEnergySettingsItemModule *)self utilityDetailsItem];
  v23 = [v4 containsObject:v22];

  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEnergySettingsUtilityDetailsIdentifier"];
    v25 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsUtilitySection_Header", @"HUEnergySettingsUtilitySection_Header", 1);
    [v24 setHeaderTitle:v25];

    v26 = [(HUEnergySettingsItemModule *)self utilityDetailsItem];
    v27 = [v26 latestResults];
    v28 = [v27 objectForKeyedSubscript:@"show-connect-utility-item"];
    v29 = [v28 BOOLValue];

    v30 = [(HUEnergySettingsItemModule *)self utilityDetailsItem];
    v31 = v30;
    if (v29)
    {
      v48[0] = v30;
      v32 = [(HUEnergySettingsItemModule *)self connectUtilityItem];
      v48[1] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      [v24 setItems:v33];

      v34 = [(HUEnergySettingsItemModule *)self connectUtilityItem];
      v35 = [v34 latestResults];
      v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      v37 = [v36 BOOLValue];

      if (v37)
      {
        v38 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilitySignInFooter", @"HUEnergySettingsConnectUtilitySignInFooter", 1);
        [v24 setFooterTitle:v38];
      }

      if (![(HUEnergySettingsItemModule *)self hasSentUtilityAnalytics])
      {
        +[HUHomeEnergyAnalyticsHelper sendUtilityOnboardingEntryPointInSettingsViewEvent];
        [(HUEnergySettingsItemModule *)self setHasSentUtilityAnalytics:1];
      }
    }

    else
    {
      v47 = v30;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [v24 setItems:v39];
    }

    [v5 addObject:v24];
  }

  v40 = [(HUEnergySettingsItemModule *)self staticEKAppsItemProvider];
  v41 = [v40 items];
  v42 = [v4 intersectsSet:v41];

  if (v42)
  {
    v43 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEnergySettingsEnergyKitAppsIdentifier"];
    v44 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsEnergyKitSection_Header", @"HUEnergySettingsEnergyKitSection_Header", 1);
    [v43 setHeaderTitle:v44];

    v45 = [(HUEnergySettingsItemModule *)self ekAppsItems];
    [v43 setItems:v45];

    [v5 addObject:v43];
  }

  return v5;
}

- (void)subscriptionChanged:(id)a3
{
  v5 = MEMORY[0x277D14788];
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUEnergySettingsItemModule *)self utilityDetailsItem];
  v8 = [v6 setWithObject:v7];
  v11 = [v5 requestToUpdateItems:v8 senderSelector:a2];

  v9 = [(HFItemModule *)self itemUpdater];
  v10 = [v9 performItemUpdateRequest:v11];
}

@end