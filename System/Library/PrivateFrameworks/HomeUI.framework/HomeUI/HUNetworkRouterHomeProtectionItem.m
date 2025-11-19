@interface HUNetworkRouterHomeProtectionItem
- (HUNetworkRouterHomeProtectionItem)init;
- (HUNetworkRouterHomeProtectionItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNetworkRouterHomeProtectionItem

- (HUNetworkRouterHomeProtectionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterHomeProtectionItem.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterHomeProtectionItem init]", v5}];

  return 0;
}

- (HUNetworkRouterHomeProtectionItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUNetworkRouterHomeProtectionItem;
  v6 = [(HUNetworkRouterHomeProtectionItem *)&v9 init];
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
  v5 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterHomeProtectionItemTitle", @"HUNetworkRouterHomeProtectionItemTitle", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = MEMORY[0x277CCABB0];
  v7 = [(HUNetworkRouterHomeProtectionItem *)self home];
  [v7 hf_isNetworkProtectionEnabled];
  v8 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];

  v9 = MEMORY[0x277CBEB98];
  v10 = [(HUNetworkRouterHomeProtectionItem *)self home];
  v11 = [v9 setWithObject:v10];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v12 = MEMORY[0x277CCABB0];
  v13 = [(HUNetworkRouterHomeProtectionItem *)self home];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "hf_isNetworkProtectionSupportedForHome") ^ 1}];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F18]];
  v15 = [(HUNetworkRouterHomeProtectionItem *)self home];
  v16 = [v15 hf_localizedDescriptionForNetworkProtectionSupport];
  [v4 setObject:v16 forKeyedSubscript:@"HFResultNetworkRouterHomeProtectionDescriptionKey"];

  v17 = MEMORY[0x277D2C900];
  v18 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v19 = [v17 futureWithResult:v18];

  return v19;
}

@end