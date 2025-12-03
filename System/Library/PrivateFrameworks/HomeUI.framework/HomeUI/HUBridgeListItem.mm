@interface HUBridgeListItem
- (HUBridgeListItem)init;
- (HUBridgeListItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUBridgeListItem

- (HUBridgeListItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUBridgeListItem.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HUBridgeListItem init]", v5}];

  return 0;
}

- (HUBridgeListItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUBridgeListItem;
  v6 = [(HUBridgeListItem *)&v9 init];
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
  v5 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListItemTitle", @"HUBridgeAndResidentListItemTitle", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:@"Home.HomeSettings.HubsAndBridges" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v28 = configurationPreferringMulticolor;
  v8 = [v7 configurationByApplyingConfiguration:configurationPreferringMulticolor];
  v9 = [MEMORY[0x277D14AC0] iconDescriptorForAccessoryCategoryOrServiceType:*MEMORY[0x277CCE880]];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 imageIconDescriptorWithUpdatedImageSymbolConfiguration:v8];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E88]];

  home = [(HUBridgeListItem *)self home];
  accessories = [home accessories];
  v16 = [accessories na_filter:&__block_literal_global_128];
  v17 = [v16 count];

  home2 = [(HUBridgeListItem *)self home];
  residentDevices = [home2 residentDevices];
  v20 = [residentDevices count];

  if (v20 + v17)
  {
    v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", v20 + v17];
    [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  home3 = [(HUBridgeListItem *)self home];
  hf_currentUserIsAdministrator = [home3 hf_currentUserIsAdministrator];

  if ((hf_currentUserIsAdministrator & 1) == 0)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v24 = MEMORY[0x277D2C900];
  v25 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v26 = [v24 futureWithResult:v25];

  return v26;
}

@end