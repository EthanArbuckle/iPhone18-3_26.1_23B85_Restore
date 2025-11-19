@interface HUMultiUserTokenFixBannerItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUMultiUserTokenFixBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = [(HUMultiUserTokenFixBannerItem *)self homeMediaAccount];
  v7 = [(HUBannerItem *)self home];
  v8 = [v7 currentUser];
  v9 = [v8 needsiTunesMultiUserRepair];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v6;
    v37 = 1024;
    v38 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "mediaAccount = [%@]. needsiTunesMultiUserRepair = [%d]", buf, 0x12u);
  }

  v11 = 0;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && v6 && ((v9 ^ 1) & 1) == 0)
  {
    v11 = ![(HUMultiUserTokenFixBannerItem *)self forceHidden];
  }

  v12 = [(HUBannerItem *)self forceShowBanner];

  if (v12 || (v11 & 1) != 0)
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
    v27 = [(HUBannerItem *)self home];
    v28 = [v27 currentUser];
    v29 = [v26 na_setWithSafeObject:v28];
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