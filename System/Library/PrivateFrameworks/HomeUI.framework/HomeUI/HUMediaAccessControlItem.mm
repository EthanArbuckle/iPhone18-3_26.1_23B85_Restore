@interface HUMediaAccessControlItem
- (HUMediaAccessControlItem)init;
- (HUMediaAccessControlItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUMediaAccessControlItem

- (HUMediaAccessControlItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaAccessControlItem.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HUMediaAccessControlItem init]", v5}];

  return 0;
}

- (HUMediaAccessControlItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUMediaAccessControlItem;
  v6 = [(HUMediaAccessControlItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  home = [(HUMediaAccessControlItem *)self home];
  hf_accessControlDescriptor = [home hf_accessControlDescriptor];

  mediaContainerSymbolConfiguration = [MEMORY[0x277D14810] mediaContainerSymbolConfiguration];
  v8 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v27 = mediaContainerSymbolConfiguration;
  v9 = [v8 configurationByApplyingConfiguration:mediaContainerSymbolConfiguration];
  v10 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"tv.and.hifispeaker.fill.fill"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 imageIconDescriptorWithUpdatedImageSymbolConfiguration:v9];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13E88]];

  home2 = [(HUMediaAccessControlItem *)self home];
  accessories = [home2 accessories];
  v17 = [accessories na_any:&__block_literal_global_131];

  if (hf_accessControlDescriptor && v17 && (-[HUMediaAccessControlItem home](self, "home"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 hf_currentUserIsAdministrator], v18, (v19 & 1) != 0))
  {
    v20 = HFLocalizedString();
    [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.HomeSettings.SpeakersAndTV" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [hf_accessControlDescriptor access];
    v21 = NSLocalizedStringFromHFMediaAccessControlClassification();
    [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F98]];
  v22 = MEMORY[0x277CBEB98];
  home3 = [(HUMediaAccessControlItem *)self home];
  v24 = [v22 setWithObject:home3];
  [v4 setObject:v24 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v25 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v25;
}

@end