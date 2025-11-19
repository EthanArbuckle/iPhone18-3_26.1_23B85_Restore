@interface HUServiceDetailsRestartAccessoriesItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsRestartAccessoriesItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRestartHomePodDeviceButton", @"HUServiceDetailsRestartHomePodDeviceButton", 1);
  v4 = MEMORY[0x277D2C900];
  v5 = MEMORY[0x277D14780];
  v10 = *MEMORY[0x277D13F60];
  v11[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 outcomeWithResults:v6];
  v8 = [v4 futureWithResult:v7];

  return v8;
}

@end