@interface HUServiceDetailsPairingModeItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsPairingModeItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([(HUServiceDetailsAbstractItem *)self isCHIPAccessory])
  {
    v4 = [(HUServiceDetailsAbstractItem *)self isBridged];
  }

  else
  {
    v4 = 1;
  }

  v12[0] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsPairingModeItemDisplayTitle", @"HUServiceDetailsPairingModeItemDisplayTitle", 1);
  v13[0] = v5;
  v12[1] = *MEMORY[0x277D13FB8];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277D14780] outcomeWithResults:v7];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

@end