@interface HUNetworkRouterHomeProtectionItem
- (HUNetworkRouterHomeProtectionItem)init;
- (HUNetworkRouterHomeProtectionItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUNetworkRouterHomeProtectionItem

- (HUNetworkRouterHomeProtectionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterHomeProtectionItem.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterHomeProtectionItem init]", v5}];

  return 0;
}

- (HUNetworkRouterHomeProtectionItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUNetworkRouterHomeProtectionItem;
  v6 = [(HUNetworkRouterHomeProtectionItem *)&v9 init];
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
  v5 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterHomeProtectionItemTitle", @"HUNetworkRouterHomeProtectionItemTitle", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = MEMORY[0x277CCABB0];
  home = [(HUNetworkRouterHomeProtectionItem *)self home];
  [home hf_isNetworkProtectionEnabled];
  v8 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D14068]];

  v9 = MEMORY[0x277CBEB98];
  home2 = [(HUNetworkRouterHomeProtectionItem *)self home];
  v11 = [v9 setWithObject:home2];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v12 = MEMORY[0x277CCABB0];
  home3 = [(HUNetworkRouterHomeProtectionItem *)self home];
  v14 = [v12 numberWithInt:{objc_msgSend(home3, "hf_isNetworkProtectionSupportedForHome") ^ 1}];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F18]];
  home4 = [(HUNetworkRouterHomeProtectionItem *)self home];
  hf_localizedDescriptionForNetworkProtectionSupport = [home4 hf_localizedDescriptionForNetworkProtectionSupport];
  [v4 setObject:hf_localizedDescriptionForNetworkProtectionSupport forKeyedSubscript:@"HFResultNetworkRouterHomeProtectionDescriptionKey"];

  v17 = MEMORY[0x277D2C900];
  v18 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v19 = [v17 futureWithResult:v18];

  return v19;
}

@end