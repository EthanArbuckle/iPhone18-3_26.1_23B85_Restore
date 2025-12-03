@interface HFNoRemoteAccessStatusDetailsItem
- (HFNoRemoteAccessStatusDetailsItem)init;
- (HFNoRemoteAccessStatusDetailsItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFNoRemoteAccessStatusDetailsItem

- (HFNoRemoteAccessStatusDetailsItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFNoRemoteAccessStatusDetailsItem.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HFNoRemoteAccessStatusDetailsItem init]", v5}];

  return 0;
}

- (HFNoRemoteAccessStatusDetailsItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HFNoRemoteAccessStatusDetailsItem;
  v6 = [(HFNoRemoteAccessStatusDetailsItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  home = [(HFNoRemoteAccessStatusDetailsItem *)self home];
  hf_remoteAccessState = [home hf_remoteAccessState];

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v7 homeManager];
  residentProvisioningStatus = [homeManager residentProvisioningStatus];

  if (residentProvisioningStatus)
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:&unk_282523B68 forKeyedSubscript:@"priority"];
    if (hf_remoteAccessState == 1)
    {
      v16 = @"HFStatusDetailsNeedsTwoFactorAuthTitle";
    }

    else
    {
      v16 = @"HFStatusDetailsRemoteAccessAvailableButNeedsTwoFactorAuthTitle";
    }

    v17 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v17 forKeyedSubscript:@"title"];

    v18 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNeedsTwoFactorAuthSettingsLink", @"HFStatusDetailsNeedsTwoFactorAuthSettingsLink", 1);
    v19 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNeedsTwoFactorAuthLearnMoreLink", @"HFStatusDetailsNeedsTwoFactorAuthLearnMoreLink", 1);
    v26 = HFLocalizedStringWithFormat(@"HFStatusDetailsNeedsTwoFactorAuthDescriptionFormat", @"%1$@ %2$@", v20, v21, v22, v23, v24, v25, v18);
    hf_openiCloudPasswordAndSecurityURL = [MEMORY[0x277CBEBC0] hf_openiCloudPasswordAndSecurityURL];
    v28 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT204915"];
    v29 = [MEMORY[0x277CCA898] hf_attributedLinkStringForString:v26 linkString:v18 linkURL:hf_openiCloudPasswordAndSecurityURL];
    v30 = [MEMORY[0x277CCA898] hf_attributedLinkStringForAttributedString:v29 linkString:v19 linkURL:v28];
    [(HFMutableItemUpdateOutcome *)v4 setObject:v30 forKeyedSubscript:@"description"];

    v37 = HFLocalizedStringWithFormat(@"HFStatusDetailsNeedsTwoFactorAuthShortDescriptionFormat", @"%1$@", v31, v32, v33, v34, v35, v36, v18);
    v38 = [MEMORY[0x277CCA898] hf_attributedLinkStringForString:v37 linkString:v18 linkURL:hf_openiCloudPasswordAndSecurityURL];
    [(HFMutableItemUpdateOutcome *)v4 setObject:v38 forKeyedSubscript:@"shortDescription"];

    [(HFMutableItemUpdateOutcome *)v4 setObject:v28 forKeyedSubscript:@"destinationURL"];
LABEL_11:

LABEL_21:
    goto LABEL_22;
  }

  if ((residentProvisioningStatus & 2) == 0 || hf_remoteAccessState != 1)
  {
    if (hf_remoteAccessState != 1 || (-[HFNoRemoteAccessStatusDetailsItem home](self, "home"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 hf_isCurrentLocationHome], v39, v40))
    {
      [(HFMutableItemUpdateOutcome *)v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      goto LABEL_22;
    }

    [(HFMutableItemUpdateOutcome *)v4 setObject:&unk_282523B68 forKeyedSubscript:@"priority"];
    v41 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNoRemoteAccessTitle", @"HFStatusDetailsNoRemoteAccessTitle", 1);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v41 forKeyedSubscript:@"title"];

    v18 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNoRemoteAccessDescription", @"HFStatusDetailsNoRemoteAccessDescription", 1);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v18 forKeyedSubscript:@"shortDescription"];
    v19 = +[HFURLComponents aboutResidentDeviceURL];
    v42 = objc_alloc(MEMORY[0x277CCAB48]);
    v43 = [v18 stringByAppendingString:@" "];
    v26 = [v42 initWithString:v43];

    v44 = objc_alloc(MEMORY[0x277CCA898]);
    v45 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNoRemoteAccessLearnMoreLink", @"HFStatusDetailsNoRemoteAccessLearnMoreLink", 1);
    v53 = *MEMORY[0x277D740E8];
    v54 = v19;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v47 = [v44 initWithString:v45 attributes:v46];
    [v26 appendAttributedString:v47];

    [(HFMutableItemUpdateOutcome *)v4 setObject:v26 forKeyedSubscript:@"description"];
    [(HFMutableItemUpdateOutcome *)v4 setObject:v19 forKeyedSubscript:@"destinationURL"];
    goto LABEL_11;
  }

  [(HFMutableItemUpdateOutcome *)v4 setObject:&unk_282523B68 forKeyedSubscript:@"priority"];
  v10 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsNoRemoteAccessNotAtHomeTitle", @"HFStatusDetailsNoRemoteAccessNotAtHomeTitle", 1);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v10 forKeyedSubscript:@"title"];

  home2 = [(HFNoRemoteAccessStatusDetailsItem *)self home];
  hf_hasAppleTVs = [home2 hf_hasAppleTVs];

  home3 = [(HFNoRemoteAccessStatusDetailsItem *)self home];
  hf_hasHomePods = [home3 hf_hasHomePods];

  if (hf_hasAppleTVs && hf_hasHomePods)
  {
    v15 = @"HFStatusDetailsNoRemoteAccessDescription_AppleTVHomePod";
LABEL_20:
    v18 = _HFLocalizedStringWithDefaultValue(v15, v15, 1);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v18 forKeyedSubscript:@"description"];
    goto LABEL_21;
  }

  if (hf_hasAppleTVs)
  {
    v15 = @"HFStatusDetailsNoRemoteAccessDescription_AppleTV";
    goto LABEL_20;
  }

  if (hf_hasHomePods)
  {
    v15 = @"HFStatusDetailsNoRemoteAccessDescription_HomePod";
    goto LABEL_20;
  }

  v52 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_20D9BF000, v52, OS_LOG_TYPE_ERROR, "%@ Asked to show 'No Remote Access' but there are no HomePods or Apple TVs in the home.", buf, 0xCu);
  }

LABEL_22:
  v48 = MEMORY[0x277CBEC38];
  [(HFMutableItemUpdateOutcome *)v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v48 forKeyedSubscript:@"currentHomeDependency"];
  v49 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

@end