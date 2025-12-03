@interface WFCellularCarrierDisclosureWarning
- (WFCellularCarrierDisclosureWarning)initWithCoder:(id)coder;
- (WFCellularCarrierDisclosureWarning)initWithDisplayedCarrierName:(id)name;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFCellularCarrierDisclosureWarning

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayedCarrierName = [(WFCellularCarrierDisclosureWarning *)self displayedCarrierName];
  [coderCopy encodeObject:displayedCarrierName forKey:@"displayedCarrierName"];
}

- (WFCellularCarrierDisclosureWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayedCarrierName"];

  v6 = [(WFCellularCarrierDisclosureWarning *)self initWithDisplayedCarrierName:v5];
  return v6;
}

- (id)localizedMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = WFLocalizedString(@"This shortcut is attempting to use information about your cellular network “%1$@”. This may be used to infer your device location.");
  displayedCarrierName = [(WFCellularCarrierDisclosureWarning *)self displayedCarrierName];
  v6 = [v3 localizedStringWithFormat:v4, displayedCarrierName];

  return v6;
}

- (WFCellularCarrierDisclosureWarning)initWithDisplayedCarrierName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = WFCellularCarrierDisclosureWarning;
  v6 = [(WFCellularCarrierDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedCarrierName, name);
    v8 = v7;
  }

  return v7;
}

@end