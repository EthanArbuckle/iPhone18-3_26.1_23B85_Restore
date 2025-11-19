@interface WFSSIDDisclosureWarning
- (WFSSIDDisclosureWarning)initWithCoder:(id)a3;
- (WFSSIDDisclosureWarning)initWithDisplayedNetworkName:(id)a3;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSSIDDisclosureWarning

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSSIDDisclosureWarning *)self displayedNetworkName];
  [v4 encodeObject:v5 forKey:@"displayedNetworkName"];
}

- (WFSSIDDisclosureWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayedNetworkName"];

  v6 = [(WFSSIDDisclosureWarning *)self initWithDisplayedNetworkName:v5];
  return v6;
}

- (id)localizedMessage
{
  v3 = [MEMORY[0x277D79F18] currentDevice];
  v4 = [v3 hasCapability:*MEMORY[0x277D7A3F8]];

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v6 = @"This shortcut is attempting to use your WLAN network name “%1$@”. This may be used to infer your device location.";
  }

  else
  {
    v6 = @"This shortcut is attempting to use your Wi-Fi network name “%1$@”. This may be used to infer your device location.";
  }

  v7 = WFLocalizedString(v6);
  v8 = [(WFSSIDDisclosureWarning *)self displayedNetworkName];
  v9 = [v5 localizedStringWithFormat:v7, v8];

  return v9;
}

- (WFSSIDDisclosureWarning)initWithDisplayedNetworkName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSSIDDisclosureWarning;
  v6 = [(WFSSIDDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedNetworkName, a3);
    v8 = v7;
  }

  return v7;
}

@end