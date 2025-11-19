@interface WFCellularCarrierDisclosureWarning
- (WFCellularCarrierDisclosureWarning)initWithCoder:(id)a3;
- (WFCellularCarrierDisclosureWarning)initWithDisplayedCarrierName:(id)a3;
- (id)localizedMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFCellularCarrierDisclosureWarning

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFCellularCarrierDisclosureWarning *)self displayedCarrierName];
  [v4 encodeObject:v5 forKey:@"displayedCarrierName"];
}

- (WFCellularCarrierDisclosureWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayedCarrierName"];

  v6 = [(WFCellularCarrierDisclosureWarning *)self initWithDisplayedCarrierName:v5];
  return v6;
}

- (id)localizedMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = WFLocalizedString(@"This shortcut is attempting to use information about your cellular network “%1$@”. This may be used to infer your device location.");
  v5 = [(WFCellularCarrierDisclosureWarning *)self displayedCarrierName];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (WFCellularCarrierDisclosureWarning)initWithDisplayedCarrierName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCellularCarrierDisclosureWarning;
  v6 = [(WFCellularCarrierDisclosureWarning *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayedCarrierName, a3);
    v8 = v7;
  }

  return v7;
}

@end