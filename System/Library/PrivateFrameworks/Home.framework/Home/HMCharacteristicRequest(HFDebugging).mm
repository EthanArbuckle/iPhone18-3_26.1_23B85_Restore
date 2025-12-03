@interface HMCharacteristicRequest(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicRequest(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  characteristic = [self characteristic];
  [v4 setObject:characteristic forKeyedSubscript:@"characteristic"];

  return v4;
}

@end