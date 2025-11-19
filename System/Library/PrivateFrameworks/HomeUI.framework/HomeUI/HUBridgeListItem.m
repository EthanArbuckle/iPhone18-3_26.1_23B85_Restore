@interface HUBridgeListItem
- (HUBridgeListItem)init;
- (HUBridgeListItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUBridgeListItem

- (HUBridgeListItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUBridgeListItem.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HUBridgeListItem init]", v5}];

  return 0;
}

- (HUBridgeListItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUBridgeListItem;
  v6 = [(HUBridgeListItem *)&v9 init];
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
  v5 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListItemTitle", @"HUBridgeAndResidentListItemTitle", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:@"Home.HomeSettings.HubsAndBridges" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v6 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v28 = v6;
  v8 = [v7 configurationByApplyingConfiguration:v6];
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

  v14 = [(HUBridgeListItem *)self home];
  v15 = [v14 accessories];
  v16 = [v15 na_filter:&__block_literal_global_128];
  v17 = [v16 count];

  v18 = [(HUBridgeListItem *)self home];
  v19 = [v18 residentDevices];
  v20 = [v19 count];

  if (v20 + v17)
  {
    v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", v20 + v17];
    [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v22 = [(HUBridgeListItem *)self home];
  v23 = [v22 hf_currentUserIsAdministrator];

  if ((v23 & 1) == 0)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v24 = MEMORY[0x277D2C900];
  v25 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v26 = [v24 futureWithResult:v25];

  return v26;
}

@end