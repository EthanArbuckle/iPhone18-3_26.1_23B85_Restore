@interface HMCharacteristicResponse(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicResponse(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 request];
  [v4 setObject:v5 forKeyedSubscript:@"request"];

  v6 = [a1 error];

  if (v6)
  {
    v7 = [a1 error];
    [v4 setObject:v7 forKeyedSubscript:@"error"];
  }

  else
  {
    v7 = [a1 request];
    v8 = [v7 characteristic];
    v9 = [v8 value];
    [v4 setObject:v9 forKeyedSubscript:@"newValue"];
  }

  return v4;
}

@end