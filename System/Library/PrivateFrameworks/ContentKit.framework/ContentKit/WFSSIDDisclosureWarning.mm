@interface WFSSIDDisclosureWarning
- (WFSSIDDisclosureWarning)initWithCoder:(id)coder;
- (WFSSIDDisclosureWarning)initWithDisplayedNetworkName:(id)name;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSSIDDisclosureWarning

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayedNetworkName = [(WFSSIDDisclosureWarning *)self displayedNetworkName];
  [coderCopy encodeObject:displayedNetworkName forKey:@"displayedNetworkName"];
}

- (WFSSIDDisclosureWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayedNetworkName"];

  v6 = [(WFSSIDDisclosureWarning *)self initWithDisplayedNetworkName:v5];
  return v6;
}

- (id)localizedMessage
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  v4 = [currentDevice hasCapability:*MEMORY[0x277D7A3F8]];

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
  displayedNetworkName = [(WFSSIDDisclosureWarning *)self displayedNetworkName];
  v9 = [v5 localizedStringWithFormat:v7, displayedNetworkName];

  return v9;
}

- (WFSSIDDisclosureWarning)initWithDisplayedNetworkName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = WFSSIDDisclosureWarning;
  v6 = [(WFSSIDDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedNetworkName, name);
    v8 = v7;
  }

  return v7;
}

@end