@interface WFMACAddressDisclosureWarning
- (WFMACAddressDisclosureWarning)initWithCoder:(id)a3;
- (WFMACAddressDisclosureWarning)initWithDisplayedMACAddress:(id)a3;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFMACAddressDisclosureWarning

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFMACAddressDisclosureWarning *)self displayedMACAddress];
  [v4 encodeObject:v5 forKey:@"displayedMACAddress"];
}

- (WFMACAddressDisclosureWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayedMACAddress"];

  v6 = [(WFMACAddressDisclosureWarning *)self initWithDisplayedMACAddress:v5];
  return v6;
}

- (id)localizedMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = WFLocalizedString(@"This shortcut is attempting to use your MAC address “%1$@”. This may be used to infer your device identity or location.");
  v5 = [(WFMACAddressDisclosureWarning *)self displayedMACAddress];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (WFMACAddressDisclosureWarning)initWithDisplayedMACAddress:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFMACAddressDisclosureWarning;
  v6 = [(WFMACAddressDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedMACAddress, a3);
    v8 = v7;
  }

  return v7;
}

@end