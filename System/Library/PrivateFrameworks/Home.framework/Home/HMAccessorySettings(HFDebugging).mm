@interface HMAccessorySettings(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessorySettings(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isControllable")}];
  [v5 setObject:v6 forKeyedSubscript:@"controllable"];

  settingsContainer = [self settingsContainer];
  v8 = [v4 copyWithDetailLevel:0];

  [v5 appendObject:settingsContainer withName:@"container" context:v8];
  rootGroup = [self rootGroup];
  [v5 setObject:rootGroup forKeyedSubscript:@"rootGroup"];

  return v5;
}

@end