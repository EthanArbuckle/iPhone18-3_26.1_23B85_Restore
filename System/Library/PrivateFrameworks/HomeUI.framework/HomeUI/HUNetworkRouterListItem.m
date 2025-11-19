@interface HUNetworkRouterListItem
- (HUNetworkRouterListItem)init;
- (HUNetworkRouterListItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNetworkRouterListItem

- (HUNetworkRouterListItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterListItem.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterListItem init]", v5}];

  return 0;
}

- (HUNetworkRouterListItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUNetworkRouterListItem;
  v6 = [(HUNetworkRouterListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = HULocalizedWiFiString(@"HUNetworkRouterSettingsTitle");
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUNetworkRouterListItem *)self home];
  v8 = [v6 setWithObject:v7];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v9 = [MEMORY[0x277D14AC0] iconDescriptorForAccessoryCategoryOrServiceType:*MEMORY[0x277CCE950]];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v10 = [(HUNetworkRouterListItem *)self home];
  v11 = [v10 accessories];
  v12 = [v11 na_filter:&__block_literal_global_182];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", v13];
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v17 = [v15 futureWithResult:v16];

  return v17;
}

@end