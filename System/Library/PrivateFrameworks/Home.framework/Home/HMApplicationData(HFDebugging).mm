@interface HMApplicationData(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMApplicationData(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  dictionary = [self dictionary];
  [v4 setObject:dictionary forKeyedSubscript:@"dictionary"];

  return v4;
}

@end