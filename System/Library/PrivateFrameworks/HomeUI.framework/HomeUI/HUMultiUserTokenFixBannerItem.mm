@interface HUMultiUserTokenFixBannerItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUMultiUserTokenFixBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [options objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_10;
  }

  homeMediaAccount = [(HUMultiUserTokenFixBannerItem *)self homeMediaAccount];
  home = [(HUBannerItem *)self home];
  currentUser = [home currentUser];
  needsiTunesMultiUserRepair = [currentUser needsiTunesMultiUserRepair];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = homeMediaAccount;
    v37 = 1024;
    v38 = needsiTunesMultiUserRepair;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "mediaAccount = [%@]. needsiTunesMultiUserRepair = [%d]", buf, 0x12u);
  }

  v11 = 0;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && homeMediaAccount && ((needsiTunesMultiUserRepair ^ 1) & 1) == 0)
  {
    v11 = ![(HUMultiUserTokenFixBannerItem *)self forceHidden];
  }

  forceShowBanner = [(HUBannerItem *)self forceShowBanner];

  if (forceShowBanner || (v11 & 1) != 0)
  {
    v15 = objc_opt_new();
    v18 = _HULocalizedStringWithDefaultValue(@"HUSetupCellMultiUserTokenFix_Title", @"HUSetupCellMultiUserTokenFix_Title", 1);
    [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v15 setObject:@"Home.Banners.MultiUserTokenFix.SignIntoAppleMusic" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v15 setObject:@"HUSetupCellMultiUserTokenFix_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
    v19 = _HULocalizedStringWithDefaultValue(@"HUSetupCellMultiUserTokenFix_Details", @"HUSetupCellMultiUserTokenFix_Details", 1);
    [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v20 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSignIn", @"HUSetupCellSignIn", 1);
    [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v21 = objc_alloc(MEMORY[0x277D14838]);
    v22 = *MEMORY[0x277D13AE8];
    v31[0] = *MEMORY[0x277D13AF0];
    v31[1] = v22;
    v23 = *MEMORY[0x277D13A48];
    v32[0] = *MEMORY[0x277D13A58];
    v32[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v25 = [v21 initWithImageIdentifiersKeyedBySize:v24];
    [v15 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13E88]];

    v26 = MEMORY[0x277CBEB98];
    home2 = [(HUBannerItem *)self home];
    currentUser2 = [home2 currentUser];
    v29 = [v26 na_setWithSafeObject:currentUser2];
    [v15 setObject:v29 forKeyedSubscript:*MEMORY[0x277D13DA8]];

    [v15 setObject:&unk_282491A48 forKeyedSubscript:@"bannerItemCategory"];
    v17 = [MEMORY[0x277D2C900] futureWithResult:v15];
  }

  else
  {
LABEL_10:
    v13 = MEMORY[0x277D2C900];
    v14 = objc_alloc(MEMORY[0x277D14780]);
    v33 = *MEMORY[0x277D13FB8];
    v34 = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v16 = [v14 initWithResults:v15];
    v17 = [v13 futureWithResult:v16];
  }

  return v17;
}

@end