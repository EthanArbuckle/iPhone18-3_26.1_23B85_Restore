@interface HMApplicationData(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMApplicationData(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 dictionary];
  [v4 setObject:v5 forKeyedSubscript:@"dictionary"];

  return v4;
}

@end