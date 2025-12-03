@interface WFMACAddressDisclosureWarning
- (WFMACAddressDisclosureWarning)initWithCoder:(id)coder;
- (WFMACAddressDisclosureWarning)initWithDisplayedMACAddress:(id)address;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFMACAddressDisclosureWarning

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayedMACAddress = [(WFMACAddressDisclosureWarning *)self displayedMACAddress];
  [coderCopy encodeObject:displayedMACAddress forKey:@"displayedMACAddress"];
}

- (WFMACAddressDisclosureWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayedMACAddress"];

  v6 = [(WFMACAddressDisclosureWarning *)self initWithDisplayedMACAddress:v5];
  return v6;
}

- (id)localizedMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = WFLocalizedString(@"This shortcut is attempting to use your MAC address “%1$@”. This may be used to infer your device identity or location.");
  displayedMACAddress = [(WFMACAddressDisclosureWarning *)self displayedMACAddress];
  v6 = [v3 localizedStringWithFormat:v4, displayedMACAddress];

  return v6;
}

- (WFMACAddressDisclosureWarning)initWithDisplayedMACAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = WFMACAddressDisclosureWarning;
  v6 = [(WFMACAddressDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedMACAddress, address);
    v8 = v7;
  }

  return v7;
}

@end