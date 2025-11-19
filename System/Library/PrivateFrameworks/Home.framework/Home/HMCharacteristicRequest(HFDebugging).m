@interface HMCharacteristicRequest(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicRequest(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 characteristic];
  [v4 setObject:v5 forKeyedSubscript:@"characteristic"];

  return v4;
}

@end