@interface HMSettings(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSettings(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isControllable")}];
  [v4 setObject:v5 forKeyedSubscript:@"controllable"];

  rootGroup = [self rootGroup];
  [v4 setObject:rootGroup forKeyedSubscript:@"rootGroup"];

  return v4;
}

@end