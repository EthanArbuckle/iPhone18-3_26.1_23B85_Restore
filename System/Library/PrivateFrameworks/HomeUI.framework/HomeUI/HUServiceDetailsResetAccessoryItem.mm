@interface HUServiceDetailsResetAccessoryItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsResetAccessoryItem

- (id)_subclass_updateWithOptions:(id)options
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsResetHomePodDeviceButton", @"HUServiceDetailsResetHomePodDeviceButton", 1);
  v4 = MEMORY[0x277D2C900];
  v5 = MEMORY[0x277D14780];
  v6 = *MEMORY[0x277D13DC8];
  v11[0] = *MEMORY[0x277D13F60];
  v11[1] = v6;
  v12[0] = v3;
  v12[1] = @"AccessoryDetails.ResetHomePodButton";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v5 outcomeWithResults:v7];
  v9 = [v4 futureWithResult:v8];

  return v9;
}

@end