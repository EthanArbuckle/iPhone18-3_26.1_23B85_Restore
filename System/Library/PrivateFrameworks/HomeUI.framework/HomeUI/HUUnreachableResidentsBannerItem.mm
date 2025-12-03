@interface HUUnreachableResidentsBannerItem
- (BOOL)_hasPotentialResidentsConfiguring;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUUnreachableResidentsBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = [options objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v5 BOOLValue];

  home = [(HUBannerItem *)self home];
  residentDevices = [home residentDevices];

  v9 = [residentDevices na_filter:&__block_literal_global_236];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    v15 = [residentDevices count];
    v16 = [v9 count];
    v17 = @"NO";
    *buf = 138413570;
    selfCopy4 = self;
    v43 = 2112;
    if (hasOptedToHH2)
    {
      v17 = @"YES";
    }

    v44 = v14;
    v45 = 2048;
    v46 = v15;
    v47 = 2048;
    v48 = v16;
    v49 = 2112;
    v50 = v9;
    v51 = 2112;
    v52 = v17;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Total residents: %lu - Reachable (%lu): %@ - hasOptedToHH2: %@", buf, 0x3Eu);
  }

  v40 = v9;
  if (![residentDevices count] || ((objc_msgSend(v9, "count") == 0) & hasOptedToHH2) == 0)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v19;
      v20 = "%@:%@ Setting banner shouldShow to NO";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (bOOLValue)
  {
LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  if ([residentDevices count] && !objc_msgSend(v9, "count") && -[HUUnreachableResidentsBannerItem _hasPotentialResidentsConfiguring](self, "_hasPotentialResidentsConfiguring"))
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v19;
      v20 = "%@:%@: Hiding banner since there are HomePods or Apple TVs in the home that are still configuring.";
LABEL_15:
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v21 = 1;
LABEL_18:
  if ([(HUBannerItem *)self forceShowBanner])
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ Forcing banner shouldShow to YES", buf, 0x16u);
    }

    v21 = 1;
  }

  v24 = objc_opt_new();
  v25 = _HULocalizedStringWithDefaultValue(@"HUUnreachableResidents_Title", @"HUUnreachableResidents_Title", 1);
  [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v24 setObject:@"Home.Banners.UnreachableResident" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v24 setObject:@"HUUnreachableResidents_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v26 = _HULocalizedStringWithDefaultValue(@"HUUnreachableResidents_Details", @"HUUnreachableResidents_Details", 1);
  [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v27 = _HULocalizedStringWithDefaultValue(@"HUUnreachableResidents_Control_Description", @"HUUnreachableResidents_Control_Description", 1);
  [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v28 = MEMORY[0x277D755D0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v30 = [v28 configurationWithHierarchicalColor:hf_keyColor];

  v31 = [MEMORY[0x277D755D0] configurationWithScale:0];
  v32 = [v31 configurationByApplyingConfiguration:v30];
  v33 = [objc_alloc(MEMORY[0x277D14B78]) initWithSystemImageName:@"homekit" configuration:v32];
  v34 = [objc_alloc(MEMORY[0x277D14728]) initWithSymbolIconConfiguration:v33];
  [v24 setObject:v34 forKeyedSubscript:*MEMORY[0x277D13E88]];
  v35 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v24 setObject:v35 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  home2 = [(HUBannerItem *)self home];
  LODWORD(v35) = [home2 supportsResidentSelection];

  v37 = [MEMORY[0x277CCABB0] numberWithInt:v35 | v21 ^ 1];
  [v24 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  [v24 setObject:&unk_282492060 forKeyedSubscript:@"bannerItemCategory"];
  v38 = [MEMORY[0x277D2C900] futureWithResult:v24];

  return v38;
}

- (BOOL)_hasPotentialResidentsConfiguring
{
  v26 = *MEMORY[0x277D85DE8];
  home = [(HUBannerItem *)self home];
  residentDevices = [home residentDevices];

  home2 = [(HUBannerItem *)self home];
  accessories = [home2 accessories];
  v8 = [accessories na_filter:&__block_literal_global_32_1];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HUUnreachableResidentsBannerItem__hasPotentialResidentsConfiguring__block_invoke_2;
  v16[3] = &unk_277DB8EC0;
  v17 = residentDevices;
  v9 = residentDevices;
  v10 = [v8 na_filter:v16];
  v11 = [v10 count];
  if (v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v10 count];
      *buf = 138413058;
      selfCopy = self;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Found %lu potential residents that are not in the residents list - possible configuring state: %@ ", buf, 0x2Au);
    }
  }

  return v11 != 0;
}

uint64_t __69__HUUnreachableResidentsBannerItem__hasPotentialResidentsConfiguring__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hf_isAppleTV];
  }

  return v3;
}

uint64_t __69__HUUnreachableResidentsBannerItem__hasPotentialResidentsConfiguring__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HUUnreachableResidentsBannerItem__hasPotentialResidentsConfiguring__block_invoke_3;
  v7[3] = &unk_277DBD480;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:v7];

  return v4 ^ 1;
}

BOOL __69__HUUnreachableResidentsBannerItem__hasPotentialResidentsConfiguring__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 hf_linkedAccessory];
  v4 = v3 == *(a1 + 32);

  return v4;
}

@end