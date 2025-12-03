@interface HMCharacteristicResponse(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicResponse(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  request = [self request];
  [v4 setObject:request forKeyedSubscript:@"request"];

  error = [self error];

  if (error)
  {
    error2 = [self error];
    [v4 setObject:error2 forKeyedSubscript:@"error"];
  }

  else
  {
    error2 = [self request];
    characteristic = [error2 characteristic];
    value = [characteristic value];
    [v4 setObject:value forKeyedSubscript:@"newValue"];
  }

  return v4;
}

@end