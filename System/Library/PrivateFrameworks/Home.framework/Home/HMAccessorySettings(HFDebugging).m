@interface HMAccessorySettings(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessorySettings(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isControllable")}];
  [v5 setObject:v6 forKeyedSubscript:@"controllable"];

  v7 = [a1 settingsContainer];
  v8 = [v4 copyWithDetailLevel:0];

  [v5 appendObject:v7 withName:@"container" context:v8];
  v9 = [a1 rootGroup];
  [v5 setObject:v9 forKeyedSubscript:@"rootGroup"];

  return v5;
}

@end